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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.375912, 32.694225, 22.884401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757549, 32.811871, 22.907063>,  <42.986530, 32.882458, 22.920660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757549, 32.811871, 22.907063>,  <42.375912, 32.694225, 22.884401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757549, 32.811871, 22.907063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087997, -0.094443, -0.991634,
		-0.286300, 0.951094, -0.115988,
		0.954091, 0.294111, 0.056655,
		43.043777, 32.900105, 22.924059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220222, 32.759201, 23.633980>,  <42.375912, 32.694225, 22.884401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220222, 32.759201, 23.633980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874580, 32.843979, 23.451374>,  <41.667194, 32.894844, 23.341810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874580, 32.843979, 23.451374>,  <42.220222, 32.759201, 23.633980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874580, 32.843979, 23.451374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451390, -0.727568, 0.516615,
		-0.222653, 0.652475, 0.724363,
		-0.864102, 0.211944, -0.456516,
		41.615349, 32.907562, 23.314419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734428, 32.595348, 24.132647>,  <42.220222, 32.759201, 23.633980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734428, 32.595348, 24.132647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518951, 32.592346, 23.795658>,  <41.389668, 32.590546, 23.593466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518951, 32.592346, 23.795658>,  <41.734428, 32.595348, 24.132647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518951, 32.592346, 23.795658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711823, -0.530867, 0.459878,
		-0.450691, 0.847421, 0.280631,
		-0.538688, -0.007503, -0.842472,
		41.357346, 32.590096, 23.542917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147877, 32.949078, 24.256813>,  <41.734428, 32.595348, 24.132647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147877, 32.949078, 24.256813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135120, 32.623825, 24.024330>,  <41.127464, 32.428673, 23.884840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135120, 32.623825, 24.024330>,  <41.147877, 32.949078, 24.256813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135120, 32.623825, 24.024330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762958, -0.355837, 0.539699,
		-0.645661, 0.460650, -0.609035,
		-0.031895, -0.813131, -0.581207,
		41.125553, 32.379887, 23.849968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522297, 32.813572, 24.024147>,  <41.147877, 32.949078, 24.256813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522297, 32.813572, 24.024147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676491, 32.446758, 23.983261>,  <40.769009, 32.226669, 23.958729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676491, 32.446758, 23.983261>,  <40.522297, 32.813572, 24.024147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676491, 32.446758, 23.983261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813423, -0.390029, 0.431533,
		-0.435598, -0.083205, -0.896288,
		0.385484, -0.917036, -0.102215,
		40.792137, 32.171646, 23.952597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716461, 33.503460, 24.245796>,  <40.522297, 32.813572, 24.024147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716461, 33.503460, 24.245796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455441, 33.467503, 24.546753>,  <40.298828, 33.445927, 24.727327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455441, 33.467503, 24.546753>,  <40.716461, 33.503460, 24.245796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455441, 33.467503, 24.546753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518527, -0.777021, 0.356886,
		0.552543, 0.623023, 0.553659,
		-0.652553, -0.089892, 0.752392,
		40.259674, 33.440536, 24.772470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127674, 33.450844, 24.818977>,  <40.716461, 33.503460, 24.245796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127674, 33.450844, 24.818977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771839, 33.306007, 24.930351>,  <40.558338, 33.219105, 24.997175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771839, 33.306007, 24.930351>,  <41.127674, 33.450844, 24.818977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771839, 33.306007, 24.930351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456652, -0.691504, 0.559724,
		-0.010130, 0.625072, 0.780502,
		-0.889588, -0.362087, 0.278435,
		40.504963, 33.197380, 25.013882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116386, 33.314991, 25.566490>,  <41.127674, 33.450844, 24.818977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116386, 33.314991, 25.566490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826847, 33.083767, 25.415813>,  <40.653126, 32.945034, 25.325407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826847, 33.083767, 25.415813>,  <41.116386, 33.314991, 25.566490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826847, 33.083767, 25.415813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291912, -0.751264, 0.591937,
		-0.625169, 0.318509, 0.712541,
		-0.723844, -0.578060, -0.376691,
		40.609695, 32.910347, 25.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892384, 32.888252, 26.190084>,  <41.116386, 33.314991, 25.566490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892384, 32.888252, 26.190084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745247, 32.699894, 25.869347>,  <40.656967, 32.586880, 25.676905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745247, 32.699894, 25.869347>,  <40.892384, 32.888252, 26.190084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745247, 32.699894, 25.869347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391160, -0.860654, 0.325990,
		-0.843617, -0.193738, 0.500776,
		-0.367839, -0.470894, -0.801844,
		40.634895, 32.558624, 25.628794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663837, 32.260647, 26.465084>,  <40.892384, 32.888252, 26.190084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663837, 32.260647, 26.465084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707989, 32.203716, 26.071625>,  <40.734482, 32.169559, 25.835550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707989, 32.203716, 26.071625>,  <40.663837, 32.260647, 26.465084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707989, 32.203716, 26.071625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625504, -0.759165, 0.180034,
		-0.772373, -0.635147, 0.005226,
		0.110381, -0.142322, -0.983647,
		40.741104, 32.161018, 25.776531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644054, 31.500128, 26.390738>,  <40.663837, 32.260647, 26.465084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644054, 31.500128, 26.390738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807381, 31.604412, 26.040810>,  <40.905376, 31.666983, 25.830853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807381, 31.604412, 26.040810>,  <40.644054, 31.500128, 26.390738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807381, 31.604412, 26.040810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450029, -0.891283, -0.055570,
		-0.794200, -0.371004, -0.481251,
		0.408314, 0.260711, -0.874820,
		40.929874, 31.682625, 25.778364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409637, 31.038475, 25.992054>,  <40.644054, 31.500128, 26.390738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409637, 31.038475, 25.992054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750744, 31.160049, 25.822159>,  <40.955410, 31.232994, 25.720221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750744, 31.160049, 25.822159>,  <40.409637, 31.038475, 25.992054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750744, 31.160049, 25.822159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335612, -0.942000, -0.000259,
		-0.400184, -0.142327, -0.905316,
		0.852771, 0.303938, -0.424740,
		41.006577, 31.251230, 25.694736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676933, 30.429852, 25.623692>,  <40.409637, 31.038475, 25.992054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676933, 30.429852, 25.623692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987930, 30.678425, 25.585072>,  <41.174530, 30.827568, 25.561899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987930, 30.678425, 25.585072>,  <40.676933, 30.429852, 25.623692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987930, 30.678425, 25.585072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614448, -0.783349, -0.093903,
		-0.133987, 0.013684, -0.990888,
		0.777496, 0.621432, -0.096550,
		41.221180, 30.864855, 25.556107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040119, 30.269199, 25.033890>,  <40.676933, 30.429852, 25.623692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040119, 30.269199, 25.033890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287506, 30.459923, 25.283741>,  <41.435936, 30.574356, 25.433651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287506, 30.459923, 25.283741>,  <41.040119, 30.269199, 25.033890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287506, 30.459923, 25.283741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619537, -0.784837, -0.014321,
		0.483402, 0.395837, -0.780791,
		0.618463, 0.476806, 0.624628,
		41.473045, 30.602964, 25.471128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726917, 30.050503, 24.811115>,  <41.040119, 30.269199, 25.033890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726917, 30.050503, 24.811115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767029, 30.171925, 25.190125>,  <41.791096, 30.244778, 25.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767029, 30.171925, 25.190125>,  <41.726917, 30.050503, 24.811115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767029, 30.171925, 25.190125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643794, -0.745888, 0.170824,
		0.758600, 0.592879, -0.270224,
		0.100278, 0.303556, 0.947522,
		41.797112, 30.262991, 25.474380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402397, 29.959454, 24.991484>,  <41.726917, 30.050503, 24.811115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402397, 29.959454, 24.991484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242821, 29.987495, 25.357201>,  <42.147076, 30.004320, 25.576632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242821, 29.987495, 25.357201>,  <42.402397, 29.959454, 24.991484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242821, 29.987495, 25.357201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467903, -0.841937, 0.268719,
		0.788615, 0.535003, 0.303080,
		-0.398940, 0.070103, 0.914293,
		42.123138, 30.008526, 25.631489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929646, 30.018806, 25.494740>,  <42.402397, 29.959454, 24.991484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929646, 30.018806, 25.494740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606583, 29.852116, 25.661606>,  <42.412743, 29.752102, 25.761726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606583, 29.852116, 25.661606>,  <42.929646, 30.018806, 25.494740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606583, 29.852116, 25.661606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565482, -0.747874, 0.347727,
		0.167080, 0.516745, 0.839678,
		-0.807659, -0.416725, 0.417165,
		42.364285, 29.727098, 25.786755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238529, 29.628117, 26.017233>,  <42.929646, 30.018806, 25.494740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238529, 29.628117, 26.017233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863766, 29.490459, 26.041798>,  <42.638908, 29.407866, 26.056536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863766, 29.490459, 26.041798>,  <43.238529, 29.628117, 26.017233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863766, 29.490459, 26.041798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345598, -0.885389, 0.310883,
		-0.052614, 0.312493, 0.948462,
		-0.936907, -0.344143, 0.061413,
		42.582695, 29.387217, 26.060221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141079, 29.347067, 26.677305>,  <43.238529, 29.628117, 26.017233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141079, 29.347067, 26.677305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882626, 29.170986, 26.427910>,  <42.727554, 29.065338, 26.278273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882626, 29.170986, 26.427910>,  <43.141079, 29.347067, 26.677305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882626, 29.170986, 26.427910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214050, -0.888642, 0.405583,
		-0.732597, 0.128602, 0.668403,
		-0.646130, -0.440201, -0.623490,
		42.688786, 29.038925, 26.240864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879322, 28.780262, 27.083834>,  <43.141079, 29.347067, 26.677305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879322, 28.780262, 27.083834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809696, 28.667538, 26.706413>,  <42.767921, 28.599903, 26.479961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809696, 28.667538, 26.706413>,  <42.879322, 28.780262, 27.083834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809696, 28.667538, 26.706413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066080, -0.959360, 0.274341,
		-0.982515, -0.014598, 0.185608,
		-0.174060, -0.281809, -0.943550,
		42.757477, 28.582994, 26.423347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544682, 28.141062, 27.096502>,  <42.879322, 28.780262, 27.083834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544682, 28.141062, 27.096502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703751, 28.124901, 26.729847>,  <42.799191, 28.115204, 26.509853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703751, 28.124901, 26.729847>,  <42.544682, 28.141062, 27.096502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703751, 28.124901, 26.729847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254171, -0.955082, 0.152363,
		-0.881621, -0.293573, -0.369540,
		0.397671, -0.040400, -0.916638,
		42.823051, 28.112782, 26.454855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480072, 27.439762, 26.856396>,  <42.544682, 28.141062, 27.096502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480072, 27.439762, 26.856396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761974, 27.586311, 26.613384>,  <42.931114, 27.674240, 26.467577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761974, 27.586311, 26.613384>,  <42.480072, 27.439762, 26.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761974, 27.586311, 26.613384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568778, -0.803619, 0.175178,
		-0.424042, -0.469007, -0.774739,
		0.704755, 0.366372, -0.607530,
		42.973400, 27.696222, 26.431126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608803, 26.934038, 26.533949>,  <42.480072, 27.439762, 26.856396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608803, 26.934038, 26.533949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930290, 27.168598, 26.493599>,  <43.123180, 27.309334, 26.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930290, 27.168598, 26.493599>,  <42.608803, 26.934038, 26.533949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930290, 27.168598, 26.493599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584653, -0.746795, 0.316982,
		0.110544, -0.313742, -0.943052,
		0.803717, 0.586399, -0.100877,
		43.171406, 27.344519, 26.463335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083786, 26.568039, 26.105621>,  <42.608803, 26.934038, 26.533949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083786, 26.568039, 26.105621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303211, 26.819878, 26.325691>,  <43.434864, 26.970982, 26.457733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303211, 26.819878, 26.325691>,  <43.083786, 26.568039, 26.105621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303211, 26.819878, 26.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652801, -0.733656, 0.188680,
		0.522431, 0.255652, -0.813454,
		0.548559, 0.629596, 0.550175,
		43.467777, 27.008757, 26.490744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750050, 26.381004, 25.928371>,  <43.083786, 26.568039, 26.105621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750050, 26.381004, 25.928371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775738, 26.584328, 26.271881>,  <43.791153, 26.706322, 26.477987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775738, 26.584328, 26.271881>,  <43.750050, 26.381004, 25.928371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775738, 26.584328, 26.271881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753797, -0.588642, 0.292045,
		0.653961, 0.628588, -0.420966,
		0.064222, 0.508310, 0.858776,
		43.795006, 26.736820, 26.529514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475082, 26.311073, 26.083450>,  <43.750050, 26.381004, 25.928371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475082, 26.311073, 26.083450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321159, 26.452625, 26.424435>,  <44.228806, 26.537556, 26.629025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321159, 26.452625, 26.424435>,  <44.475082, 26.311073, 26.083450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321159, 26.452625, 26.424435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671755, -0.526005, 0.521597,
		0.632981, 0.773362, -0.035307,
		-0.384812, 0.353879, 0.852461,
		44.205715, 26.558788, 26.680174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071507, 26.690996, 26.570581>,  <44.475082, 26.311073, 26.083450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071507, 26.690996, 26.570581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751816, 26.530319, 26.749413>,  <44.560001, 26.433912, 26.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751816, 26.530319, 26.749413>,  <45.071507, 26.690996, 26.570581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751816, 26.530319, 26.749413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598550, -0.599451, 0.531409,
		0.054540, 0.692316, 0.719530,
		-0.799227, -0.401692, 0.447080,
		44.512047, 26.409811, 26.883537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167084, 26.763750, 27.367039>,  <45.071507, 26.690996, 26.570581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167084, 26.763750, 27.367039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902992, 26.470222, 27.303020>,  <44.744537, 26.294106, 27.264608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902992, 26.470222, 27.303020>,  <45.167084, 26.763750, 27.367039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902992, 26.470222, 27.303020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359788, -0.496058, 0.790240,
		-0.659285, 0.464153, 0.591528,
		-0.660224, -0.733818, -0.160047,
		44.704926, 26.250076, 27.255007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807858, 26.454241, 28.096169>,  <45.167084, 26.763750, 27.367039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807858, 26.454241, 28.096169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786171, 26.189144, 27.797417>,  <44.773159, 26.030087, 27.618166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786171, 26.189144, 27.797417>,  <44.807858, 26.454241, 28.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786171, 26.189144, 27.797417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211811, -0.738593, 0.640013,
		-0.975806, -0.123497, 0.180421,
		-0.054218, -0.662744, -0.746881,
		44.769905, 25.990320, 27.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311661, 25.809065, 28.306112>,  <44.807858, 26.454241, 28.096169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311661, 25.809065, 28.306112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601139, 25.733402, 28.040638>,  <44.774826, 25.688004, 27.881353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601139, 25.733402, 28.040638>,  <44.311661, 25.809065, 28.306112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601139, 25.733402, 28.040638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295917, -0.783747, 0.546053,
		-0.623452, -0.591574, -0.511222,
		0.723700, -0.189158, -0.663685,
		44.818249, 25.676655, 27.841532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265583, 25.095835, 28.058861>,  <44.311661, 25.809065, 28.306112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265583, 25.095835, 28.058861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643028, 25.194019, 27.970016>,  <44.869495, 25.252930, 27.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643028, 25.194019, 27.970016>,  <44.265583, 25.095835, 28.058861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643028, 25.194019, 27.970016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330995, -0.710380, 0.621130,
		-0.005319, -0.659627, -0.751574,
		0.943617, 0.245464, -0.222112,
		44.926113, 25.267658, 27.903383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432957, 25.325497, 28.220333>,  <44.265583, 25.095835, 28.058861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432957, 25.325497, 28.220333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216927, 25.241123, 28.546234>,  <43.087307, 25.190498, 28.741776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216927, 25.241123, 28.546234>,  <43.432957, 25.325497, 28.220333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216927, 25.241123, 28.546234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474999, 0.875556, -0.088188,
		-0.694762, -0.434636, -0.573060,
		-0.540076, -0.210934, 0.814754,
		43.054905, 25.177843, 28.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665466, 25.362669, 28.027588>,  <43.432957, 25.325497, 28.220333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665466, 25.362669, 28.027588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741150, 25.448055, 28.410969>,  <42.786560, 25.499287, 28.640997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741150, 25.448055, 28.410969>,  <42.665466, 25.362669, 28.027588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741150, 25.448055, 28.410969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655946, 0.753830, -0.038397,
		-0.730707, -0.621428, 0.282655,
		0.189213, 0.213464, 0.958453,
		42.797913, 25.512094, 28.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007214, 25.312975, 28.549667>,  <42.665466, 25.362669, 28.027588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007214, 25.312975, 28.549667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297531, 25.587738, 28.534824>,  <42.471722, 25.752596, 28.525919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297531, 25.587738, 28.534824>,  <42.007214, 25.312975, 28.549667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297531, 25.587738, 28.534824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671426, 0.695637, -0.255493,
		-0.149685, 0.210353, 0.966098,
		0.725798, 0.686907, -0.037110,
		42.515270, 25.793810, 28.523691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474174, 25.689096, 28.200953>,  <42.007214, 25.312975, 28.549667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474174, 25.689096, 28.200953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813404, 25.882282, 28.288143>,  <42.016941, 25.998194, 28.340458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813404, 25.882282, 28.288143>,  <41.474174, 25.689096, 28.200953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813404, 25.882282, 28.288143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443426, 0.872078, -0.207011,
		-0.290071, 0.078905, 0.953747,
		0.848075, 0.482964, 0.217976,
		42.067825, 26.027172, 28.353537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534077, 26.218561, 28.804348>,  <41.474174, 25.689096, 28.200953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534077, 26.218561, 28.804348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793869, 26.325386, 28.519573>,  <41.949745, 26.389481, 28.348707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793869, 26.325386, 28.519573>,  <41.534077, 26.218561, 28.804348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793869, 26.325386, 28.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522047, 0.837364, -0.162136,
		0.552851, 0.476969, 0.683268,
		0.649479, 0.267061, -0.711938,
		41.988712, 26.405504, 28.305992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656914, 25.982212, 29.450542>,  <41.534077, 26.218561, 28.804348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656914, 25.982212, 29.450542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866657, 26.230461, 29.217346>,  <41.992504, 26.379412, 29.077429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866657, 26.230461, 29.217346>,  <41.656914, 25.982212, 29.450542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866657, 26.230461, 29.217346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503022, 0.778197, 0.376002,
		0.687036, 0.096097, 0.720241,
		0.524357, 0.620624, -0.582989,
		42.023964, 26.416649, 29.042450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694820, 26.603649, 29.856636>,  <41.656914, 25.982212, 29.450542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694820, 26.603649, 29.856636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794804, 26.717888, 29.486565>,  <41.854794, 26.786432, 29.264523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794804, 26.717888, 29.486565>,  <41.694820, 26.603649, 29.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794804, 26.717888, 29.486565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585369, 0.805694, 0.090561,
		0.771273, 0.518933, 0.368573,
		0.249962, 0.285598, -0.925177,
		41.869793, 26.803568, 29.209011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707642, 27.368835, 29.949652>,  <41.694820, 26.603649, 29.856636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707642, 27.368835, 29.949652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658710, 27.279530, 29.562832>,  <41.629353, 27.225946, 29.330740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658710, 27.279530, 29.562832>,  <41.707642, 27.368835, 29.949652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658710, 27.279530, 29.562832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588655, 0.800807, -0.110421,
		0.799075, 0.555752, -0.229388,
		-0.122329, -0.223265, -0.967051,
		41.622013, 27.212549, 29.272717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952621, 27.942654, 29.624224>,  <41.707642, 27.368835, 29.949652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952621, 27.942654, 29.624224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711460, 27.752571, 29.367886>,  <41.566761, 27.638521, 29.214083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711460, 27.752571, 29.367886>,  <41.952621, 27.942654, 29.624224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711460, 27.752571, 29.367886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498879, 0.851398, -0.161991,
		0.622593, 0.222039, -0.750384,
		-0.602907, -0.475205, -0.640845,
		41.530586, 27.610010, 29.175632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882015, 28.402060, 29.077965>,  <41.952621, 27.942654, 29.624224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882015, 28.402060, 29.077965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579006, 28.147606, 29.019314>,  <41.397202, 27.994934, 28.984123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579006, 28.147606, 29.019314>,  <41.882015, 28.402060, 29.077965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579006, 28.147606, 29.019314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582695, 0.760146, -0.287479,
		0.294334, -0.132331, -0.946497,
		-0.757518, -0.636134, -0.146628,
		41.351749, 27.956766, 28.975325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677082, 28.275969, 28.340590>,  <41.882015, 28.402060, 29.077965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677082, 28.275969, 28.340590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349274, 28.190327, 28.553211>,  <41.152588, 28.138943, 28.680784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349274, 28.190327, 28.553211>,  <41.677082, 28.275969, 28.340590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349274, 28.190327, 28.553211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493719, 0.734695, -0.465258,
		-0.290919, -0.643726, -0.707802,
		-0.819517, -0.214102, 0.531556,
		41.103420, 28.126097, 28.712679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109653, 28.434147, 27.891920>,  <41.677082, 28.275969, 28.340590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109653, 28.434147, 27.891920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952957, 28.424892, 28.259834>,  <40.858940, 28.419340, 28.480583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952957, 28.424892, 28.259834>,  <41.109653, 28.434147, 27.891920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952957, 28.424892, 28.259834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749709, 0.587539, -0.304522,
		-0.533364, -0.808865, -0.247508,
		-0.391738, -0.023138, 0.919786,
		40.835434, 28.417952, 28.535770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415279, 28.289389, 27.807730>,  <41.109653, 28.434147, 27.891920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415279, 28.289389, 27.807730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474285, 28.480389, 28.154194>,  <40.509689, 28.594988, 28.362072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474285, 28.480389, 28.154194>,  <40.415279, 28.289389, 27.807730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474285, 28.480389, 28.154194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722143, 0.650399, -0.235566,
		-0.675832, -0.590741, 0.440768,
		0.147516, 0.477500, 0.866160,
		40.518539, 28.623638, 28.414042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737072, 28.437063, 27.979465>,  <40.415279, 28.289389, 27.807730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737072, 28.437063, 27.979465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967377, 28.673073, 28.205872>,  <40.105560, 28.814678, 28.341715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967377, 28.673073, 28.205872>,  <39.737072, 28.437063, 27.979465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967377, 28.673073, 28.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624641, 0.764109, -0.161125,
		-0.527564, -0.260786, 0.808497,
		0.575760, 0.590024, 0.566014,
		40.140106, 28.850080, 28.375675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296631, 28.839563, 28.380482>,  <39.737072, 28.437063, 27.979465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296631, 28.839563, 28.380482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650391, 29.025005, 28.358925>,  <39.862648, 29.136271, 28.345991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650391, 29.025005, 28.358925>,  <39.296631, 28.839563, 28.380482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650391, 29.025005, 28.358925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461759, 0.852334, -0.245570,
		-0.067914, 0.242067, 0.967880,
		0.884402, 0.463605, -0.053891,
		39.915710, 29.164087, 28.342758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140884, 29.423016, 28.700302>,  <39.296631, 28.839563, 28.380482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140884, 29.423016, 28.700302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473736, 29.501602, 28.492855>,  <39.673447, 29.548754, 28.368387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473736, 29.501602, 28.492855>,  <39.140884, 29.423016, 28.700302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473736, 29.501602, 28.492855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335158, 0.923209, -0.188027,
		0.441852, 0.330282, 0.834074,
		0.832127, 0.196467, -0.518619,
		39.723373, 29.560543, 28.337269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142273, 30.068563, 28.768274>,  <39.140884, 29.423016, 28.700302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142273, 30.068563, 28.768274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403732, 30.006744, 28.471935>,  <39.560608, 29.969652, 28.294132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403732, 30.006744, 28.471935>,  <39.142273, 30.068563, 28.768274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403732, 30.006744, 28.471935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354925, 0.801991, -0.480457,
		0.668406, 0.576997, 0.469369,
		0.653652, -0.154549, -0.740847,
		39.599827, 29.960379, 28.249681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368538, 30.688099, 28.674742>,  <39.142273, 30.068563, 28.768274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368538, 30.688099, 28.674742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462231, 30.489079, 28.340656>,  <39.518444, 30.369667, 28.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462231, 30.489079, 28.340656>,  <39.368538, 30.688099, 28.674742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462231, 30.489079, 28.340656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315089, 0.773887, -0.549380,
		0.919704, 0.391848, 0.024495,
		0.234230, -0.497549, -0.835214,
		39.532501, 30.339813, 28.090092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651833, 31.157072, 28.263077>,  <39.368538, 30.688099, 28.674742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651833, 31.157072, 28.263077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533192, 30.883934, 27.996017>,  <39.462006, 30.720051, 27.835783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533192, 30.883934, 27.996017>,  <39.651833, 31.157072, 28.263077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533192, 30.883934, 27.996017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266097, 0.730509, -0.628926,
		0.917181, -0.008882, -0.398373,
		-0.296601, -0.682845, -0.667646,
		39.444210, 30.679081, 27.795723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998920, 31.423527, 27.693369>,  <39.651833, 31.157072, 28.263077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998920, 31.423527, 27.693369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702026, 31.208706, 27.533035>,  <39.523891, 31.079813, 27.436834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702026, 31.208706, 27.533035>,  <39.998920, 31.423527, 27.693369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702026, 31.208706, 27.533035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271641, 0.787898, -0.552655,
		0.612621, -0.301314, -0.730688,
		-0.742231, -0.537053, -0.400834,
		39.479359, 31.047590, 27.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937988, 31.681414, 27.036024>,  <39.998920, 31.423527, 27.693369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937988, 31.681414, 27.036024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595318, 31.476028, 27.055836>,  <39.389713, 31.352797, 27.067722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595318, 31.476028, 27.055836>,  <39.937988, 31.681414, 27.036024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595318, 31.476028, 27.055836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432391, 0.662405, -0.611766,
		0.281313, -0.545503, -0.789487,
		-0.856681, -0.513465, 0.049527,
		39.338314, 31.321989, 27.070694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692059, 31.678516, 26.384054>,  <39.937988, 31.681414, 27.036024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692059, 31.678516, 26.384054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381363, 31.595882, 26.622044>,  <39.194946, 31.546301, 26.764837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381363, 31.595882, 26.622044>,  <39.692059, 31.678516, 26.384054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381363, 31.595882, 26.622044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544159, 0.695774, -0.468818,
		-0.317115, -0.687911, -0.652853,
		-0.776743, -0.206586, 0.594973,
		39.148338, 31.533907, 26.800535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097092, 31.737843, 25.912148>,  <39.692059, 31.678516, 26.384054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097092, 31.737843, 25.912148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967564, 31.771622, 26.289085>,  <38.889847, 31.791889, 26.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967564, 31.771622, 26.289085>,  <39.097092, 31.737843, 25.912148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967564, 31.771622, 26.289085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704919, 0.642797, -0.299835,
		-0.631056, -0.761367, -0.148621,
		-0.323818, 0.084447, 0.942343,
		38.870419, 31.796955, 26.571789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319813, 31.771482, 25.865019>,  <39.097092, 31.737843, 25.912148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319813, 31.771482, 25.865019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418262, 31.927559, 26.219910>,  <38.477333, 32.021206, 26.432844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418262, 31.927559, 26.219910>,  <38.319813, 31.771482, 25.865019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418262, 31.927559, 26.219910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594674, 0.783635, -0.179663,
		-0.765365, -0.483390, 0.424912,
		0.246128, 0.390192, 0.887226,
		38.492100, 32.044617, 26.486078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723000, 31.787556, 26.204475>,  <38.319813, 31.771482, 25.865019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723000, 31.787556, 26.204475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962025, 32.057564, 26.377571>,  <38.105442, 32.219570, 26.481428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962025, 32.057564, 26.377571>,  <37.723000, 31.787556, 26.204475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962025, 32.057564, 26.377571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659080, 0.720877, -0.214361,
		-0.456650, -0.157116, 0.875663,
		0.597565, 0.675020, 0.432740,
		38.141293, 32.260071, 26.507393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334915, 32.227425, 26.715380>,  <37.723000, 31.787556, 26.204475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334915, 32.227425, 26.715380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658199, 32.427479, 26.591019>,  <37.852169, 32.547512, 26.516403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658199, 32.427479, 26.591019>,  <37.334915, 32.227425, 26.715380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658199, 32.427479, 26.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584424, 0.616248, -0.527908,
		-0.072435, 0.608359, 0.790350,
		0.808209, 0.500138, -0.310902,
		37.900661, 32.577518, 26.497747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262455, 32.975330, 26.877066>,  <37.334915, 32.227425, 26.715380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262455, 32.975330, 26.877066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465660, 32.876793, 26.546917>,  <37.587582, 32.817669, 26.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465660, 32.876793, 26.546917>,  <37.262455, 32.975330, 26.877066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465660, 32.876793, 26.546917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578463, 0.612413, -0.538824,
		0.638204, 0.751176, 0.168612,
		0.508012, -0.246344, -0.825372,
		37.618065, 32.802891, 26.299305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377747, 33.313583, 26.243488>,  <37.262455, 32.975330, 26.877066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377747, 33.313583, 26.243488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163727, 33.451881, 25.935154>,  <37.035316, 33.534859, 25.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163727, 33.451881, 25.935154>,  <37.377747, 33.313583, 26.243488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163727, 33.451881, 25.935154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841332, -0.300916, 0.449009,
		-0.076717, 0.888770, 0.451887,
		-0.535046, 0.345741, -0.770837,
		37.003212, 33.555603, 25.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920631, 33.845703, 26.336302>,  <37.377747, 33.313583, 26.243488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920631, 33.845703, 26.336302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806995, 33.586967, 26.053207>,  <36.738811, 33.431725, 25.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806995, 33.586967, 26.053207>,  <36.920631, 33.845703, 26.336302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806995, 33.586967, 26.053207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853156, -0.166286, 0.494443,
		-0.437512, 0.744277, -0.504614,
		-0.284093, -0.646839, -0.707736,
		36.721767, 33.392918, 25.840887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228992, 34.166656, 26.575874>,  <36.920631, 33.845703, 26.336302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228992, 34.166656, 26.575874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074089, 33.859562, 26.780079>,  <35.981148, 33.675304, 26.902601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074089, 33.859562, 26.780079>,  <36.228992, 34.166656, 26.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074089, 33.859562, 26.780079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489692, 0.640431, 0.591650,
		-0.781176, -0.020874, -0.623962,
		-0.387254, -0.767732, 0.510511,
		35.957912, 33.629242, 26.933231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517010, 34.247799, 26.749487>,  <36.228992, 34.166656, 26.575874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517010, 34.247799, 26.749487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658875, 34.078918, 27.083183>,  <35.743992, 33.977589, 27.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658875, 34.078918, 27.083183>,  <35.517010, 34.247799, 26.749487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658875, 34.078918, 27.083183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489678, 0.676217, 0.550405,
		-0.796511, -0.603718, 0.033085,
		0.354662, -0.422203, 0.834242,
		35.765274, 33.952259, 27.333456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297638, 34.786659, 26.297922>,  <35.517010, 34.247799, 26.749487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297638, 34.786659, 26.297922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914513, 34.847137, 26.395691>,  <34.684639, 34.883423, 26.454351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914513, 34.847137, 26.395691>,  <35.297638, 34.786659, 26.297922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914513, 34.847137, 26.395691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040671, 0.770580, -0.636044,
		-0.284513, -0.619150, -0.731919,
		-0.957809, 0.151195, 0.244422,
		34.627171, 34.892494, 26.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839489, 34.793053, 25.749178>,  <35.297638, 34.786659, 26.297922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839489, 34.793053, 25.749178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716770, 35.020130, 26.054752>,  <34.643139, 35.156376, 26.238096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716770, 35.020130, 26.054752>,  <34.839489, 34.793053, 25.749178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716770, 35.020130, 26.054752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020878, 0.798434, -0.601720,
		-0.951546, -0.200555, -0.233103,
		-0.306795, 0.567698, 0.763934,
		34.624733, 35.190441, 26.283932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217686, 34.477764, 25.874496>,  <34.839489, 34.793053, 25.749178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217686, 34.477764, 25.874496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963436, 34.481251, 26.183277>,  <33.810886, 34.483345, 26.368546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963436, 34.481251, 26.183277>,  <34.217686, 34.477764, 25.874496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963436, 34.481251, 26.183277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024661, -0.999197, 0.031594,
		0.771607, 0.039118, 0.634895,
		-0.635621, 0.008721, 0.771952,
		33.772751, 34.483868, 26.414864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452408, 34.046806, 26.422033>,  <34.217686, 34.477764, 25.874496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452408, 34.046806, 26.422033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 34.040436, 26.474403>,  <33.817997, 34.036613, 26.505825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055901, 34.040436, 26.474403>,  <34.452408, 34.046806, 26.422033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055901, 34.040436, 26.474403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059920, -0.938713, 0.339453,
		0.117495, 0.344333, 0.931466,
		-0.991264, -0.015930, 0.130926,
		33.758522, 34.035656, 26.513681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385803, 33.675076, 27.040297>,  <34.452408, 34.046806, 26.422033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385803, 33.675076, 27.040297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035320, 33.663296, 26.847881>,  <33.825031, 33.656227, 26.732431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035320, 33.663296, 26.847881>,  <34.385803, 33.675076, 27.040297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035320, 33.663296, 26.847881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099724, -0.965449, 0.240755,
		-0.471510, 0.258921, 0.842993,
		-0.876204, -0.029452, -0.481040,
		33.772461, 33.654461, 26.703569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789093, 33.473846, 27.490410>,  <34.385803, 33.675076, 27.040297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789093, 33.473846, 27.490410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700275, 33.372635, 27.113758>,  <33.646984, 33.311909, 26.887766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700275, 33.372635, 27.113758>,  <33.789093, 33.473846, 27.490410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700275, 33.372635, 27.113758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126697, -0.950065, 0.285174,
		-0.966769, 0.182624, 0.178901,
		-0.222047, -0.253032, -0.941632,
		33.633659, 33.296726, 26.831268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364250, 32.886456, 27.588835>,  <33.789093, 33.473846, 27.490410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364250, 32.886456, 27.588835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412949, 32.854477, 27.193100>,  <33.442169, 32.835289, 26.955660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412949, 32.854477, 27.193100>,  <33.364250, 32.886456, 27.588835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412949, 32.854477, 27.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253168, -0.966284, 0.046926,
		-0.959731, 0.244755, -0.137882,
		0.121748, -0.079944, -0.989336,
		33.449474, 32.830494, 26.896299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799583, 32.589321, 27.251411>,  <33.364250, 32.886456, 27.588835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799583, 32.589321, 27.251411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077194, 32.499748, 26.977715>,  <33.243759, 32.446003, 26.813498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077194, 32.499748, 26.977715>,  <32.799583, 32.589321, 27.251411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077194, 32.499748, 26.977715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281677, -0.959095, 0.028181,
		-0.662562, 0.173176, -0.728712,
		0.694024, -0.223933, -0.684240,
		33.285400, 32.432568, 26.772442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431049, 32.232281, 26.714907>,  <32.799583, 32.589321, 27.251411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431049, 32.232281, 26.714907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816994, 32.138569, 26.667301>,  <33.048561, 32.082344, 26.638739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816994, 32.138569, 26.667301>,  <32.431049, 32.232281, 26.714907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816994, 32.138569, 26.667301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210479, -0.960178, 0.183730,
		-0.157317, -0.152223, -0.975746,
		0.964857, -0.234277, -0.119013,
		33.106449, 32.068287, 26.631598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353271, 31.620275, 26.505114>,  <32.431049, 32.232281, 26.714907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353271, 31.620275, 26.505114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752480, 31.605515, 26.525505>,  <32.992004, 31.596657, 26.537741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752480, 31.605515, 26.525505>,  <32.353271, 31.620275, 26.505114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752480, 31.605515, 26.525505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042748, -0.992000, 0.118777,
		0.046188, -0.120721, -0.991611,
		0.998018, -0.036904, 0.050979,
		33.051884, 31.594444, 26.540798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533203, 31.135324, 26.049921>,  <32.353271, 31.620275, 26.505114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533203, 31.135324, 26.049921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807823, 31.179466, 26.337383>,  <32.972595, 31.205952, 26.509861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807823, 31.179466, 26.337383>,  <32.533203, 31.135324, 26.049921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807823, 31.179466, 26.337383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048674, -0.979222, 0.196864,
		0.725448, -0.170137, -0.666917,
		0.686553, 0.110353, 0.718656,
		33.013790, 31.212572, 26.552980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989376, 30.492430, 25.984480>,  <32.533203, 31.135324, 26.049921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989376, 30.492430, 25.984480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049950, 30.663578, 26.340904>,  <33.086296, 30.766268, 26.554760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049950, 30.663578, 26.340904>,  <32.989376, 30.492430, 25.984480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049950, 30.663578, 26.340904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104323, -0.903344, 0.416037,
		0.982946, 0.029954, -0.181437,
		0.151438, 0.427870, 0.891063,
		33.095383, 30.791939, 26.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593288, 30.086975, 26.287617>,  <32.989376, 30.492430, 25.984480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593288, 30.086975, 26.287617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417732, 30.257282, 26.604122>,  <33.312397, 30.359467, 26.794025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417732, 30.257282, 26.604122>,  <33.593288, 30.086975, 26.287617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417732, 30.257282, 26.604122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054248, -0.891558, 0.449645,
		0.896900, 0.154422, 0.414397,
		-0.438894, 0.425767, 0.791261,
		33.286064, 30.385012, 26.841501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994045, 29.756573, 26.864872>,  <33.593288, 30.086975, 26.287617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994045, 29.756573, 26.864872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640472, 29.910271, 26.971470>,  <33.428329, 30.002489, 27.035429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640472, 29.910271, 26.971470>,  <33.994045, 29.756573, 26.864872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640472, 29.910271, 26.971470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120335, -0.737620, 0.664407,
		0.451867, 0.555222, 0.698244,
		-0.883932, 0.384247, 0.266493,
		33.375294, 30.025545, 27.051418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987751, 29.710882, 27.647755>,  <33.994045, 29.756573, 26.864872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987751, 29.710882, 27.647755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610962, 29.758999, 27.522392>,  <33.384888, 29.787868, 27.447176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610962, 29.758999, 27.522392>,  <33.987751, 29.710882, 27.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610962, 29.758999, 27.522392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299947, -0.720821, 0.624859,
		-0.150745, 0.682603, 0.715072,
		-0.941970, 0.120290, -0.313405,
		33.328369, 29.795086, 27.428371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479004, 29.730433, 28.285862>,  <33.987751, 29.710882, 27.647755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479004, 29.730433, 28.285862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263103, 29.613091, 27.970238>,  <33.133564, 29.542685, 27.780863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263103, 29.613091, 27.970238>,  <33.479004, 29.730433, 28.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263103, 29.613091, 27.970238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426552, -0.712779, 0.556776,
		-0.725758, 0.637093, 0.259589,
		-0.539748, -0.293357, -0.789059,
		33.101177, 29.525084, 27.733521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820148, 29.666988, 28.575609>,  <33.479004, 29.730433, 28.285862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820148, 29.666988, 28.575609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802197, 29.450153, 28.239960>,  <32.791424, 29.320053, 28.038570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802197, 29.450153, 28.239960>,  <32.820148, 29.666988, 28.575609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802197, 29.450153, 28.239960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316716, -0.788917, 0.526593,
		-0.947458, 0.289399, -0.136277,
		-0.044884, -0.542086, -0.839123,
		32.788731, 29.287527, 27.988222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264076, 29.154919, 28.731594>,  <32.820148, 29.666988, 28.575609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264076, 29.154919, 28.731594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447701, 28.999889, 28.411831>,  <32.557877, 28.906872, 28.219973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447701, 28.999889, 28.411831>,  <32.264076, 29.154919, 28.731594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447701, 28.999889, 28.411831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075014, -0.913518, 0.399822,
		-0.885233, -0.123575, -0.448432,
		0.459058, -0.387574, -0.799407,
		32.585419, 28.883617, 28.172009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852770, 28.628254, 28.538687>,  <32.264076, 29.154919, 28.731594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852770, 28.628254, 28.538687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206333, 28.546509, 28.370426>,  <32.418472, 28.497461, 28.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206333, 28.546509, 28.370426>,  <31.852770, 28.628254, 28.538687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206333, 28.546509, 28.370426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054064, -0.938091, 0.342144,
		-0.464529, -0.279681, -0.840233,
		0.883906, -0.204362, -0.420650,
		32.471504, 28.485201, 28.244232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730415, 28.070597, 28.100096>,  <31.852770, 28.628254, 28.538687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730415, 28.070597, 28.100096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110184, 28.102116, 28.221680>,  <32.338043, 28.121027, 28.294630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110184, 28.102116, 28.221680>,  <31.730415, 28.070597, 28.100096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110184, 28.102116, 28.221680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053937, -0.912691, 0.405075,
		0.309339, -0.400981, -0.862278,
		0.949421, 0.078797, 0.303959,
		32.395012, 28.125755, 28.312868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969965, 27.323408, 28.174742>,  <31.730415, 28.070597, 28.100096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969965, 27.323408, 28.174742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252548, 27.512962, 28.385017>,  <32.422096, 27.626696, 28.511183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252548, 27.512962, 28.385017>,  <31.969965, 27.323408, 28.174742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252548, 27.512962, 28.385017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105223, -0.804826, 0.584108,
		0.699890, -0.357333, -0.618440,
		0.706457, 0.473886, 0.525690,
		32.464485, 27.655128, 28.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587547, 26.955740, 28.207464>,  <31.969965, 27.323408, 28.174742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587547, 26.955740, 28.207464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626507, 27.189777, 28.529503>,  <32.649883, 27.330200, 28.722727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626507, 27.189777, 28.529503>,  <32.587547, 26.955740, 28.207464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626507, 27.189777, 28.529503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251801, -0.797112, 0.548825,
		0.962865, 0.149267, -0.224966,
		0.097402, 0.585092, 0.805097,
		32.655727, 27.365305, 28.771032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233791, 26.647470, 28.484070>,  <32.587547, 26.955740, 28.207464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233791, 26.647470, 28.484070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065269, 26.862019, 28.776592>,  <32.964157, 26.990747, 28.952106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065269, 26.862019, 28.776592>,  <33.233791, 26.647470, 28.484070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065269, 26.862019, 28.776592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140469, -0.758042, 0.636900,
		0.895975, 0.371055, 0.244023,
		-0.421305, 0.536369, 0.731308,
		32.938877, 27.022930, 28.995985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797421, 26.607843, 29.005299>,  <33.233791, 26.647470, 28.484070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797421, 26.607843, 29.005299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449039, 26.715698, 29.169609>,  <33.240009, 26.780411, 29.268196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449039, 26.715698, 29.169609>,  <33.797421, 26.607843, 29.005299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449039, 26.715698, 29.169609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189606, -0.586818, 0.787207,
		0.453312, 0.763505, 0.459965,
		-0.870952, 0.269638, 0.410777,
		33.187756, 26.796589, 29.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929287, 26.583311, 29.707560>,  <33.797421, 26.607843, 29.005299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929287, 26.583311, 29.707560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532310, 26.571255, 29.659985>,  <33.294125, 26.564020, 29.631439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532310, 26.571255, 29.659985>,  <33.929287, 26.583311, 29.707560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532310, 26.571255, 29.659985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057956, -0.739233, 0.670951,
		-0.108145, 0.672775, 0.731901,
		-0.992444, -0.030142, -0.118936,
		33.234577, 26.562212, 29.624304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664654, 26.561195, 30.337711>,  <33.929287, 26.583311, 29.707560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664654, 26.561195, 30.337711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390282, 26.377647, 30.111813>,  <33.225658, 26.267519, 29.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390282, 26.377647, 30.111813>,  <33.664654, 26.561195, 30.337711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390282, 26.377647, 30.111813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076527, -0.726312, 0.683092,
		-0.723632, 0.511772, 0.463084,
		-0.685931, -0.458869, -0.564746,
		33.184502, 26.239986, 29.942389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201229, 26.417173, 30.775484>,  <33.664654, 26.561195, 30.337711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201229, 26.417173, 30.775484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104660, 26.178230, 30.469574>,  <33.046719, 26.034864, 30.286028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104660, 26.178230, 30.469574>,  <33.201229, 26.417173, 30.775484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104660, 26.178230, 30.469574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276333, -0.713143, 0.644257,
		-0.930245, 0.366870, 0.007098,
		-0.241421, -0.597356, -0.764776,
		33.032234, 25.999023, 30.240141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567207, 26.020601, 30.986010>,  <33.201229, 26.417173, 30.775484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567207, 26.020601, 30.986010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746559, 25.811356, 30.696098>,  <32.854172, 25.685808, 30.522152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746559, 25.811356, 30.696098>,  <32.567207, 26.020601, 30.986010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746559, 25.811356, 30.696098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150973, -0.843530, 0.515427,
		-0.881002, -0.121683, -0.457196,
		0.448377, -0.523116, -0.724781,
		32.881073, 25.654421, 30.478664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004986, 25.483257, 30.919333>,  <32.567207, 26.020601, 30.986010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004986, 25.483257, 30.919333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326149, 25.353504, 30.719288>,  <32.518848, 25.275652, 30.599260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326149, 25.353504, 30.719288>,  <32.004986, 25.483257, 30.919333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326149, 25.353504, 30.719288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110541, -0.905445, 0.409818,
		-0.585762, -0.273764, -0.762847,
		0.802909, -0.324381, -0.500113,
		32.567020, 25.256189, 30.569254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763826, 24.951746, 30.552219>,  <32.004986, 25.483257, 30.919333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763826, 24.951746, 30.552219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153912, 24.904690, 30.627186>,  <32.387962, 24.876457, 30.672165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153912, 24.904690, 30.627186>,  <31.763826, 24.951746, 30.552219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153912, 24.904690, 30.627186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169808, -0.940916, 0.292988,
		0.141876, -0.317550, -0.937568,
		0.975211, -0.117639, 0.187416,
		32.446476, 24.869398, 30.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870880, 24.279194, 30.331347>,  <31.763826, 24.951746, 30.552219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870880, 24.279194, 30.331347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163101, 24.360813, 30.592010>,  <32.338432, 24.409784, 30.748409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163101, 24.360813, 30.592010>,  <31.870880, 24.279194, 30.331347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163101, 24.360813, 30.592010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167326, -0.871727, 0.460536,
		0.662040, -0.445485, -0.602699,
		0.730551, 0.204046, 0.651659,
		32.382267, 24.422028, 30.787508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193085, 23.615231, 30.397339>,  <31.870880, 24.279194, 30.331347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193085, 23.615231, 30.397339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289982, 23.850075, 30.706303>,  <32.348122, 23.990982, 30.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289982, 23.850075, 30.706303>,  <32.193085, 23.615231, 30.397339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289982, 23.850075, 30.706303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037688, -0.789827, 0.612171,
		0.969483, -0.177406, -0.169204,
		0.242245, 0.587112, 0.772409,
		32.362656, 24.026209, 30.938026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840549, 23.254028, 30.551609>,  <32.193085, 23.615231, 30.397339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840549, 23.254028, 30.551609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739132, 23.497715, 30.852161>,  <32.678280, 23.643927, 31.032494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739132, 23.497715, 30.852161>,  <32.840549, 23.254028, 30.551609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739132, 23.497715, 30.852161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115479, -0.790270, 0.601779,
		0.960406, 0.065809, 0.270719,
		-0.253543, 0.609215, 0.751381,
		32.663071, 23.680479, 31.077576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292805, 23.212185, 31.114742>,  <32.840549, 23.254028, 30.551609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292805, 23.212185, 31.114742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940662, 23.312874, 31.275543>,  <32.729378, 23.373287, 31.372023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940662, 23.312874, 31.275543>,  <33.292805, 23.212185, 31.114742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940662, 23.312874, 31.275543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067733, -0.905586, 0.418720,
		0.469447, 0.341395, 0.814290,
		-0.880359, 0.251721, 0.402001,
		32.676556, 23.388390, 31.396143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349400, 22.915010, 31.830683>,  <33.292805, 23.212185, 31.114742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349400, 22.915010, 31.830683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961758, 22.995831, 31.774097>,  <32.729172, 23.044323, 31.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961758, 22.995831, 31.774097>,  <33.349400, 22.915010, 31.830683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961758, 22.995831, 31.774097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246411, -0.818236, 0.519395,
		-0.010806, 0.538206, 0.842744,
		-0.969105, 0.202049, -0.141462,
		32.671024, 23.056446, 31.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991283, 22.719858, 32.478752>,  <33.349400, 22.915010, 31.830683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991283, 22.719858, 32.478752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714565, 22.721912, 32.189922>,  <32.548534, 22.723145, 32.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714565, 22.721912, 32.189922>,  <32.991283, 22.719858, 32.478752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714565, 22.721912, 32.189922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482828, -0.746851, 0.457265,
		-0.536937, 0.664972, 0.519145,
		-0.691792, 0.005135, -0.722079,
		32.507027, 22.723454, 31.973299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397915, 22.680939, 32.837326>,  <32.991283, 22.719858, 32.478752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397915, 22.680939, 32.837326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304558, 22.543385, 32.473507>,  <32.248543, 22.460852, 32.255215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304558, 22.543385, 32.473507>,  <32.397915, 22.680939, 32.837326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304558, 22.543385, 32.473507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593735, -0.690364, 0.413372,
		-0.770068, 0.636508, -0.043048,
		-0.233396, -0.343884, -0.909544,
		32.234539, 22.440220, 32.200645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674795, 22.737974, 32.872025>,  <32.397915, 22.680939, 32.837326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674795, 22.737974, 32.872025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772718, 22.488724, 32.574898>,  <31.831472, 22.339174, 32.396622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772718, 22.488724, 32.574898>,  <31.674795, 22.737974, 32.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772718, 22.488724, 32.574898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557542, -0.717266, 0.417942,
		-0.793231, 0.311838, -0.523012,
		0.244809, -0.623126, -0.742821,
		31.846161, 22.301786, 32.352051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048450, 22.499027, 32.636745>,  <31.674795, 22.737974, 32.872025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048450, 22.499027, 32.636745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333393, 22.236130, 32.538300>,  <31.504360, 22.078390, 32.479233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333393, 22.236130, 32.538300>,  <31.048450, 22.499027, 32.636745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333393, 22.236130, 32.538300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581279, -0.749052, 0.317863,
		-0.393267, -0.083370, -0.915637,
		0.712359, -0.657245, -0.246116,
		31.547100, 22.038956, 32.464466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695189, 21.948269, 32.346428>,  <31.048450, 22.499027, 32.636745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695189, 21.948269, 32.346428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057171, 21.804657, 32.437778>,  <31.274361, 21.718489, 32.492588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057171, 21.804657, 32.437778>,  <30.695189, 21.948269, 32.346428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057171, 21.804657, 32.437778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423202, -0.815250, 0.395307,
		0.044253, -0.454382, -0.889707,
		0.904954, -0.359032, 0.228373,
		31.328657, 21.696947, 32.506290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700586, 21.307182, 32.146076>,  <30.695189, 21.948269, 32.346428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700586, 21.307182, 32.146076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010872, 21.317268, 32.398308>,  <31.197042, 21.323320, 32.549648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010872, 21.317268, 32.398308>,  <30.700586, 21.307182, 32.146076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010872, 21.317268, 32.398308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344264, -0.820528, 0.456307,
		0.528916, -0.571050, -0.627813,
		0.775712, 0.025215, 0.630583,
		31.243586, 21.324833, 32.587482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778824, 20.551737, 32.392609>,  <30.700586, 21.307182, 32.146076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778824, 20.551737, 32.392609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943485, 20.779766, 32.677017>,  <31.042282, 20.916584, 32.847664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943485, 20.779766, 32.677017>,  <30.778824, 20.551737, 32.392609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943485, 20.779766, 32.677017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242181, -0.683713, 0.688393,
		0.878572, -0.455577, -0.143393,
		0.411655, 0.570075, 0.711023,
		31.066982, 20.950788, 32.890324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263958, 20.113945, 32.861015>,  <30.778824, 20.551737, 32.392609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263958, 20.113945, 32.861015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183979, 20.445709, 33.069668>,  <31.135992, 20.644768, 33.194859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183979, 20.445709, 33.069668>,  <31.263958, 20.113945, 32.861015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183979, 20.445709, 33.069668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126882, -0.549817, 0.825592,
		0.971557, 0.098888, 0.215170,
		-0.199945, 0.829411, 0.521631,
		31.123995, 20.694532, 33.226158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534216, 19.955233, 33.549465>,  <31.263958, 20.113945, 32.861015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534216, 19.955233, 33.549465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284307, 20.263943, 33.596836>,  <31.134363, 20.449169, 33.625259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284307, 20.263943, 33.596836>,  <31.534216, 19.955233, 33.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284307, 20.263943, 33.596836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300154, -0.377412, 0.876052,
		0.720811, 0.511786, 0.467447,
		-0.624772, 0.771774, 0.118428,
		31.096876, 20.495476, 33.632366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683559, 20.287394, 34.229317>,  <31.534216, 19.955233, 33.549465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683559, 20.287394, 34.229317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300169, 20.325031, 34.121635>,  <31.070135, 20.347614, 34.057026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300169, 20.325031, 34.121635>,  <31.683559, 20.287394, 34.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300169, 20.325031, 34.121635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284210, -0.392779, 0.874614,
		-0.023443, 0.914807, 0.403211,
		-0.958475, 0.094093, -0.269205,
		31.012627, 20.353258, 34.040874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216505, 20.234661, 34.823421>,  <31.683559, 20.287394, 34.229317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216505, 20.234661, 34.823421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980553, 20.123016, 34.520332>,  <30.838982, 20.056030, 34.338478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980553, 20.123016, 34.520332>,  <31.216505, 20.234661, 34.823421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980553, 20.123016, 34.520332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560187, -0.534385, 0.632948,
		-0.581576, 0.797828, 0.158870,
		-0.589882, -0.279110, -0.757718,
		30.803589, 20.039284, 34.293018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535629, 20.330610, 34.977272>,  <31.216505, 20.234661, 34.823421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535629, 20.330610, 34.977272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560526, 20.015614, 34.732002>,  <30.575464, 19.826614, 34.584843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560526, 20.015614, 34.732002>,  <30.535629, 20.330610, 34.977272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560526, 20.015614, 34.732002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585385, -0.526398, 0.616627,
		-0.808363, 0.320562, -0.493751,
		0.062243, -0.787493, -0.613173,
		30.579199, 19.779366, 34.548050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365362, 20.217415, 35.715263>,  <30.535629, 20.330610, 34.977272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365362, 20.217415, 35.715263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315739, 20.448898, 36.037682>,  <30.285965, 20.587790, 36.231133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315739, 20.448898, 36.037682>,  <30.365362, 20.217415, 35.715263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315739, 20.448898, 36.037682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982294, -0.186551, -0.017246,
		0.140388, -0.793910, 0.591606,
		-0.124056, 0.578710, 0.806043,
		30.278522, 20.622511, 36.279495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934313, 19.862505, 36.278015>,  <30.365362, 20.217415, 35.715263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934313, 19.862505, 36.278015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929808, 20.261013, 36.312244>,  <29.927105, 20.500118, 36.332783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929808, 20.261013, 36.312244>,  <29.934313, 19.862505, 36.278015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929808, 20.261013, 36.312244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995930, -0.003525, -0.090055,
		-0.089418, -0.086244, 0.992253,
		-0.011265, 0.996268, 0.085577,
		29.926428, 20.559893, 36.337917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810583, 19.142521, 36.016582>,  <29.934313, 19.862505, 36.278015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810583, 19.142521, 36.016582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458233, 19.132240, 35.827522>,  <29.246822, 19.126072, 35.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458233, 19.132240, 35.827522>,  <29.810583, 19.142521, 36.016582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458233, 19.132240, 35.827522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059126, 0.996679, 0.055992,
		0.469643, 0.077268, -0.879468,
		-0.880874, -0.025703, -0.472652,
		29.193970, 19.124529, 35.685726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796717, 19.473909, 35.383923>,  <29.810583, 19.142521, 36.016582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796717, 19.473909, 35.383923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426342, 19.497169, 35.533195>,  <29.204117, 19.511126, 35.622757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426342, 19.497169, 35.533195>,  <29.796717, 19.473909, 35.383923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426342, 19.497169, 35.533195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055288, 0.998301, -0.018375,
		-0.373615, 0.003618, -0.927577,
		-0.925935, 0.058149, 0.373180,
		29.148561, 19.514614, 35.645149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313747, 19.786850, 34.966522>,  <29.796717, 19.473909, 35.383923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313747, 19.786850, 34.966522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233776, 19.852272, 35.352947>,  <29.185793, 19.891525, 35.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233776, 19.852272, 35.352947>,  <29.313747, 19.786850, 34.966522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233776, 19.852272, 35.352947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081490, 0.985329, -0.149952,
		-0.976416, 0.048745, -0.210323,
		-0.199928, 0.163555, 0.966063,
		29.173798, 19.901339, 35.642765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673153, 20.259676, 35.110302>,  <29.313747, 19.786850, 34.966522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673153, 20.259676, 35.110302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949118, 20.270920, 35.399639>,  <29.114697, 20.277666, 35.573242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949118, 20.270920, 35.399639>,  <28.673153, 20.259676, 35.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949118, 20.270920, 35.399639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082586, 0.989665, -0.117229,
		-0.719165, 0.140616, 0.680462,
		0.689914, 0.028110, 0.723346,
		29.156092, 20.279352, 35.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500931, 20.725203, 35.565525>,  <28.673153, 20.259676, 35.110302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500931, 20.725203, 35.565525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898947, 20.699806, 35.534889>,  <29.137756, 20.684568, 35.516510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898947, 20.699806, 35.534889>,  <28.500931, 20.725203, 35.565525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898947, 20.699806, 35.534889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053315, 0.990300, -0.128311,
		0.083990, 0.123591, 0.988773,
		0.995039, -0.063493, -0.076586,
		29.197458, 20.680758, 35.511913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781965, 21.216194, 36.068676>,  <28.500931, 20.725203, 35.565525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781965, 21.216194, 36.068676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044703, 21.131241, 35.779274>,  <29.202345, 21.080269, 35.605633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044703, 21.131241, 35.779274>,  <28.781965, 21.216194, 36.068676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044703, 21.131241, 35.779274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141085, 0.977184, -0.158763,
		0.740712, 0.002208, 0.671819,
		0.656842, -0.212381, -0.723501,
		29.241755, 21.067526, 35.562225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438101, 21.700359, 36.208447>,  <28.781965, 21.216194, 36.068676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438101, 21.700359, 36.208447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430021, 21.585709, 35.825314>,  <29.425173, 21.516918, 35.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430021, 21.585709, 35.825314>,  <29.438101, 21.700359, 36.208447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430021, 21.585709, 35.825314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280158, 0.918021, -0.280621,
		0.959742, -0.274012, 0.061757,
		-0.020199, -0.286626, -0.957830,
		29.423962, 21.499722, 35.537964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007494, 22.056963, 35.850311>,  <29.438101, 21.700359, 36.208447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007494, 22.056963, 35.850311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765360, 21.947475, 35.551342>,  <29.620079, 21.881783, 35.371960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765360, 21.947475, 35.551342>,  <30.007494, 22.056963, 35.850311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765360, 21.947475, 35.551342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041655, 0.926833, -0.373156,
		0.794879, -0.257018, -0.549644,
		-0.605336, -0.273719, -0.747427,
		29.583759, 21.865360, 35.327114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351542, 22.328064, 35.325981>,  <30.007494, 22.056963, 35.850311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351542, 22.328064, 35.325981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983105, 22.271053, 35.181053>,  <29.762043, 22.236847, 35.094097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983105, 22.271053, 35.181053>,  <30.351542, 22.328064, 35.325981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983105, 22.271053, 35.181053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004035, 0.927044, -0.374930,
		0.389321, -0.346808, -0.853320,
		-0.921094, -0.142525, -0.362317,
		29.706778, 22.228296, 35.072357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367704, 22.669703, 34.735893>,  <30.351542, 22.328064, 35.325981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367704, 22.669703, 34.735893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974262, 22.618481, 34.786690>,  <29.738197, 22.587748, 34.817165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974262, 22.618481, 34.786690>,  <30.367704, 22.669703, 34.735893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974262, 22.618481, 34.786690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175423, 0.842747, -0.508925,
		-0.041848, -0.522857, -0.851392,
		-0.983603, -0.128056, 0.126989,
		29.679182, 22.580065, 34.824787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009260, 22.714167, 34.083164>,  <30.367704, 22.669703, 34.735893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009260, 22.714167, 34.083164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744858, 22.812340, 34.366806>,  <29.586216, 22.871243, 34.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744858, 22.812340, 34.366806>,  <30.009260, 22.714167, 34.083164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744858, 22.812340, 34.366806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247734, 0.820635, -0.514963,
		-0.708306, -0.516064, -0.481644,
		-0.661007, 0.245432, 0.709107,
		29.546556, 22.885969, 34.579536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425251, 22.985954, 33.758389>,  <30.009260, 22.714167, 34.083164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425251, 22.985954, 33.758389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424898, 23.126282, 34.132965>,  <29.424686, 23.210478, 34.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424898, 23.126282, 34.132965>,  <29.425251, 22.985954, 33.758389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424898, 23.126282, 34.132965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077391, 0.933610, -0.349832,
		-0.997000, -0.072781, 0.026327,
		-0.000882, 0.350820, 0.936443,
		29.424633, 23.231527, 34.413898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917074, 23.594532, 33.741364>,  <29.425251, 22.985954, 33.758389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917074, 23.594532, 33.741364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126513, 23.609917, 34.081802>,  <29.252176, 23.619148, 34.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126513, 23.609917, 34.081802>,  <28.917074, 23.594532, 33.741364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126513, 23.609917, 34.081802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069715, 0.997565, -0.002191,
		-0.849110, -0.058188, 0.525002,
		0.523596, 0.038461, 0.851098,
		29.283590, 23.621454, 34.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556540, 24.206499, 34.003315>,  <28.917074, 23.594532, 33.741364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556540, 24.206499, 34.003315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899956, 24.160172, 34.203110>,  <29.106007, 24.132376, 34.322987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899956, 24.160172, 34.203110>,  <28.556540, 24.206499, 34.003315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899956, 24.160172, 34.203110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293589, 0.909695, -0.293701,
		-0.420369, 0.398800, 0.815015,
		0.858543, -0.115817, 0.499491,
		29.157518, 24.125427, 34.352959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570925, 24.743608, 34.419441>,  <28.556540, 24.206499, 34.003315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570925, 24.743608, 34.419441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944685, 24.601917, 34.404362>,  <29.168941, 24.516903, 34.395313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944685, 24.601917, 34.404362>,  <28.570925, 24.743608, 34.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944685, 24.601917, 34.404362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332757, 0.905707, -0.262616,
		0.127167, 0.232844, 0.964164,
		0.934399, -0.354229, -0.037696,
		29.225004, 24.495649, 34.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979685, 25.371830, 34.506069>,  <28.570925, 24.743608, 34.419441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979685, 25.371830, 34.506069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238974, 25.104218, 34.360630>,  <29.394547, 24.943649, 34.273365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238974, 25.104218, 34.360630>,  <28.979685, 25.371830, 34.506069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238974, 25.104218, 34.360630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359235, 0.689726, -0.628672,
		0.671386, 0.276901, 0.687435,
		0.648221, -0.669032, -0.363600,
		29.433439, 24.903507, 34.251549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604176, 25.701580, 34.520409>,  <28.979685, 25.371830, 34.506069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604176, 25.701580, 34.520409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630260, 25.410328, 34.247478>,  <29.645912, 25.235577, 34.083721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630260, 25.410328, 34.247478>,  <29.604176, 25.701580, 34.520409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630260, 25.410328, 34.247478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406247, 0.643926, -0.648323,
		0.911433, -0.234915, 0.337794,
		0.065213, -0.728131, -0.682329,
		29.649824, 25.191889, 34.042778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158876, 25.838558, 34.159401>,  <29.604176, 25.701580, 34.520409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158876, 25.838558, 34.159401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957037, 25.625679, 33.887474>,  <29.835934, 25.497952, 33.724319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957037, 25.625679, 33.887474>,  <30.158876, 25.838558, 34.159401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957037, 25.625679, 33.887474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416178, 0.539946, -0.731611,
		0.756425, -0.652092, -0.050966,
		-0.504597, -0.532197, -0.679815,
		29.805658, 25.466021, 33.683529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622927, 25.858189, 33.625298>,  <30.158876, 25.838558, 34.159401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622927, 25.858189, 33.625298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287586, 25.721764, 33.455196>,  <30.086382, 25.639908, 33.353134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287586, 25.721764, 33.455196>,  <30.622927, 25.858189, 33.625298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287586, 25.721764, 33.455196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253646, 0.446452, -0.858105,
		0.482530, -0.827256, -0.287771,
		-0.838349, -0.341070, -0.425257,
		30.036079, 25.619446, 33.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836769, 25.577551, 32.894821>,  <30.622927, 25.858189, 33.625298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836769, 25.577551, 32.894821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443853, 25.651688, 32.905823>,  <30.208103, 25.696169, 32.912422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443853, 25.651688, 32.905823>,  <30.836769, 25.577551, 32.894821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443853, 25.651688, 32.905823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084804, 0.570649, -0.816804,
		-0.167079, -0.800006, -0.576260,
		-0.982290, 0.185340, 0.027499,
		30.149166, 25.707289, 32.914074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530897, 25.481638, 32.194778>,  <30.836769, 25.577551, 32.894821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530897, 25.481638, 32.194778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258474, 25.724602, 32.358345>,  <30.095020, 25.870380, 32.456486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258474, 25.724602, 32.358345>,  <30.530897, 25.481638, 32.194778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258474, 25.724602, 32.358345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129692, 0.649696, -0.749049,
		-0.720653, -0.457112, -0.521256,
		-0.681058, 0.607407, 0.408921,
		30.054157, 25.906824, 32.481022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035776, 25.635195, 31.714571>,  <30.530897, 25.481638, 32.194778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035776, 25.635195, 31.714571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024837, 25.933140, 31.981236>,  <30.018274, 26.111906, 32.141235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024837, 25.933140, 31.981236>,  <30.035776, 25.635195, 31.714571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024837, 25.933140, 31.981236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001222, 0.666883, -0.745161,
		-0.999625, -0.021194, -0.017328,
		-0.027348, 0.744861, 0.666659,
		30.016632, 26.156597, 32.181232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599720, 26.071264, 31.426672>,  <30.035776, 25.635195, 31.714571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599720, 26.071264, 31.426672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774660, 26.306435, 31.698868>,  <29.879625, 26.447536, 31.862186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774660, 26.306435, 31.698868>,  <29.599720, 26.071264, 31.426672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774660, 26.306435, 31.698868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066168, 0.733608, -0.676343,
		-0.896853, 0.340827, 0.281943,
		0.437352, 0.587925, 0.680491,
		29.905867, 26.482813, 31.903015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228901, 26.730824, 31.447779>,  <29.599720, 26.071264, 31.426672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228901, 26.730824, 31.447779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590015, 26.799614, 31.605461>,  <29.806684, 26.840889, 31.700071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590015, 26.799614, 31.605461>,  <29.228901, 26.730824, 31.447779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590015, 26.799614, 31.605461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106409, 0.798764, -0.592160,
		-0.416714, 0.576542, 0.702815,
		0.902788, 0.171976, 0.394206,
		29.860851, 26.851206, 31.723722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231188, 27.413204, 31.692783>,  <29.228901, 26.730824, 31.447779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231188, 27.413204, 31.692783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616385, 27.321156, 31.636650>,  <29.847502, 27.265926, 31.602970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616385, 27.321156, 31.636650>,  <29.231188, 27.413204, 31.692783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616385, 27.321156, 31.636650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151200, 0.892225, -0.425527,
		0.223134, 0.388559, 0.893998,
		0.962990, -0.230121, -0.140335,
		29.905281, 27.252119, 31.594549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608650, 28.058308, 31.721972>,  <29.231188, 27.413204, 31.692783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608650, 28.058308, 31.721972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879347, 27.839466, 31.524914>,  <30.041765, 27.708160, 31.406679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879347, 27.839466, 31.524914>,  <29.608650, 28.058308, 31.721972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879347, 27.839466, 31.524914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066191, 0.711656, -0.699403,
		0.733239, 0.440707, 0.517821,
		0.676742, -0.547104, -0.492643,
		30.082369, 27.675335, 31.377121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150204, 28.439491, 31.692083>,  <29.608650, 28.058308, 31.721972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150204, 28.439491, 31.692083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215023, 28.169506, 31.404148>,  <30.253914, 28.007515, 31.231386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215023, 28.169506, 31.404148>,  <30.150204, 28.439491, 31.692083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215023, 28.169506, 31.404148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337301, 0.723427, -0.602396,
		0.927345, -0.145186, 0.344894,
		0.162047, -0.674962, -0.719838,
		30.263638, 27.967018, 31.188196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866381, 28.525890, 31.539558>,  <30.150204, 28.439491, 31.692083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866381, 28.525890, 31.539558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678936, 28.346584, 31.235069>,  <30.566469, 28.239000, 31.052376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678936, 28.346584, 31.235069>,  <30.866381, 28.525890, 31.539558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678936, 28.346584, 31.235069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337905, 0.705212, -0.623295,
		0.816226, -0.549303, -0.178998,
		-0.468609, -0.448266, -0.761224,
		30.538353, 28.212105, 31.006702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392498, 28.466909, 31.099180>,  <30.866381, 28.525890, 31.539558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392498, 28.466909, 31.099180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030481, 28.477421, 30.929375>,  <30.813271, 28.483728, 30.827492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030481, 28.477421, 30.929375>,  <31.392498, 28.466909, 31.099180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030481, 28.477421, 30.929375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273685, 0.799988, -0.533962,
		0.325572, -0.599440, -0.731214,
		-0.905041, 0.026279, -0.424511,
		30.758968, 28.485304, 30.802021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532198, 28.958689, 30.677750>,  <31.392498, 28.466909, 31.099180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532198, 28.958689, 30.677750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166071, 28.899063, 30.528099>,  <30.946394, 28.863287, 30.438309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166071, 28.899063, 30.528099>,  <31.532198, 28.958689, 30.677750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166071, 28.899063, 30.528099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114343, 0.794557, -0.596326,
		0.386157, -0.588607, -0.710228,
		-0.915319, -0.149066, -0.374127,
		30.891476, 28.854343, 30.415861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600567, 29.269241, 30.032997>,  <31.532198, 28.958689, 30.677750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600567, 29.269241, 30.032997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206469, 29.214634, 30.074291>,  <30.970011, 29.181870, 30.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206469, 29.214634, 30.074291>,  <31.600567, 29.269241, 30.032997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206469, 29.214634, 30.074291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170284, 0.842676, -0.510784,
		-0.017263, -0.520826, -0.853488,
		-0.985244, -0.136518, 0.103235,
		30.910896, 29.173679, 30.105261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318893, 29.128708, 29.374323>,  <31.600567, 29.269241, 30.032997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318893, 29.128708, 29.374323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053482, 29.283276, 29.630577>,  <30.894236, 29.376017, 29.784328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053482, 29.283276, 29.630577>,  <31.318893, 29.128708, 29.374323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053482, 29.283276, 29.630577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122951, 0.900966, -0.416106,
		-0.737981, -0.197331, -0.645325,
		-0.663526, 0.386421, 0.640634,
		30.854424, 29.399202, 29.822767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776070, 29.475737, 28.995047>,  <31.318893, 29.128708, 29.374323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776070, 29.475737, 28.995047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744154, 29.649139, 29.354092>,  <30.725004, 29.753181, 29.569519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744154, 29.649139, 29.354092>,  <30.776070, 29.475737, 28.995047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744154, 29.649139, 29.354092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095707, 0.892991, -0.439781,
		-0.992207, -0.120998, -0.029762,
		-0.079789, 0.433505, 0.897612,
		30.720217, 29.779190, 29.623375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187437, 29.921015, 28.859606>,  <30.776070, 29.475737, 28.995047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187437, 29.921015, 28.859606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340879, 30.057789, 29.202751>,  <30.432945, 30.139854, 29.408638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340879, 30.057789, 29.202751>,  <30.187437, 29.921015, 28.859606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340879, 30.057789, 29.202751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103000, 0.938973, -0.328209,
		-0.917736, 0.037543, 0.395414,
		0.383605, 0.341936, 0.857862,
		30.455961, 30.160370, 29.460110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835331, 30.477022, 29.035370>,  <30.187437, 29.921015, 28.859606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835331, 30.477022, 29.035370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177238, 30.503925, 29.241222>,  <30.382383, 30.520067, 29.364735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177238, 30.503925, 29.241222>,  <29.835331, 30.477022, 29.035370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177238, 30.503925, 29.241222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064761, 0.969998, -0.234330,
		-0.514952, 0.233627, 0.824769,
		0.854769, 0.067256, 0.514632,
		30.433670, 30.524101, 29.395613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771786, 31.108658, 29.363434>,  <29.835331, 30.477022, 29.035370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771786, 31.108658, 29.363434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164507, 31.036331, 29.386654>,  <30.400139, 30.992935, 29.400587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164507, 31.036331, 29.386654>,  <29.771786, 31.108658, 29.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164507, 31.036331, 29.386654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189090, 0.959137, -0.210477,
		-0.017621, 0.217623, 0.975874,
		0.981802, -0.180819, 0.058052,
		30.459047, 30.982086, 29.404070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964783, 31.747955, 29.473253>,  <29.771786, 31.108658, 29.363434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964783, 31.747955, 29.473253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315474, 31.571735, 29.396034>,  <30.525888, 31.466003, 29.349703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315474, 31.571735, 29.396034>,  <29.964783, 31.747955, 29.473253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315474, 31.571735, 29.396034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343393, 0.854330, -0.390129,
		0.336799, 0.275744, 0.900295,
		0.876725, -0.440550, -0.193049,
		30.578491, 31.439569, 29.338120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471619, 32.148529, 29.799908>,  <29.964783, 31.747955, 29.473253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471619, 32.148529, 29.799908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624241, 31.961216, 29.481129>,  <30.715815, 31.848827, 29.289862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624241, 31.961216, 29.481129>,  <30.471619, 32.148529, 29.799908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624241, 31.961216, 29.481129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155243, 0.882393, -0.444165,
		0.911215, 0.045753, 0.409381,
		0.381557, -0.468284, -0.796947,
		30.738708, 31.820730, 29.242044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173630, 32.339798, 29.809145>,  <30.471619, 32.148529, 29.799908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173630, 32.339798, 29.809145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095985, 32.223709, 29.434319>,  <31.049398, 32.154057, 29.209423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095985, 32.223709, 29.434319>,  <31.173630, 32.339798, 29.809145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095985, 32.223709, 29.434319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070348, 0.948658, -0.308380,
		0.978454, -0.125780, -0.163729,
		-0.194111, -0.290218, -0.937067,
		31.037752, 32.136642, 29.153198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623142, 32.852482, 29.423168>,  <31.173630, 32.339798, 29.809145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623142, 32.852482, 29.423168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370045, 32.701839, 29.152523>,  <31.218185, 32.611454, 28.990135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370045, 32.701839, 29.152523>,  <31.623142, 32.852482, 29.423168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370045, 32.701839, 29.152523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100349, 0.906280, -0.410594,
		0.767830, -0.191904, -0.611236,
		-0.632745, -0.376603, -0.676612,
		31.180222, 32.588860, 28.949539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917892, 32.855789, 28.778172>,  <31.623142, 32.852482, 29.423168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917892, 32.855789, 28.778172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528151, 32.851822, 28.688248>,  <31.294306, 32.849442, 28.634295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528151, 32.851822, 28.688248>,  <31.917892, 32.855789, 28.778172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528151, 32.851822, 28.688248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112689, 0.843228, -0.525611,
		0.194777, -0.537464, -0.820484,
		-0.974353, -0.009918, -0.224808,
		31.235846, 32.848846, 28.620806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894762, 32.996193, 28.028366>,  <31.917892, 32.855789, 28.778172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894762, 32.996193, 28.028366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532011, 33.070805, 28.179512>,  <31.314362, 33.115574, 28.270199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532011, 33.070805, 28.179512>,  <31.894762, 32.996193, 28.028366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532011, 33.070805, 28.179512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057582, 0.833430, -0.549616,
		-0.417445, -0.520192, -0.745077,
		-0.906876, 0.186532, 0.377865,
		31.259949, 33.126762, 28.292871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499985, 33.036411, 27.456774>,  <31.894762, 32.996193, 28.028366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499985, 33.036411, 27.456774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284084, 33.228848, 27.733101>,  <31.154545, 33.344307, 27.898897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284084, 33.228848, 27.733101>,  <31.499985, 33.036411, 27.456774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284084, 33.228848, 27.733101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038277, 0.805742, -0.591028,
		-0.840955, -0.345450, -0.416484,
		-0.539749, 0.481086, 0.690816,
		31.122160, 33.373173, 27.940346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008598, 33.466110, 27.061018>,  <31.499985, 33.036411, 27.456774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008598, 33.466110, 27.061018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051722, 33.620434, 27.427521>,  <31.077595, 33.713028, 27.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051722, 33.620434, 27.427521>,  <31.008598, 33.466110, 27.061018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051722, 33.620434, 27.427521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053660, 0.918028, -0.392868,
		-0.992722, 0.091521, 0.078268,
		0.107808, 0.385809, 0.916258,
		31.084064, 33.736176, 27.702398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437485, 34.074093, 27.153645>,  <31.008598, 33.466110, 27.061018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437485, 34.074093, 27.153645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733957, 34.112724, 27.419373>,  <30.911840, 34.135902, 27.578810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733957, 34.112724, 27.419373>,  <30.437485, 34.074093, 27.153645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733957, 34.112724, 27.419373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304427, 0.833638, -0.460839,
		-0.598309, 0.543803, 0.588476,
		0.741182, 0.096576, 0.664321,
		30.956312, 34.141697, 27.618670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689882, 33.793762, 27.312469>,  <30.437485, 34.074093, 27.153645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689882, 33.793762, 27.312469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446836, 33.787266, 26.994843>,  <29.301008, 33.783367, 26.804266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446836, 33.787266, 26.994843>,  <29.689882, 33.793762, 27.312469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446836, 33.787266, 26.994843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493693, -0.775449, 0.393632,
		-0.622151, 0.631202, 0.463155,
		-0.607615, -0.016242, -0.794066,
		29.264551, 33.782394, 26.756622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984070, 33.779480, 27.525558>,  <29.689882, 33.793762, 27.312469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984070, 33.779480, 27.525558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001860, 33.583042, 27.177570>,  <29.012533, 33.465179, 26.968779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001860, 33.583042, 27.177570>,  <28.984070, 33.779480, 27.525558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001860, 33.583042, 27.177570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539616, -0.744672, 0.392783,
		-0.840736, 0.451981, -0.298122,
		0.044472, -0.491098, -0.869968,
		29.015202, 33.435711, 26.916580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262434, 33.579281, 27.279448>,  <28.984070, 33.779480, 27.525558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262434, 33.579281, 27.279448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531742, 33.336857, 27.110027>,  <28.693327, 33.191402, 27.008375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531742, 33.336857, 27.110027>,  <28.262434, 33.579281, 27.279448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531742, 33.336857, 27.110027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451957, -0.790686, 0.412977,
		-0.585188, -0.086617, -0.806259,
		0.673268, -0.606064, -0.423553,
		28.733723, 33.155037, 26.982962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961742, 32.941727, 27.312553>,  <28.262434, 33.579281, 27.279448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961742, 32.941727, 27.312553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333944, 32.824978, 27.224033>,  <28.557264, 32.754929, 27.170921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333944, 32.824978, 27.224033>,  <27.961742, 32.941727, 27.312553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333944, 32.824978, 27.224033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194419, -0.905608, 0.376928,
		-0.310425, -0.307708, -0.899418,
		0.930504, -0.291872, -0.221299,
		28.613096, 32.737415, 27.157644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922132, 32.400810, 26.774548>,  <27.961742, 32.941727, 27.312553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922132, 32.400810, 26.774548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257971, 32.354809, 26.986908>,  <28.459475, 32.327206, 27.114325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257971, 32.354809, 26.986908>,  <27.922132, 32.400810, 26.774548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257971, 32.354809, 26.986908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350988, -0.860776, 0.368609,
		0.414593, -0.495822, -0.763069,
		0.839595, -0.115005, 0.530899,
		28.509850, 32.320309, 27.146177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170223, 31.732618, 26.561668>,  <27.922132, 32.400810, 26.774548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170223, 31.732618, 26.561668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359175, 31.781898, 26.910767>,  <28.472546, 31.811466, 27.120226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359175, 31.781898, 26.910767>,  <28.170223, 31.732618, 26.561668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359175, 31.781898, 26.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107544, -0.974728, 0.195807,
		0.874811, -0.186353, -0.447188,
		0.472376, 0.123202, 0.872744,
		28.500887, 31.818859, 27.172590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622663, 31.139986, 26.580177>,  <28.170223, 31.732618, 26.561668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622663, 31.139986, 26.580177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572279, 31.272442, 26.954231>,  <28.542048, 31.351915, 27.178663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572279, 31.272442, 26.954231>,  <28.622663, 31.139986, 26.580177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572279, 31.272442, 26.954231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122515, -0.940621, 0.316578,
		0.984441, -0.074691, 0.159053,
		-0.125963, 0.331139, 0.935137,
		28.534491, 31.371784, 27.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126369, 30.852795, 27.004259>,  <28.622663, 31.139986, 26.580177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126369, 30.852795, 27.004259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833212, 30.948620, 27.258968>,  <28.657318, 31.006115, 27.411795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833212, 30.948620, 27.258968>,  <29.126369, 30.852795, 27.004259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833212, 30.948620, 27.258968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055206, -0.953809, 0.295296,
		0.678102, 0.181267, 0.712264,
		-0.732892, 0.239562, 0.636773,
		28.613344, 31.020489, 27.450001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245602, 30.443111, 27.560026>,  <29.126369, 30.852795, 27.004259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245602, 30.443111, 27.560026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862261, 30.547176, 27.607147>,  <28.632257, 30.609615, 27.635420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.862261, 30.547176, 27.607147>,  <29.245602, 30.443111, 27.560026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862261, 30.547176, 27.607147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199351, -0.904764, 0.376379,
		0.204505, 0.337219, 0.918945,
		-0.958351, 0.260164, 0.117804,
		28.574755, 30.625225, 27.642488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099415, 29.982174, 28.025225>,  <29.245602, 30.443111, 27.560026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099415, 29.982174, 28.025225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726084, 30.094101, 27.935242>,  <28.502085, 30.161257, 27.881252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726084, 30.094101, 27.935242>,  <29.099415, 29.982174, 28.025225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726084, 30.094101, 27.935242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349228, -0.852950, 0.387965,
		-0.083317, 0.440658, 0.893800,
		-0.933326, 0.279816, -0.224955,
		28.446085, 30.178045, 27.867756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683655, 30.036293, 28.736967>,  <29.099415, 29.982174, 28.025225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683655, 30.036293, 28.736967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407259, 29.993561, 28.450996>,  <28.241421, 29.967922, 28.279413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407259, 29.993561, 28.450996>,  <28.683655, 30.036293, 28.736967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407259, 29.993561, 28.450996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468172, -0.687424, 0.555214,
		-0.550772, 0.718356, 0.424988,
		-0.690989, -0.106829, -0.714928,
		28.199963, 29.961512, 28.236519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993969, 30.148136, 29.015747>,  <28.683655, 30.036293, 28.736967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993969, 30.148136, 29.015747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914286, 29.926895, 28.692169>,  <27.866476, 29.794151, 28.498022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914286, 29.926895, 28.692169>,  <27.993969, 30.148136, 29.015747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914286, 29.926895, 28.692169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457007, -0.677794, 0.575969,
		-0.866869, 0.484430, -0.117751,
		-0.199206, -0.553103, -0.808946,
		27.854525, 29.760963, 28.449486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318317, 29.920019, 29.159271>,  <27.993969, 30.148136, 29.015747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318317, 29.920019, 29.159271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424755, 29.654881, 28.879322>,  <27.488619, 29.495796, 28.711351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424755, 29.654881, 28.879322>,  <27.318317, 29.920019, 29.159271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424755, 29.654881, 28.879322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384018, -0.738844, 0.553751,
		-0.884151, 0.121414, -0.451149,
		0.266095, -0.662849, -0.699875,
		27.504583, 29.456026, 28.669359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670900, 29.495552, 29.092258>,  <27.318317, 29.920019, 29.159271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670900, 29.495552, 29.092258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996754, 29.308277, 28.955334>,  <27.192265, 29.195913, 28.873178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996754, 29.308277, 28.955334>,  <26.670900, 29.495552, 29.092258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996754, 29.308277, 28.955334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274690, -0.831277, 0.483243,
		-0.510804, -0.299635, -0.805791,
		0.814631, -0.468185, -0.342313,
		27.241142, 29.167822, 28.852640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458359, 28.784855, 29.040920>,  <26.670900, 29.495552, 29.092258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458359, 28.784855, 29.040920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857466, 28.764519, 29.058224>,  <27.096930, 28.752317, 29.068605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857466, 28.764519, 29.058224>,  <26.458359, 28.784855, 29.040920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857466, 28.764519, 29.058224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064723, -0.895376, 0.440583,
		0.016333, -0.442400, -0.896669,
		0.997769, -0.050839, 0.043258,
		27.156797, 28.749268, 29.071201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544762, 28.026489, 28.978348>,  <26.458359, 28.784855, 29.040920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544762, 28.026489, 28.978348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887335, 28.180004, 29.116467>,  <27.092878, 28.272112, 29.199337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887335, 28.180004, 29.116467>,  <26.544762, 28.026489, 28.978348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887335, 28.180004, 29.116467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049061, -0.726323, 0.685601,
		0.513920, -0.570231, -0.640876,
		0.856433, 0.383786, 0.345296,
		27.144264, 28.295139, 29.220055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005333, 27.502256, 29.028194>,  <26.544762, 28.026489, 28.978348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005333, 27.502256, 29.028194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118568, 27.784264, 29.288288>,  <27.186510, 27.953468, 29.444345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118568, 27.784264, 29.288288>,  <27.005333, 27.502256, 29.028194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118568, 27.784264, 29.288288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110385, -0.697415, 0.708115,
		0.952720, -0.128684, -0.275254,
		0.283090, 0.705020, 0.650236,
		27.203495, 27.995770, 29.483358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553537, 27.188656, 29.397913>,  <27.005333, 27.502256, 29.028194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553537, 27.188656, 29.397913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435167, 27.498989, 29.620808>,  <27.364145, 27.685188, 29.754543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435167, 27.498989, 29.620808>,  <27.553537, 27.188656, 29.397913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435167, 27.498989, 29.620808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200219, -0.520025, 0.830353,
		0.933992, 0.357291, -0.001448,
		-0.295925, 0.775833, 0.557235,
		27.346390, 27.731739, 29.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016489, 27.130653, 29.900593>,  <27.553537, 27.188656, 29.397913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016489, 27.130653, 29.900593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712582, 27.345390, 30.047318>,  <27.530237, 27.474234, 30.135353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712582, 27.345390, 30.047318>,  <28.016489, 27.130653, 29.900593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712582, 27.345390, 30.047318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180979, -0.367253, 0.912344,
		0.624500, 0.759555, 0.181870,
		-0.759768, 0.536844, 0.366813,
		27.484652, 27.506443, 30.157362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354742, 27.664326, 30.328138>,  <28.016489, 27.130653, 29.900593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354742, 27.664326, 30.328138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980900, 27.552113, 30.415607>,  <27.756596, 27.484785, 30.468088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980900, 27.552113, 30.415607>,  <28.354742, 27.664326, 30.328138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980900, 27.552113, 30.415607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327523, -0.438967, 0.836682,
		-0.138728, 0.853586, 0.502142,
		-0.934603, -0.280534, 0.218672,
		27.700520, 27.467953, 30.481209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338968, 27.545906, 31.088221>,  <28.354742, 27.664326, 30.328138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338968, 27.545906, 31.088221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978813, 27.398605, 30.995533>,  <27.762720, 27.310225, 30.939920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978813, 27.398605, 30.995533>,  <28.338968, 27.545906, 31.088221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978813, 27.398605, 30.995533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104949, -0.700669, 0.705725,
		-0.422242, 0.611108, 0.669521,
		-0.900387, -0.368253, -0.231717,
		27.708696, 27.288130, 30.926018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971897, 27.409157, 31.741941>,  <28.338968, 27.545906, 31.088221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971897, 27.409157, 31.741941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803518, 27.168068, 31.470787>,  <27.702492, 27.023415, 31.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803518, 27.168068, 31.470787>,  <27.971897, 27.409157, 31.741941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803518, 27.168068, 31.470787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173025, -0.786954, 0.592255,
		-0.890430, 0.132017, 0.435552,
		-0.420947, -0.602723, -0.677886,
		27.677235, 26.987251, 31.267422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464966, 27.062695, 32.109825>,  <27.971897, 27.409157, 31.741941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464966, 27.062695, 32.109825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509268, 26.832073, 31.786018>,  <27.535849, 26.693701, 31.591734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509268, 26.832073, 31.786018>,  <27.464966, 27.062695, 32.109825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509268, 26.832073, 31.786018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034893, -0.811773, 0.582930,
		-0.993235, -0.092809, -0.069790,
		0.110755, -0.576551, -0.809519,
		27.542494, 26.659107, 31.543163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917957, 26.395983, 32.252377>,  <27.464966, 27.062695, 32.109825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917957, 26.395983, 32.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170929, 26.302975, 31.956818>,  <27.322712, 26.247169, 31.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170929, 26.302975, 31.956818>,  <26.917957, 26.395983, 32.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170929, 26.302975, 31.956818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114191, -0.915476, 0.385829,
		-0.766153, -0.328386, -0.552425,
		0.632432, -0.232522, -0.738893,
		27.360659, 26.233217, 31.735149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690422, 25.748169, 32.028439>,  <26.917957, 26.395983, 32.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690422, 25.748169, 32.028439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058746, 25.783077, 31.876392>,  <27.279741, 25.804022, 31.785164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058746, 25.783077, 31.876392>,  <26.690422, 25.748169, 32.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058746, 25.783077, 31.876392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167364, -0.968761, 0.183006,
		-0.352272, -0.232132, -0.906653,
		0.920812, 0.087273, -0.380118,
		27.334990, 25.809259, 31.762358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789606, 25.209723, 31.553560>,  <26.690422, 25.748169, 32.028439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789606, 25.209723, 31.553560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153683, 25.305393, 31.688820>,  <27.372129, 25.362797, 31.769976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153683, 25.305393, 31.688820>,  <26.789606, 25.209723, 31.553560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153683, 25.305393, 31.688820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166780, -0.958947, 0.229359,
		0.379125, -0.152364, -0.912715,
		0.910192, 0.239179, 0.338149,
		27.426741, 25.377148, 31.790264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214020, 24.657059, 31.286880>,  <26.789606, 25.209723, 31.553560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214020, 24.657059, 31.286880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419979, 24.834015, 31.580593>,  <27.543554, 24.940189, 31.756821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419979, 24.834015, 31.580593>,  <27.214020, 24.657059, 31.286880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419979, 24.834015, 31.580593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244023, -0.896755, 0.369165,
		0.821785, -0.010901, -0.569693,
		0.514899, 0.442393, 0.734280,
		27.574450, 24.966732, 31.800877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853773, 24.194530, 31.410118>,  <27.214020, 24.657059, 31.286880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853773, 24.194530, 31.410118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770298, 24.411537, 31.735603>,  <27.720213, 24.541740, 31.930895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770298, 24.411537, 31.735603>,  <27.853773, 24.194530, 31.410118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770298, 24.411537, 31.735603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295807, -0.758044, 0.581264,
		0.932173, 0.362005, -0.002286,
		-0.208688, 0.542515, 0.813712,
		27.707691, 24.574291, 31.979717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249777, 23.826651, 31.795267>,  <27.853773, 24.194530, 31.410118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249777, 23.826651, 31.795267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018190, 24.051125, 32.031864>,  <27.879238, 24.185810, 32.173824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018190, 24.051125, 32.031864>,  <28.249777, 23.826651, 31.795267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018190, 24.051125, 32.031864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124972, -0.777955, 0.615767,
		0.805716, 0.282588, 0.520543,
		-0.578967, 0.561187, 0.591495,
		27.844500, 24.219481, 32.209312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489508, 23.717489, 32.514404>,  <28.249777, 23.826651, 31.795267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489508, 23.717489, 32.514404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108349, 23.836224, 32.539314>,  <27.879654, 23.907463, 32.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108349, 23.836224, 32.539314>,  <28.489508, 23.717489, 32.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108349, 23.836224, 32.539314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218277, -0.813733, 0.538696,
		0.210580, 0.499728, 0.840195,
		-0.952896, 0.296834, 0.062277,
		27.822479, 23.925274, 32.557999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278547, 23.530979, 33.192757>,  <28.489508, 23.717489, 32.514404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278547, 23.530979, 33.192757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933413, 23.570503, 32.994465>,  <27.726332, 23.594217, 32.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933413, 23.570503, 32.994465>,  <28.278547, 23.530979, 33.192757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933413, 23.570503, 32.994465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386248, -0.761512, 0.520492,
		-0.326074, 0.640575, 0.695226,
		-0.862837, 0.098811, -0.495730,
		27.674561, 23.600147, 32.845745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776155, 23.543205, 33.689411>,  <28.278547, 23.530979, 33.192757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776155, 23.543205, 33.689411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612007, 23.420101, 33.346043>,  <27.513519, 23.346239, 33.140022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612007, 23.420101, 33.346043>,  <27.776155, 23.543205, 33.689411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612007, 23.420101, 33.346043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398441, -0.786213, 0.472349,
		-0.820269, 0.535867, 0.200013,
		-0.410369, -0.307760, -0.858418,
		27.488895, 23.327774, 33.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182941, 23.295679, 34.015156>,  <27.776155, 23.543205, 33.689411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182941, 23.295679, 34.015156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184647, 23.167286, 33.636326>,  <27.185669, 23.090250, 33.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184647, 23.167286, 33.636326>,  <27.182941, 23.295679, 34.015156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184647, 23.167286, 33.636326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588241, -0.766694, 0.257200,
		-0.808674, 0.556012, -0.192084,
		0.004263, -0.320983, -0.947075,
		27.185925, 23.070992, 33.352203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533926, 23.068048, 33.957066>,  <27.182941, 23.295679, 34.015156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533926, 23.068048, 33.957066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746637, 22.898941, 33.663540>,  <26.874264, 22.797478, 33.487427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746637, 22.898941, 33.663540>,  <26.533926, 23.068048, 33.957066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746637, 22.898941, 33.663540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324853, -0.902032, 0.284268,
		-0.782100, 0.087213, -0.617020,
		0.531780, -0.422767, -0.733811,
		26.906172, 22.772112, 33.443398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092817, 22.602295, 33.676922>,  <26.533926, 23.068048, 33.957066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092817, 22.602295, 33.676922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457844, 22.480305, 33.567955>,  <26.676859, 22.407110, 33.502575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457844, 22.480305, 33.567955>,  <26.092817, 22.602295, 33.676922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457844, 22.480305, 33.567955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235421, -0.936522, 0.259814,
		-0.334365, -0.172964, -0.926436,
		0.912566, -0.304975, -0.272421,
		26.731613, 22.388813, 33.486229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953997, 22.131006, 33.107250>,  <26.092817, 22.602295, 33.676922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953997, 22.131006, 33.107250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308203, 22.033901, 33.265709>,  <26.520725, 21.975637, 33.360783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308203, 22.033901, 33.265709>,  <25.953997, 22.131006, 33.107250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308203, 22.033901, 33.265709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330842, -0.928104, 0.170783,
		0.326204, -0.282292, -0.902165,
		0.885514, -0.242764, 0.396145,
		26.573856, 21.961073, 33.384552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217766, 21.548721, 32.764992>,  <25.953997, 22.131006, 33.107250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217766, 21.548721, 32.764992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451532, 21.528488, 33.088943>,  <26.591793, 21.516348, 33.283314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451532, 21.528488, 33.088943>,  <26.217766, 21.548721, 32.764992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451532, 21.528488, 33.088943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413162, -0.877545, 0.243333,
		0.698394, -0.476818, -0.533752,
		0.584417, -0.050584, 0.809875,
		26.626858, 21.513313, 33.331905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400084, 20.871588, 32.880100>,  <26.217766, 21.548721, 32.764992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400084, 20.871588, 32.880100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462088, 21.023067, 33.245079>,  <26.499290, 21.113956, 33.464066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462088, 21.023067, 33.245079>,  <26.400084, 20.871588, 32.880100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462088, 21.023067, 33.245079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403189, -0.818938, 0.408386,
		0.901893, -0.431192, 0.025746,
		0.155009, 0.378701, 0.912446,
		26.508591, 21.136677, 33.518814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236475, 20.101271, 32.639297>,  <26.400084, 20.871588, 32.880100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236475, 20.101271, 32.639297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222828, 19.909641, 32.288452>,  <26.214640, 19.794664, 32.077946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222828, 19.909641, 32.288452>,  <26.236475, 20.101271, 32.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222828, 19.909641, 32.288452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045448, 0.875971, -0.480218,
		0.998384, -0.056246, -0.008112,
		-0.034116, -0.479073, -0.877112,
		26.212593, 19.765919, 32.025318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790039, 20.253765, 32.311184>,  <26.236475, 20.101271, 32.639297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790039, 20.253765, 32.311184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521021, 20.148922, 32.034351>,  <26.359610, 20.086016, 31.868252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521021, 20.148922, 32.034351>,  <26.790039, 20.253765, 32.311184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521021, 20.148922, 32.034351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050925, 0.949353, -0.310058,
		0.738300, -0.173284, -0.651833,
		-0.672548, -0.262110, -0.692083,
		26.319256, 20.070290, 31.826727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999020, 20.574142, 31.668049>,  <26.790039, 20.253765, 32.311184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999020, 20.574142, 31.668049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612640, 20.482845, 31.619308>,  <26.380812, 20.428068, 31.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612640, 20.482845, 31.619308>,  <26.999020, 20.574142, 31.668049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612640, 20.482845, 31.619308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130199, 0.835783, -0.533399,
		0.223585, -0.499371, -0.837041,
		-0.965949, -0.228242, -0.121851,
		26.322855, 20.414373, 31.582752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845585, 20.628500, 31.001986>,  <26.999020, 20.574142, 31.668049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845585, 20.628500, 31.001986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500868, 20.666271, 31.201344>,  <26.294039, 20.688934, 31.320959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500868, 20.666271, 31.201344>,  <26.845585, 20.628500, 31.001986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500868, 20.666271, 31.201344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189885, 0.851034, -0.489576,
		-0.470383, -0.516550, -0.715483,
		-0.861791, 0.094429, 0.498397,
		26.242331, 20.694599, 31.350863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408346, 20.738409, 30.437948>,  <26.845585, 20.628500, 31.001986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408346, 20.738409, 30.437948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207033, 20.873779, 30.755985>,  <26.086245, 20.955002, 30.946808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207033, 20.873779, 30.755985>,  <26.408346, 20.738409, 30.437948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207033, 20.873779, 30.755985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164936, 0.865580, -0.472829,
		-0.848235, -0.369106, -0.379813,
		-0.503282, 0.338426, 0.795094,
		26.056049, 20.975307, 30.994514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791765, 20.991697, 30.257580>,  <26.408346, 20.738409, 30.437948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791765, 20.991697, 30.257580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857841, 21.182507, 30.602871>,  <25.897488, 21.296991, 30.810045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857841, 21.182507, 30.602871>,  <25.791765, 20.991697, 30.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857841, 21.182507, 30.602871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281101, 0.861721, -0.422398,
		-0.945354, -0.172877, 0.276440,
		0.165191, 0.477023, 0.863227,
		25.907398, 21.325613, 30.861839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301292, 21.562855, 30.198565>,  <25.791765, 20.991697, 30.257580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301292, 21.562855, 30.198565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559992, 21.655403, 30.489269>,  <25.715212, 21.710932, 30.663692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559992, 21.655403, 30.489269>,  <25.301292, 21.562855, 30.198565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559992, 21.655403, 30.489269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017992, 0.957240, -0.288733,
		-0.762491, 0.173662, 0.623256,
		0.646748, 0.231370, 0.726763,
		25.754017, 21.724813, 30.707298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074543, 22.258776, 30.446682>,  <25.301292, 21.562855, 30.198565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074543, 22.258776, 30.446682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434217, 22.254723, 30.621662>,  <25.650023, 22.252291, 30.726650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434217, 22.254723, 30.621662>,  <25.074543, 22.258776, 30.446682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434217, 22.254723, 30.621662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166948, 0.932050, -0.321575,
		-0.404468, 0.362187, 0.839777,
		0.899185, -0.010132, 0.437451,
		25.703974, 22.251682, 30.752897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180603, 22.819208, 30.833540>,  <25.074543, 22.258776, 30.446682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.180603, 22.819208, 30.833540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552727, 22.705540, 30.740788>,  <25.776001, 22.637339, 30.685137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552727, 22.705540, 30.740788>,  <25.180603, 22.819208, 30.833540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552727, 22.705540, 30.740788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198367, 0.921612, -0.333590,
		0.308499, 0.264345, 0.913756,
		0.930311, -0.284172, -0.231879,
		25.831820, 22.620289, 30.671225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630775, 23.488916, 30.905788>,  <25.180603, 22.819208, 30.833540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630775, 23.488916, 30.905788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848156, 23.222786, 30.701046>,  <25.978584, 23.063107, 30.578199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848156, 23.222786, 30.701046>,  <25.630775, 23.488916, 30.905788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848156, 23.222786, 30.701046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337229, 0.731432, -0.592692,
		0.768725, 0.149486, 0.621866,
		0.543451, -0.665328, -0.511858,
		26.011190, 23.023188, 30.547489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289248, 23.758314, 30.830305>,  <25.630775, 23.488916, 30.905788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289248, 23.758314, 30.830305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265034, 23.494591, 30.530533>,  <26.250505, 23.336357, 30.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265034, 23.494591, 30.530533>,  <26.289248, 23.758314, 30.830305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265034, 23.494591, 30.530533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397981, 0.672605, -0.623869,
		0.915394, -0.336026, 0.221675,
		-0.060537, -0.659309, -0.749431,
		26.246872, 23.296799, 30.305704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989630, 23.706598, 30.466265>,  <26.289248, 23.758314, 30.830305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989630, 23.706598, 30.466265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718512, 23.567089, 30.207359>,  <26.555841, 23.483383, 30.052017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718512, 23.567089, 30.207359>,  <26.989630, 23.706598, 30.466265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718512, 23.567089, 30.207359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374314, 0.594022, -0.712058,
		0.632836, -0.724910, -0.272074,
		-0.677796, -0.348775, -0.647262,
		26.515173, 23.462456, 30.013180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352119, 23.469807, 29.785534>,  <26.989630, 23.706598, 30.466265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352119, 23.469807, 29.785534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969534, 23.558098, 29.709156>,  <26.739983, 23.611073, 29.663330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969534, 23.558098, 29.709156>,  <27.352119, 23.469807, 29.785534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969534, 23.558098, 29.709156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290203, 0.649667, -0.702649,
		-0.031046, -0.727469, -0.685438,
		-0.956462, 0.220730, -0.190944,
		26.682596, 23.624317, 29.651873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401476, 23.752180, 29.110889>,  <27.352119, 23.469807, 29.785534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401476, 23.752180, 29.110889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018251, 23.838280, 29.186558>,  <26.788317, 23.889940, 29.231958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018251, 23.838280, 29.186558>,  <27.401476, 23.752180, 29.110889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018251, 23.838280, 29.186558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039054, 0.752055, -0.657942,
		-0.283890, -0.622961, -0.728921,
		-0.958062, 0.215251, 0.189171,
		26.730833, 23.902855, 29.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071693, 23.734550, 28.468449>,  <27.401476, 23.752180, 29.110889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071693, 23.734550, 28.468449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854355, 23.972775, 28.705120>,  <26.723951, 24.115709, 28.847122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854355, 23.972775, 28.705120>,  <27.071693, 23.734550, 28.468449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854355, 23.972775, 28.705120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171550, 0.768687, -0.616191,
		-0.821793, -0.233303, -0.519833,
		-0.543348, 0.595559, 0.591678,
		26.691351, 24.151442, 28.882624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574930, 24.135735, 28.021587>,  <27.071693, 23.734550, 28.468449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574930, 24.135735, 28.021587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609652, 24.346214, 28.359955>,  <26.630486, 24.472502, 28.562975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609652, 24.346214, 28.359955>,  <26.574930, 24.135735, 28.021587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609652, 24.346214, 28.359955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220443, 0.817928, -0.531411,
		-0.971529, 0.232607, -0.044997,
		0.086806, 0.526201, 0.845918,
		26.635693, 24.504074, 28.613729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209637, 24.757235, 27.865324>,  <26.574930, 24.135735, 28.021587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209637, 24.757235, 27.865324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432337, 24.836666, 28.187962>,  <26.565958, 24.884325, 28.381544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432337, 24.836666, 28.187962>,  <26.209637, 24.757235, 27.865324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432337, 24.836666, 28.187962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202462, 0.909283, -0.363613,
		-0.805628, 0.365747, 0.466040,
		0.556752, 0.198581, 0.806593,
		26.599363, 24.896240, 28.429939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954357, 25.428865, 28.077913>,  <26.209637, 24.757235, 27.865324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954357, 25.428865, 28.077913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320168, 25.353855, 28.221287>,  <26.539654, 25.308849, 28.307312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320168, 25.353855, 28.221287>,  <25.954357, 25.428865, 28.077913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320168, 25.353855, 28.221287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300379, 0.908280, -0.291205,
		-0.270951, 0.373981, 0.886974,
		0.914526, -0.187526, 0.358436,
		26.594526, 25.297598, 28.328817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150379, 26.108255, 28.334055>,  <25.954357, 25.428865, 28.077913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150379, 26.108255, 28.334055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492212, 25.902920, 28.302616>,  <26.697311, 25.779718, 28.283752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492212, 25.902920, 28.302616>,  <26.150379, 26.108255, 28.334055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492212, 25.902920, 28.302616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460402, 0.818917, -0.342644,
		0.240254, 0.256632, 0.936172,
		0.854581, -0.513337, -0.078595,
		26.748587, 25.748919, 28.279037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537497, 26.492687, 28.676559>,  <26.150379, 26.108255, 28.334055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537497, 26.492687, 28.676559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729914, 26.262703, 28.411827>,  <26.845364, 26.124712, 28.252989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729914, 26.262703, 28.411827>,  <26.537497, 26.492687, 28.676559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729914, 26.262703, 28.411827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411628, 0.814653, -0.408537,
		0.774053, -0.075903, 0.628554,
		0.481045, -0.574960, -0.661829,
		26.874228, 26.090216, 28.213278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202751, 26.891123, 28.458063>,  <26.537497, 26.492687, 28.676559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202751, 26.891123, 28.458063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187578, 26.609184, 28.174725>,  <27.178474, 26.440022, 28.004721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187578, 26.609184, 28.174725>,  <27.202751, 26.891123, 28.458063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187578, 26.609184, 28.174725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350087, 0.654558, -0.670070,
		0.935949, -0.273399, 0.221929,
		-0.037931, -0.704845, -0.708346,
		27.176199, 26.397730, 27.962221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742413, 27.020336, 28.061590>,  <27.202751, 26.891123, 28.458063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742413, 27.020336, 28.061590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490906, 26.821854, 27.822113>,  <27.340002, 26.702765, 27.678427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490906, 26.821854, 27.822113>,  <27.742413, 27.020336, 28.061590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490906, 26.821854, 27.822113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154819, 0.674627, -0.721740,
		0.762027, -0.546494, -0.347361,
		-0.628766, -0.496207, -0.598691,
		27.302277, 26.672991, 27.642506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121546, 26.956779, 27.494812>,  <27.742413, 27.020336, 28.061590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121546, 26.956779, 27.494812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739773, 26.908482, 27.385647>,  <27.510710, 26.879503, 27.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739773, 26.908482, 27.385647>,  <28.121546, 26.956779, 27.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739773, 26.908482, 27.385647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109609, 0.708751, -0.696891,
		0.277572, -0.695049, -0.663220,
		-0.954432, -0.120742, -0.272913,
		27.453444, 26.872259, 27.303772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128670, 27.026766, 26.740301>,  <28.121546, 26.956779, 27.494812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128670, 27.026766, 26.740301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747849, 27.084843, 26.848015>,  <27.519356, 27.119690, 26.912643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747849, 27.084843, 26.848015>,  <28.128670, 27.026766, 26.740301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747849, 27.084843, 26.848015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090738, 0.706585, -0.701786,
		-0.292166, -0.692572, -0.659532,
		-0.952053, 0.145194, 0.269283,
		27.462233, 27.128401, 26.928801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681862, 27.001444, 26.083834>,  <28.128670, 27.026766, 26.740301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681862, 27.001444, 26.083834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465570, 27.188747, 26.363361>,  <27.335796, 27.301130, 26.531078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465570, 27.188747, 26.363361>,  <27.681862, 27.001444, 26.083834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465570, 27.188747, 26.363361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221954, 0.721882, -0.655456,
		-0.811389, -0.509528, -0.286408,
		-0.540726, 0.468260, 0.698819,
		27.303352, 27.329226, 26.573008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086489, 27.110695, 25.774460>,  <27.681862, 27.001444, 26.083834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086489, 27.110695, 25.774460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071657, 27.362770, 26.084682>,  <27.062757, 27.514015, 26.270815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071657, 27.362770, 26.084682>,  <27.086489, 27.110695, 25.774460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071657, 27.362770, 26.084682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243105, 0.747086, -0.618679,
		-0.969291, -0.211483, 0.125500,
		-0.037081, 0.630189, 0.775556,
		27.060534, 27.551826, 26.317348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531879, 27.453941, 25.571539>,  <27.086489, 27.110695, 25.774460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531879, 27.453941, 25.571539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715088, 27.678780, 25.847008>,  <26.825012, 27.813683, 26.012289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715088, 27.678780, 25.847008>,  <26.531879, 27.453941, 25.571539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715088, 27.678780, 25.847008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241746, 0.824272, -0.511991,
		-0.855440, 0.068018, 0.513416,
		0.458019, 0.562094, 0.688672,
		26.852493, 27.847408, 26.053610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145180, 28.084146, 25.691916>,  <26.531879, 27.453941, 25.571539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145180, 28.084146, 25.691916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520660, 28.150822, 25.812618>,  <26.745949, 28.190826, 25.885040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520660, 28.150822, 25.812618>,  <26.145180, 28.084146, 25.691916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520660, 28.150822, 25.812618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020190, 0.900412, -0.434569,
		-0.344143, 0.401838, 0.848583,
		0.938700, 0.166687, 0.301757,
		26.802271, 28.200829, 25.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130705, 28.722683, 26.105885>,  <26.145180, 28.084146, 25.691916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130705, 28.722683, 26.105885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491156, 28.661667, 25.943550>,  <26.707426, 28.625057, 25.846149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491156, 28.661667, 25.943550>,  <26.130705, 28.722683, 26.105885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491156, 28.661667, 25.943550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005139, 0.932239, -0.361808,
		0.433524, 0.328121, 0.839282,
		0.901127, -0.152540, -0.405834,
		26.761494, 28.615906, 25.821800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264633, 29.355742, 25.886419>,  <26.130705, 28.722683, 26.105885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264633, 29.355742, 25.886419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584953, 29.173477, 25.730938>,  <26.777145, 29.064119, 25.637650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584953, 29.173477, 25.730938>,  <26.264633, 29.355742, 25.886419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584953, 29.173477, 25.730938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221296, 0.828178, -0.514927,
		0.556547, 0.326336, 0.764042,
		0.800801, -0.455661, -0.388703,
		26.825193, 29.036779, 25.614326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911554, 29.728159, 26.122206>,  <26.264633, 29.355742, 25.886419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911554, 29.728159, 26.122206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016060, 29.520939, 25.796417>,  <27.078762, 29.396606, 25.600945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016060, 29.520939, 25.796417>,  <26.911554, 29.728159, 26.122206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016060, 29.520939, 25.796417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373350, 0.832341, -0.409656,
		0.890141, -0.197055, 0.410874,
		0.261263, -0.518051, -0.814472,
		27.094439, 29.365524, 25.552076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530777, 29.969568, 25.988966>,  <26.911554, 29.728159, 26.122206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530777, 29.969568, 25.988966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378410, 29.828812, 25.646954>,  <27.286991, 29.744358, 25.441746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378410, 29.828812, 25.646954>,  <27.530777, 29.969568, 25.988966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378410, 29.828812, 25.646954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294627, 0.830348, -0.472988,
		0.876412, -0.432084, -0.212616,
		-0.380916, -0.351890, -0.855030,
		27.264135, 29.723246, 25.390444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061144, 30.163534, 25.601288>,  <27.530777, 29.969568, 25.988966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061144, 30.163534, 25.601288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746077, 30.099815, 25.363228>,  <27.557037, 30.061584, 25.220392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746077, 30.099815, 25.363228>,  <28.061144, 30.163534, 25.601288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746077, 30.099815, 25.363228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217189, 0.832190, -0.510186,
		0.576549, -0.531116, -0.620892,
		-0.787668, -0.159296, -0.595151,
		27.509777, 30.052027, 25.184683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308407, 30.242731, 24.914804>,  <28.061144, 30.163534, 25.601288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308407, 30.242731, 24.914804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913191, 30.304310, 24.918411>,  <27.676062, 30.341257, 24.920576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913191, 30.304310, 24.918411>,  <28.308407, 30.242731, 24.914804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913191, 30.304310, 24.918411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126980, 0.845365, -0.518877,
		-0.087504, -0.511525, -0.854801,
		-0.988038, 0.153947, 0.009019,
		27.616779, 30.350494, 24.921118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117628, 30.334511, 24.184792>,  <28.308407, 30.242731, 24.914804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117628, 30.334511, 24.184792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818937, 30.495693, 24.396461>,  <27.639723, 30.592403, 24.523464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818937, 30.495693, 24.396461>,  <28.117628, 30.334511, 24.184792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818937, 30.495693, 24.396461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032235, 0.816583, -0.576327,
		-0.664350, -0.413300, -0.622754,
		-0.746726, 0.402957, 0.529174,
		27.594919, 30.616581, 24.555214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712540, 30.517111, 23.725487>,  <28.117628, 30.334511, 24.184792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712540, 30.517111, 23.725487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604160, 30.746651, 24.034622>,  <27.539133, 30.884375, 24.220104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604160, 30.746651, 24.034622>,  <27.712540, 30.517111, 23.725487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604160, 30.746651, 24.034622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001801, 0.802569, -0.596557,
		-0.962593, -0.163027, -0.216420,
		-0.270947, 0.573851, 0.772841,
		27.522877, 30.918806, 24.266474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315744, 30.911543, 23.449408>,  <27.712540, 30.517111, 23.725487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315744, 30.911543, 23.449408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362869, 31.120045, 23.787498>,  <27.391144, 31.245146, 23.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362869, 31.120045, 23.787498>,  <27.315744, 30.911543, 23.449408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362869, 31.120045, 23.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033435, 0.852756, -0.521238,
		-0.992473, 0.033148, 0.117894,
		0.117812, 0.521256, 0.845229,
		27.398212, 31.276421, 24.041067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733784, 31.393724, 23.397268>,  <27.315744, 30.911543, 23.449408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733784, 31.393724, 23.397268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013620, 31.544033, 23.640369>,  <27.181522, 31.634218, 23.786230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013620, 31.544033, 23.640369>,  <26.733784, 31.393724, 23.397268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013620, 31.544033, 23.640369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223610, 0.922964, -0.313267,
		-0.678654, 0.083259, 0.729724,
		0.699591, 0.375773, 0.607755,
		27.223497, 31.656765, 23.822697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372919, 31.814718, 23.797405>,  <26.733784, 31.393724, 23.397268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372919, 31.814718, 23.797405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746489, 31.956577, 23.815361>,  <26.970631, 32.041695, 23.826134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746489, 31.956577, 23.815361>,  <26.372919, 31.814718, 23.797405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746489, 31.956577, 23.815361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333881, 0.910236, -0.244936,
		-0.127726, 0.213763, 0.968500,
		0.933922, 0.354648, 0.044889,
		27.026665, 32.062973, 23.828827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205275, 32.582367, 23.890476>,  <26.372919, 31.814718, 23.797405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205275, 32.582367, 23.890476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591486, 32.541370, 23.794769>,  <26.823214, 32.516773, 23.737345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591486, 32.541370, 23.794769>,  <26.205275, 32.582367, 23.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591486, 32.541370, 23.794769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013961, 0.897503, -0.440786,
		0.259919, 0.428933, 0.865135,
		0.965529, -0.102491, -0.239267,
		26.881145, 32.510624, 23.722990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739494, 33.160374, 24.165415>,  <26.205275, 32.582367, 23.890476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739494, 33.160374, 24.165415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847427, 33.023880, 23.805248>,  <26.912188, 32.941982, 23.589148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847427, 33.023880, 23.805248>,  <26.739494, 33.160374, 24.165415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847427, 33.023880, 23.805248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010703, 0.936107, -0.351553,
		0.962848, 0.085223, 0.256243,
		0.269831, -0.341235, -0.900416,
		26.928377, 32.921509, 23.535124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083754, 33.698219, 23.785803>,  <26.739494, 33.160374, 24.165415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083754, 33.698219, 23.785803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772585, 33.700752, 24.037136>,  <26.585884, 33.702274, 24.187935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772585, 33.700752, 24.037136>,  <27.083754, 33.698219, 23.785803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772585, 33.700752, 24.037136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235766, 0.923951, -0.301212,
		-0.582455, -0.382458, -0.717267,
		-0.777920, 0.006335, 0.628331,
		26.539209, 33.702652, 24.225636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339945, 33.772877, 23.483009>,  <27.083754, 33.698219, 23.785803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339945, 33.772877, 23.483009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314945, 33.962406, 23.834370>,  <26.299946, 34.076122, 24.045185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314945, 33.962406, 23.834370>,  <26.339945, 33.772877, 23.483009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314945, 33.962406, 23.834370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387606, 0.799512, -0.458849,
		-0.919704, -0.369151, 0.133688,
		-0.062499, 0.473824, 0.878399,
		26.296196, 34.104553, 24.097889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756584, 34.079945, 23.422470>,  <26.339945, 33.772877, 23.483009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756584, 34.079945, 23.422470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982340, 34.275307, 23.688679>,  <26.117794, 34.392525, 23.848404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982340, 34.275307, 23.688679>,  <25.756584, 34.079945, 23.422470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982340, 34.275307, 23.688679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298893, 0.872402, -0.386753,
		-0.769497, 0.019359, 0.638358,
		0.564392, 0.488406, 0.665524,
		26.151657, 34.421829, 23.888336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379711, 34.471981, 23.801334>,  <25.756584, 34.079945, 23.422470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379711, 34.471981, 23.801334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737705, 34.634045, 23.726662>,  <25.952501, 34.731281, 23.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737705, 34.634045, 23.726662>,  <25.379711, 34.471981, 23.801334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737705, 34.634045, 23.726662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446052, 0.818650, -0.361732,
		0.006266, 0.407014, 0.913401,
		0.894985, 0.405158, -0.186679,
		26.006201, 34.755592, 23.670658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419163, 35.164391, 24.000004>,  <25.379711, 34.471981, 23.801334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419163, 35.164391, 24.000004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737747, 35.141922, 23.759174>,  <25.928898, 35.128441, 23.614677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737747, 35.141922, 23.759174>,  <25.419163, 35.164391, 24.000004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737747, 35.141922, 23.759174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366572, 0.747011, -0.554617,
		0.480907, 0.662435, 0.574376,
		0.796463, -0.056169, -0.602073,
		25.976686, 35.125072, 23.578552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886127, 35.223854, 23.468954>,  <25.419163, 35.164391, 24.000004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886127, 35.223854, 23.468954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660883, 35.234867, 23.138584>,  <24.525736, 35.241474, 22.940363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.660883, 35.234867, 23.138584>,  <24.886127, 35.223854, 23.468954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.660883, 35.234867, 23.138584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661410, 0.584160, 0.470419,
		0.495423, 0.811171, -0.310736,
		-0.563110, 0.027532, -0.825923,
		24.491949, 35.243126, 22.890808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132376, 35.252037, 23.269148>,  <24.886127, 35.223854, 23.468954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132376, 35.252037, 23.269148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761053, 35.277546, 23.122623>,  <23.538260, 35.292850, 23.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.761053, 35.277546, 23.122623>,  <24.132376, 35.252037, 23.269148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.761053, 35.277546, 23.122623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368842, 0.033528, -0.928887,
		-0.046956, -0.997401, -0.054646,
		-0.928305, 0.063773, -0.366309,
		23.482561, 35.296677, 23.012730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.077898, 34.740990, 22.827475>,  <24.132376, 35.252037, 23.269148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.077898, 34.740990, 22.827475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.817276, 35.010487, 22.688023>,  <23.660902, 35.172184, 22.604351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.817276, 35.010487, 22.688023>,  <24.077898, 34.740990, 22.827475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.817276, 35.010487, 22.688023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407559, -0.076716, -0.909951,
		-0.639822, -0.734969, -0.224607,
		-0.651555, 0.673747, -0.348628,
		23.621809, 35.212612, 22.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.737082, 34.485397, 22.149944>,  <24.077898, 34.740990, 22.827475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.737082, 34.485397, 22.149944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.671133, 34.879890, 22.155006>,  <23.631565, 35.116585, 22.158045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.671133, 34.879890, 22.155006>,  <23.737082, 34.485397, 22.149944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.671133, 34.879890, 22.155006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198956, 0.045823, -0.978937,
		-0.966041, -0.158879, -0.203772,
		-0.164870, 0.986234, 0.012657,
		23.621672, 35.175762, 22.158804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362749, 34.592110, 21.448027>,  <23.737082, 34.485397, 22.149944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362749, 34.592110, 21.448027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467590, 34.955475, 21.578316>,  <23.530495, 35.173492, 21.656490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467590, 34.955475, 21.578316>,  <23.362749, 34.592110, 21.448027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467590, 34.955475, 21.578316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353591, 0.223653, -0.908269,
		-0.897928, 0.353233, -0.262585,
		0.262102, 0.908409, 0.325724,
		23.546221, 35.227997, 21.676033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.077631, 34.986214, 20.985476>,  <23.362749, 34.592110, 21.448027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.077631, 34.986214, 20.985476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.372721, 35.197678, 21.153419>,  <23.549774, 35.324558, 21.254185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.372721, 35.197678, 21.153419>,  <23.077631, 34.986214, 20.985476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.372721, 35.197678, 21.153419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352625, 0.228587, -0.907416,
		-0.575691, 0.817474, -0.017786,
		0.737723, 0.528662, 0.419858,
		23.594038, 35.356277, 21.279377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102976, 35.634327, 20.610994>,  <23.077631, 34.986214, 20.985476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102976, 35.634327, 20.610994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.464039, 35.630226, 20.783089>,  <23.680677, 35.627766, 20.886345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.464039, 35.630226, 20.783089>,  <23.102976, 35.634327, 20.610994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.464039, 35.630226, 20.783089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406265, 0.350120, -0.844017,
		-0.141979, 0.936649, 0.320205,
		0.902658, -0.010255, 0.430237,
		23.734837, 35.627148, 20.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352640, 36.324024, 20.573515>,  <23.102976, 35.634327, 20.610994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352640, 36.324024, 20.573515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.659986, 36.070694, 20.610432>,  <23.844395, 35.918697, 20.632582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.659986, 36.070694, 20.610432>,  <23.352640, 36.324024, 20.573515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.659986, 36.070694, 20.610432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304957, 0.235505, -0.922789,
		0.562688, 0.737183, 0.374090,
		0.768364, -0.633323, 0.092293,
		23.890495, 35.880695, 20.638119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742523, 36.675713, 20.097582>,  <23.352640, 36.324024, 20.573515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742523, 36.675713, 20.097582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.927908, 36.330975, 20.179977>,  <24.039139, 36.124130, 20.229414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.927908, 36.330975, 20.179977>,  <23.742523, 36.675713, 20.097582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.927908, 36.330975, 20.179977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563546, 0.107281, -0.819089,
		0.683828, 0.495698, 0.535409,
		0.463460, -0.861843, 0.205987,
		24.066946, 36.072422, 20.241774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439316, 36.761192, 20.183723>,  <23.742523, 36.675713, 20.097582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439316, 36.761192, 20.183723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404509, 36.380943, 20.064568>,  <24.383625, 36.152794, 19.993074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404509, 36.380943, 20.064568>,  <24.439316, 36.761192, 20.183723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404509, 36.380943, 20.064568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515727, 0.212850, -0.829892,
		0.852322, -0.225845, 0.471742,
		-0.087017, -0.950626, -0.297891,
		24.378403, 36.095757, 19.975201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108700, 36.646214, 20.073101>,  <24.439316, 36.761192, 20.183723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108700, 36.646214, 20.073101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910883, 36.351479, 19.888710>,  <24.792192, 36.174637, 19.778076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910883, 36.351479, 19.888710>,  <25.108700, 36.646214, 20.073101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910883, 36.351479, 19.888710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583997, 0.111107, -0.804116,
		0.643719, -0.666880, 0.375362,
		-0.494543, -0.736836, -0.460977,
		24.762520, 36.130428, 19.750418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658590, 36.261097, 19.751450>,  <25.108700, 36.646214, 20.073101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658590, 36.261097, 19.751450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300667, 36.198521, 19.584190>,  <25.085913, 36.160976, 19.483835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300667, 36.198521, 19.584190>,  <25.658590, 36.261097, 19.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300667, 36.198521, 19.584190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373350, 0.251369, -0.892986,
		0.244802, -0.955166, -0.166522,
		-0.894808, -0.156433, -0.418146,
		25.032225, 36.151588, 19.458746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844185, 35.880260, 19.153641>,  <25.658590, 36.261097, 19.751450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844185, 35.880260, 19.153641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469248, 36.000961, 19.083973>,  <25.244286, 36.073383, 19.042171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469248, 36.000961, 19.083973>,  <25.844185, 35.880260, 19.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469248, 36.000961, 19.083973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236242, 0.183027, -0.954301,
		-0.256084, -0.935653, -0.242845,
		-0.937342, 0.301752, -0.174171,
		25.188046, 36.091488, 19.031721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735367, 35.693272, 18.494463>,  <25.844185, 35.880260, 19.153641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735367, 35.693272, 18.494463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464163, 35.979733, 18.560715>,  <25.301441, 36.151608, 18.600466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464163, 35.979733, 18.560715>,  <25.735367, 35.693272, 18.494463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464163, 35.979733, 18.560715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181271, 0.381270, -0.906517,
		-0.712353, -0.584602, -0.388322,
		-0.678008, 0.716151, 0.165627,
		25.260761, 36.194576, 18.610403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393635, 35.767033, 17.909788>,  <25.735367, 35.693272, 18.494463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393635, 35.767033, 17.909788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301832, 36.112961, 18.088409>,  <25.246750, 36.320518, 18.195581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301832, 36.112961, 18.088409>,  <25.393635, 35.767033, 17.909788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301832, 36.112961, 18.088409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106978, 0.478434, -0.871583,
		-0.967410, -0.152262, -0.202321,
		-0.229506, 0.864822, 0.446553,
		25.232981, 36.372406, 18.222376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064926, 36.190140, 17.423830>,  <25.393635, 35.767033, 17.909788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064926, 36.190140, 17.423830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208038, 36.444710, 17.697166>,  <25.293905, 36.597454, 17.861168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208038, 36.444710, 17.697166>,  <25.064926, 36.190140, 17.423830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208038, 36.444710, 17.697166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177514, 0.672081, -0.718885,
		-0.916777, 0.378506, 0.127484,
		0.357782, 0.636428, 0.683339,
		25.315372, 36.635639, 17.902168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726612, 36.838226, 17.254219>,  <25.064926, 36.190140, 17.423830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726612, 36.838226, 17.254219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036840, 36.957481, 17.476788>,  <25.222979, 37.029034, 17.610329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036840, 36.957481, 17.476788>,  <24.726612, 36.838226, 17.254219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036840, 36.957481, 17.476788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140168, 0.778106, -0.612294,
		-0.615500, 0.552870, 0.561688,
		0.775572, 0.298137, 0.556419,
		25.269512, 37.046921, 17.643713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522551, 37.467941, 17.428299>,  <24.726612, 36.838226, 17.254219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522551, 37.467941, 17.428299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920351, 37.451130, 17.466675>,  <25.159031, 37.441044, 17.489700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920351, 37.451130, 17.466675>,  <24.522551, 37.467941, 17.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920351, 37.451130, 17.466675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090967, 0.800619, -0.592228,
		-0.051923, 0.597698, 0.800038,
		0.994499, -0.042026, 0.095941,
		25.218700, 37.438522, 17.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745184, 38.166565, 17.547125>,  <24.522551, 37.467941, 17.428299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745184, 38.166565, 17.547125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061901, 37.968483, 17.404106>,  <25.251932, 37.849636, 17.318295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061901, 37.968483, 17.404106>,  <24.745184, 38.166565, 17.547125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061901, 37.968483, 17.404106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242910, 0.792403, -0.559546,
		0.560410, 0.356193, 0.747708,
		0.791793, -0.495201, -0.357548,
		25.299438, 37.819923, 17.296843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251816, 38.604721, 17.525734>,  <24.745184, 38.166565, 17.547125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251816, 38.604721, 17.525734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383686, 38.319401, 17.278343>,  <25.462809, 38.148209, 17.129910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383686, 38.319401, 17.278343>,  <25.251816, 38.604721, 17.525734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383686, 38.319401, 17.278343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395894, 0.699169, -0.595341,
		0.857077, -0.048580, 0.512892,
		0.329677, -0.713304, -0.618475,
		25.482590, 38.105412, 17.092800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967901, 38.749691, 17.494358>,  <25.251816, 38.604721, 17.525734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967901, 38.749691, 17.494358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884611, 38.536549, 17.166283>,  <25.834637, 38.408665, 16.969437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884611, 38.536549, 17.166283>,  <25.967901, 38.749691, 17.494358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884611, 38.536549, 17.166283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450279, 0.692197, -0.564014,
		0.868269, -0.486756, 0.095798,
		-0.208226, -0.532852, -0.820189,
		25.822144, 38.376694, 16.920225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487806, 38.888527, 17.019966>,  <25.967901, 38.749691, 17.494358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487806, 38.888527, 17.019966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199392, 38.736801, 16.788025>,  <26.026344, 38.645767, 16.648861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199392, 38.736801, 16.788025>,  <26.487806, 38.888527, 17.019966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199392, 38.736801, 16.788025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245580, 0.642632, -0.725751,
		0.647947, -0.665678, -0.370186,
		-0.721010, -0.379338, -0.579868,
		25.983082, 38.623009, 16.614069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672602, 38.501793, 16.377628>,  <26.487806, 38.888527, 17.019966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672602, 38.501793, 16.377628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326200, 38.698399, 16.340843>,  <26.118361, 38.816360, 16.318773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326200, 38.698399, 16.340843>,  <26.672602, 38.501793, 16.377628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326200, 38.698399, 16.340843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365776, 0.497272, -0.786720,
		-0.340954, -0.714938, -0.610422,
		-0.866002, 0.491513, -0.091961,
		26.066401, 38.845852, 16.313255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455734, 38.520741, 15.667255>,  <26.672602, 38.501793, 16.377628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455734, 38.520741, 15.667255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341789, 38.868408, 15.828944>,  <26.273422, 39.077007, 15.925958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341789, 38.868408, 15.828944>,  <26.455734, 38.520741, 15.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341789, 38.868408, 15.828944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589981, 0.491335, -0.640713,
		-0.755497, 0.055969, -0.652757,
		-0.284862, 0.869171, 0.404223,
		26.256330, 39.129158, 15.950212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534143, 39.057674, 15.163069>,  <26.455734, 38.520741, 15.667255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534143, 39.057674, 15.163069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687269, 39.223183, 15.493463>,  <26.779144, 39.322487, 15.691699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687269, 39.223183, 15.493463>,  <26.534143, 39.057674, 15.163069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687269, 39.223183, 15.493463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837258, 0.222496, -0.499495,
		-0.390454, 0.882774, -0.261258,
		0.382812, 0.413770, 0.825984,
		26.802113, 39.347313, 15.741258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005411, 39.442986, 14.981260>,  <26.534143, 39.057674, 15.163069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005411, 39.442986, 14.981260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277235, 39.601097, 14.734052>,  <26.440329, 39.695965, 14.585727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277235, 39.601097, 14.734052>,  <26.005411, 39.442986, 14.981260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277235, 39.601097, 14.734052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717009, 0.179610, -0.673527,
		-0.155231, 0.900829, 0.405476,
		0.679560, 0.395282, -0.618021,
		26.481104, 39.719681, 14.548645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990294, 39.103836, 14.428188>,  <26.005411, 39.442986, 14.981260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990294, 39.103836, 14.428188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720316, 38.847870, 14.575137>,  <25.558329, 38.694290, 14.663306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720316, 38.847870, 14.575137>,  <25.990294, 39.103836, 14.428188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720316, 38.847870, 14.575137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348713, 0.715405, 0.605471,
		-0.650267, 0.280553, -0.706004,
		-0.674946, -0.639911, 0.367372,
		25.517832, 38.655895, 14.685349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363476, 39.468845, 14.448396>,  <25.990294, 39.103836, 14.428188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363476, 39.468845, 14.448396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340521, 39.175266, 14.719108>,  <25.326748, 38.999119, 14.881535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340521, 39.175266, 14.719108>,  <25.363476, 39.468845, 14.448396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340521, 39.175266, 14.719108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445755, 0.625411, 0.640440,
		-0.893314, -0.264926, -0.363049,
		-0.057385, -0.733945, 0.676781,
		25.323305, 38.955082, 14.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827377, 39.611252, 14.855246>,  <25.363476, 39.468845, 14.448396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827377, 39.611252, 14.855246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012548, 39.337624, 15.080720>,  <25.123652, 39.173447, 15.216004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.012548, 39.337624, 15.080720>,  <24.827377, 39.611252, 14.855246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.012548, 39.337624, 15.080720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447194, 0.368825, 0.814853,
		-0.765319, -0.629297, -0.135172,
		0.462930, -0.684071, 0.563687,
		25.151428, 39.132401, 15.249826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.329256, 39.248829, 15.204561>,  <24.827377, 39.611252, 14.855246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.329256, 39.248829, 15.204561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676262, 39.274727, 15.401832>,  <24.884466, 39.290268, 15.520194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676262, 39.274727, 15.401832>,  <24.329256, 39.248829, 15.204561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676262, 39.274727, 15.401832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479978, 0.369142, 0.795836,
		-0.130524, -0.927115, 0.351314,
		0.867517, 0.064747, 0.493176,
		24.936518, 39.294151, 15.549785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.205856, 39.921177, 15.395063>,  <24.329256, 39.248829, 15.204561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.205856, 39.921177, 15.395063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460354, 39.860950, 15.697724>,  <24.613052, 39.824814, 15.879321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460354, 39.860950, 15.697724>,  <24.205856, 39.921177, 15.395063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460354, 39.860950, 15.697724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025983, 0.984396, 0.174039,
		-0.771049, -0.091071, 0.630229,
		0.636245, -0.150568, 0.756652,
		24.651228, 39.815781, 15.924720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.454468, 40.201130, 15.105634>,  <24.205856, 39.921177, 15.395063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.454468, 40.201130, 15.105634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.524101, 39.821476, 15.000682>,  <23.565882, 39.593685, 14.937711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.524101, 39.821476, 15.000682>,  <23.454468, 40.201130, 15.105634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.524101, 39.821476, 15.000682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550185, -0.314726, 0.773462,
		-0.816695, 0.009711, -0.576987,
		0.174082, -0.949133, -0.262379,
		23.576326, 39.536736, 14.921968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769213, 39.776276, 15.213257>,  <23.454468, 40.201130, 15.105634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769213, 39.776276, 15.213257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.091717, 39.543346, 15.254914>,  <23.285219, 39.403591, 15.279909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.091717, 39.543346, 15.254914>,  <22.769213, 39.776276, 15.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.091717, 39.543346, 15.254914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503430, -0.582978, 0.637726,
		-0.310646, -0.566604, -0.763190,
		0.806261, -0.582320, 0.104145,
		23.333595, 39.368649, 15.286158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.595394, 39.025013, 15.191201>,  <22.769213, 39.776276, 15.213257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.595394, 39.025013, 15.191201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.926140, 39.055702, 15.414060>,  <23.124586, 39.074116, 15.547775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.926140, 39.055702, 15.414060>,  <22.595394, 39.025013, 15.191201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926140, 39.055702, 15.414060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420416, -0.573688, 0.702946,
		0.373563, -0.815472, -0.442103,
		0.826862, 0.076728, 0.557146,
		23.174198, 39.078720, 15.581203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.726538, 38.341431, 15.358477>,  <22.595394, 39.025013, 15.191201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.726538, 38.341431, 15.358477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932434, 38.575584, 15.609033>,  <23.055971, 38.716076, 15.759366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932434, 38.575584, 15.609033>,  <22.726538, 38.341431, 15.358477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.932434, 38.575584, 15.609033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215905, -0.618562, 0.755491,
		0.829715, -0.524123, -0.192011,
		0.514741, 0.585386, 0.626391,
		23.086857, 38.751202, 15.796949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.053699, 37.892254, 15.728432>,  <22.726538, 38.341431, 15.358477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.053699, 37.892254, 15.728432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042370, 38.224545, 15.950816>,  <23.035572, 38.423920, 16.084248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042370, 38.224545, 15.950816>,  <23.053699, 37.892254, 15.728432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042370, 38.224545, 15.950816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309757, -0.536100, 0.785269,
		0.950394, -0.149969, 0.272509,
		-0.028326, 0.830726, 0.555960,
		23.033873, 38.473763, 16.117603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.138927, 37.616024, 16.352001>,  <23.053699, 37.892254, 15.728432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.138927, 37.616024, 16.352001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.051168, 37.984222, 16.481342>,  <22.998514, 38.205139, 16.558947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.051168, 37.984222, 16.481342>,  <23.138927, 37.616024, 16.352001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.051168, 37.984222, 16.481342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445972, -0.389396, 0.805903,
		0.867741, 0.032604, 0.495946,
		-0.219395, 0.920493, 0.323355,
		22.985350, 38.260372, 16.578348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.528482, 37.731731, 16.971437>,  <23.138927, 37.616024, 16.352001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.528482, 37.731731, 16.971437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203590, 37.961990, 16.933685>,  <23.008656, 38.100147, 16.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203590, 37.961990, 16.933685>,  <23.528482, 37.731731, 16.971437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.203590, 37.961990, 16.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342697, -0.339947, 0.875782,
		0.472061, 0.743681, 0.473389,
		-0.812230, 0.575652, -0.094381,
		22.959921, 38.134686, 16.905371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469751, 37.971497, 17.644138>,  <23.528482, 37.731731, 16.971437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469751, 37.971497, 17.644138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116329, 38.041416, 17.470345>,  <22.904276, 38.083370, 17.366068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.116329, 38.041416, 17.470345>,  <23.469751, 37.971497, 17.644138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.116329, 38.041416, 17.470345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465229, -0.221047, 0.857147,
		0.053788, 0.959470, 0.276630,
		-0.883555, 0.174801, -0.434484,
		22.851263, 38.093857, 17.340000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.046719, 38.449806, 18.101652>,  <23.469751, 37.971497, 17.644138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.046719, 38.449806, 18.101652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.785759, 38.253052, 17.871025>,  <22.629183, 38.134998, 17.732649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.785759, 38.253052, 17.871025>,  <23.046719, 38.449806, 18.101652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.785759, 38.253052, 17.871025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526531, -0.253016, 0.811633,
		-0.545109, 0.833088, -0.093924,
		-0.652397, -0.491883, -0.576567,
		22.590040, 38.105488, 17.698055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415161, 38.664276, 18.356985>,  <23.046719, 38.449806, 18.101652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415161, 38.664276, 18.356985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265301, 38.367580, 18.134468>,  <22.175385, 38.189564, 18.000957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265301, 38.367580, 18.134468>,  <22.415161, 38.664276, 18.356985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265301, 38.367580, 18.134468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530365, -0.320682, 0.784777,
		-0.760492, 0.589056, -0.273248,
		-0.374652, -0.741738, -0.556291,
		22.152905, 38.145058, 17.967581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723778, 38.706711, 18.406404>,  <22.415161, 38.664276, 18.356985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723778, 38.706711, 18.406404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837889, 38.332069, 18.325020>,  <21.906355, 38.107285, 18.276190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837889, 38.332069, 18.325020>,  <21.723778, 38.706711, 18.406404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837889, 38.332069, 18.325020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536088, -0.331898, 0.776179,
		-0.794498, -0.112353, -0.596783,
		0.285277, -0.936600, -0.203461,
		21.923471, 38.051090, 18.263981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058556, 38.287926, 18.567688>,  <21.723778, 38.706711, 18.406404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058556, 38.287926, 18.567688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363226, 38.029617, 18.546421>,  <21.546028, 37.874634, 18.533661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363226, 38.029617, 18.546421>,  <21.058556, 38.287926, 18.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363226, 38.029617, 18.546421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367688, -0.498324, 0.785162,
		-0.533531, -0.578490, -0.617004,
		0.761676, -0.645773, -0.053167,
		21.591728, 37.835884, 18.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699539, 37.675934, 18.572699>,  <21.058556, 38.287926, 18.567688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699539, 37.675934, 18.572699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.073906, 37.630222, 18.705963>,  <21.298527, 37.602795, 18.785923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.073906, 37.630222, 18.705963>,  <20.699539, 37.675934, 18.572699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073906, 37.630222, 18.705963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341904, -0.522016, 0.781410,
		0.084615, -0.845245, -0.527638,
		0.935918, -0.114282, 0.333163,
		21.354681, 37.595936, 18.805912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674976, 37.046680, 18.848717>,  <20.699539, 37.675934, 18.572699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674976, 37.046680, 18.848717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010906, 37.178177, 19.021519>,  <21.212463, 37.257076, 19.125200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.010906, 37.178177, 19.021519>,  <20.674976, 37.046680, 18.848717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010906, 37.178177, 19.021519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286328, -0.407852, 0.866991,
		0.461209, -0.851813, -0.248396,
		0.839823, 0.328741, 0.432003,
		21.262854, 37.276798, 19.151119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906424, 36.472481, 19.208616>,  <20.674976, 37.046680, 18.848717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906424, 36.472481, 19.208616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.071997, 36.798515, 19.370747>,  <21.171341, 36.994137, 19.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.071997, 36.798515, 19.370747>,  <20.906424, 36.472481, 19.208616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071997, 36.798515, 19.370747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127584, -0.388923, 0.912393,
		0.901322, -0.429382, -0.056996,
		0.413932, 0.815088, 0.405328,
		21.196177, 37.043041, 19.492346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422457, 36.287983, 19.730894>,  <20.906424, 36.472481, 19.208616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422457, 36.287983, 19.730894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.326719, 36.656963, 19.852089>,  <21.269276, 36.878349, 19.924807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.326719, 36.656963, 19.852089>,  <21.422457, 36.287983, 19.730894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.326719, 36.656963, 19.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114772, -0.336748, 0.934574,
		0.964127, 0.188912, 0.186470,
		-0.239346, 0.922450, 0.302986,
		21.254915, 36.933697, 19.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.919455, 36.451515, 20.258574>,  <21.422457, 36.287983, 19.730894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.919455, 36.451515, 20.258574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596113, 36.681999, 20.306824>,  <21.402109, 36.820290, 20.335773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596113, 36.681999, 20.306824>,  <21.919455, 36.451515, 20.258574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596113, 36.681999, 20.306824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000235, -0.204589, 0.978848,
		0.588697, 0.791284, 0.165245,
		-0.808354, 0.576206, 0.120627,
		21.353607, 36.854862, 20.343012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192972, 36.879517, 20.897194>,  <21.919455, 36.451515, 20.258574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192972, 36.879517, 20.897194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795078, 36.903091, 20.863655>,  <21.556341, 36.917236, 20.843533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795078, 36.903091, 20.863655>,  <22.192972, 36.879517, 20.897194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795078, 36.903091, 20.863655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091956, -0.152027, 0.984089,
		0.045257, 0.986617, 0.156647,
		-0.994734, 0.058942, -0.083845,
		21.496658, 36.920773, 20.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007978, 37.215809, 21.523535>,  <22.192972, 36.879517, 20.897194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007978, 37.215809, 21.523535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664333, 37.042873, 21.413982>,  <21.458147, 36.939114, 21.348251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.664333, 37.042873, 21.413982>,  <22.007978, 37.215809, 21.523535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.664333, 37.042873, 21.413982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287022, -0.036057, 0.957245,
		-0.423727, 0.900991, -0.093113,
		-0.859112, -0.432336, -0.273883,
		21.406599, 36.913174, 21.331818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.421021, 37.550159, 21.935017>,  <22.007978, 37.215809, 21.523535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.421021, 37.550159, 21.935017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312248, 37.189938, 21.799339>,  <21.246984, 36.973804, 21.717934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312248, 37.189938, 21.799339>,  <21.421021, 37.550159, 21.935017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.312248, 37.189938, 21.799339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292556, -0.258426, 0.920667,
		-0.916769, 0.349589, -0.193189,
		-0.271930, -0.900557, -0.339191,
		21.230669, 36.919769, 21.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853746, 37.473373, 22.211050>,  <21.421021, 37.550159, 21.935017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853746, 37.473373, 22.211050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938793, 37.089371, 22.138191>,  <20.989822, 36.858967, 22.094477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938793, 37.089371, 22.138191>,  <20.853746, 37.473373, 22.211050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938793, 37.089371, 22.138191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393669, -0.254769, 0.883243,
		-0.894325, -0.116089, -0.432094,
		0.212619, -0.960008, -0.182146,
		21.002579, 36.801369, 22.083548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.469776, 37.170315, 22.642792>,  <20.853746, 37.473373, 22.211050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.469776, 37.170315, 22.642792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682184, 36.859695, 22.507149>,  <20.809629, 36.673325, 22.425762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.682184, 36.859695, 22.507149>,  <20.469776, 37.170315, 22.642792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682184, 36.859695, 22.507149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347979, -0.564739, 0.748319,
		-0.772611, -0.279370, -0.570109,
		0.531020, -0.776545, -0.339109,
		20.841490, 36.626732, 22.405416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070309, 36.624855, 22.463371>,  <20.469776, 37.170315, 22.642792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070309, 36.624855, 22.463371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411306, 36.440369, 22.561783>,  <20.615906, 36.329678, 22.620831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411306, 36.440369, 22.561783>,  <20.070309, 36.624855, 22.463371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411306, 36.440369, 22.561783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493173, -0.553609, 0.671042,
		-0.173291, -0.693396, -0.699408,
		0.852497, -0.461215, 0.246029,
		20.667055, 36.302006, 22.635592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400921, 36.716515, 22.580317>,  <20.070309, 36.624855, 22.463371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400921, 36.716515, 22.580317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040531, 36.571453, 22.675587>,  <18.824297, 36.484417, 22.732750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040531, 36.571453, 22.675587>,  <19.400921, 36.716515, 22.580317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040531, 36.571453, 22.675587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126819, 0.745107, 0.654777,
		-0.414923, 0.559732, -0.717314,
		-0.900975, -0.362651, 0.238178,
		18.770239, 36.462658, 22.747040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906427, 37.257324, 22.271345>,  <19.400921, 36.716515, 22.580317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906427, 37.257324, 22.271345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.786467, 37.029770, 22.577660>,  <18.714491, 36.893238, 22.761448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.786467, 37.029770, 22.577660>,  <18.906427, 37.257324, 22.271345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786467, 37.029770, 22.577660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029243, 0.807841, 0.588675,
		-0.953522, 0.154150, -0.258907,
		-0.299900, -0.568886, 0.765786,
		18.696497, 36.859104, 22.807396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265759, 37.650639, 22.591221>,  <18.906427, 37.257324, 22.271345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265759, 37.650639, 22.591221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443598, 37.396915, 22.844200>,  <18.550301, 37.244682, 22.995989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443598, 37.396915, 22.844200>,  <18.265759, 37.650639, 22.591221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443598, 37.396915, 22.844200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115581, 0.659543, 0.742727,
		-0.888242, -0.403313, 0.219917,
		0.444596, -0.634304, 0.632449,
		18.576977, 37.206623, 23.033936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805166, 37.444172, 23.091162>,  <18.265759, 37.650639, 22.591221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805166, 37.444172, 23.091162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.160284, 37.424393, 23.274193>,  <18.373354, 37.412525, 23.384012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.160284, 37.424393, 23.274193>,  <17.805166, 37.444172, 23.091162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160284, 37.424393, 23.274193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331199, 0.621708, 0.709779,
		-0.319578, -0.781687, 0.535571,
		0.887794, -0.049449, 0.457578,
		18.426622, 37.409557, 23.411467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.542765, 24.379795, 26.868002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752016, 24.504128, 27.185421>,  <31.877567, 24.578728, 27.375874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752016, 24.504128, 27.185421>,  <31.542765, 24.379795, 26.868002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752016, 24.504128, 27.185421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083915, 0.945380, -0.314984,
		-0.848113, 0.098186, 0.520638,
		0.523128, 0.310831, 0.793550,
		31.908955, 24.597378, 27.423487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161713, 24.848606, 27.141405>,  <31.542765, 24.379795, 26.868002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161713, 24.848606, 27.141405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.534256, 24.923882, 27.266083>,  <31.757782, 24.969046, 27.340889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.534256, 24.923882, 27.266083>,  <31.161713, 24.848606, 27.141405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534256, 24.923882, 27.266083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135773, 0.973832, -0.182255,
		-0.337837, 0.127425, 0.932539,
		0.931360, 0.188186, 0.311696,
		31.813663, 24.980337, 27.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127504, 25.492264, 27.443039>,  <31.161713, 24.848606, 27.141405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127504, 25.492264, 27.443039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.514605, 25.446651, 27.353191>,  <31.746864, 25.419285, 27.299282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.514605, 25.446651, 27.353191>,  <31.127504, 25.492264, 27.443039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514605, 25.446651, 27.353191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049194, 0.960059, -0.275439,
		0.247056, 0.255507, 0.934708,
		0.967752, -0.114031, -0.224619,
		31.804930, 25.412443, 27.285807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392786, 26.072243, 27.465620>,  <31.127504, 25.492264, 27.443039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392786, 26.072243, 27.465620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714756, 25.892376, 27.310753>,  <31.907938, 25.784456, 27.217833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.714756, 25.892376, 27.310753>,  <31.392786, 26.072243, 27.465620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714756, 25.892376, 27.310753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333336, 0.882456, -0.331902,
		0.490903, 0.138098, 0.860199,
		0.804923, -0.449667, -0.387167,
		31.956232, 25.757475, 27.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063862, 26.451143, 27.658636>,  <31.392786, 26.072243, 27.465620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063862, 26.451143, 27.658636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107281, 26.259594, 27.310177>,  <32.133331, 26.144665, 27.101101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107281, 26.259594, 27.310177>,  <32.063862, 26.451143, 27.658636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107281, 26.259594, 27.310177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330379, 0.843892, -0.422725,
		0.937586, -0.241925, 0.249809,
		0.108544, -0.478873, -0.871148,
		32.139843, 26.115932, 27.048832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733177, 26.680429, 27.445282>,  <32.063862, 26.451143, 27.658636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733177, 26.680429, 27.445282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584366, 26.522659, 27.109180>,  <32.495079, 26.427998, 26.907520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.584366, 26.522659, 27.109180>,  <32.733177, 26.680429, 27.445282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584366, 26.522659, 27.109180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361903, 0.771956, -0.522600,
		0.854766, -0.498510, -0.144442,
		-0.372024, -0.394426, -0.840254,
		32.472759, 26.404331, 26.857105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187134, 26.923143, 26.915308>,  <32.733177, 26.680429, 27.445282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187134, 26.923143, 26.915308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872726, 26.817631, 26.691669>,  <32.684082, 26.754324, 26.557486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.872726, 26.817631, 26.691669>,  <33.187134, 26.923143, 26.915308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872726, 26.817631, 26.691669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152789, 0.793447, -0.589149,
		0.599020, -0.548508, -0.583364,
		-0.786022, -0.263780, -0.559097,
		32.636921, 26.738497, 26.523941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388733, 27.056143, 26.307045>,  <33.187134, 26.923143, 26.915308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388733, 27.056143, 26.307045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990223, 27.045589, 26.274193>,  <32.751118, 27.039257, 26.254482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.990223, 27.045589, 26.274193>,  <33.388733, 27.056143, 26.307045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990223, 27.045589, 26.274193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031400, 0.775862, -0.630121,
		0.080346, -0.630351, -0.772142,
		-0.996272, -0.026383, -0.082131,
		32.691341, 27.037674, 26.249554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272747, 27.136003, 25.602104>,  <33.388733, 27.056143, 26.307045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272747, 27.136003, 25.602104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930027, 27.227985, 25.786716>,  <32.724396, 27.283175, 25.897484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930027, 27.227985, 25.786716>,  <33.272747, 27.136003, 25.602104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930027, 27.227985, 25.786716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143277, 0.753641, -0.641480,
		-0.495343, -0.615748, -0.612773,
		-0.856800, 0.229956, 0.461533,
		32.672985, 27.296972, 25.925177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687897, 27.108212, 25.115637>,  <33.272747, 27.136003, 25.602104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687897, 27.108212, 25.115637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573521, 27.342819, 25.418751>,  <32.504894, 27.483583, 25.600618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573521, 27.342819, 25.418751>,  <32.687897, 27.108212, 25.115637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573521, 27.342819, 25.418751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290861, 0.700367, -0.651832,
		-0.913039, -0.406792, -0.029665,
		-0.285937, 0.586520, 0.757783,
		32.487740, 27.518776, 25.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016109, 27.284004, 25.003065>,  <32.687897, 27.108212, 25.115637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016109, 27.284004, 25.003065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149662, 27.553375, 25.266888>,  <32.229794, 27.714998, 25.425182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149662, 27.553375, 25.266888>,  <32.016109, 27.284004, 25.003065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149662, 27.553375, 25.266888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380364, 0.736469, -0.559407,
		-0.862465, -0.064097, 0.502042,
		0.333882, 0.673428, 0.659559,
		32.249828, 27.755404, 25.464756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450361, 27.818195, 25.198206>,  <32.016109, 27.284004, 25.003065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450361, 27.818195, 25.198206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.795271, 28.000099, 25.287357>,  <32.002216, 28.109241, 25.340847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.795271, 28.000099, 25.287357>,  <31.450361, 27.818195, 25.198206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795271, 28.000099, 25.287357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326772, 0.835815, -0.441173,
		-0.386912, 0.307583, 0.869306,
		0.862276, 0.454760, 0.222877,
		32.053955, 28.136528, 25.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242723, 28.467535, 25.317072>,  <31.450361, 27.818195, 25.198206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242723, 28.467535, 25.317072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633707, 28.497150, 25.237984>,  <31.868298, 28.514919, 25.190531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633707, 28.497150, 25.237984>,  <31.242723, 28.467535, 25.317072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633707, 28.497150, 25.237984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146107, 0.913244, -0.380313,
		0.152410, 0.400629, 0.903475,
		0.977458, 0.074040, -0.197723,
		31.926945, 28.519363, 25.178667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347397, 29.157406, 25.652266>,  <31.242723, 28.467535, 25.317072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347397, 29.157406, 25.652266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620829, 29.037121, 25.386246>,  <31.784887, 28.964951, 25.226633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620829, 29.037121, 25.386246>,  <31.347397, 29.157406, 25.652266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620829, 29.037121, 25.386246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075714, 0.877050, -0.474395,
		0.725938, 0.374641, 0.576766,
		0.683580, -0.300712, -0.665049,
		31.825903, 28.946907, 25.186731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869137, 29.771290, 25.551407>,  <31.347397, 29.157406, 25.652266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869137, 29.771290, 25.551407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.902872, 29.530464, 25.233814>,  <31.923113, 29.385969, 25.043259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.902872, 29.530464, 25.233814>,  <31.869137, 29.771290, 25.551407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902872, 29.530464, 25.233814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075461, 0.790672, -0.607571,
		0.993576, 0.111156, 0.021251,
		0.084338, -0.602065, -0.793980,
		31.928173, 29.349844, 24.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377651, 30.086029, 25.167000>,  <31.869137, 29.771290, 25.551407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377651, 30.086029, 25.167000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180256, 29.866158, 24.897385>,  <32.061817, 29.734236, 24.735617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180256, 29.866158, 24.897385>,  <32.377651, 30.086029, 25.167000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180256, 29.866158, 24.897385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024203, 0.765996, -0.642390,
		0.869416, -0.333326, -0.364706,
		-0.493488, -0.549677, -0.674036,
		32.032207, 29.701254, 24.695173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599674, 30.394056, 24.499840>,  <32.377651, 30.086029, 25.167000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599674, 30.394056, 24.499840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.263897, 30.184624, 24.441593>,  <32.062431, 30.058964, 24.406645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.263897, 30.184624, 24.441593>,  <32.599674, 30.394056, 24.499840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263897, 30.184624, 24.441593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307634, 0.678695, -0.666884,
		0.447995, -0.515014, -0.730795,
		-0.839441, -0.523579, -0.145616,
		32.012066, 30.027550, 24.397907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506744, 30.478666, 23.772785>,  <32.599674, 30.394056, 24.499840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506744, 30.478666, 23.772785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145435, 30.368877, 23.904697>,  <31.928648, 30.303003, 23.983845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145435, 30.368877, 23.904697>,  <32.506744, 30.478666, 23.772785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145435, 30.368877, 23.904697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421094, 0.419705, -0.804070,
		0.082283, -0.865167, -0.494688,
		-0.903277, -0.274471, 0.329782,
		31.874453, 30.286535, 24.003632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200272, 30.317715, 23.186878>,  <32.506744, 30.478666, 23.772785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200272, 30.317715, 23.186878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893400, 30.379253, 23.435963>,  <31.709276, 30.416176, 23.585413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893400, 30.379253, 23.435963>,  <32.200272, 30.317715, 23.186878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893400, 30.379253, 23.435963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477905, 0.510436, -0.714886,
		-0.427835, -0.846042, -0.318073,
		-0.767179, 0.153845, 0.622710,
		31.663246, 30.425407, 23.622776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574703, 29.994164, 22.873035>,  <32.200272, 30.317715, 23.186878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574703, 29.994164, 22.873035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.449421, 30.278233, 23.125244>,  <31.374252, 30.448673, 23.276569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.449421, 30.278233, 23.125244>,  <31.574703, 29.994164, 22.873035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449421, 30.278233, 23.125244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505999, 0.437048, -0.743609,
		-0.803659, -0.551946, 0.222460,
		-0.313206, 0.710173, 0.630521,
		31.355459, 30.491283, 23.314400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882277, 30.071674, 22.774612>,  <31.574703, 29.994164, 22.873035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882277, 30.071674, 22.774612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.965826, 30.411438, 22.968468>,  <31.015957, 30.615297, 23.084782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.965826, 30.411438, 22.968468>,  <30.882277, 30.071674, 22.774612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965826, 30.411438, 22.968468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352572, 0.527649, -0.772839,
		-0.912176, -0.009442, 0.409691,
		0.208875, 0.849410, 0.484638,
		31.028488, 30.666262, 23.113859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279955, 30.439442, 22.918465>,  <30.882277, 30.071674, 22.774612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279955, 30.439442, 22.918465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558943, 30.725914, 22.928413>,  <30.726336, 30.897797, 22.934381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558943, 30.725914, 22.928413>,  <30.279955, 30.439442, 22.918465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558943, 30.725914, 22.928413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530164, 0.539044, -0.654491,
		-0.482140, 0.443303, 0.755661,
		0.697472, 0.716180, 0.024871,
		30.768185, 30.940767, 22.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858574, 31.049913, 22.905130>,  <30.279955, 30.439442, 22.918465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858574, 31.049913, 22.905130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.227886, 31.115513, 22.766190>,  <30.449474, 31.154873, 22.682825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.227886, 31.115513, 22.766190>,  <29.858574, 31.049913, 22.905130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227886, 31.115513, 22.766190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382560, 0.311165, -0.869956,
		-0.034588, 0.936099, 0.350033,
		0.923283, 0.163999, -0.347352,
		30.504871, 31.164713, 22.661983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583498, 30.826946, 22.293882>,  <29.858574, 31.049913, 22.905130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583498, 30.826946, 22.293882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.216309, 30.782612, 22.141544>,  <28.995995, 30.756012, 22.050140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.216309, 30.782612, 22.141544>,  <29.583498, 30.826946, 22.293882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216309, 30.782612, 22.141544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200770, -0.698241, 0.687132,
		-0.342082, 0.707230, 0.618713,
		-0.917971, -0.110836, -0.380846,
		28.940918, 30.749361, 22.027290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063742, 30.805473, 22.798565>,  <29.583498, 30.826946, 22.293882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063742, 30.805473, 22.798565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875086, 30.634312, 22.490162>,  <28.761892, 30.531614, 22.305120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875086, 30.634312, 22.490162>,  <29.063742, 30.805473, 22.798565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875086, 30.634312, 22.490162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069767, -0.853516, 0.516375,
		-0.879027, 0.297334, 0.372698,
		-0.471640, -0.427906, -0.771007,
		28.733595, 30.505939, 22.258860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666649, 30.434910, 23.188459>,  <29.063742, 30.805473, 22.798565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666649, 30.434910, 23.188459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.688133, 30.262764, 22.828037>,  <28.701023, 30.159477, 22.611784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.688133, 30.262764, 22.828037>,  <28.666649, 30.434910, 23.188459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688133, 30.262764, 22.828037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214884, -0.886199, 0.410459,
		-0.975162, 0.171577, -0.140075,
		0.053708, -0.430364, -0.901056,
		28.704247, 30.133656, 22.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046576, 30.130169, 23.035280>,  <28.666649, 30.434910, 23.188459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046576, 30.130169, 23.035280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308367, 29.930374, 22.808239>,  <28.465441, 29.810497, 22.672014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308367, 29.930374, 22.808239>,  <28.046576, 30.130169, 23.035280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308367, 29.930374, 22.808239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309985, -0.861985, 0.401113,
		-0.689615, -0.086572, -0.718983,
		0.654477, -0.499488, -0.567602,
		28.504709, 29.780527, 22.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837765, 29.533735, 22.944551>,  <28.046576, 30.130169, 23.035280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837765, 29.533735, 22.944551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.205206, 29.417038, 22.837929>,  <28.425671, 29.347019, 22.773954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.205206, 29.417038, 22.837929>,  <27.837765, 29.533735, 22.944551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205206, 29.417038, 22.837929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176208, -0.906145, 0.384516,
		-0.353721, -0.306249, -0.883795,
		0.918603, -0.291743, -0.266558,
		28.480787, 29.329515, 22.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812929, 28.878265, 22.619513>,  <27.837765, 29.533735, 22.944551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812929, 28.878265, 22.619513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.195501, 28.882092, 22.736237>,  <28.425045, 28.884388, 22.806271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.195501, 28.882092, 22.736237>,  <27.812929, 28.878265, 22.619513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195501, 28.882092, 22.736237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080611, -0.951962, 0.295415,
		0.280616, -0.306066, -0.909713,
		0.956429, 0.009566, 0.291808,
		28.482430, 28.884962, 22.823780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042530, 28.132097, 22.435337>,  <27.812929, 28.878265, 22.619513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042530, 28.132097, 22.435337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.318666, 28.282219, 22.682747>,  <28.484348, 28.372292, 22.831192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.318666, 28.282219, 22.682747>,  <28.042530, 28.132097, 22.435337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318666, 28.282219, 22.682747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160845, -0.913148, 0.374551,
		0.705376, -0.159082, -0.690752,
		0.690343, 0.375304, 0.618525,
		28.525770, 28.394810, 22.868305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563175, 27.657112, 22.490519>,  <28.042530, 28.132097, 22.435337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563175, 27.657112, 22.490519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648029, 27.866425, 22.820652>,  <28.698942, 27.992012, 23.018732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.648029, 27.866425, 22.820652>,  <28.563175, 27.657112, 22.490519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648029, 27.866425, 22.820652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019970, -0.846700, 0.531696,
		0.977036, -0.096309, -0.190065,
		0.212135, 0.523282, 0.825333,
		28.711670, 28.023409, 23.068253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153170, 27.279221, 22.884060>,  <28.563175, 27.657112, 22.490519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153170, 27.279221, 22.884060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.959740, 27.517357, 23.140724>,  <28.843681, 27.660238, 23.294722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.959740, 27.517357, 23.140724>,  <29.153170, 27.279221, 22.884060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959740, 27.517357, 23.140724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173905, -0.653109, 0.737025,
		0.857854, 0.467994, 0.212294,
		-0.483574, 0.595341, 0.641658,
		28.814667, 27.695959, 23.333221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600786, 27.302326, 23.453070>,  <29.153170, 27.279221, 22.884060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600786, 27.302326, 23.453070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.251972, 27.413059, 23.614521>,  <29.042683, 27.479500, 23.711391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.251972, 27.413059, 23.614521>,  <29.600786, 27.302326, 23.453070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251972, 27.413059, 23.614521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156571, -0.623553, 0.765943,
		0.463722, 0.731126, 0.500417,
		-0.872037, 0.276834, 0.403628,
		28.990362, 27.496109, 23.735609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734274, 27.354277, 24.177612>,  <29.600786, 27.302326, 23.453070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734274, 27.354277, 24.177612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.342604, 27.302357, 24.115177>,  <29.107601, 27.271206, 24.077715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.342604, 27.302357, 24.115177>,  <29.734274, 27.354277, 24.177612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342604, 27.302357, 24.115177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015080, -0.720260, 0.693541,
		-0.202445, 0.681453, 0.703305,
		-0.979178, -0.129798, -0.156089,
		29.048851, 27.263418, 24.068350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453352, 27.340746, 24.765053>,  <29.734274, 27.354277, 24.177612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453352, 27.340746, 24.765053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.164982, 27.143387, 24.570393>,  <28.991961, 27.024971, 24.453596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.164982, 27.143387, 24.570393>,  <29.453352, 27.340746, 24.765053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164982, 27.143387, 24.570393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022078, -0.718216, 0.695470,
		-0.692663, 0.490636, 0.528672,
		-0.720923, -0.493398, -0.486650,
		28.948706, 26.995367, 24.424398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845533, 27.086678, 25.284349>,  <29.453352, 27.340746, 24.765053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845533, 27.086678, 25.284349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.847588, 26.859402, 24.955196>,  <28.848820, 26.723036, 24.757706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.847588, 26.859402, 24.955196>,  <28.845533, 27.086678, 25.284349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847588, 26.859402, 24.955196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112428, -0.818003, 0.564120,
		-0.993647, 0.089616, -0.068082,
		0.005137, -0.568190, -0.822882,
		28.849129, 26.688944, 24.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140799, 26.631041, 25.343143>,  <28.845533, 27.086678, 25.284349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140799, 26.631041, 25.343143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.419729, 26.463776, 25.110291>,  <28.587088, 26.363417, 24.970579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.419729, 26.463776, 25.110291>,  <28.140799, 26.631041, 25.343143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419729, 26.463776, 25.110291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084281, -0.854382, 0.512766,
		-0.711783, -0.308501, -0.631024,
		0.697324, -0.418162, -0.582134,
		28.628927, 26.338327, 24.935650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860556, 25.926180, 25.268017>,  <28.140799, 26.631041, 25.343143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860556, 25.926180, 25.268017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.251968, 25.916409, 25.186165>,  <28.486816, 25.910545, 25.137053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.251968, 25.916409, 25.186165>,  <27.860556, 25.926180, 25.268017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251968, 25.916409, 25.186165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093925, -0.830970, 0.548331,
		-0.183437, -0.555781, -0.810838,
		0.978534, -0.024426, -0.204632,
		28.545528, 25.909081, 25.124775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013197, 25.198679, 25.163988>,  <27.860556, 25.926180, 25.268017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013197, 25.198679, 25.163988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.369267, 25.374954, 25.210270>,  <28.582909, 25.480719, 25.238039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.369267, 25.374954, 25.210270>,  <28.013197, 25.198679, 25.163988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369267, 25.374954, 25.210270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330800, -0.799738, 0.500990,
		0.313314, -0.407692, -0.857684,
		0.890172, 0.440689, 0.115704,
		28.636318, 25.507160, 25.244982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385569, 24.720186, 24.984261>,  <28.013197, 25.198679, 25.163988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385569, 24.720186, 24.984261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.605030, 24.946720, 25.230267>,  <28.736706, 25.082640, 25.377871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.605030, 24.946720, 25.230267>,  <28.385569, 24.720186, 24.984261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605030, 24.946720, 25.230267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311948, -0.821169, 0.477882,
		0.775673, -0.070338, -0.627203,
		0.548652, 0.566334, 0.615017,
		28.769627, 25.116621, 25.414772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.673372, 24.492018, 24.925867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532734, 24.679340, 25.250107>,  <29.448351, 24.791733, 25.444651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532734, 24.679340, 25.250107>,  <29.673372, 24.492018, 24.925867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532734, 24.679340, 25.250107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228424, -0.796796, 0.559409,
		0.907857, 0.381845, 0.173178,
		-0.351595, 0.468305, 0.810599,
		29.427256, 24.819832, 25.493286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232317, 24.526739, 25.499022>,  <29.673372, 24.492018, 24.925867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232317, 24.526739, 25.499022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.896324, 24.572071, 25.711281>,  <29.694729, 24.599270, 25.838636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.896324, 24.572071, 25.711281>,  <30.232317, 24.526739, 25.499022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896324, 24.572071, 25.711281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291801, -0.730155, 0.617840,
		0.457475, 0.673818, 0.580247,
		-0.839981, 0.113330, 0.530649,
		29.644329, 24.606070, 25.870476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550249, 24.555933, 26.172791>,  <30.232317, 24.526739, 25.499022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550249, 24.555933, 26.172791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159855, 24.475681, 26.206734>,  <29.925619, 24.427530, 26.227098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159855, 24.475681, 26.206734>,  <30.550249, 24.555933, 26.172791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159855, 24.475681, 26.206734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217077, -0.863266, 0.455685,
		-0.018171, 0.463162, 0.886087,
		-0.975985, -0.200629, 0.084856,
		29.867060, 24.415493, 26.232191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398834, 24.394835, 26.974274>,  <30.550249, 24.555933, 26.172791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398834, 24.394835, 26.974274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094187, 24.224380, 26.778992>,  <29.911398, 24.122108, 26.661821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094187, 24.224380, 26.778992>,  <30.398834, 24.394835, 26.974274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094187, 24.224380, 26.778992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100248, -0.821784, 0.560912,
		-0.640224, 0.378259, 0.668605,
		-0.761619, -0.426135, -0.488206,
		29.865702, 24.096540, 26.632530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914904, 24.169819, 27.537466>,  <30.398834, 24.394835, 26.974274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914904, 24.169819, 27.537466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833488, 23.946281, 27.215904>,  <29.784639, 23.812159, 27.022966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833488, 23.946281, 27.215904>,  <29.914904, 24.169819, 27.537466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833488, 23.946281, 27.215904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058540, -0.812679, 0.579764,
		-0.977316, 0.165064, 0.132695,
		-0.203536, -0.558844, -0.803907,
		29.772427, 23.778627, 26.974731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328867, 23.725471, 27.707735>,  <29.914904, 24.169819, 27.537466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328867, 23.725471, 27.707735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476521, 23.540806, 27.385094>,  <29.565113, 23.430006, 27.191509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.476521, 23.540806, 27.385094>,  <29.328867, 23.725471, 27.707735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476521, 23.540806, 27.385094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135568, -0.885361, 0.444699,
		-0.919435, -0.054804, -0.389405,
		0.369135, -0.461662, -0.806602,
		29.587261, 23.402308, 27.143112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837378, 23.158361, 27.499523>,  <29.328867, 23.725471, 27.707735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837378, 23.158361, 27.499523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200460, 23.078426, 27.351940>,  <29.418310, 23.030464, 27.263390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200460, 23.078426, 27.351940>,  <28.837378, 23.158361, 27.499523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200460, 23.078426, 27.351940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094218, -0.953922, 0.284880,
		-0.408887, -0.223825, -0.884711,
		0.907708, -0.199840, -0.368957,
		29.472773, 23.018475, 27.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751276, 22.666502, 27.165045>,  <28.837378, 23.158361, 27.499523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751276, 22.666502, 27.165045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.148979, 22.647461, 27.203384>,  <29.387600, 22.636036, 27.226389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.148979, 22.647461, 27.203384>,  <28.751276, 22.666502, 27.165045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148979, 22.647461, 27.203384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085693, -0.890634, 0.446574,
		0.064109, -0.452223, -0.889598,
		0.994256, -0.047603, 0.095850,
		29.447256, 22.633181, 27.232140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947020, 22.051186, 26.928495>,  <28.751276, 22.666502, 27.165045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947020, 22.051186, 26.928495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.247961, 22.150520, 27.172558>,  <29.428526, 22.210121, 27.318996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.247961, 22.150520, 27.172558>,  <28.947020, 22.051186, 26.928495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247961, 22.150520, 27.172558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007005, -0.923156, 0.384363,
		0.658722, -0.293451, -0.692800,
		0.752354, 0.248335, 0.610158,
		29.473667, 22.225021, 27.355606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286776, 21.486269, 26.886242>,  <28.947020, 22.051186, 26.928495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286776, 21.486269, 26.886242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421953, 21.662304, 27.219017>,  <29.503059, 21.767925, 27.418682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421953, 21.662304, 27.219017>,  <29.286776, 21.486269, 26.886242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421953, 21.662304, 27.219017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131864, -0.853083, 0.504838,
		0.931883, -0.280309, -0.230263,
		0.337944, 0.440086, 0.831936,
		29.523336, 21.794331, 27.468597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659506, 21.011194, 27.207588>,  <29.286776, 21.486269, 26.886242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659506, 21.011194, 27.207588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.624561, 21.246113, 27.529446>,  <29.603594, 21.387064, 27.722561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.624561, 21.246113, 27.529446>,  <29.659506, 21.011194, 27.207588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624561, 21.246113, 27.529446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114002, -0.808319, 0.577601,
		0.989632, -0.041271, 0.137569,
		-0.087362, 0.587296, 0.804644,
		29.598352, 21.422302, 27.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188072, 20.868029, 27.628340>,  <29.659506, 21.011194, 27.207588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188072, 20.868029, 27.628340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867376, 21.000690, 27.827225>,  <29.674959, 21.080288, 27.946556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867376, 21.000690, 27.827225>,  <30.188072, 20.868029, 27.628340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867376, 21.000690, 27.827225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071388, -0.772816, 0.630602,
		0.593394, 0.541074, 0.595922,
		-0.801740, 0.331654, 0.497210,
		29.626854, 21.100187, 27.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405611, 20.776394, 28.395910>,  <30.188072, 20.868029, 27.628340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405611, 20.776394, 28.395910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011763, 20.840458, 28.367996>,  <29.775454, 20.878897, 28.351248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011763, 20.840458, 28.367996>,  <30.405611, 20.776394, 28.395910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011763, 20.840458, 28.367996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168905, -0.770653, 0.614463,
		0.044632, 0.616801, 0.785853,
		-0.984621, 0.160159, -0.069785,
		29.716375, 20.888506, 28.347061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134726, 20.825279, 29.059504>,  <30.405611, 20.776394, 28.395910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134726, 20.825279, 29.059504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811361, 20.729340, 28.844490>,  <29.617342, 20.671776, 28.715483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.811361, 20.729340, 28.844490>,  <30.134726, 20.825279, 29.059504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811361, 20.729340, 28.844490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249549, -0.687425, 0.682036,
		-0.533099, 0.685507, 0.495869,
		-0.808413, -0.239849, -0.537533,
		29.568838, 20.657385, 28.683229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611792, 20.940428, 29.514830>,  <30.134726, 20.825279, 29.059504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611792, 20.940428, 29.514830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474043, 20.713860, 29.215343>,  <29.391394, 20.577919, 29.035652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.474043, 20.713860, 29.215343>,  <29.611792, 20.940428, 29.514830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474043, 20.713860, 29.215343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467568, -0.588081, 0.659955,
		-0.814118, 0.577345, -0.062323,
		-0.344370, -0.566421, -0.748716,
		29.370731, 20.543934, 28.990728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894327, 20.869226, 29.645998>,  <29.611792, 20.940428, 29.514830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894327, 20.869226, 29.645998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016657, 20.555626, 29.429920>,  <29.090055, 20.367466, 29.300274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016657, 20.555626, 29.429920>,  <28.894327, 20.869226, 29.645998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016657, 20.555626, 29.429920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545322, -0.609333, 0.575619,
		-0.780445, 0.118540, -0.613884,
		0.305826, -0.784003, -0.540193,
		29.108404, 20.320425, 29.267862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303331, 20.505310, 29.589472>,  <28.894327, 20.869226, 29.645998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303331, 20.505310, 29.589472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567875, 20.218620, 29.501007>,  <28.726601, 20.046606, 29.447929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567875, 20.218620, 29.501007>,  <28.303331, 20.505310, 29.589472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567875, 20.218620, 29.501007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461998, -0.621531, 0.632659,
		-0.590896, -0.316243, -0.742181,
		0.661362, -0.716722, -0.221156,
		28.766283, 20.003603, 29.434660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904882, 19.922325, 29.621742>,  <28.303331, 20.505310, 29.589472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904882, 19.922325, 29.621742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280659, 19.787930, 29.648750>,  <28.506124, 19.707293, 29.664955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280659, 19.787930, 29.648750>,  <27.904882, 19.922325, 29.621742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280659, 19.787930, 29.648750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239014, -0.501157, 0.831694,
		-0.245600, -0.797467, -0.551114,
		0.939443, -0.335988, 0.067522,
		28.562492, 19.687134, 29.669006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766397, 19.256975, 29.722771>,  <27.904882, 19.922325, 29.621742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766397, 19.256975, 29.722771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135115, 19.332039, 29.858467>,  <28.356344, 19.377077, 29.939886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.135115, 19.332039, 29.858467>,  <27.766397, 19.256975, 29.722771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135115, 19.332039, 29.858467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082191, -0.760560, 0.644045,
		0.378875, -0.621557, -0.685653,
		0.921791, 0.187659, 0.339243,
		28.411652, 19.388336, 29.960239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054592, 18.650709, 29.824757>,  <27.766397, 19.256975, 29.722771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054592, 18.650709, 29.824757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279362, 18.885098, 30.058296>,  <28.414225, 19.025730, 30.198420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.279362, 18.885098, 30.058296>,  <28.054592, 18.650709, 29.824757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279362, 18.885098, 30.058296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096246, -0.747345, 0.657429,
		0.821569, -0.313233, -0.476350,
		0.561926, 0.585970, 0.583848,
		28.447939, 19.060888, 30.233450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526876, 18.173838, 30.128172>,  <28.054592, 18.650709, 29.824757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526876, 18.173838, 30.128172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558695, 18.499161, 30.358719>,  <28.577785, 18.694355, 30.497047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.558695, 18.499161, 30.358719>,  <28.526876, 18.173838, 30.128172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558695, 18.499161, 30.358719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097717, -0.581778, 0.807457,
		0.992030, -0.007907, -0.125751,
		0.079544, 0.813310, 0.576369,
		28.582558, 18.743155, 30.531630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994326, 17.919106, 30.583139>,  <28.526876, 18.173838, 30.128172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994326, 17.919106, 30.583139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805994, 18.237926, 30.734417>,  <28.692995, 18.429218, 30.825184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805994, 18.237926, 30.734417>,  <28.994326, 17.919106, 30.583139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805994, 18.237926, 30.734417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240359, -0.528357, 0.814289,
		0.848851, 0.292488, 0.440344,
		-0.470829, 0.797050, 0.378194,
		28.664745, 18.477041, 30.847876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145615, 17.995543, 31.241737>,  <28.994326, 17.919106, 30.583139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145615, 17.995543, 31.241737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.784874, 18.168362, 31.242126>,  <28.568430, 18.272053, 31.242359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.784874, 18.168362, 31.242126>,  <29.145615, 17.995543, 31.241737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784874, 18.168362, 31.242126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264490, -0.553865, 0.789480,
		0.341632, 0.711735, 0.613776,
		-0.901850, 0.432049, 0.000972,
		28.514318, 18.297976, 31.242418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952229, 18.450830, 31.840672>,  <29.145615, 17.995543, 31.241737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952229, 18.450830, 31.840672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.660067, 18.232586, 31.676323>,  <28.484770, 18.101639, 31.577713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.660067, 18.232586, 31.676323>,  <28.952229, 18.450830, 31.840672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660067, 18.232586, 31.676323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070165, -0.538436, 0.839740,
		-0.679401, 0.642178, 0.354993,
		-0.730404, -0.545612, -0.410873,
		28.440945, 18.068903, 31.553061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591890, 18.315506, 31.694195>,  <28.952229, 18.450830, 31.840672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591890, 18.315506, 31.694195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969028, 18.333645, 31.826244>,  <30.195312, 18.344528, 31.905474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.969028, 18.333645, 31.826244>,  <29.591890, 18.315506, 31.694195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969028, 18.333645, 31.826244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143787, 0.838358, -0.525814,
		-0.300606, 0.543230, 0.783924,
		0.942847, 0.045345, 0.330125,
		30.251883, 18.347248, 31.925282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700867, 18.998547, 31.893520>,  <29.591890, 18.315506, 31.694195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700867, 18.998547, 31.893520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081532, 18.885754, 31.844814>,  <30.309931, 18.818077, 31.815590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081532, 18.885754, 31.844814>,  <29.700867, 18.998547, 31.893520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081532, 18.885754, 31.844814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142542, 0.756618, -0.638131,
		0.272072, 0.589927, 0.760238,
		0.951661, -0.281984, -0.121765,
		30.367029, 18.801159, 31.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089727, 19.631578, 31.916693>,  <29.700867, 18.998547, 31.893520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089727, 19.631578, 31.916693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333757, 19.375427, 31.730049>,  <30.480175, 19.221737, 31.618063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333757, 19.375427, 31.730049>,  <30.089727, 19.631578, 31.916693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333757, 19.375427, 31.730049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425576, 0.761576, -0.488761,
		0.668350, 0.099603, 0.737148,
		0.610076, -0.640376, -0.466611,
		30.516781, 19.183315, 31.590065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723316, 19.792162, 31.991863>,  <30.089727, 19.631578, 31.916693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723316, 19.792162, 31.991863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780117, 19.562057, 31.669643>,  <30.814198, 19.423994, 31.476311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780117, 19.562057, 31.669643>,  <30.723316, 19.792162, 31.991863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780117, 19.562057, 31.669643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422802, 0.771075, -0.476111,
		0.895027, -0.272981, 0.352715,
		0.142001, -0.575261, -0.805550,
		30.822718, 19.389479, 31.427979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507114, 19.832092, 31.769472>,  <30.723316, 19.792162, 31.991863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507114, 19.832092, 31.769472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307409, 19.661835, 31.467594>,  <31.187586, 19.559681, 31.286467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307409, 19.661835, 31.467594>,  <31.507114, 19.832092, 31.769472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307409, 19.661835, 31.467594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545708, 0.522085, -0.655462,
		0.673007, -0.739092, -0.028381,
		-0.499264, -0.425642, -0.754695,
		31.157631, 19.534142, 31.241186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116116, 19.579237, 31.348394>,  <31.507114, 19.832092, 31.769472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116116, 19.579237, 31.348394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791521, 19.631088, 31.120472>,  <31.596764, 19.662199, 30.983719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791521, 19.631088, 31.120472>,  <32.116116, 19.579237, 31.348394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791521, 19.631088, 31.120472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523147, 0.595640, -0.609532,
		0.260387, -0.792723, -0.551171,
		-0.811490, 0.129629, -0.569808,
		31.548075, 19.669977, 30.949530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401165, 19.641155, 30.678802>,  <32.116116, 19.579237, 31.348394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401165, 19.641155, 30.678802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.042366, 19.807621, 30.619202>,  <31.827085, 19.907501, 30.583441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.042366, 19.807621, 30.619202>,  <32.401165, 19.641155, 30.678802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042366, 19.807621, 30.619202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374456, 0.536269, -0.756438,
		-0.234898, -0.734318, -0.636868,
		-0.896998, 0.416165, -0.149001,
		31.773266, 19.932470, 30.574501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358490, 19.756496, 29.972710>,  <32.401165, 19.641155, 30.678802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358490, 19.756496, 29.972710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079971, 19.992805, 30.135761>,  <31.912861, 20.134590, 30.233593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079971, 19.992805, 30.135761>,  <32.358490, 19.756496, 29.972710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079971, 19.992805, 30.135761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238340, 0.726005, -0.645067,
		-0.677029, -0.352002, -0.646317,
		-0.696295, 0.590772, 0.407630,
		31.871082, 20.170036, 30.258051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019516, 19.974804, 29.371351>,  <32.358490, 19.756496, 29.972710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019516, 19.974804, 29.371351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949221, 20.228485, 29.672523>,  <31.907043, 20.380693, 29.853226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949221, 20.228485, 29.672523>,  <32.019516, 19.974804, 29.371351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949221, 20.228485, 29.672523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197092, 0.772014, -0.604276,
		-0.964505, 0.042201, -0.260670,
		-0.175740, 0.634203, 0.752929,
		31.896498, 20.418747, 29.898401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447462, 20.446781, 29.244488>,  <32.019516, 19.974804, 29.371351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447462, 20.446781, 29.244488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623678, 20.657047, 29.535583>,  <31.729408, 20.783207, 29.710241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623678, 20.657047, 29.535583>,  <31.447462, 20.446781, 29.244488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623678, 20.657047, 29.535583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017159, 0.805561, -0.592265,
		-0.897569, 0.273403, 0.345862,
		0.440540, 0.525664, 0.727738,
		31.755840, 20.814747, 29.753904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194614, 21.115187, 29.104822>,  <31.447462, 20.446781, 29.244488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194614, 21.115187, 29.104822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514162, 21.199997, 29.329983>,  <31.705891, 21.250883, 29.465078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.514162, 21.199997, 29.329983>,  <31.194614, 21.115187, 29.104822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514162, 21.199997, 29.329983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106872, 0.870893, -0.479711,
		-0.591937, 0.443384, 0.673068,
		0.798867, 0.212027, 0.562900,
		31.753822, 21.263605, 29.498852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997435, 21.694654, 29.450750>,  <31.194614, 21.115187, 29.104822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997435, 21.694654, 29.450750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397358, 21.689255, 29.456474>,  <31.637312, 21.686014, 29.459908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.397358, 21.689255, 29.456474>,  <30.997435, 21.694654, 29.450750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397358, 21.689255, 29.456474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018629, 0.883341, -0.468361,
		-0.006317, 0.468537, 0.883421,
		0.999807, -0.013499, 0.014308,
		31.697300, 21.685205, 29.460766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205021, 22.434790, 29.698452>,  <30.997435, 21.694654, 29.450750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205021, 22.434790, 29.698452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524864, 22.286812, 29.509235>,  <31.716770, 22.198025, 29.395704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524864, 22.286812, 29.509235>,  <31.205021, 22.434790, 29.698452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524864, 22.286812, 29.509235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083431, 0.848516, -0.522552,
		0.594699, 0.378370, 0.709344,
		0.799607, -0.369943, -0.473044,
		31.764746, 22.175829, 29.367323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616831, 22.930788, 29.768490>,  <31.205021, 22.434790, 29.698452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616831, 22.930788, 29.768490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755449, 22.720474, 29.457760>,  <31.838619, 22.594286, 29.271322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755449, 22.720474, 29.457760>,  <31.616831, 22.930788, 29.768490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755449, 22.720474, 29.457760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022698, 0.823201, -0.567296,
		0.937759, 0.214225, 0.273342,
		0.346544, -0.525783, -0.776827,
		31.859413, 22.562740, 29.224712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066402, 23.364405, 29.482590>,  <31.616831, 22.930788, 29.768490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066402, 23.364405, 29.482590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021011, 23.100796, 29.185184>,  <31.993778, 22.942631, 29.006742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021011, 23.100796, 29.185184>,  <32.066402, 23.364405, 29.482590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021011, 23.100796, 29.185184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150419, 0.728324, -0.668519,
		0.982089, -0.187697, 0.016485,
		-0.113473, -0.659025, -0.743512,
		31.986969, 22.903088, 28.962132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547733, 23.357880, 28.981356>,  <32.066402, 23.364405, 29.482590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547733, 23.357880, 28.981356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263050, 23.176243, 28.766964>,  <32.092239, 23.067261, 28.638329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263050, 23.176243, 28.766964>,  <32.547733, 23.357880, 28.981356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263050, 23.176243, 28.766964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191232, 0.608929, -0.769828,
		0.675950, -0.650386, -0.346540,
		-0.711704, -0.454095, -0.535980,
		32.049538, 23.040014, 28.606171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932549, 23.313946, 28.506084>,  <32.547733, 23.357880, 28.981356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932549, 23.313946, 28.506084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544216, 23.273014, 28.419350>,  <32.311218, 23.248455, 28.367310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544216, 23.273014, 28.419350>,  <32.932549, 23.313946, 28.506084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544216, 23.273014, 28.419350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085317, 0.697732, -0.711260,
		0.224076, -0.709013, -0.668649,
		-0.970830, -0.102329, -0.216836,
		32.252968, 23.242315, 28.354300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920780, 23.356995, 27.851795>,  <32.932549, 23.313946, 28.506084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920780, 23.356995, 27.851795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540577, 23.434219, 27.949165>,  <32.312454, 23.480555, 28.007587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.540577, 23.434219, 27.949165>,  <32.920780, 23.356995, 27.851795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540577, 23.434219, 27.949165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023088, 0.825226, -0.564330,
		-0.309832, -0.530782, -0.788844,
		-0.950511, 0.193061, 0.243427,
		32.255424, 23.492138, 28.022194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628185, 23.535616, 27.288090>,  <32.920780, 23.356995, 27.851795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628185, 23.535616, 27.288090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370358, 23.686317, 27.554199>,  <32.215660, 23.776737, 27.713865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370358, 23.686317, 27.554199>,  <32.628185, 23.535616, 27.288090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370358, 23.686317, 27.554199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030729, 0.882218, -0.469837,
		-0.763929, -0.282399, -0.580227,
		-0.644568, 0.376752, 0.665274,
		32.176987, 23.799343, 27.753782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137394, 23.954460, 26.891129>,  <32.628185, 23.535616, 27.288090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137394, 23.954460, 26.891129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.103497, 24.080654, 27.269184>,  <32.083160, 24.156370, 27.496017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.103497, 24.080654, 27.269184>,  <32.137394, 23.954460, 26.891129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103497, 24.080654, 27.269184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000671, 0.948534, -0.316676,
		-0.996403, -0.027469, -0.080166,
		-0.084739, 0.315483, 0.945140,
		32.078075, 24.175299, 27.552727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.175180, 38.171036, 15.697306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.421186, 38.292255, 15.988488>,  <25.568790, 38.364986, 16.163198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.421186, 38.292255, 15.988488>,  <25.175180, 38.171036, 15.697306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421186, 38.292255, 15.988488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148225, -0.862309, 0.484203,
		0.774460, -0.405693, -0.485412,
		0.615013, 0.303046, 0.727957,
		25.605690, 38.383167, 16.206875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493727, 37.579121, 15.901641>,  <25.175180, 38.171036, 15.697306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493727, 37.579121, 15.901641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.589703, 37.821751, 16.204823>,  <25.647287, 37.967327, 16.386732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.589703, 37.821751, 16.204823>,  <25.493727, 37.579121, 15.901641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589703, 37.821751, 16.204823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143208, -0.750104, 0.645628,
		0.960167, -0.263456, -0.093112,
		0.239938, 0.606576, 0.757954,
		25.661684, 38.003723, 16.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023243, 37.187954, 16.322935>,  <25.493727, 37.579121, 15.901641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023243, 37.187954, 16.322935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.831177, 37.464520, 16.538857>,  <25.715937, 37.630459, 16.668409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.831177, 37.464520, 16.538857>,  <26.023243, 37.187954, 16.322935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831177, 37.464520, 16.538857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216927, -0.689867, 0.690671,
		0.849933, 0.214537, 0.481235,
		-0.480163, 0.691417, 0.539802,
		25.687128, 37.671944, 16.700796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320852, 37.133190, 16.926733>,  <26.023243, 37.187954, 16.322935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320852, 37.133190, 16.926733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.993889, 37.341991, 17.024185>,  <25.797710, 37.467274, 17.082657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.993889, 37.341991, 17.024185>,  <26.320852, 37.133190, 16.926733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993889, 37.341991, 17.024185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062776, -0.501124, 0.863096,
		0.572629, 0.690207, 0.442392,
		-0.817408, 0.522005, 0.243630,
		25.748667, 37.498592, 17.097275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561007, 37.463223, 17.656607>,  <26.320852, 37.133190, 16.926733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561007, 37.463223, 17.656607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.161989, 37.466751, 17.628807>,  <25.922579, 37.468868, 17.612127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.161989, 37.466751, 17.628807>,  <26.561007, 37.463223, 17.656607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161989, 37.466751, 17.628807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060617, -0.606019, 0.793137,
		-0.035122, 0.795401, 0.605065,
		-0.997543, 0.008821, -0.069499,
		25.862726, 37.469398, 17.607958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301399, 37.338207, 18.287998>,  <26.561007, 37.463223, 17.656607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301399, 37.338207, 18.287998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.957037, 37.262478, 18.099110>,  <25.750420, 37.217041, 17.985777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.957037, 37.262478, 18.099110>,  <26.301399, 37.338207, 18.287998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957037, 37.262478, 18.099110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270655, -0.615505, 0.740202,
		-0.430796, 0.765055, 0.478650,
		-0.860907, -0.189327, -0.472223,
		25.698765, 37.205681, 17.957443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687611, 37.531132, 18.726526>,  <26.301399, 37.338207, 18.287998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687611, 37.531132, 18.726526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559990, 37.254089, 18.467758>,  <25.483418, 37.087864, 18.312498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.559990, 37.254089, 18.467758>,  <25.687611, 37.531132, 18.726526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559990, 37.254089, 18.467758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374413, -0.534955, 0.757389,
		-0.870644, 0.483862, -0.088642,
		-0.319052, -0.692605, -0.646919,
		25.464273, 37.046307, 18.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015919, 37.410782, 18.948418>,  <25.687611, 37.531132, 18.726526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015919, 37.410782, 18.948418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.088369, 37.088154, 18.723335>,  <25.131840, 36.894577, 18.588285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.088369, 37.088154, 18.723335>,  <25.015919, 37.410782, 18.948418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088369, 37.088154, 18.723335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476376, -0.572519, 0.667299,
		-0.860384, 0.147196, -0.487927,
		0.181124, -0.806570, -0.562707,
		25.142706, 36.846184, 18.554523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357534, 37.088238, 18.845667>,  <25.015919, 37.410782, 18.948418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357534, 37.088238, 18.845667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.654984, 36.823471, 18.807945>,  <24.833452, 36.664612, 18.785313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.654984, 36.823471, 18.807945>,  <24.357534, 37.088238, 18.845667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.654984, 36.823471, 18.807945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451833, -0.601474, 0.658844,
		-0.492819, -0.447324, -0.746345,
		0.743624, -0.661914, -0.094302,
		24.878071, 36.624897, 18.779654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.015348, 36.548286, 18.914764>,  <24.357534, 37.088238, 18.845667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.015348, 36.548286, 18.914764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.392527, 36.415203, 18.919777>,  <24.618834, 36.335354, 18.922785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.392527, 36.415203, 18.919777>,  <24.015348, 36.548286, 18.914764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392527, 36.415203, 18.919777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264705, -0.726318, 0.634345,
		-0.201953, -0.601470, -0.772948,
		0.942945, -0.332711, 0.012531,
		24.675411, 36.315392, 18.923536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.922245, 35.776806, 18.866117>,  <24.015348, 36.548286, 18.914764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.922245, 35.776806, 18.866117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259356, 35.894413, 19.046463>,  <24.461622, 35.964977, 19.154671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.259356, 35.894413, 19.046463>,  <23.922245, 35.776806, 18.866117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259356, 35.894413, 19.046463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247425, -0.532274, 0.809608,
		0.478027, -0.793874, -0.375839,
		0.842776, 0.294023, 0.450865,
		24.512188, 35.982620, 19.181723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.049929, 35.176819, 19.206503>,  <23.922245, 35.776806, 18.866117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.049929, 35.176819, 19.206503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.286400, 35.453983, 19.371609>,  <24.428284, 35.620281, 19.470673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.286400, 35.453983, 19.371609>,  <24.049929, 35.176819, 19.206503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286400, 35.453983, 19.371609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186201, -0.380695, 0.905760,
		0.784752, -0.612324, -0.096038,
		0.591179, 0.692915, 0.412767,
		24.463753, 35.661858, 19.495440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.242588, 34.857273, 19.731848>,  <24.049929, 35.176819, 19.206503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.242588, 34.857273, 19.731848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310501, 35.243187, 19.812218>,  <24.351250, 35.474735, 19.860439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.310501, 35.243187, 19.812218>,  <24.242588, 34.857273, 19.731848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310501, 35.243187, 19.812218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255482, -0.153826, 0.954498,
		0.951789, -0.213390, 0.220367,
		0.169782, 0.964781, 0.200927,
		24.361435, 35.532619, 19.872496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692089, 34.819221, 20.265463>,  <24.242588, 34.857273, 19.731848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692089, 34.819221, 20.265463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.517939, 35.179291, 20.270172>,  <24.413448, 35.395332, 20.272997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.517939, 35.179291, 20.270172>,  <24.692089, 34.819221, 20.265463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517939, 35.179291, 20.270172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098982, -0.060863, 0.993226,
		0.894791, 0.431261, 0.115599,
		-0.435375, 0.900172, 0.011772,
		24.387325, 35.449341, 20.273705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927942, 35.101322, 20.844759>,  <24.692089, 34.819221, 20.265463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927942, 35.101322, 20.844759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.626625, 35.355042, 20.775227>,  <24.445835, 35.507275, 20.733507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.626625, 35.355042, 20.775227>,  <24.927942, 35.101322, 20.844759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626625, 35.355042, 20.775227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181879, 0.053089, 0.981887,
		0.632038, 0.771263, 0.075374,
		-0.753291, 0.634299, -0.173831,
		24.400639, 35.545330, 20.723078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963888, 35.534706, 21.470768>,  <24.927942, 35.101322, 20.844759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963888, 35.534706, 21.470768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600796, 35.579048, 21.308910>,  <24.382940, 35.605652, 21.211796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600796, 35.579048, 21.308910>,  <24.963888, 35.534706, 21.470768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600796, 35.579048, 21.308910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399367, 0.067269, 0.914320,
		0.128574, 0.991558, -0.016792,
		-0.907730, 0.110852, -0.404645,
		24.328476, 35.612305, 21.187517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610666, 35.935558, 21.831825>,  <24.963888, 35.534706, 21.470768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610666, 35.935558, 21.831825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297470, 35.771088, 21.645123>,  <24.109552, 35.672405, 21.533102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297470, 35.771088, 21.645123>,  <24.610666, 35.935558, 21.831825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297470, 35.771088, 21.645123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537437, 0.069376, 0.840445,
		-0.313191, 0.908912, -0.275303,
		-0.782990, -0.411177, -0.466755,
		24.062572, 35.647736, 21.505096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123131, 36.338558, 22.000731>,  <24.610666, 35.935558, 21.831825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123131, 36.338558, 22.000731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.953703, 35.989647, 21.902973>,  <23.852047, 35.780300, 21.844318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.953703, 35.989647, 21.902973>,  <24.123131, 36.338558, 22.000731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953703, 35.989647, 21.902973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501894, 0.001380, 0.864928,
		-0.754117, 0.489016, -0.438374,
		-0.423568, -0.872274, -0.244393,
		23.826632, 35.727966, 21.829655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.502897, 36.502190, 22.216005>,  <24.123131, 36.338558, 22.000731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.502897, 36.502190, 22.216005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.535978, 36.104721, 22.185627>,  <23.555828, 35.866238, 22.167400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.535978, 36.104721, 22.185627>,  <23.502897, 36.502190, 22.216005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.535978, 36.104721, 22.185627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500103, -0.107298, 0.859293,
		-0.862008, -0.033087, -0.505814,
		0.082705, -0.993676, -0.075944,
		23.560789, 35.806618, 22.162844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825737, 36.191635, 22.242126>,  <23.502897, 36.502190, 22.216005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825737, 36.191635, 22.242126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.079147, 35.902245, 22.351830>,  <23.231194, 35.728611, 22.417652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.079147, 35.902245, 22.351830>,  <22.825737, 36.191635, 22.242126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.079147, 35.902245, 22.351830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637512, -0.287244, 0.714891,
		-0.438432, -0.627746, -0.643205,
		0.633527, -0.723482, 0.274258,
		23.269205, 35.685200, 22.434107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.468386, 35.710339, 22.406828>,  <22.825737, 36.191635, 22.242126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.468386, 35.710339, 22.406828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.808645, 35.684490, 22.615528>,  <23.012800, 35.668980, 22.740747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.808645, 35.684490, 22.615528>,  <22.468386, 35.710339, 22.406828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.808645, 35.684490, 22.615528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519179, 0.052994, 0.853021,
		-0.082778, -0.996501, 0.011526,
		0.850647, -0.064628, 0.521750,
		23.063839, 35.665104, 22.772053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779112, 35.708290, 22.186541>,  <22.468386, 35.710339, 22.406828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779112, 35.708290, 22.186541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.454243, 35.933983, 22.245892>,  <21.259321, 36.069401, 22.281502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.454243, 35.933983, 22.245892>,  <21.779112, 35.708290, 22.186541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.454243, 35.933983, 22.245892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070016, 0.158225, -0.984917,
		-0.579203, -0.810310, -0.089000,
		-0.812171, 0.564235, 0.148379,
		21.210590, 36.103252, 22.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293783, 35.572525, 21.695131>,  <21.779112, 35.708290, 22.186541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293783, 35.572525, 21.695131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198833, 35.943062, 21.812126>,  <21.141865, 36.165382, 21.882322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.198833, 35.943062, 21.812126>,  <21.293783, 35.572525, 21.695131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198833, 35.943062, 21.812126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091465, 0.278440, -0.956089,
		-0.967103, -0.253701, 0.018633,
		-0.237373, 0.926341, 0.292485,
		21.127621, 36.220963, 21.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654001, 35.768387, 21.295738>,  <21.293783, 35.572525, 21.695131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654001, 35.768387, 21.295738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840843, 36.095016, 21.431396>,  <20.952950, 36.290993, 21.512791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840843, 36.095016, 21.431396>,  <20.654001, 35.768387, 21.295738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840843, 36.095016, 21.431396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050186, 0.407427, -0.911858,
		-0.882775, 0.408915, 0.231293,
		0.467107, 0.816573, 0.339145,
		20.980976, 36.339989, 21.533140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331179, 36.300610, 20.942808>,  <20.654001, 35.768387, 21.295738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331179, 36.300610, 20.942808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670084, 36.477009, 21.061245>,  <20.873426, 36.582848, 21.132307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670084, 36.477009, 21.061245>,  <20.331179, 36.300610, 20.942808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670084, 36.477009, 21.061245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128670, 0.370434, -0.919903,
		-0.515355, 0.817498, 0.257112,
		0.847262, 0.440994, 0.296093,
		20.924263, 36.609306, 21.150072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198389, 36.972633, 20.744184>,  <20.331179, 36.300610, 20.942808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198389, 36.972633, 20.744184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.595051, 36.926342, 20.766914>,  <20.833048, 36.898567, 20.780552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.595051, 36.926342, 20.766914>,  <20.198389, 36.972633, 20.744184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595051, 36.926342, 20.766914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102358, 0.438742, -0.892764,
		0.078387, 0.891129, 0.446926,
		0.991654, -0.115727, 0.056823,
		20.892548, 36.891624, 20.783960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.418720, 37.709206, 20.503130>,  <20.198389, 36.972633, 20.744184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.418720, 37.709206, 20.503130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.715719, 37.444176, 20.463741>,  <20.893919, 37.285156, 20.440109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.715719, 37.444176, 20.463741>,  <20.418720, 37.709206, 20.503130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715719, 37.444176, 20.463741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276165, 0.436717, -0.856161,
		0.610273, 0.608502, 0.507240,
		0.742496, -0.662574, -0.098470,
		20.938467, 37.245403, 20.434200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.011017, 38.167324, 20.236734>,  <20.418720, 37.709206, 20.503130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.011017, 38.167324, 20.236734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.119053, 37.787556, 20.172676>,  <21.183874, 37.559692, 20.134241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.119053, 37.787556, 20.172676>,  <21.011017, 38.167324, 20.236734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119053, 37.787556, 20.172676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428814, 0.267535, -0.862869,
		0.862074, 0.164378, 0.479384,
		0.270089, -0.949423, -0.160148,
		21.200079, 37.502728, 20.124632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750364, 38.039265, 20.231125>,  <21.011017, 38.167324, 20.236734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750364, 38.039265, 20.231125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604910, 37.745758, 20.001568>,  <21.517637, 37.569653, 19.863834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.604910, 37.745758, 20.001568>,  <21.750364, 38.039265, 20.231125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604910, 37.745758, 20.001568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533211, 0.341208, -0.774121,
		0.763843, -0.587503, 0.267179,
		-0.363635, -0.733769, -0.573892,
		21.495819, 37.525627, 19.829401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.256313, 37.773125, 19.718380>,  <21.750364, 38.039265, 20.231125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.256313, 37.773125, 19.718380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958609, 37.593460, 19.520660>,  <21.779985, 37.485661, 19.402029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958609, 37.593460, 19.520660>,  <22.256313, 37.773125, 19.718380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958609, 37.593460, 19.520660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497707, 0.120543, -0.858928,
		0.445378, -0.885284, 0.133832,
		-0.744262, -0.449157, -0.494299,
		21.735331, 37.458714, 19.372372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572975, 37.338356, 19.201786>,  <22.256313, 37.773125, 19.718380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572975, 37.338356, 19.201786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.203251, 37.397835, 19.061195>,  <21.981417, 37.433521, 18.976841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.203251, 37.397835, 19.061195>,  <22.572975, 37.338356, 19.201786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.203251, 37.397835, 19.061195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365808, 0.082714, -0.927008,
		-0.108769, -0.985418, -0.130847,
		-0.924313, 0.148695, -0.351477,
		21.925957, 37.442444, 18.955751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621483, 37.012123, 18.562397>,  <22.572975, 37.338356, 19.201786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621483, 37.012123, 18.562397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.309826, 37.260635, 18.529049>,  <22.122831, 37.409744, 18.509041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.309826, 37.260635, 18.529049>,  <22.621483, 37.012123, 18.562397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.309826, 37.260635, 18.529049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382961, 0.366482, -0.847957,
		-0.496266, -0.692605, -0.523468,
		-0.779141, 0.621280, -0.083368,
		22.076084, 37.447018, 18.504038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.505573, 36.968292, 17.943096>,  <22.621483, 37.012123, 18.562397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.505573, 36.968292, 17.943096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.276516, 37.282036, 18.038475>,  <22.139082, 37.470284, 18.095703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.276516, 37.282036, 18.038475>,  <22.505573, 36.968292, 17.943096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.276516, 37.282036, 18.038475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219877, 0.427151, -0.877038,
		-0.789767, -0.449803, -0.417069,
		-0.572645, 0.784359, 0.238449,
		22.104723, 37.517345, 18.110010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935862, 37.027866, 17.491959>,  <22.505573, 36.968292, 17.943096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935862, 37.027866, 17.491959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.004776, 37.399765, 17.622120>,  <22.046125, 37.622906, 17.700216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.004776, 37.399765, 17.622120>,  <21.935862, 37.027866, 17.491959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.004776, 37.399765, 17.622120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230198, 0.283193, -0.931027,
		-0.957772, 0.235310, -0.165236,
		0.172287, 0.929748, 0.325402,
		22.056461, 37.678688, 17.719740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.596081, 37.653358, 17.041534>,  <21.935862, 37.027866, 17.491959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.596081, 37.653358, 17.041534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925255, 37.779583, 17.230511>,  <22.122759, 37.855320, 17.343897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925255, 37.779583, 17.230511>,  <21.596081, 37.653358, 17.041534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925255, 37.779583, 17.230511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309782, 0.447841, -0.838733,
		-0.476252, 0.836575, 0.270787,
		0.822933, 0.315563, 0.472441,
		22.172134, 37.874252, 17.372244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.655306, 38.280949, 16.856819>,  <21.596081, 37.653358, 17.041534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.655306, 38.280949, 16.856819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.026859, 38.208717, 16.986164>,  <22.249792, 38.165379, 17.063770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.026859, 38.208717, 16.986164>,  <21.655306, 38.280949, 16.856819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.026859, 38.208717, 16.986164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365122, 0.592892, -0.717750,
		-0.062110, 0.784775, 0.616661,
		0.928886, -0.180577, 0.323363,
		22.305525, 38.154545, 17.083174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.009459, 39.008633, 16.837460>,  <21.655306, 38.280949, 16.856819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.009459, 39.008633, 16.837460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295715, 38.729290, 16.832394>,  <22.467468, 38.561684, 16.829353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.295715, 38.729290, 16.832394>,  <22.009459, 39.008633, 16.837460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.295715, 38.729290, 16.832394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521083, 0.545882, -0.656115,
		0.465114, 0.462943, 0.754555,
		0.715641, -0.698353, -0.012665,
		22.510408, 38.519783, 16.828594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.553600, 39.439850, 16.994413>,  <22.009459, 39.008633, 16.837460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.553600, 39.439850, 16.994413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.677963, 39.082680, 16.864174>,  <22.752581, 38.868378, 16.786030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.677963, 39.082680, 16.864174>,  <22.553600, 39.439850, 16.994413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677963, 39.082680, 16.864174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703893, 0.446521, -0.552407,
		0.638647, -0.057440, 0.767353,
		0.310909, -0.892927, -0.325601,
		22.771236, 38.814800, 16.766493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.331221, 39.490593, 16.924858>,  <22.553600, 39.439850, 16.994413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.331221, 39.490593, 16.924858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194731, 39.201920, 16.683949>,  <23.112837, 39.028713, 16.539402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.194731, 39.201920, 16.683949>,  <23.331221, 39.490593, 16.924858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194731, 39.201920, 16.683949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641660, 0.289386, -0.710301,
		0.686905, -0.628826, 0.364333,
		-0.341223, -0.721687, -0.602274,
		23.092363, 38.985413, 16.503267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938488, 39.283688, 16.694592>,  <23.331221, 39.490593, 16.924858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938488, 39.283688, 16.694592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.666689, 39.158871, 16.428986>,  <23.503611, 39.083981, 16.269621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.666689, 39.158871, 16.428986>,  <23.938488, 39.283688, 16.694592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.666689, 39.158871, 16.428986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622612, 0.233534, -0.746871,
		0.388123, -0.920920, 0.035594,
		-0.679495, -0.312039, -0.664016,
		23.462841, 39.065258, 16.229780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333246, 38.878986, 16.171844>,  <23.938488, 39.283688, 16.694592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333246, 38.878986, 16.171844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.981565, 38.950226, 15.995080>,  <23.770557, 38.992970, 15.889022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.981565, 38.950226, 15.995080>,  <24.333246, 38.878986, 16.171844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.981565, 38.950226, 15.995080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468893, 0.158895, -0.868845,
		-0.084524, -0.971098, -0.223211,
		-0.879202, 0.178100, -0.441911,
		23.717806, 39.003654, 15.862507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.363729, 38.534729, 15.483239>,  <24.333246, 38.878986, 16.171844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.363729, 38.534729, 15.483239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.058788, 38.787342, 15.426692>,  <23.875824, 38.938911, 15.392764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.058788, 38.787342, 15.426692>,  <24.363729, 38.534729, 15.483239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.058788, 38.787342, 15.426692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332132, 0.194317, -0.923000,
		-0.555437, -0.750603, -0.357891,
		-0.762351, 0.631535, -0.141368,
		23.830084, 38.976803, 15.384281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.729454, 27.196077, 24.111757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128349, 27.224312, 24.102558>,  <28.367687, 27.241253, 24.097038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128349, 27.224312, 24.102558>,  <27.729454, 27.196077, 24.111757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128349, 27.224312, 24.102558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069455, 0.777659, -0.624838,
		-0.026221, 0.624711, 0.780416,
		0.997240, 0.070587, -0.022998,
		28.427521, 27.245487, 24.095659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913860, 27.873455, 24.303469>,  <27.729454, 27.196077, 24.111757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913860, 27.873455, 24.303469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227102, 27.719063, 24.108425>,  <28.415047, 27.626427, 23.991398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227102, 27.719063, 24.108425>,  <27.913860, 27.873455, 24.303469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227102, 27.719063, 24.108425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085982, 0.843749, -0.529807,
		0.615917, 0.372969, 0.693931,
		0.783105, -0.385983, -0.487611,
		28.462034, 27.603268, 23.962141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128479, 28.457710, 24.084396>,  <27.913860, 27.873455, 24.303469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128479, 28.457710, 24.084396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346741, 28.200012, 23.870029>,  <28.477697, 28.045393, 23.741409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346741, 28.200012, 23.870029>,  <28.128479, 28.457710, 24.084396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346741, 28.200012, 23.870029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300133, 0.747329, -0.592806,
		0.782418, 0.162622, 0.601145,
		0.545657, -0.644246, -0.535916,
		28.510437, 28.006739, 23.709255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840284, 28.739719, 24.117075>,  <28.128479, 28.457710, 24.084396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840284, 28.739719, 24.117075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781336, 28.516697, 23.790295>,  <28.745966, 28.382883, 23.594227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781336, 28.516697, 23.790295>,  <28.840284, 28.739719, 24.117075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781336, 28.516697, 23.790295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294331, 0.763830, -0.574398,
		0.944273, -0.325104, 0.051540,
		-0.147371, -0.557558, -0.816952,
		28.737123, 28.349430, 23.545210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478827, 28.743946, 23.764971>,  <28.840284, 28.739719, 24.117075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478827, 28.743946, 23.764971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173687, 28.672016, 23.516544>,  <28.990602, 28.628859, 23.367489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173687, 28.672016, 23.516544>,  <29.478827, 28.743946, 23.764971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173687, 28.672016, 23.516544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341429, 0.703674, -0.623113,
		0.549080, -0.687391, -0.475399,
		-0.762848, -0.179824, -0.621068,
		28.944832, 28.618069, 23.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730497, 28.908016, 23.071463>,  <29.478827, 28.743946, 23.764971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730497, 28.908016, 23.071463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334478, 28.915089, 23.015610>,  <29.096867, 28.919333, 22.982098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334478, 28.915089, 23.015610>,  <29.730497, 28.908016, 23.071463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334478, 28.915089, 23.015610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112871, 0.692419, -0.712612,
		0.084083, -0.721279, -0.687522,
		-0.990045, 0.017683, -0.139632,
		29.037464, 28.920393, 22.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694798, 29.280832, 22.428387>,  <29.730497, 28.908016, 23.071463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694798, 29.280832, 22.428387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306414, 29.281570, 22.524082>,  <29.073383, 29.282013, 22.581499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306414, 29.281570, 22.524082>,  <29.694798, 29.280832, 22.428387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306414, 29.281570, 22.524082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141750, 0.801127, -0.581465,
		-0.192734, -0.598491, -0.777600,
		-0.970958, 0.001844, 0.239241,
		29.015125, 29.282124, 22.595854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310783, 29.244530, 21.806906>,  <29.694798, 29.280832, 22.428387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310783, 29.244530, 21.806906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092276, 29.425446, 22.088905>,  <28.961172, 29.533995, 22.258104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092276, 29.425446, 22.088905>,  <29.310783, 29.244530, 21.806906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092276, 29.425446, 22.088905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183120, 0.756831, -0.627434,
		-0.817349, -0.471846, -0.330609,
		-0.546267, 0.452292, 0.705000,
		28.928396, 29.561132, 22.300406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776873, 29.471373, 21.442959>,  <29.310783, 29.244530, 21.806906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776873, 29.471373, 21.442959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743279, 29.689098, 21.776825>,  <28.723122, 29.819735, 21.977144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743279, 29.689098, 21.776825>,  <28.776873, 29.471373, 21.442959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743279, 29.689098, 21.776825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281591, 0.790519, -0.543862,
		-0.955852, -0.280712, 0.086881,
		-0.083987, 0.544316, 0.834665,
		28.718082, 29.852394, 22.027225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118443, 29.892557, 21.287895>,  <28.776873, 29.471373, 21.442959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118443, 29.892557, 21.287895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331348, 30.065411, 21.579086>,  <28.459091, 30.169123, 21.753801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331348, 30.065411, 21.579086>,  <28.118443, 29.892557, 21.287895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331348, 30.065411, 21.579086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135958, 0.892380, -0.430319,
		-0.835589, 0.130068, 0.533734,
		0.532264, 0.432135, 0.727979,
		28.491028, 30.195051, 21.797480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666780, 30.447235, 21.480402>,  <28.118443, 29.892557, 21.287895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666780, 30.447235, 21.480402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040655, 30.531403, 21.595001>,  <28.264980, 30.581903, 21.663761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040655, 30.531403, 21.595001>,  <27.666780, 30.447235, 21.480402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040655, 30.531403, 21.595001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090358, 0.920146, -0.381008,
		-0.343793, 0.330236, 0.879063,
		0.934688, 0.210418, 0.286500,
		28.321062, 30.594528, 21.680952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652107, 31.049997, 21.943153>,  <27.666780, 30.447235, 21.480402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652107, 31.049997, 21.943153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991220, 31.006523, 21.735519>,  <28.194689, 30.980438, 21.610939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991220, 31.006523, 21.735519>,  <27.652107, 31.049997, 21.943153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991220, 31.006523, 21.735519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252416, 0.778110, -0.575179,
		0.466418, 0.618653, 0.632236,
		0.847785, -0.108687, -0.519083,
		28.245556, 30.973917, 21.579794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035952, 31.696726, 22.377388>,  <27.652107, 31.049997, 21.943153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035952, 31.696726, 22.377388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231419, 31.493973, 22.661438>,  <28.348700, 31.372322, 22.831867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231419, 31.493973, 22.661438>,  <28.035952, 31.696726, 22.377388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231419, 31.493973, 22.661438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840809, 0.056328, -0.538393,
		0.232902, 0.860174, 0.453716,
		0.488668, -0.506881, 0.710123,
		28.378019, 31.341908, 22.874475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547165, 32.065128, 22.635368>,  <28.035952, 31.696726, 22.377388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547165, 32.065128, 22.635368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651680, 31.679508, 22.654694>,  <28.714390, 31.448135, 22.666288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651680, 31.679508, 22.654694>,  <28.547165, 32.065128, 22.635368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651680, 31.679508, 22.654694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848264, 0.205447, -0.488098,
		0.460626, 0.168515, 0.871451,
		0.261289, -0.964051, 0.048311,
		28.730066, 31.390293, 22.669188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127220, 32.235313, 23.253618>,  <28.547165, 32.065128, 22.635368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127220, 32.235313, 23.253618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797508, 32.363991, 23.439983>,  <27.599682, 32.441196, 23.551802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797508, 32.363991, 23.439983>,  <28.127220, 32.235313, 23.253618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797508, 32.363991, 23.439983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028385, -0.798384, 0.601479,
		0.565471, 0.509012, 0.648961,
		-0.824280, 0.321698, 0.465911,
		27.550224, 32.460499, 23.579756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237654, 32.482090, 24.002338>,  <28.127220, 32.235313, 23.253618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237654, 32.482090, 24.002338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867052, 32.343575, 23.943451>,  <27.644691, 32.260464, 23.908117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867052, 32.343575, 23.943451>,  <28.237654, 32.482090, 24.002338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867052, 32.343575, 23.943451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136785, -0.674430, 0.725558,
		-0.350543, 0.652095, 0.672229,
		-0.926504, -0.346290, -0.147220,
		27.589100, 32.239689, 23.899284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942751, 32.305370, 24.686068>,  <28.237654, 32.482090, 24.002338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942751, 32.305370, 24.686068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708538, 32.104038, 24.431885>,  <27.568010, 31.983238, 24.279375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708538, 32.104038, 24.431885>,  <27.942751, 32.305370, 24.686068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708538, 32.104038, 24.431885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035978, -0.799252, 0.599918,
		-0.809849, 0.328409, 0.486098,
		-0.585534, -0.503332, -0.635458,
		27.532879, 31.953039, 24.241247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817017, 31.847950, 25.103577>,  <27.942751, 32.305370, 24.686068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817017, 31.847950, 25.103577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644949, 31.678604, 24.784649>,  <27.541708, 31.576998, 24.593292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644949, 31.678604, 24.784649>,  <27.817017, 31.847950, 25.103577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644949, 31.678604, 24.784649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080261, -0.861779, 0.500893,
		-0.899173, 0.279463, 0.336732,
		-0.430170, -0.423363, -0.797319,
		27.515898, 31.551596, 24.545454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125532, 31.601004, 25.304565>,  <27.817017, 31.847950, 25.103577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125532, 31.601004, 25.304565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231058, 31.386566, 24.983814>,  <27.294374, 31.257904, 24.791365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231058, 31.386566, 24.983814>,  <27.125532, 31.601004, 25.304565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231058, 31.386566, 24.983814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351521, -0.827592, 0.437636,
		-0.898240, 0.166422, -0.406778,
		0.263814, -0.536093, -0.801876,
		27.310202, 31.225739, 24.743252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609129, 31.233936, 25.014114>,  <27.125532, 31.601004, 25.304565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609129, 31.233936, 25.014114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912479, 31.023296, 24.860458>,  <27.094490, 30.896914, 24.768265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912479, 31.023296, 24.860458>,  <26.609129, 31.233936, 25.014114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912479, 31.023296, 24.860458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439677, -0.848347, 0.294943,
		-0.481199, -0.054780, -0.874898,
		0.758374, -0.526599, -0.384138,
		27.139992, 30.865316, 24.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333115, 30.567736, 24.732965>,  <26.609129, 31.233936, 25.014114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333115, 30.567736, 24.732965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722166, 30.503628, 24.800266>,  <26.955597, 30.465162, 24.840647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722166, 30.503628, 24.800266>,  <26.333115, 30.567736, 24.732965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722166, 30.503628, 24.800266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208223, -0.922536, 0.324916,
		0.103144, -0.351056, -0.930656,
		0.972628, -0.160271, 0.168252,
		27.013954, 30.455547, 24.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536409, 29.990913, 24.384882>,  <26.333115, 30.567736, 24.732965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536409, 29.990913, 24.384882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829172, 29.993027, 24.657436>,  <27.004829, 29.994295, 24.820969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829172, 29.993027, 24.657436>,  <26.536409, 29.990913, 24.384882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829172, 29.993027, 24.657436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161856, -0.970002, 0.181379,
		0.661904, -0.243039, -0.709094,
		0.731905, 0.005285, 0.681386,
		27.048744, 29.994612, 24.861853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789141, 29.310059, 24.263123>,  <26.536409, 29.990913, 24.384882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789141, 29.310059, 24.263123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966927, 29.438522, 24.597622>,  <27.073597, 29.515600, 24.798321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966927, 29.438522, 24.597622>,  <26.789141, 29.310059, 24.263123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966927, 29.438522, 24.597622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026254, -0.928452, 0.370524,
		0.895412, -0.186639, -0.404230,
		0.444463, 0.321159, 0.836247,
		27.100266, 29.534870, 24.848495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239750, 28.648825, 24.500195>,  <26.789141, 29.310059, 24.263123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239750, 28.648825, 24.500195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200434, 28.888214, 24.818230>,  <27.176844, 29.031849, 25.009050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200434, 28.888214, 24.818230>,  <27.239750, 28.648825, 24.500195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200434, 28.888214, 24.818230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040962, -0.795848, 0.604110,
		0.994315, 0.091945, 0.053707,
		-0.098288, 0.598475, 0.795089,
		27.170948, 29.067757, 25.056757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792927, 28.445362, 24.954985>,  <27.239750, 28.648825, 24.500195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792927, 28.445362, 24.954985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505856, 28.619202, 25.172630>,  <27.333612, 28.723505, 25.303217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505856, 28.619202, 25.172630>,  <27.792927, 28.445362, 24.954985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505856, 28.619202, 25.172630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104093, -0.705624, 0.700899,
		0.688549, 0.559660, 0.461174,
		-0.717680, 0.434598, 0.544114,
		27.290552, 28.749580, 25.335865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034492, 28.450470, 25.558203>,  <27.792927, 28.445362, 24.954985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034492, 28.450470, 25.558203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643700, 28.500717, 25.627167>,  <27.409224, 28.530865, 25.668545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643700, 28.500717, 25.627167>,  <28.034492, 28.450470, 25.558203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643700, 28.500717, 25.627167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062088, -0.605776, 0.793209,
		0.204082, 0.785656, 0.584034,
		-0.976983, 0.125618, 0.172408,
		27.350605, 28.538403, 25.678888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032761, 28.472387, 26.259869>,  <28.034492, 28.450470, 25.558203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032761, 28.472387, 26.259869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655310, 28.388432, 26.157486>,  <27.428839, 28.338058, 26.096056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655310, 28.388432, 26.157486>,  <28.032761, 28.472387, 26.259869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655310, 28.388432, 26.157486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039714, -0.695889, 0.717050,
		-0.328617, 0.686794, 0.648325,
		-0.943628, -0.209888, -0.255956,
		27.372221, 28.325466, 26.080700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782587, 28.459604, 26.885950>,  <28.032761, 28.472387, 26.259869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782587, 28.459604, 26.885950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486216, 28.309490, 26.663174>,  <27.308392, 28.219421, 26.529507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486216, 28.309490, 26.663174>,  <27.782587, 28.459604, 26.885950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486216, 28.309490, 26.663174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186913, -0.681300, 0.707739,
		-0.645047, 0.628485, 0.434651,
		-0.740930, -0.375283, -0.556942,
		27.263937, 28.196905, 26.496092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636660, 29.132280, 27.419636>,  <27.782587, 28.459604, 26.885950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636660, 29.132280, 27.419636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672300, 29.345295, 27.756317>,  <27.693686, 29.473104, 27.958326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672300, 29.345295, 27.756317>,  <27.636660, 29.132280, 27.419636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672300, 29.345295, 27.756317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182845, 0.821958, -0.539400,
		-0.979096, 0.201964, -0.024132,
		0.089104, 0.532536, 0.841704,
		27.699032, 29.505056, 28.008829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421562, 29.797697, 27.249931>,  <27.636660, 29.132280, 27.419636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421562, 29.797697, 27.249931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647591, 29.859692, 27.574074>,  <27.783209, 29.896889, 27.768559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647591, 29.859692, 27.574074>,  <27.421562, 29.797697, 27.249931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647591, 29.859692, 27.574074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338699, 0.852040, -0.399137,
		-0.752314, 0.500008, 0.428971,
		0.565072, 0.154984, 0.810354,
		27.817112, 29.906187, 27.817181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234331, 30.384363, 27.487741>,  <27.421562, 29.797697, 27.249931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234331, 30.384363, 27.487741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615934, 30.329418, 27.594322>,  <27.844896, 30.296452, 27.658272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615934, 30.329418, 27.594322>,  <27.234331, 30.384363, 27.487741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615934, 30.329418, 27.594322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199742, 0.954062, -0.223314,
		-0.223538, 0.266266, 0.937621,
		0.954009, -0.137363, 0.266454,
		27.902138, 30.288210, 27.674259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370455, 30.993950, 27.886980>,  <27.234331, 30.384363, 27.487741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370455, 30.993950, 27.886980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746260, 30.878403, 27.813358>,  <27.971743, 30.809074, 27.769186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746260, 30.878403, 27.813358>,  <27.370455, 30.993950, 27.886980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746260, 30.878403, 27.813358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285260, 0.957327, -0.046383,
		0.189598, -0.008926, 0.981821,
		0.939510, -0.288868, -0.184054,
		28.028112, 30.791742, 27.758142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796564, 31.295099, 28.372465>,  <27.370455, 30.993950, 27.886980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796564, 31.295099, 28.372465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039072, 31.205341, 28.067287>,  <28.184576, 31.151487, 27.884180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039072, 31.205341, 28.067287>,  <27.796564, 31.295099, 28.372465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039072, 31.205341, 28.067287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381863, 0.923672, 0.031778,
		0.697579, -0.310606, 0.645684,
		0.606271, -0.224395, -0.762943,
		28.220953, 31.138023, 27.838404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526608, 31.563068, 28.550562>,  <27.796564, 31.295099, 28.372465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526608, 31.563068, 28.550562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495750, 31.534870, 28.152752>,  <28.477236, 31.517950, 27.914066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495750, 31.534870, 28.152752>,  <28.526608, 31.563068, 28.550562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495750, 31.534870, 28.152752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415549, 0.904454, -0.096346,
		0.906294, -0.420706, -0.040479,
		-0.077144, -0.070497, -0.994525,
		28.472607, 31.513721, 27.854395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155077, 32.031181, 28.291315>,  <28.526608, 31.563068, 28.550562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155077, 32.031181, 28.291315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940430, 31.969376, 27.959492>,  <28.811642, 31.932291, 27.760397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940430, 31.969376, 27.959492>,  <29.155077, 32.031181, 28.291315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940430, 31.969376, 27.959492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335512, 0.862971, -0.377775,
		0.774258, -0.481047, -0.411241,
		-0.536617, -0.154519, -0.829558,
		28.779444, 31.923019, 27.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649822, 32.262081, 27.747583>,  <29.155077, 32.031181, 28.291315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649822, 32.262081, 27.747583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297951, 32.274780, 27.557781>,  <29.086828, 32.282402, 27.443899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297951, 32.274780, 27.557781>,  <29.649822, 32.262081, 27.747583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297951, 32.274780, 27.557781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344341, 0.730716, -0.589476,
		0.328012, -0.681942, -0.653730,
		-0.879680, 0.031751, -0.474505,
		29.034046, 32.284306, 27.415430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830343, 32.426300, 27.005672>,  <29.649822, 32.262081, 27.747583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830343, 32.426300, 27.005672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442736, 32.513153, 27.052753>,  <29.210171, 32.565266, 27.081001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442736, 32.513153, 27.052753>,  <29.830343, 32.426300, 27.005672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442736, 32.513153, 27.052753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089093, 0.751777, -0.653371,
		-0.230354, -0.622643, -0.747832,
		-0.969020, 0.217133, 0.117702,
		29.152029, 32.578293, 27.088064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516777, 32.363258, 26.258461>,  <29.830343, 32.426300, 27.005672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516777, 32.363258, 26.258461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305187, 32.608185, 26.493496>,  <29.178234, 32.755142, 26.634516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305187, 32.608185, 26.493496>,  <29.516777, 32.363258, 26.258461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305187, 32.608185, 26.493496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052321, 0.714601, -0.697573,
		-0.847025, -0.338254, -0.410041,
		-0.528973, 0.612315, 0.587587,
		29.146496, 32.791878, 26.669771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162048, 32.756687, 25.812075>,  <29.516777, 32.363258, 26.258461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162048, 32.756687, 25.812075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156252, 32.974880, 26.147274>,  <29.152775, 33.105797, 26.348394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156252, 32.974880, 26.147274>,  <29.162048, 32.756687, 25.812075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156252, 32.974880, 26.147274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139464, 0.830997, -0.538511,
		-0.990121, 0.109068, -0.088116,
		-0.014490, 0.545481, 0.837998,
		29.151905, 33.138523, 26.398674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722729, 33.372471, 25.701672>,  <29.162048, 32.756687, 25.812075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722729, 33.372471, 25.701672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004839, 33.434635, 25.978348>,  <29.174105, 33.471931, 26.144354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004839, 33.434635, 25.978348>,  <28.722729, 33.372471, 25.701672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004839, 33.434635, 25.978348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166514, 0.912068, -0.374706,
		-0.689101, 0.379447, 0.617381,
		0.705275, 0.155408, 0.691691,
		29.216421, 33.481258, 26.185856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.550472, 26.734383, 30.545601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.895552, 26.905499, 30.653488>,  <27.102600, 27.008167, 30.718220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.895552, 26.905499, 30.653488>,  <26.550472, 26.734383, 30.545601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895552, 26.905499, 30.653488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312720, 0.870402, -0.380273,
		-0.397438, 0.243715, 0.884673,
		0.862699, 0.427789, 0.269716,
		27.154362, 27.033834, 30.734404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427238, 27.408335, 30.857954>,  <26.550472, 26.734383, 30.545601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427238, 27.408335, 30.857954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.810513, 27.413555, 30.743610>,  <27.040476, 27.416687, 30.675005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.810513, 27.413555, 30.743610>,  <26.427238, 27.408335, 30.857954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810513, 27.413555, 30.743610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192687, 0.767966, -0.610819,
		0.211558, 0.640357, 0.738367,
		0.958183, 0.013050, -0.285858,
		27.097967, 27.417471, 30.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702122, 28.199425, 30.918489>,  <26.427238, 27.408335, 30.857954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702122, 28.199425, 30.918489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902042, 27.972992, 30.656269>,  <27.021996, 27.837132, 30.498936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902042, 27.972992, 30.656269>,  <26.702122, 28.199425, 30.918489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902042, 27.972992, 30.656269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130616, 0.698951, -0.703140,
		0.856235, 0.437057, 0.275397,
		0.499801, -0.566082, -0.655553,
		27.051983, 27.803167, 30.459602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920790, 28.705400, 30.531580>,  <26.702122, 28.199425, 30.918489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920790, 28.705400, 30.531580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.080719, 28.409901, 30.314548>,  <27.176678, 28.232601, 30.184330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.080719, 28.409901, 30.314548>,  <26.920790, 28.705400, 30.531580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080719, 28.409901, 30.314548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230663, 0.653996, -0.720475,
		0.887093, 0.162912, 0.431886,
		0.399825, -0.738749, -0.542577,
		27.200666, 28.188276, 30.151775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733091, 28.771935, 30.370203>,  <26.920790, 28.705400, 30.531580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733091, 28.771935, 30.370203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.570383, 28.540260, 30.087620>,  <27.472759, 28.401257, 29.918070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.570383, 28.540260, 30.087620>,  <27.733091, 28.771935, 30.370203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570383, 28.540260, 30.087620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265259, 0.665126, -0.698029,
		0.874172, -0.471331, -0.116919,
		-0.406769, -0.579184, -0.706459,
		27.448353, 28.366505, 29.875683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212900, 28.857216, 29.762503>,  <27.733091, 28.771935, 30.370203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212900, 28.857216, 29.762503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894409, 28.682758, 29.594788>,  <27.703316, 28.578083, 29.494160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894409, 28.682758, 29.594788>,  <28.212900, 28.857216, 29.762503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894409, 28.682758, 29.594788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191745, 0.475388, -0.858627,
		0.573813, -0.764056, -0.294886,
		-0.796224, -0.436148, -0.419287,
		27.655540, 28.551914, 29.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442160, 28.685377, 29.090927>,  <28.212900, 28.857216, 29.762503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442160, 28.685377, 29.090927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.044373, 28.666569, 29.053349>,  <27.805700, 28.655285, 29.030802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.044373, 28.666569, 29.053349>,  <28.442160, 28.685377, 29.090927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044373, 28.666569, 29.053349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042825, 0.635157, -0.771195,
		0.095933, -0.770950, -0.629629,
		-0.994466, -0.047019, -0.093949,
		27.746033, 28.652464, 29.025164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263409, 28.475912, 28.419445>,  <28.442160, 28.685377, 29.090927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263409, 28.475912, 28.419445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.945578, 28.680134, 28.550888>,  <27.754879, 28.802668, 28.629753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.945578, 28.680134, 28.550888>,  <28.263409, 28.475912, 28.419445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945578, 28.680134, 28.550888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097456, 0.641444, -0.760955,
		-0.599293, -0.572611, -0.559432,
		-0.794576, 0.510554, 0.328608,
		27.707205, 28.833300, 28.649471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823257, 28.549753, 27.830980>,  <28.263409, 28.475912, 28.419445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823257, 28.549753, 27.830980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.784986, 28.848930, 28.093712>,  <27.762024, 29.028437, 28.251350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.784986, 28.848930, 28.093712>,  <27.823257, 28.549753, 27.830980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784986, 28.848930, 28.093712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156566, 0.662950, -0.732110,
		-0.983022, 0.032792, -0.180531,
		-0.095675, 0.747945, 0.656829,
		27.756285, 29.073315, 28.290760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185328, 28.365658, 27.330526>,  <27.823257, 28.549753, 27.830980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185328, 28.365658, 27.330526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.136030, 28.108898, 27.027798>,  <27.106451, 27.954844, 26.846161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.136030, 28.108898, 27.027798>,  <27.185328, 28.365658, 27.330526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136030, 28.108898, 27.027798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021273, -0.764168, 0.644666,
		-0.992148, 0.063352, 0.107836,
		-0.123246, -0.641898, -0.756821,
		27.099056, 27.916328, 26.800751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549982, 27.925325, 27.468018>,  <27.185328, 28.365658, 27.330526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549982, 27.925325, 27.468018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.796707, 27.752777, 27.204666>,  <26.944742, 27.649248, 27.046656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.796707, 27.752777, 27.204666>,  <26.549982, 27.925325, 27.468018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796707, 27.752777, 27.204666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022179, -0.845643, 0.533288,
		-0.786797, -0.314337, -0.531172,
		0.616814, -0.431370, -0.658377,
		26.981750, 27.623365, 27.007153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235079, 27.278208, 27.195435>,  <26.549982, 27.925325, 27.468018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235079, 27.278208, 27.195435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.622490, 27.252628, 27.099213>,  <26.854937, 27.237280, 27.041479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.622490, 27.252628, 27.099213>,  <26.235079, 27.278208, 27.195435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622490, 27.252628, 27.099213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065418, -0.867065, 0.493881,
		-0.240161, -0.494074, -0.835592,
		0.968526, -0.063948, -0.240557,
		26.913048, 27.233444, 27.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203075, 26.596380, 26.902742>,  <26.235079, 27.278208, 27.195435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203075, 26.596380, 26.902742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.570885, 26.693104, 27.026680>,  <26.791571, 26.751139, 27.101042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.570885, 26.693104, 27.026680>,  <26.203075, 26.596380, 26.902742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570885, 26.693104, 27.026680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054796, -0.859514, 0.508166,
		0.389194, -0.450293, -0.803594,
		0.919524, 0.241809, 0.309844,
		26.846743, 26.765646, 27.119633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510002, 26.027937, 26.929146>,  <26.203075, 26.596380, 26.902742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510002, 26.027937, 26.929146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.734051, 26.247974, 27.176907>,  <26.868481, 26.379997, 27.325563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.734051, 26.247974, 27.176907>,  <26.510002, 26.027937, 26.929146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734051, 26.247974, 27.176907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159706, -0.805381, 0.570837,
		0.812869, -0.220816, -0.538965,
		0.560123, 0.550092, 0.619404,
		26.902088, 26.413002, 27.362728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145008, 25.502846, 27.016245>,  <26.510002, 26.027937, 26.929146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145008, 25.502846, 27.016245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.164101, 25.764267, 27.318394>,  <27.175556, 25.921120, 27.499683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.164101, 25.764267, 27.318394>,  <27.145008, 25.502846, 27.016245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164101, 25.764267, 27.318394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187475, -0.736934, 0.649447,
		0.981109, -0.172612, 0.087351,
		0.047731, 0.653555, 0.755373,
		27.178419, 25.960333, 27.545006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604244, 25.274347, 27.412645>,  <27.145008, 25.502846, 27.016245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604244, 25.274347, 27.412645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388115, 25.510307, 27.652668>,  <27.258436, 25.651884, 27.796680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388115, 25.510307, 27.652668>,  <27.604244, 25.274347, 27.412645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388115, 25.510307, 27.652668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089070, -0.749204, 0.656324,
		0.836729, 0.301181, 0.457356,
		-0.540325, 0.589901, 0.600054,
		27.226017, 25.687277, 27.832684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853092, 25.122091, 28.114933>,  <27.604244, 25.274347, 27.412645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853092, 25.122091, 28.114933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500347, 25.304279, 28.163708>,  <27.288700, 25.413591, 28.192972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500347, 25.304279, 28.163708>,  <27.853092, 25.122091, 28.114933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500347, 25.304279, 28.163708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256392, -0.680252, 0.686674,
		0.395709, 0.574287, 0.716666,
		-0.881861, 0.455470, 0.121939,
		27.235788, 25.440920, 28.200289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798487, 25.134819, 28.809086>,  <27.853092, 25.122091, 28.114933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798487, 25.134819, 28.809086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432240, 25.190174, 28.658092>,  <27.212492, 25.223387, 28.567497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.432240, 25.190174, 28.658092>,  <27.798487, 25.134819, 28.809086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432240, 25.190174, 28.658092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364406, -0.682325, 0.633752,
		-0.169862, 0.717831, 0.675178,
		-0.915618, 0.138389, -0.377483,
		27.157555, 25.231691, 28.544847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298206, 25.203360, 29.508945>,  <27.798487, 25.134819, 28.809086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298206, 25.203360, 29.508945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.069439, 25.112549, 29.193638>,  <26.932178, 25.058062, 29.004454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.069439, 25.112549, 29.193638>,  <27.298206, 25.203360, 29.508945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069439, 25.112549, 29.193638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413306, -0.750306, 0.515965,
		-0.708579, 0.620887, 0.335284,
		-0.571921, -0.227027, -0.788267,
		26.897863, 25.044441, 28.957157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625446, 25.199112, 29.755491>,  <27.298206, 25.203360, 29.508945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625446, 25.199112, 29.755491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.622627, 24.988144, 29.415661>,  <26.620935, 24.861563, 29.211763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.622627, 24.988144, 29.415661>,  <26.625446, 25.199112, 29.755491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622627, 24.988144, 29.415661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463347, -0.751165, 0.470171,
		-0.886149, 0.396962, -0.239084,
		-0.007049, -0.527421, -0.849575,
		26.620512, 24.829918, 29.160788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948969, 24.956865, 29.674591>,  <26.625446, 25.199112, 29.755491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948969, 24.956865, 29.674591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.164335, 24.710789, 29.444237>,  <26.293556, 24.563143, 29.306025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.164335, 24.710789, 29.444237>,  <25.948969, 24.956865, 29.674591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164335, 24.710789, 29.444237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403493, -0.788175, 0.464730,
		-0.739796, -0.017854, -0.672594,
		0.538419, -0.615193, -0.575885,
		26.325861, 24.526232, 29.271471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536316, 24.330202, 29.566233>,  <25.948969, 24.956865, 29.674591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536316, 24.330202, 29.566233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.902567, 24.209599, 29.459862>,  <26.122318, 24.137236, 29.396040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.902567, 24.209599, 29.459862>,  <25.536316, 24.330202, 29.566233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902567, 24.209599, 29.459862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232814, -0.936933, 0.260681,
		-0.327752, -0.176776, -0.928078,
		0.915629, -0.301508, -0.265926,
		26.177256, 24.119146, 29.380083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441921, 23.710211, 29.244701>,  <25.536316, 24.330202, 29.566233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441921, 23.710211, 29.244701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.812860, 23.726406, 29.393501>,  <26.035425, 23.736124, 29.482780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.812860, 23.726406, 29.393501>,  <25.441921, 23.710211, 29.244701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812860, 23.726406, 29.393501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130631, -0.896557, 0.423226,
		0.350655, -0.441073, -0.826133,
		0.927349, 0.040488, 0.372000,
		26.091064, 23.738552, 29.505102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.733791, 24.767574, 30.907862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341702, 24.802574, 30.836872>,  <33.106445, 24.823574, 30.794279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341702, 24.802574, 30.836872>,  <33.733791, 24.767574, 30.907862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341702, 24.802574, 30.836872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185193, 0.721569, -0.667115,
		0.069687, -0.686791, -0.723506,
		-0.980228, 0.087499, -0.177473,
		33.047634, 24.828823, 30.783630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614254, 24.673649, 30.146797>,  <33.733791, 24.767574, 30.907862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614254, 24.673649, 30.146797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288952, 24.875759, 30.262249>,  <33.093769, 24.997025, 30.331520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288952, 24.875759, 30.262249>,  <33.614254, 24.673649, 30.146797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288952, 24.875759, 30.262249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185148, 0.694920, -0.694842,
		-0.551662, -0.511647, -0.658701,
		-0.813258, 0.505275, 0.288631,
		33.044975, 25.027342, 30.348839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265930, 24.857235, 29.569138>,  <33.614254, 24.673649, 30.146797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265930, 24.857235, 29.569138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.106724, 25.100769, 29.843628>,  <33.011200, 25.246889, 30.008322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.106724, 25.100769, 29.843628>,  <33.265930, 24.857235, 29.569138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106724, 25.100769, 29.843628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121556, 0.706431, -0.697266,
		-0.909291, -0.360935, -0.207160,
		-0.398012, 0.608837, 0.686225,
		32.987320, 25.283421, 30.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673939, 25.226059, 29.258097>,  <33.265930, 24.857235, 29.569138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673939, 25.226059, 29.258097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.798698, 25.473331, 29.546700>,  <32.873554, 25.621695, 29.719862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.798698, 25.473331, 29.546700>,  <32.673939, 25.226059, 29.258097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798698, 25.473331, 29.546700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181751, 0.784185, -0.593313,
		-0.932571, 0.053917, 0.356938,
		0.311895, 0.618180, 0.721509,
		32.892265, 25.658785, 29.763153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227753, 25.699734, 29.313570>,  <32.673939, 25.226059, 29.258097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227753, 25.699734, 29.313570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537262, 25.880268, 29.491364>,  <32.722969, 25.988588, 29.598040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537262, 25.880268, 29.491364>,  <32.227753, 25.699734, 29.313570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537262, 25.880268, 29.491364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140572, 0.806524, -0.574246,
		-0.617663, 0.381856, 0.687515,
		0.773777, 0.451336, 0.444482,
		32.769394, 26.015669, 29.624708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943630, 26.439434, 29.580858>,  <32.227753, 25.699734, 29.313570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943630, 26.439434, 29.580858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341290, 26.482601, 29.582916>,  <32.579884, 26.508501, 29.584150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341290, 26.482601, 29.582916>,  <31.943630, 26.439434, 29.580858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341290, 26.482601, 29.582916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102052, 0.953594, -0.283274,
		-0.035476, 0.281091, 0.959025,
		0.994146, 0.107920, 0.005144,
		32.639534, 26.514977, 29.584459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025635, 27.033358, 29.860086>,  <31.943630, 26.439434, 29.580858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025635, 27.033358, 29.860086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380871, 26.966530, 29.688797>,  <32.594013, 26.926434, 29.586023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380871, 26.966530, 29.688797>,  <32.025635, 27.033358, 29.860086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380871, 26.966530, 29.688797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009055, 0.925071, -0.379687,
		0.459573, 0.341076, 0.820037,
		0.888094, -0.167069, -0.428226,
		32.647301, 26.916409, 29.560329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312824, 27.665962, 29.908375>,  <32.025635, 27.033358, 29.860086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312824, 27.665962, 29.908375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523258, 27.467186, 29.632320>,  <32.649517, 27.347921, 29.466688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523258, 27.467186, 29.632320>,  <32.312824, 27.665962, 29.908375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523258, 27.467186, 29.632320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094238, 0.840579, -0.533428,
		0.845197, 0.215589, 0.489044,
		0.526081, -0.496939, -0.690138,
		32.681084, 27.318104, 29.425280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895721, 28.143831, 29.784418>,  <32.312824, 27.665962, 29.908375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895721, 28.143831, 29.784418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832329, 27.898430, 29.474968>,  <32.794292, 27.751188, 29.289297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.832329, 27.898430, 29.474968>,  <32.895721, 28.143831, 29.784418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832329, 27.898430, 29.474968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118493, 0.766046, -0.631769,
		0.980226, -0.191792, -0.048706,
		-0.158479, -0.613505, -0.773625,
		32.784786, 27.714378, 29.242880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225891, 28.448305, 29.308434>,  <32.895721, 28.143831, 29.784418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225891, 28.448305, 29.308434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035225, 28.192165, 29.067520>,  <32.920826, 28.038481, 28.922972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.035225, 28.192165, 29.067520>,  <33.225891, 28.448305, 29.308434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035225, 28.192165, 29.067520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057067, 0.661138, -0.748091,
		0.877232, -0.390958, -0.278598,
		-0.476663, -0.640350, -0.602282,
		32.892227, 28.000061, 28.886835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653538, 28.386368, 28.766541>,  <33.225891, 28.448305, 29.308434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653538, 28.386368, 28.766541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289688, 28.301117, 28.623901>,  <33.071377, 28.249968, 28.538317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289688, 28.301117, 28.623901>,  <33.653538, 28.386368, 28.766541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289688, 28.301117, 28.623901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212224, 0.499532, -0.839898,
		0.357135, -0.839670, -0.409156,
		-0.909624, -0.213125, -0.356598,
		33.016800, 28.237179, 28.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728973, 28.409691, 28.008953>,  <33.653538, 28.386368, 28.766541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728973, 28.409691, 28.008953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331085, 28.414616, 28.049694>,  <33.092350, 28.417570, 28.074139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331085, 28.414616, 28.049694>,  <33.728973, 28.409691, 28.008953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331085, 28.414616, 28.049694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057413, 0.755963, -0.652092,
		-0.085023, -0.654499, -0.751267,
		-0.994723, 0.012310, 0.101851,
		33.032669, 28.418308, 28.080250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459301, 28.424887, 27.304096>,  <33.728973, 28.409691, 28.008953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459301, 28.424887, 27.304096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176830, 28.565815, 27.549759>,  <33.007347, 28.650372, 27.697157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176830, 28.565815, 27.549759>,  <33.459301, 28.424887, 27.304096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176830, 28.565815, 27.549759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120608, 0.794874, -0.594667,
		-0.697692, -0.494010, -0.518826,
		-0.706173, 0.352319, 0.614159,
		32.964977, 28.671511, 27.734007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859833, 28.542915, 26.963659>,  <33.459301, 28.424887, 27.304096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859833, 28.542915, 26.963659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875877, 28.785225, 27.281509>,  <32.885506, 28.930611, 27.472219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875877, 28.785225, 27.281509>,  <32.859833, 28.542915, 26.963659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875877, 28.785225, 27.281509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078619, 0.794712, -0.601873,
		-0.996097, -0.038329, 0.079505,
		0.040115, 0.605775, 0.794624,
		32.887913, 28.966957, 27.519897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165733, 28.262268, 26.650377>,  <32.859833, 28.542915, 26.963659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165733, 28.262268, 26.650377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269016, 28.035492, 26.337479>,  <32.330986, 27.899427, 26.149740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269016, 28.035492, 26.337479>,  <32.165733, 28.262268, 26.650377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269016, 28.035492, 26.337479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100988, -0.821108, 0.561769,
		-0.960796, -0.066058, -0.269274,
		0.258212, -0.566938, -0.782245,
		32.346481, 27.865410, 26.102804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598034, 27.788383, 26.440029>,  <32.165733, 28.262268, 26.650377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598034, 27.788383, 26.440029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936342, 27.621731, 26.306709>,  <32.139328, 27.521738, 26.226717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.936342, 27.621731, 26.306709>,  <31.598034, 27.788383, 26.440029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936342, 27.621731, 26.306709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258250, -0.866306, 0.427576,
		-0.466882, -0.275556, -0.840291,
		0.845771, -0.416633, -0.333301,
		32.190075, 27.496740, 26.206718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412142, 27.115627, 26.283348>,  <31.598034, 27.788383, 26.440029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412142, 27.115627, 26.283348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810045, 27.077118, 26.269562>,  <32.048786, 27.054012, 26.261290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810045, 27.077118, 26.269562>,  <31.412142, 27.115627, 26.283348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810045, 27.077118, 26.269562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079874, -0.941995, 0.325985,
		-0.063852, -0.321523, -0.944746,
		0.994758, -0.096276, -0.034467,
		32.108471, 27.048235, 26.259222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561832, 26.522224, 25.864304>,  <31.412142, 27.115627, 26.283348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561832, 26.522224, 25.864304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893896, 26.590225, 26.076694>,  <32.093136, 26.631025, 26.204128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.893896, 26.590225, 26.076694>,  <31.561832, 26.522224, 25.864304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893896, 26.590225, 26.076694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019426, -0.942980, 0.332283,
		0.557188, -0.286163, -0.779521,
		0.830159, 0.170001, 0.530976,
		32.142944, 26.641226, 26.235987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861076, 25.935627, 25.788475>,  <31.561832, 26.522224, 25.864304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861076, 25.935627, 25.788475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047577, 26.066586, 26.117210>,  <32.159477, 26.145161, 26.314451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047577, 26.066586, 26.117210>,  <31.861076, 25.935627, 25.788475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047577, 26.066586, 26.117210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100875, -0.942614, 0.318283,
		0.878881, -0.065498, -0.472523,
		0.466254, 0.327398, 0.821838,
		32.187454, 26.164804, 26.363762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364464, 25.394810, 25.997377>,  <31.861076, 25.935627, 25.788475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364464, 25.394810, 25.997377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308167, 25.625694, 26.319126>,  <32.274387, 25.764225, 26.512175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308167, 25.625694, 26.319126>,  <32.364464, 25.394810, 25.997377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308167, 25.625694, 26.319126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032735, -0.809302, 0.586479,
		0.989504, 0.108877, 0.095012,
		-0.140747, 0.577214, 0.804372,
		32.265942, 25.798859, 26.560438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967754, 25.324209, 26.441620>,  <32.364464, 25.394810, 25.997377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967754, 25.324209, 26.441620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645935, 25.421829, 26.658188>,  <32.452843, 25.480402, 26.788128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645935, 25.421829, 26.658188>,  <32.967754, 25.324209, 26.441620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645935, 25.421829, 26.658188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136234, -0.811508, 0.568238,
		0.578046, 0.530937, 0.619652,
		-0.804552, 0.244050, 0.541420,
		32.404568, 25.495045, 26.820614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027271, 25.009195, 27.046158>,  <32.967754, 25.324209, 26.441620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027271, 25.009195, 27.046158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664906, 25.163933, 27.115067>,  <32.447487, 25.256775, 27.156412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664906, 25.163933, 27.115067>,  <33.027271, 25.009195, 27.046158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664906, 25.163933, 27.115067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186875, -0.730256, 0.657118,
		0.380004, 0.563097, 0.733838,
		-0.905911, 0.386844, 0.172272,
		32.393131, 25.279985, 27.166748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003578, 25.236864, 27.779787>,  <33.027271, 25.009195, 27.046158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003578, 25.236864, 27.779787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632889, 25.159340, 27.651024>,  <32.410477, 25.112825, 27.573765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632889, 25.159340, 27.651024>,  <33.003578, 25.236864, 27.779787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632889, 25.159340, 27.651024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003161, -0.852660, 0.522456,
		-0.375737, 0.485189, 0.789566,
		-0.926721, -0.193810, -0.321910,
		32.354874, 25.101196, 27.554451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626659, 24.951374, 28.423935>,  <33.003578, 25.236864, 27.779787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626659, 24.951374, 28.423935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412838, 24.846035, 28.102711>,  <32.284546, 24.782831, 27.909977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412838, 24.846035, 28.102711>,  <32.626659, 24.951374, 28.423935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412838, 24.846035, 28.102711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125779, -0.914840, 0.383728,
		-0.835724, 0.306130, 0.455906,
		-0.534552, -0.263347, -0.803059,
		32.252472, 24.767031, 27.861794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011166, 24.651545, 28.729237>,  <32.626659, 24.951374, 28.423935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011166, 24.651545, 28.729237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971865, 24.522469, 28.352680>,  <31.948284, 24.445023, 28.126745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971865, 24.522469, 28.352680>,  <32.011166, 24.651545, 28.729237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971865, 24.522469, 28.352680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482527, -0.811882, 0.328656,
		-0.870353, 0.486538, -0.075936,
		-0.098253, -0.322688, -0.941392,
		31.942389, 24.425663, 28.070263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356039, 24.372150, 28.617245>,  <32.011166, 24.651545, 28.729237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356039, 24.372150, 28.617245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600397, 24.189327, 28.358662>,  <31.747011, 24.079634, 28.203512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.600397, 24.189327, 28.358662>,  <31.356039, 24.372150, 28.617245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600397, 24.189327, 28.358662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382650, -0.885278, 0.264313,
		-0.693101, 0.085899, -0.715705,
		0.610894, -0.457060, -0.646456,
		31.783665, 24.052210, 28.164724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979815, 23.803068, 28.318407>,  <31.356039, 24.372150, 28.617245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979815, 23.803068, 28.318407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353922, 23.697262, 28.224342>,  <31.578386, 23.633778, 28.167904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353922, 23.697262, 28.224342>,  <30.979815, 23.803068, 28.318407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353922, 23.697262, 28.224342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200378, -0.943411, 0.264242,
		-0.291750, -0.200016, -0.935348,
		0.935270, -0.264515, -0.235162,
		31.634502, 23.617907, 28.153793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886356, 23.123217, 28.112438>,  <30.979815, 23.803068, 28.318407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886356, 23.123217, 28.112438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281019, 23.150616, 28.171513>,  <31.517817, 23.167055, 28.206957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281019, 23.150616, 28.171513>,  <30.886356, 23.123217, 28.112438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281019, 23.150616, 28.171513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002761, -0.914092, 0.405497,
		0.162776, -0.399679, -0.902087,
		0.986659, 0.068496, 0.147688,
		31.577017, 23.171164, 28.215818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717276, 22.786016, 27.371582>,  <30.886356, 23.123217, 28.112438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717276, 22.786016, 27.371582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330790, 22.694443, 27.324219>,  <30.098898, 22.639498, 27.295801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330790, 22.694443, 27.324219>,  <30.717276, 22.786016, 27.371582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330790, 22.694443, 27.324219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046946, 0.608033, -0.792523,
		0.253432, -0.760188, -0.598237,
		-0.966214, -0.228935, -0.118407,
		30.040926, 22.625763, 27.288696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566397, 22.613298, 26.701670>,  <30.717276, 22.786016, 27.371582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566397, 22.613298, 26.701670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219965, 22.751053, 26.846615>,  <30.012106, 22.833706, 26.933582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219965, 22.751053, 26.846615>,  <30.566397, 22.613298, 26.701670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219965, 22.751053, 26.846615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092975, 0.823175, -0.560123,
		-0.491186, -0.451420, -0.744954,
		-0.866079, 0.344387, 0.362362,
		29.960142, 22.854368, 26.955324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128464, 22.843565, 26.083401>,  <30.566397, 22.613298, 26.701670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128464, 22.843565, 26.083401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.969639, 23.011280, 26.409969>,  <29.874344, 23.111910, 26.605909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.969639, 23.011280, 26.409969>,  <30.128464, 22.843565, 26.083401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969639, 23.011280, 26.409969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162500, 0.843376, -0.512163,
		-0.903292, -0.336028, -0.266737,
		-0.397061, 0.419287, 0.816419,
		29.850521, 23.137066, 26.654896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475153, 23.085110, 25.867130>,  <30.128464, 22.843565, 26.083401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475153, 23.085110, 25.867130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.570843, 23.291496, 26.196140>,  <29.628256, 23.415329, 26.393547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.570843, 23.291496, 26.196140>,  <29.475153, 23.085110, 25.867130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570843, 23.291496, 26.196140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198319, 0.855230, -0.478802,
		-0.950495, -0.048581, 0.306918,
		0.239225, 0.515967, 0.822526,
		29.642611, 23.446287, 26.442898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934546, 23.503698, 25.971140>,  <29.475153, 23.085110, 25.867130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934546, 23.503698, 25.971140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212231, 23.701107, 26.180714>,  <29.378841, 23.819551, 26.306458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212231, 23.701107, 26.180714>,  <28.934546, 23.503698, 25.971140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212231, 23.701107, 26.180714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318646, 0.863426, -0.391103,
		-0.645395, 0.104559, 0.756659,
		0.694212, 0.493522, 0.523933,
		29.420494, 23.849163, 26.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616583, 24.048132, 26.390785>,  <28.934546, 23.503698, 25.971140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616583, 24.048132, 26.390785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989992, 24.173328, 26.320850>,  <29.214039, 24.248447, 26.278891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989992, 24.173328, 26.320850>,  <28.616583, 24.048132, 26.390785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989992, 24.173328, 26.320850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349596, 0.902813, -0.250422,
		0.079463, 0.294897, 0.952219,
		0.933524, 0.312993, -0.174836,
		29.270050, 24.267225, 26.268400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528143, 24.679476, 26.456474>,  <28.616583, 24.048132, 26.390785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528143, 24.679476, 26.456474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891029, 24.678993, 26.288208>,  <29.108761, 24.678703, 26.187248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.891029, 24.678993, 26.288208>,  <28.528143, 24.679476, 26.456474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891029, 24.678993, 26.288208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223813, 0.845331, -0.485101,
		0.356187, 0.534241, 0.766627,
		0.907215, -0.001205, -0.420666,
		29.163195, 24.678631, 26.162008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830997, 25.406694, 26.505814>,  <28.528143, 24.679476, 26.456474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830997, 25.406694, 26.505814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992344, 25.204819, 26.200504>,  <29.089151, 25.083694, 26.017319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992344, 25.204819, 26.200504>,  <28.830997, 25.406694, 26.505814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992344, 25.204819, 26.200504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127475, 0.795015, -0.593044,
		0.906116, 0.336513, 0.256348,
		0.403367, -0.504688, -0.763273,
		29.113354, 25.053411, 25.971523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452417, 25.826008, 26.247164>,  <28.830997, 25.406694, 26.505814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452417, 25.826008, 26.247164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273361, 25.592346, 25.976349>,  <29.165928, 25.452148, 25.813860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273361, 25.592346, 25.976349>,  <29.452417, 25.826008, 26.247164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273361, 25.592346, 25.976349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106030, 0.786465, -0.608466,
		0.887905, -0.200588, -0.413991,
		-0.447640, -0.584156, -0.677038,
		29.139069, 25.417099, 25.773237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802502, 25.924210, 25.616409>,  <29.452417, 25.826008, 26.247164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802502, 25.924210, 25.616409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439348, 25.797932, 25.506077>,  <29.221457, 25.722164, 25.439877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439348, 25.797932, 25.506077>,  <29.802502, 25.924210, 25.616409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439348, 25.797932, 25.506077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055382, 0.742513, -0.667538,
		0.415548, -0.590770, -0.691599,
		-0.907883, -0.315697, -0.275832,
		29.166983, 25.703222, 25.423326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776983, 25.828358, 24.804651>,  <29.802502, 25.924210, 25.616409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776983, 25.828358, 24.804651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.401545, 25.889729, 24.928261>,  <29.176281, 25.926552, 25.002426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.401545, 25.889729, 24.928261>,  <29.776983, 25.828358, 24.804651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401545, 25.889729, 24.928261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125719, 0.682006, -0.720460,
		-0.321295, -0.715072, -0.620840,
		-0.938597, 0.153429, 0.309023,
		29.119965, 25.935757, 25.020967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526415, 25.783794, 24.165577>,  <29.776983, 25.828358, 24.804651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526415, 25.783794, 24.165577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231310, 25.931721, 24.391476>,  <29.054247, 26.020477, 24.527016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.231310, 25.931721, 24.391476>,  <29.526415, 25.783794, 24.165577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231310, 25.931721, 24.391476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149173, 0.726597, -0.670675,
		-0.658370, -0.579045, -0.480891,
		-0.737764, 0.369816, 0.564748,
		29.009981, 26.042665, 24.560900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879503, 25.869663, 23.722752>,  <29.526415, 25.783794, 24.165577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879503, 25.869663, 23.722752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.886841, 26.119801, 24.034805>,  <28.891243, 26.269882, 24.222038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.886841, 26.119801, 24.034805>,  <28.879503, 25.869663, 23.722752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886841, 26.119801, 24.034805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186637, 0.768693, -0.611782,
		-0.982258, -0.134380, 0.130812,
		0.018343, 0.625342, 0.780135,
		28.892344, 26.307404, 24.268847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184067, 26.175535, 23.726336>,  <28.879503, 25.869663, 23.722752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184067, 26.175535, 23.726336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.403902, 26.439465, 23.931309>,  <28.535803, 26.597822, 24.054293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.403902, 26.439465, 23.931309>,  <28.184067, 26.175535, 23.726336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403902, 26.439465, 23.931309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033585, 0.630325, -0.775605,
		-0.834761, 0.409052, 0.368579,
		0.549588, 0.659823, 0.512432,
		28.568779, 26.637411, 24.085039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.666794, 26.734533, 27.806459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.869686, 26.707710, 27.462780>,  <43.991421, 26.691616, 27.256573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.869686, 26.707710, 27.462780>,  <43.666794, 26.734533, 27.806459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869686, 26.707710, 27.462780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563106, 0.728931, -0.389322,
		0.652402, 0.681295, 0.331977,
		0.507231, -0.067057, -0.859197,
		44.021854, 26.687593, 27.205021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109119, 27.402843, 27.535881>,  <43.666794, 26.734533, 27.806459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109119, 27.402843, 27.535881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.005001, 27.199009, 27.207840>,  <43.942532, 27.076708, 27.011015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.005001, 27.199009, 27.207840>,  <44.109119, 27.402843, 27.535881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005001, 27.199009, 27.207840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567338, 0.768004, -0.297148,
		0.781265, 0.387930, -0.489015,
		-0.260293, -0.509588, -0.820102,
		43.926914, 27.046133, 26.961809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333015, 27.878269, 26.986513>,  <44.109119, 27.402843, 27.535881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333015, 27.878269, 26.986513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.083603, 27.606171, 26.832382>,  <43.933956, 27.442911, 26.739902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.083603, 27.606171, 26.832382>,  <44.333015, 27.878269, 26.986513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083603, 27.606171, 26.832382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459438, 0.717613, -0.523401,
		0.632558, -0.149321, -0.759983,
		-0.623528, -0.680246, -0.385328,
		43.896545, 27.402096, 26.716784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311096, 27.989580, 26.241148>,  <44.333015, 27.878269, 26.986513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311096, 27.989580, 26.241148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.981388, 27.783382, 26.334820>,  <43.783562, 27.659664, 26.391024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.981388, 27.783382, 26.334820>,  <44.311096, 27.989580, 26.241148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981388, 27.783382, 26.334820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537958, 0.584047, -0.607858,
		0.176575, -0.627020, -0.758728,
		-0.824271, -0.515496, 0.234182,
		43.734108, 27.628733, 26.405075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911819, 28.090452, 25.641823>,  <44.311096, 27.989580, 26.241148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911819, 28.090452, 25.641823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639538, 27.978294, 25.912533>,  <43.476170, 27.910999, 26.074959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639538, 27.978294, 25.912533>,  <43.911819, 28.090452, 25.641823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639538, 27.978294, 25.912533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631683, 0.692512, -0.348431,
		-0.370976, -0.664685, -0.648514,
		-0.680701, -0.280396, 0.676775,
		43.435326, 27.894176, 26.115566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311909, 28.088457, 25.278931>,  <43.911819, 28.090452, 25.641823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311909, 28.088457, 25.278931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.181850, 28.099045, 25.657047>,  <43.103817, 28.105398, 25.883917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.181850, 28.099045, 25.657047>,  <43.311909, 28.088457, 25.278931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181850, 28.099045, 25.657047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473462, 0.860744, -0.186956,
		-0.818605, -0.508348, -0.267334,
		-0.325145, 0.026470, 0.945293,
		43.084309, 28.106985, 25.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571186, 28.206226, 25.221127>,  <43.311909, 28.088457, 25.278931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571186, 28.206226, 25.221127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.652485, 28.321095, 25.595554>,  <42.701263, 28.390015, 25.820211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.652485, 28.321095, 25.595554>,  <42.571186, 28.206226, 25.221127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652485, 28.321095, 25.595554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396815, 0.898150, -0.189379,
		-0.895114, -0.332955, 0.296499,
		0.203246, 0.287171, 0.936068,
		42.713459, 28.407246, 25.876375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808502, 28.431198, 25.509209>,  <42.571186, 28.206226, 25.221127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808502, 28.431198, 25.509209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106171, 28.607346, 25.710121>,  <42.284771, 28.713034, 25.830669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106171, 28.607346, 25.710121>,  <41.808502, 28.431198, 25.509209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106171, 28.607346, 25.710121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474205, 0.877856, -0.067073,
		-0.470468, -0.188271, 0.862099,
		0.744170, 0.440367, 0.502282,
		42.329422, 28.739456, 25.860806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418316, 28.858881, 25.852005>,  <41.808502, 28.431198, 25.509209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418316, 28.858881, 25.852005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.786350, 29.011532, 25.887352>,  <42.007172, 29.103123, 25.908560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.786350, 29.011532, 25.887352>,  <41.418316, 28.858881, 25.852005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786350, 29.011532, 25.887352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388754, 0.917293, 0.086269,
		-0.048136, -0.113727, 0.992345,
		0.920083, 0.381626, 0.088367,
		42.062374, 29.126020, 25.913862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362770, 29.289080, 26.421509>,  <41.418316, 28.858881, 25.852005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362770, 29.289080, 26.421509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685612, 29.438389, 26.238529>,  <41.879314, 29.527973, 26.128742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.685612, 29.438389, 26.238529>,  <41.362770, 29.289080, 26.421509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685612, 29.438389, 26.238529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446104, 0.893077, -0.058345,
		0.386757, 0.251160, 0.887321,
		0.807100, 0.373272, -0.457447,
		41.927742, 29.550371, 26.101295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500813, 29.909658, 26.735582>,  <41.362770, 29.289080, 26.421509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500813, 29.909658, 26.735582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692390, 29.950779, 26.386860>,  <41.807339, 29.975452, 26.177628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692390, 29.950779, 26.386860>,  <41.500813, 29.909658, 26.735582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692390, 29.950779, 26.386860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434867, 0.890484, -0.133898,
		0.762564, 0.443249, 0.471198,
		0.478944, 0.102803, -0.871805,
		41.836075, 29.981621, 26.125319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943054, 30.517044, 26.706745>,  <41.500813, 29.909658, 26.735582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943054, 30.517044, 26.706745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874653, 30.438419, 26.320560>,  <41.833611, 30.391245, 26.088850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.874653, 30.438419, 26.320560>,  <41.943054, 30.517044, 26.706745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874653, 30.438419, 26.320560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297387, 0.944493, -0.139617,
		0.939317, 0.263241, -0.219970,
		-0.171007, -0.196561, -0.965464,
		41.823349, 30.379452, 26.030922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295383, 31.045284, 26.347288>,  <41.943054, 30.517044, 26.706745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295383, 31.045284, 26.347288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.016727, 30.928612, 26.085110>,  <41.849533, 30.858608, 25.927803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.016727, 30.928612, 26.085110>,  <42.295383, 31.045284, 26.347288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016727, 30.928612, 26.085110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272736, 0.952699, -0.134085,
		0.663554, 0.085355, -0.743243,
		-0.696643, -0.291682, -0.655447,
		41.807735, 30.841106, 25.888475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337563, 31.479033, 25.720295>,  <42.295383, 31.045284, 26.347288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337563, 31.479033, 25.720295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.975597, 31.310024, 25.699856>,  <41.758419, 31.208620, 25.687593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.975597, 31.310024, 25.699856>,  <42.337563, 31.479033, 25.720295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975597, 31.310024, 25.699856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370247, 0.840739, -0.395063,
		0.209879, -0.338579, -0.917232,
		-0.904913, -0.422518, -0.051096,
		41.704124, 31.183270, 25.684526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086121, 31.606169, 25.097118>,  <42.337563, 31.479033, 25.720295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086121, 31.606169, 25.097118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.753983, 31.519363, 25.302422>,  <41.554699, 31.467279, 25.425604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.753983, 31.519363, 25.302422>,  <42.086121, 31.606169, 25.097118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753983, 31.519363, 25.302422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400053, 0.873330, -0.277943,
		-0.387924, -0.436118, -0.811983,
		-0.830345, -0.217016, 0.513256,
		41.504879, 31.454258, 25.456398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579418, 31.903660, 24.701063>,  <42.086121, 31.606169, 25.097118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579418, 31.903660, 24.701063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372055, 31.853138, 25.039364>,  <41.247639, 31.822824, 25.242344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372055, 31.853138, 25.039364>,  <41.579418, 31.903660, 24.701063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372055, 31.853138, 25.039364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633987, 0.720483, -0.281007,
		-0.573858, -0.681873, -0.453581,
		-0.518408, -0.126306, 0.845754,
		41.216534, 31.815247, 25.293091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942005, 31.931519, 24.513123>,  <41.579418, 31.903660, 24.701063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942005, 31.931519, 24.513123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870075, 32.003330, 24.899994>,  <40.826920, 32.046417, 25.132116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.870075, 32.003330, 24.899994>,  <40.942005, 31.931519, 24.513123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870075, 32.003330, 24.899994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635276, 0.729487, -0.253521,
		-0.751059, -0.660013, -0.017125,
		-0.179819, 0.179530, 0.967178,
		40.816128, 32.057190, 25.190147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233589, 31.933834, 24.542103>,  <40.942005, 31.931519, 24.513123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233589, 31.933834, 24.542103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361393, 32.141880, 24.858936>,  <40.438076, 32.266708, 25.049036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361393, 32.141880, 24.858936>,  <40.233589, 31.933834, 24.542103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361393, 32.141880, 24.858936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657300, 0.723748, -0.210107,
		-0.682549, -0.453506, 0.573114,
		0.319506, 0.520116, 0.792083,
		40.457245, 32.297916, 25.096561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608746, 32.197422, 24.736065>,  <40.233589, 31.933834, 24.542103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608746, 32.197422, 24.736065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896038, 32.408520, 24.917454>,  <40.068413, 32.535179, 25.026287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896038, 32.408520, 24.917454>,  <39.608746, 32.197422, 24.736065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896038, 32.408520, 24.917454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615627, 0.785698, 0.060683,
		-0.324266, -0.322753, 0.889203,
		0.718231, 0.527740, 0.453470,
		40.111507, 32.566841, 25.053495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349659, 32.642189, 25.361412>,  <39.608746, 32.197422, 24.736065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349659, 32.642189, 25.361412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699341, 32.808937, 25.261826>,  <39.909149, 32.908985, 25.202074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699341, 32.808937, 25.261826>,  <39.349659, 32.642189, 25.361412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699341, 32.808937, 25.261826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463745, 0.868783, -0.173657,
		0.143906, 0.267269, 0.952816,
		0.874204, 0.416874, -0.248968,
		39.961601, 32.933998, 25.187136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412621, 33.328003, 25.797983>,  <39.349659, 32.642189, 25.361412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412621, 33.328003, 25.797983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650959, 33.347813, 25.477356>,  <39.793964, 33.359699, 25.284981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650959, 33.347813, 25.477356>,  <39.412621, 33.328003, 25.797983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650959, 33.347813, 25.477356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251846, 0.959273, -0.127939,
		0.762585, 0.278104, 0.584057,
		0.595851, 0.049528, -0.801567,
		39.829716, 33.362671, 25.236885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954185, 33.335575, 26.386932>,  <39.412621, 33.328003, 25.797983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954185, 33.335575, 26.386932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638962, 33.091545, 26.419868>,  <38.449829, 32.945129, 26.439631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.638962, 33.091545, 26.419868>,  <38.954185, 33.335575, 26.386932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638962, 33.091545, 26.419868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537796, -0.617177, 0.574342,
		-0.299572, 0.496895, 0.814464,
		-0.788056, -0.610072, 0.082340,
		38.402546, 32.908524, 26.444571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949520, 33.116642, 27.100250>,  <38.954185, 33.335575, 26.386932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949520, 33.116642, 27.100250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699650, 32.854256, 26.930790>,  <38.549728, 32.696823, 26.829113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699650, 32.854256, 26.930790>,  <38.949520, 33.116642, 27.100250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699650, 32.854256, 26.930790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461938, -0.747843, 0.476807,
		-0.629596, 0.102150, 0.770178,
		-0.624678, -0.655970, -0.423652,
		38.512245, 32.657463, 26.803694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656097, 32.631115, 27.592138>,  <38.949520, 33.116642, 27.100250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656097, 32.631115, 27.592138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.637924, 32.455879, 27.233025>,  <38.627022, 32.350739, 27.017557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.637924, 32.455879, 27.233025>,  <38.656097, 32.631115, 27.592138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637924, 32.455879, 27.233025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206118, -0.883483, 0.420682,
		-0.977472, -0.165937, 0.130436,
		-0.045431, -0.438090, -0.897782,
		38.624294, 32.324451, 26.963690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411858, 32.066402, 27.760429>,  <38.656097, 32.631115, 27.592138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411858, 32.066402, 27.760429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538475, 31.956451, 27.397278>,  <38.614445, 31.890482, 27.179388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538475, 31.956451, 27.397278>,  <38.411858, 32.066402, 27.760429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538475, 31.956451, 27.397278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310004, -0.874563, 0.372877,
		-0.896491, -0.399479, -0.191628,
		0.316547, -0.274876, -0.907877,
		38.633438, 31.873989, 27.124914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132450, 31.332491, 27.584114>,  <38.411858, 32.066402, 27.760429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132450, 31.332491, 27.584114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.445568, 31.401615, 27.344994>,  <38.633438, 31.443089, 27.201521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.445568, 31.401615, 27.344994>,  <38.132450, 31.332491, 27.584114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445568, 31.401615, 27.344994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332744, -0.928032, 0.167444,
		-0.525843, -0.329989, -0.783962,
		0.782796, 0.172809, -0.597802,
		38.680408, 31.453459, 27.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181442, 30.791111, 27.227549>,  <38.132450, 31.332491, 27.584114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181442, 30.791111, 27.227549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.541931, 30.945873, 27.149471>,  <38.758224, 31.038731, 27.102625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.541931, 30.945873, 27.149471>,  <38.181442, 30.791111, 27.227549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541931, 30.945873, 27.149471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430031, -0.854133, 0.292456,
		-0.053570, -0.347508, -0.936145,
		0.901223, 0.386905, -0.195195,
		38.812298, 31.061945, 27.090912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548206, 30.325253, 26.909821>,  <38.181442, 30.791111, 27.227549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548206, 30.325253, 26.909821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832050, 30.542622, 27.089218>,  <39.002357, 30.673044, 27.196856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832050, 30.542622, 27.089218>,  <38.548206, 30.325253, 26.909821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832050, 30.542622, 27.089218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551523, -0.824524, 0.126423,
		0.438493, 0.157643, -0.884801,
		0.709609, 0.543424, 0.448492,
		39.044933, 30.705648, 27.223766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021931, 29.725668, 27.069601>,  <38.548206, 30.325253, 26.909821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021931, 29.725668, 27.069601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.164909, 30.042873, 27.266930>,  <39.250694, 30.233196, 27.385326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.164909, 30.042873, 27.266930>,  <39.021931, 29.725668, 27.069601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164909, 30.042873, 27.266930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505240, -0.608442, 0.611989,
		0.785473, 0.030495, -0.618144,
		0.357442, 0.793012, 0.493322,
		39.272141, 30.280777, 27.414927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732689, 29.638731, 27.035151>,  <39.021931, 29.725668, 27.069601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732689, 29.638731, 27.035151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644997, 29.873997, 27.346535>,  <39.592381, 30.015156, 27.533365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644997, 29.873997, 27.346535>,  <39.732689, 29.638731, 27.035151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644997, 29.873997, 27.346535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522609, -0.602971, 0.602748,
		0.823904, 0.538972, -0.175189,
		-0.219231, 0.588162, 0.778462,
		39.579227, 30.050446, 27.580074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363171, 29.783112, 27.210695>,  <39.732689, 29.638731, 27.035151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363171, 29.783112, 27.210695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.136848, 29.860771, 27.531239>,  <40.001057, 29.907368, 27.723564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.136848, 29.860771, 27.531239>,  <40.363171, 29.783112, 27.210695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136848, 29.860771, 27.531239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585038, -0.590332, 0.556093,
		0.581031, 0.783463, 0.220427,
		-0.565803, 0.194149, 0.801357,
		39.967106, 29.919016, 27.771646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870892, 29.782457, 27.720572>,  <40.363171, 29.783112, 27.210695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870892, 29.782457, 27.720572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.519047, 29.718792, 27.899883>,  <40.307941, 29.680593, 28.007471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.519047, 29.718792, 27.899883>,  <40.870892, 29.782457, 27.720572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519047, 29.718792, 27.899883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448775, -0.590185, 0.671031,
		0.157765, 0.791422, 0.590560,
		-0.879609, -0.159163, 0.448281,
		40.255165, 29.671043, 28.034367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973465, 29.880516, 28.432266>,  <40.870892, 29.782457, 27.720572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973465, 29.880516, 28.432266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639156, 29.661797, 28.412281>,  <40.438572, 29.530565, 28.400290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639156, 29.661797, 28.412281>,  <40.973465, 29.880516, 28.432266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639156, 29.661797, 28.412281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453453, -0.738667, 0.498750,
		-0.309620, 0.394187, 0.865305,
		-0.835773, -0.546798, -0.049961,
		40.388424, 29.497757, 28.397293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839481, 29.557087, 29.179333>,  <40.973465, 29.880516, 28.432266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839481, 29.557087, 29.179333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627129, 29.338070, 28.920609>,  <40.499718, 29.206659, 28.765375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627129, 29.338070, 28.920609>,  <40.839481, 29.557087, 29.179333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627129, 29.338070, 28.920609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393272, -0.835261, 0.384288,
		-0.750668, -0.050360, 0.658758,
		-0.530882, -0.547543, -0.646808,
		40.467865, 29.173807, 28.726566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571129, 28.982819, 29.604965>,  <40.839481, 29.557087, 29.179333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571129, 28.982819, 29.604965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521126, 28.862564, 29.226761>,  <40.491123, 28.790411, 28.999838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521126, 28.862564, 29.226761>,  <40.571129, 28.982819, 29.604965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521126, 28.862564, 29.226761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424551, -0.877539, 0.222893,
		-0.896732, -0.373553, 0.237338,
		-0.125012, -0.300638, -0.945510,
		40.483624, 28.772373, 28.943108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154224, 28.369076, 29.664677>,  <40.571129, 28.982819, 29.604965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154224, 28.369076, 29.664677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375175, 28.377449, 29.331345>,  <40.507744, 28.382473, 29.131344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.375175, 28.377449, 29.331345>,  <40.154224, 28.369076, 29.664677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375175, 28.377449, 29.331345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328215, -0.924396, 0.194339,
		-0.766261, -0.380860, -0.517484,
		0.552375, 0.020932, -0.833332,
		40.540890, 28.383728, 29.081345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019283, 27.753492, 29.234539>,  <40.154224, 28.369076, 29.664677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019283, 27.753492, 29.234539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.367920, 27.894272, 29.098034>,  <40.577103, 27.978739, 29.016130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.367920, 27.894272, 29.098034>,  <40.019283, 27.753492, 29.234539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367920, 27.894272, 29.098034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379387, -0.925119, 0.014873,
		-0.310473, -0.142434, -0.939851,
		0.871592, 0.351949, -0.341262,
		40.629398, 27.999857, 28.995655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385014, 27.145691, 28.876234>,  <40.019283, 27.753492, 29.234539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385014, 27.145691, 28.876234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689232, 27.404263, 28.851902>,  <40.871761, 27.559404, 28.837303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689232, 27.404263, 28.851902>,  <40.385014, 27.145691, 28.876234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689232, 27.404263, 28.851902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648243, -0.750685, 0.127489,
		0.036748, -0.136395, -0.989973,
		0.760547, 0.646427, -0.060831,
		40.917397, 27.598190, 28.833652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820202, 26.961344, 28.291361>,  <40.385014, 27.145691, 28.876234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820202, 26.961344, 28.291361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031086, 27.172276, 28.557888>,  <41.157616, 27.298834, 28.717804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031086, 27.172276, 28.557888>,  <40.820202, 26.961344, 28.291361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031086, 27.172276, 28.557888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597536, -0.787588, 0.150515,
		0.604153, 0.318795, -0.730321,
		0.527209, 0.527327, 0.666316,
		41.189247, 27.330473, 28.757782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489639, 26.978212, 27.991043>,  <40.820202, 26.961344, 28.291361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489639, 26.978212, 27.991043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.564293, 27.073559, 28.372272>,  <41.609085, 27.130766, 28.601009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.564293, 27.073559, 28.372272>,  <41.489639, 26.978212, 27.991043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564293, 27.073559, 28.372272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785214, -0.619224, 0.001104,
		0.590429, 0.748160, -0.302739,
		0.186637, 0.238366, 0.953073,
		41.620285, 27.145069, 28.658194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116261, 27.246117, 28.013128>,  <41.489639, 26.978212, 27.991043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116261, 27.246117, 28.013128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032078, 27.100395, 28.376003>,  <41.981567, 27.012962, 28.593729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032078, 27.100395, 28.376003>,  <42.116261, 27.246117, 28.013128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032078, 27.100395, 28.376003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813666, -0.579663, -0.044020,
		0.541901, 0.728885, 0.418413,
		-0.210453, -0.364303, 0.907190,
		41.968941, 26.991104, 28.648161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745258, 27.107279, 28.208921>,  <42.116261, 27.246117, 28.013128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745258, 27.107279, 28.208921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.526260, 26.902027, 28.473331>,  <42.394863, 26.778875, 28.631977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.526260, 26.902027, 28.473331>,  <42.745258, 27.107279, 28.208921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526260, 26.902027, 28.473331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766703, -0.624100, 0.150551,
		0.335293, 0.589234, 0.735107,
		-0.547490, -0.513130, 0.661023,
		42.362015, 26.748089, 28.671638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<25.719063, 22.969551, 29.010612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.931076, 23.131805, 29.308479>,  <26.058283, 23.229158, 29.487200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.931076, 23.131805, 29.308479>,  <25.719063, 22.969551, 29.010612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931076, 23.131805, 29.308479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156323, -0.816375, 0.555963,
		0.833445, -0.411086, -0.369293,
		0.530030, 0.405636, 0.744666,
		26.090086, 23.253496, 29.531879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199299, 22.405016, 29.315500>,  <25.719063, 22.969551, 29.010612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199299, 22.405016, 29.315500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.194412, 22.684540, 29.601582>,  <26.191481, 22.852255, 29.773230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.194412, 22.684540, 29.601582>,  <26.199299, 22.405016, 29.315500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194412, 22.684540, 29.601582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072848, -0.713978, 0.696368,
		0.997268, -0.043594, 0.059630,
		-0.012217, 0.698810, 0.715203,
		26.190746, 22.894182, 29.816143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695692, 22.180395, 29.850292>,  <26.199299, 22.405016, 29.315500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695692, 22.180395, 29.850292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.490206, 22.444630, 30.069279>,  <26.366913, 22.603170, 30.200670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.490206, 22.444630, 30.069279>,  <26.695692, 22.180395, 29.850292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490206, 22.444630, 30.069279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054319, -0.661865, 0.747652,
		0.856238, 0.354345, 0.375894,
		-0.513718, 0.660587, 0.547466,
		26.336090, 22.642805, 30.233519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085768, 22.398748, 30.430035>,  <26.695692, 22.180395, 29.850292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085768, 22.398748, 30.430035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.692911, 22.428139, 30.499317>,  <26.457197, 22.445772, 30.540888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.692911, 22.428139, 30.499317>,  <27.085768, 22.398748, 30.430035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692911, 22.428139, 30.499317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078158, -0.678078, 0.730822,
		0.171146, 0.731308, 0.660225,
		-0.982141, 0.073475, 0.173208,
		26.398270, 22.450182, 30.551279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971996, 22.070620, 31.083344>,  <27.085768, 22.398748, 30.430035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971996, 22.070620, 31.083344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.589684, 22.129536, 30.981533>,  <26.360296, 22.164885, 30.920446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.589684, 22.129536, 30.981533>,  <26.971996, 22.070620, 31.083344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589684, 22.129536, 30.981533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282092, -0.703740, 0.652054,
		-0.083078, 0.695022, 0.714172,
		-0.955784, 0.147291, -0.254525,
		26.302948, 22.173723, 30.905176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642517, 21.857794, 31.668324>,  <26.971996, 22.070620, 31.083344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642517, 21.857794, 31.668324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.370663, 21.844894, 31.375187>,  <26.207550, 21.837154, 31.199305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.370663, 21.844894, 31.375187>,  <26.642517, 21.857794, 31.668324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370663, 21.844894, 31.375187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383409, -0.836090, 0.392365,
		-0.625375, 0.547643, 0.555871,
		-0.679635, -0.032249, -0.732841,
		26.166773, 21.835220, 31.155334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971411, 21.857365, 32.082829>,  <26.642517, 21.857794, 31.668324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971411, 21.857365, 32.082829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.930386, 21.699314, 31.717674>,  <25.905769, 21.604483, 31.498583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.930386, 21.699314, 31.717674>,  <25.971411, 21.857365, 32.082829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930386, 21.699314, 31.717674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202454, -0.890222, 0.408067,
		-0.973906, 0.226670, 0.011310,
		-0.102565, -0.395128, -0.912882,
		25.899616, 21.580776, 31.443810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506186, 21.383211, 32.073429>,  <25.971411, 21.857365, 32.082829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506186, 21.383211, 32.073429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.645821, 21.270794, 31.715847>,  <25.729601, 21.203344, 31.501299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.645821, 21.270794, 31.715847>,  <25.506186, 21.383211, 32.073429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645821, 21.270794, 31.715847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087794, -0.959580, 0.267390,
		-0.932969, -0.014858, -0.359650,
		0.349086, -0.281042, -0.893955,
		25.750547, 21.186481, 31.447660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103561, 20.625708, 31.882488>,  <25.506186, 21.383211, 32.073429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103561, 20.625708, 31.882488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.450623, 20.656216, 31.685974>,  <25.658859, 20.674520, 31.568066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.450623, 20.656216, 31.685974>,  <25.103561, 20.625708, 31.882488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450623, 20.656216, 31.685974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138424, -0.986149, 0.091376,
		-0.477513, -0.147289, -0.866192,
		0.867652, 0.076269, -0.491287,
		25.710918, 20.679096, 31.538588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101465, 20.158129, 31.364676>,  <25.103561, 20.625708, 31.882488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101465, 20.158129, 31.364676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.484337, 20.232243, 31.453651>,  <25.714060, 20.276711, 31.507036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.484337, 20.232243, 31.453651>,  <25.101465, 20.158129, 31.364676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484337, 20.232243, 31.453651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191749, -0.981414, -0.007635,
		0.216890, 0.049960, -0.974917,
		0.957179, 0.185283, 0.222439,
		25.771490, 20.287828, 31.520384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.477253, 19.752794, 30.869846>,  <25.101465, 20.158129, 31.364676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.477253, 19.752794, 30.869846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.744102, 19.859283, 31.148148>,  <25.904211, 19.923176, 31.315128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.744102, 19.859283, 31.148148>,  <25.477253, 19.752794, 30.869846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744102, 19.859283, 31.148148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358361, -0.933484, 0.013572,
		0.653089, 0.240277, -0.718152,
		0.667122, 0.266221, 0.695754,
		25.944239, 19.939150, 31.356874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170034, 19.389526, 30.787422>,  <25.477253, 19.752794, 30.869846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170034, 19.389526, 30.787422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.159370, 19.486561, 31.175327>,  <26.152971, 19.544781, 31.408070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.159370, 19.486561, 31.175327>,  <26.170034, 19.389526, 30.787422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159370, 19.486561, 31.175327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289967, -0.926522, 0.239741,
		0.956665, 0.287591, -0.045639,
		-0.026662, 0.242586, 0.969763,
		26.151373, 19.559338, 31.466257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860777, 19.406422, 31.108656>,  <26.170034, 19.389526, 30.787422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860777, 19.406422, 31.108656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.588247, 19.274048, 31.369816>,  <26.424730, 19.194624, 31.526512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.588247, 19.274048, 31.369816>,  <26.860777, 19.406422, 31.108656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588247, 19.274048, 31.369816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531979, -0.836544, 0.131120,
		0.502789, 0.436665, 0.746008,
		-0.681324, -0.330935, 0.652901,
		26.383850, 19.174767, 31.565685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428160, 19.252939, 31.660334>,  <26.860777, 19.406422, 31.108656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428160, 19.252939, 31.660334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073277, 19.430412, 31.710949>,  <26.860348, 19.536896, 31.741318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.073277, 19.430412, 31.710949>,  <27.428160, 19.252939, 31.660334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073277, 19.430412, 31.710949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421670, -0.891071, 0.167887,
		0.187243, 0.095593, 0.977651,
		-0.887206, 0.443682, 0.126538,
		26.807116, 19.563517, 31.748911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071846, 19.415358, 31.464222>,  <27.428160, 19.252939, 31.660334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071846, 19.415358, 31.464222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.293406, 19.139767, 31.277241>,  <28.426340, 18.974413, 31.165052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.293406, 19.139767, 31.277241>,  <28.071846, 19.415358, 31.464222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293406, 19.139767, 31.277241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243193, 0.670845, -0.700588,
		0.796276, 0.274372, 0.539133,
		0.553897, -0.688975, -0.467452,
		28.459574, 18.933075, 31.137005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692854, 19.689684, 31.390081>,  <28.071846, 19.415358, 31.464222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692854, 19.689684, 31.390081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679964, 19.400963, 31.113541>,  <28.672230, 19.227730, 30.947617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.679964, 19.400963, 31.113541>,  <28.692854, 19.689684, 31.390081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679964, 19.400963, 31.113541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257667, 0.662329, -0.703511,
		0.965696, -0.200808, 0.164641,
		-0.032224, -0.721801, -0.691350,
		28.670298, 19.184423, 30.906136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319679, 19.703299, 31.027014>,  <28.692854, 19.689684, 31.390081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319679, 19.703299, 31.027014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.067154, 19.516830, 30.779102>,  <28.915638, 19.404949, 30.630356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.067154, 19.516830, 30.779102>,  <29.319679, 19.703299, 31.027014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067154, 19.516830, 30.779102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301101, 0.589144, -0.749832,
		0.714688, -0.659997, -0.231571,
		-0.631315, -0.466170, -0.619780,
		28.877760, 19.376980, 30.593168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716543, 19.476469, 30.417315>,  <29.319679, 19.703299, 31.027014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716543, 19.476469, 30.417315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333118, 19.478291, 30.303375>,  <29.103064, 19.479383, 30.235012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333118, 19.478291, 30.303375>,  <29.716543, 19.476469, 30.417315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333118, 19.478291, 30.303375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251201, 0.485138, -0.837579,
		0.134377, -0.874426, -0.466179,
		-0.958562, 0.004553, -0.284848,
		29.045549, 19.479656, 30.217920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840553, 19.319578, 29.725996>,  <29.716543, 19.476469, 30.417315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840553, 19.319578, 29.725996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457033, 19.432953, 29.733604>,  <29.226921, 19.500977, 29.738169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457033, 19.432953, 29.733604>,  <29.840553, 19.319578, 29.725996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457033, 19.432953, 29.733604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127850, 0.490343, -0.862101,
		-0.253677, -0.824152, -0.506380,
		-0.958802, 0.283436, 0.019021,
		29.169392, 19.517984, 29.739311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658974, 19.119791, 29.060942>,  <29.840553, 19.319578, 29.725996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658974, 19.119791, 29.060942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.385050, 19.387394, 29.176502>,  <29.220695, 19.547955, 29.245838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.385050, 19.387394, 29.176502>,  <29.658974, 19.119791, 29.060942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385050, 19.387394, 29.176502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350791, 0.650135, -0.673996,
		-0.638732, -0.360216, -0.679901,
		-0.684812, 0.669006, 0.288901,
		29.179605, 19.588097, 29.263172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261648, 19.305616, 28.508627>,  <29.658974, 19.119791, 29.060942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261648, 19.305616, 28.508627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221455, 19.620171, 28.752430>,  <29.197338, 19.808903, 28.898712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.221455, 19.620171, 28.752430>,  <29.261648, 19.305616, 28.508627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221455, 19.620171, 28.752430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117973, 0.617702, -0.777513,
		-0.987920, -0.006223, -0.154842,
		-0.100485, 0.786387, 0.609506,
		29.191309, 19.856087, 28.935282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782248, 19.774952, 28.105362>,  <29.261648, 19.305616, 28.508627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782248, 19.774952, 28.105362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004385, 19.981468, 28.366142>,  <29.137667, 20.105377, 28.522610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.004385, 19.981468, 28.366142>,  <28.782248, 19.774952, 28.105362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004385, 19.981468, 28.366142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054277, 0.759777, -0.647914,
		-0.829848, 0.395200, 0.393914,
		0.555343, 0.516290, 0.651950,
		29.170988, 20.136354, 28.561728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524593, 20.495104, 27.990309>,  <28.782248, 19.774952, 28.105362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524593, 20.495104, 27.990309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.858297, 20.535305, 28.207161>,  <29.058519, 20.559425, 28.337273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.858297, 20.535305, 28.207161>,  <28.524593, 20.495104, 27.990309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858297, 20.535305, 28.207161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183269, 0.876797, -0.444566,
		-0.520019, 0.470240, 0.713060,
		0.834262, 0.100501, 0.542132,
		29.108576, 20.565454, 28.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442240, 21.193100, 28.318960>,  <28.524593, 20.495104, 27.990309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442240, 21.193100, 28.318960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.832047, 21.103764, 28.327282>,  <29.065931, 21.050161, 28.332275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.832047, 21.103764, 28.327282>,  <28.442240, 21.193100, 28.318960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832047, 21.103764, 28.327282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219482, 0.930309, -0.293857,
		0.046275, 0.290936, 0.955623,
		0.974518, -0.223340, 0.020805,
		29.124403, 21.036762, 28.333523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742960, 21.704845, 28.661827>,  <28.442240, 21.193100, 28.318960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742960, 21.704845, 28.661827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.026224, 21.516880, 28.451042>,  <29.196182, 21.404100, 28.324572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.026224, 21.516880, 28.451042>,  <28.742960, 21.704845, 28.661827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026224, 21.516880, 28.451042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345233, 0.881504, -0.322126,
		0.615890, 0.046193, 0.786476,
		0.708162, -0.469912, -0.526963,
		29.238672, 21.375906, 28.292953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335321, 22.113974, 28.850647>,  <28.742960, 21.704845, 28.661827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335321, 22.113974, 28.850647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420883, 21.906998, 28.519226>,  <29.472221, 21.782812, 28.320374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420883, 21.906998, 28.519226>,  <29.335321, 22.113974, 28.850647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420883, 21.906998, 28.519226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378201, 0.825904, -0.418147,
		0.900671, -0.223915, 0.372363,
		0.213907, -0.517441, -0.828552,
		29.485056, 21.751766, 28.270660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916582, 22.345413, 28.647831>,  <29.335321, 22.113974, 28.850647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916582, 22.345413, 28.647831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790640, 22.179287, 28.306450>,  <29.715075, 22.079611, 28.101622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790640, 22.179287, 28.306450>,  <29.916582, 22.345413, 28.647831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790640, 22.179287, 28.306450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374579, 0.771827, -0.513784,
		0.872099, -0.481453, -0.087446,
		-0.314856, -0.415315, -0.853451,
		29.696184, 22.054693, 28.050415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467834, 22.472610, 28.073717>,  <29.916582, 22.345413, 28.647831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467834, 22.472610, 28.073717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163649, 22.388039, 27.828117>,  <29.981138, 22.337296, 27.680758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163649, 22.388039, 27.828117>,  <30.467834, 22.472610, 28.073717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163649, 22.388039, 27.828117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167778, 0.849439, -0.500303,
		0.627333, -0.483478, -0.610494,
		-0.760463, -0.211429, -0.613998,
		29.935509, 22.324610, 27.643917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070847, 22.416294, 28.029051>,  <30.467834, 22.472610, 28.073717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070847, 22.416294, 28.029051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372164, 22.609375, 28.207733>,  <31.552954, 22.725224, 28.314943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372164, 22.609375, 28.207733>,  <31.070847, 22.416294, 28.029051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372164, 22.609375, 28.207733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112718, -0.763915, 0.635396,
		0.647954, -0.428288, -0.629861,
		0.753293, 0.482704, 0.446706,
		31.598152, 22.754187, 28.341745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679457, 22.056097, 28.080929>,  <31.070847, 22.416294, 28.029051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679457, 22.056097, 28.080929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771826, 22.323273, 28.363922>,  <31.827248, 22.483578, 28.533718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771826, 22.323273, 28.363922>,  <31.679457, 22.056097, 28.080929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771826, 22.323273, 28.363922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235964, -0.743874, 0.625277,
		0.943926, 0.022550, -0.329387,
		0.230923, 0.667939, 0.707483,
		31.841103, 22.523655, 28.576166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366535, 21.927799, 28.173164>,  <31.679457, 22.056097, 28.080929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366535, 21.927799, 28.173164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213482, 22.109829, 28.494785>,  <32.121651, 22.219046, 28.687757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.213482, 22.109829, 28.494785>,  <32.366535, 21.927799, 28.173164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213482, 22.109829, 28.494785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141224, -0.831246, 0.537668,
		0.913043, 0.319281, 0.253795,
		-0.382633, 0.455072, 0.804053,
		32.098694, 22.246351, 28.736002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781025, 21.684483, 28.720461>,  <32.366535, 21.927799, 28.173164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781025, 21.684483, 28.720461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462200, 21.829311, 28.913784>,  <32.270905, 21.916208, 29.029778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462200, 21.829311, 28.913784>,  <32.781025, 21.684483, 28.720461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462200, 21.829311, 28.913784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121991, -0.687286, 0.716070,
		0.591442, 0.629714, 0.503643,
		-0.797066, 0.362074, 0.483309,
		32.223080, 21.937933, 29.058777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966618, 21.747459, 29.470018>,  <32.781025, 21.684483, 28.720461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966618, 21.747459, 29.470018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566833, 21.745041, 29.482880>,  <32.326962, 21.743589, 29.490597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566833, 21.745041, 29.482880>,  <32.966618, 21.747459, 29.470018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566833, 21.745041, 29.482880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025949, -0.745061, 0.666492,
		0.019924, 0.666969, 0.744819,
		-0.999465, -0.006048, 0.032152,
		32.266994, 21.743227, 29.492525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754505, 21.571905, 30.202393>,  <32.966618, 21.747459, 29.470018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754505, 21.571905, 30.202393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444824, 21.467571, 29.971714>,  <32.259018, 21.404972, 29.833307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444824, 21.467571, 29.971714>,  <32.754505, 21.571905, 30.202393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444824, 21.467571, 29.971714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200508, -0.763142, 0.614337,
		-0.600341, 0.591252, 0.538526,
		-0.774201, -0.260833, -0.576697,
		32.212563, 21.389322, 29.798704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248203, 21.433270, 30.704681>,  <32.754505, 21.571905, 30.202393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248203, 21.433270, 30.704681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118279, 21.243984, 30.377129>,  <32.040325, 21.130413, 30.180597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118279, 21.243984, 30.377129>,  <32.248203, 21.433270, 30.704681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118279, 21.243984, 30.377129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274161, -0.781542, 0.560381,
		-0.905170, 0.406524, 0.124117,
		-0.324811, -0.473212, -0.818882,
		32.020836, 21.102020, 30.131464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948771, 22.061560, 31.013592>,  <32.248203, 21.433270, 30.704681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948771, 22.061560, 31.013592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012135, 22.193707, 31.385777>,  <32.050152, 22.272995, 31.609087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012135, 22.193707, 31.385777>,  <31.948771, 22.061560, 31.013592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012135, 22.193707, 31.385777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215016, 0.908205, -0.359071,
		-0.963677, 0.256946, 0.072837,
		0.158412, 0.330368, 0.930464,
		32.059658, 22.292816, 31.664915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536806, 22.675175, 31.133097>,  <31.948771, 22.061560, 31.013592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536806, 22.675175, 31.133097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837141, 22.692661, 31.396713>,  <32.017342, 22.703154, 31.554882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837141, 22.692661, 31.396713>,  <31.536806, 22.675175, 31.133097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837141, 22.692661, 31.396713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264226, 0.894604, -0.360373,
		-0.605334, 0.444716, 0.660150,
		0.750836, 0.043717, 0.659040,
		32.062393, 22.705776, 31.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422249, 23.301277, 31.467844>,  <31.536806, 22.675175, 31.133097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422249, 23.301277, 31.467844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803782, 23.222736, 31.558754>,  <32.032700, 23.175611, 31.613300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803782, 23.222736, 31.558754>,  <31.422249, 23.301277, 31.467844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803782, 23.222736, 31.558754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217451, 0.973442, -0.071595,
		-0.207183, 0.117711, 0.971195,
		0.953829, -0.196354, 0.227277,
		32.089931, 23.163830, 31.626938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632736, 23.901733, 31.948790>,  <31.422249, 23.301277, 31.467844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632736, 23.901733, 31.948790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954386, 23.733276, 31.780968>,  <32.147377, 23.632202, 31.680275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.954386, 23.733276, 31.780968>,  <31.632736, 23.901733, 31.948790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954386, 23.733276, 31.780968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412694, 0.903465, -0.115912,
		0.427868, -0.079940, 0.900299,
		0.804122, -0.421143, -0.419555,
		32.195621, 23.606934, 31.655102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322491, 24.253216, 32.149132>,  <31.632736, 23.901733, 31.948790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322491, 24.253216, 32.149132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378963, 24.086552, 31.789921>,  <32.412849, 23.986553, 31.574394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378963, 24.086552, 31.789921>,  <32.322491, 24.253216, 32.149132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378963, 24.086552, 31.789921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511842, 0.807189, -0.294045,
		0.847399, -0.418136, 0.327228,
		0.141184, -0.416663, -0.898031,
		32.421318, 23.961554, 31.520512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923130, 24.581724, 31.985502>,  <32.322491, 24.253216, 32.149132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923130, 24.581724, 31.985502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751919, 24.426170, 31.659176>,  <32.649193, 24.332838, 31.463379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751919, 24.426170, 31.659176>,  <32.923130, 24.581724, 31.985502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751919, 24.426170, 31.659176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290455, 0.795607, -0.531643,
		0.855820, -0.464517, -0.227589,
		-0.428029, -0.388887, -0.815818,
		32.623508, 24.309504, 31.414431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415443, 24.586636, 31.516031>,  <32.923130, 24.581724, 31.985502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415443, 24.586636, 31.516031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073696, 24.579449, 31.308285>,  <32.868649, 24.575136, 31.183638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073696, 24.579449, 31.308285>,  <33.415443, 24.586636, 31.516031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073696, 24.579449, 31.308285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366685, 0.687339, -0.626982,
		0.368245, -0.726114, -0.580649,
		-0.854364, -0.017968, -0.519364,
		32.817387, 24.574059, 31.152475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.625809, 21.906221, 34.599174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.570448, 21.667194, 34.283260>,  <26.537231, 21.523777, 34.093712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.570448, 21.667194, 34.283260>,  <26.625809, 21.906221, 34.599174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570448, 21.667194, 34.283260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441606, 0.676556, -0.589285,
		0.886470, -0.430330, 0.170254,
		-0.138401, -0.597569, -0.789782,
		26.528927, 21.487925, 34.046326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321007, 21.682409, 34.425240>,  <26.625809, 21.906221, 34.599174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321007, 21.682409, 34.425240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.113934, 21.621956, 34.088394>,  <26.989689, 21.585684, 33.886288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.113934, 21.621956, 34.088394>,  <27.321007, 21.682409, 34.425240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113934, 21.621956, 34.088394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613178, 0.620887, -0.488377,
		0.596671, -0.769193, -0.228749,
		-0.517684, -0.151137, -0.842117,
		26.958628, 21.576614, 33.835758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760855, 21.906515, 33.945435>,  <27.321007, 21.682409, 34.425240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760855, 21.906515, 33.945435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.414965, 21.889343, 33.745274>,  <27.207430, 21.879040, 33.625175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.414965, 21.889343, 33.745274>,  <27.760855, 21.906515, 33.945435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414965, 21.889343, 33.745274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260465, 0.813555, -0.519890,
		0.429424, -0.579901, -0.692322,
		-0.864727, -0.042928, -0.500404,
		27.155546, 21.876465, 33.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879213, 21.965979, 33.244980>,  <27.760855, 21.906515, 33.945435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879213, 21.965979, 33.244980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.516115, 22.105526, 33.338181>,  <27.298256, 22.189255, 33.394100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.516115, 22.105526, 33.338181>,  <27.879213, 21.965979, 33.244980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516115, 22.105526, 33.338181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184465, 0.830747, -0.525198,
		-0.376791, -0.433764, -0.818460,
		-0.907745, 0.348868, 0.233003,
		27.243792, 22.210186, 33.408081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751516, 22.217167, 32.615925>,  <27.879213, 21.965979, 33.244980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751516, 22.217167, 32.615925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486223, 22.369305, 32.873749>,  <27.327047, 22.460588, 33.028442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486223, 22.369305, 32.873749>,  <27.751516, 22.217167, 32.615925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486223, 22.369305, 32.873749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179237, 0.916896, -0.356617,
		-0.726632, -0.120992, -0.676289,
		-0.663235, 0.380345, 0.644560,
		27.287252, 22.483408, 33.067116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234779, 22.521172, 32.153984>,  <27.751516, 22.217167, 32.615925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234779, 22.521172, 32.153984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.203207, 22.700344, 32.510216>,  <27.184263, 22.807848, 32.723953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.203207, 22.700344, 32.510216>,  <27.234779, 22.521172, 32.153984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203207, 22.700344, 32.510216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045386, 0.894052, -0.445658,
		-0.995846, 0.005244, -0.090898,
		-0.078931, 0.447932, 0.890577,
		27.179527, 22.834724, 32.777390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707558, 23.035656, 32.135452>,  <27.234779, 22.521172, 32.153984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707558, 23.035656, 32.135452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.968882, 23.134232, 32.421795>,  <27.125677, 23.193377, 32.593601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.968882, 23.134232, 32.421795>,  <26.707558, 23.035656, 32.135452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968882, 23.134232, 32.421795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118294, 0.900700, -0.418027,
		-0.747791, 0.357783, 0.559285,
		0.653311, 0.246437, 0.715859,
		27.164875, 23.208162, 32.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601339, 23.740463, 32.199516>,  <26.707558, 23.035656, 32.135452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601339, 23.740463, 32.199516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.938713, 23.709217, 32.412125>,  <27.141136, 23.690470, 32.539692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.938713, 23.709217, 32.412125>,  <26.601339, 23.740463, 32.199516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938713, 23.709217, 32.412125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181866, 0.972474, -0.145669,
		-0.505515, 0.219528, 0.834423,
		0.843433, -0.078115, 0.531525,
		27.191744, 23.685783, 32.571583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610859, 24.362679, 32.691685>,  <26.601339, 23.740463, 32.199516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610859, 24.362679, 32.691685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.984787, 24.226952, 32.649773>,  <27.209143, 24.145515, 32.624626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.984787, 24.226952, 32.649773>,  <26.610859, 24.362679, 32.691685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984787, 24.226952, 32.649773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307179, 0.920663, -0.240874,
		0.178198, 0.192987, 0.964884,
		0.934819, -0.339316, -0.104779,
		27.265232, 24.125156, 32.618340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077667, 24.913496, 32.971901>,  <26.610859, 24.362679, 32.691685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077667, 24.913496, 32.971901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.309744, 24.695251, 32.730011>,  <27.448990, 24.564304, 32.584877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.309744, 24.695251, 32.730011>,  <27.077667, 24.913496, 32.971901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309744, 24.695251, 32.730011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372477, 0.838018, -0.398732,
		0.724320, 0.006096, 0.689437,
		0.580191, -0.545609, -0.604722,
		27.483801, 24.531569, 32.548595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616476, 25.350870, 33.013435>,  <27.077667, 24.913496, 32.971901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616476, 25.350870, 33.013435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.616930, 25.115337, 32.690132>,  <27.617203, 24.974018, 32.496151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.616930, 25.115337, 32.690132>,  <27.616476, 25.350870, 33.013435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616930, 25.115337, 32.690132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364571, 0.752870, -0.547974,
		0.931175, -0.294045, 0.215524,
		0.001133, -0.588833, -0.808254,
		27.617270, 24.938688, 32.447655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207150, 25.580101, 32.729279>,  <27.616476, 25.350870, 33.013435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207150, 25.580101, 32.729279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.011332, 25.387325, 32.438602>,  <27.893841, 25.271660, 32.264194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.011332, 25.387325, 32.438602>,  <28.207150, 25.580101, 32.729279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011332, 25.387325, 32.438602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348969, 0.655451, -0.669779,
		0.799104, -0.581479, -0.152690,
		-0.489543, -0.481939, -0.726692,
		27.864468, 25.242744, 32.220596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878031, 25.298033, 32.719261>,  <28.207150, 25.580101, 32.729279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878031, 25.298033, 32.719261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.224447, 25.394386, 32.894508>,  <29.432297, 25.452198, 32.999657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.224447, 25.394386, 32.894508>,  <28.878031, 25.298033, 32.719261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224447, 25.394386, 32.894508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056126, -0.823908, 0.563937,
		0.496814, -0.512983, -0.700018,
		0.866040, 0.240882, 0.438121,
		29.484259, 25.466650, 33.025944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392672, 24.729015, 32.659710>,  <28.878031, 25.298033, 32.719261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392672, 24.729015, 32.659710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465775, 24.959923, 32.978046>,  <29.509636, 25.098467, 33.169048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.465775, 24.959923, 32.978046>,  <29.392672, 24.729015, 32.659710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465775, 24.959923, 32.978046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024211, -0.811870, 0.583336,
		0.982860, -0.087340, -0.162350,
		0.182755, 0.577269, 0.795840,
		29.520601, 25.133102, 33.216797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679262, 24.288933, 33.104530>,  <29.392672, 24.729015, 32.659710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679262, 24.288933, 33.104530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.651543, 24.574608, 33.383137>,  <29.634911, 24.746012, 33.550301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.651543, 24.574608, 33.383137>,  <29.679262, 24.288933, 33.104530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651543, 24.574608, 33.383137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022270, -0.696914, 0.716809,
		0.997347, 0.065185, 0.032391,
		-0.069299, 0.714186, 0.696517,
		29.630753, 24.788864, 33.592091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110886, 24.074987, 33.550179>,  <29.679262, 24.288933, 33.104530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110886, 24.074987, 33.550179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893875, 24.332352, 33.766212>,  <29.763668, 24.486771, 33.895832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.893875, 24.332352, 33.766212>,  <30.110886, 24.074987, 33.550179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893875, 24.332352, 33.766212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020440, -0.632624, 0.774189,
		0.839790, 0.431057, 0.330064,
		-0.542527, 0.643410, 0.540082,
		29.731117, 24.525375, 33.928238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443069, 24.080574, 34.220119>,  <30.110886, 24.074987, 33.550179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443069, 24.080574, 34.220119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.069542, 24.209534, 34.282139>,  <29.845425, 24.286909, 34.319351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.069542, 24.209534, 34.282139>,  <30.443069, 24.080574, 34.220119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069542, 24.209534, 34.282139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122093, -0.694601, 0.708959,
		0.336266, 0.643109, 0.687994,
		-0.933819, 0.322398, 0.155052,
		29.789396, 24.306253, 34.328655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355812, 23.983883, 34.937233>,  <30.443069, 24.080574, 34.220119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355812, 23.983883, 34.937233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003008, 24.004467, 34.749866>,  <29.791325, 24.016817, 34.637447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003008, 24.004467, 34.749866>,  <30.355812, 23.983883, 34.937233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003008, 24.004467, 34.749866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249611, -0.894131, 0.371785,
		-0.399691, 0.444839, 0.801477,
		-0.882010, 0.051458, -0.468413,
		29.738405, 24.019905, 34.609344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937628, 23.856623, 35.526119>,  <30.355812, 23.983883, 34.937233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937628, 23.856623, 35.526119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.753658, 23.791672, 35.176926>,  <29.643276, 23.752701, 34.967411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.753658, 23.791672, 35.176926>,  <29.937628, 23.856623, 35.526119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753658, 23.791672, 35.176926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274786, -0.908851, 0.313818,
		-0.844370, 0.384217, 0.373386,
		-0.459926, -0.162377, -0.872984,
		29.615681, 23.742958, 34.915031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140011, 23.698374, 35.561462>,  <29.937628, 23.856623, 35.526119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140011, 23.698374, 35.561462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.239759, 23.522381, 35.216389>,  <29.299608, 23.416784, 35.009342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.239759, 23.522381, 35.216389>,  <29.140011, 23.698374, 35.561462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239759, 23.522381, 35.216389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114885, -0.897980, 0.424774,
		-0.961569, -0.006816, -0.274478,
		0.249371, -0.439983, -0.862687,
		29.314571, 23.390387, 34.957584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617132, 23.094698, 35.479660>,  <29.140011, 23.698374, 35.561462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617132, 23.094698, 35.479660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.925282, 23.040474, 35.230453>,  <29.110170, 23.007940, 35.080929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.925282, 23.040474, 35.230453>,  <28.617132, 23.094698, 35.479660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925282, 23.040474, 35.230453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049313, -0.986878, 0.153755,
		-0.635682, -0.087726, -0.766950,
		0.770374, -0.135560, -0.623015,
		29.156393, 22.999805, 35.043549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421877, 22.479565, 35.154095>,  <28.617132, 23.094698, 35.479660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421877, 22.479565, 35.154095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.802769, 22.521061, 35.039207>,  <29.031303, 22.545959, 34.970276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.802769, 22.521061, 35.039207>,  <28.421877, 22.479565, 35.154095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802769, 22.521061, 35.039207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152361, -0.976501, 0.152420,
		-0.264659, -0.188901, -0.945660,
		0.952230, 0.103742, -0.287221,
		29.088438, 22.552183, 34.953041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506491, 21.924250, 34.636066>,  <28.421877, 22.479565, 35.154095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506491, 21.924250, 34.636066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.863794, 22.023617, 34.785934>,  <29.078176, 22.083237, 34.875854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.863794, 22.023617, 34.785934>,  <28.506491, 21.924250, 34.636066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863794, 22.023617, 34.785934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176336, -0.960274, 0.216283,
		0.413513, -0.127130, -0.901579,
		0.893259, 0.248417, 0.374668,
		29.131773, 22.098143, 34.898335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822662, 21.360304, 34.462513>,  <28.506491, 21.924250, 34.636066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822662, 21.360304, 34.462513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.043486, 21.547672, 34.738430>,  <29.175980, 21.660093, 34.903980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.043486, 21.547672, 34.738430>,  <28.822662, 21.360304, 34.462513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043486, 21.547672, 34.738430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443359, -0.865547, 0.232942,
		0.706163, 0.177229, -0.685509,
		0.552056, 0.468422, 0.689793,
		29.209103, 21.688198, 34.945370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504889, 21.121441, 34.280922>,  <28.822662, 21.360304, 34.462513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504889, 21.121441, 34.280922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497499, 21.229290, 34.666039>,  <29.493067, 21.293999, 34.897106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497499, 21.229290, 34.666039>,  <29.504889, 21.121441, 34.280922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497499, 21.229290, 34.666039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117960, -0.955640, 0.269883,
		0.992846, 0.118556, -0.014153,
		-0.018471, 0.269622, 0.962789,
		29.491959, 21.310177, 34.954876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184156, 20.945745, 34.542042>,  <29.504889, 21.121441, 34.280922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184156, 20.945745, 34.542042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.900398, 20.953514, 34.823860>,  <29.730145, 20.958176, 34.992950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.900398, 20.953514, 34.823860>,  <30.184156, 20.945745, 34.542042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900398, 20.953514, 34.823860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100424, -0.986636, 0.128314,
		0.697621, 0.161778, 0.697964,
		-0.709395, 0.019422, 0.704544,
		29.687580, 20.959341, 35.035225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419338, 21.493076, 34.007183>,  <30.184156, 20.945745, 34.542042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419338, 21.493076, 34.007183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.665474, 21.196014, 33.901489>,  <30.813156, 21.017776, 33.838074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.665474, 21.196014, 33.901489>,  <30.419338, 21.493076, 34.007183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665474, 21.196014, 33.901489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401254, 0.583639, -0.705947,
		0.678494, 0.328371, 0.657129,
		0.615339, -0.742656, -0.264235,
		30.850075, 20.973217, 33.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100725, 21.740871, 33.997002>,  <30.419338, 21.493076, 34.007183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100725, 21.740871, 33.997002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.112703, 21.411346, 33.770573>,  <31.119890, 21.213631, 33.634716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.112703, 21.411346, 33.770573>,  <31.100725, 21.740871, 33.997002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112703, 21.411346, 33.770573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423436, 0.523453, -0.739391,
		0.905431, -0.217552, 0.364508,
		0.029947, -0.823813, -0.566070,
		31.121687, 21.164202, 33.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752083, 21.686329, 33.762665>,  <31.100725, 21.740871, 33.997002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752083, 21.686329, 33.762665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.515112, 21.483646, 33.512138>,  <31.372929, 21.362036, 33.361820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.515112, 21.483646, 33.512138>,  <31.752083, 21.686329, 33.762665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515112, 21.483646, 33.512138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353280, 0.535299, -0.767234,
		0.724031, -0.675798, -0.138116,
		-0.592429, -0.506708, -0.626319,
		31.337383, 21.331635, 33.324242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210575, 21.293898, 33.469292>,  <31.752083, 21.686329, 33.762665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210575, 21.293898, 33.469292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910322, 21.305428, 33.205257>,  <31.730169, 21.312346, 33.046837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910322, 21.305428, 33.205257>,  <32.210575, 21.293898, 33.469292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910322, 21.305428, 33.205257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591191, 0.475399, -0.651528,
		0.295027, -0.879298, -0.373891,
		-0.750635, 0.028823, -0.660088,
		31.685131, 21.314074, 33.007233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479179, 21.117426, 32.801178>,  <32.210575, 21.293898, 33.469292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479179, 21.117426, 32.801178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141525, 21.315792, 32.719681>,  <31.938934, 21.434813, 32.670784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141525, 21.315792, 32.719681>,  <32.479179, 21.117426, 32.801178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141525, 21.315792, 32.719681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460258, 0.475401, -0.749771,
		-0.274966, -0.726677, -0.629550,
		-0.844130, 0.495917, -0.203740,
		31.888287, 21.464567, 32.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386639, 21.162693, 31.976433>,  <32.479179, 21.117426, 32.801178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386639, 21.162693, 31.976433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154602, 21.453419, 32.123528>,  <32.015381, 21.627855, 32.211784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154602, 21.453419, 32.123528>,  <32.386639, 21.162693, 31.976433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154602, 21.453419, 32.123528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260330, 0.593211, -0.761794,
		-0.771828, -0.346180, -0.533330,
		-0.580095, 0.726815, 0.367736,
		31.980574, 21.671463, 32.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061417, 21.418108, 31.400591>,  <32.386639, 21.162693, 31.976433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061417, 21.418108, 31.400591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991423, 21.693302, 31.682316>,  <31.949425, 21.858419, 31.851351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.991423, 21.693302, 31.682316>,  <32.061417, 21.418108, 31.400591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991423, 21.693302, 31.682316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285131, 0.720107, -0.632571,
		-0.942380, 0.090129, -0.322176,
		-0.174988, 0.687985, 0.704312,
		31.938927, 21.899698, 31.893610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501648, 21.317774, 30.866598>,  <32.061417, 21.418108, 31.400591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501648, 21.317774, 30.866598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604795, 21.063168, 30.575848>,  <31.666683, 20.910404, 30.401398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604795, 21.063168, 30.575848>,  <31.501648, 21.317774, 30.866598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604795, 21.063168, 30.575848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541702, -0.718200, 0.436746,
		-0.800040, 0.281129, -0.530003,
		0.257866, -0.636518, -0.726877,
		31.682156, 20.872211, 30.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962358, 20.966955, 30.698370>,  <31.501648, 21.317774, 30.866598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962358, 20.966955, 30.698370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228619, 20.712059, 30.543022>,  <31.388374, 20.559122, 30.449814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228619, 20.712059, 30.543022>,  <30.962358, 20.966955, 30.698370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228619, 20.712059, 30.543022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505234, -0.767834, 0.393915,
		-0.549223, -0.065993, -0.833066,
		0.665652, -0.637241, -0.388370,
		31.428314, 20.520887, 30.426512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629160, 20.506311, 30.321032>,  <30.962358, 20.966955, 30.698370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629160, 20.506311, 30.321032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970650, 20.319725, 30.413605>,  <31.175543, 20.207773, 30.469149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.970650, 20.319725, 30.413605>,  <30.629160, 20.506311, 30.321032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970650, 20.319725, 30.413605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517652, -0.712052, 0.474361,
		-0.056481, -0.524776, -0.849365,
		0.853725, -0.466468, 0.231434,
		31.226767, 20.179785, 30.483034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514870, 19.832140, 30.114910>,  <30.629160, 20.506311, 30.321032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514870, 19.832140, 30.114910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822149, 19.798489, 30.368774>,  <31.006517, 19.778297, 30.521093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822149, 19.798489, 30.368774>,  <30.514870, 19.832140, 30.114910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822149, 19.798489, 30.368774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444326, -0.783763, 0.433924,
		0.460920, -0.615336, -0.639464,
		0.768197, -0.084126, 0.634662,
		31.052608, 19.773251, 30.559174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530048, 19.130157, 30.179314>,  <30.514870, 19.832140, 30.114910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530048, 19.130157, 30.179314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723372, 19.293674, 30.488972>,  <30.839365, 19.391785, 30.674767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723372, 19.293674, 30.488972>,  <30.530048, 19.130157, 30.179314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723372, 19.293674, 30.488972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200380, -0.809151, 0.552379,
		0.852209, -0.422093, -0.309156,
		0.483309, 0.408794, 0.774145,
		30.868364, 19.416313, 30.721214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907944, 18.634064, 30.432892>,  <30.530048, 19.130157, 30.179314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907944, 18.634064, 30.432892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887081, 18.897305, 30.733341>,  <30.874563, 19.055248, 30.913610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887081, 18.897305, 30.733341>,  <30.907944, 18.634064, 30.432892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887081, 18.897305, 30.733341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121728, -0.750726, 0.649302,
		0.991192, -0.057566, 0.119266,
		-0.052158, 0.658101, 0.751121,
		30.871433, 19.094734, 30.958677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193687, 18.294954, 30.945101>,  <30.907944, 18.634064, 30.432892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193687, 18.294954, 30.945101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997578, 18.566376, 31.163898>,  <30.879911, 18.729229, 31.295177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997578, 18.566376, 31.163898>,  <31.193687, 18.294954, 30.945101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997578, 18.566376, 31.163898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054406, -0.602544, 0.796229,
		0.869870, 0.420128, 0.258494,
		-0.490272, 0.678552, 0.546992,
		30.850496, 18.769941, 31.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621170, 18.473473, 31.593784>,  <31.193687, 18.294954, 30.945101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621170, 18.473473, 31.593784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234795, 18.549904, 31.663582>,  <31.002970, 18.595762, 31.705462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.234795, 18.549904, 31.663582>,  <31.621170, 18.473473, 31.593784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234795, 18.549904, 31.663582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006448, -0.656351, 0.754428,
		0.258685, 0.729857, 0.632764,
		-0.965940, 0.191079, 0.174495,
		30.945013, 18.607227, 31.715931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500891, 18.441349, 32.307137>,  <31.621170, 18.473473, 31.593784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500891, 18.441349, 32.307137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123810, 18.411774, 32.176998>,  <30.897562, 18.394028, 32.098915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.123810, 18.411774, 32.176998>,  <31.500891, 18.441349, 32.307137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123810, 18.411774, 32.176998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108611, -0.854011, 0.508792,
		-0.315467, 0.514974, 0.797046,
		-0.942700, -0.073939, -0.325344,
		30.841000, 18.389591, 32.079395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.742062, 31.769011, 23.038094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423031, 31.528885, 23.014469>,  <31.231611, 31.384809, 23.000294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423031, 31.528885, 23.014469>,  <31.742062, 31.769011, 23.038094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423031, 31.528885, 23.014469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227149, -0.389600, 0.892533,
		-0.558812, 0.698450, 0.447098,
		-0.797579, -0.600316, -0.059061,
		31.183758, 31.348789, 22.996750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356501, 31.750551, 23.772676>,  <31.742062, 31.769011, 23.038094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356501, 31.750551, 23.772676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242252, 31.421726, 23.575645>,  <31.173704, 31.224432, 23.457426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242252, 31.421726, 23.575645>,  <31.356501, 31.750551, 23.772676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242252, 31.421726, 23.575645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186519, -0.551845, 0.812821,
		-0.940017, 0.140283, 0.310948,
		-0.285621, -0.822063, -0.492578,
		31.156567, 31.175108, 23.427872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835211, 31.328707, 24.206535>,  <31.356501, 31.750551, 23.772676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835211, 31.328707, 24.206535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000647, 31.074272, 23.945969>,  <31.099907, 30.921612, 23.789629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000647, 31.074272, 23.945969>,  <30.835211, 31.328707, 24.206535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000647, 31.074272, 23.945969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224836, -0.621962, 0.750074,
		-0.882266, -0.456684, -0.114222,
		0.413589, -0.636084, -0.651415,
		31.124723, 30.883448, 23.750544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678093, 30.624056, 24.449905>,  <30.835211, 31.328707, 24.206535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678093, 30.624056, 24.449905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972887, 30.539440, 24.193123>,  <31.149763, 30.488670, 24.039053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972887, 30.539440, 24.193123>,  <30.678093, 30.624056, 24.449905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972887, 30.539440, 24.193123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397136, -0.633010, 0.664516,
		-0.546933, -0.744681, -0.382510,
		0.736985, -0.211537, -0.641954,
		31.193983, 30.475979, 24.000536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735550, 29.941019, 24.463392>,  <30.678093, 30.624056, 24.449905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735550, 29.941019, 24.463392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086826, 30.054153, 24.309101>,  <31.297592, 30.122034, 24.216526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086826, 30.054153, 24.309101>,  <30.735550, 29.941019, 24.463392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086826, 30.054153, 24.309101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460951, -0.715746, 0.524625,
		-0.127701, -0.638522, -0.758935,
		0.878189, 0.282836, -0.385728,
		31.350283, 30.139004, 24.193382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922510, 29.346987, 24.125963>,  <30.735550, 29.941019, 24.463392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922510, 29.346987, 24.125963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251289, 29.558830, 24.209785>,  <31.448557, 29.685936, 24.260078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251289, 29.558830, 24.209785>,  <30.922510, 29.346987, 24.125963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251289, 29.558830, 24.209785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410621, -0.805981, 0.426362,
		0.394705, -0.264399, -0.879944,
		0.821948, 0.529611, 0.209557,
		31.497873, 29.717714, 24.272652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467287, 28.961763, 23.783043>,  <30.922510, 29.346987, 24.125963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467287, 28.961763, 23.783043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621077, 29.177048, 24.083046>,  <31.713350, 29.306219, 24.263048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621077, 29.177048, 24.083046>,  <31.467287, 28.961763, 23.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621077, 29.177048, 24.083046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342498, -0.837632, 0.425520,
		0.857249, 0.093274, -0.506384,
		0.384473, 0.538212, 0.750005,
		31.736418, 29.338511, 24.308048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085743, 28.596491, 23.932589>,  <31.467287, 28.961763, 23.783043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085743, 28.596491, 23.932589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038918, 28.838017, 24.247982>,  <32.010822, 28.982933, 24.437218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038918, 28.838017, 24.247982>,  <32.085743, 28.596491, 23.932589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038918, 28.838017, 24.247982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471222, -0.665106, 0.579296,
		0.874212, 0.439364, -0.206673,
		-0.117062, 0.603816, 0.788481,
		32.003799, 29.019161, 24.484526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676788, 28.541668, 24.311476>,  <32.085743, 28.596491, 23.932589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676788, 28.541668, 24.311476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398468, 28.658924, 24.573753>,  <32.231476, 28.729279, 24.731119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398468, 28.658924, 24.573753>,  <32.676788, 28.541668, 24.311476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398468, 28.658924, 24.573753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478022, -0.492361, 0.727376,
		0.536061, 0.819543, 0.202456,
		-0.695797, 0.293140, 0.655695,
		32.189728, 28.746866, 24.770462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138939, 28.783667, 24.859646>,  <32.676788, 28.541668, 24.311476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138939, 28.783667, 24.859646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762558, 28.683708, 24.951008>,  <32.536732, 28.623734, 25.005825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762558, 28.683708, 24.951008>,  <33.138939, 28.783667, 24.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762558, 28.683708, 24.951008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330193, -0.528408, 0.782149,
		-0.074764, 0.811380, 0.579718,
		-0.940948, -0.249895, 0.228406,
		32.480274, 28.608740, 25.019529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224201, 28.735138, 25.490238>,  <33.138939, 28.783667, 24.859646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224201, 28.735138, 25.490238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880409, 28.535755, 25.444931>,  <32.674133, 28.416124, 25.417746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880409, 28.535755, 25.444931>,  <33.224201, 28.735138, 25.490238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880409, 28.535755, 25.444931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212060, -0.549319, 0.808257,
		-0.465103, 0.670662, 0.577833,
		-0.859482, -0.498458, -0.113270,
		32.622566, 28.386217, 25.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869968, 28.707582, 26.205391>,  <33.224201, 28.735138, 25.490238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869968, 28.707582, 26.205391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732658, 28.412277, 25.973141>,  <32.650272, 28.235094, 25.833790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732658, 28.412277, 25.973141>,  <32.869968, 28.707582, 26.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732658, 28.412277, 25.973141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202663, -0.661851, 0.721721,
		-0.917108, 0.130080, 0.376818,
		-0.343278, -0.738263, -0.580627,
		32.629673, 28.190798, 25.798952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408333, 29.156496, 26.697756>,  <32.869968, 28.707582, 26.205391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408333, 29.156496, 26.697756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604366, 29.265186, 27.029053>,  <32.721985, 29.330400, 27.227831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604366, 29.265186, 27.029053>,  <32.408333, 29.156496, 26.697756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604366, 29.265186, 27.029053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117549, 0.920890, -0.371676,
		-0.863715, 0.279511, 0.419369,
		0.490081, 0.271726, 0.828243,
		32.751392, 29.346704, 27.277525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095253, 29.876301, 26.915890>,  <32.408333, 29.156496, 26.697756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095253, 29.876301, 26.915890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466290, 29.831474, 27.058445>,  <32.688911, 29.804579, 27.143978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466290, 29.831474, 27.058445>,  <32.095253, 29.876301, 26.915890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466290, 29.831474, 27.058445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244046, 0.904045, -0.350918,
		-0.282864, 0.412484, 0.865936,
		0.927593, -0.112067, 0.356387,
		32.744568, 29.797853, 27.165361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206337, 30.444643, 27.303926>,  <32.095253, 29.876301, 26.915890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206337, 30.444643, 27.303926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569912, 30.302910, 27.216030>,  <32.788055, 30.217869, 27.163292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569912, 30.302910, 27.216030>,  <32.206337, 30.444643, 27.303926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569912, 30.302910, 27.216030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300983, 0.922336, -0.242294,
		0.288529, 0.154090, 0.944990,
		0.908933, -0.354335, -0.219742,
		32.842590, 30.196609, 27.150106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580765, 30.886721, 27.797636>,  <32.206337, 30.444643, 27.303926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580765, 30.886721, 27.797636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829540, 30.740349, 27.520714>,  <32.978806, 30.652525, 27.354561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829540, 30.740349, 27.520714>,  <32.580765, 30.886721, 27.797636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829540, 30.740349, 27.520714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124760, 0.919109, -0.373731,
		0.773061, 0.146067, 0.617285,
		0.621942, -0.365929, -0.692304,
		33.016121, 30.630569, 27.313023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211632, 31.260916, 27.881231>,  <32.580765, 30.886721, 27.797636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211632, 31.260916, 27.881231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206100, 31.121960, 27.506184>,  <33.202782, 31.038586, 27.281155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206100, 31.121960, 27.506184>,  <33.211632, 31.260916, 27.881231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206100, 31.121960, 27.506184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242725, 0.908495, -0.340179,
		0.969997, -0.232287, 0.071761,
		-0.013825, -0.347391, -0.937618,
		33.201954, 31.017742, 27.224897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819942, 31.514343, 27.613438>,  <33.211632, 31.260916, 27.881231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819942, 31.514343, 27.613438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574398, 31.422859, 27.311214>,  <33.427071, 31.367970, 27.129881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574398, 31.422859, 27.311214>,  <33.819942, 31.514343, 27.613438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574398, 31.422859, 27.311214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153694, 0.904171, -0.398565,
		0.774308, -0.360788, -0.519883,
		-0.613860, -0.228709, -0.755558,
		33.390240, 31.354246, 27.084547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234310, 31.679594, 27.040140>,  <33.819942, 31.514343, 27.613438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234310, 31.679594, 27.040140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866405, 31.653511, 26.885334>,  <33.645660, 31.637861, 26.792450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866405, 31.653511, 26.885334>,  <34.234310, 31.679594, 27.040140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866405, 31.653511, 26.885334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137275, 0.870365, -0.472885,
		0.367677, -0.488070, -0.791581,
		-0.919766, -0.065205, -0.387013,
		33.590477, 31.633949, 26.769230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373753, 31.754061, 26.371099>,  <34.234310, 31.679594, 27.040140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373753, 31.754061, 26.371099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005955, 31.866577, 26.480938>,  <33.785275, 31.934088, 26.546841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005955, 31.866577, 26.480938>,  <34.373753, 31.754061, 26.371099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005955, 31.866577, 26.480938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128016, 0.874731, -0.467394,
		-0.371672, -0.394614, -0.840321,
		-0.919495, 0.281292, 0.274596,
		33.730106, 31.950964, 26.563316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100876, 32.185894, 25.827103>,  <34.373753, 31.754061, 26.371099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100876, 32.185894, 25.827103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851276, 32.252071, 26.132587>,  <33.701515, 32.291779, 26.315878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851276, 32.252071, 26.132587>,  <34.100876, 32.185894, 25.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851276, 32.252071, 26.132587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024647, 0.981012, -0.192376,
		-0.781038, -0.101219, -0.616226,
		-0.623997, 0.165441, 0.763712,
		33.664078, 32.301704, 26.361702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725399, 32.737602, 25.580597>,  <34.100876, 32.185894, 25.827103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725399, 32.737602, 25.580597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633961, 32.751202, 25.969769>,  <33.579098, 32.759361, 26.203272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633961, 32.751202, 25.969769>,  <33.725399, 32.737602, 25.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633961, 32.751202, 25.969769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141022, 0.987692, -0.067650,
		-0.963253, -0.152669, -0.220990,
		-0.228599, 0.034000, 0.972927,
		33.565380, 32.761402, 26.261646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177341, 33.210953, 25.671890>,  <33.725399, 32.737602, 25.580597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177341, 33.210953, 25.671890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323212, 33.219093, 26.044254>,  <33.410736, 33.223980, 26.267673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323212, 33.219093, 26.044254>,  <33.177341, 33.210953, 25.671890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323212, 33.219093, 26.044254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204864, 0.977017, 0.058891,
		-0.908317, -0.212187, 0.360468,
		0.364679, 0.020356, 0.930911,
		33.432617, 33.225201, 26.323528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606201, 33.535671, 26.094728>,  <33.177341, 33.210953, 25.671890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606201, 33.535671, 26.094728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974884, 33.572876, 26.245358>,  <33.196095, 33.595200, 26.335735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974884, 33.572876, 26.245358>,  <32.606201, 33.535671, 26.094728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974884, 33.572876, 26.245358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083720, 0.995645, -0.041013,
		-0.378746, 0.006275, 0.925479,
		0.921706, 0.093014, 0.376571,
		33.251396, 33.600780, 26.358330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488453, 34.183167, 26.410828>,  <32.606201, 33.535671, 26.094728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488453, 34.183167, 26.410828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876270, 34.110332, 26.476345>,  <33.108963, 34.066631, 26.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876270, 34.110332, 26.476345>,  <32.488453, 34.183167, 26.410828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876270, 34.110332, 26.476345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170220, 0.981831, 0.083863,
		-0.176087, -0.053428, 0.982924,
		0.969545, -0.182081, 0.163794,
		33.167133, 34.055710, 26.525482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658287, 34.500893, 27.121429>,  <32.488453, 34.183167, 26.410828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658287, 34.500893, 27.121429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985970, 34.481060, 26.892887>,  <33.182579, 34.469162, 26.755762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985970, 34.481060, 26.892887>,  <32.658287, 34.500893, 27.121429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985970, 34.481060, 26.892887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077673, 0.996668, 0.024877,
		0.568218, -0.064758, 0.820327,
		0.819204, -0.049582, -0.571355,
		33.231731, 34.466187, 26.721481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948223, 34.780296, 27.262375>,  <32.658287, 34.500893, 27.121429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948223, 34.780296, 27.262375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678478, 34.887203, 27.537708>,  <31.516632, 34.951347, 27.702909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678478, 34.887203, 27.537708>,  <31.948223, 34.780296, 27.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678478, 34.887203, 27.537708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267893, -0.957238, 0.109221,
		0.688091, -0.110745, 0.717123,
		-0.674362, 0.267266, 0.688335,
		31.476170, 34.967384, 27.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053051, 34.482224, 27.920059>,  <31.948223, 34.780296, 27.262375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053051, 34.482224, 27.920059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660814, 34.546822, 27.875591>,  <31.425472, 34.585579, 27.848911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660814, 34.546822, 27.875591>,  <32.053051, 34.482224, 27.920059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660814, 34.546822, 27.875591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188740, -0.931024, 0.312365,
		-0.053057, 0.327285, 0.943435,
		-0.980593, 0.161491, -0.111169,
		31.366636, 34.595268, 27.842241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749905, 34.346367, 28.594170>,  <32.053051, 34.482224, 27.920059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749905, 34.346367, 28.594170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490265, 34.312679, 28.291759>,  <31.334480, 34.292465, 28.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490265, 34.312679, 28.291759>,  <31.749905, 34.346367, 28.594170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490265, 34.312679, 28.291759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216451, -0.932321, 0.289702,
		-0.729257, 0.351688, 0.586941,
		-0.649102, -0.084223, -0.756025,
		31.295534, 34.287411, 28.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115629, 34.252235, 28.932360>,  <31.749905, 34.346367, 28.594170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115629, 34.252235, 28.932360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118870, 34.081100, 28.570831>,  <31.120815, 33.978420, 28.353914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118870, 34.081100, 28.570831>,  <31.115629, 34.252235, 28.932360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118870, 34.081100, 28.570831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377600, -0.838242, 0.393405,
		-0.925933, 0.338096, -0.168342,
		0.008103, -0.427833, -0.903821,
		31.121302, 33.952751, 28.299685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463932, 34.089470, 28.851070>,  <31.115629, 34.252235, 28.932360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463932, 34.089470, 28.851070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674227, 33.874668, 28.587185>,  <30.800404, 33.745785, 28.428854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674227, 33.874668, 28.587185>,  <30.463932, 34.089470, 28.851070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674227, 33.874668, 28.587185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347952, -0.843455, 0.409284,
		-0.776226, 0.014372, -0.630291,
		0.525740, -0.537008, -0.659713,
		30.831947, 33.713566, 28.389271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057575, 33.506439, 28.685961>,  <30.463932, 34.089470, 28.851070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057575, 33.506439, 28.685961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420435, 33.387920, 28.566441>,  <30.638151, 33.316807, 28.494728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420435, 33.387920, 28.566441>,  <30.057575, 33.506439, 28.685961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420435, 33.387920, 28.566441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171168, -0.908496, 0.381231,
		-0.384420, -0.294688, -0.874860,
		0.907151, -0.296301, -0.298802,
		30.692581, 33.299030, 28.476799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935774, 32.768646, 28.490721>,  <30.057575, 33.506439, 28.685961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935774, 32.768646, 28.490721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333391, 32.808521, 28.508320>,  <30.571962, 32.832447, 28.518879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333391, 32.808521, 28.508320>,  <29.935774, 32.768646, 28.490721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333391, 32.808521, 28.508320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080534, -0.944115, 0.319626,
		0.073401, -0.314180, -0.946522,
		0.994045, 0.099688, 0.043997,
		30.631605, 32.838428, 28.521519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250238, 32.275105, 28.134420>,  <29.935774, 32.768646, 28.490721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250238, 32.275105, 28.134420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557827, 32.356441, 28.376854>,  <30.742380, 32.405243, 28.522314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557827, 32.356441, 28.376854>,  <30.250238, 32.275105, 28.134420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557827, 32.356441, 28.376854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040977, -0.961794, 0.270689,
		0.637969, -0.183317, -0.747924,
		0.768971, 0.203339, 0.606084,
		30.788519, 32.417442, 28.558680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805809, 31.788725, 27.955013>,  <30.250238, 32.275105, 28.134420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805809, 31.788725, 27.955013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879797, 31.893353, 28.333931>,  <30.924191, 31.956129, 28.561281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879797, 31.893353, 28.333931>,  <30.805809, 31.788725, 27.955013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879797, 31.893353, 28.333931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081580, -0.964689, 0.250440,
		0.979352, 0.030956, -0.199778,
		0.184971, 0.261567, 0.947295,
		30.935289, 31.971823, 28.618120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311464, 31.256310, 28.241377>,  <30.805809, 31.788725, 27.955013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311464, 31.256310, 28.241377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107933, 31.431759, 28.537674>,  <30.985815, 31.537029, 28.715452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107933, 31.431759, 28.537674>,  <31.311464, 31.256310, 28.241377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107933, 31.431759, 28.537674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000316, -0.860367, 0.509676,
		0.860868, 0.259571, 0.437641,
		-0.508829, 0.438625, 0.740744,
		30.955284, 31.563347, 28.759897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685577, 31.014030, 28.796362>,  <31.311464, 31.256310, 28.241377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685577, 31.014030, 28.796362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333874, 31.128658, 28.948563>,  <31.122852, 31.197435, 29.039883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333874, 31.128658, 28.948563>,  <31.685577, 31.014030, 28.796362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333874, 31.128658, 28.948563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084015, -0.879569, 0.468294,
		0.468879, 0.379783, 0.797444,
		-0.879258, 0.286571, 0.380504,
		31.070097, 31.214630, 29.062714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783232, 30.830240, 29.389843>,  <31.685577, 31.014030, 28.796362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783232, 30.830240, 29.389843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384180, 30.855907, 29.379902>,  <31.144749, 30.871307, 29.373938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384180, 30.855907, 29.379902>,  <31.783232, 30.830240, 29.389843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384180, 30.855907, 29.379902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068148, -0.871215, 0.486149,
		0.009543, 0.486690, 0.873523,
		-0.997630, 0.064168, -0.024853,
		31.084890, 30.875158, 29.372446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490061, 30.837442, 30.053392>,  <31.783232, 30.830240, 29.389843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490061, 30.837442, 30.053392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190016, 30.718491, 29.817123>,  <31.009989, 30.647120, 29.675362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190016, 30.718491, 29.817123>,  <31.490061, 30.837442, 30.053392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190016, 30.718491, 29.817123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094719, -0.835665, 0.541011,
		-0.654490, 0.461768, 0.598676,
		-0.750114, -0.297380, -0.590672,
		30.964981, 30.629276, 29.639921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066620, 30.510557, 30.561808>,  <31.490061, 30.837442, 30.053392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066620, 30.510557, 30.561808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904165, 30.395386, 30.214901>,  <30.806692, 30.326283, 30.006756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904165, 30.395386, 30.214901>,  <31.066620, 30.510557, 30.561808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904165, 30.395386, 30.214901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163903, -0.910722, 0.379107,
		-0.898994, 0.296116, 0.322683,
		-0.406134, -0.287926, -0.867268,
		30.782326, 30.309008, 29.954721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491787, 30.264597, 30.789129>,  <31.066620, 30.510557, 30.561808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491787, 30.264597, 30.789129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570395, 30.111610, 30.427998>,  <30.617559, 30.019819, 30.211319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570395, 30.111610, 30.427998>,  <30.491787, 30.264597, 30.789129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570395, 30.111610, 30.427998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224442, -0.913883, 0.338293,
		-0.954466, 0.136152, -0.265436,
		0.196519, -0.382465, -0.902830,
		30.629351, 29.996870, 30.157148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912012, 29.961853, 30.581848>,  <30.491787, 30.264597, 30.789129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912012, 29.961853, 30.581848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201706, 29.791576, 30.364861>,  <30.375523, 29.689411, 30.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201706, 29.791576, 30.364861>,  <29.912012, 29.961853, 30.581848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201706, 29.791576, 30.364861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200372, -0.882668, 0.425145,
		-0.659800, -0.199210, -0.724555,
		0.724234, -0.425691, -0.542468,
		30.418976, 29.663870, 30.202120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629642, 29.295513, 30.529272>,  <29.912012, 29.961853, 30.581848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629642, 29.295513, 30.529272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989666, 29.248650, 30.361385>,  <30.205681, 29.220531, 30.260653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989666, 29.248650, 30.361385>,  <29.629642, 29.295513, 30.529272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989666, 29.248650, 30.361385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037089, -0.980280, 0.194102,
		-0.434183, -0.159137, -0.886657,
		0.900061, -0.117161, -0.419719,
		30.259684, 29.213501, 30.235470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623220, 28.815117, 30.009771>,  <29.629642, 29.295513, 30.529272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623220, 28.815117, 30.009771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006422, 28.828823, 30.123653>,  <30.236343, 28.837048, 30.191982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006422, 28.828823, 30.123653>,  <29.623220, 28.815117, 30.009771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006422, 28.828823, 30.123653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053376, -0.954176, 0.294447,
		0.281750, -0.297277, -0.912274,
		0.958002, 0.034267, 0.284707,
		30.293823, 28.839104, 30.209066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903627, 28.179674, 29.814125>,  <29.623220, 28.815117, 30.009771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903627, 28.179674, 29.814125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154171, 28.286953, 30.106903>,  <30.304497, 28.351320, 30.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154171, 28.286953, 30.106903>,  <29.903627, 28.179674, 29.814125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154171, 28.286953, 30.106903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193309, -0.856184, 0.479147,
		0.755185, -0.441610, -0.484434,
		0.626361, 0.268199, 0.731944,
		30.342079, 28.367413, 30.326487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122604, 27.584934, 29.991676>,  <29.903627, 28.179674, 29.814125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122604, 27.584934, 29.991676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274416, 27.779846, 30.306259>,  <30.365503, 27.896793, 30.495008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274416, 27.779846, 30.306259>,  <30.122604, 27.584934, 29.991676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274416, 27.779846, 30.306259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206483, -0.784007, 0.585404,
		0.901844, -0.384568, -0.196939,
		0.379529, 0.487278, 0.786459,
		30.388275, 27.926029, 30.542196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517801, 27.100674, 30.321016>,  <30.122604, 27.584934, 29.991676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517801, 27.100674, 30.321016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471239, 27.377480, 30.605991>,  <30.443302, 27.543562, 30.776976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471239, 27.377480, 30.605991>,  <30.517801, 27.100674, 30.321016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471239, 27.377480, 30.605991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049156, -0.720449, 0.691763,
		0.991984, 0.045505, 0.117882,
		-0.116407, 0.692013, 0.712438,
		30.436317, 27.585083, 30.819723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940094, 26.851070, 30.814165>,  <30.517801, 27.100674, 30.321016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940094, 26.851070, 30.814165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674009, 27.092991, 30.989304>,  <30.514359, 27.238144, 31.094387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674009, 27.092991, 30.989304>,  <30.940094, 26.851070, 30.814165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674009, 27.092991, 30.989304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100548, -0.653627, 0.750108,
		0.739855, 0.454955, 0.495611,
		-0.665210, 0.604804, 0.437845,
		30.474445, 27.274431, 31.120657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166498, 26.877476, 31.504974>,  <30.940094, 26.851070, 30.814165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166498, 26.877476, 31.504974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781651, 26.986340, 31.511356>,  <30.550741, 27.051659, 31.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781651, 26.986340, 31.511356>,  <31.166498, 26.877476, 31.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781651, 26.986340, 31.511356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143698, -0.555990, 0.818673,
		0.231681, 0.785369, 0.574038,
		-0.962120, 0.272159, 0.015956,
		30.493015, 27.067987, 31.516144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064625, 26.914192, 32.300587>,  <31.166498, 26.877476, 31.504974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064625, 26.914192, 32.300587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706852, 26.926605, 32.122135>,  <30.492189, 26.934053, 32.015064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706852, 26.926605, 32.122135>,  <31.064625, 26.914192, 32.300587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706852, 26.926605, 32.122135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403936, -0.484156, 0.776163,
		-0.191911, 0.874431, 0.445578,
		-0.894430, 0.031031, -0.446129,
		30.438522, 26.935915, 31.988297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492996, 27.080915, 32.858101>,  <31.064625, 26.914192, 32.300587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492996, 27.080915, 32.858101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300541, 26.901592, 32.556763>,  <30.185068, 26.793999, 32.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300541, 26.901592, 32.556763>,  <30.492996, 27.080915, 32.858101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300541, 26.901592, 32.556763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484964, -0.579758, 0.654745,
		-0.730284, 0.680367, 0.061531,
		-0.481140, -0.448309, -0.753342,
		30.156199, 26.767099, 32.330761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842010, 27.091515, 33.063541>,  <30.492996, 27.080915, 32.858101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842010, 27.091515, 33.063541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864080, 26.801666, 32.788765>,  <29.877323, 26.627758, 32.623901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864080, 26.801666, 32.788765>,  <29.842010, 27.091515, 33.063541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864080, 26.801666, 32.788765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520975, -0.607804, 0.599298,
		-0.851786, 0.324810, -0.411045,
		0.055177, -0.724619, -0.686938,
		29.880634, 26.584280, 32.582684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200544, 26.623884, 33.127605>,  <29.842010, 27.091515, 33.063541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200544, 26.623884, 33.127605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456884, 26.408260, 32.908981>,  <29.610687, 26.278887, 32.777805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456884, 26.408260, 32.908981>,  <29.200544, 26.623884, 33.127605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456884, 26.408260, 32.908981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281193, -0.827328, 0.486270,
		-0.714314, -0.157936, -0.681771,
		0.640848, -0.539059, -0.546561,
		29.649139, 26.246542, 32.745014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862560, 25.989193, 32.896038>,  <29.200544, 26.623884, 33.127605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862560, 25.989193, 32.896038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248659, 25.884701, 32.899128>,  <29.480318, 25.822004, 32.900982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248659, 25.884701, 32.899128>,  <28.862560, 25.989193, 32.896038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248659, 25.884701, 32.899128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240487, -0.876253, 0.417548,
		-0.102312, -0.404893, -0.908622,
		0.965246, -0.261232, 0.007720,
		29.538233, 25.806332, 32.901443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540810, 25.879099, 32.107601>,  <28.862560, 25.989193, 32.896038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540810, 25.879099, 32.107601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204576, 25.697666, 31.989151>,  <28.002836, 25.588806, 31.918081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204576, 25.697666, 31.989151>,  <28.540810, 25.879099, 32.107601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204576, 25.697666, 31.989151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168713, 0.738699, -0.652579,
		0.514741, -0.498586, -0.697462,
		-0.840582, -0.453580, -0.296121,
		27.952402, 25.561592, 31.900314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600655, 25.914110, 31.492332>,  <28.540810, 25.879099, 32.107601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600655, 25.914110, 31.492332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212114, 25.881676, 31.581688>,  <27.978991, 25.862215, 31.635302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212114, 25.881676, 31.581688>,  <28.600655, 25.914110, 31.492332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212114, 25.881676, 31.581688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185584, 0.845974, -0.499887,
		-0.148447, -0.527023, -0.836786,
		-0.971351, -0.081087, 0.223389,
		27.920710, 25.857349, 31.648705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270597, 25.832699, 30.888041>,  <28.600655, 25.914110, 31.492332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270597, 25.832699, 30.888041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995855, 25.952206, 31.153061>,  <27.831011, 26.023911, 31.312073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995855, 25.952206, 31.153061>,  <28.270597, 25.832699, 30.888041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995855, 25.952206, 31.153061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232839, 0.773102, -0.589999,
		-0.688490, -0.559510, -0.461443,
		-0.686853, 0.298766, 0.662549,
		27.789799, 26.041836, 31.351826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713079, 25.894629, 30.559994>,  <28.270597, 25.832699, 30.888041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713079, 25.894629, 30.559994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659458, 26.131195, 30.878052>,  <27.627285, 26.273134, 31.068888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659458, 26.131195, 30.878052>,  <27.713079, 25.894629, 30.559994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659458, 26.131195, 30.878052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316353, 0.734865, -0.599912,
		-0.939122, -0.331967, 0.088585,
		-0.134053, 0.591415, 0.795147,
		27.619242, 26.308620, 31.116596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102890, 26.204264, 30.371407>,  <27.713079, 25.894629, 30.559994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102890, 26.204264, 30.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284632, 26.442425, 30.636452>,  <27.393677, 26.585321, 30.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284632, 26.442425, 30.636452>,  <27.102890, 26.204264, 30.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284632, 26.442425, 30.636452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304708, 0.802830, -0.512462,
		-0.837088, 0.030935, 0.546193,
		0.454354, 0.595405, 0.662613,
		27.420938, 26.621046, 30.835236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
