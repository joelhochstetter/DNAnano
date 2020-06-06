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
	<24.408564, 34.612839, 34.796516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502346, 34.987614, 34.692844>,  <24.558615, 35.212479, 34.630642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502346, 34.987614, 34.692844>,  <24.408564, 34.612839, 34.796516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502346, 34.987614, 34.692844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906416, -0.114338, 0.406616,
		0.351342, -0.330254, -0.876066,
		0.234454, 0.936941, -0.259176,
		24.572681, 35.268696, 34.615093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693329, 34.909691, 34.102589>,  <24.408564, 34.612839, 34.796516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693329, 34.909691, 34.102589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023252, 34.747986, 33.944469>,  <25.221207, 34.650963, 33.849598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023252, 34.747986, 33.944469>,  <24.693329, 34.909691, 34.102589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023252, 34.747986, 33.944469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231324, 0.396676, -0.888334,
		0.515923, 0.824150, 0.233667,
		0.824811, -0.404259, -0.395300,
		25.270695, 34.626709, 33.825878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110130, 35.498013, 33.788742>,  <24.693329, 34.909691, 34.102589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110130, 35.498013, 33.788742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146692, 35.135872, 33.622856>,  <25.168629, 34.918587, 33.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146692, 35.135872, 33.622856>,  <25.110130, 35.498013, 33.788742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146692, 35.135872, 33.622856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101103, 0.405872, -0.908320,
		0.990668, 0.124953, -0.054436,
		0.091404, -0.905348, -0.414718,
		25.174114, 34.864269, 33.498440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594952, 35.480568, 33.267200>,  <25.110130, 35.498013, 33.788742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594952, 35.480568, 33.267200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425524, 35.136600, 33.153267>,  <25.323868, 34.930222, 33.084908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425524, 35.136600, 33.153267>,  <25.594952, 35.480568, 33.267200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425524, 35.136600, 33.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061356, 0.286480, -0.956119,
		0.903784, -0.422458, -0.068583,
		-0.423568, -0.859918, -0.284836,
		25.298452, 34.878624, 33.067818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973320, 35.170708, 32.726833>,  <25.594952, 35.480568, 33.267200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973320, 35.170708, 32.726833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604158, 35.017715, 32.709118>,  <25.382662, 34.925919, 32.698490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604158, 35.017715, 32.709118>,  <25.973320, 35.170708, 32.726833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604158, 35.017715, 32.709118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058516, 0.253015, -0.965691,
		0.380564, -0.888646, -0.255889,
		-0.922901, -0.382481, -0.044289,
		25.327288, 34.902973, 32.695831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827188, 35.076183, 32.029629>,  <25.973320, 35.170708, 32.726833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827188, 35.076183, 32.029629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479122, 35.123447, 32.220982>,  <25.270283, 35.151806, 32.335793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479122, 35.123447, 32.220982>,  <25.827188, 35.076183, 32.029629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479122, 35.123447, 32.220982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394079, 0.415963, -0.819558,
		-0.295829, -0.901672, -0.315392,
		-0.870165, 0.118159, 0.478385,
		25.218073, 35.158894, 32.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201275, 34.687016, 31.683258>,  <25.827188, 35.076183, 32.029629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201275, 34.687016, 31.683258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076469, 35.003506, 31.893633>,  <25.001585, 35.193398, 32.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076469, 35.003506, 31.893633>,  <25.201275, 34.687016, 31.683258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076469, 35.003506, 31.893633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337472, 0.425177, -0.839844,
		-0.888121, -0.439534, 0.134354,
		-0.312016, 0.791223, 0.525939,
		24.982864, 35.240871, 32.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492121, 34.824757, 31.564913>,  <25.201275, 34.687016, 31.683258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492121, 34.824757, 31.564913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682024, 35.164391, 31.657576>,  <24.795965, 35.368172, 31.713173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682024, 35.164391, 31.657576>,  <24.492121, 34.824757, 31.564913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682024, 35.164391, 31.657576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277602, 0.394241, -0.876077,
		-0.835191, 0.351615, 0.422876,
		0.474757, 0.849082, 0.231658,
		24.824451, 35.419117, 31.727074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109100, 35.327824, 31.351139>,  <24.492121, 34.824757, 31.564913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109100, 35.327824, 31.351139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433731, 35.557758, 31.392912>,  <24.628510, 35.695721, 31.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433731, 35.557758, 31.392912>,  <24.109100, 35.327824, 31.351139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433731, 35.557758, 31.392912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137622, 0.361809, -0.922038,
		-0.567808, 0.733931, 0.372745,
		0.811575, 0.574839, 0.104433,
		24.677204, 35.730209, 31.424242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928421, 36.016697, 31.170998>,  <24.109100, 35.327824, 31.351139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928421, 36.016697, 31.170998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320803, 35.988636, 31.098543>,  <24.556231, 35.971798, 31.055071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320803, 35.988636, 31.098543>,  <23.928421, 36.016697, 31.170998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320803, 35.988636, 31.098543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103882, 0.598491, -0.794366,
		0.164134, 0.798052, 0.579804,
		0.980953, -0.070151, -0.181136,
		24.615089, 35.967590, 31.044203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.065105, 36.673794, 30.976276>,  <23.928421, 36.016697, 31.170998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.065105, 36.673794, 30.976276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377657, 36.458614, 30.849751>,  <24.565187, 36.329506, 30.773836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377657, 36.458614, 30.849751>,  <24.065105, 36.673794, 30.976276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377657, 36.458614, 30.849751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037173, 0.465844, -0.884085,
		0.622947, 0.702565, 0.344005,
		0.781380, -0.537951, -0.316313,
		24.612072, 36.297230, 30.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352705, 37.091328, 30.392467>,  <24.065105, 36.673794, 30.976276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352705, 37.091328, 30.392467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523607, 36.732170, 30.350071>,  <24.626148, 36.516674, 30.324633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523607, 36.732170, 30.350071>,  <24.352705, 37.091328, 30.392467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523607, 36.732170, 30.350071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038274, 0.135088, -0.990094,
		0.903321, 0.418966, 0.092083,
		0.427255, -0.897897, -0.105993,
		24.651783, 36.462803, 30.318274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772924, 37.234108, 29.661020>,  <24.352705, 37.091328, 30.392467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772924, 37.234108, 29.661020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078333, 37.074390, 29.458006>,  <25.261578, 36.978558, 29.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078333, 37.074390, 29.458006>,  <24.772924, 37.234108, 29.661020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078333, 37.074390, 29.458006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045994, -0.750308, 0.659487,
		-0.644140, -0.526878, -0.554513,
		0.763524, -0.399297, -0.507536,
		25.307390, 36.954601, 29.305744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537315, 36.606121, 29.284348>,  <24.772924, 37.234108, 29.661020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537315, 36.606121, 29.284348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902994, 36.634575, 29.443939>,  <25.122402, 36.651646, 29.539694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902994, 36.634575, 29.443939>,  <24.537315, 36.606121, 29.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902994, 36.634575, 29.443939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299542, -0.544525, 0.783432,
		0.272983, -0.835723, -0.476496,
		0.914196, 0.071133, 0.398980,
		25.177254, 36.655914, 29.563633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678505, 35.920563, 29.469654>,  <24.537315, 36.606121, 29.284348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678505, 35.920563, 29.469654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896036, 36.183414, 29.678436>,  <25.026554, 36.341125, 29.803705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896036, 36.183414, 29.678436>,  <24.678505, 35.920563, 29.469654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896036, 36.183414, 29.678436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230094, -0.481376, 0.845774,
		0.807036, -0.580055, -0.110586,
		0.543828, 0.657125, 0.521955,
		25.059185, 36.380550, 29.835022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040571, 35.530869, 30.016884>,  <24.678505, 35.920563, 29.469654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040571, 35.530869, 30.016884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042051, 35.916504, 30.123108>,  <25.042940, 36.147884, 30.186842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042051, 35.916504, 30.123108>,  <25.040571, 35.530869, 30.016884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042051, 35.916504, 30.123108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070666, -0.265152, 0.961614,
		0.997493, 0.015207, -0.069109,
		0.003701, 0.964087, 0.265562,
		25.043161, 36.205730, 30.202776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638493, 35.542725, 30.415670>,  <25.040571, 35.530869, 30.016884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638493, 35.542725, 30.415670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347204, 35.800007, 30.510311>,  <25.172432, 35.954376, 30.567097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347204, 35.800007, 30.510311>,  <25.638493, 35.542725, 30.415670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347204, 35.800007, 30.510311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101020, -0.240722, 0.965323,
		0.677856, 0.726871, 0.110322,
		-0.728222, 0.643205, 0.236603,
		25.128738, 35.992970, 30.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931423, 35.924332, 30.918768>,  <25.638493, 35.542725, 30.415670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931423, 35.924332, 30.918768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534031, 35.931698, 30.963760>,  <25.295595, 35.936119, 30.990757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534031, 35.931698, 30.963760>,  <25.931423, 35.924332, 30.918768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534031, 35.931698, 30.963760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109314, -0.125532, 0.986049,
		0.032283, 0.991919, 0.122701,
		-0.993483, 0.018419, 0.112483,
		25.235987, 35.937225, 30.997505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903072, 36.137611, 31.582788>,  <25.931423, 35.924332, 30.918768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903072, 36.137611, 31.582788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518011, 36.050884, 31.517937>,  <25.286974, 35.998848, 31.479027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518011, 36.050884, 31.517937>,  <25.903072, 36.137611, 31.582788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518011, 36.050884, 31.517937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152615, -0.060037, 0.986461,
		-0.223614, 0.974365, 0.024705,
		-0.962655, -0.216816, -0.162128,
		25.229214, 35.985840, 31.469297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452229, 36.509937, 32.084469>,  <25.903072, 36.137611, 31.582788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452229, 36.509937, 32.084469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262177, 36.180023, 31.961842>,  <25.148146, 35.982075, 31.888264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262177, 36.180023, 31.961842>,  <25.452229, 36.509937, 32.084469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262177, 36.180023, 31.961842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027551, -0.362184, 0.931700,
		-0.879485, 0.434230, 0.194807,
		-0.475128, -0.824783, -0.306572,
		25.119638, 35.932587, 31.869869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692646, 36.422535, 32.101624>,  <25.452229, 36.509937, 32.084469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692646, 36.422535, 32.101624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590870, 36.038242, 32.057343>,  <24.529804, 35.807667, 32.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590870, 36.038242, 32.057343>,  <24.692646, 36.422535, 32.101624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590870, 36.038242, 32.057343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197495, -0.163673, 0.966544,
		-0.946708, 0.224065, 0.231385,
		-0.254440, -0.960732, -0.110699,
		24.514538, 35.750023, 32.024132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445612, 36.187851, 32.796535>,  <24.692646, 36.422535, 32.101624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445612, 36.187851, 32.796535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584295, 35.899319, 32.556713>,  <24.667505, 35.726200, 32.412819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584295, 35.899319, 32.556713>,  <24.445612, 36.187851, 32.796535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584295, 35.899319, 32.556713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422453, -0.450618, 0.786433,
		-0.837454, -0.525947, 0.148497,
		0.346707, -0.721334, -0.599559,
		24.688307, 35.682919, 32.376846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157267, 35.516258, 32.981419>,  <24.445612, 36.187851, 32.796535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157267, 35.516258, 32.981419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508089, 35.434086, 32.807720>,  <24.718582, 35.384781, 32.703499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508089, 35.434086, 32.807720>,  <24.157267, 35.516258, 32.981419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508089, 35.434086, 32.807720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209185, -0.650430, 0.730194,
		-0.432452, -0.731258, -0.527490,
		0.877056, -0.205431, -0.434248,
		24.771206, 35.372456, 32.677444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033680, 35.089241, 32.505733>,  <24.157267, 35.516258, 32.981419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033680, 35.089241, 32.505733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401209, 34.972702, 32.399239>,  <24.621727, 34.902779, 32.335342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401209, 34.972702, 32.399239>,  <24.033680, 35.089241, 32.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401209, 34.972702, 32.399239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030771, -0.619643, 0.784281,
		-0.393467, -0.728808, -0.560377,
		0.918824, -0.291345, -0.266235,
		24.676855, 34.885300, 32.319366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137312, 34.358601, 32.632286>,  <24.033680, 35.089241, 32.505733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137312, 34.358601, 32.632286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505945, 34.513870, 32.631134>,  <24.727125, 34.607033, 32.630444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505945, 34.513870, 32.631134>,  <24.137312, 34.358601, 32.632286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505945, 34.513870, 32.631134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219984, -0.516136, 0.827775,
		0.319833, -0.763496, -0.561053,
		0.921583, 0.388172, -0.002880,
		24.782419, 34.630322, 32.630272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649635, 33.772808, 32.792080>,  <24.137312, 34.358601, 32.632286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649635, 33.772808, 32.792080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839067, 34.117382, 32.865459>,  <24.952726, 34.324127, 32.909489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839067, 34.117382, 32.865459>,  <24.649635, 33.772808, 32.792080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839067, 34.117382, 32.865459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339980, -0.370941, 0.864185,
		0.812488, -0.346891, -0.468541,
		0.473579, 0.861435, 0.183449,
		24.981142, 34.375813, 32.920494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410828, 33.738197, 32.864628>,  <24.649635, 33.772808, 32.792080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410828, 33.738197, 32.864628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298143, 34.060452, 33.073086>,  <25.230534, 34.253803, 33.198162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298143, 34.060452, 33.073086>,  <25.410828, 33.738197, 32.864628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298143, 34.060452, 33.073086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458622, -0.364023, 0.810650,
		0.842797, 0.467376, -0.266933,
		-0.281709, 0.805634, 0.521147,
		25.213631, 34.302143, 33.229431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709810, 33.637215, 33.573086>,  <25.410828, 33.738197, 32.864628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709810, 33.637215, 33.573086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464203, 33.946442, 33.636761>,  <25.316837, 34.131977, 33.674965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464203, 33.946442, 33.636761>,  <25.709810, 33.637215, 33.573086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464203, 33.946442, 33.636761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377083, 0.110137, 0.919607,
		0.693388, 0.624686, -0.359138,
		-0.614020, 0.773070, 0.159191,
		25.279997, 34.178364, 33.684517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042889, 34.293339, 33.770390>,  <25.709810, 33.637215, 33.573086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042889, 34.293339, 33.770390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669245, 34.303604, 33.912815>,  <25.445059, 34.309765, 33.998272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669245, 34.303604, 33.912815>,  <26.042889, 34.293339, 33.770390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669245, 34.303604, 33.912815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343201, 0.339072, 0.875924,
		-0.098251, 0.940410, -0.325538,
		-0.934109, 0.025665, 0.356064,
		25.389011, 34.311302, 34.019634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661955, 34.259693, 34.470810>,  <26.042889, 34.293339, 33.770390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661955, 34.259693, 34.470810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056393, 34.193214, 34.470463>,  <26.293055, 34.153328, 34.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056393, 34.193214, 34.470463>,  <25.661955, 34.259693, 34.470810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056393, 34.193214, 34.470463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154012, 0.911820, 0.380611,
		-0.062465, -0.375452, 0.924735,
		0.986093, -0.166195, -0.000867,
		26.352221, 34.143356, 34.470203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949766, 34.502834, 35.206676>,  <25.661955, 34.259693, 34.470810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949766, 34.502834, 35.206676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206341, 34.524906, 34.900600>,  <26.360287, 34.538147, 34.716957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206341, 34.524906, 34.900600>,  <25.949766, 34.502834, 35.206676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206341, 34.524906, 34.900600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357610, 0.860915, 0.361856,
		0.678728, -0.505748, 0.532492,
		0.641438, 0.055178, -0.765188,
		26.398773, 34.541458, 34.671043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607714, 34.564831, 35.437160>,  <25.949766, 34.502834, 35.206676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607714, 34.564831, 35.437160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581987, 34.735355, 35.076248>,  <26.566551, 34.837669, 34.859699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581987, 34.735355, 35.076248>,  <26.607714, 34.564831, 35.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581987, 34.735355, 35.076248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324761, 0.863880, 0.385021,
		0.943607, -0.268264, -0.194011,
		-0.064315, 0.426316, -0.902285,
		26.562693, 34.863251, 34.805561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271332, 34.803547, 35.371784>,  <26.607714, 34.564831, 35.437160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271332, 34.803547, 35.371784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998907, 34.998722, 35.153400>,  <26.835453, 35.115826, 35.022369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998907, 34.998722, 35.153400>,  <27.271332, 34.803547, 35.371784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998907, 34.998722, 35.153400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321624, 0.869186, 0.375598,
		0.657810, 0.080211, -0.748901,
		-0.681061, 0.487937, -0.545962,
		26.794588, 35.145103, 34.989613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560696, 35.457676, 35.118107>,  <27.271332, 34.803547, 35.371784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560696, 35.457676, 35.118107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175215, 35.555771, 35.075893>,  <26.943926, 35.614628, 35.050564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175215, 35.555771, 35.075893>,  <27.560696, 35.457676, 35.118107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175215, 35.555771, 35.075893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191105, 0.909661, 0.368775,
		0.186439, 0.335221, -0.923508,
		-0.963701, 0.245241, -0.105534,
		26.886105, 35.629345, 35.044231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593306, 36.070660, 34.793751>,  <27.560696, 35.457676, 35.118107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593306, 36.070660, 34.793751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241808, 36.056160, 34.984119>,  <27.030910, 36.047459, 35.098339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.241808, 36.056160, 34.984119>,  <27.593306, 36.070660, 34.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241808, 36.056160, 34.984119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084188, 0.969707, 0.229304,
		-0.469812, 0.241566, -0.849072,
		-0.878743, -0.036248, 0.475917,
		26.978186, 36.045284, 35.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100220, 36.455292, 34.456764>,  <27.593306, 36.070660, 34.793751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100220, 36.455292, 34.456764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033276, 36.437733, 34.850731>,  <26.993109, 36.427197, 35.087112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033276, 36.437733, 34.850731>,  <27.100220, 36.455292, 34.456764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033276, 36.437733, 34.850731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168637, 0.983011, 0.072469,
		-0.971366, 0.178222, -0.157113,
		-0.167359, -0.043899, 0.984918,
		26.983068, 36.424564, 35.146206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540342, 36.892445, 34.755543>,  <27.100220, 36.455292, 34.456764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540342, 36.892445, 34.755543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823250, 36.834389, 35.032299>,  <26.992994, 36.799557, 35.198353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823250, 36.834389, 35.032299>,  <26.540342, 36.892445, 34.755543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823250, 36.834389, 35.032299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241116, 0.969539, -0.043096,
		-0.664557, 0.197306, 0.720718,
		0.707267, -0.145137, 0.691887,
		27.035431, 36.790848, 35.239864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433504, 37.493847, 35.170555>,  <26.540342, 36.892445, 34.755543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433504, 37.493847, 35.170555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811411, 37.376549, 35.229099>,  <27.038155, 37.306171, 35.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811411, 37.376549, 35.229099>,  <26.433504, 37.493847, 35.170555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811411, 37.376549, 35.229099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293995, 0.955656, 0.016966,
		-0.144844, 0.027000, 0.989086,
		0.944768, -0.293244, 0.146359,
		27.094841, 37.288574, 35.273006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504539, 37.996620, 35.695724>,  <26.433504, 37.493847, 35.170555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504539, 37.996620, 35.695724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853256, 37.886662, 35.533531>,  <27.062487, 37.820686, 35.436214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853256, 37.886662, 35.533531>,  <26.504539, 37.996620, 35.695724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853256, 37.886662, 35.533531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317121, 0.947566, 0.039413,
		0.373384, -0.162946, 0.913254,
		0.871791, -0.274896, -0.405479,
		27.114794, 37.804192, 35.411888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075674, 38.321041, 36.061134>,  <26.504539, 37.996620, 35.695724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075674, 38.321041, 36.061134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127651, 38.247433, 35.671417>,  <27.158838, 38.203270, 35.437588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127651, 38.247433, 35.671417>,  <27.075674, 38.321041, 36.061134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127651, 38.247433, 35.671417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184937, 0.969881, -0.158519,
		0.974121, -0.159585, 0.160063,
		0.129945, -0.184018, -0.974295,
		27.166636, 38.192226, 35.379128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027973, 37.645073, 36.165195>,  <27.075674, 38.321041, 36.061134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027973, 37.645073, 36.165195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009266, 37.405975, 36.485325>,  <26.998041, 37.262516, 36.677402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009266, 37.405975, 36.485325>,  <27.027973, 37.645073, 36.165195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009266, 37.405975, 36.485325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115039, -0.792648, -0.598728,
		0.992259, -0.120071, -0.031692,
		-0.046769, -0.597739, 0.800325,
		26.995235, 37.226654, 36.725422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655859, 37.096836, 36.104996>,  <27.027973, 37.645073, 36.165195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655859, 37.096836, 36.104996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317656, 37.018196, 36.303577>,  <27.114733, 36.971012, 36.422726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317656, 37.018196, 36.303577>,  <27.655859, 37.096836, 36.104996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317656, 37.018196, 36.303577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142123, -0.813350, -0.564148,
		0.514700, -0.547549, 0.659752,
		-0.845509, -0.196602, 0.496450,
		27.064003, 36.959217, 36.452511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561182, 36.376080, 36.448013>,  <27.655859, 37.096836, 36.104996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561182, 36.376080, 36.448013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248611, 36.573540, 36.295341>,  <27.061069, 36.692017, 36.203739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248611, 36.573540, 36.295341>,  <27.561182, 36.376080, 36.448013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248611, 36.573540, 36.295341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008595, -0.620128, -0.784453,
		-0.623965, -0.609695, 0.488815,
		-0.781405, 0.493673, -0.381698,
		27.014183, 36.721634, 36.180840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001579, 35.858788, 36.306419>,  <27.561182, 36.376080, 36.448013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001579, 35.858788, 36.306419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902298, 36.178543, 36.087563>,  <26.842730, 36.370396, 35.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902298, 36.178543, 36.087563>,  <27.001579, 35.858788, 36.306419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902298, 36.178543, 36.087563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338609, -0.600785, -0.724156,
		-0.907601, 0.005533, 0.419797,
		-0.248201, 0.799392, -0.547146,
		26.827837, 36.418362, 35.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331638, 35.963291, 36.227402>,  <27.001579, 35.858788, 36.306419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331638, 35.963291, 36.227402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440325, 36.160843, 35.897007>,  <26.505537, 36.279373, 35.698772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440325, 36.160843, 35.897007>,  <26.331638, 35.963291, 36.227402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440325, 36.160843, 35.897007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476523, -0.676629, -0.561336,
		-0.836119, 0.546125, 0.051496,
		0.271716, 0.493883, -0.825984,
		26.521839, 36.309010, 35.649212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845028, 35.766197, 35.653294>,  <26.331638, 35.963291, 36.227402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845028, 35.766197, 35.653294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160755, 35.912987, 35.456394>,  <26.350191, 36.001060, 35.338253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160755, 35.912987, 35.456394>,  <25.845028, 35.766197, 35.653294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160755, 35.912987, 35.456394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125303, -0.688579, -0.714253,
		-0.601064, 0.625453, -0.497525,
		0.789317, 0.366971, -0.492251,
		26.397551, 36.023079, 35.308720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654406, 35.854172, 34.946136>,  <25.845028, 35.766197, 35.653294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654406, 35.854172, 34.946136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050266, 35.799343, 34.963097>,  <26.287783, 35.766445, 34.973270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050266, 35.799343, 34.963097>,  <25.654406, 35.854172, 34.946136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050266, 35.799343, 34.963097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052043, -0.618317, -0.784204,
		0.133704, 0.773884, -0.619054,
		0.989654, -0.137068, 0.042397,
		26.347162, 35.758221, 34.975815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877926, 35.864815, 34.338512>,  <25.654406, 35.854172, 34.946136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877926, 35.864815, 34.338512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154997, 35.645515, 34.525967>,  <26.321239, 35.513935, 34.638439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154997, 35.645515, 34.525967>,  <25.877926, 35.864815, 34.338512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154997, 35.645515, 34.525967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110015, -0.722468, -0.682596,
		0.712809, 0.421261, -0.560752,
		0.692676, -0.548251, 0.468636,
		26.362801, 35.481041, 34.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363813, 35.624012, 33.853451>,  <25.877926, 35.864815, 34.338512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363813, 35.624012, 33.853451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375874, 35.362320, 34.155727>,  <26.383110, 35.205303, 34.337093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375874, 35.362320, 34.155727>,  <26.363813, 35.624012, 33.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375874, 35.362320, 34.155727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249172, -0.737089, -0.628183,
		0.967990, -0.169356, -0.185241,
		0.030152, -0.654231, 0.755694,
		26.384918, 35.166050, 34.382435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851431, 35.044304, 33.676113>,  <26.363813, 35.624012, 33.853451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851431, 35.044304, 33.676113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592587, 34.886139, 33.936852>,  <26.437281, 34.791241, 34.093296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592587, 34.886139, 33.936852>,  <26.851431, 35.044304, 33.676113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592587, 34.886139, 33.936852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069732, -0.820713, -0.567069,
		0.759201, -0.412410, 0.503518,
		-0.647109, -0.395408, 0.651845,
		26.398453, 34.767517, 34.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405863, 34.793228, 34.070091>,  <26.851431, 35.044304, 33.676113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405863, 34.793228, 34.070091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410301, 34.822430, 34.468998>,  <27.412964, 34.839951, 34.708344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410301, 34.822430, 34.468998>,  <27.405863, 34.793228, 34.070091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410301, 34.822430, 34.468998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058793, -0.995558, 0.073534,
		0.998208, -0.059449, -0.006756,
		0.011098, 0.073005, 0.997270,
		27.413631, 34.844330, 34.768177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927542, 34.448917, 34.375896>,  <27.405863, 34.793228, 34.070091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927542, 34.448917, 34.375896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637957, 34.460701, 34.651581>,  <27.464205, 34.467770, 34.816990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637957, 34.460701, 34.651581>,  <27.927542, 34.448917, 34.375896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637957, 34.460701, 34.651581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093429, -0.994070, -0.055650,
		0.683481, -0.104681, 0.722423,
		-0.723964, 0.029460, 0.689208,
		27.420767, 34.469540, 34.858345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442644, 34.852501, 33.976604>,  <27.927542, 34.448917, 34.375896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442644, 34.852501, 33.976604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670345, 35.107933, 33.769466>,  <28.806967, 35.261192, 33.645184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670345, 35.107933, 33.769466>,  <28.442644, 34.852501, 33.976604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670345, 35.107933, 33.769466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710476, -0.065122, 0.700702,
		0.413730, -0.766796, -0.490766,
		0.569255, 0.638579, -0.517847,
		28.841122, 35.299507, 33.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061081, 34.420235, 34.076626>,  <28.442644, 34.852501, 33.976604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061081, 34.420235, 34.076626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132046, 34.792068, 33.947384>,  <29.174625, 35.015167, 33.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132046, 34.792068, 33.947384>,  <29.061081, 34.420235, 34.076626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132046, 34.792068, 33.947384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897994, -0.018580, 0.439616,
		0.402656, -0.368143, -0.838056,
		0.177412, 0.929584, -0.323109,
		29.185270, 35.070942, 33.850452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376474, 33.767487, 33.645168>,  <29.061081, 34.420235, 34.076626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376474, 33.767487, 33.645168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562475, 33.413403, 33.650414>,  <29.674076, 33.200951, 33.653561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562475, 33.413403, 33.650414>,  <29.376474, 33.767487, 33.645168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562475, 33.413403, 33.650414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665728, -0.359395, -0.653943,
		0.583590, 0.295358, -0.756430,
		0.465004, -0.885211, 0.013112,
		29.701977, 33.147839, 33.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194061, 33.479172, 32.973099>,  <29.376474, 33.767487, 33.645168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194061, 33.479172, 32.973099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335258, 33.166775, 33.179184>,  <29.419977, 32.979336, 33.302834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335258, 33.166775, 33.179184>,  <29.194061, 33.479172, 32.973099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335258, 33.166775, 33.179184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748399, -0.566167, -0.345478,
		0.561512, -0.263632, -0.784349,
		0.352993, -0.780995, 0.515211,
		29.441156, 32.932476, 33.333748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262041, 32.834152, 32.547531>,  <29.194061, 33.479172, 32.973099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262041, 32.834152, 32.547531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252481, 32.683521, 32.917961>,  <29.246746, 32.593143, 33.140221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252481, 32.683521, 32.917961>,  <29.262041, 32.834152, 32.547531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252481, 32.683521, 32.917961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762537, -0.592187, -0.260484,
		0.646503, -0.712393, -0.273003,
		-0.023898, -0.376579, 0.926076,
		29.245312, 32.570549, 33.195786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369076, 31.973179, 32.541355>,  <29.262041, 32.834152, 32.547531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369076, 31.973179, 32.541355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182627, 32.120686, 32.863037>,  <29.070757, 32.209190, 33.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182627, 32.120686, 32.863037>,  <29.369076, 31.973179, 32.541355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182627, 32.120686, 32.863037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808003, -0.547689, -0.217180,
		0.360363, -0.751030, 0.553256,
		-0.466121, 0.368769, 0.804202,
		29.042789, 32.231316, 33.104298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232626, 31.457958, 33.033627>,  <29.369076, 31.973179, 32.541355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232626, 31.457958, 33.033627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953690, 31.742666, 33.067337>,  <28.786327, 31.913490, 33.087563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953690, 31.742666, 33.067337>,  <29.232626, 31.457958, 33.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953690, 31.742666, 33.067337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715980, -0.697183, -0.036170,
		0.033009, -0.085561, 0.995786,
		-0.697340, 0.711769, 0.084273,
		28.744488, 31.956198, 33.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824396, 31.461451, 33.637295>,  <29.232626, 31.457958, 33.033627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824396, 31.461451, 33.637295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621107, 31.604467, 33.323895>,  <28.499134, 31.690277, 33.135853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621107, 31.604467, 33.323895>,  <28.824396, 31.461451, 33.637295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621107, 31.604467, 33.323895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674851, -0.730536, 0.104373,
		-0.535058, 0.581791, 0.612561,
		-0.508221, 0.357542, -0.783502,
		28.468641, 31.711729, 33.088844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115543, 31.749022, 33.682659>,  <28.824396, 31.461451, 33.637295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115543, 31.749022, 33.682659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182684, 31.561237, 33.335918>,  <28.222969, 31.448566, 33.127872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182684, 31.561237, 33.335918>,  <28.115543, 31.749022, 33.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182684, 31.561237, 33.335918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709669, -0.667882, 0.224286,
		-0.684249, 0.577532, -0.445265,
		0.167852, -0.469458, -0.866853,
		28.233040, 31.420399, 33.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108370, 32.493454, 33.883846>,  <28.115543, 31.749022, 33.682659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108370, 32.493454, 33.883846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369785, 32.218620, 33.756847>,  <28.526634, 32.053719, 33.680649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369785, 32.218620, 33.756847>,  <28.108370, 32.493454, 33.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369785, 32.218620, 33.756847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748039, 0.650296, 0.132485,
		0.115442, -0.324087, 0.938957,
		0.653537, -0.687083, -0.317502,
		28.565845, 32.012497, 33.661598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717962, 32.403732, 34.355824>,  <28.108370, 32.493454, 33.883846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717962, 32.403732, 34.355824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827217, 32.260975, 33.998493>,  <28.892771, 32.175320, 33.784096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827217, 32.260975, 33.998493>,  <28.717962, 32.403732, 34.355824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827217, 32.260975, 33.998493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878159, 0.471619, 0.080084,
		0.392725, -0.806352, 0.442225,
		0.273138, -0.356893, -0.893321,
		28.909159, 32.153908, 33.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358469, 32.166870, 34.394386>,  <28.717962, 32.403732, 34.355824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358469, 32.166870, 34.394386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312523, 32.279823, 34.013428>,  <29.284954, 32.347595, 33.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312523, 32.279823, 34.013428>,  <29.358469, 32.166870, 34.394386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312523, 32.279823, 34.013428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877265, 0.478646, 0.036112,
		0.466059, -0.831359, -0.302707,
		-0.114867, 0.282384, -0.952399,
		29.278063, 32.364540, 33.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980852, 31.932657, 33.938416>,  <29.358469, 32.166870, 34.394386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980852, 31.932657, 33.938416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827818, 32.229042, 33.717651>,  <29.735996, 32.406872, 33.585194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827818, 32.229042, 33.717651>,  <29.980852, 31.932657, 33.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827818, 32.229042, 33.717651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774951, 0.582611, 0.244980,
		0.503069, -0.333975, -0.797109,
		-0.382587, 0.740962, -0.551908,
		29.713041, 32.451332, 33.552078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430511, 32.029079, 33.367012>,  <29.980852, 31.932657, 33.938416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430511, 32.029079, 33.367012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228758, 32.354832, 33.481819>,  <30.107706, 32.550285, 33.550701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228758, 32.354832, 33.481819>,  <30.430511, 32.029079, 33.367012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228758, 32.354832, 33.481819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862511, 0.459419, 0.212154,
		0.040914, 0.354560, -0.934138,
		-0.504382, 0.814384, 0.287015,
		30.077444, 32.599148, 33.567924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608082, 32.572193, 32.911770>,  <30.430511, 32.029079, 33.367012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608082, 32.572193, 32.911770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519127, 32.709034, 33.276958>,  <30.465754, 32.791138, 33.496071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519127, 32.709034, 33.276958>,  <30.608082, 32.572193, 32.911770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519127, 32.709034, 33.276958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910282, 0.408239, 0.068761,
		-0.349186, 0.846350, -0.402195,
		-0.222387, 0.342100, 0.912969,
		30.452412, 32.811665, 33.550850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432575, 33.288593, 33.015926>,  <30.608082, 32.572193, 32.911770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432575, 33.288593, 33.015926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636549, 33.619102, 32.920231>,  <30.758934, 33.817410, 32.862816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636549, 33.619102, 32.920231>,  <30.432575, 33.288593, 33.015926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636549, 33.619102, 32.920231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617211, -0.545168, -0.567312,
		-0.599179, 0.141634, -0.787987,
		0.509937, 0.826276, -0.239235,
		30.789530, 33.866985, 32.848461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431961, 33.232853, 32.362667>,  <30.432575, 33.288593, 33.015926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431961, 33.232853, 32.362667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728832, 33.484245, 32.455772>,  <30.906956, 33.635082, 32.511635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728832, 33.484245, 32.455772>,  <30.431961, 33.232853, 32.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728832, 33.484245, 32.455772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629653, -0.534905, -0.563395,
		-0.229578, 0.564700, -0.792721,
		0.742180, 0.628482, 0.232762,
		30.951487, 33.672791, 32.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773596, 33.354137, 31.771070>,  <30.431961, 33.232853, 32.362667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773596, 33.354137, 31.771070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043446, 33.473492, 32.041138>,  <31.205355, 33.545105, 32.203178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043446, 33.473492, 32.041138>,  <30.773596, 33.354137, 31.771070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043446, 33.473492, 32.041138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729436, -0.409706, -0.547782,
		0.113169, 0.862036, -0.494051,
		0.674623, 0.298386, 0.675166,
		31.245832, 33.563007, 32.243687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329765, 33.627563, 31.423668>,  <30.773596, 33.354137, 31.771070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329765, 33.627563, 31.423668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483135, 33.519260, 31.776865>,  <31.575157, 33.454281, 31.988783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483135, 33.519260, 31.776865>,  <31.329765, 33.627563, 31.423668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483135, 33.519260, 31.776865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715708, -0.517164, -0.469364,
		0.583735, 0.811932, -0.004513,
		0.383426, -0.270754, 0.882993,
		31.598164, 33.438034, 32.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980162, 33.652454, 31.230711>,  <31.329765, 33.627563, 31.423668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980162, 33.652454, 31.230711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983215, 33.425335, 31.559963>,  <31.985048, 33.289062, 31.757515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983215, 33.425335, 31.559963>,  <31.980162, 33.652454, 31.230711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983215, 33.425335, 31.559963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707968, -0.578262, -0.405456,
		0.706203, 0.585846, 0.397570,
		0.007635, -0.567801, 0.823130,
		31.985506, 33.254993, 31.806902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746017, 33.438248, 31.330973>,  <31.980162, 33.652454, 31.230711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746017, 33.438248, 31.330973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520977, 33.169361, 31.523478>,  <32.385952, 33.008030, 31.638981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520977, 33.169361, 31.523478>,  <32.746017, 33.438248, 31.330973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520977, 33.169361, 31.523478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592718, -0.733783, -0.332037,
		0.576343, 0.098450, 0.811256,
		-0.562596, -0.672213, 0.481264,
		32.352200, 32.967697, 31.667856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178715, 32.854652, 31.629272>,  <32.746017, 33.438248, 31.330973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178715, 32.854652, 31.629272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811180, 32.698685, 31.604933>,  <32.590660, 32.605103, 31.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811180, 32.698685, 31.604933>,  <33.178715, 32.854652, 31.629272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811180, 32.698685, 31.604933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384416, -0.849465, -0.361433,
		0.089240, -0.355489, 0.930410,
		-0.918836, -0.389919, -0.060849,
		32.535530, 32.581711, 31.586678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329216, 32.208889, 31.872250>,  <33.178715, 32.854652, 31.629272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329216, 32.208889, 31.872250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988907, 32.214695, 31.662113>,  <32.784721, 32.218178, 31.536032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988907, 32.214695, 31.662113>,  <33.329216, 32.208889, 31.872250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988907, 32.214695, 31.662113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352054, -0.726435, -0.590212,
		-0.390191, -0.687082, 0.612919,
		-0.850770, 0.014514, -0.525338,
		32.733677, 32.219048, 31.504511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294621, 31.588013, 31.636841>,  <33.329216, 32.208889, 31.872250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294621, 31.588013, 31.636841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003075, 31.749929, 31.415968>,  <32.828148, 31.847080, 31.283443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003075, 31.749929, 31.415968>,  <33.294621, 31.588013, 31.636841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003075, 31.749929, 31.415968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164267, -0.679559, -0.714994,
		-0.664665, -0.611836, 0.428809,
		-0.728860, 0.404792, -0.552183,
		32.784416, 31.871367, 31.250313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908325, 30.992720, 31.329636>,  <33.294621, 31.588013, 31.636841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908325, 30.992720, 31.329636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823502, 31.326298, 31.125845>,  <32.772610, 31.526445, 31.003571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823502, 31.326298, 31.125845>,  <32.908325, 30.992720, 31.329636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823502, 31.326298, 31.125845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208955, -0.470585, -0.857256,
		-0.954657, -0.288244, -0.074467,
		-0.212056, 0.833946, -0.509477,
		32.759884, 31.576481, 30.973001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504086, 30.765846, 30.788214>,  <32.908325, 30.992720, 31.329636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504086, 30.765846, 30.788214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647484, 31.118387, 30.665125>,  <32.733524, 31.329912, 30.591272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647484, 31.118387, 30.665125>,  <32.504086, 30.765846, 30.788214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647484, 31.118387, 30.665125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182424, -0.389418, -0.902815,
		-0.915533, 0.267523, -0.300386,
		0.358499, 0.881354, -0.307723,
		32.755035, 31.382793, 30.572807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231247, 30.814415, 30.151066>,  <32.504086, 30.765846, 30.788214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231247, 30.814415, 30.151066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483639, 31.124212, 30.133081>,  <32.635075, 31.310091, 30.122292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483639, 31.124212, 30.133081>,  <32.231247, 30.814415, 30.151066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483639, 31.124212, 30.133081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166445, -0.191752, -0.967227,
		-0.757733, 0.602818, -0.249902,
		0.630981, 0.774495, -0.044961,
		32.672932, 31.356562, 30.119593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056263, 31.223452, 29.451151>,  <32.231247, 30.814415, 30.151066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056263, 31.223452, 29.451151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427727, 31.290771, 29.583370>,  <32.650604, 31.331163, 29.662703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427727, 31.290771, 29.583370>,  <32.056263, 31.223452, 29.451151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427727, 31.290771, 29.583370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356028, -0.154391, -0.921633,
		-0.104076, 0.973570, -0.203296,
		0.928662, 0.168299, 0.330550,
		32.706326, 31.341261, 29.682535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235840, 31.582075, 29.017223>,  <32.056263, 31.223452, 29.451151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235840, 31.582075, 29.017223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575737, 31.454802, 29.185364>,  <32.779675, 31.378437, 29.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575737, 31.454802, 29.185364>,  <32.235840, 31.582075, 29.017223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575737, 31.454802, 29.185364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315978, -0.330867, -0.889205,
		0.422013, 0.888417, -0.180612,
		0.849743, -0.318186, 0.420350,
		32.830662, 31.359346, 29.311468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708279, 31.949263, 28.637075>,  <32.235840, 31.582075, 29.017223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708279, 31.949263, 28.637075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897045, 31.631767, 28.790581>,  <33.010303, 31.441271, 28.882685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897045, 31.631767, 28.790581>,  <32.708279, 31.949263, 28.637075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897045, 31.631767, 28.790581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204259, -0.325009, -0.923389,
		0.857656, 0.514149, 0.008752,
		0.471916, -0.793738, 0.383766,
		33.038620, 31.393646, 28.905710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364609, 31.850065, 28.359091>,  <32.708279, 31.949263, 28.637075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364609, 31.850065, 28.359091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309845, 31.481003, 28.503292>,  <33.276985, 31.259565, 28.589813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309845, 31.481003, 28.503292>,  <33.364609, 31.850065, 28.359091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309845, 31.481003, 28.503292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202403, -0.382307, -0.901596,
		0.969685, -0.050471, 0.239090,
		-0.136910, -0.922656, 0.360502,
		33.268772, 31.204206, 28.611443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806293, 31.489172, 28.022251>,  <33.364609, 31.850065, 28.359091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806293, 31.489172, 28.022251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574417, 31.207254, 28.185823>,  <33.435291, 31.038103, 28.283966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574417, 31.207254, 28.185823>,  <33.806293, 31.489172, 28.022251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574417, 31.207254, 28.185823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114220, -0.567185, -0.815632,
		0.806790, -0.426107, 0.409295,
		-0.579692, -0.704793, 0.408929,
		33.400509, 30.995817, 28.308502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104027, 30.777815, 27.892698>,  <33.806293, 31.489172, 28.022251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104027, 30.777815, 27.892698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715366, 30.705107, 27.953159>,  <33.482170, 30.661482, 27.989435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715366, 30.705107, 27.953159>,  <34.104027, 30.777815, 27.892698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715366, 30.705107, 27.953159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011214, -0.603222, -0.797495,
		0.236140, -0.776584, 0.584085,
		-0.971654, -0.181770, 0.151153,
		33.423870, 30.650576, 27.998505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035213, 30.026672, 27.777916>,  <34.104027, 30.777815, 27.892698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035213, 30.026672, 27.777916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680714, 30.203430, 27.722349>,  <33.468014, 30.309484, 27.689009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680714, 30.203430, 27.722349>,  <34.035213, 30.026672, 27.777916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680714, 30.203430, 27.722349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155248, -0.565908, -0.809720,
		-0.436424, -0.696045, 0.570137,
		-0.886246, 0.441894, -0.138916,
		33.414841, 30.335999, 27.680674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536613, 29.495510, 27.674646>,  <34.035213, 30.026672, 27.777916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536613, 29.495510, 27.674646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386501, 29.828621, 27.511847>,  <33.296432, 30.028488, 27.414167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386501, 29.828621, 27.511847>,  <33.536613, 29.495510, 27.674646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386501, 29.828621, 27.511847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205223, -0.502844, -0.839661,
		-0.903908, -0.231582, 0.359612,
		-0.375279, 0.832777, -0.406999,
		33.273918, 30.078455, 27.389748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917393, 29.288889, 27.408772>,  <33.536613, 29.495510, 27.674646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917393, 29.288889, 27.408772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982662, 29.632446, 27.214586>,  <33.021824, 29.838581, 27.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982662, 29.632446, 27.214586>,  <32.917393, 29.288889, 27.408772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982662, 29.632446, 27.214586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282902, -0.430661, -0.857029,
		-0.945167, 0.277185, 0.172710,
		0.163177, 0.858895, -0.485462,
		33.031616, 29.890114, 27.068947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291626, 29.483147, 27.103365>,  <32.917393, 29.288889, 27.408772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291626, 29.483147, 27.103365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585541, 29.662283, 26.899588>,  <32.761890, 29.769766, 26.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585541, 29.662283, 26.899588>,  <32.291626, 29.483147, 27.103365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585541, 29.662283, 26.899588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358579, -0.381066, -0.852179,
		-0.575773, 0.808842, -0.119414,
		0.734783, 0.447842, -0.509442,
		32.805977, 29.796637, 26.746756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938360, 29.565941, 26.493702>,  <32.291626, 29.483147, 27.103365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938360, 29.565941, 26.493702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323219, 29.612906, 26.395323>,  <32.554134, 29.641085, 26.336296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323219, 29.612906, 26.395323>,  <31.938360, 29.565941, 26.493702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323219, 29.612906, 26.395323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160481, -0.485319, -0.859483,
		-0.220274, 0.866418, -0.448105,
		0.962146, 0.117410, -0.245947,
		32.611862, 29.648129, 26.321539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934813, 29.807022, 25.775232>,  <31.938360, 29.565941, 26.493702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934813, 29.807022, 25.775232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303364, 29.663298, 25.834499>,  <32.524494, 29.577063, 25.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303364, 29.663298, 25.834499>,  <31.934813, 29.807022, 25.775232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303364, 29.663298, 25.834499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031307, -0.448598, -0.893185,
		0.387400, 0.818324, -0.424578,
		0.921380, -0.359312, 0.148167,
		32.579777, 29.555504, 25.878950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390423, 30.136805, 25.366333>,  <31.934813, 29.807022, 25.775232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390423, 30.136805, 25.366333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553959, 29.782196, 25.452990>,  <32.652081, 29.569431, 25.504984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553959, 29.782196, 25.452990>,  <32.390423, 30.136805, 25.366333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553959, 29.782196, 25.452990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056206, -0.212474, -0.975549,
		0.910875, 0.411016, -0.037039,
		0.408836, -0.886522, 0.216639,
		32.676609, 29.516239, 25.517981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878006, 30.094492, 24.839226>,  <32.390423, 30.136805, 25.366333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878006, 30.094492, 24.839226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833664, 29.726025, 24.988441>,  <32.807056, 29.504944, 25.077971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833664, 29.726025, 24.988441>,  <32.878006, 30.094492, 24.839226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833664, 29.726025, 24.988441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253233, -0.389147, -0.885685,
		0.961032, -0.003719, 0.276411,
		-0.110858, -0.921168, 0.373041,
		32.800407, 29.449675, 25.100353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519802, 29.738310, 24.725639>,  <32.878006, 30.094492, 24.839226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519802, 29.738310, 24.725639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223114, 29.472380, 24.761087>,  <33.045101, 29.312822, 24.782356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223114, 29.472380, 24.761087>,  <33.519802, 29.738310, 24.725639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223114, 29.472380, 24.761087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257830, -0.404610, -0.877391,
		0.619170, -0.627931, 0.471520,
		-0.741723, -0.664826, 0.088623,
		33.000599, 29.272932, 24.787674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897900, 29.128994, 24.433344>,  <33.519802, 29.738310, 24.725639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897900, 29.128994, 24.433344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527973, 28.976833, 24.434935>,  <33.306019, 28.885536, 24.435888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527973, 28.976833, 24.434935>,  <33.897900, 29.128994, 24.433344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527973, 28.976833, 24.434935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139795, -0.349550, -0.926430,
		0.353805, -0.856219, 0.376446,
		-0.924813, -0.380401, 0.003977,
		33.250530, 28.862713, 24.436129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895184, 28.464762, 24.325848>,  <33.897900, 29.128994, 24.433344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895184, 28.464762, 24.325848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538773, 28.593029, 24.197319>,  <33.324928, 28.669989, 24.120203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538773, 28.593029, 24.197319>,  <33.895184, 28.464762, 24.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538773, 28.593029, 24.197319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179315, -0.401642, -0.898070,
		-0.417044, -0.857818, 0.300371,
		-0.891022, 0.320674, -0.321322,
		33.271465, 28.689230, 24.100924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751465, 27.982758, 23.850914>,  <33.895184, 28.464762, 24.325848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751465, 27.982758, 23.850914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526306, 28.298344, 23.752373>,  <33.391212, 28.487696, 23.693249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526306, 28.298344, 23.752373>,  <33.751465, 27.982758, 23.850914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526306, 28.298344, 23.752373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408276, 0.006256, -0.912837,
		-0.718654, -0.614408, -0.325636,
		-0.562892, 0.788963, -0.246353,
		33.357437, 28.535032, 23.678467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314781, 27.771877, 23.250957>,  <33.751465, 27.982758, 23.850914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314781, 27.771877, 23.250957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301361, 28.171453, 23.238386>,  <33.293308, 28.411200, 23.230844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301361, 28.171453, 23.238386>,  <33.314781, 27.771877, 23.250957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301361, 28.171453, 23.238386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269544, -0.021235, -0.962754,
		-0.962403, -0.040775, -0.268546,
		-0.033554, 0.998943, -0.031427,
		33.291294, 28.471136, 23.228958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845982, 27.990322, 22.710152>,  <33.314781, 27.771877, 23.250957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845982, 27.990322, 22.710152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087601, 28.299782, 22.786678>,  <33.232571, 28.485456, 22.832594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087601, 28.299782, 22.786678>,  <32.845982, 27.990322, 22.710152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087601, 28.299782, 22.786678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231671, 0.059233, -0.970989,
		-0.762535, 0.630842, -0.143452,
		0.604043, 0.773647, 0.191315,
		33.268814, 28.531876, 22.844072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798824, 28.505144, 22.112864>,  <32.845982, 27.990322, 22.710152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798824, 28.505144, 22.112864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149078, 28.592098, 22.285376>,  <33.359230, 28.644270, 22.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149078, 28.592098, 22.285376>,  <32.798824, 28.505144, 22.112864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149078, 28.592098, 22.285376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356852, 0.310518, -0.881042,
		-0.325444, 0.925377, 0.194327,
		0.875639, 0.217384, 0.431279,
		33.411770, 28.657314, 22.414759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964912, 29.064276, 21.655348>,  <32.798824, 28.505144, 22.112864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964912, 29.064276, 21.655348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299885, 29.003109, 21.865231>,  <33.500870, 28.966408, 21.991161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299885, 29.003109, 21.865231>,  <32.964912, 29.064276, 21.655348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299885, 29.003109, 21.865231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519222, 0.522313, -0.676460,
		-0.170619, 0.838931, 0.516802,
		0.837435, -0.152918, 0.524708,
		33.551117, 28.957233, 22.022642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336597, 29.686710, 21.794718>,  <32.964912, 29.064276, 21.655348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336597, 29.686710, 21.794718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600563, 29.386654, 21.777744>,  <33.758942, 29.206621, 21.767561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600563, 29.386654, 21.777744>,  <33.336597, 29.686710, 21.794718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600563, 29.386654, 21.777744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534385, 0.508313, -0.675315,
		0.528149, 0.422978, 0.736308,
		0.659918, -0.750139, -0.042431,
		33.798538, 29.161612, 21.765015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961452, 30.012400, 21.813700>,  <33.336597, 29.686710, 21.794718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961452, 30.012400, 21.813700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048656, 29.637617, 21.704460>,  <34.100979, 29.412746, 21.638916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048656, 29.637617, 21.704460>,  <33.961452, 30.012400, 21.813700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048656, 29.637617, 21.704460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598191, 0.349388, -0.721176,
		0.771128, -0.006142, 0.636650,
		0.218009, -0.936958, -0.273097,
		34.114059, 29.356529, 21.622532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723644, 29.934490, 21.709032>,  <33.961452, 30.012400, 21.813700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723644, 29.934490, 21.709032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584259, 29.622580, 21.500984>,  <34.500629, 29.435434, 21.376156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584259, 29.622580, 21.500984>,  <34.723644, 29.934490, 21.709032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584259, 29.622580, 21.500984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528188, 0.295053, -0.796217,
		0.774334, -0.552171, 0.309053,
		-0.348461, -0.779776, -0.520120,
		34.479721, 29.388647, 21.344948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307152, 29.545975, 21.449171>,  <34.723644, 29.934490, 21.709032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307152, 29.545975, 21.449171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994652, 29.497850, 21.204166>,  <34.807152, 29.468975, 21.057163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994652, 29.497850, 21.204166>,  <35.307152, 29.545975, 21.449171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994652, 29.497850, 21.204166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549481, 0.333021, -0.766269,
		0.296166, -0.935213, -0.194067,
		-0.781253, -0.120307, -0.612511,
		34.760277, 29.461758, 21.020412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562267, 29.329729, 20.793867>,  <35.307152, 29.545975, 21.449171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562267, 29.329729, 20.793867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198357, 29.456493, 20.686634>,  <34.980011, 29.532553, 20.622293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198357, 29.456493, 20.686634>,  <35.562267, 29.329729, 20.793867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198357, 29.456493, 20.686634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383076, 0.392300, -0.836273,
		-0.159858, -0.863520, -0.478308,
		-0.909779, 0.316913, -0.268082,
		34.925423, 29.551567, 20.606209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559872, 29.176855, 20.110025>,  <35.562267, 29.329729, 20.793867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559872, 29.176855, 20.110025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254818, 29.433281, 20.144487>,  <35.071785, 29.587137, 20.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254818, 29.433281, 20.144487>,  <35.559872, 29.176855, 20.110025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254818, 29.433281, 20.144487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320278, 0.489975, -0.810769,
		-0.561969, -0.590728, -0.578991,
		-0.762636, 0.641065, 0.086154,
		35.026028, 29.625601, 20.170334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379879, 29.297512, 19.474022>,  <35.559872, 29.176855, 20.110025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379879, 29.297512, 19.474022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226444, 29.603476, 19.681013>,  <35.134384, 29.787054, 19.805208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226444, 29.603476, 19.681013>,  <35.379879, 29.297512, 19.474022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226444, 29.603476, 19.681013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309657, 0.634429, -0.708246,
		-0.870044, -0.111431, -0.480215,
		-0.383583, 0.764907, 0.517476,
		35.111370, 29.832947, 19.836256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831017, 29.601675, 19.052341>,  <35.379879, 29.297512, 19.474022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831017, 29.601675, 19.052341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941864, 29.886059, 19.310873>,  <35.008373, 30.056690, 19.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941864, 29.886059, 19.310873>,  <34.831017, 29.601675, 19.052341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941864, 29.886059, 19.310873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037319, 0.664202, -0.746621,
		-0.960111, 0.231021, 0.157529,
		0.277116, 0.710961, 0.646329,
		35.024998, 30.099346, 19.504772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477612, 30.136251, 18.766546>,  <34.831017, 29.601675, 19.052341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477612, 30.136251, 18.766546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723679, 30.324175, 19.019796>,  <34.871319, 30.436928, 19.171747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723679, 30.324175, 19.019796>,  <34.477612, 30.136251, 18.766546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723679, 30.324175, 19.019796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004115, 0.804959, -0.593316,
		-0.788384, 0.362384, 0.497119,
		0.615169, 0.469807, 0.633126,
		34.908230, 30.465117, 19.209734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016750, 30.734303, 18.510345>,  <34.477612, 30.136251, 18.766546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016750, 30.734303, 18.510345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001534, 31.075790, 18.302610>,  <34.992405, 31.280684, 18.177969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001534, 31.075790, 18.302610>,  <35.016750, 30.734303, 18.510345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001534, 31.075790, 18.302610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207210, -0.515158, -0.831671,
		-0.977557, 0.075973, 0.196498,
		-0.038043, 0.853721, -0.519338,
		34.990120, 31.331907, 18.146809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428104, 30.689592, 18.053255>,  <35.016750, 30.734303, 18.510345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428104, 30.689592, 18.053255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649830, 30.987226, 17.904081>,  <34.782864, 31.165806, 17.814577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649830, 30.987226, 17.904081>,  <34.428104, 30.689592, 18.053255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649830, 30.987226, 17.904081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026470, -0.463606, -0.885646,
		-0.831889, 0.481051, -0.276677,
		0.554310, 0.744083, -0.372935,
		34.816124, 31.210451, 17.792200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037319, 30.904255, 17.363590>,  <34.428104, 30.689592, 18.053255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037319, 30.904255, 17.363590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421116, 31.015730, 17.347027>,  <34.651394, 31.082615, 17.337090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421116, 31.015730, 17.347027>,  <34.037319, 30.904255, 17.363590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421116, 31.015730, 17.347027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132482, -0.575971, -0.806663,
		-0.248659, 0.768498, -0.589559,
		0.959488, 0.278690, -0.041408,
		34.708961, 31.099337, 17.334604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211407, 31.099642, 16.601566>,  <34.037319, 30.904255, 17.363590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211407, 31.099642, 16.601566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484730, 30.933773, 16.841946>,  <34.648724, 30.834251, 16.986174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484730, 30.933773, 16.841946>,  <34.211407, 31.099642, 16.601566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484730, 30.933773, 16.841946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147119, -0.727993, -0.669614,
		0.715157, 0.545962, -0.436435,
		0.683305, -0.414671, 0.600951,
		34.689720, 30.809372, 17.022230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520149, 30.734137, 16.066053>,  <34.211407, 31.099642, 16.601566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520149, 30.734137, 16.066053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683666, 30.631021, 16.416237>,  <34.781776, 30.569153, 16.626347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683666, 30.631021, 16.416237>,  <34.520149, 30.734137, 16.066053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683666, 30.631021, 16.416237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290010, -0.872859, -0.392443,
		0.865320, 0.414322, -0.282061,
		0.408797, -0.257788, 0.875460,
		34.806305, 30.553684, 16.678875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104046, 30.501236, 15.856620>,  <34.520149, 30.734137, 16.066053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104046, 30.501236, 15.856620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988487, 30.357622, 16.211615>,  <34.919151, 30.271454, 16.424612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988487, 30.357622, 16.211615>,  <35.104046, 30.501236, 15.856620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988487, 30.357622, 16.211615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496174, -0.848948, -0.181931,
		0.818749, 0.387789, 0.423402,
		-0.288896, -0.359037, 0.887486,
		34.901817, 30.249910, 16.477859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656738, 30.339228, 16.363571>,  <35.104046, 30.501236, 15.856620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656738, 30.339228, 16.363571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318363, 30.125923, 16.365238>,  <35.115337, 29.997940, 16.366240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318363, 30.125923, 16.365238>,  <35.656738, 30.339228, 16.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318363, 30.125923, 16.365238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509747, -0.810884, -0.287447,
		0.156665, -0.241038, 0.957788,
		-0.845940, -0.533262, 0.004169,
		35.064583, 29.965944, 16.366489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916130, 30.800764, 16.990309>,  <35.656738, 30.339228, 16.363571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916130, 30.800764, 16.990309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525593, 30.886578, 16.979561>,  <35.291271, 30.938066, 16.973112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525593, 30.886578, 16.979561>,  <35.916130, 30.800764, 16.990309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525593, 30.886578, 16.979561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142716, 0.732822, 0.665285,
		0.162417, 0.645714, -0.746106,
		-0.976347, 0.214535, -0.026869,
		35.232689, 30.950937, 16.971500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892624, 31.513582, 17.079306>,  <35.916130, 30.800764, 16.990309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892624, 31.513582, 17.079306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524357, 31.389671, 17.174313>,  <35.303398, 31.315325, 17.231318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524357, 31.389671, 17.174313>,  <35.892624, 31.513582, 17.079306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524357, 31.389671, 17.174313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077831, 0.741925, 0.665950,
		-0.382516, 0.594630, -0.707174,
		-0.920665, -0.309777, 0.237518,
		35.248158, 31.296738, 17.245567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602245, 32.089409, 17.318914>,  <35.892624, 31.513582, 17.079306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602245, 32.089409, 17.318914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343662, 31.816351, 17.455200>,  <35.188511, 31.652515, 17.536972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343662, 31.816351, 17.455200>,  <35.602245, 32.089409, 17.318914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343662, 31.816351, 17.455200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252568, 0.612878, 0.748726,
		-0.719931, 0.397967, -0.568614,
		-0.646459, -0.682644, 0.340716,
		35.149723, 31.611557, 17.557415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994785, 32.453693, 17.425917>,  <35.602245, 32.089409, 17.318914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994785, 32.453693, 17.425917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002567, 32.119320, 17.645313>,  <35.007236, 31.918697, 17.776951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002567, 32.119320, 17.645313>,  <34.994785, 32.453693, 17.425917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002567, 32.119320, 17.645313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335895, 0.511244, 0.791078,
		-0.941699, -0.199622, -0.270841,
		0.019450, -0.835931, 0.548490,
		35.008404, 31.868540, 17.809860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324497, 32.378597, 17.824533>,  <34.994785, 32.453693, 17.425917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324497, 32.378597, 17.824533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607822, 32.155609, 17.997746>,  <34.777817, 32.021816, 18.101673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607822, 32.155609, 17.997746>,  <34.324497, 32.378597, 17.824533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607822, 32.155609, 17.997746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152945, 0.477674, 0.865121,
		-0.689127, -0.679009, 0.253081,
		0.708316, -0.557471, 0.433029,
		34.820316, 31.988367, 18.127655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041054, 32.307640, 18.400761>,  <34.324497, 32.378597, 17.824533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041054, 32.307640, 18.400761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386997, 32.134399, 18.502304>,  <34.594563, 32.030453, 18.563231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386997, 32.134399, 18.502304>,  <34.041054, 32.307640, 18.400761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386997, 32.134399, 18.502304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008370, 0.493163, 0.869897,
		-0.501951, -0.754460, 0.422889,
		0.864856, -0.433106, 0.253859,
		34.646454, 32.004467, 18.578463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890324, 31.942928, 19.046015>,  <34.041054, 32.307640, 18.400761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890324, 31.942928, 19.046015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287472, 31.989155, 19.057737>,  <34.525761, 32.016891, 19.064770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287472, 31.989155, 19.057737>,  <33.890324, 31.942928, 19.046015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287472, 31.989155, 19.057737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060401, 0.275647, 0.959359,
		0.102790, -0.954287, 0.280661,
		0.992868, 0.115565, 0.029306,
		34.585331, 32.023823, 19.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108120, 31.585960, 19.677376>,  <33.890324, 31.942928, 19.046015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108120, 31.585960, 19.677376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373802, 31.869404, 19.582129>,  <34.533211, 32.039471, 19.524981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373802, 31.869404, 19.582129>,  <34.108120, 31.585960, 19.677376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373802, 31.869404, 19.582129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081898, 0.385594, 0.919027,
		0.743047, -0.590925, 0.314149,
		0.664209, 0.708608, -0.238119,
		34.573067, 32.081985, 19.510693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711544, 31.571299, 20.170044>,  <34.108120, 31.585960, 19.677376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711544, 31.571299, 20.170044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692417, 31.938913, 20.013542>,  <34.680939, 32.159481, 19.919641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692417, 31.938913, 20.013542>,  <34.711544, 31.571299, 20.170044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692417, 31.938913, 20.013542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089879, 0.386156, 0.918044,
		0.994804, 0.079067, 0.064137,
		-0.047820, 0.919039, -0.391256,
		34.678070, 32.214626, 19.896166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807316, 31.902439, 20.760483>,  <34.711544, 31.571299, 20.170044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807316, 31.902439, 20.760483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725014, 32.203011, 20.509718>,  <34.675632, 32.383354, 20.359259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725014, 32.203011, 20.509718>,  <34.807316, 31.902439, 20.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725014, 32.203011, 20.509718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342953, 0.544625, 0.765354,
		0.916541, 0.372479, 0.145644,
		-0.205757, 0.751427, -0.626914,
		34.663288, 32.428440, 20.321644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210617, 32.466740, 21.014200>,  <34.807316, 31.902439, 20.760483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210617, 32.466740, 21.014200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884846, 32.605667, 20.828264>,  <34.689384, 32.689026, 20.716703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884846, 32.605667, 20.828264>,  <35.210617, 32.466740, 21.014200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884846, 32.605667, 20.828264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177146, 0.614018, 0.769156,
		0.552565, 0.708765, -0.438546,
		-0.814427, 0.347322, -0.464840,
		34.640518, 32.709866, 20.688812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239189, 33.130005, 21.117229>,  <35.210617, 32.466740, 21.014200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239189, 33.130005, 21.117229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856068, 33.045937, 21.038805>,  <34.626194, 32.995495, 20.991751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856068, 33.045937, 21.038805>,  <35.239189, 33.130005, 21.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856068, 33.045937, 21.038805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283140, 0.572572, 0.769411,
		-0.049449, 0.792457, -0.607920,
		-0.957803, -0.210173, -0.196063,
		34.568726, 32.982883, 20.979986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981834, 33.765484, 21.105476>,  <35.239189, 33.130005, 21.117229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981834, 33.765484, 21.105476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691788, 33.496883, 21.166534>,  <34.517761, 33.335724, 21.203169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691788, 33.496883, 21.166534>,  <34.981834, 33.765484, 21.105476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691788, 33.496883, 21.166534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260586, 0.472748, 0.841786,
		-0.637421, 0.570613, -0.517779,
		-0.725113, -0.671498, 0.152646,
		34.474255, 33.295433, 21.212328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477642, 34.194881, 21.449665>,  <34.981834, 33.765484, 21.105476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477642, 34.194881, 21.449665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331364, 33.830055, 21.523865>,  <34.243599, 33.611160, 21.568384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331364, 33.830055, 21.523865>,  <34.477642, 34.194881, 21.449665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331364, 33.830055, 21.523865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366153, 0.324213, 0.872249,
		-0.855687, 0.251054, -0.452517,
		-0.365693, -0.912063, 0.185501,
		34.221657, 33.556435, 21.579515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862278, 34.299313, 21.720577>,  <34.477642, 34.194881, 21.449665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862278, 34.299313, 21.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927101, 33.917381, 21.820206>,  <33.965996, 33.688221, 21.879982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927101, 33.917381, 21.820206>,  <33.862278, 34.299313, 21.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927101, 33.917381, 21.820206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350567, 0.180231, 0.919032,
		-0.922409, -0.236256, -0.305523,
		0.162062, -0.954830, 0.249070,
		33.975719, 33.630932, 21.894926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209892, 34.105450, 22.053322>,  <33.862278, 34.299313, 21.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209892, 34.105450, 22.053322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522404, 33.875507, 22.150600>,  <33.709911, 33.737541, 22.208967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522404, 33.875507, 22.150600>,  <33.209892, 34.105450, 22.053322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522404, 33.875507, 22.150600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278983, 0.026939, 0.959918,
		-0.558370, -0.817808, -0.139329,
		0.781276, -0.574860, 0.243197,
		33.756786, 33.703049, 22.223560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886875, 33.459385, 22.528778>,  <33.209892, 34.105450, 22.053322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886875, 33.459385, 22.528778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268974, 33.544571, 22.610901>,  <33.498234, 33.595680, 22.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268974, 33.544571, 22.610901>,  <32.886875, 33.459385, 22.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268974, 33.544571, 22.610901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227907, 0.087383, 0.969754,
		0.188581, -0.973145, 0.132008,
		0.955247, 0.212963, 0.205308,
		33.555550, 33.608459, 22.672493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972675, 33.221825, 23.211248>,  <32.886875, 33.459385, 22.528778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972675, 33.221825, 23.211248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301128, 33.446175, 23.169003>,  <33.498199, 33.580784, 23.143656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301128, 33.446175, 23.169003>,  <32.972675, 33.221825, 23.211248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301128, 33.446175, 23.169003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118024, 0.347922, 0.930065,
		0.558395, -0.751246, 0.351888,
		0.821137, 0.560874, -0.105613,
		33.547470, 33.614437, 23.137320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479107, 32.986572, 23.728733>,  <32.972675, 33.221825, 23.211248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479107, 32.986572, 23.728733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587605, 33.357269, 23.624756>,  <33.652702, 33.579689, 23.562370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587605, 33.357269, 23.624756>,  <33.479107, 32.986572, 23.728733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587605, 33.357269, 23.624756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126376, 0.302020, 0.944888,
		0.954178, -0.223445, 0.199039,
		0.271244, 0.926745, -0.259943,
		33.668980, 33.635292, 23.546774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873474, 33.351707, 24.283363>,  <33.479107, 32.986572, 23.728733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873474, 33.351707, 24.283363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723465, 33.647816, 24.060165>,  <33.633457, 33.825481, 23.926247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723465, 33.647816, 24.060165>,  <33.873474, 33.351707, 24.283363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723465, 33.647816, 24.060165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213387, 0.516829, 0.829068,
		0.902121, 0.429990, -0.035860,
		-0.375025, 0.740268, -0.557997,
		33.610958, 33.869896, 23.892767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247623, 33.852566, 24.539118>,  <33.873474, 33.351707, 24.283363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247623, 33.852566, 24.539118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930988, 34.009811, 24.351990>,  <33.741009, 34.104160, 24.239714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930988, 34.009811, 24.351990>,  <34.247623, 33.852566, 24.539118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930988, 34.009811, 24.351990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281493, 0.444924, 0.850179,
		0.542362, 0.804676, -0.241536,
		-0.791584, 0.393115, -0.467821,
		33.693512, 34.127747, 24.211643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227077, 34.596134, 24.751249>,  <34.247623, 33.852566, 24.539118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227077, 34.596134, 24.751249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869759, 34.474510, 24.618847>,  <33.655369, 34.401535, 24.539406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869759, 34.474510, 24.618847>,  <34.227077, 34.596134, 24.751249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869759, 34.474510, 24.618847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441426, 0.454826, 0.773483,
		-0.084636, 0.837066, -0.540515,
		-0.893297, -0.304062, -0.331008,
		33.601768, 34.383293, 24.519545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786247, 35.135178, 24.795952>,  <34.227077, 34.596134, 24.751249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786247, 35.135178, 24.795952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543003, 34.817642, 24.797834>,  <33.397057, 34.627121, 24.798964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543003, 34.817642, 24.797834>,  <33.786247, 35.135178, 24.795952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543003, 34.817642, 24.797834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387547, 0.302037, 0.870965,
		-0.692827, 0.527819, -0.491322,
		-0.608110, -0.793839, 0.004704,
		33.360569, 34.579491, 24.799246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156189, 35.444859, 25.068268>,  <33.786247, 35.135178, 24.795952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156189, 35.444859, 25.068268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133343, 35.047913, 25.112001>,  <33.119633, 34.809746, 25.138243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133343, 35.047913, 25.112001>,  <33.156189, 35.444859, 25.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133343, 35.047913, 25.112001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405045, 0.123130, 0.905967,
		-0.912511, 0.007461, -0.408985,
		-0.057118, -0.992362, 0.109335,
		33.116207, 34.750202, 25.144802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480473, 35.391369, 25.148655>,  <33.156189, 35.444859, 25.068268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480473, 35.391369, 25.148655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682468, 35.080215, 25.298260>,  <32.803665, 34.893524, 25.388023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682468, 35.080215, 25.298260>,  <32.480473, 35.391369, 25.148655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682468, 35.080215, 25.298260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410727, 0.164544, 0.896788,
		-0.759135, -0.606488, -0.236403,
		0.504992, -0.777880, 0.374012,
		32.833965, 34.846851, 25.410463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993841, 34.977825, 25.559835>,  <32.480473, 35.391369, 25.148655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993841, 34.977825, 25.559835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352402, 34.858784, 25.691227>,  <32.567539, 34.787361, 25.770061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352402, 34.858784, 25.691227>,  <31.993841, 34.977825, 25.559835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352402, 34.858784, 25.691227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345416, -0.004626, 0.938438,
		-0.277761, -0.954679, -0.106943,
		0.896402, -0.297601, 0.328477,
		32.621323, 34.769505, 25.789770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803932, 34.393795, 25.969910>,  <31.993841, 34.977825, 25.559835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803932, 34.393795, 25.969910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169739, 34.511997, 26.080423>,  <32.389225, 34.582920, 26.146732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169739, 34.511997, 26.080423>,  <31.803932, 34.393795, 25.969910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169739, 34.511997, 26.080423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263131, -0.084235, 0.961076,
		0.307276, -0.951620, 0.000723,
		0.914518, 0.295506, 0.276284,
		32.444096, 34.600647, 26.163309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103210, 33.954395, 26.450075>,  <31.803932, 34.393795, 25.969910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103210, 33.954395, 26.450075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313286, 34.280952, 26.546144>,  <32.439331, 34.476887, 26.603786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313286, 34.280952, 26.546144>,  <32.103210, 33.954395, 26.450075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313286, 34.280952, 26.546144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206545, -0.151503, 0.966636,
		0.825541, -0.557272, 0.089054,
		0.525188, 0.816391, 0.240173,
		32.470840, 34.525871, 26.618196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642494, 33.615551, 26.868752>,  <32.103210, 33.954395, 26.450075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642494, 33.615551, 26.868752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595112, 34.007721, 26.931667>,  <32.566681, 34.243023, 26.969418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595112, 34.007721, 26.931667>,  <32.642494, 33.615551, 26.868752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595112, 34.007721, 26.931667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154781, -0.174701, 0.972380,
		0.980821, 0.090840, 0.172445,
		-0.118458, 0.980422, 0.157290,
		32.559574, 34.301849, 26.978855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065212, 33.856983, 27.399343>,  <32.642494, 33.615551, 26.868752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065212, 33.856983, 27.399343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794670, 34.150146, 27.369970>,  <32.632347, 34.326046, 27.352346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794670, 34.150146, 27.369970>,  <33.065212, 33.856983, 27.399343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794670, 34.150146, 27.369970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128310, -0.019061, 0.991551,
		0.725315, 0.680061, 0.106931,
		-0.676354, 0.732908, -0.073433,
		32.591763, 34.370018, 27.347940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161812, 34.120415, 28.019012>,  <33.065212, 33.856983, 27.399343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161812, 34.120415, 28.019012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813061, 34.294479, 27.929152>,  <32.603809, 34.398918, 27.875235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813061, 34.294479, 27.929152>,  <33.161812, 34.120415, 28.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813061, 34.294479, 27.929152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211730, 0.078690, 0.974155,
		0.441596, 0.896905, 0.023529,
		-0.871873, 0.435165, -0.224651,
		32.551498, 34.425030, 27.861755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123795, 34.668228, 28.402498>,  <33.161812, 34.120415, 28.019012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123795, 34.668228, 28.402498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736748, 34.623871, 28.311787>,  <32.504520, 34.597256, 28.257359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736748, 34.623871, 28.311787>,  <33.123795, 34.668228, 28.402498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736748, 34.623871, 28.311787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250002, 0.296376, 0.921770,
		-0.035002, 0.948612, -0.314500,
		-0.967612, -0.110889, -0.226781,
		32.446465, 34.590603, 28.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813381, 35.129711, 28.688421>,  <33.123795, 34.668228, 28.402498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813381, 35.129711, 28.688421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471794, 34.933407, 28.619267>,  <32.266842, 34.815624, 28.577774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471794, 34.933407, 28.619267>,  <32.813381, 35.129711, 28.688421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471794, 34.933407, 28.619267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355751, 0.308220, 0.882293,
		-0.379711, 0.814954, -0.437800,
		-0.853968, -0.490764, -0.172886,
		32.215603, 34.786179, 28.567400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309959, 35.567989, 28.867670>,  <32.813381, 35.129711, 28.688421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309959, 35.567989, 28.867670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125710, 35.212967, 28.870960>,  <32.015160, 34.999954, 28.872934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125710, 35.212967, 28.870960>,  <32.309959, 35.567989, 28.867670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125710, 35.212967, 28.870960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384239, 0.207749, 0.899556,
		-0.800118, 0.411194, -0.436728,
		-0.460622, -0.887558, 0.008227,
		31.987522, 34.946701, 28.873428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655605, 35.690437, 28.840261>,  <32.309959, 35.567989, 28.867670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655605, 35.690437, 28.840261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714451, 35.340603, 29.025064>,  <31.749758, 35.130703, 29.135946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714451, 35.340603, 29.025064>,  <31.655605, 35.690437, 28.840261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714451, 35.340603, 29.025064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410512, 0.370977, 0.832980,
		-0.899910, -0.312202, -0.304454,
		0.147113, -0.874589, 0.462009,
		31.758585, 35.078228, 29.163668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034946, 35.621689, 29.205147>,  <31.655605, 35.690437, 28.840261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034946, 35.621689, 29.205147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268724, 35.344189, 29.373499>,  <31.408991, 35.177689, 29.474510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268724, 35.344189, 29.373499>,  <31.034946, 35.621689, 29.205147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268724, 35.344189, 29.373499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495042, 0.106131, 0.862363,
		-0.642930, -0.712357, -0.281406,
		0.584444, -0.693747, 0.420881,
		31.444057, 35.136066, 29.499763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664530, 35.285507, 29.829159>,  <31.034946, 35.621689, 29.205147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664530, 35.285507, 29.829159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055159, 35.207577, 29.865715>,  <31.289536, 35.160820, 29.887650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055159, 35.207577, 29.865715>,  <30.664530, 35.285507, 29.829159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055159, 35.207577, 29.865715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036956, 0.266554, 0.963111,
		-0.211999, -0.943924, 0.253109,
		0.976571, -0.194825, 0.091393,
		31.348129, 35.149128, 29.893133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573374, 34.845814, 30.398775>,  <30.664530, 35.285507, 29.829159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573374, 34.845814, 30.398775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954329, 34.965801, 30.376945>,  <31.182901, 35.037792, 30.363848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954329, 34.965801, 30.376945>,  <30.573374, 34.845814, 30.398775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954329, 34.965801, 30.376945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008205, 0.204138, 0.978908,
		0.304784, -0.931851, 0.196879,
		0.952386, 0.299970, -0.054572,
		31.240044, 35.055794, 30.360575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840916, 34.638157, 30.930548>,  <30.573374, 34.845814, 30.398775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840916, 34.638157, 30.930548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124697, 34.910515, 30.857821>,  <31.294966, 35.073929, 30.814184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124697, 34.910515, 30.857821>,  <30.840916, 34.638157, 30.930548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124697, 34.910515, 30.857821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129862, 0.127265, 0.983331,
		0.692687, -0.721236, 0.001865,
		0.709451, 0.680898, -0.181816,
		31.337532, 35.114784, 30.803276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375010, 34.423416, 31.265369>,  <30.840916, 34.638157, 30.930548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375010, 34.423416, 31.265369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426613, 34.818439, 31.229393>,  <31.457575, 35.055454, 31.207808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426613, 34.818439, 31.229393>,  <31.375010, 34.423416, 31.265369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426613, 34.818439, 31.229393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124505, 0.073852, 0.989467,
		0.983796, -0.138847, -0.113428,
		0.129008, 0.987556, -0.089943,
		31.465315, 35.114708, 31.202410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903996, 34.539520, 31.714975>,  <31.375010, 34.423416, 31.265369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903996, 34.539520, 31.714975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744158, 34.902058, 31.660023>,  <31.648256, 35.119579, 31.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744158, 34.902058, 31.660023>,  <31.903996, 34.539520, 31.714975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744158, 34.902058, 31.660023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190282, 0.228608, 0.954741,
		0.896727, 0.355367, -0.263810,
		-0.399593, 0.906340, -0.137379,
		31.624281, 35.173962, 31.618809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404285, 35.089584, 31.840012>,  <31.903996, 34.539520, 31.714975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404285, 35.089584, 31.840012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032177, 35.229202, 31.885210>,  <31.808912, 35.312973, 31.912329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032177, 35.229202, 31.885210>,  <32.404285, 35.089584, 31.840012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032177, 35.229202, 31.885210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179409, 0.164148, 0.969983,
		0.320019, 0.922618, -0.215323,
		-0.930269, 0.349044, 0.112995,
		31.753096, 35.333916, 31.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690136, 35.716694, 31.706697>,  <32.404285, 35.089584, 31.840012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690136, 35.716694, 31.706697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021317, 35.780960, 31.921612>,  <33.220024, 35.819519, 32.050560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021317, 35.780960, 31.921612>,  <32.690136, 35.716694, 31.706697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021317, 35.780960, 31.921612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548460, -0.032149, -0.835559,
		-0.116971, 0.986485, -0.114736,
		0.827955, 0.160664, 0.537287,
		33.269703, 35.829159, 32.082798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951408, 36.198845, 31.408081>,  <32.690136, 35.716694, 31.706697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951408, 36.198845, 31.408081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233498, 36.003551, 31.613720>,  <33.402752, 35.886375, 31.737103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233498, 36.003551, 31.613720>,  <32.951408, 36.198845, 31.408081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233498, 36.003551, 31.613720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627725, 0.092893, -0.772872,
		0.329587, 0.867754, 0.371987,
		0.705219, -0.488235, 0.514095,
		33.445065, 35.857082, 31.767948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505898, 36.615189, 31.342079>,  <32.951408, 36.198845, 31.408081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505898, 36.615189, 31.342079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654667, 36.256676, 31.438707>,  <33.743927, 36.041569, 31.496685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654667, 36.256676, 31.438707>,  <33.505898, 36.615189, 31.342079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654667, 36.256676, 31.438707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804822, 0.181685, -0.565024,
		0.462529, 0.404567, 0.788918,
		0.371925, -0.896279, 0.241570,
		33.766243, 35.987793, 31.511179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316158, 36.702888, 31.312607>,  <33.505898, 36.615189, 31.342079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316158, 36.702888, 31.312607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239319, 36.310654, 31.328360>,  <34.193214, 36.075314, 31.337811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239319, 36.310654, 31.328360>,  <34.316158, 36.702888, 31.312607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239319, 36.310654, 31.328360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763565, -0.174549, -0.621692,
		0.616496, -0.089355, 0.782271,
		-0.192096, -0.980586, 0.039381,
		34.181690, 36.016479, 31.340174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931370, 36.362194, 31.349005>,  <34.316158, 36.702888, 31.312607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931370, 36.362194, 31.349005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698914, 36.075413, 31.194988>,  <34.559441, 35.903343, 31.102579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698914, 36.075413, 31.194988>,  <34.931370, 36.362194, 31.349005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698914, 36.075413, 31.194988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654418, -0.130454, -0.744794,
		0.483752, -0.684806, 0.544999,
		-0.581137, -0.716953, -0.385042,
		34.524570, 35.860329, 31.079475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425438, 35.849693, 30.969231>,  <34.931370, 36.362194, 31.349005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425438, 35.849693, 30.969231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069012, 35.732334, 30.830715>,  <34.855156, 35.661919, 30.747606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069012, 35.732334, 30.830715>,  <35.425438, 35.849693, 30.969231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069012, 35.732334, 30.830715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408737, -0.187046, -0.893279,
		0.197315, -0.937513, 0.286593,
		-0.891067, -0.293399, -0.346289,
		34.801693, 35.644314, 30.726828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466038, 35.142029, 30.665220>,  <35.425438, 35.849693, 30.969231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466038, 35.142029, 30.665220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146564, 35.323078, 30.506607>,  <34.954880, 35.431709, 30.411438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146564, 35.323078, 30.506607>,  <35.466038, 35.142029, 30.665220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146564, 35.323078, 30.506607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409092, -0.074853, -0.909418,
		-0.441306, -0.888554, -0.125381,
		-0.798682, 0.452624, -0.396534,
		34.906960, 35.458866, 30.387648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179672, 34.703625, 30.229897>,  <35.466038, 35.142029, 30.665220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179672, 34.703625, 30.229897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073765, 35.069813, 30.108696>,  <35.010220, 35.289524, 30.035975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073765, 35.069813, 30.108696>,  <35.179672, 34.703625, 30.229897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073765, 35.069813, 30.108696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281119, -0.227293, -0.932368,
		-0.922427, -0.332039, -0.197177,
		-0.264766, 0.915472, -0.303003,
		34.994335, 35.344456, 30.017796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702019, 34.629562, 29.677284>,  <35.179672, 34.703625, 30.229897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702019, 34.629562, 29.677284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856255, 34.997486, 29.648256>,  <34.948795, 35.218239, 29.630838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856255, 34.997486, 29.648256>,  <34.702019, 34.629562, 29.677284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856255, 34.997486, 29.648256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237464, -0.174936, -0.955515,
		-0.891588, 0.351206, -0.285875,
		0.385592, 0.919811, -0.072572,
		34.971931, 35.273430, 29.626484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592957, 34.750134, 28.976494>,  <34.702019, 34.629562, 29.677284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592957, 34.750134, 28.976494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844887, 35.037224, 29.095287>,  <34.996044, 35.209476, 29.166563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844887, 35.037224, 29.095287>,  <34.592957, 34.750134, 28.976494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844887, 35.037224, 29.095287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332394, 0.096521, -0.938189,
		-0.702024, 0.689608, -0.177775,
		0.629823, 0.717722, 0.296981,
		35.033833, 35.252541, 29.184381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473545, 35.107353, 28.468590>,  <34.592957, 34.750134, 28.976494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473545, 35.107353, 28.468590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823410, 35.252258, 28.597418>,  <35.033329, 35.339203, 28.674715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823410, 35.252258, 28.597418>,  <34.473545, 35.107353, 28.468590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823410, 35.252258, 28.597418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337469, 0.021869, -0.941083,
		-0.347963, 0.931819, -0.103124,
		0.874664, 0.362263, 0.322070,
		35.085808, 35.360939, 28.694038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599716, 35.789730, 28.181252>,  <34.473545, 35.107353, 28.468590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599716, 35.789730, 28.181252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958427, 35.641312, 28.277681>,  <35.173653, 35.552261, 28.335539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958427, 35.641312, 28.277681>,  <34.599716, 35.789730, 28.181252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958427, 35.641312, 28.277681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283958, 0.064752, -0.956648,
		0.339351, 0.926354, 0.163430,
		0.896777, -0.371047, 0.241072,
		35.227459, 35.529999, 28.350002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930706, 36.202408, 27.787022>,  <34.599716, 35.789730, 28.181252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930706, 36.202408, 27.787022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182255, 35.906681, 27.883295>,  <35.333183, 35.729244, 27.941059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182255, 35.906681, 27.883295>,  <34.930706, 36.202408, 27.787022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182255, 35.906681, 27.883295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383282, 0.025452, -0.923281,
		0.676468, 0.672880, 0.299372,
		0.628877, -0.739314, 0.240686,
		35.370918, 35.684887, 27.955502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631496, 36.424686, 27.573019>,  <34.930706, 36.202408, 27.787022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631496, 36.424686, 27.573019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643787, 36.025864, 27.601131>,  <35.651161, 35.786572, 27.617998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643787, 36.025864, 27.601131>,  <35.631496, 36.424686, 27.573019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643787, 36.025864, 27.601131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423963, -0.050673, -0.904261,
		0.905158, 0.057584, 0.421156,
		0.030730, -0.997054, 0.070281,
		35.653008, 35.726746, 27.622215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311863, 36.258713, 27.302765>,  <35.631496, 36.424686, 27.573019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311863, 36.258713, 27.302765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076145, 35.937500, 27.267258>,  <35.934715, 35.744774, 27.245953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076145, 35.937500, 27.267258>,  <36.311863, 36.258713, 27.302765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076145, 35.937500, 27.267258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304891, -0.119288, -0.944887,
		0.748182, -0.583879, 0.315132,
		-0.589292, -0.803029, -0.088770,
		35.899357, 35.696590, 27.240627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751087, 35.770664, 26.963919>,  <36.311863, 36.258713, 27.302765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751087, 35.770664, 26.963919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376293, 35.660038, 26.878527>,  <36.151417, 35.593662, 26.827291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376293, 35.660038, 26.878527>,  <36.751087, 35.770664, 26.963919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376293, 35.660038, 26.878527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253657, -0.118314, -0.960031,
		0.240257, -0.953683, 0.181012,
		-0.936982, -0.276569, -0.213482,
		36.095200, 35.577068, 26.814482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791641, 35.279518, 26.488632>,  <36.751087, 35.770664, 26.963919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791641, 35.279518, 26.488632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405342, 35.363808, 26.428055>,  <36.173565, 35.414383, 26.391708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405342, 35.363808, 26.428055>,  <36.791641, 35.279518, 26.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405342, 35.363808, 26.428055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079314, -0.315983, -0.945444,
		-0.247081, -0.925068, 0.288445,
		-0.965743, 0.210723, -0.151444,
		36.115620, 35.427025, 26.382622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640892, 34.692413, 26.147186>,  <36.791641, 35.279518, 26.488632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640892, 34.692413, 26.147186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335766, 34.944145, 26.087784>,  <36.152691, 35.095184, 26.052143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335766, 34.944145, 26.087784>,  <36.640892, 34.692413, 26.147186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335766, 34.944145, 26.087784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150169, -0.395805, -0.905973,
		-0.628940, -0.668787, 0.396432,
		-0.762813, 0.629334, -0.148506,
		36.106922, 35.132946, 26.043232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985153, 34.325241, 25.869698>,  <36.640892, 34.692413, 26.147186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985153, 34.325241, 25.869698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926975, 34.707714, 25.768061>,  <35.892067, 34.937199, 25.707079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926975, 34.707714, 25.768061>,  <35.985153, 34.325241, 25.869698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926975, 34.707714, 25.768061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154883, -0.275664, -0.948694,
		-0.977167, -0.098632, 0.188191,
		-0.145449, 0.956180, -0.254093,
		35.883339, 34.994568, 25.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439651, 34.342690, 25.431755>,  <35.985153, 34.325241, 25.869698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439651, 34.342690, 25.431755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634781, 34.681789, 25.348469>,  <35.751858, 34.885250, 25.298498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634781, 34.681789, 25.348469>,  <35.439651, 34.342690, 25.431755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634781, 34.681789, 25.348469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178774, -0.136445, -0.974383,
		-0.854441, 0.512549, 0.084994,
		0.487822, 0.847748, -0.208215,
		35.781128, 34.936115, 25.286005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064095, 34.697147, 24.934437>,  <35.439651, 34.342690, 25.431755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064095, 34.697147, 24.934437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436771, 34.832870, 24.882551>,  <35.660378, 34.914303, 24.851419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436771, 34.832870, 24.882551>,  <35.064095, 34.697147, 24.934437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436771, 34.832870, 24.882551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068437, -0.186737, -0.980023,
		-0.356753, 0.921954, -0.150759,
		0.931689, 0.339309, -0.129715,
		35.716278, 34.934662, 24.843637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040031, 34.936207, 24.394156>,  <35.064095, 34.697147, 24.934437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040031, 34.936207, 24.394156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439606, 34.948940, 24.407454>,  <35.679352, 34.956581, 24.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439606, 34.948940, 24.407454>,  <35.040031, 34.936207, 24.394156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439606, 34.948940, 24.407454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041816, -0.325723, -0.944540,
		-0.019243, 0.944929, -0.326709,
		0.998940, 0.031838, 0.033246,
		35.739288, 34.958492, 24.417427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185108, 35.207237, 23.812803>,  <35.040031, 34.936207, 24.394156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185108, 35.207237, 23.812803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508141, 35.002163, 23.929396>,  <35.701962, 34.879120, 23.999352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508141, 35.002163, 23.929396>,  <35.185108, 35.207237, 23.812803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508141, 35.002163, 23.929396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056695, -0.424463, -0.903668,
		0.587019, 0.746315, -0.313724,
		0.807585, -0.512685, 0.291480,
		35.750416, 34.848358, 24.016840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615772, 35.120567, 23.195051>,  <35.185108, 35.207237, 23.812803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615772, 35.120567, 23.195051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772820, 34.837467, 23.429977>,  <35.867050, 34.667606, 23.570932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772820, 34.837467, 23.429977>,  <35.615772, 35.120567, 23.195051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772820, 34.837467, 23.429977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139188, -0.585513, -0.798625,
		0.909107, 0.395303, -0.131374,
		0.392620, -0.707750, 0.587315,
		35.890606, 34.625141, 23.606173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277214, 35.019447, 22.805767>,  <35.615772, 35.120567, 23.195051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277214, 35.019447, 22.805767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172630, 34.723133, 23.053272>,  <36.109879, 34.545345, 23.201777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172630, 34.723133, 23.053272>,  <36.277214, 35.019447, 22.805767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172630, 34.723133, 23.053272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123414, -0.661461, -0.739756,
		0.957291, -0.117054, 0.264370,
		-0.261461, -0.740789, 0.618765,
		36.094193, 34.500896, 23.238901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869598, 34.623695, 22.883385>,  <36.277214, 35.019447, 22.805767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869598, 34.623695, 22.883385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578434, 34.365101, 22.974777>,  <36.403736, 34.209946, 23.029613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578434, 34.365101, 22.974777>,  <36.869598, 34.623695, 22.883385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578434, 34.365101, 22.974777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286782, -0.589725, -0.754970,
		0.622820, -0.484024, 0.614667,
		-0.727908, -0.646486, 0.228483,
		36.360062, 34.171154, 23.043322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224045, 34.022648, 22.985281>,  <36.869598, 34.623695, 22.883385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224045, 34.022648, 22.985281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841873, 33.927578, 22.915226>,  <36.612572, 33.870537, 22.873194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841873, 33.927578, 22.915226>,  <37.224045, 34.022648, 22.985281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841873, 33.927578, 22.915226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283554, -0.573516, -0.768555,
		0.082225, -0.783957, 0.615346,
		-0.955424, -0.237679, -0.175136,
		36.555244, 33.856274, 22.862684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228203, 33.358261, 23.051538>,  <37.224045, 34.022648, 22.985281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228203, 33.358261, 23.051538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899048, 33.449116, 22.843204>,  <36.701557, 33.503628, 22.718204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899048, 33.449116, 22.843204>,  <37.228203, 33.358261, 23.051538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899048, 33.449116, 22.843204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161897, -0.784908, -0.598088,
		-0.544656, -0.576479, 0.609116,
		-0.822885, 0.227138, -0.520835,
		36.652184, 33.517258, 22.686954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834423, 32.665253, 22.935421>,  <37.228203, 33.358261, 23.051538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834423, 32.665253, 22.935421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683575, 32.917400, 22.664007>,  <36.593063, 33.068687, 22.501158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683575, 32.917400, 22.664007>,  <36.834423, 32.665253, 22.935421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683575, 32.917400, 22.664007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048695, -0.745114, -0.665157,
		-0.924881, -0.217806, 0.311696,
		-0.377125, 0.630370, -0.678536,
		36.570438, 33.106510, 22.460445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277393, 32.239662, 22.631735>,  <36.834423, 32.665253, 22.935421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277393, 32.239662, 22.631735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389389, 32.509773, 22.358793>,  <36.456585, 32.671841, 22.195028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389389, 32.509773, 22.358793>,  <36.277393, 32.239662, 22.631735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389389, 32.509773, 22.358793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127309, -0.730622, -0.670809,
		-0.951524, 0.100950, -0.290536,
		0.279990, 0.675279, -0.682352,
		36.473385, 32.712357, 22.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964664, 32.007881, 22.001816>,  <36.277393, 32.239662, 22.631735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964664, 32.007881, 22.001816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253773, 32.264744, 21.899656>,  <36.427238, 32.418861, 21.838360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253773, 32.264744, 21.899656>,  <35.964664, 32.007881, 22.001816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253773, 32.264744, 21.899656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364526, -0.668223, -0.648536,
		-0.587129, 0.375644, -0.717058,
		0.722773, 0.642160, -0.255401,
		36.470604, 32.457394, 21.823036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001038, 32.004204, 21.269821>,  <35.964664, 32.007881, 22.001816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001038, 32.004204, 21.269821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361389, 32.137688, 21.380856>,  <36.577599, 32.217777, 21.447475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361389, 32.137688, 21.380856>,  <36.001038, 32.004204, 21.269821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361389, 32.137688, 21.380856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433541, -0.660259, -0.613271,
		-0.021374, 0.672829, -0.739490,
		0.900880, 0.333707, 0.277587,
		36.631653, 32.237801, 21.464132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355850, 32.016701, 20.621326>,  <36.001038, 32.004204, 21.269821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355850, 32.016701, 20.621326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636505, 32.020576, 20.906315>,  <36.804897, 32.022903, 21.077309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636505, 32.020576, 20.906315>,  <36.355850, 32.016701, 20.621326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636505, 32.020576, 20.906315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575260, -0.597740, -0.558376,
		0.420461, 0.801632, -0.424970,
		0.701633, 0.009693, 0.712472,
		36.846996, 32.023483, 21.120056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948170, 32.222324, 20.302467>,  <36.355850, 32.016701, 20.621326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948170, 32.222324, 20.302467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086155, 32.039684, 20.630495>,  <37.168945, 31.930099, 20.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086155, 32.039684, 20.630495>,  <36.948170, 32.222324, 20.302467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086155, 32.039684, 20.630495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686756, -0.472785, -0.552124,
		0.639819, 0.753649, 0.150483,
		0.344962, -0.456604, 0.820070,
		37.189644, 31.902702, 20.876516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699959, 32.358395, 20.204176>,  <36.948170, 32.222324, 20.302467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699959, 32.358395, 20.204176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667751, 32.069817, 20.479284>,  <37.648426, 31.896669, 20.644350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667751, 32.069817, 20.479284>,  <37.699959, 32.358395, 20.204176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667751, 32.069817, 20.479284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515302, -0.620779, -0.590844,
		0.853218, 0.306836, 0.421748,
		-0.080520, -0.721447, 0.687773,
		37.643597, 31.853382, 20.685616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270802, 32.053654, 20.057364>,  <37.699959, 32.358395, 20.204176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270802, 32.053654, 20.057364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067078, 31.778767, 20.264572>,  <37.944843, 31.613834, 20.388897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067078, 31.778767, 20.264572>,  <38.270802, 32.053654, 20.057364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067078, 31.778767, 20.264572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360149, -0.716894, -0.596955,
		0.781602, -0.117468, 0.612618,
		-0.509305, -0.687214, 0.518020,
		37.914288, 31.572603, 20.419977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764297, 31.513020, 20.243025>,  <38.270802, 32.053654, 20.057364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764297, 31.513020, 20.243025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406738, 31.335644, 20.269289>,  <38.192204, 31.229219, 20.285048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406738, 31.335644, 20.269289>,  <38.764297, 31.513020, 20.243025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406738, 31.335644, 20.269289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328434, -0.747552, -0.577319,
		0.305088, -0.494499, 0.813874,
		-0.893897, -0.443437, 0.065659,
		38.138569, 31.202612, 20.288986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963741, 30.864637, 20.226200>,  <38.764297, 31.513020, 20.243025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963741, 30.864637, 20.226200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581310, 30.861380, 20.108997>,  <38.351852, 30.859425, 20.038675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581310, 30.861380, 20.108997>,  <38.963741, 30.864637, 20.226200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581310, 30.861380, 20.108997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217432, -0.690082, -0.690297,
		-0.196578, -0.723685, 0.661541,
		-0.956075, -0.008143, -0.293008,
		38.294487, 30.858936, 20.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656101, 30.153175, 20.222439>,  <38.963741, 30.864637, 20.226200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656101, 30.153175, 20.222439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 30.070871, 20.261469>,  <39.279289, 30.021488, 20.284887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 30.070871, 20.261469>,  <38.656101, 30.153175, 20.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045593, 30.070871, 20.261469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058051, 0.190037, 0.980059,
		-0.220201, -0.959973, 0.173099,
		0.973725, -0.205761, 0.097574,
		39.337711, 30.009144, 20.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768700, 29.673914, 20.770290>,  <38.656101, 30.153175, 20.222439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768700, 29.673914, 20.770290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107098, 29.884401, 20.735914>,  <39.310135, 30.010693, 20.715288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107098, 29.884401, 20.735914>,  <38.768700, 29.673914, 20.770290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107098, 29.884401, 20.735914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071218, 0.271263, 0.959867,
		0.528412, -0.805923, 0.266963,
		0.845996, 0.526218, -0.085942,
		39.360897, 30.042267, 20.710131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106098, 29.457043, 21.329775>,  <38.768700, 29.673914, 20.770290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106098, 29.457043, 21.329775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284691, 29.791151, 21.201414>,  <39.391846, 29.991615, 21.124397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284691, 29.791151, 21.201414>,  <39.106098, 29.457043, 21.329775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284691, 29.791151, 21.201414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023368, 0.347625, 0.937342,
		0.894487, -0.426007, 0.135690,
		0.446484, 0.835269, -0.320901,
		39.418636, 30.041731, 21.105145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728794, 29.591230, 21.740261>,  <39.106098, 29.457043, 21.329775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728794, 29.591230, 21.740261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627136, 29.945179, 21.584103>,  <39.566143, 30.157549, 21.490408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627136, 29.945179, 21.584103>,  <39.728794, 29.591230, 21.740261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627136, 29.945179, 21.584103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026346, 0.397166, 0.917368,
		0.966808, 0.243429, -0.077624,
		-0.254144, 0.884874, -0.390397,
		39.550892, 30.210642, 21.466984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104271, 30.051908, 22.079235>,  <39.728794, 29.591230, 21.740261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104271, 30.051908, 22.079235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798550, 30.270325, 21.942015>,  <39.615116, 30.401375, 21.859682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798550, 30.270325, 21.942015>,  <40.104271, 30.051908, 22.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798550, 30.270325, 21.942015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068342, 0.460395, 0.885080,
		0.641231, 0.699910, -0.314562,
		-0.764299, 0.546043, -0.343052,
		39.569260, 30.434137, 21.839100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233875, 30.738783, 22.413961>,  <40.104271, 30.051908, 22.079235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233875, 30.738783, 22.413961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869537, 30.766253, 22.251162>,  <39.650936, 30.782734, 22.153482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869537, 30.766253, 22.251162>,  <40.233875, 30.738783, 22.413961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869537, 30.766253, 22.251162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338276, 0.440798, 0.831424,
		0.236503, 0.894976, -0.378266,
		-0.910843, 0.068676, -0.406999,
		39.596283, 30.786856, 22.129063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075264, 31.379446, 22.256180>,  <40.233875, 30.738783, 22.413961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075264, 31.379446, 22.256180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694710, 31.257660, 22.274836>,  <39.466377, 31.184587, 22.286030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694710, 31.257660, 22.274836>,  <40.075264, 31.379446, 22.256180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694710, 31.257660, 22.274836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173075, 0.653673, 0.736720,
		-0.254792, 0.692829, -0.674588,
		-0.951381, -0.304465, 0.046639,
		39.409294, 31.166321, 22.288828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574692, 31.960499, 22.254692>,  <40.075264, 31.379446, 22.256180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574692, 31.960499, 22.254692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331127, 31.673326, 22.389631>,  <39.184990, 31.501022, 22.470594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331127, 31.673326, 22.389631>,  <39.574692, 31.960499, 22.254692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331127, 31.673326, 22.389631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350666, 0.625092, 0.697347,
		-0.711521, 0.306325, -0.632379,
		-0.608910, -0.717931, 0.337348,
		39.148453, 31.457947, 22.490835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958523, 32.187931, 22.367342>,  <39.574692, 31.960499, 22.254692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958523, 32.187931, 22.367342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954239, 31.866077, 22.604811>,  <38.951668, 31.672964, 22.747292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954239, 31.866077, 22.604811>,  <38.958523, 32.187931, 22.367342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954239, 31.866077, 22.604811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373648, 0.553917, 0.744019,
		-0.927509, -0.213858, -0.306581,
		-0.010706, -0.804637, 0.593670,
		38.951027, 31.624685, 22.782911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355942, 32.345253, 22.793213>,  <38.958523, 32.187931, 22.367342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355942, 32.345253, 22.793213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557579, 32.051853, 22.975582>,  <38.678562, 31.875814, 23.085005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557579, 32.051853, 22.975582>,  <38.355942, 32.345253, 22.793213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557579, 32.051853, 22.975582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211113, 0.407238, 0.888588,
		-0.837448, -0.544185, 0.050436,
		0.504096, -0.733499, 0.455925,
		38.708809, 31.831804, 23.112360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923843, 32.142960, 23.326483>,  <38.355942, 32.345253, 22.793213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923843, 32.142960, 23.326483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302467, 32.037083, 23.400204>,  <38.529640, 31.973557, 23.444437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302467, 32.037083, 23.400204>,  <37.923843, 32.142960, 23.326483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302467, 32.037083, 23.400204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047054, 0.451981, 0.890786,
		-0.319086, -0.851852, 0.415371,
		0.946557, -0.264692, 0.184304,
		38.586433, 31.957676, 23.455496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910465, 31.848925, 23.913523>,  <37.923843, 32.142960, 23.326483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910465, 31.848925, 23.913523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293972, 31.962175, 23.923281>,  <38.524078, 32.030125, 23.929136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293972, 31.962175, 23.923281>,  <37.910465, 31.848925, 23.913523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293972, 31.962175, 23.923281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159278, 0.464297, 0.871240,
		0.235345, -0.839206, 0.490251,
		0.958772, 0.283128, 0.024397,
		38.581604, 32.047115, 23.930599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184910, 31.689753, 24.547129>,  <37.910465, 31.848925, 23.913523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184910, 31.689753, 24.547129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457233, 31.959982, 24.433926>,  <38.620628, 32.122120, 24.366003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457233, 31.959982, 24.433926>,  <38.184910, 31.689753, 24.547129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457233, 31.959982, 24.433926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069663, 0.444351, 0.893140,
		0.729138, -0.588346, 0.349582,
		0.680812, 0.675575, -0.283008,
		38.661476, 32.162655, 24.349024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721909, 31.648594, 25.030882>,  <38.184910, 31.689753, 24.547129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721909, 31.648594, 25.030882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723206, 32.005791, 24.850857>,  <38.723984, 32.220108, 24.742842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723206, 32.005791, 24.850857>,  <38.721909, 31.648594, 25.030882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723206, 32.005791, 24.850857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085416, 0.448668, 0.889607,
		0.996340, 0.035558, 0.077730,
		0.003242, 0.892991, -0.450063,
		38.724178, 32.273689, 24.715837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272709, 32.039295, 25.372807>,  <38.721909, 31.648594, 25.030882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272709, 32.039295, 25.372807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035240, 32.301151, 25.185617>,  <38.892757, 32.458263, 25.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035240, 32.301151, 25.185617>,  <39.272709, 32.039295, 25.372807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035240, 32.301151, 25.185617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040774, 0.605270, 0.794975,
		0.803673, 0.452874, -0.386025,
		-0.593673, 0.654640, -0.467973,
		38.857140, 32.497543, 25.045225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513084, 32.682991, 25.473864>,  <39.272709, 32.039295, 25.372807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513084, 32.682991, 25.473864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129436, 32.770294, 25.401806>,  <38.899246, 32.822678, 25.358570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129436, 32.770294, 25.401806>,  <39.513084, 32.682991, 25.473864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129436, 32.770294, 25.401806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026179, 0.565396, 0.824404,
		0.281790, 0.795417, -0.536568,
		-0.959119, 0.218261, -0.180146,
		38.841702, 32.835773, 25.347761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397701, 33.388058, 25.854763>,  <39.513084, 32.682991, 25.473864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397701, 33.388058, 25.854763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038628, 33.247246, 25.748751>,  <38.823185, 33.162758, 25.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038628, 33.247246, 25.748751>,  <39.397701, 33.388058, 25.854763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038628, 33.247246, 25.748751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426383, 0.542170, 0.724051,
		-0.111195, 0.762972, -0.636796,
		-0.897682, -0.352029, -0.265032,
		38.769321, 33.141636, 25.669241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880806, 34.022522, 25.813557>,  <39.397701, 33.388058, 25.854763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880806, 34.022522, 25.813557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645191, 33.699696, 25.829922>,  <38.503822, 33.506001, 25.839741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645191, 33.699696, 25.829922>,  <38.880806, 34.022522, 25.813557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645191, 33.699696, 25.829922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431644, 0.357025, 0.828382,
		-0.683168, 0.470289, -0.558668,
		-0.589037, -0.807070, 0.040911,
		38.468479, 33.457573, 25.842196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190666, 34.251198, 25.785431>,  <38.880806, 34.022522, 25.813557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190666, 34.251198, 25.785431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194458, 33.883999, 25.944023>,  <38.196732, 33.663681, 26.039179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194458, 33.883999, 25.944023>,  <38.190666, 34.251198, 25.785431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194458, 33.883999, 25.944023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405938, 0.358826, 0.840510,
		-0.913851, -0.168913, -0.369248,
		0.009477, -0.917993, 0.396482,
		38.197300, 33.608601, 26.062967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595387, 34.277294, 26.152182>,  <38.190666, 34.251198, 25.785431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595387, 34.277294, 26.152182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792709, 33.960888, 26.296921>,  <37.911102, 33.771042, 26.383764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792709, 33.960888, 26.296921>,  <37.595387, 34.277294, 26.152182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792709, 33.960888, 26.296921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241729, 0.274935, 0.930579,
		-0.835590, -0.546534, -0.055584,
		0.493312, -0.791019, 0.361846,
		37.940704, 33.723583, 26.405474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176151, 34.017532, 26.603790>,  <37.595387, 34.277294, 26.152182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176151, 34.017532, 26.603790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529469, 33.867424, 26.716194>,  <37.741459, 33.777359, 26.783636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529469, 33.867424, 26.716194>,  <37.176151, 34.017532, 26.603790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529469, 33.867424, 26.716194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272041, 0.077904, 0.959127,
		-0.381826, -0.923635, -0.033278,
		0.883291, -0.375272, 0.281012,
		37.794456, 33.754841, 26.800497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089237, 33.452763, 26.965887>,  <37.176151, 34.017532, 26.603790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089237, 33.452763, 26.965887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452248, 33.579460, 27.076208>,  <37.670055, 33.655479, 27.142401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452248, 33.579460, 27.076208>,  <37.089237, 33.452763, 26.965887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452248, 33.579460, 27.076208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390809, 0.396353, 0.830766,
		0.153826, -0.861729, 0.483487,
		0.907527, 0.316745, 0.275803,
		37.724506, 33.674484, 27.158949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323284, 33.203320, 27.721039>,  <37.089237, 33.452763, 26.965887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323284, 33.203320, 27.721039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533772, 33.533497, 27.639328>,  <37.660065, 33.731606, 27.590302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533772, 33.533497, 27.639328>,  <37.323284, 33.203320, 27.721039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533772, 33.533497, 27.639328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135772, 0.318707, 0.938079,
		0.839438, -0.465902, 0.279783,
		0.526222, 0.825446, -0.204279,
		37.691639, 33.781132, 27.578045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879318, 33.274372, 28.249945>,  <37.323284, 33.203320, 27.721039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879318, 33.274372, 28.249945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854603, 33.636684, 28.082258>,  <37.839771, 33.854073, 27.981646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854603, 33.636684, 28.082258>,  <37.879318, 33.274372, 28.249945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854603, 33.636684, 28.082258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051113, 0.422340, 0.904995,
		0.996779, 0.034495, -0.072395,
		-0.061793, 0.905781, -0.419217,
		37.836063, 33.908417, 27.956493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364567, 33.658005, 28.557098>,  <37.879318, 33.274372, 28.249945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364567, 33.658005, 28.557098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099804, 33.922615, 28.416100>,  <37.940945, 34.081383, 28.331501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099804, 33.922615, 28.416100>,  <38.364567, 33.658005, 28.557098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099804, 33.922615, 28.416100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020854, 0.453822, 0.890848,
		0.749292, 0.597013, -0.286594,
		-0.661911, 0.661529, -0.352496,
		37.901230, 34.121075, 28.310350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590034, 34.123817, 28.779034>,  <38.364567, 33.658005, 28.557098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590034, 34.123817, 28.779034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222107, 34.240673, 28.674280>,  <38.001350, 34.310787, 28.611429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222107, 34.240673, 28.674280>,  <38.590034, 34.123817, 28.779034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222107, 34.240673, 28.674280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069161, 0.536300, 0.841189,
		0.386193, 0.791856, -0.473095,
		-0.919821, 0.292142, -0.261881,
		37.946159, 34.328316, 28.595716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568821, 34.808941, 28.923363>,  <38.590034, 34.123817, 28.779034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568821, 34.808941, 28.923363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176517, 34.732712, 28.906427>,  <37.941135, 34.686974, 28.896267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176517, 34.732712, 28.906427>,  <38.568821, 34.808941, 28.923363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176517, 34.732712, 28.906427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141011, 0.541581, 0.828737,
		-0.135006, 0.818762, -0.558034,
		-0.980760, -0.190573, -0.042338,
		37.882290, 34.675541, 28.893726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236164, 35.418240, 29.113659>,  <38.568821, 34.808941, 28.923363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236164, 35.418240, 29.113659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973118, 35.125690, 29.185925>,  <37.815292, 34.950161, 29.229284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973118, 35.125690, 29.185925>,  <38.236164, 35.418240, 29.113659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973118, 35.125690, 29.185925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275731, 0.456838, 0.845737,
		-0.701083, 0.506353, -0.502085,
		-0.657613, -0.731372, 0.180664,
		37.775833, 34.906281, 29.240124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663010, 35.781040, 29.318649>,  <38.236164, 35.418240, 29.113659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663010, 35.781040, 29.318649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629929, 35.399700, 29.434772>,  <37.610081, 35.170895, 29.504446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629929, 35.399700, 29.434772>,  <37.663010, 35.781040, 29.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629929, 35.399700, 29.434772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291315, 0.301709, 0.907804,
		-0.953046, -0.009498, -0.302677,
		-0.082698, -0.953353, 0.290309,
		37.605118, 35.113693, 29.521866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970940, 35.686836, 29.701260>,  <37.663010, 35.781040, 29.318649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970940, 35.686836, 29.701260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210369, 35.393597, 29.830433>,  <37.354027, 35.217655, 29.907938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210369, 35.393597, 29.830433>,  <36.970940, 35.686836, 29.701260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210369, 35.393597, 29.830433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212909, 0.243041, 0.946362,
		-0.772260, -0.635218, -0.010606,
		0.598569, -0.733095, 0.322935,
		37.389938, 35.173668, 29.927313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572868, 35.510925, 30.261150>,  <36.970940, 35.686836, 29.701260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572868, 35.510925, 30.261150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948521, 35.375683, 30.285530>,  <37.173912, 35.294537, 30.300158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948521, 35.375683, 30.285530>,  <36.572868, 35.510925, 30.261150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948521, 35.375683, 30.285530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038867, 0.280822, 0.958973,
		-0.341354, -0.898232, 0.276870,
		0.939131, -0.338110, 0.060948,
		37.230259, 35.274250, 30.303814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544930, 35.401150, 30.931587>,  <36.572868, 35.510925, 30.261150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544930, 35.401150, 30.931587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932850, 35.359470, 30.843382>,  <37.165604, 35.334465, 30.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932850, 35.359470, 30.843382>,  <36.544930, 35.401150, 30.931587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932850, 35.359470, 30.843382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238932, 0.224520, 0.944723,
		-0.048925, -0.968883, 0.242635,
		0.969803, -0.104194, -0.220513,
		37.223789, 35.328213, 30.777227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874123, 35.026497, 31.497211>,  <36.544930, 35.401150, 30.931587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874123, 35.026497, 31.497211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162575, 35.229145, 31.308189>,  <37.335648, 35.350735, 31.194777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162575, 35.229145, 31.308189>,  <36.874123, 35.026497, 31.497211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162575, 35.229145, 31.308189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293220, 0.394801, 0.870720,
		0.627686, -0.766467, 0.136154,
		0.721133, 0.506616, -0.472555,
		37.378914, 35.381130, 31.166424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495193, 34.829601, 31.760347>,  <36.874123, 35.026497, 31.497211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495193, 34.829601, 31.760347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559052, 35.188446, 31.595564>,  <37.597366, 35.403751, 31.496695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559052, 35.188446, 31.595564>,  <37.495193, 34.829601, 31.760347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559052, 35.188446, 31.595564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297362, 0.354226, 0.886622,
		0.941323, -0.264048, -0.210215,
		0.159647, 0.897108, -0.411959,
		37.606945, 35.457577, 31.471975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196899, 34.841679, 31.866375>,  <37.495193, 34.829601, 31.760347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196899, 34.841679, 31.866375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038467, 35.204689, 31.810497>,  <37.943409, 35.422497, 31.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038467, 35.204689, 31.810497>,  <38.196899, 34.841679, 31.866375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038467, 35.204689, 31.810497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532647, 0.351009, 0.770117,
		0.747937, 0.230618, -0.622419,
		-0.396078, 0.907528, -0.139694,
		37.919643, 35.476948, 31.768589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690067, 35.321095, 32.009594>,  <38.196899, 34.841679, 31.866375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690067, 35.321095, 32.009594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358704, 35.544796, 32.022141>,  <38.159885, 35.679016, 32.029667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358704, 35.544796, 32.022141>,  <38.690067, 35.321095, 32.009594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358704, 35.544796, 32.022141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387540, 0.531822, 0.752980,
		0.404422, 0.635929, -0.657296,
		-0.828405, 0.559250, 0.031367,
		38.110184, 35.712570, 32.031551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926865, 35.946838, 32.048809>,  <38.690067, 35.321095, 32.009594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926865, 35.946838, 32.048809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551689, 36.000183, 32.176865>,  <38.326584, 36.032188, 32.253696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551689, 36.000183, 32.176865>,  <38.926865, 35.946838, 32.048809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551689, 36.000183, 32.176865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345643, 0.434908, 0.831496,
		-0.028342, 0.890545, -0.454011,
		-0.937938, 0.133359, 0.320137,
		38.270309, 36.040192, 32.272907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017071, 36.515678, 32.501945>,  <38.926865, 35.946838, 32.048809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017071, 36.515678, 32.501945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652176, 36.376263, 32.588058>,  <38.433239, 36.292614, 32.639725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652176, 36.376263, 32.588058>,  <39.017071, 36.515678, 32.501945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652176, 36.376263, 32.588058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083006, 0.357340, 0.930279,
		-0.401167, 0.866503, -0.297047,
		-0.912236, -0.348540, 0.215278,
		38.378506, 36.271702, 32.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573395, 37.033096, 32.835487>,  <39.017071, 36.515678, 32.501945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573395, 37.033096, 32.835487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437637, 36.681965, 32.970680>,  <38.356182, 36.471287, 33.051796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437637, 36.681965, 32.970680>,  <38.573395, 37.033096, 32.835487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437637, 36.681965, 32.970680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152201, 0.303324, 0.940653,
		-0.928249, 0.370694, 0.030660,
		-0.339395, -0.877827, 0.337980,
		38.335819, 36.418617, 33.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324081, 37.172066, 33.378017>,  <38.573395, 37.033096, 32.835487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324081, 37.172066, 33.378017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339642, 36.776764, 33.437134>,  <38.348976, 36.539581, 33.472603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339642, 36.776764, 33.437134>,  <38.324081, 37.172066, 33.378017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339642, 36.776764, 33.437134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117586, 0.151403, 0.981453,
		-0.992301, -0.020801, 0.122095,
		0.038901, -0.988253, 0.147792,
		38.351311, 36.480289, 33.481472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985023, 37.030003, 33.979366>,  <38.324081, 37.172066, 33.378017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985023, 37.030003, 33.979366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213924, 36.704967, 33.935116>,  <38.351265, 36.509949, 33.908566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213924, 36.704967, 33.935116>,  <37.985023, 37.030003, 33.979366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213924, 36.704967, 33.935116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364320, 0.131048, 0.922007,
		-0.734712, -0.567919, 0.371033,
		0.572249, -0.812585, -0.110622,
		38.385597, 36.461193, 33.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785427, 36.586224, 34.490337>,  <37.985023, 37.030003, 33.979366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785427, 36.586224, 34.490337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149208, 36.465263, 34.376175>,  <38.367477, 36.392689, 34.307678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149208, 36.465263, 34.376175>,  <37.785427, 36.586224, 34.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149208, 36.465263, 34.376175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332976, 0.118514, 0.935458,
		-0.249055, -0.945785, 0.208474,
		0.909449, -0.302398, -0.285407,
		38.422043, 36.374546, 34.290554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912971, 36.028957, 34.965683>,  <37.785427, 36.586224, 34.490337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912971, 36.028957, 34.965683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257332, 36.167938, 34.817017>,  <38.463947, 36.251328, 34.727818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257332, 36.167938, 34.817017>,  <37.912971, 36.028957, 34.965683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257332, 36.167938, 34.817017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351921, 0.120894, 0.928190,
		0.367433, -0.929872, -0.018198,
		0.860898, 0.347452, -0.371662,
		38.515602, 36.272175, 34.705517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524464, 35.617977, 35.299187>,  <37.912971, 36.028957, 34.965683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524464, 35.617977, 35.299187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626381, 35.987087, 35.183556>,  <38.687531, 36.208553, 35.114178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626381, 35.987087, 35.183556>,  <38.524464, 35.617977, 35.299187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626381, 35.987087, 35.183556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411448, 0.167085, 0.895987,
		0.875096, -0.347230, -0.337103,
		0.254789, 0.922775, -0.289082,
		38.702816, 36.263920, 35.096832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109520, 35.397644, 35.570705>,  <38.524464, 35.617977, 35.299187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109520, 35.397644, 35.570705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097492, 35.785515, 35.473694>,  <39.090275, 36.018238, 35.415485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097492, 35.785515, 35.473694>,  <39.109520, 35.397644, 35.570705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097492, 35.785515, 35.473694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495064, 0.225238, 0.839154,
		0.868336, -0.094838, -0.486824,
		-0.030067, 0.969677, -0.242533,
		39.088470, 36.076420, 35.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754169, 35.563660, 35.800888>,  <39.109520, 35.397644, 35.570705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754169, 35.563660, 35.800888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583801, 35.919743, 35.736244>,  <39.481579, 36.133392, 35.697456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583801, 35.919743, 35.736244>,  <39.754169, 35.563660, 35.800888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583801, 35.919743, 35.736244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493988, 0.378459, 0.782780,
		0.758000, 0.253570, -0.600947,
		-0.425924, 0.890208, -0.161612,
		39.456024, 36.186806, 35.687759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224106, 36.214752, 35.641685>,  <39.754169, 35.563660, 35.800888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224106, 36.214752, 35.641685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891380, 36.367008, 35.803280>,  <39.691746, 36.458363, 35.900238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891380, 36.367008, 35.803280>,  <40.224106, 36.214752, 35.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891380, 36.367008, 35.803280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526285, 0.309563, 0.791956,
		0.176390, 0.871370, -0.457822,
		-0.831812, 0.380638, 0.403986,
		39.641838, 36.481201, 35.924477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459812, 36.825287, 35.913258>,  <40.224106, 36.214752, 35.641685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459812, 36.825287, 35.913258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.800289, 36.109276>,  <39.903362, 36.785290, 36.226887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.800289, 36.109276>,  <40.459812, 36.825287, 35.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112030, 36.800289, 36.109276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458457, 0.267457, 0.847516,
		-0.184028, 0.961541, -0.203893,
		-0.869454, -0.062490, 0.490045,
		39.851192, 36.781544, 36.256290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182449, 37.520882, 36.278133>,  <40.459812, 36.825287, 35.913258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182449, 37.520882, 36.278133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063229, 37.181442, 36.452969>,  <39.991695, 36.977779, 36.557869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063229, 37.181442, 36.452969>,  <40.182449, 37.520882, 36.278133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063229, 37.181442, 36.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414747, 0.297296, 0.860000,
		-0.859740, 0.437604, 0.263345,
		-0.298048, -0.848598, 0.437092,
		39.973816, 36.926865, 36.584095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847687, 37.670822, 36.893230>,  <40.182449, 37.520882, 36.278133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847687, 37.670822, 36.893230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958199, 37.289158, 36.939278>,  <40.024506, 37.060162, 36.966908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958199, 37.289158, 36.939278>,  <39.847687, 37.670822, 36.893230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958199, 37.289158, 36.939278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412866, 0.225997, 0.882308,
		-0.867877, -0.196237, 0.456378,
		0.276282, -0.954157, 0.115118,
		40.041084, 37.002911, 36.973812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861702, 37.647472, 37.593876>,  <39.847687, 37.670822, 36.893230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861702, 37.647472, 37.593876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008392, 37.297348, 37.467800>,  <40.096405, 37.087273, 37.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008392, 37.297348, 37.467800>,  <39.861702, 37.647472, 37.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008392, 37.297348, 37.467800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530584, -0.081511, 0.843704,
		-0.764194, -0.476642, 0.434533,
		0.366726, -0.875310, -0.315189,
		40.118408, 37.034756, 37.373245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677353, 37.199913, 38.178391>,  <39.861702, 37.647472, 37.593876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677353, 37.199913, 38.178391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971321, 37.027199, 37.969215>,  <40.147701, 36.923573, 37.843712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971321, 37.027199, 37.969215>,  <39.677353, 37.199913, 38.178391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971321, 37.027199, 37.969215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542145, -0.089172, 0.835540,
		-0.407403, -0.897559, 0.168555,
		0.734916, -0.431783, -0.522936,
		40.191795, 36.897663, 37.812336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869179, 36.508656, 38.464806>,  <39.677353, 37.199913, 38.178391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869179, 36.508656, 38.464806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190830, 36.633816, 38.262630>,  <40.383823, 36.708912, 38.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190830, 36.633816, 38.262630>,  <39.869179, 36.508656, 38.464806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190830, 36.633816, 38.262630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567497, -0.150964, 0.809417,
		0.176965, -0.937712, -0.298965,
		0.804133, 0.312901, -0.505434,
		40.432072, 36.727684, 38.111000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398560, 36.075768, 38.696407>,  <39.869179, 36.508656, 38.464806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398560, 36.075768, 38.696407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550369, 36.411514, 38.540752>,  <40.641453, 36.612961, 38.447361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550369, 36.411514, 38.540752>,  <40.398560, 36.075768, 38.696407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550369, 36.411514, 38.540752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616244, 0.084381, 0.783022,
		0.690078, -0.536977, -0.485230,
		0.379521, 0.839366, -0.389138,
		40.664227, 36.663322, 38.424011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056515, 36.093964, 38.819553>,  <40.398560, 36.075768, 38.696407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056515, 36.093964, 38.819553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975651, 36.484180, 38.785027>,  <40.927132, 36.718311, 38.764313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975651, 36.484180, 38.785027>,  <41.056515, 36.093964, 38.819553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975651, 36.484180, 38.785027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607648, 0.194060, 0.770133,
		0.768047, 0.103238, -0.632017,
		-0.202156, 0.975542, -0.086315,
		40.915005, 36.776844, 38.759132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731617, 36.568390, 38.954369>,  <41.056515, 36.093964, 38.819553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731617, 36.568390, 38.954369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451073, 36.852959, 38.972145>,  <41.282745, 37.023701, 38.982811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451073, 36.852959, 38.972145>,  <41.731617, 36.568390, 38.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451073, 36.852959, 38.972145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451810, 0.395464, 0.799673,
		0.551331, 0.580935, -0.598789,
		-0.701357, 0.711423, 0.044441,
		41.240665, 37.066387, 38.985477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992699, 37.316032, 38.898315>,  <41.731617, 36.568390, 38.954369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992699, 37.316032, 38.898315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660442, 37.322929, 39.120934>,  <41.461090, 37.327068, 39.254505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660442, 37.322929, 39.120934>,  <41.992699, 37.316032, 38.898315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660442, 37.322929, 39.120934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501092, 0.458968, 0.733658,
		-0.242788, 0.888285, -0.389876,
		-0.830639, 0.017240, 0.556545,
		41.411251, 37.328102, 39.287895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893620, 37.988834, 39.259373>,  <41.992699, 37.316032, 38.898315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893620, 37.988834, 39.259373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641365, 37.765598, 39.475090>,  <41.490013, 37.631657, 39.604523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641365, 37.765598, 39.475090>,  <41.893620, 37.988834, 39.259373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641365, 37.765598, 39.475090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333440, 0.432649, 0.837635,
		-0.700800, 0.708063, -0.086753,
		-0.630632, -0.558087, 0.539297,
		41.452175, 37.598171, 39.636879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418285, 38.430943, 39.589809>,  <41.893620, 37.988834, 39.259373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418285, 38.430943, 39.589809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446560, 38.085373, 39.789261>,  <41.463524, 37.878029, 39.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446560, 38.085373, 39.789261>,  <41.418285, 38.430943, 39.589809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446560, 38.085373, 39.789261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327565, 0.492265, 0.806459,
		-0.942181, 0.106327, 0.317789,
		0.070688, -0.863927, 0.498631,
		41.467766, 37.826195, 39.938850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052094, 38.617310, 40.244209>,  <41.418285, 38.430943, 39.589809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052094, 38.617310, 40.244209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284451, 38.295898, 40.296223>,  <41.423862, 38.103050, 40.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284451, 38.295898, 40.296223>,  <41.052094, 38.617310, 40.244209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284451, 38.295898, 40.296223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336195, 0.382326, 0.860698,
		-0.741311, -0.456254, 0.492231,
		0.580889, -0.803530, 0.130032,
		41.458717, 38.054840, 40.335232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154278, 38.542786, 41.012035>,  <41.052094, 38.617310, 40.244209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154278, 38.542786, 41.012035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456284, 38.335304, 40.851585>,  <41.637486, 38.210815, 40.755314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456284, 38.335304, 40.851585>,  <41.154278, 38.542786, 41.012035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456284, 38.335304, 40.851585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634362, 0.422977, 0.647052,
		-0.165965, -0.742989, 0.648401,
		0.755011, -0.518708, -0.401124,
		41.682785, 38.179691, 40.731247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625431, 38.366390, 41.589386>,  <41.154278, 38.542786, 41.012035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625431, 38.366390, 41.589386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844982, 38.385372, 41.255566>,  <41.976715, 38.396763, 41.055275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844982, 38.385372, 41.255566>,  <41.625431, 38.366390, 41.589386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844982, 38.385372, 41.255566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765583, 0.372267, 0.524690,
		0.335574, -0.926912, 0.168001,
		0.548883, 0.047454, -0.834551,
		42.009647, 38.399609, 41.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248714, 37.930111, 41.609715>,  <41.625431, 38.366390, 41.589386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248714, 37.930111, 41.609715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250885, 38.288754, 41.432598>,  <42.252186, 38.503941, 41.326328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250885, 38.288754, 41.432598>,  <42.248714, 37.930111, 41.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250885, 38.288754, 41.432598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751616, 0.288407, 0.593208,
		0.659579, -0.336029, -0.672339,
		0.005427, 0.896608, -0.442792,
		42.252514, 38.557735, 41.299759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557331, 38.149788, 40.917294>,  <42.248714, 37.930111, 41.609715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557331, 38.149788, 40.917294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236404, 37.965851, 41.069519>,  <42.043846, 37.855488, 41.160854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236404, 37.965851, 41.069519>,  <42.557331, 38.149788, 40.917294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236404, 37.965851, 41.069519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342868, -0.166850, -0.924447,
		0.488595, -0.872186, -0.023798,
		-0.802319, -0.459840, 0.380567,
		41.995708, 37.827900, 41.183689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540920, 37.506393, 40.580704>,  <42.557331, 38.149788, 40.917294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540920, 37.506393, 40.580704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177170, 37.606609, 40.713528>,  <41.958920, 37.666740, 40.793221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177170, 37.606609, 40.713528>,  <42.540920, 37.506393, 40.580704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177170, 37.606609, 40.713528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403877, -0.340675, -0.849013,
		-0.099586, -0.906185, 0.410989,
		-0.909377, 0.250539, 0.332061,
		41.904358, 37.681770, 40.813145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108669, 36.946503, 40.524406>,  <42.540920, 37.506393, 40.580704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108669, 36.946503, 40.524406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858387, 37.258171, 40.509548>,  <41.708218, 37.445171, 40.500633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858387, 37.258171, 40.509548>,  <42.108669, 36.946503, 40.524406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858387, 37.258171, 40.509548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546173, -0.471602, -0.692304,
		-0.556943, -0.412892, 0.720649,
		-0.625707, 0.779173, -0.037145,
		41.670673, 37.491924, 40.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297241, 36.728085, 40.621441>,  <42.108669, 36.946503, 40.524406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297241, 36.728085, 40.621441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352337, 37.064217, 40.411728>,  <41.385395, 37.265896, 40.285900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352337, 37.064217, 40.411728>,  <41.297241, 36.728085, 40.621441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352337, 37.064217, 40.411728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582909, -0.359174, -0.728842,
		-0.800777, 0.405999, 0.440365,
		0.137742, 0.840333, -0.524279,
		41.393658, 37.316315, 40.254444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688095, 36.761765, 40.241592>,  <41.297241, 36.728085, 40.621441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688095, 36.761765, 40.241592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946144, 37.008018, 40.060570>,  <41.100975, 37.155769, 39.951954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946144, 37.008018, 40.060570>,  <40.688095, 36.761765, 40.241592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946144, 37.008018, 40.060570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351436, -0.286848, -0.891185,
		-0.678457, 0.733973, 0.031301,
		0.645127, 0.615631, -0.452559,
		41.139683, 37.192707, 39.924801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279907, 37.297329, 39.903797>,  <40.688095, 36.761765, 40.241592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279907, 37.297329, 39.903797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632790, 37.301121, 39.715488>,  <40.844521, 37.303394, 39.602505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632790, 37.301121, 39.715488>,  <40.279907, 37.297329, 39.903797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632790, 37.301121, 39.715488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467948, -0.093424, -0.878804,
		-0.052311, 0.995581, -0.077984,
		0.882206, 0.009479, -0.470768,
		40.897453, 37.303963, 39.574257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064751, 37.372650, 39.202450>,  <40.279907, 37.297329, 39.903797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064751, 37.372650, 39.202450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457363, 37.307133, 39.162907>,  <40.692928, 37.267822, 39.139179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457363, 37.307133, 39.162907>,  <40.064751, 37.372650, 39.202450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457363, 37.307133, 39.162907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095088, 0.030726, -0.994994,
		0.166016, 0.986015, 0.014583,
		0.981528, -0.163798, -0.098859,
		40.751823, 37.257992, 39.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356186, 37.901638, 38.799171>,  <40.064751, 37.372650, 39.202450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356186, 37.901638, 38.799171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535652, 37.545315, 38.770416>,  <40.643330, 37.331520, 38.753162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535652, 37.545315, 38.770416>,  <40.356186, 37.901638, 38.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535652, 37.545315, 38.770416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225829, -0.035179, -0.973531,
		0.864699, 0.453019, -0.216953,
		0.448661, -0.890806, -0.071885,
		40.670250, 37.278072, 38.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707706, 37.959648, 38.222202>,  <40.356186, 37.901638, 38.799171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707706, 37.959648, 38.222202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670853, 37.565182, 38.277328>,  <40.648739, 37.328503, 38.310406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670853, 37.565182, 38.277328>,  <40.707706, 37.959648, 38.222202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670853, 37.565182, 38.277328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073674, -0.131274, -0.988605,
		0.993017, -0.101238, -0.060560,
		-0.092135, -0.986163, 0.137816,
		40.643211, 37.269333, 38.318672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270733, 37.679398, 37.916573>,  <40.707706, 37.959648, 38.222202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270733, 37.679398, 37.916573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184017, 37.319859, 38.068924>,  <41.131989, 37.104134, 38.160336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184017, 37.319859, 38.068924>,  <41.270733, 37.679398, 37.916573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184017, 37.319859, 38.068924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399114, -0.274458, -0.874860,
		0.890905, -0.341674, -0.299244,
		-0.216787, -0.898850, 0.380883,
		41.118980, 37.050205, 38.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481457, 37.073307, 37.421738>,  <41.270733, 37.679398, 37.916573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481457, 37.073307, 37.421738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152447, 36.978035, 37.628319>,  <40.955040, 36.920872, 37.752266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152447, 36.978035, 37.628319>,  <41.481457, 37.073307, 37.421738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152447, 36.978035, 37.628319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451497, -0.278724, -0.847623,
		0.345837, -0.930366, 0.121717,
		-0.822525, -0.238185, 0.516451,
		40.905689, 36.906578, 37.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183323, 36.424248, 37.097645>,  <41.481457, 37.073307, 37.421738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183323, 36.424248, 37.097645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882595, 36.563805, 37.321445>,  <40.702160, 36.647537, 37.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882595, 36.563805, 37.321445>,  <41.183323, 36.424248, 37.097645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882595, 36.563805, 37.321445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658684, -0.358748, -0.661389,
		-0.030033, -0.865780, 0.499523,
		-0.751820, 0.348891, 0.559501,
		40.657047, 36.668472, 37.489296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562832, 35.890800, 37.090298>,  <41.183323, 36.424248, 37.097645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562832, 35.890800, 37.090298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420361, 36.251663, 37.187668>,  <40.334877, 36.468182, 37.246090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420361, 36.251663, 37.187668>,  <40.562832, 35.890800, 37.090298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420361, 36.251663, 37.187668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832420, -0.187990, -0.521284,
		-0.424517, -0.388301, 0.817929,
		-0.356178, 0.902154, 0.243424,
		40.313507, 36.522308, 37.260696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895943, 35.863689, 37.475235>,  <40.562832, 35.890800, 37.090298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895943, 35.863689, 37.475235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929256, 36.193459, 37.251308>,  <39.949245, 36.391319, 37.116951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929256, 36.193459, 37.251308>,  <39.895943, 35.863689, 37.475235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929256, 36.193459, 37.251308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823155, -0.259716, -0.504940,
		-0.561676, 0.502869, 0.656995,
		0.083287, 0.824421, -0.559815,
		39.954243, 36.440784, 37.083363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265865, 35.886734, 36.973057>,  <39.895943, 35.863689, 37.475235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265865, 35.886734, 36.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448971, 36.229488, 36.878223>,  <39.558834, 36.435139, 36.821323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448971, 36.229488, 36.878223>,  <39.265865, 35.886734, 36.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448971, 36.229488, 36.878223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610065, 0.108753, -0.784853,
		-0.646743, 0.503909, 0.572537,
		0.457760, 0.856883, -0.237082,
		39.586300, 36.486553, 36.807098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738102, 36.504513, 36.860275>,  <39.265865, 35.886734, 36.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738102, 36.504513, 36.860275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073395, 36.598328, 36.663357>,  <39.274570, 36.654617, 36.545204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073395, 36.598328, 36.663357>,  <38.738102, 36.504513, 36.860275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073395, 36.598328, 36.663357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515461, 0.046204, -0.855667,
		-0.177941, 0.971008, 0.159625,
		0.838234, 0.234539, -0.492295,
		39.324863, 36.668690, 36.515667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550068, 37.044819, 36.422001>,  <38.738102, 36.504513, 36.860275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550068, 37.044819, 36.422001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879925, 36.872723, 36.275105>,  <39.077839, 36.769466, 36.186966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879925, 36.872723, 36.275105>,  <38.550068, 37.044819, 36.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879925, 36.872723, 36.275105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416608, -0.022783, -0.908801,
		0.382634, 0.902428, -0.198029,
		0.824639, -0.430239, -0.367241,
		39.127316, 36.743652, 36.164932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562019, 37.245617, 35.735138>,  <38.550068, 37.044819, 36.422001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562019, 37.245617, 35.735138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825237, 36.944508, 35.742092>,  <38.983170, 36.763840, 35.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825237, 36.944508, 35.742092>,  <38.562019, 37.245617, 35.735138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825237, 36.944508, 35.742092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138396, -0.143610, -0.979910,
		0.740148, 0.642422, -0.198683,
		0.658048, -0.752775, 0.017384,
		39.022652, 36.718674, 35.747307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080631, 37.398769, 35.218307>,  <38.562019, 37.245617, 35.735138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080631, 37.398769, 35.218307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062279, 37.002312, 35.268147>,  <39.051270, 36.764435, 35.298050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062279, 37.002312, 35.268147>,  <39.080631, 37.398769, 35.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062279, 37.002312, 35.268147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181325, -0.114390, -0.976748,
		0.982353, -0.067403, -0.174471,
		-0.045878, -0.991147, 0.124593,
		39.048515, 36.704967, 35.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327080, 37.233372, 34.578880>,  <39.080631, 37.398769, 35.218307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327080, 37.233372, 34.578880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185429, 36.884529, 34.713951>,  <39.100437, 36.675224, 34.794994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185429, 36.884529, 34.713951>,  <39.327080, 37.233372, 34.578880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185429, 36.884529, 34.713951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267336, -0.251609, -0.930175,
		0.896172, -0.419675, -0.144043,
		-0.354128, -0.872105, 0.337679,
		39.079189, 36.622898, 34.815254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674366, 36.733513, 34.242016>,  <39.327080, 37.233372, 34.578880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674366, 36.733513, 34.242016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323109, 36.590797, 34.369488>,  <39.112354, 36.505169, 34.445972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323109, 36.590797, 34.369488>,  <39.674366, 36.733513, 34.242016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323109, 36.590797, 34.369488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170691, -0.388622, -0.905449,
		0.446905, -0.849513, 0.280365,
		-0.878146, -0.356794, 0.318682,
		39.059666, 36.483761, 34.465092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611584, 36.120178, 33.827862>,  <39.674366, 36.733513, 34.242016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611584, 36.120178, 33.827862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245487, 36.178741, 33.978008>,  <39.025829, 36.213879, 34.068096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245487, 36.178741, 33.978008>,  <39.611584, 36.120178, 33.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245487, 36.178741, 33.978008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396524, -0.492543, -0.774706,
		0.071462, -0.857884, 0.508850,
		-0.915239, 0.146409, 0.375370,
		38.970917, 36.222664, 34.090618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196690, 35.471451, 33.887009>,  <39.611584, 36.120178, 33.827862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196690, 35.471451, 33.887009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937298, 35.775215, 33.865952>,  <38.781662, 35.957474, 33.853317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937298, 35.775215, 33.865952>,  <39.196690, 35.471451, 33.887009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937298, 35.775215, 33.865952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384884, -0.386759, -0.838023,
		-0.656765, -0.523176, 0.543089,
		-0.648478, 0.759411, -0.052648,
		38.742756, 36.003036, 33.850159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715748, 35.333397, 34.506901>,  <39.196690, 35.471451, 33.887009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715748, 35.333397, 34.506901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714874, 35.060875, 34.214104>,  <39.714348, 34.897362, 34.038425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714874, 35.060875, 34.214104>,  <39.715748, 35.333397, 34.506901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714874, 35.060875, 34.214104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999384, -0.027140, 0.022277,
		-0.035043, -0.731493, 0.680948,
		-0.002186, -0.681308, -0.731993,
		39.714218, 34.856483, 33.994507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050953, 34.682076, 34.731106>,  <39.715748, 35.333397, 34.506901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050953, 34.682076, 34.731106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063942, 34.702866, 34.331856>,  <40.071735, 34.715340, 34.092308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063942, 34.702866, 34.331856>,  <40.050953, 34.682076, 34.731106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063942, 34.702866, 34.331856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999053, -0.030608, 0.030910,
		-0.028944, -0.998179, -0.052916,
		0.032474, 0.051971, -0.998120,
		40.073685, 34.718456, 34.032421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436607, 34.055962, 34.409386>,  <40.050953, 34.682076, 34.731106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436607, 34.055962, 34.409386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424919, 34.403164, 34.211105>,  <40.417908, 34.611485, 34.092136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424919, 34.403164, 34.211105>,  <40.436607, 34.055962, 34.409386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424919, 34.403164, 34.211105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984626, -0.060447, -0.163888,
		-0.172219, -0.492865, -0.852892,
		-0.029220, 0.868004, -0.495697,
		40.416153, 34.663567, 34.062397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713646, 33.934483, 33.778603>,  <40.436607, 34.055962, 34.409386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713646, 33.934483, 33.778603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717804, 34.332069, 33.822273>,  <40.720299, 34.570621, 33.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717804, 34.332069, 33.822273>,  <40.713646, 33.934483, 33.778603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717804, 34.332069, 33.822273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964613, 0.018798, -0.262998,
		-0.263464, 0.108050, -0.958599,
		0.010397, 0.993968, 0.109179,
		40.720924, 34.630260, 33.855026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419147, 34.133705, 33.448414>,  <40.713646, 33.934483, 33.778603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419147, 34.133705, 33.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277252, 34.442993, 33.658665>,  <41.192116, 34.628567, 33.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277252, 34.442993, 33.658665>,  <41.419147, 34.133705, 33.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277252, 34.442993, 33.658665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916227, 0.399484, 0.030685,
		-0.186254, 0.492480, -0.850160,
		-0.354737, 0.773224, 0.525629,
		41.170830, 34.674961, 33.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577084, 34.773365, 33.209812>,  <41.419147, 34.133705, 33.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577084, 34.773365, 33.209812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524273, 34.877419, 33.592415>,  <41.492588, 34.939850, 33.821976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524273, 34.877419, 33.592415>,  <41.577084, 34.773365, 33.209812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524273, 34.877419, 33.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916868, 0.398779, 0.018103,
		-0.376725, 0.879377, -0.291159,
		-0.132027, 0.260135, 0.956503,
		41.484665, 34.955460, 33.879364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560085, 35.528286, 33.331684>,  <41.577084, 34.773365, 33.209812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560085, 35.528286, 33.331684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707745, 35.266083, 33.595211>,  <41.796341, 35.108761, 33.753326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707745, 35.266083, 33.595211>,  <41.560085, 35.528286, 33.331684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707745, 35.266083, 33.595211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877008, 0.480285, -0.013533,
		-0.307548, 0.582781, 0.752183,
		0.369150, -0.655509, 0.658815,
		41.818489, 35.069431, 33.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794109, 36.256458, 33.729797>,  <41.560085, 35.528286, 33.331684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794109, 36.256458, 33.729797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607643, 36.240032, 34.083294>,  <41.495766, 36.230175, 34.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607643, 36.240032, 34.083294>,  <41.794109, 36.256458, 33.729797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607643, 36.240032, 34.083294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875655, 0.121054, 0.467520,
		-0.126181, 0.991796, -0.020469,
		-0.466162, -0.041068, 0.883746,
		41.467796, 36.227711, 34.348419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124603, 36.696163, 34.175209>,  <41.794109, 36.256458, 33.729797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124603, 36.696163, 34.175209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954784, 36.424393, 34.414589>,  <41.852894, 36.261330, 34.558216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954784, 36.424393, 34.414589>,  <42.124603, 36.696163, 34.175209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954784, 36.424393, 34.414589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823832, -0.015699, 0.566617,
		-0.375580, 0.733574, 0.566399,
		-0.424547, -0.679428, 0.598446,
		41.827419, 36.220566, 34.594124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241104, 36.747612, 34.944523>,  <42.124603, 36.696163, 34.175209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241104, 36.747612, 34.944523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203316, 36.359013, 34.857559>,  <42.180641, 36.125854, 34.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203316, 36.359013, 34.857559>,  <42.241104, 36.747612, 34.944523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203316, 36.359013, 34.857559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760301, -0.211386, 0.614213,
		-0.642664, -0.107268, 0.758602,
		-0.094472, -0.971498, -0.217407,
		42.174973, 36.067562, 34.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183960, 36.290150, 35.595570>,  <42.241104, 36.747612, 34.944523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183960, 36.290150, 35.595570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350639, 36.102802, 35.283928>,  <42.450645, 35.990395, 35.096943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350639, 36.102802, 35.283928>,  <42.183960, 36.290150, 35.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350639, 36.102802, 35.283928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859601, -0.075793, 0.505313,
		-0.295723, -0.880277, 0.371026,
		0.416694, -0.468367, -0.779101,
		42.475647, 35.962292, 35.050198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685364, 35.670956, 35.794197>,  <42.183960, 36.290150, 35.595570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685364, 35.670956, 35.794197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780819, 35.788555, 35.423981>,  <42.838093, 35.859116, 35.201851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780819, 35.788555, 35.423981>,  <42.685364, 35.670956, 35.794197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780819, 35.788555, 35.423981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965615, 0.029407, 0.258310,
		0.103159, -0.955354, -0.276870,
		0.238635, 0.293997, -0.925537,
		42.852409, 35.876755, 35.146320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302971, 35.264469, 35.346970>,  <42.685364, 35.670956, 35.794197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302971, 35.264469, 35.346970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268723, 35.662823, 35.335110>,  <43.248173, 35.901836, 35.327991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268723, 35.662823, 35.335110>,  <43.302971, 35.264469, 35.346970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268723, 35.662823, 35.335110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940027, 0.090611, 0.328845,
		0.330179, 0.000283, -0.943918,
		-0.085622, 0.995886, -0.029651,
		43.243034, 35.961590, 35.326214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842079, 35.449608, 35.034000>,  <43.302971, 35.264469, 35.346970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842079, 35.449608, 35.034000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733334, 35.749886, 35.274849>,  <43.668087, 35.930054, 35.419357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.733334, 35.749886, 35.274849>,  <43.842079, 35.449608, 35.034000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733334, 35.749886, 35.274849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913691, 0.004942, 0.406379,
		0.302091, 0.660630, -0.687247,
		-0.271863, 0.750695, 0.602119,
		43.651775, 35.975094, 35.455486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478420, 35.885666, 35.178673>,  <43.842079, 35.449608, 35.034000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478420, 35.885666, 35.178673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213318, 35.951580, 35.470867>,  <44.054256, 35.991131, 35.646183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213318, 35.951580, 35.470867>,  <44.478420, 35.885666, 35.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213318, 35.951580, 35.470867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748178, 0.104709, 0.655184,
		0.031479, 0.980755, -0.192687,
		-0.662751, 0.164789, 0.730483,
		44.014492, 36.001019, 35.690014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133984, 36.049553, 34.859043>,  <44.478420, 35.885666, 35.178673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133984, 36.049553, 34.859043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269714, 36.147427, 34.495728>,  <45.351151, 36.206150, 34.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269714, 36.147427, 34.495728>,  <45.133984, 36.049553, 34.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269714, 36.147427, 34.495728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891863, -0.223300, -0.393342,
		-0.299066, 0.943539, 0.142456,
		0.339323, 0.244687, -0.908289,
		45.371510, 36.220833, 34.223240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939251, 35.951935, 35.113903>,  <45.133984, 36.049553, 34.859043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939251, 35.951935, 35.113903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294064, 36.008556, 34.938114>,  <46.506950, 36.042530, 34.832642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294064, 36.008556, 34.938114>,  <45.939251, 35.951935, 35.113903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294064, 36.008556, 34.938114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352413, -0.822522, 0.446388,
		-0.298288, -0.550836, -0.779490,
		0.887034, 0.141550, -0.439470,
		46.560173, 36.051022, 34.806274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099010, 35.374947, 34.690289>,  <45.939251, 35.951935, 35.113903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099010, 35.374947, 34.690289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424744, 35.575455, 34.807304>,  <46.620186, 35.695759, 34.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424744, 35.575455, 34.807304>,  <46.099010, 35.374947, 34.690289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424744, 35.575455, 34.807304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482330, -0.864846, 0.139278,
		0.322819, 0.027681, -0.946056,
		0.814337, 0.501273, 0.292540,
		46.669044, 35.725838, 34.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817612, 35.185154, 34.369923>,  <46.099010, 35.374947, 34.690289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817612, 35.185154, 34.369923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912632, 35.348900, 34.722286>,  <46.969643, 35.447147, 34.933704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912632, 35.348900, 34.722286>,  <46.817612, 35.185154, 34.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912632, 35.348900, 34.722286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520163, -0.819491, 0.240551,
		0.820366, 0.401071, -0.407604,
		0.237550, 0.409361, 0.880905,
		46.983898, 35.471706, 34.986557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502258, 35.055447, 34.492706>,  <46.817612, 35.185154, 34.369923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502258, 35.055447, 34.492706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320030, 35.138557, 34.838951>,  <47.210693, 35.188423, 35.046700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.320030, 35.138557, 34.838951>,  <47.502258, 35.055447, 34.492706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320030, 35.138557, 34.838951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473596, -0.766778, 0.433311,
		0.753765, 0.607354, 0.250918,
		-0.455572, 0.207780, 0.865611,
		47.183357, 35.200890, 35.098633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041626, 34.924530, 34.966335>,  <47.502258, 35.055447, 34.492706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041626, 34.924530, 34.966335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686874, 34.863697, 35.140839>,  <47.474026, 34.827198, 35.245541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686874, 34.863697, 35.140839>,  <48.041626, 34.924530, 34.966335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686874, 34.863697, 35.140839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363331, -0.812859, 0.455248,
		0.285384, 0.562256, 0.776160,
		-0.886874, -0.152083, 0.436262,
		47.420811, 34.818073, 35.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.897881, 28.954809, 26.487240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503128, 28.890348, 26.491060>,  <36.266277, 28.851671, 26.493353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503128, 28.890348, 26.491060>,  <36.897881, 28.954809, 26.487240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503128, 28.890348, 26.491060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065385, 0.453111, 0.889053,
		-0.147600, 0.876767, -0.457705,
		-0.986884, -0.161151, 0.009552,
		36.207062, 28.842003, 26.493925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459675, 29.622328, 26.699133>,  <36.897881, 28.954809, 26.487240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459675, 29.622328, 26.699133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234367, 29.303408, 26.785889>,  <36.099182, 29.112057, 26.837942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234367, 29.303408, 26.785889>,  <36.459675, 29.622328, 26.699133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234367, 29.303408, 26.785889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199320, 0.385852, 0.900771,
		-0.801872, 0.464146, -0.376257,
		-0.563269, -0.797299, 0.216891,
		36.065388, 29.064219, 26.850956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950432, 30.013273, 27.149908>,  <36.459675, 29.622328, 26.699133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950432, 30.013273, 27.149908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896397, 29.619364, 27.193676>,  <35.863976, 29.383018, 27.219936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896397, 29.619364, 27.193676>,  <35.950432, 30.013273, 27.149908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896397, 29.619364, 27.193676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222469, 0.137758, 0.965158,
		-0.965536, 0.106039, -0.237691,
		-0.135089, -0.984773, 0.109420,
		35.855869, 29.323933, 27.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147224, 29.907999, 27.310617>,  <35.950432, 30.013273, 27.149908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147224, 29.907999, 27.310617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379108, 29.602173, 27.423311>,  <35.518238, 29.418676, 27.490929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379108, 29.602173, 27.423311>,  <35.147224, 29.907999, 27.310617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379108, 29.602173, 27.423311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213933, 0.190817, 0.958030,
		-0.786238, -0.615651, -0.052948,
		0.579709, -0.764567, 0.281735,
		35.553020, 29.372803, 27.507832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670517, 29.634348, 27.694380>,  <35.147224, 29.907999, 27.310617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670517, 29.634348, 27.694380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028206, 29.480049, 27.785215>,  <35.242821, 29.387470, 27.839716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028206, 29.480049, 27.785215>,  <34.670517, 29.634348, 27.694380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028206, 29.480049, 27.785215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172038, 0.172181, 0.969926,
		-0.413246, -0.906396, 0.087605,
		0.894221, -0.385746, 0.227088,
		35.296471, 29.364325, 27.853342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474133, 29.110044, 28.296520>,  <34.670517, 29.634348, 27.694380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474133, 29.110044, 28.296520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864655, 29.194933, 28.313488>,  <35.098969, 29.245865, 28.323669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864655, 29.194933, 28.313488>,  <34.474133, 29.110044, 28.296520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864655, 29.194933, 28.313488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071603, 0.131779, 0.988690,
		0.204234, -0.968295, 0.143852,
		0.976300, 0.212224, 0.042418,
		35.157543, 29.258598, 28.326214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736984, 28.726839, 28.861395>,  <34.474133, 29.110044, 28.296520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736984, 28.726839, 28.861395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989574, 29.026066, 28.779778>,  <35.141129, 29.205603, 28.730808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989574, 29.026066, 28.779778>,  <34.736984, 28.726839, 28.861395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989574, 29.026066, 28.779778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112464, 0.348725, 0.930453,
		0.767196, -0.564611, 0.304343,
		0.631476, 0.748068, -0.204042,
		35.179016, 29.250486, 28.718565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087215, 28.811100, 29.450283>,  <34.736984, 28.726839, 28.861395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087215, 28.811100, 29.450283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151932, 29.154114, 29.254953>,  <35.190762, 29.359922, 29.137756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151932, 29.154114, 29.254953>,  <35.087215, 28.811100, 29.450283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151932, 29.154114, 29.254953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087298, 0.505341, 0.858492,
		0.982956, -0.096267, 0.156621,
		0.161792, 0.857533, -0.488324,
		35.200470, 29.411373, 29.108456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396145, 29.252184, 29.914335>,  <35.087215, 28.811100, 29.450283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396145, 29.252184, 29.914335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264381, 29.523396, 29.651501>,  <35.185322, 29.686123, 29.493799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264381, 29.523396, 29.651501>,  <35.396145, 29.252184, 29.914335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264381, 29.523396, 29.651501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060272, 0.679410, 0.731279,
		0.942261, 0.280495, -0.182939,
		-0.329411, 0.678030, -0.657087,
		35.165558, 29.726805, 29.454374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875610, 29.784657, 30.008392>,  <35.396145, 29.252184, 29.914335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875610, 29.784657, 30.008392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540470, 29.939873, 29.854809>,  <35.339386, 30.033003, 29.762659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540470, 29.939873, 29.854809>,  <35.875610, 29.784657, 30.008392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540470, 29.939873, 29.854809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057360, 0.636882, 0.768825,
		0.542872, 0.666187, -0.511356,
		-0.837854, 0.388042, -0.383958,
		35.289112, 30.056286, 29.739622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933975, 30.582729, 29.839478>,  <35.875610, 29.784657, 30.008392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933975, 30.582729, 29.839478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553642, 30.476974, 29.903992>,  <35.325443, 30.413521, 29.942699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553642, 30.476974, 29.903992>,  <35.933975, 30.582729, 29.839478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553642, 30.476974, 29.903992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039821, 0.620828, 0.782935,
		-0.307129, 0.738019, -0.600833,
		-0.950834, -0.264387, 0.161286,
		35.268391, 30.397657, 29.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588825, 31.211981, 29.951843>,  <35.933975, 30.582729, 29.839478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588825, 31.211981, 29.951843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327938, 30.951380, 30.106844>,  <35.171406, 30.795019, 30.199844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.327938, 30.951380, 30.106844>,  <35.588825, 31.211981, 29.951843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327938, 30.951380, 30.106844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057179, 0.552023, 0.831866,
		-0.755874, 0.520400, -0.397290,
		-0.652216, -0.651502, 0.387504,
		35.132275, 30.755930, 30.223095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044559, 31.642492, 30.276550>,  <35.588825, 31.211981, 29.951843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044559, 31.642492, 30.276550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038265, 31.270868, 30.424391>,  <35.034489, 31.047894, 30.513094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038265, 31.270868, 30.424391>,  <35.044559, 31.642492, 30.276550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038265, 31.270868, 30.424391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007154, 0.369531, 0.929191,
		-0.999850, 0.017266, 0.000831,
		-0.015736, -0.929058, 0.369599,
		35.033543, 30.992151, 30.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443245, 31.610022, 30.787449>,  <35.044559, 31.642492, 30.276550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443245, 31.610022, 30.787449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704021, 31.323788, 30.887772>,  <34.860489, 31.152048, 30.947966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704021, 31.323788, 30.887772>,  <34.443245, 31.610022, 30.787449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704021, 31.323788, 30.887772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083482, 0.396491, 0.914235,
		-0.753657, -0.575093, 0.318229,
		0.651945, -0.715586, 0.250808,
		34.899605, 31.109112, 30.963015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212711, 31.334538, 31.429651>,  <34.443245, 31.610022, 30.787449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212711, 31.334538, 31.429651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598549, 31.229364, 31.421368>,  <34.830051, 31.166262, 31.416397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598549, 31.229364, 31.421368>,  <34.212711, 31.334538, 31.429651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598549, 31.229364, 31.421368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111292, 0.334579, 0.935773,
		-0.239116, -0.904944, 0.351994,
		0.964592, -0.262932, -0.020710,
		34.887928, 31.150484, 31.415155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370934, 31.104881, 32.090416>,  <34.212711, 31.334538, 31.429651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370934, 31.104881, 32.090416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742161, 31.151787, 31.949026>,  <34.964897, 31.179930, 31.864191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742161, 31.151787, 31.949026>,  <34.370934, 31.104881, 32.090416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742161, 31.151787, 31.949026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295591, 0.345431, 0.890676,
		0.226547, -0.931089, 0.285919,
		0.928064, 0.117264, -0.353478,
		35.020580, 31.186966, 31.842983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726997, 31.076900, 32.698383>,  <34.370934, 31.104881, 32.090416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726997, 31.076900, 32.698383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027481, 31.162096, 32.448479>,  <35.207771, 31.213213, 32.298534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027481, 31.162096, 32.448479>,  <34.726997, 31.076900, 32.698383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027481, 31.162096, 32.448479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481005, 0.471542, 0.739109,
		0.452017, -0.855737, 0.251781,
		0.751208, 0.212982, -0.624759,
		35.252842, 31.225992, 32.261051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354927, 30.907621, 33.140324>,  <34.726997, 31.076900, 32.698383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354927, 30.907621, 33.140324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379745, 31.187162, 32.855297>,  <35.394638, 31.354887, 32.684280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379745, 31.187162, 32.855297>,  <35.354927, 30.907621, 33.140324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379745, 31.187162, 32.855297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396341, 0.637987, 0.660217,
		0.916004, -0.323388, -0.237396,
		0.062050, 0.698851, -0.712571,
		35.398361, 31.396818, 32.641525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082638, 31.097963, 33.002159>,  <35.354927, 30.907621, 33.140324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082638, 31.097963, 33.002159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886776, 31.420565, 32.869621>,  <35.769257, 31.614126, 32.790100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886776, 31.420565, 32.869621>,  <36.082638, 31.097963, 33.002159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886776, 31.420565, 32.869621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511098, 0.573377, 0.640326,
		0.706409, 0.144193, -0.692961,
		-0.489658, 0.806503, -0.331342,
		35.739880, 31.662516, 32.770218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592915, 31.616728, 32.735474>,  <36.082638, 31.097963, 33.002159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592915, 31.616728, 32.735474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267483, 31.836428, 32.811810>,  <36.072224, 31.968246, 32.857613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267483, 31.836428, 32.811810>,  <36.592915, 31.616728, 32.735474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267483, 31.836428, 32.811810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498253, 0.489349, 0.715738,
		0.299728, 0.677395, -0.671787,
		-0.813576, 0.549247, 0.190843,
		36.023411, 32.001202, 32.869061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788071, 32.327335, 32.634064>,  <36.592915, 31.616728, 32.735474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788071, 32.327335, 32.634064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 32.323845, 32.874683>,  <36.276848, 32.321751, 33.019054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 32.323845, 32.874683>,  <36.788071, 32.327335, 32.634064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468555, 32.323845, 32.874683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496930, 0.554043, 0.667904,
		-0.339115, 0.832442, -0.438225,
		-0.798787, -0.008729, 0.601550,
		36.228920, 32.321224, 33.055149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821842, 32.985851, 32.998703>,  <36.788071, 32.327335, 32.634064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821842, 32.985851, 32.998703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580296, 32.741245, 33.203213>,  <36.435368, 32.594482, 33.325920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580296, 32.741245, 33.203213>,  <36.821842, 32.985851, 32.998703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580296, 32.741245, 33.203213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492171, 0.218495, 0.842631,
		-0.626989, 0.760470, 0.169027,
		-0.603864, -0.611511, 0.511275,
		36.399136, 32.557793, 33.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196217, 33.577621, 33.400570>,  <36.821842, 32.985851, 32.998703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196217, 33.577621, 33.400570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587032, 33.569828, 33.485439>,  <37.821522, 33.565151, 33.536362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587032, 33.569828, 33.485439>,  <37.196217, 33.577621, 33.400570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587032, 33.569828, 33.485439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164067, -0.566529, -0.807544,
		0.135934, 0.823812, -0.550324,
		0.977038, -0.019482, 0.212171,
		37.880142, 33.563984, 33.549091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422073, 33.738792, 32.749462>,  <37.196217, 33.577621, 33.400570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422073, 33.738792, 32.749462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745125, 33.608620, 32.946171>,  <37.938953, 33.530514, 33.064194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.745125, 33.608620, 32.946171>,  <37.422073, 33.738792, 32.749462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745125, 33.608620, 32.946171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397407, -0.315748, -0.861609,
		0.435673, 0.891289, -0.125676,
		0.807624, -0.325435, 0.491767,
		37.987411, 33.510990, 33.093700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030952, 33.985134, 32.400791>,  <37.422073, 33.738792, 32.749462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030952, 33.985134, 32.400791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137741, 33.671783, 32.625305>,  <38.201813, 33.483772, 32.760014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137741, 33.671783, 32.625305>,  <38.030952, 33.985134, 32.400791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137741, 33.671783, 32.625305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358100, -0.460082, -0.812458,
		0.894701, 0.417900, 0.157700,
		0.266971, -0.783380, 0.561286,
		38.217831, 33.436768, 32.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623661, 33.820766, 32.174694>,  <38.030952, 33.985134, 32.400791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623661, 33.820766, 32.174694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525299, 33.482689, 32.364506>,  <38.466282, 33.279842, 32.478394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525299, 33.482689, 32.364506>,  <38.623661, 33.820766, 32.174694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525299, 33.482689, 32.364506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370479, -0.534347, -0.759749,
		0.895699, -0.011019, 0.444524,
		-0.245902, -0.845193, 0.474532,
		38.451527, 33.229130, 32.506866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208496, 33.365726, 32.144268>,  <38.623661, 33.820766, 32.174694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208496, 33.365726, 32.144268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891476, 33.128902, 32.202686>,  <38.701263, 32.986809, 32.237736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891476, 33.128902, 32.202686>,  <39.208496, 33.365726, 32.144268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891476, 33.128902, 32.202686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359952, -0.647522, -0.671677,
		0.492242, -0.479767, 0.726306,
		-0.792548, -0.592063, 0.146045,
		38.653709, 32.951283, 32.246498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461590, 32.591267, 31.967976>,  <39.208496, 33.365726, 32.144268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461590, 32.591267, 31.967976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063007, 32.557903, 31.972166>,  <38.823856, 32.537884, 31.974680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.063007, 32.557903, 31.972166>,  <39.461590, 32.591267, 31.967976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063007, 32.557903, 31.972166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054809, -0.739116, -0.671344,
		0.063738, -0.668394, 0.741072,
		-0.996460, -0.083408, 0.010476,
		38.764069, 32.532883, 31.975309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388794, 31.873308, 32.076965>,  <39.461590, 32.591267, 31.967976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388794, 31.873308, 32.076965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043732, 31.997931, 31.917587>,  <38.836693, 32.072704, 31.821960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.043732, 31.997931, 31.917587>,  <39.388794, 31.873308, 32.076965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043732, 31.997931, 31.917587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040598, -0.742568, -0.668539,
		-0.504159, -0.592896, 0.627932,
		-0.862656, 0.311557, -0.398443,
		38.784935, 32.091396, 31.798054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014793, 31.213863, 31.962606>,  <39.388794, 31.873308, 32.076965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014793, 31.213863, 31.962606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846394, 31.467560, 31.703222>,  <38.745354, 31.619778, 31.547592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846394, 31.467560, 31.703222>,  <39.014793, 31.213863, 31.962606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846394, 31.467560, 31.703222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041623, -0.727655, -0.684679,
		-0.906108, -0.261255, 0.332738,
		-0.420994, 0.634242, -0.648460,
		38.720097, 31.657833, 31.508684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490650, 30.863733, 31.529438>,  <39.014793, 31.213863, 31.962606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490650, 30.863733, 31.529438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588646, 31.193090, 31.324692>,  <38.647442, 31.390705, 31.201843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588646, 31.193090, 31.324692>,  <38.490650, 30.863733, 31.529438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588646, 31.193090, 31.324692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146470, -0.490462, -0.859065,
		-0.958399, 0.285433, 0.000445,
		0.244987, 0.823392, -0.511866,
		38.662144, 31.440107, 31.171131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027157, 30.912962, 30.985367>,  <38.490650, 30.863733, 31.529438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027157, 30.912962, 30.985367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351368, 31.120832, 30.877310>,  <38.545895, 31.245556, 30.812475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351368, 31.120832, 30.877310>,  <38.027157, 30.912962, 30.985367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351368, 31.120832, 30.877310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093777, -0.340136, -0.935689,
		-0.578142, 0.783736, -0.226957,
		0.810529, 0.519678, -0.270143,
		38.594528, 31.276735, 30.796267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833561, 31.159164, 30.389448>,  <38.027157, 30.912962, 30.985367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833561, 31.159164, 30.389448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227467, 31.219973, 30.355658>,  <38.463810, 31.256456, 30.335382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227467, 31.219973, 30.355658>,  <37.833561, 31.159164, 30.389448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227467, 31.219973, 30.355658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037128, -0.290784, -0.956068,
		-0.169905, 0.944635, -0.280709,
		0.984761, 0.152018, -0.084478,
		38.522896, 31.265577, 30.330315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918446, 31.498289, 29.751381>,  <37.833561, 31.159164, 30.389448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918446, 31.498289, 29.751381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283722, 31.357264, 29.833151>,  <38.502888, 31.272648, 29.882214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.283722, 31.357264, 29.833151>,  <37.918446, 31.498289, 29.751381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283722, 31.357264, 29.833151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063459, -0.372478, -0.925869,
		0.402570, 0.858464, -0.317769,
		0.913187, -0.352562, 0.204426,
		38.557678, 31.251495, 29.894478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403458, 31.874115, 29.322803>,  <37.918446, 31.498289, 29.751381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403458, 31.874115, 29.322803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545906, 31.516127, 29.430285>,  <38.631374, 31.301332, 29.494774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545906, 31.516127, 29.430285>,  <38.403458, 31.874115, 29.322803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545906, 31.516127, 29.430285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197028, -0.209174, -0.957824,
		0.913431, 0.394045, 0.101843,
		0.356123, -0.894972, 0.268704,
		38.652744, 31.247635, 29.510895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807545, 31.746096, 28.758633>,  <38.403458, 31.874115, 29.322803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807545, 31.746096, 28.758633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737083, 31.386284, 28.918543>,  <38.694805, 31.170397, 29.014488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737083, 31.386284, 28.918543>,  <38.807545, 31.746096, 28.758633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737083, 31.386284, 28.918543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121849, -0.383075, -0.915645,
		0.976792, -0.210006, -0.042126,
		-0.176153, -0.899528, 0.399774,
		38.684238, 31.116425, 29.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289379, 31.232309, 28.466127>,  <38.807545, 31.746096, 28.758633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289379, 31.232309, 28.466127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963760, 31.045425, 28.604136>,  <38.768387, 30.933294, 28.686941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963760, 31.045425, 28.604136>,  <39.289379, 31.232309, 28.466127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963760, 31.045425, 28.604136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032857, -0.556050, -0.830499,
		0.579866, -0.687404, 0.437301,
		-0.814049, -0.467210, 0.345020,
		38.719547, 30.905262, 28.707642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379612, 30.536230, 28.312317>,  <39.289379, 31.232309, 28.466127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379612, 30.536230, 28.312317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987301, 30.562635, 28.385765>,  <38.751915, 30.578480, 28.429834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987301, 30.562635, 28.385765>,  <39.379612, 30.536230, 28.312317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987301, 30.562635, 28.385765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186474, -0.594202, -0.782401,
		0.057456, -0.801602, 0.595090,
		-0.980778, 0.066015, 0.183619,
		38.693066, 30.582439, 28.440851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121849, 29.854584, 28.380728>,  <39.379612, 30.536230, 28.312317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121849, 29.854584, 28.380728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794685, 30.069536, 28.298519>,  <38.598385, 30.198507, 28.249193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794685, 30.069536, 28.298519>,  <39.121849, 29.854584, 28.380728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794685, 30.069536, 28.298519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211704, -0.613259, -0.760983,
		-0.534976, -0.578908, 0.615359,
		-0.817913, 0.537381, -0.205522,
		38.549313, 30.230751, 28.236862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518944, 29.345600, 28.386461>,  <39.121849, 29.854584, 28.380728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518944, 29.345600, 28.386461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427883, 29.662785, 28.160404>,  <38.373249, 29.853096, 28.024769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427883, 29.662785, 28.160404>,  <38.518944, 29.345600, 28.386461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427883, 29.662785, 28.160404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081965, -0.593928, -0.800332,
		-0.970287, -0.135873, 0.200202,
		-0.227649, 0.792962, -0.565144,
		38.359589, 29.900673, 27.990862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.971512, 29.119209, 27.867813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089264, 29.474684, 27.727196>,  <38.159916, 29.687967, 27.642826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089264, 29.474684, 27.727196>,  <37.971512, 29.119209, 27.867813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089264, 29.474684, 27.727196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219741, -0.295047, -0.929872,
		-0.930084, 0.350982, 0.108425,
		0.294377, 0.888684, -0.351543,
		38.177578, 29.741289, 27.621733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442444, 29.282011, 27.275993>,  <37.971512, 29.119209, 27.867813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442444, 29.282011, 27.275993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768654, 29.502296, 27.204847>,  <37.964378, 29.634468, 27.162159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768654, 29.502296, 27.204847>,  <37.442444, 29.282011, 27.275993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768654, 29.502296, 27.204847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077040, -0.201295, -0.976496,
		-0.573573, 0.810059, -0.121734,
		0.815524, 0.550713, -0.177864,
		38.013309, 29.667511, 27.151487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285873, 29.775003, 26.775812>,  <37.442444, 29.282011, 27.275993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285873, 29.775003, 26.775812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682621, 29.725622, 26.763437>,  <37.920670, 29.695993, 26.756012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682621, 29.725622, 26.763437>,  <37.285873, 29.775003, 26.775812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682621, 29.725622, 26.763437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064132, -0.274856, -0.959344,
		0.109929, 0.953527, -0.280538,
		0.991868, -0.123451, -0.030937,
		37.980183, 29.688587, 26.754156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386860, 30.052635, 26.235682>,  <37.285873, 29.775003, 26.775812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386860, 30.052635, 26.235682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740437, 29.871527, 26.282404>,  <37.952583, 29.762861, 26.310436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.740437, 29.871527, 26.282404>,  <37.386860, 30.052635, 26.235682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740437, 29.871527, 26.282404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018240, -0.282996, -0.958948,
		0.467238, 0.845525, -0.258411,
		0.883943, -0.452771, 0.116804,
		38.005619, 29.735695, 26.317446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726868, 30.033915, 25.555897>,  <37.386860, 30.052635, 26.235682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726868, 30.033915, 25.555897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957783, 29.775434, 25.755566>,  <38.096333, 29.620346, 25.875366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.957783, 29.775434, 25.755566>,  <37.726868, 30.033915, 25.555897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957783, 29.775434, 25.755566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196176, -0.483657, -0.852990,
		0.792628, 0.590342, -0.152439,
		0.577283, -0.646199, 0.499170,
		38.130966, 29.581575, 25.905317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476521, 29.966757, 25.259680>,  <37.726868, 30.033915, 25.555897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476521, 29.966757, 25.259680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358685, 29.641342, 25.460230>,  <38.287983, 29.446095, 25.580559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358685, 29.641342, 25.460230>,  <38.476521, 29.966757, 25.259680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358685, 29.641342, 25.460230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139414, -0.555630, -0.819658,
		0.945398, -0.171567, 0.277104,
		-0.294593, -0.813535, 0.501373,
		38.270306, 29.397282, 25.610641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025272, 29.448065, 25.356371>,  <38.476521, 29.966757, 25.259680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025272, 29.448065, 25.356371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683601, 29.240141, 25.361786>,  <38.478600, 29.115387, 25.365034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683601, 29.240141, 25.361786>,  <39.025272, 29.448065, 25.356371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683601, 29.240141, 25.361786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262232, -0.453096, -0.852020,
		0.449023, -0.724224, 0.523334,
		-0.854174, -0.519812, 0.013535,
		38.427349, 29.084198, 25.365847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186504, 28.921297, 24.955208>,  <39.025272, 29.448065, 25.356371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186504, 28.921297, 24.955208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793503, 28.851076, 24.980087>,  <38.557701, 28.808943, 24.995016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793503, 28.851076, 24.980087>,  <39.186504, 28.921297, 24.955208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793503, 28.851076, 24.980087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024597, -0.453347, -0.890995,
		0.184616, -0.873875, 0.449733,
		-0.982503, -0.175554, 0.062200,
		38.498753, 28.798410, 24.998747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123856, 28.266594, 24.892563>,  <39.186504, 28.921297, 24.955208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123856, 28.266594, 24.892563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762218, 28.388174, 24.772408>,  <38.545238, 28.461123, 24.700314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.762218, 28.388174, 24.772408>,  <39.123856, 28.266594, 24.892563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762218, 28.388174, 24.772408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098468, -0.535843, -0.838556,
		-0.415841, -0.787710, 0.454521,
		-0.904091, 0.303951, -0.300390,
		38.490990, 28.479359, 24.682291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700932, 27.613138, 24.610302>,  <39.123856, 28.266594, 24.892563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700932, 27.613138, 24.610302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508900, 27.929192, 24.457872>,  <38.393681, 28.118824, 24.366415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508900, 27.929192, 24.457872>,  <38.700932, 27.613138, 24.610302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508900, 27.929192, 24.457872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223492, -0.530238, -0.817862,
		-0.848278, -0.307472, 0.431144,
		-0.480078, 0.790132, -0.381072,
		38.364876, 28.166231, 24.343552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085560, 27.262529, 24.250046>,  <38.700932, 27.613138, 24.610302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085560, 27.262529, 24.250046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143135, 27.635469, 24.117376>,  <38.177681, 27.859234, 24.037775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143135, 27.635469, 24.117376>,  <38.085560, 27.262529, 24.250046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143135, 27.635469, 24.117376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203247, -0.300167, -0.931982,
		-0.968490, 0.201559, 0.146292,
		0.143937, 0.932349, -0.331675,
		38.186317, 27.915174, 24.017874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551056, 27.314915, 23.720284>,  <38.085560, 27.262529, 24.250046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551056, 27.314915, 23.720284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811283, 27.607584, 23.638882>,  <37.967419, 27.783186, 23.590040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811283, 27.607584, 23.638882>,  <37.551056, 27.314915, 23.720284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811283, 27.607584, 23.638882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105870, -0.352720, -0.929720,
		-0.752032, 0.583303, -0.306931,
		0.650569, 0.731674, -0.203502,
		38.006454, 27.827085, 23.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427380, 27.430527, 23.004587>,  <37.551056, 27.314915, 23.720284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427380, 27.430527, 23.004587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783318, 27.602345, 23.066130>,  <37.996880, 27.705435, 23.103056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783318, 27.602345, 23.066130>,  <37.427380, 27.430527, 23.004587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783318, 27.602345, 23.066130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196851, -0.057217, -0.978762,
		-0.411620, 0.901230, -0.135471,
		0.889842, 0.429546, 0.153856,
		38.050270, 27.731209, 23.112286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404072, 27.979792, 22.620296>,  <37.427380, 27.430527, 23.004587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404072, 27.979792, 22.620296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792549, 27.908905, 22.684025>,  <38.025635, 27.866373, 22.722261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792549, 27.908905, 22.684025>,  <37.404072, 27.979792, 22.620296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792549, 27.908905, 22.684025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180103, 0.108051, -0.977695,
		0.156047, 0.978223, 0.136856,
		0.971191, -0.177215, 0.159320,
		38.083908, 27.855740, 22.731821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767452, 28.438040, 22.230984>,  <37.404072, 27.979792, 22.620296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767452, 28.438040, 22.230984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057632, 28.167843, 22.283808>,  <38.231739, 28.005726, 22.315502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057632, 28.167843, 22.283808>,  <37.767452, 28.438040, 22.230984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057632, 28.167843, 22.283808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277624, 0.111607, -0.954185,
		0.629804, 0.728873, 0.268497,
		0.725446, -0.675491, 0.132062,
		38.275265, 27.965195, 22.323427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391895, 28.709436, 21.966650>,  <37.767452, 28.438040, 22.230984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391895, 28.709436, 21.966650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408619, 28.309788, 21.965551>,  <38.418652, 28.069998, 21.964891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.408619, 28.309788, 21.965551>,  <38.391895, 28.709436, 21.966650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408619, 28.309788, 21.965551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322118, 0.016081, -0.946563,
		0.945776, 0.038688, 0.322508,
		0.041807, -0.999122, -0.002746,
		38.421162, 28.010052, 21.964727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950661, 28.602949, 21.767191>,  <38.391895, 28.709436, 21.966650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950661, 28.602949, 21.767191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795113, 28.242083, 21.692493>,  <38.701782, 28.025562, 21.647675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795113, 28.242083, 21.692493>,  <38.950661, 28.602949, 21.767191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795113, 28.242083, 21.692493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227915, 0.102192, -0.968303,
		0.892655, -0.419108, 0.165878,
		-0.388872, -0.902167, -0.186743,
		38.678452, 27.971432, 21.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427364, 28.229063, 21.315895>,  <38.950661, 28.602949, 21.767191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427364, 28.229063, 21.315895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085373, 28.025028, 21.278336>,  <38.880177, 27.902607, 21.255800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085373, 28.025028, 21.278336>,  <39.427364, 28.229063, 21.315895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085373, 28.025028, 21.278336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067187, 0.070589, -0.995240,
		0.514288, -0.857221, -0.026081,
		-0.854981, -0.510088, -0.093897,
		38.828876, 27.872002, 21.250166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532639, 27.813158, 20.780628>,  <39.427364, 28.229063, 21.315895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532639, 27.813158, 20.780628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132725, 27.812929, 20.788982>,  <38.892776, 27.812792, 20.793995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132725, 27.812929, 20.788982>,  <39.532639, 27.813158, 20.780628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132725, 27.812929, 20.788982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020878, 0.063983, -0.997733,
		-0.000768, -0.997951, -0.063981,
		-0.999782, -0.000570, 0.020884,
		38.832790, 27.812757, 20.795248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421589, 27.422394, 20.317743>,  <39.532639, 27.813158, 20.780628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421589, 27.422394, 20.317743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077427, 27.622416, 20.357048>,  <38.870930, 27.742428, 20.380630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077427, 27.622416, 20.357048>,  <39.421589, 27.422394, 20.317743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077427, 27.622416, 20.357048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101896, 0.020115, -0.994592,
		-0.499326, -0.865760, 0.033646,
		-0.860401, 0.500054, 0.098262,
		38.819305, 27.772432, 20.386526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854553, 26.944283, 20.065361>,  <39.421589, 27.422394, 20.317743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854553, 26.944283, 20.065361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747807, 27.328970, 20.040445>,  <38.683758, 27.559782, 20.025496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747807, 27.328970, 20.040445>,  <38.854553, 26.944283, 20.065361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747807, 27.328970, 20.040445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003728, -0.063602, -0.997968,
		-0.963727, -0.266555, 0.013388,
		-0.266864, 0.961719, -0.062288,
		38.667747, 27.617485, 20.021759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524353, 26.860365, 19.521517>,  <38.854553, 26.944283, 20.065361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524353, 26.860365, 19.521517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551033, 27.256882, 19.566938>,  <38.567039, 27.494791, 19.594193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551033, 27.256882, 19.566938>,  <38.524353, 26.860365, 19.521517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551033, 27.256882, 19.566938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049263, 0.116943, -0.991916,
		-0.996556, 0.060567, 0.056634,
		0.066701, 0.991290, 0.113556,
		38.571045, 27.554268, 19.601006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947338, 27.237526, 19.210733>,  <38.524353, 26.860365, 19.521517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947338, 27.237526, 19.210733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284966, 27.451845, 19.219343>,  <38.487541, 27.580437, 19.224510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284966, 27.451845, 19.219343>,  <37.947338, 27.237526, 19.210733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284966, 27.451845, 19.219343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051212, 0.120506, -0.991391,
		-0.533780, 0.835702, 0.129155,
		0.844071, 0.535799, 0.021525,
		38.538185, 27.612585, 19.225801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656395, 26.641296, 18.903063>,  <37.947338, 27.237526, 19.210733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656395, 26.641296, 18.903063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302380, 26.580753, 18.726974>,  <37.089970, 26.544428, 18.621321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.302380, 26.580753, 18.726974>,  <37.656395, 26.641296, 18.903063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302380, 26.580753, 18.726974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463663, 0.202339, 0.862598,
		-0.041485, 0.967548, -0.249256,
		-0.885040, -0.151356, -0.440223,
		37.036869, 26.535347, 18.594908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101612, 27.278925, 18.945782>,  <37.656395, 26.641296, 18.903063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101612, 27.278925, 18.945782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940514, 26.912895, 18.937449>,  <36.843853, 26.693277, 18.932449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.940514, 26.912895, 18.937449>,  <37.101612, 27.278925, 18.945782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940514, 26.912895, 18.937449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529374, 0.214300, 0.820877,
		-0.746699, 0.341633, -0.570725,
		-0.402745, -0.915075, -0.020834,
		36.819691, 26.638372, 18.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602898, 27.498550, 19.328169>,  <37.101612, 27.278925, 18.945782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602898, 27.498550, 19.328169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536644, 27.105150, 19.299068>,  <36.496891, 26.869110, 19.281609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536644, 27.105150, 19.299068>,  <36.602898, 27.498550, 19.328169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536644, 27.105150, 19.299068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520817, 0.024591, 0.853314,
		-0.837446, 0.179225, -0.516297,
		-0.165632, -0.983501, -0.072750,
		36.486954, 26.810101, 19.277243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925251, 27.333504, 19.321743>,  <36.602898, 27.498550, 19.328169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925251, 27.333504, 19.321743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100681, 27.010765, 19.480059>,  <36.205940, 26.817122, 19.575048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.100681, 27.010765, 19.480059>,  <35.925251, 27.333504, 19.321743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100681, 27.010765, 19.480059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553691, 0.104295, 0.826165,
		-0.707867, -0.581483, -0.401002,
		0.438578, -0.806846, 0.395789,
		36.232254, 26.768711, 19.598795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359921, 27.075966, 19.697275>,  <35.925251, 27.333504, 19.321743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359921, 27.075966, 19.697275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692455, 26.907345, 19.842142>,  <35.891975, 26.806171, 19.929062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692455, 26.907345, 19.842142>,  <35.359921, 27.075966, 19.697275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692455, 26.907345, 19.842142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455635, -0.143837, 0.878469,
		-0.318229, -0.895323, -0.311653,
		0.831340, -0.421554, 0.362167,
		35.941856, 26.780878, 19.950792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095039, 26.633507, 20.158031>,  <35.359921, 27.075966, 19.697275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095039, 26.633507, 20.158031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.480736, 26.631037, 20.264017>,  <35.712154, 26.629555, 20.327608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.480736, 26.631037, 20.264017>,  <35.095039, 26.633507, 20.158031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480736, 26.631037, 20.264017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265011, -0.036450, 0.963556,
		0.003724, -0.999317, -0.036778,
		0.964239, -0.006159, 0.264966,
		35.770008, 26.629185, 20.343506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179768, 26.117304, 20.627279>,  <35.095039, 26.633507, 20.158031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179768, 26.117304, 20.627279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483501, 26.373022, 20.675785>,  <35.665741, 26.526453, 20.704889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.483501, 26.373022, 20.675785>,  <35.179768, 26.117304, 20.627279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483501, 26.373022, 20.675785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182776, 0.030696, 0.982675,
		0.624498, -0.768348, 0.140157,
		0.759339, 0.639296, 0.121266,
		35.711304, 26.564812, 20.712166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584930, 25.872791, 21.192633>,  <35.179768, 26.117304, 20.627279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584930, 25.872791, 21.192633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667175, 26.264240, 21.190887>,  <35.716522, 26.499109, 21.189840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667175, 26.264240, 21.190887>,  <35.584930, 25.872791, 21.192633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667175, 26.264240, 21.190887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221427, 0.050865, 0.973850,
		0.953253, -0.199273, 0.227152,
		0.205617, 0.978623, -0.004363,
		35.728859, 26.557827, 21.189579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706291, 25.970367, 22.024387>,  <35.584930, 25.872791, 21.192633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706291, 25.970367, 22.024387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738136, 26.343100, 21.882765>,  <35.757244, 26.566738, 21.797792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738136, 26.343100, 21.882765>,  <35.706291, 25.970367, 22.024387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738136, 26.343100, 21.882765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177032, 0.362752, 0.914915,
		0.980980, -0.010160, 0.193844,
		0.079613, 0.931830, -0.354054,
		35.762020, 26.622648, 21.776548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150494, 26.340696, 22.299444>,  <35.706291, 25.970367, 22.024387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150494, 26.340696, 22.299444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907715, 26.620836, 22.149178>,  <35.762047, 26.788919, 22.059017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907715, 26.620836, 22.149178>,  <36.150494, 26.340696, 22.299444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907715, 26.620836, 22.149178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057488, 0.432763, 0.899673,
		0.792661, 0.567649, -0.222402,
		-0.606946, 0.700350, -0.375667,
		35.725632, 26.830942, 22.036478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510391, 26.967720, 22.449310>,  <36.150494, 26.340696, 22.299444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510391, 26.967720, 22.449310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121872, 27.037680, 22.384827>,  <35.888760, 27.079657, 22.346136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121872, 27.037680, 22.384827>,  <36.510391, 26.967720, 22.449310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121872, 27.037680, 22.384827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030110, 0.581877, 0.812720,
		0.235948, 0.794248, -0.559910,
		-0.971299, 0.174901, -0.161208,
		35.830482, 27.090151, 22.336464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552670, 27.615799, 22.489716>,  <36.510391, 26.967720, 22.449310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552670, 27.615799, 22.489716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166164, 27.534426, 22.552891>,  <35.934261, 27.485601, 22.590796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166164, 27.534426, 22.552891>,  <36.552670, 27.615799, 22.489716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166164, 27.534426, 22.552891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022987, 0.542670, 0.839631,
		-0.256518, 0.814938, -0.519687,
		-0.966266, -0.203435, 0.157937,
		35.876286, 27.473396, 22.600271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302006, 28.172922, 22.700327>,  <36.552670, 27.615799, 22.489716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302006, 28.172922, 22.700327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034943, 27.908278, 22.836853>,  <35.874702, 27.749491, 22.918768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034943, 27.908278, 22.836853>,  <36.302006, 28.172922, 22.700327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034943, 27.908278, 22.836853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005530, 0.454050, 0.890959,
		-0.744445, 0.596746, -0.299493,
		-0.667661, -0.661614, 0.341316,
		35.834644, 27.709793, 22.939247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838406, 28.602041, 23.014404>,  <36.302006, 28.172922, 22.700327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838406, 28.602041, 23.014404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823689, 28.240229, 23.184330>,  <35.814857, 28.023140, 23.286285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.823689, 28.240229, 23.184330>,  <35.838406, 28.602041, 23.014404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823689, 28.240229, 23.184330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054487, 0.426286, 0.902946,
		-0.997836, 0.010075, -0.064969,
		-0.036793, -0.904532, 0.424814,
		35.812649, 27.968868, 23.311775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304585, 28.662617, 23.529160>,  <35.838406, 28.602041, 23.014404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304585, 28.662617, 23.529160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509254, 28.342552, 23.654337>,  <35.632057, 28.150515, 23.729443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.509254, 28.342552, 23.654337>,  <35.304585, 28.662617, 23.529160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509254, 28.342552, 23.654337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025045, 0.350190, 0.936344,
		-0.858814, -0.486941, 0.159143,
		0.511674, -0.800160, 0.312943,
		35.662758, 28.102505, 23.748220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972557, 28.356228, 24.124964>,  <35.304585, 28.662617, 23.529160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972557, 28.356228, 24.124964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343464, 28.210979, 24.161438>,  <35.566010, 28.123831, 24.183323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343464, 28.210979, 24.161438>,  <34.972557, 28.356228, 24.124964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343464, 28.210979, 24.161438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029741, 0.171348, 0.984761,
		-0.373213, -0.915851, 0.148086,
		0.927269, -0.363122, 0.091188,
		35.621643, 28.102043, 24.188795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921547, 28.097300, 24.709801>,  <34.972557, 28.356228, 24.124964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921547, 28.097300, 24.709801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318287, 28.107998, 24.659981>,  <35.556332, 28.114416, 24.630089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318287, 28.107998, 24.659981>,  <34.921547, 28.097300, 24.709801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318287, 28.107998, 24.659981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120232, 0.126624, 0.984637,
		0.042104, -0.991590, 0.122377,
		0.991853, 0.026743, -0.124552,
		35.615841, 28.116020, 24.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218849, 27.524170, 25.234592>,  <34.921547, 28.097300, 24.709801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218849, 27.524170, 25.234592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487446, 27.807901, 25.148846>,  <35.648605, 27.978140, 25.097397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.487446, 27.807901, 25.148846>,  <35.218849, 27.524170, 25.234592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487446, 27.807901, 25.148846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123694, 0.177936, 0.976237,
		0.730617, -0.682050, 0.031743,
		0.671490, 0.709328, -0.214369,
		35.688892, 28.020700, 25.084536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614536, 27.451605, 25.841223>,  <35.218849, 27.524170, 25.234592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614536, 27.451605, 25.841223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733643, 27.797472, 25.679390>,  <35.805107, 28.004992, 25.582291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733643, 27.797472, 25.679390>,  <35.614536, 27.451605, 25.841223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733643, 27.797472, 25.679390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192531, 0.360705, 0.912592,
		0.935024, -0.349630, -0.059072,
		0.297762, 0.864668, -0.404582,
		35.822971, 28.056873, 25.558016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234055, 27.595131, 26.146490>,  <35.614536, 27.451605, 25.841223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234055, 27.595131, 26.146490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118153, 27.944107, 25.989065>,  <36.048611, 28.153492, 25.894609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118153, 27.944107, 25.989065>,  <36.234055, 27.595131, 26.146490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118153, 27.944107, 25.989065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254332, 0.466604, 0.847110,
		0.922691, 0.145357, -0.357090,
		-0.289753, 0.872440, -0.393562,
		36.031227, 28.205839, 25.870996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760502, 28.165680, 26.308941>,  <36.234055, 27.595131, 26.146490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760502, 28.165680, 26.308941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428493, 28.367830, 26.214567>,  <36.229290, 28.489120, 26.157944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428493, 28.367830, 26.214567>,  <36.760502, 28.165680, 26.308941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428493, 28.367830, 26.214567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035734, 0.470336, 0.881764,
		0.556591, 0.723448, -0.408446,
		-0.830018, 0.505378, -0.235933,
		36.179489, 28.519444, 26.143787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.747688, 30.801991, 30.065823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376194, 30.944990, 30.026522>,  <39.153297, 31.030790, 30.002941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376194, 30.944990, 30.026522>,  <39.747688, 30.801991, 30.065823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376194, 30.944990, 30.026522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086097, 0.465725, 0.880731,
		0.360619, 0.809503, -0.463313,
		-0.928731, 0.357498, -0.098254,
		39.097576, 31.052240, 29.997046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798447, 31.446188, 30.302584>,  <39.747688, 30.801991, 30.065823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798447, 31.446188, 30.302584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400475, 31.407581, 30.291283>,  <39.161690, 31.384418, 30.284502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400475, 31.407581, 30.291283>,  <39.798447, 31.446188, 30.302584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400475, 31.407581, 30.291283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073773, 0.509556, 0.857269,
		-0.068343, 0.855007, -0.514093,
		-0.994931, -0.096514, -0.028252,
		39.101994, 31.378628, 30.282806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473579, 32.091839, 30.372166>,  <39.798447, 31.446188, 30.302584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473579, 32.091839, 30.372166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233665, 31.804028, 30.512188>,  <39.089718, 31.631342, 30.596201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233665, 31.804028, 30.512188>,  <39.473579, 32.091839, 30.372166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233665, 31.804028, 30.512188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319614, 0.616499, 0.719567,
		-0.733557, 0.319702, -0.599737,
		-0.599785, -0.719527, 0.350056,
		39.053730, 31.588169, 30.617205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988838, 32.510628, 30.587894>,  <39.473579, 32.091839, 30.372166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988838, 32.510628, 30.587894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868851, 32.174000, 30.767574>,  <38.796860, 31.972023, 30.875381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868851, 32.174000, 30.767574>,  <38.988838, 32.510628, 30.587894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868851, 32.174000, 30.767574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484339, 0.540035, 0.688315,
		-0.821848, -0.011091, -0.569599,
		-0.299970, -0.841569, 0.449198,
		38.778858, 31.921530, 30.902334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277622, 32.657013, 30.704880>,  <38.988838, 32.510628, 30.587894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277622, 32.657013, 30.704880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400925, 32.379368, 30.965090>,  <38.474907, 32.212780, 31.121216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400925, 32.379368, 30.965090>,  <38.277622, 32.657013, 30.704880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400925, 32.379368, 30.965090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308330, 0.574011, 0.758580,
		-0.899951, -0.434412, -0.037075,
		0.308255, -0.694116, 0.650524,
		38.493401, 32.171135, 31.160248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786800, 32.664959, 31.196074>,  <38.277622, 32.657013, 30.704880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786800, 32.664959, 31.196074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068562, 32.464458, 31.397093>,  <38.237617, 32.344158, 31.517704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068562, 32.464458, 31.397093>,  <37.786800, 32.664959, 31.196074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068562, 32.464458, 31.397093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227113, 0.511628, 0.828647,
		-0.672481, -0.697841, 0.246553,
		0.704407, -0.501254, 0.502549,
		38.279884, 32.314083, 31.547857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524101, 32.321690, 31.769421>,  <37.786800, 32.664959, 31.196074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524101, 32.321690, 31.769421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903744, 32.435787, 31.822836>,  <38.131531, 32.504246, 31.854885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903744, 32.435787, 31.822836>,  <37.524101, 32.321690, 31.769421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903744, 32.435787, 31.822836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250182, 0.425231, 0.869821,
		0.191329, -0.858961, 0.474953,
		0.949106, 0.285247, 0.133538,
		38.188477, 32.521362, 31.862898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586613, 32.233990, 32.492867>,  <37.524101, 32.321690, 31.769421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586613, 32.233990, 32.492867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924877, 32.435436, 32.422180>,  <38.127834, 32.556305, 32.379768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924877, 32.435436, 32.422180>,  <37.586613, 32.233990, 32.492867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924877, 32.435436, 32.422180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021561, 0.298595, 0.954136,
		0.533287, -0.810684, 0.241651,
		0.845659, 0.503619, -0.176716,
		38.178574, 32.586521, 32.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088379, 32.076992, 33.011360>,  <37.586613, 32.233990, 32.492867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088379, 32.076992, 33.011360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187305, 32.440327, 32.876453>,  <38.246662, 32.658329, 32.795509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187305, 32.440327, 32.876453>,  <38.088379, 32.076992, 33.011360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187305, 32.440327, 32.876453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045906, 0.358676, 0.932332,
		0.967846, -0.215101, 0.130406,
		0.247319, 0.908341, -0.337269,
		38.261501, 32.712830, 32.775272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500561, 32.408432, 33.529663>,  <38.088379, 32.076992, 33.011360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500561, 32.408432, 33.529663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406754, 32.717148, 33.293247>,  <38.350468, 32.902378, 33.151398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406754, 32.717148, 33.293247>,  <38.500561, 32.408432, 33.529663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406754, 32.717148, 33.293247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116828, 0.625971, 0.771046,
		0.965065, 0.111777, -0.236971,
		-0.234522, 0.771794, -0.591044,
		38.336395, 32.948685, 33.115932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993134, 32.888916, 33.637188>,  <38.500561, 32.408432, 33.529663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993134, 32.888916, 33.637188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672192, 33.076733, 33.489807>,  <38.479626, 33.189423, 33.401379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672192, 33.076733, 33.489807>,  <38.993134, 32.888916, 33.637188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672192, 33.076733, 33.489807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012500, 0.603981, 0.796901,
		0.596716, 0.644003, -0.478738,
		-0.802355, 0.469540, -0.368455,
		38.431484, 33.217594, 33.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097942, 33.521786, 33.941673>,  <38.993134, 32.888916, 33.637188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097942, 33.521786, 33.941673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716431, 33.522808, 33.821468>,  <38.487526, 33.523422, 33.749348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716431, 33.522808, 33.821468>,  <39.097942, 33.521786, 33.941673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716431, 33.522808, 33.821468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239537, 0.597408, 0.765327,
		0.181479, 0.801933, -0.569182,
		-0.953775, 0.002551, -0.300510,
		38.430298, 33.523575, 33.731316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810349, 34.253597, 33.813416>,  <39.097942, 33.521786, 33.941673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810349, 34.253597, 33.813416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.546406, 33.987091, 33.952374>,  <38.388042, 33.827187, 34.035748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.546406, 33.987091, 33.952374>,  <38.810349, 34.253597, 33.813416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546406, 33.987091, 33.952374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197951, 0.600143, 0.775012,
		-0.724852, 0.442626, -0.527894,
		-0.659852, -0.666266, 0.347397,
		38.348450, 33.787212, 34.056591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086685, 34.605690, 34.050819>,  <38.810349, 34.253597, 33.813416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086685, 34.605690, 34.050819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086670, 34.245640, 34.225071>,  <38.086658, 34.029610, 34.329624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086670, 34.245640, 34.225071>,  <38.086685, 34.605690, 34.050819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086670, 34.245640, 34.225071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409364, 0.397472, 0.821241,
		-0.912371, -0.178297, -0.368495,
		-0.000042, -0.900125, 0.435631,
		38.086658, 33.975601, 34.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304173, 35.170696, 33.727585>,  <38.086685, 34.605690, 34.050819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304173, 35.170696, 33.727585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330830, 35.561340, 33.645817>,  <38.346825, 35.795727, 33.596756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330830, 35.561340, 33.645817>,  <38.304173, 35.170696, 33.727585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330830, 35.561340, 33.645817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608789, -0.122517, -0.783815,
		-0.790528, 0.176685, 0.586385,
		0.066647, 0.976612, -0.204417,
		38.350822, 35.854324, 33.584492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592575, 35.459682, 33.644299>,  <38.304173, 35.170696, 33.727585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592575, 35.459682, 33.644299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832439, 35.707829, 33.442089>,  <37.976357, 35.856716, 33.320763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832439, 35.707829, 33.442089>,  <37.592575, 35.459682, 33.644299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832439, 35.707829, 33.442089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642547, -0.003290, -0.766239,
		-0.477013, 0.784304, 0.396643,
		0.599659, 0.620368, -0.505521,
		38.012337, 35.893940, 33.290432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317848, 35.513329, 32.930809>,  <37.592575, 35.459682, 33.644299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317848, 35.513329, 32.930809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.611675, 35.775471, 32.860466>,  <37.787971, 35.932755, 32.818260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.611675, 35.775471, 32.860466>,  <37.317848, 35.513329, 32.930809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611675, 35.775471, 32.860466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263340, 0.036482, -0.964013,
		-0.625353, 0.754441, 0.199379,
		0.734565, 0.655353, -0.175861,
		37.832047, 35.972076, 32.807709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997318, 35.918655, 32.504833>,  <37.317848, 35.513329, 32.930809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997318, 35.918655, 32.504833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392437, 35.948982, 32.450420>,  <37.629509, 35.967178, 32.417774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392437, 35.948982, 32.450420>,  <36.997318, 35.918655, 32.504833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392437, 35.948982, 32.450420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133247, -0.040675, -0.990248,
		-0.080611, 0.996292, -0.030077,
		0.987799, 0.075818, -0.136032,
		37.688778, 35.971729, 32.409611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052040, 36.443718, 31.980131>,  <36.997318, 35.918655, 32.504833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052040, 36.443718, 31.980131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392681, 36.235199, 32.002136>,  <37.597065, 36.110088, 32.015339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.392681, 36.235199, 32.002136>,  <37.052040, 36.443718, 31.980131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392681, 36.235199, 32.002136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010918, -0.122563, -0.992401,
		0.524075, 0.844530, -0.110066,
		0.851602, -0.521294, 0.055011,
		37.648163, 36.078812, 32.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540749, 36.778641, 31.584368>,  <37.052040, 36.443718, 31.980131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540749, 36.778641, 31.584368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632431, 36.390572, 31.615944>,  <37.687439, 36.157730, 31.634890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.632431, 36.390572, 31.615944>,  <37.540749, 36.778641, 31.584368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632431, 36.390572, 31.615944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041879, -0.090855, -0.994983,
		0.972477, 0.224747, -0.061454,
		0.229203, -0.970172, 0.078942,
		37.701191, 36.099522, 31.639627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872604, 36.632126, 30.957102>,  <37.540749, 36.778641, 31.584368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872604, 36.632126, 30.957102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810070, 36.272648, 31.121012>,  <37.772549, 36.056961, 31.219357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810070, 36.272648, 31.121012>,  <37.872604, 36.632126, 30.957102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810070, 36.272648, 31.121012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171562, -0.383860, -0.907314,
		0.972690, -0.212147, -0.094170,
		-0.156336, -0.898691, 0.409773,
		37.763168, 36.003040, 31.243944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264355, 36.083809, 30.503454>,  <37.872604, 36.632126, 30.957102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264355, 36.083809, 30.503454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011395, 35.867928, 30.725731>,  <37.859619, 35.738400, 30.859097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011395, 35.867928, 30.725731>,  <38.264355, 36.083809, 30.503454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011395, 35.867928, 30.725731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227345, -0.556451, -0.799172,
		0.740533, -0.631727, 0.229198,
		-0.632396, -0.539706, 0.555690,
		37.821674, 35.706017, 30.892439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484241, 35.346943, 30.447990>,  <38.264355, 36.083809, 30.503454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484241, 35.346943, 30.447990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096569, 35.355701, 30.546143>,  <37.863968, 35.360958, 30.605034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096569, 35.355701, 30.546143>,  <38.484241, 35.346943, 30.447990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096569, 35.355701, 30.546143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209423, -0.597801, -0.773807,
		0.129744, -0.801346, 0.583962,
		-0.969180, 0.021898, 0.245381,
		37.805817, 35.362270, 30.619757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354355, 34.674740, 30.463362>,  <38.484241, 35.346943, 30.447990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354355, 34.674740, 30.463362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001160, 34.858536, 30.424984>,  <37.789242, 34.968811, 30.401958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.001160, 34.858536, 30.424984>,  <38.354355, 34.674740, 30.463362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001160, 34.858536, 30.424984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275111, -0.672202, -0.687357,
		-0.380323, -0.580533, 0.719956,
		-0.882988, 0.459485, -0.095943,
		37.736263, 34.996380, 30.396200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998634, 34.108311, 30.339317>,  <38.354355, 34.674740, 30.463362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998634, 34.108311, 30.339317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787090, 34.424801, 30.216509>,  <37.660164, 34.614697, 30.142824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787090, 34.424801, 30.216509>,  <37.998634, 34.108311, 30.339317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787090, 34.424801, 30.216509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199328, -0.467432, -0.861264,
		-0.824967, -0.394294, 0.404922,
		-0.528865, 0.791227, -0.307022,
		37.628429, 34.662170, 30.124403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388519, 33.876625, 29.969959>,  <37.998634, 34.108311, 30.339317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388519, 33.876625, 29.969959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437786, 34.252804, 29.843225>,  <37.467346, 34.478512, 29.767185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.437786, 34.252804, 29.843225>,  <37.388519, 33.876625, 29.969959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437786, 34.252804, 29.843225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138958, -0.299775, -0.943835,
		-0.982608, 0.160281, 0.093759,
		0.123172, 0.940449, -0.316834,
		37.474739, 34.534939, 29.748175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811302, 33.957111, 29.451635>,  <37.388519, 33.876625, 29.969959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811302, 33.957111, 29.451635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100014, 34.228653, 29.397684>,  <37.273243, 34.391579, 29.365313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100014, 34.228653, 29.397684>,  <36.811302, 33.957111, 29.451635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100014, 34.228653, 29.397684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057736, -0.135143, -0.989142,
		-0.689709, 0.721731, -0.058350,
		0.721781, 0.678852, -0.134879,
		37.316547, 34.432308, 29.357220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609322, 34.453403, 28.941111>,  <36.811302, 33.957111, 29.451635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609322, 34.453403, 28.941111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.001511, 34.527050, 28.913485>,  <37.236824, 34.571239, 28.896910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.001511, 34.527050, 28.913485>,  <36.609322, 34.453403, 28.941111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001511, 34.527050, 28.913485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025962, -0.226936, -0.973563,
		-0.194921, 0.956348, -0.217725,
		0.980475, 0.184116, -0.069063,
		37.295654, 34.582283, 28.892765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373009, 35.096954, 28.774431>,  <36.609322, 34.453403, 28.941111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373009, 35.096954, 28.774431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.026894, 35.251068, 28.646164>,  <35.819225, 35.343536, 28.569204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.026894, 35.251068, 28.646164>,  <36.373009, 35.096954, 28.774431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026894, 35.251068, 28.646164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307523, 0.097169, 0.946566,
		0.395854, 0.917669, 0.034403,
		-0.865292, 0.385282, -0.320669,
		35.767307, 35.366653, 28.549963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246979, 35.720463, 29.195452>,  <36.373009, 35.096954, 28.774431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246979, 35.720463, 29.195452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.884716, 35.633808, 29.049652>,  <35.667358, 35.581814, 28.962172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.884716, 35.633808, 29.049652>,  <36.246979, 35.720463, 29.195452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884716, 35.633808, 29.049652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417284, 0.302743, 0.856867,
		-0.075281, 0.928124, -0.364580,
		-0.905653, -0.216640, -0.364500,
		35.613022, 35.568817, 28.940302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850479, 36.240601, 29.471825>,  <36.246979, 35.720463, 29.195452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850479, 36.240601, 29.471825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601124, 35.946575, 29.365196>,  <35.451511, 35.770161, 29.301220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601124, 35.946575, 29.365196>,  <35.850479, 36.240601, 29.471825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601124, 35.946575, 29.365196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582030, 0.208576, 0.785962,
		-0.522135, 0.645114, -0.557856,
		-0.623390, -0.735067, -0.266571,
		35.414108, 35.726055, 29.285225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191280, 36.510803, 29.369635>,  <35.850479, 36.240601, 29.471825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191280, 36.510803, 29.369635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160599, 36.125290, 29.471802>,  <35.142189, 35.893982, 29.533102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160599, 36.125290, 29.471802>,  <35.191280, 36.510803, 29.369635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160599, 36.125290, 29.471802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504032, 0.258512, 0.824089,
		-0.860272, -0.065526, -0.505607,
		-0.076707, -0.963783, 0.255418,
		35.137589, 35.836155, 29.548428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588932, 36.517311, 29.637043>,  <35.191280, 36.510803, 29.369635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588932, 36.517311, 29.637043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722572, 36.160667, 29.759296>,  <34.802757, 35.946682, 29.832647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.722572, 36.160667, 29.759296>,  <34.588932, 36.517311, 29.637043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722572, 36.160667, 29.759296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419705, 0.149607, 0.895246,
		-0.843933, -0.427380, -0.324229,
		0.334103, -0.891608, 0.305631,
		34.822803, 35.893185, 29.850986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981575, 36.100895, 29.870461>,  <34.588932, 36.517311, 29.637043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981575, 36.100895, 29.870461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300381, 35.926105, 30.037230>,  <34.491665, 35.821232, 30.137291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300381, 35.926105, 30.037230>,  <33.981575, 36.100895, 29.870461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300381, 35.926105, 30.037230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515483, -0.132451, 0.846601,
		-0.314721, -0.889669, -0.330818,
		0.797012, -0.436974, 0.416924,
		34.539486, 35.795013, 30.162306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666733, 35.490891, 30.106363>,  <33.981575, 36.100895, 29.870461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666733, 35.490891, 30.106363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.002678, 35.536816, 30.318569>,  <34.204247, 35.564373, 30.445892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.002678, 35.536816, 30.318569>,  <33.666733, 35.490891, 30.106363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002678, 35.536816, 30.318569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478419, -0.305104, 0.823424,
		0.256403, -0.945372, -0.201316,
		0.839865, 0.114815, 0.530513,
		34.254639, 35.571259, 30.477724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662949, 35.031132, 30.664724>,  <33.666733, 35.490891, 30.106363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662949, 35.031132, 30.664724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.954220, 35.267448, 30.803707>,  <34.128983, 35.409237, 30.887096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.954220, 35.267448, 30.803707>,  <33.662949, 35.031132, 30.664724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954220, 35.267448, 30.803707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369163, -0.089057, 0.925088,
		0.577476, -0.801895, 0.153248,
		0.728176, 0.590790, 0.347458,
		34.172672, 35.444687, 30.907944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885387, 34.748993, 31.278950>,  <33.662949, 35.031132, 30.664724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885387, 34.748993, 31.278950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.966805, 35.140308, 31.294500>,  <34.015656, 35.375099, 31.303831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.966805, 35.140308, 31.294500>,  <33.885387, 34.748993, 31.278950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966805, 35.140308, 31.294500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438874, 0.055676, 0.896822,
		0.875191, -0.199605, 0.440680,
		0.203546, 0.978293, 0.038874,
		34.027870, 35.433796, 31.306162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295712, 34.875057, 31.777124>,  <33.885387, 34.748993, 31.278950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295712, 34.875057, 31.777124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123417, 35.231289, 31.718695>,  <34.020042, 35.445026, 31.683638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.123417, 35.231289, 31.718695>,  <34.295712, 34.875057, 31.777124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123417, 35.231289, 31.718695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350267, -0.015800, 0.936516,
		0.831734, 0.454554, 0.318746,
		-0.430734, 0.890579, -0.146074,
		33.994198, 35.498463, 31.674873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380230, 35.200146, 32.410519>,  <34.295712, 34.875057, 31.777124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380230, 35.200146, 32.410519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.095219, 35.394741, 32.208275>,  <33.924213, 35.511497, 32.086929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.095219, 35.394741, 32.208275>,  <34.380230, 35.200146, 32.410519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095219, 35.394741, 32.208275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578241, 0.001018, 0.815866,
		0.397424, 0.873686, 0.280582,
		-0.712525, 0.486488, -0.505605,
		33.881462, 35.540688, 32.056595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077858, 35.880062, 32.802212>,  <34.380230, 35.200146, 32.410519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077858, 35.880062, 32.802212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.815857, 35.711887, 32.551071>,  <33.658657, 35.610981, 32.400387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.815857, 35.711887, 32.551071>,  <34.077858, 35.880062, 32.802212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815857, 35.711887, 32.551071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701087, 0.028202, 0.712518,
		-0.281862, 0.906883, -0.313235,
		-0.655005, -0.420437, -0.627855,
		33.619354, 35.585758, 32.362713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.896046, 35.468166, 24.700092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542286, 35.289783, 24.755171>,  <36.330029, 35.182755, 24.788218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542286, 35.289783, 24.755171>,  <36.896046, 35.468166, 24.700092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542286, 35.289783, 24.755171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197822, 0.625374, 0.754834,
		-0.422736, 0.640335, -0.641300,
		-0.884398, -0.445959, 0.137696,
		36.276966, 35.155994, 24.796480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373539, 36.010662, 24.948334>,  <36.896046, 35.468166, 24.700092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373539, 36.010662, 24.948334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166405, 35.681465, 25.041737>,  <36.042126, 35.483948, 25.097778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166405, 35.681465, 25.041737>,  <36.373539, 36.010662, 24.948334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166405, 35.681465, 25.041737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115720, 0.337833, 0.934065,
		-0.847619, 0.456669, -0.270178,
		-0.517833, -0.822996, 0.233507,
		36.011055, 35.434566, 25.111790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781151, 36.242996, 25.337948>,  <36.373539, 36.010662, 24.948334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781151, 36.242996, 25.337948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811497, 35.861504, 25.454325>,  <35.829704, 35.632610, 25.524151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811497, 35.861504, 25.454325>,  <35.781151, 36.242996, 25.337948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811497, 35.861504, 25.454325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296041, 0.257084, 0.919928,
		-0.952158, -0.155921, -0.262839,
		0.075864, -0.953728, 0.290944,
		35.834255, 35.575386, 25.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236176, 36.146614, 25.761866>,  <35.781151, 36.242996, 25.337948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236176, 36.146614, 25.761866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457436, 35.826820, 25.855549>,  <35.590191, 35.634945, 25.911758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457436, 35.826820, 25.855549>,  <35.236176, 36.146614, 25.761866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457436, 35.826820, 25.855549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112365, 0.206964, 0.971874,
		-0.825472, -0.563905, 0.024647,
		0.553146, -0.799485, 0.234206,
		35.623379, 35.586975, 25.925810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937038, 35.901035, 26.323820>,  <35.236176, 36.146614, 25.761866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937038, 35.901035, 26.323820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290882, 35.714523, 26.320919>,  <35.503189, 35.602615, 26.319180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290882, 35.714523, 26.320919>,  <34.937038, 35.901035, 26.323820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290882, 35.714523, 26.320919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067754, -0.143894, 0.987271,
		-0.461388, -0.872856, -0.158882,
		0.884607, -0.466280, -0.007251,
		35.556263, 35.574638, 26.318743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844551, 35.161610, 26.643419>,  <34.937038, 35.901035, 26.323820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844551, 35.161610, 26.643419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224186, 35.280602, 26.684883>,  <35.451965, 35.351997, 26.709763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224186, 35.280602, 26.684883>,  <34.844551, 35.161610, 26.643419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224186, 35.280602, 26.684883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013259, -0.291049, 0.956616,
		0.314743, -0.909284, -0.272285,
		0.949084, 0.297478, 0.103662,
		35.508911, 35.369846, 26.715982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138237, 34.637577, 27.112490>,  <34.844551, 35.161610, 26.643419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138237, 34.637577, 27.112490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378078, 34.952972, 27.167274>,  <35.521984, 35.142212, 27.200146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378078, 34.952972, 27.167274>,  <35.138237, 34.637577, 27.112490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378078, 34.952972, 27.167274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034814, -0.145278, 0.988778,
		0.799540, -0.597642, -0.059659,
		0.599602, 0.788491, 0.136962,
		35.557961, 35.189518, 27.208363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766514, 34.419598, 27.622398>,  <35.138237, 34.637577, 27.112490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766514, 34.419598, 27.622398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727150, 34.817513, 27.633045>,  <35.703533, 35.056263, 27.639433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727150, 34.817513, 27.633045>,  <35.766514, 34.419598, 27.622398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727150, 34.817513, 27.633045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337632, -0.058535, 0.939457,
		0.936120, 0.083464, 0.341633,
		-0.098408, 0.994790, 0.026615,
		35.697628, 35.115948, 27.641029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117756, 34.638538, 28.197735>,  <35.766514, 34.419598, 27.622398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117756, 34.638538, 28.197735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856956, 34.929039, 28.110600>,  <35.700478, 35.103340, 28.058317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856956, 34.929039, 28.110600>,  <36.117756, 34.638538, 28.197735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856956, 34.929039, 28.110600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235710, 0.078925, 0.968613,
		0.720650, 0.682883, 0.119726,
		-0.652000, 0.726252, -0.217840,
		35.661358, 35.146915, 28.045248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811714, 34.748203, 28.274599>,  <36.117756, 34.638538, 28.197735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811714, 34.748203, 28.274599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183178, 34.641178, 28.377357>,  <37.406055, 34.576962, 28.439013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183178, 34.641178, 28.377357>,  <36.811714, 34.748203, 28.274599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183178, 34.641178, 28.377357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258153, -0.031096, -0.965603,
		0.266347, 0.963039, 0.040195,
		0.928664, -0.267562, 0.256894,
		37.461777, 34.560909, 28.454426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182224, 35.090076, 27.748142>,  <36.811714, 34.748203, 28.274599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182224, 35.090076, 27.748142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424747, 34.818394, 27.913582>,  <37.570263, 34.655384, 28.012846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424747, 34.818394, 27.913582>,  <37.182224, 35.090076, 27.748142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424747, 34.818394, 27.913582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279777, -0.304660, -0.910444,
		0.744389, 0.667725, 0.005309,
		0.606308, -0.679210, 0.413599,
		37.606640, 34.614632, 28.037663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866650, 35.078083, 27.407085>,  <37.182224, 35.090076, 27.748142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866650, 35.078083, 27.407085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849724, 34.728146, 27.600105>,  <37.839569, 34.518181, 27.715918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849724, 34.728146, 27.600105>,  <37.866650, 35.078083, 27.407085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849724, 34.728146, 27.600105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431006, -0.451712, -0.781147,
		0.901356, 0.174929, 0.396177,
		-0.042313, -0.874846, 0.482549,
		37.837029, 34.465691, 27.744869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515034, 34.715591, 27.319288>,  <37.866650, 35.078083, 27.407085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515034, 34.715591, 27.319288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257694, 34.428154, 27.424904>,  <38.103291, 34.255692, 27.488274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257694, 34.428154, 27.424904>,  <38.515034, 34.715591, 27.319288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257694, 34.428154, 27.424904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319779, -0.565604, -0.760154,
		0.695587, -0.404611, 0.593674,
		-0.643351, -0.718598, 0.264041,
		38.064690, 34.212574, 27.504116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905029, 33.999729, 27.527946>,  <38.515034, 34.715591, 27.319288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905029, 33.999729, 27.527946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535103, 33.930149, 27.392624>,  <38.313145, 33.888401, 27.311430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535103, 33.930149, 27.392624>,  <38.905029, 33.999729, 27.527946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535103, 33.930149, 27.392624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377770, -0.524525, -0.762996,
		-0.044727, -0.833435, 0.550804,
		-0.924819, -0.173951, -0.338308,
		38.257656, 33.877964, 27.291132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958675, 33.328510, 27.246279>,  <38.905029, 33.999729, 27.527946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958675, 33.328510, 27.246279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613163, 33.472851, 27.105610>,  <38.405857, 33.559456, 27.021208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613163, 33.472851, 27.105610>,  <38.958675, 33.328510, 27.246279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613163, 33.472851, 27.105610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089199, -0.577404, -0.811572,
		-0.495914, -0.732387, 0.466561,
		-0.863778, 0.360853, -0.351670,
		38.354031, 33.581108, 27.000109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640987, 32.789169, 26.990040>,  <38.958675, 33.328510, 27.246279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640987, 32.789169, 26.990040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429848, 33.079006, 26.812798>,  <38.303165, 33.252907, 26.706451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429848, 33.079006, 26.812798>,  <38.640987, 32.789169, 26.990040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429848, 33.079006, 26.812798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091410, -0.470211, -0.877807,
		-0.844406, -0.503852, 0.181964,
		-0.527847, 0.724593, -0.443107,
		38.271492, 33.296383, 26.679865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086014, 32.468388, 26.668280>,  <38.640987, 32.789169, 26.990040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086014, 32.468388, 26.668280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101269, 32.812202, 26.464424>,  <38.110424, 33.018494, 26.342110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101269, 32.812202, 26.464424>,  <38.086014, 32.468388, 26.668280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101269, 32.812202, 26.464424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151535, -0.509088, -0.847270,
		-0.987716, -0.044913, -0.149668,
		0.038141, 0.859542, -0.509640,
		38.112709, 33.070065, 26.311533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804451, 32.359180, 26.054350>,  <38.086014, 32.468388, 26.668280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804451, 32.359180, 26.054350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004387, 32.699383, 25.988880>,  <38.124348, 32.903503, 25.949598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004387, 32.699383, 25.988880>,  <37.804451, 32.359180, 26.054350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004387, 32.699383, 25.988880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185247, -0.289585, -0.939055,
		-0.846073, 0.439060, -0.302302,
		0.499844, 0.850510, -0.163675,
		38.154339, 32.954536, 25.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633228, 32.627964, 25.432985>,  <37.804451, 32.359180, 26.054350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633228, 32.627964, 25.432985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975899, 32.822350, 25.502205>,  <38.181499, 32.938980, 25.543737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975899, 32.822350, 25.502205>,  <37.633228, 32.627964, 25.432985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975899, 32.822350, 25.502205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205183, -0.013217, -0.978634,
		-0.473295, 0.873878, -0.111034,
		0.856675, 0.485965, 0.173050,
		38.232903, 32.968140, 25.554119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715939, 33.101776, 24.852499>,  <37.633228, 32.627964, 25.432985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715939, 33.101776, 24.852499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078960, 33.032074, 25.005329>,  <38.296772, 32.990253, 25.097027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078960, 33.032074, 25.005329>,  <37.715939, 33.101776, 24.852499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078960, 33.032074, 25.005329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369208, -0.102402, -0.923688,
		0.200082, 0.979362, -0.028599,
		0.907553, -0.174255, 0.382077,
		38.351227, 32.979797, 25.119953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262054, 33.531353, 24.495506>,  <37.715939, 33.101776, 24.852499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262054, 33.531353, 24.495506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436668, 33.201664, 24.639782>,  <38.541435, 33.003849, 24.726347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436668, 33.201664, 24.639782>,  <38.262054, 33.531353, 24.495506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436668, 33.201664, 24.639782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280222, -0.256400, -0.925059,
		0.854935, 0.504891, 0.119039,
		0.436533, -0.824223, 0.360687,
		38.567627, 32.954395, 24.747988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822399, 33.460442, 24.143583>,  <38.262054, 33.531353, 24.495506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822399, 33.460442, 24.143583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809303, 33.100037, 24.316603>,  <38.801445, 32.883793, 24.420414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809303, 33.100037, 24.316603>,  <38.822399, 33.460442, 24.143583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809303, 33.100037, 24.316603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217273, -0.428848, -0.876859,
		0.975562, 0.065276, 0.209805,
		-0.032737, -0.901015, 0.432550,
		38.799480, 32.829731, 24.446367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364037, 33.122051, 23.804186>,  <38.822399, 33.460442, 24.143583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364037, 33.122051, 23.804186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143276, 32.839466, 23.981419>,  <39.010822, 32.669914, 24.087757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143276, 32.839466, 23.981419>,  <39.364037, 33.122051, 23.804186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143276, 32.839466, 23.981419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185309, -0.621941, -0.760822,
		0.813062, -0.337789, 0.474162,
		-0.551898, -0.706462, 0.443081,
		38.977707, 32.627529, 24.114344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.044769, 28.427980, 24.370522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.400597, 28.610226, 24.383657>,  <32.614094, 28.719572, 24.391539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.400597, 28.610226, 24.383657>,  <32.044769, 28.427980, 24.370522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400597, 28.610226, 24.383657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127905, 0.179426, 0.975421,
		0.438523, -0.871907, 0.217888,
		0.889572, 0.455613, 0.032839,
		32.667469, 28.746910, 24.393509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068726, 28.423622, 25.081985>,  <32.044769, 28.427980, 24.370522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068726, 28.423622, 25.081985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351044, 28.686172, 24.975386>,  <32.520435, 28.843702, 24.911425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.351044, 28.686172, 24.975386>,  <32.068726, 28.423622, 25.081985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351044, 28.686172, 24.975386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257107, 0.113204, 0.959730,
		0.660115, -0.745890, -0.088861,
		0.705794, 0.656378, -0.266501,
		32.562782, 28.883085, 24.895435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555969, 28.239935, 25.486309>,  <32.068726, 28.423622, 25.081985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555969, 28.239935, 25.486309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664921, 28.603676, 25.360525>,  <32.730293, 28.821920, 25.285055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664921, 28.603676, 25.360525>,  <32.555969, 28.239935, 25.486309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664921, 28.603676, 25.360525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280541, 0.237558, 0.929980,
		0.920383, -0.341529, -0.190404,
		0.272383, 0.909353, -0.314458,
		32.746635, 28.876482, 25.266188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321377, 28.413237, 25.727665>,  <32.555969, 28.239935, 25.486309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321377, 28.413237, 25.727665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.122894, 28.755960, 25.671581>,  <33.003807, 28.961596, 25.637932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.122894, 28.755960, 25.671581>,  <33.321377, 28.413237, 25.727665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122894, 28.755960, 25.671581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411704, 0.374392, 0.830862,
		0.764384, 0.354551, -0.538526,
		-0.496203, 0.856811, -0.140209,
		32.974033, 29.013004, 25.629519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714493, 28.964046, 25.995886>,  <33.321377, 28.413237, 25.727665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714493, 28.964046, 25.995886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376369, 29.174763, 25.960234>,  <33.173496, 29.301193, 25.938843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376369, 29.174763, 25.960234>,  <33.714493, 28.964046, 25.995886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376369, 29.174763, 25.960234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218747, 0.493439, 0.841824,
		0.487447, 0.692104, -0.532342,
		-0.845308, 0.526792, -0.089129,
		33.122776, 29.332800, 25.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866875, 29.705086, 26.078880>,  <33.714493, 28.964046, 25.995886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866875, 29.705086, 26.078880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.473942, 29.690401, 26.152290>,  <33.238182, 29.681589, 26.196337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.473942, 29.690401, 26.152290>,  <33.866875, 29.705086, 26.078880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473942, 29.690401, 26.152290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130575, 0.568088, 0.812543,
		-0.134091, 0.822148, -0.553255,
		-0.982329, -0.036713, 0.183527,
		33.179245, 29.679386, 26.207348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587978, 30.472515, 25.987072>,  <33.866875, 29.705086, 26.078880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587978, 30.472515, 25.987072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384533, 30.243650, 26.244427>,  <33.262466, 30.106331, 26.398840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384533, 30.243650, 26.244427>,  <33.587978, 30.472515, 25.987072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384533, 30.243650, 26.244427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069329, 0.717614, 0.692981,
		-0.858201, 0.397062, -0.325319,
		-0.508610, -0.572163, 0.643385,
		33.231949, 30.072001, 26.437443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260471, 30.967411, 26.349531>,  <33.587978, 30.472515, 25.987072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260471, 30.967411, 26.349531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190590, 30.637468, 26.564600>,  <33.148663, 30.439503, 26.693642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190590, 30.637468, 26.564600>,  <33.260471, 30.967411, 26.349531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190590, 30.637468, 26.564600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090056, 0.557166, 0.825503,
		-0.980495, 0.095795, -0.171621,
		-0.174700, -0.824857, 0.537671,
		33.138180, 30.390011, 26.725901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707798, 31.191236, 26.857054>,  <33.260471, 30.967411, 26.349531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707798, 31.191236, 26.857054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879227, 30.867563, 27.017826>,  <32.982086, 30.673359, 27.114288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879227, 30.867563, 27.017826>,  <32.707798, 31.191236, 26.857054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879227, 30.867563, 27.017826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148889, 0.375521, 0.914777,
		-0.891155, -0.451892, 0.040460,
		0.428574, -0.809184, 0.401929,
		33.007797, 30.624807, 27.138405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226143, 30.916168, 27.528641>,  <32.707798, 31.191236, 26.857054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226143, 30.916168, 27.528641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594345, 30.761328, 27.549875>,  <32.815266, 30.668423, 27.562616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.594345, 30.761328, 27.549875>,  <32.226143, 30.916168, 27.528641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594345, 30.761328, 27.549875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012803, 0.105914, 0.994293,
		-0.390516, -0.915933, 0.092538,
		0.920507, -0.387103, 0.053088,
		32.870499, 30.645197, 27.565802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181072, 30.539152, 28.118687>,  <32.226143, 30.916168, 27.528641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181072, 30.539152, 28.118687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.577618, 30.558285, 28.069845>,  <32.815544, 30.569765, 28.040541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.577618, 30.558285, 28.069845>,  <32.181072, 30.539152, 28.118687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577618, 30.558285, 28.069845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114507, 0.138081, 0.983779,
		0.063916, -0.989265, 0.131411,
		0.991364, 0.047831, -0.122103,
		32.875027, 30.572634, 28.033215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520016, 30.165239, 28.660374>,  <32.181072, 30.539152, 28.118687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520016, 30.165239, 28.660374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.814327, 30.416998, 28.560381>,  <32.990913, 30.568052, 28.500385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.814327, 30.416998, 28.560381>,  <32.520016, 30.165239, 28.660374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814327, 30.416998, 28.560381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069612, 0.296885, 0.952372,
		0.673635, -0.718137, 0.174628,
		0.735778, 0.629395, -0.249983,
		33.035061, 30.605816, 28.485386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143986, 30.030632, 29.124979>,  <32.520016, 30.165239, 28.660374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143986, 30.030632, 29.124979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158710, 30.398287, 28.968094>,  <33.167545, 30.618879, 28.873962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158710, 30.398287, 28.968094>,  <33.143986, 30.030632, 29.124979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158710, 30.398287, 28.968094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051938, 0.390187, 0.919269,
		0.997972, -0.054209, -0.033375,
		0.036810, 0.919138, -0.392211,
		33.169754, 30.674028, 28.850430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472637, 30.397528, 29.635143>,  <33.143986, 30.030632, 29.124979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472637, 30.397528, 29.635143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350304, 30.693466, 29.395447>,  <33.276901, 30.871029, 29.251629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.350304, 30.693466, 29.395447>,  <33.472637, 30.397528, 29.635143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350304, 30.693466, 29.395447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043742, 0.639653, 0.767418,
		0.951078, 0.208493, -0.227992,
		-0.305837, 0.739848, -0.599240,
		33.258553, 30.915421, 29.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161613, 30.485561, 29.221020>,  <33.472637, 30.397528, 29.635143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161613, 30.485561, 29.221020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505814, 30.355766, 29.378119>,  <34.712334, 30.277889, 29.472378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505814, 30.355766, 29.378119>,  <34.161613, 30.485561, 29.221020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505814, 30.355766, 29.378119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304381, -0.290733, -0.907098,
		0.408527, 0.900101, -0.151407,
		0.860499, -0.324489, 0.392745,
		34.763962, 30.258419, 29.495943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573837, 30.562105, 28.664114>,  <34.161613, 30.485561, 29.221020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573837, 30.562105, 28.664114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788715, 30.321949, 28.901079>,  <34.917641, 30.177855, 29.043259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.788715, 30.321949, 28.901079>,  <34.573837, 30.562105, 28.664114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788715, 30.321949, 28.901079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397437, -0.439322, -0.805630,
		0.743954, 0.668226, 0.002618,
		0.537193, -0.600392, 0.592413,
		34.949875, 30.141830, 29.078804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280537, 30.534403, 28.442152>,  <34.573837, 30.562105, 28.664114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280537, 30.534403, 28.442152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277786, 30.197947, 28.658461>,  <35.276138, 29.996073, 28.788246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277786, 30.197947, 28.658461>,  <35.280537, 30.534403, 28.442152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277786, 30.197947, 28.658461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425931, -0.491739, -0.759458,
		0.904729, 0.225112, 0.361648,
		-0.006873, -0.841141, 0.540773,
		35.275723, 29.945604, 28.820692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917484, 30.274055, 28.257231>,  <35.280537, 30.534403, 28.442152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917484, 30.274055, 28.257231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705757, 29.970676, 28.409325>,  <35.578720, 29.788649, 28.500582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705757, 29.970676, 28.409325>,  <35.917484, 30.274055, 28.257231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705757, 29.970676, 28.409325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356871, -0.605625, -0.711239,
		0.769719, -0.240776, 0.591236,
		-0.529317, -0.758449, 0.380235,
		35.546963, 29.743141, 28.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373714, 29.758709, 28.428274>,  <35.917484, 30.274055, 28.257231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373714, 29.758709, 28.428274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027916, 29.562912, 28.382586>,  <35.820438, 29.445433, 28.355173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027916, 29.562912, 28.382586>,  <36.373714, 29.758709, 28.428274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027916, 29.562912, 28.382586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335402, -0.392514, -0.856410,
		0.374375, -0.778671, 0.503503,
		-0.864494, -0.489494, -0.114220,
		35.768566, 29.416063, 28.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501736, 28.955463, 28.346994>,  <36.373714, 29.758709, 28.428274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501736, 28.955463, 28.346994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145210, 29.051514, 28.193163>,  <35.931293, 29.109144, 28.100864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.145210, 29.051514, 28.193163>,  <36.501736, 28.955463, 28.346994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145210, 29.051514, 28.193163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226156, -0.499697, -0.836156,
		-0.392957, -0.832251, 0.391080,
		-0.891313, 0.240128, -0.384578,
		35.877815, 29.123552, 28.077789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333038, 28.373768, 27.909462>,  <36.501736, 28.955463, 28.346994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333038, 28.373768, 27.909462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098118, 28.676235, 27.794025>,  <35.957165, 28.857716, 27.724764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098118, 28.676235, 27.794025>,  <36.333038, 28.373768, 27.909462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098118, 28.676235, 27.794025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164039, -0.237956, -0.957323,
		-0.792571, -0.609577, 0.015711,
		-0.587301, 0.756169, -0.288592,
		35.921928, 28.903086, 27.707447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793522, 28.050598, 27.380413>,  <36.333038, 28.373768, 27.909462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793522, 28.050598, 27.380413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829041, 28.447313, 27.343592>,  <35.850349, 28.685343, 27.321499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829041, 28.447313, 27.343592>,  <35.793522, 28.050598, 27.380413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829041, 28.447313, 27.343592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077960, -0.099054, -0.992024,
		-0.992994, 0.080910, -0.086115,
		0.088795, 0.991787, -0.092052,
		35.855679, 28.744850, 27.315975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193825, 28.161446, 27.103022>,  <35.793522, 28.050598, 27.380413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193825, 28.161446, 27.103022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477707, 28.434935, 27.035091>,  <35.648037, 28.599028, 26.994333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477707, 28.434935, 27.035091>,  <35.193825, 28.161446, 27.103022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477707, 28.434935, 27.035091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143854, -0.095335, -0.984996,
		-0.689653, 0.723489, 0.030696,
		0.709708, 0.683721, -0.169825,
		35.690620, 28.640051, 26.984144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940437, 28.628216, 26.573498>,  <35.193825, 28.161446, 27.103022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940437, 28.628216, 26.573498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.337685, 28.655153, 26.535187>,  <35.576035, 28.671316, 26.512201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.337685, 28.655153, 26.535187>,  <34.940437, 28.628216, 26.573498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337685, 28.655153, 26.535187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095590, -0.005990, -0.995403,
		-0.067609, 0.997712, 0.000489,
		0.993122, 0.067344, -0.095776,
		35.635620, 28.675356, 26.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007378, 29.112072, 26.138664>,  <34.940437, 28.628216, 26.573498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007378, 29.112072, 26.138664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368492, 28.940168, 26.131895>,  <35.585159, 28.837027, 26.127834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368492, 28.940168, 26.131895>,  <35.007378, 29.112072, 26.138664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368492, 28.940168, 26.131895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057448, -0.081499, -0.995016,
		0.426239, 0.899258, -0.098265,
		0.902785, -0.429760, -0.016923,
		35.639328, 28.811241, 26.126818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501656, 29.392199, 25.584982>,  <35.007378, 29.112072, 26.138664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501656, 29.392199, 25.584982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665943, 29.034981, 25.658503>,  <35.764515, 28.820650, 25.702616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665943, 29.034981, 25.658503>,  <35.501656, 29.392199, 25.584982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665943, 29.034981, 25.658503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017692, -0.193746, -0.980892,
		0.911590, 0.406123, -0.063776,
		0.410719, -0.893043, 0.183802,
		35.789158, 28.767067, 25.713644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143364, 29.239134, 25.096111>,  <35.501656, 29.392199, 25.584982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143364, 29.239134, 25.096111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053932, 28.871029, 25.224567>,  <36.000275, 28.650166, 25.301641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053932, 28.871029, 25.224567>,  <36.143364, 29.239134, 25.096111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053932, 28.871029, 25.224567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072755, -0.344320, -0.936029,
		0.971967, -0.185912, 0.143936,
		-0.223579, -0.920261, 0.321142,
		35.986858, 28.594950, 25.320910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651897, 28.862230, 24.799427>,  <36.143364, 29.239134, 25.096111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651897, 28.862230, 24.799427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356796, 28.607101, 24.887882>,  <36.179737, 28.454023, 24.940956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.356796, 28.607101, 24.887882>,  <36.651897, 28.862230, 24.799427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356796, 28.607101, 24.887882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003218, -0.330899, -0.943661,
		0.675063, -0.695477, 0.246174,
		-0.737753, -0.637823, 0.221140,
		36.135471, 28.415754, 24.954224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259441, 28.474266, 25.128057>,  <36.651897, 28.862230, 24.799427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259441, 28.474266, 25.128057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645699, 28.568298, 25.083763>,  <37.877453, 28.624718, 25.057186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645699, 28.568298, 25.083763>,  <37.259441, 28.474266, 25.128057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645699, 28.568298, 25.083763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027859, 0.330034, 0.943558,
		0.258359, -0.914229, 0.312147,
		0.965647, 0.235080, -0.110737,
		37.935394, 28.638823, 25.050543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492081, 28.326138, 25.712326>,  <37.259441, 28.474266, 25.128057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492081, 28.326138, 25.712326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815342, 28.535486, 25.604277>,  <38.009300, 28.661095, 25.539448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815342, 28.535486, 25.604277>,  <37.492081, 28.326138, 25.712326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815342, 28.535486, 25.604277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189799, 0.202741, 0.960662,
		0.557548, -0.827634, 0.064511,
		0.808156, 0.523371, -0.270122,
		38.057789, 28.692497, 25.523239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993649, 28.249166, 26.230110>,  <37.492081, 28.326138, 25.712326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993649, 28.249166, 26.230110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082573, 28.594086, 26.048111>,  <38.135929, 28.801037, 25.938911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082573, 28.594086, 26.048111>,  <37.993649, 28.249166, 26.230110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082573, 28.594086, 26.048111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145933, 0.431988, 0.889995,
		0.963993, -0.264253, -0.029803,
		0.222309, 0.862298, -0.454996,
		38.149265, 28.852776, 25.911612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572567, 28.544479, 26.555586>,  <37.993649, 28.249166, 26.230110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572567, 28.544479, 26.555586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453949, 28.862343, 26.343708>,  <38.382778, 29.053061, 26.216581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453949, 28.862343, 26.343708>,  <38.572567, 28.544479, 26.555586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453949, 28.862343, 26.343708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263515, 0.601195, 0.754403,
		0.917944, 0.084133, -0.387687,
		-0.296546, 0.794661, -0.529693,
		38.364986, 29.100740, 26.184799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109367, 29.048998, 26.399605>,  <38.572567, 28.544479, 26.555586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109367, 29.048998, 26.399605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777634, 29.270557, 26.370218>,  <38.578594, 29.403494, 26.352587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777634, 29.270557, 26.370218>,  <39.109367, 29.048998, 26.399605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777634, 29.270557, 26.370218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309550, 0.564926, 0.764877,
		0.465167, 0.611600, -0.639973,
		-0.829336, 0.553899, -0.073465,
		38.528831, 29.436728, 26.348179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256794, 29.725420, 26.582123>,  <39.109367, 29.048998, 26.399605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256794, 29.725420, 26.582123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862793, 29.722410, 26.651072>,  <38.626392, 29.720604, 26.692440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862793, 29.722410, 26.651072>,  <39.256794, 29.725420, 26.582123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862793, 29.722410, 26.651072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143977, 0.514670, 0.845213,
		-0.095074, 0.857355, -0.505868,
		-0.985003, -0.007524, 0.172371,
		38.567291, 29.720154, 26.702784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058628, 30.444672, 26.879833>,  <39.256794, 29.725420, 26.582123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058628, 30.444672, 26.879833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.741077, 30.220594, 26.974447>,  <38.550549, 30.086147, 27.031216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.741077, 30.220594, 26.974447>,  <39.058628, 30.444672, 26.879833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741077, 30.220594, 26.974447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036390, 0.344518, 0.938074,
		-0.606993, 0.753320, -0.253118,
		-0.793873, -0.560194, 0.236534,
		38.502914, 30.052536, 27.045408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661339, 30.899145, 27.233948>,  <39.058628, 30.444672, 26.879833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661339, 30.899145, 27.233948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508633, 30.541702, 27.328367>,  <38.417007, 30.327236, 27.385019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508633, 30.541702, 27.328367>,  <38.661339, 30.899145, 27.233948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508633, 30.541702, 27.328367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242309, 0.343227, 0.907459,
		-0.891931, 0.289240, -0.347562,
		-0.381766, -0.893608, 0.236049,
		38.394104, 30.273621, 27.399181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974403, 31.037333, 27.385948>,  <38.661339, 30.899145, 27.233948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974403, 31.037333, 27.385948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.101440, 30.703991, 27.566904>,  <38.177662, 30.503986, 27.675478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.101440, 30.703991, 27.566904>,  <37.974403, 31.037333, 27.385948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101440, 30.703991, 27.566904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257943, 0.383172, 0.886930,
		-0.912471, -0.398370, -0.093267,
		0.317589, -0.833355, 0.452391,
		38.196716, 30.453985, 27.702621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520618, 30.865356, 27.890636>,  <37.974403, 31.037333, 27.385948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520618, 30.865356, 27.890636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854774, 30.676891, 28.003864>,  <38.055267, 30.563812, 28.071800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854774, 30.676891, 28.003864>,  <37.520618, 30.865356, 27.890636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854774, 30.676891, 28.003864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108529, 0.363460, 0.925267,
		-0.538836, -0.803680, 0.252496,
		0.835390, -0.471164, 0.283068,
		38.105392, 30.535542, 28.088785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412140, 30.577702, 28.560490>,  <37.520618, 30.865356, 27.890636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412140, 30.577702, 28.560490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810699, 30.592873, 28.530159>,  <38.049835, 30.601976, 28.511961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.810699, 30.592873, 28.530159>,  <37.412140, 30.577702, 28.560490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810699, 30.592873, 28.530159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068472, 0.167458, 0.983499,
		0.050001, -0.985150, 0.164258,
		0.996400, 0.037929, -0.075828,
		38.109619, 30.604252, 28.507410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678455, 30.338219, 29.202652>,  <37.412140, 30.577702, 28.560490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678455, 30.338219, 29.202652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006008, 30.508512, 29.048677>,  <38.202541, 30.610689, 28.956293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.006008, 30.508512, 29.048677>,  <37.678455, 30.338219, 29.202652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006008, 30.508512, 29.048677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295378, 0.262441, 0.918628,
		0.492116, -0.865952, 0.089155,
		0.818885, 0.425737, -0.384935,
		38.251675, 30.636234, 28.933197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206249, 30.028484, 29.600641>,  <37.678455, 30.338219, 29.202652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206249, 30.028484, 29.600641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368946, 30.352049, 29.430830>,  <38.466564, 30.546186, 29.328943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.368946, 30.352049, 29.430830>,  <38.206249, 30.028484, 29.600641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368946, 30.352049, 29.430830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272948, 0.335869, 0.901494,
		0.871813, -0.482553, -0.084177,
		0.406746, 0.808910, -0.424527,
		38.490971, 30.594723, 29.303473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027042, 30.037256, 29.651665>,  <38.206249, 30.028484, 29.600641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027042, 30.037256, 29.651665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884033, 30.409691, 29.622667>,  <38.798225, 30.633152, 29.605268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884033, 30.409691, 29.622667>,  <39.027042, 30.037256, 29.651665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884033, 30.409691, 29.622667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418454, 0.229109, 0.878866,
		0.834908, 0.283882, -0.471529,
		-0.357526, 0.931086, -0.072493,
		38.776775, 30.689016, 29.600920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.760006, 32.528858, 23.708761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383179, 32.399342, 23.743805>,  <39.157082, 32.321632, 23.764832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383179, 32.399342, 23.743805>,  <39.760006, 32.528858, 23.708761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383179, 32.399342, 23.743805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198148, -0.747927, -0.633515,
		0.270649, -0.579453, 0.768754,
		-0.942065, -0.323788, 0.087608,
		39.100559, 32.302204, 23.770086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868160, 31.769459, 23.709848>,  <39.760006, 32.528858, 23.708761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868160, 31.769459, 23.709848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475182, 31.800112, 23.641815>,  <39.239395, 31.818502, 23.600994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475182, 31.800112, 23.641815>,  <39.868160, 31.769459, 23.709848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475182, 31.800112, 23.641815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053482, -0.757764, -0.650334,
		-0.178719, -0.648014, 0.740363,
		-0.982445, 0.076631, -0.170084,
		39.180447, 31.823101, 23.590790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523075, 31.098225, 23.821203>,  <39.868160, 31.769459, 23.709848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523075, 31.098225, 23.821203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280102, 31.320864, 23.594496>,  <39.134319, 31.454447, 23.458471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.280102, 31.320864, 23.594496>,  <39.523075, 31.098225, 23.821203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280102, 31.320864, 23.594496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033032, -0.730560, -0.682049,
		-0.793689, -0.395573, 0.462148,
		-0.607427, 0.556600, -0.566771,
		39.097874, 31.487843, 23.424465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103848, 30.590139, 23.523186>,  <39.523075, 31.098225, 23.821203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103848, 30.590139, 23.523186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.050884, 30.917294, 23.299212>,  <39.019108, 31.113586, 23.164827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.050884, 30.917294, 23.299212>,  <39.103848, 30.590139, 23.523186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050884, 30.917294, 23.299212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112885, -0.573677, -0.811265,
		-0.984746, -0.044211, 0.168287,
		-0.132409, 0.817887, -0.559936,
		39.011162, 31.162661, 23.131231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556908, 30.474976, 23.082975>,  <39.103848, 30.590139, 23.523186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556908, 30.474976, 23.082975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761276, 30.765093, 22.898407>,  <38.883900, 30.939163, 22.787666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761276, 30.765093, 22.898407>,  <38.556908, 30.474976, 23.082975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761276, 30.765093, 22.898407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083965, -0.492094, -0.866483,
		-0.855515, 0.481451, -0.190524,
		0.510925, 0.725292, -0.461419,
		38.914555, 30.982681, 22.759981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276413, 30.553528, 22.370100>,  <38.556908, 30.474976, 23.082975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276413, 30.553528, 22.370100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619423, 30.758305, 22.349842>,  <38.825230, 30.881170, 22.337687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619423, 30.758305, 22.349842>,  <38.276413, 30.553528, 22.370100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619423, 30.758305, 22.349842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182045, -0.394055, -0.900878,
		-0.481153, 0.763307, -0.431109,
		0.857527, 0.511941, -0.050644,
		38.876682, 30.911886, 22.334648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340302, 30.877829, 21.757383>,  <38.276413, 30.553528, 22.370100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340302, 30.877829, 21.757383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728058, 30.859421, 21.853846>,  <38.960712, 30.848375, 21.911724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.728058, 30.859421, 21.853846>,  <38.340302, 30.877829, 21.757383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728058, 30.859421, 21.853846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198116, -0.433497, -0.879108,
		0.144999, 0.899979, -0.411112,
		0.969394, -0.046022, 0.241157,
		39.018875, 30.845613, 21.926193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697914, 31.175697, 21.225689>,  <38.340302, 30.877829, 21.757383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697914, 31.175697, 21.225689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975830, 30.960978, 21.417152>,  <39.142578, 30.832146, 21.532030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975830, 30.960978, 21.417152>,  <38.697914, 31.175697, 21.225689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975830, 30.960978, 21.417152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462218, -0.176624, -0.868999,
		0.551023, 0.825014, 0.125403,
		0.694787, -0.536802, 0.478660,
		39.184265, 30.799936, 21.560751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396633, 31.419836, 21.014717>,  <38.697914, 31.175697, 21.225689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396633, 31.419836, 21.014717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428349, 31.047127, 21.156429>,  <39.447376, 30.823502, 21.241457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428349, 31.047127, 21.156429>,  <39.396633, 31.419836, 21.014717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428349, 31.047127, 21.156429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207831, -0.332136, -0.920050,
		0.974946, 0.146579, 0.167317,
		0.079287, -0.931773, 0.354278,
		39.452133, 30.767595, 21.262712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088566, 31.153481, 20.849617>,  <39.396633, 31.419836, 21.014717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088566, 31.153481, 20.849617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874962, 30.826445, 20.935762>,  <39.746799, 30.630222, 20.987450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.874962, 30.826445, 20.935762>,  <40.088566, 31.153481, 20.849617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874962, 30.826445, 20.935762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243106, -0.392449, -0.887064,
		0.809774, -0.421344, 0.408333,
		-0.534009, -0.817590, 0.215364,
		39.714760, 30.581167, 21.000372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491814, 30.723049, 20.523418>,  <40.088566, 31.153481, 20.849617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491814, 30.723049, 20.523418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164207, 30.503763, 20.591154>,  <39.967644, 30.372190, 20.631796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164207, 30.503763, 20.591154>,  <40.491814, 30.723049, 20.523418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164207, 30.503763, 20.591154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129691, -0.464374, -0.876092,
		0.558926, -0.695568, 0.451427,
		-0.819013, -0.548217, 0.169341,
		39.918503, 30.339298, 20.641956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654797, 30.071764, 20.267651>,  <40.491814, 30.723049, 20.523418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654797, 30.071764, 20.267651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255241, 30.081413, 20.283884>,  <40.015511, 30.087204, 20.293625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255241, 30.081413, 20.283884>,  <40.654797, 30.071764, 20.267651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255241, 30.081413, 20.283884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047057, -0.438693, -0.897404,
		-0.003846, -0.898313, 0.439339,
		-0.998885, 0.024125, 0.040584,
		39.955574, 30.088652, 20.296059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354149, 29.355253, 19.976160>,  <40.654797, 30.071764, 20.267651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354149, 29.355253, 19.976160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091034, 29.652420, 19.926538>,  <39.933167, 29.830721, 19.896765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091034, 29.652420, 19.926538>,  <40.354149, 29.355253, 19.976160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091034, 29.652420, 19.926538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310046, -0.417174, -0.854305,
		-0.686431, -0.523488, 0.504750,
		-0.657787, 0.742917, -0.124056,
		39.893696, 29.875296, 19.889322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695911, 29.093798, 19.808537>,  <40.354149, 29.355253, 19.976160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695911, 29.093798, 19.808537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722130, 29.462784, 19.656345>,  <39.737862, 29.684175, 19.565031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722130, 29.462784, 19.656345>,  <39.695911, 29.093798, 19.808537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722130, 29.462784, 19.656345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378637, -0.329786, -0.864798,
		-0.923221, 0.200747, 0.327663,
		0.065547, 0.922465, -0.380476,
		39.741795, 29.739523, 19.542202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972523, 28.783815, 19.728649>,  <39.695911, 29.093798, 19.808537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972523, 28.783815, 19.728649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794216, 28.430218, 19.672297>,  <38.687233, 28.218060, 19.638485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.794216, 28.430218, 19.672297>,  <38.972523, 28.783815, 19.728649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794216, 28.430218, 19.672297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051571, -0.131763, 0.989939,
		-0.893663, 0.448546, 0.013147,
		-0.445766, -0.883994, -0.140883,
		38.660488, 28.165020, 19.630032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368511, 28.883881, 20.095245>,  <38.972523, 28.783815, 19.728649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368511, 28.883881, 20.095245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454670, 28.496225, 20.047293>,  <38.506367, 28.263632, 20.018522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454670, 28.496225, 20.047293>,  <38.368511, 28.883881, 20.095245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454670, 28.496225, 20.047293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206955, -0.165278, 0.964289,
		-0.954344, -0.182899, -0.236170,
		0.215401, -0.969139, -0.119880,
		38.519291, 28.205484, 20.011328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790562, 28.588501, 20.398045>,  <38.368511, 28.883881, 20.095245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790562, 28.588501, 20.398045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108410, 28.345716, 20.392647>,  <38.299118, 28.200045, 20.389408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108410, 28.345716, 20.392647>,  <37.790562, 28.588501, 20.398045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108410, 28.345716, 20.392647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191882, -0.272166, 0.942925,
		-0.575992, -0.746674, -0.332733,
		0.794616, -0.606963, -0.013492,
		38.346794, 28.163628, 20.388599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563644, 27.905279, 20.679260>,  <37.790562, 28.588501, 20.398045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563644, 27.905279, 20.679260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960613, 27.900999, 20.728235>,  <38.198795, 27.898430, 20.757620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.960613, 27.900999, 20.728235>,  <37.563644, 27.905279, 20.679260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960613, 27.900999, 20.728235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115709, -0.417198, 0.901420,
		0.041434, -0.908753, -0.415273,
		0.992419, -0.010702, 0.122437,
		38.258339, 27.897789, 20.764967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686707, 27.266962, 21.065536>,  <37.563644, 27.905279, 20.679260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686707, 27.266962, 21.065536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040806, 27.448877, 21.104544>,  <38.253265, 27.558025, 21.127949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040806, 27.448877, 21.104544>,  <37.686707, 27.266962, 21.065536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040806, 27.448877, 21.104544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049375, -0.116592, 0.991952,
		0.462497, -0.882935, -0.080757,
		0.885245, 0.454787, 0.097519,
		38.306381, 27.585314, 21.133799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153641, 26.774216, 21.431202>,  <37.686707, 27.266962, 21.065536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153641, 26.774216, 21.431202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297047, 27.145294, 21.472862>,  <38.383091, 27.367941, 21.497858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.297047, 27.145294, 21.472862>,  <38.153641, 26.774216, 21.431202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297047, 27.145294, 21.472862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020184, -0.103838, 0.994389,
		0.933306, -0.358605, -0.018503,
		0.358514, 0.927696, 0.104150,
		38.404602, 27.423603, 21.504107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799118, 26.750813, 21.930468>,  <38.153641, 26.774216, 21.431202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799118, 26.750813, 21.930468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682293, 27.132666, 21.953707>,  <38.612198, 27.361778, 21.967649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682293, 27.132666, 21.953707>,  <38.799118, 26.750813, 21.930468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682293, 27.132666, 21.953707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066147, -0.040437, 0.996990,
		0.954108, 0.295029, -0.051336,
		-0.292065, 0.954632, 0.058097,
		38.594673, 27.419056, 21.971136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079277, 27.016148, 22.558205>,  <38.799118, 26.750813, 21.930468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079277, 27.016148, 22.558205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817036, 27.309032, 22.484400>,  <38.659691, 27.484764, 22.440117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.817036, 27.309032, 22.484400>,  <39.079277, 27.016148, 22.558205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817036, 27.309032, 22.484400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005728, 0.249169, 0.968443,
		0.755081, 0.633861, -0.167551,
		-0.655607, 0.732212, -0.184512,
		38.620354, 27.528696, 22.429047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328606, 27.702545, 22.925377>,  <39.079277, 27.016148, 22.558205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328606, 27.702545, 22.925377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937485, 27.761923, 22.866226>,  <38.702812, 27.797548, 22.830736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937485, 27.761923, 22.866226>,  <39.328606, 27.702545, 22.925377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937485, 27.761923, 22.866226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083426, 0.371595, 0.924639,
		0.192207, 0.916451, -0.350963,
		-0.977802, 0.148442, -0.147878,
		38.644146, 27.806456, 22.821863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224407, 28.205002, 23.287121>,  <39.328606, 27.702545, 22.925377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224407, 28.205002, 23.287121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.844227, 28.100557, 23.219639>,  <38.616119, 28.037889, 23.179150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.844227, 28.100557, 23.219639>,  <39.224407, 28.205002, 23.287121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844227, 28.100557, 23.219639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266463, 0.404746, 0.874744,
		-0.160124, 0.876356, -0.454269,
		-0.950451, -0.261114, -0.168707,
		38.559090, 28.022223, 23.169027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865723, 28.777395, 23.209332>,  <39.224407, 28.205002, 23.287121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865723, 28.777395, 23.209332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.636826, 28.483032, 23.354092>,  <38.499485, 28.306414, 23.440948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.636826, 28.483032, 23.354092>,  <38.865723, 28.777395, 23.209332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636826, 28.483032, 23.354092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228711, 0.567004, 0.791327,
		-0.787543, 0.370064, -0.492776,
		-0.572248, -0.735907, 0.361903,
		38.465153, 28.262260, 23.462662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505394, 29.124561, 23.627855>,  <38.865723, 28.777395, 23.209332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505394, 29.124561, 23.627855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378166, 28.758028, 23.725147>,  <38.301830, 28.538107, 23.783524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.378166, 28.758028, 23.725147>,  <38.505394, 29.124561, 23.627855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378166, 28.758028, 23.725147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384325, 0.359154, 0.850472,
		-0.866674, 0.177033, -0.466407,
		-0.318073, -0.916334, 0.243231,
		38.282745, 28.483128, 23.798117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742527, 29.119699, 23.798580>,  <38.505394, 29.124561, 23.627855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742527, 29.119699, 23.798580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939518, 28.826122, 23.985680>,  <38.057713, 28.649975, 24.097940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.939518, 28.826122, 23.985680>,  <37.742527, 29.119699, 23.798580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939518, 28.826122, 23.985680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243950, 0.399490, 0.883683,
		-0.835437, -0.549302, 0.017694,
		0.492477, -0.733945, 0.467751,
		38.087261, 28.605938, 24.126005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278408, 28.908138, 24.360849>,  <37.742527, 29.119699, 23.798580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278408, 28.908138, 24.360849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641037, 28.772495, 24.461349>,  <37.858616, 28.691109, 24.521650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641037, 28.772495, 24.461349>,  <37.278408, 28.908138, 24.360849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641037, 28.772495, 24.461349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157181, 0.281208, 0.946687,
		-0.391682, -0.897735, 0.201635,
		0.906575, -0.339107, 0.251251,
		37.913010, 28.670763, 24.536724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933968, 28.184998, 24.413889>,  <37.278408, 28.908138, 24.360849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933968, 28.184998, 24.413889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541916, 28.141378, 24.480171>,  <36.306686, 28.115208, 24.519939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.541916, 28.141378, 24.480171>,  <36.933968, 28.184998, 24.413889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541916, 28.141378, 24.480171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090992, -0.495121, -0.864046,
		0.176265, -0.861954, 0.475359,
		-0.980128, -0.109047, 0.165704,
		36.247879, 28.108664, 24.529882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768421, 27.501202, 24.369835>,  <36.933968, 28.184998, 24.413889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768421, 27.501202, 24.369835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415306, 27.681072, 24.315474>,  <36.203438, 27.788996, 24.282856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415306, 27.681072, 24.315474>,  <36.768421, 27.501202, 24.369835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415306, 27.681072, 24.315474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141161, -0.529858, -0.836256,
		-0.448054, -0.719056, 0.531231,
		-0.882791, 0.449677, -0.135902,
		36.150467, 27.815975, 24.274702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364052, 27.031939, 23.989487>,  <36.768421, 27.501202, 24.369835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364052, 27.031939, 23.989487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167511, 27.377033, 23.941723>,  <36.049587, 27.584089, 23.913065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.167511, 27.377033, 23.941723>,  <36.364052, 27.031939, 23.989487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167511, 27.377033, 23.941723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218559, -0.254851, -0.941957,
		-0.843093, -0.436734, 0.313780,
		-0.491352, 0.862736, -0.119411,
		36.020103, 27.635855, 23.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646935, 26.832485, 23.890970>,  <36.364052, 27.031939, 23.989487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646935, 26.832485, 23.890970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696785, 27.190325, 23.719315>,  <35.726696, 27.405029, 23.616322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696785, 27.190325, 23.719315>,  <35.646935, 26.832485, 23.890970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696785, 27.190325, 23.719315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310568, -0.375605, -0.873194,
		-0.942346, 0.242098, 0.231025,
		0.124624, 0.894600, -0.429138,
		35.734173, 27.458704, 23.590572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077839, 26.888470, 23.507463>,  <35.646935, 26.832485, 23.890970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077839, 26.888470, 23.507463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333725, 27.138683, 23.328814>,  <35.487255, 27.288811, 23.221624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333725, 27.138683, 23.328814>,  <35.077839, 26.888470, 23.507463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333725, 27.138683, 23.328814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319292, -0.312292, -0.894721,
		-0.699154, 0.714971, -0.000051,
		0.639716, 0.625532, -0.446624,
		35.525639, 27.326344, 23.194826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675224, 27.038422, 22.825134>,  <35.077839, 26.888470, 23.507463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675224, 27.038422, 22.825134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039474, 27.190462, 22.760288>,  <35.258026, 27.281687, 22.721380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039474, 27.190462, 22.760288>,  <34.675224, 27.038422, 22.825134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039474, 27.190462, 22.760288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164893, -0.025485, -0.985982,
		-0.378904, 0.924594, 0.039469,
		0.910627, 0.380101, -0.162115,
		35.312664, 27.304493, 22.711653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586769, 27.482304, 22.219154>,  <34.675224, 27.038422, 22.825134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586769, 27.482304, 22.219154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.960640, 27.341738, 22.240637>,  <35.184963, 27.257399, 22.253527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.960640, 27.341738, 22.240637>,  <34.586769, 27.482304, 22.219154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960640, 27.341738, 22.240637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052559, -0.286012, -0.956783,
		0.351588, 0.891462, -0.285800,
		0.934678, -0.351415, 0.053704,
		35.241043, 27.236313, 22.256748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659542, 28.184969, 21.944630>,  <34.586769, 27.482304, 22.219154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659542, 28.184969, 21.944630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409134, 28.492205, 21.890772>,  <34.258888, 28.676546, 21.858458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409134, 28.492205, 21.890772>,  <34.659542, 28.184969, 21.944630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409134, 28.492205, 21.890772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362277, -0.133568, 0.922451,
		0.690542, 0.626255, 0.361878,
		-0.626025, 0.768091, -0.134644,
		34.221325, 28.722631, 21.850378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598888, 28.468781, 22.579834>,  <34.659542, 28.184969, 21.944630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598888, 28.468781, 22.579834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277859, 28.629061, 22.403057>,  <34.085239, 28.725229, 22.296991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.277859, 28.629061, 22.403057>,  <34.598888, 28.468781, 22.579834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277859, 28.629061, 22.403057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489488, -0.018873, 0.871806,
		0.340991, 0.916015, 0.211285,
		-0.802575, 0.400699, -0.441943,
		34.037086, 28.749271, 22.270473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400833, 29.019899, 23.068251>,  <34.598888, 28.468781, 22.579834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400833, 29.019899, 23.068251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082249, 28.938307, 22.840551>,  <33.891098, 28.889351, 22.703932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082249, 28.938307, 22.840551>,  <34.400833, 29.019899, 23.068251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082249, 28.938307, 22.840551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594175, 0.089211, 0.799373,
		-0.112273, 0.974902, -0.192253,
		-0.796462, -0.203980, -0.569246,
		33.843311, 28.877113, 22.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862919, 29.630215, 23.245235>,  <34.400833, 29.019899, 23.068251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862919, 29.630215, 23.245235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694172, 29.293694, 23.110039>,  <33.592926, 29.091782, 23.028921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.694172, 29.293694, 23.110039>,  <33.862919, 29.630215, 23.245235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694172, 29.293694, 23.110039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622773, -0.002044, 0.782400,
		-0.658926, 0.540559, -0.523079,
		-0.421864, -0.841304, -0.337992,
		33.567612, 29.041302, 23.008640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113976, 29.800953, 23.275822>,  <33.862919, 29.630215, 23.245235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113976, 29.800953, 23.275822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182770, 29.406921, 23.278402>,  <33.224045, 29.170502, 23.279951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182770, 29.406921, 23.278402>,  <33.113976, 29.800953, 23.275822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182770, 29.406921, 23.278402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641825, -0.107082, 0.759338,
		-0.747317, -0.134731, -0.650665,
		0.171981, -0.985079, 0.006450,
		33.234364, 29.111397, 23.280336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457691, 29.397495, 23.372149>,  <33.113976, 29.800953, 23.275822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457691, 29.397495, 23.372149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750294, 29.148895, 23.484314>,  <32.925858, 28.999735, 23.551613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750294, 29.148895, 23.484314>,  <32.457691, 29.397495, 23.372149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750294, 29.148895, 23.484314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445379, -0.124151, 0.886693,
		-0.516266, -0.773514, -0.367621,
		0.731510, -0.621500, 0.280412,
		32.969746, 28.962444, 23.568438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043911, 28.979929, 23.797638>,  <32.457691, 29.397495, 23.372149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043911, 28.979929, 23.797638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427246, 28.904716, 23.883644>,  <32.657246, 28.859589, 23.935247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427246, 28.904716, 23.883644>,  <32.043911, 28.979929, 23.797638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427246, 28.904716, 23.883644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203400, 0.079255, 0.975883,
		-0.200539, -0.978960, 0.037707,
		0.958338, -0.188033, 0.215015,
		32.714748, 28.848307, 23.948149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.278099, 30.531950, 19.669556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572285, 30.600582, 19.931749>,  <37.748795, 30.641762, 20.089066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.572285, 30.600582, 19.931749>,  <37.278099, 30.531950, 19.669556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572285, 30.600582, 19.931749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604619, 0.602846, 0.520588,
		-0.305834, -0.779190, 0.547109,
		0.735459, 0.171579, 0.655484,
		37.792923, 30.652056, 20.128395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077980, 30.528963, 20.306267>,  <37.278099, 30.531950, 19.669556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077980, 30.528963, 20.306267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.412815, 30.741961, 20.356440>,  <37.613716, 30.869759, 20.386543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.412815, 30.741961, 20.356440>,  <37.077980, 30.528963, 20.306267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412815, 30.741961, 20.356440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486636, 0.620036, 0.615420,
		0.249933, -0.576202, 0.778155,
		0.837090, 0.532492, 0.125433,
		37.663940, 30.901709, 20.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043751, 30.740742, 20.972330>,  <37.077980, 30.528963, 20.306267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043751, 30.740742, 20.972330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331112, 30.977844, 20.826706>,  <37.503529, 31.120106, 20.739332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.331112, 30.977844, 20.826706>,  <37.043751, 30.740742, 20.972330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331112, 30.977844, 20.826706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246072, 0.706063, 0.664021,
		0.650651, -0.387449, 0.653098,
		0.718403, 0.592755, -0.364060,
		37.546631, 31.155670, 20.717487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507683, 30.831423, 21.501137>,  <37.043751, 30.740742, 20.972330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507683, 30.831423, 21.501137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.557419, 31.145533, 21.258524>,  <37.587261, 31.334000, 21.112957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.557419, 31.145533, 21.258524>,  <37.507683, 30.831423, 21.501137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557419, 31.145533, 21.258524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276794, 0.614460, 0.738799,
		0.952851, 0.076025, 0.293759,
		0.124336, 0.785276, -0.606533,
		37.594719, 31.381115, 21.076565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719116, 31.334393, 21.925009>,  <37.507683, 30.831423, 21.501137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719116, 31.334393, 21.925009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547363, 31.512136, 21.610514>,  <37.444309, 31.618784, 21.421816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.547363, 31.512136, 21.610514>,  <37.719116, 31.334393, 21.925009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547363, 31.512136, 21.610514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423475, 0.669875, 0.609866,
		0.797683, 0.594819, -0.099458,
		-0.429384, 0.444361, -0.786239,
		37.418549, 31.645445, 21.374641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533783, 31.992029, 22.193487>,  <37.719116, 31.334393, 21.925009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533783, 31.992029, 22.193487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346077, 32.040752, 21.843641>,  <37.233452, 32.069984, 21.633734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346077, 32.040752, 21.843641>,  <37.533783, 31.992029, 22.193487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346077, 32.040752, 21.843641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504934, 0.775535, 0.378928,
		0.724450, 0.619442, -0.302430,
		-0.469269, 0.121807, -0.874614,
		37.205296, 32.077293, 21.581257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727238, 32.683731, 21.996956>,  <37.533783, 31.992029, 22.193487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727238, 32.683731, 21.996956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395645, 32.543137, 21.822947>,  <37.196690, 32.458778, 21.718542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395645, 32.543137, 21.822947>,  <37.727238, 32.683731, 21.996956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395645, 32.543137, 21.822947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516048, 0.780576, 0.352698,
		0.215598, 0.516872, -0.828469,
		-0.828982, -0.351489, -0.435022,
		37.146950, 32.437691, 21.692440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468552, 33.236610, 21.571552>,  <37.727238, 32.683731, 21.996956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468552, 33.236610, 21.571552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160469, 32.993240, 21.648073>,  <36.975616, 32.847218, 21.693987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.160469, 32.993240, 21.648073>,  <37.468552, 33.236610, 21.571552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160469, 32.993240, 21.648073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526697, 0.775919, 0.347187,
		-0.359673, 0.166648, -0.918076,
		-0.770211, -0.608422, 0.191304,
		36.929405, 32.810715, 21.705465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803120, 33.558887, 21.176050>,  <37.468552, 33.236610, 21.571552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803120, 33.558887, 21.176050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709118, 33.317772, 21.481052>,  <36.652718, 33.173103, 21.664053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.709118, 33.317772, 21.481052>,  <36.803120, 33.558887, 21.176050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709118, 33.317772, 21.481052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414574, 0.771702, 0.482291,
		-0.879148, -0.202775, -0.431255,
		-0.235004, -0.602793, 0.762506,
		36.638618, 33.136932, 21.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303898, 33.976391, 21.536587>,  <36.803120, 33.558887, 21.176050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303898, 33.976391, 21.536587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357361, 33.695305, 21.816109>,  <36.389439, 33.526653, 21.983822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357361, 33.695305, 21.816109>,  <36.303898, 33.976391, 21.536587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357361, 33.695305, 21.816109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373254, 0.617511, 0.692360,
		-0.918051, -0.353369, -0.179757,
		0.133657, -0.702716, 0.698803,
		36.397457, 33.484489, 22.025749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668137, 33.805229, 21.897680>,  <36.303898, 33.976391, 21.536587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668137, 33.805229, 21.897680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.960667, 33.703796, 22.150934>,  <36.136185, 33.642937, 22.302887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.960667, 33.703796, 22.150934>,  <35.668137, 33.805229, 21.897680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960667, 33.703796, 22.150934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495815, 0.439771, 0.748845,
		-0.468327, -0.861568, 0.195886,
		0.731326, -0.253581, 0.633135,
		36.180065, 33.627724, 22.340874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346176, 33.475952, 22.504795>,  <35.668137, 33.805229, 21.897680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346176, 33.475952, 22.504795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.704567, 33.602627, 22.629335>,  <35.919601, 33.678631, 22.704060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.704567, 33.602627, 22.629335>,  <35.346176, 33.475952, 22.504795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704567, 33.602627, 22.629335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428104, 0.429408, 0.795195,
		0.118130, -0.845766, 0.520313,
		0.895976, 0.316685, 0.311349,
		35.973358, 33.697632, 22.722740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762821, 33.040775, 22.701965>,  <35.346176, 33.475952, 22.504795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762821, 33.040775, 22.701965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.440281, 33.232502, 22.563372>,  <34.246758, 33.347538, 22.480215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.440281, 33.232502, 22.563372>,  <34.762821, 33.040775, 22.701965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440281, 33.232502, 22.563372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135811, -0.420116, -0.897250,
		-0.575631, -0.770556, 0.273664,
		-0.806352, 0.479319, -0.346482,
		34.198376, 33.376297, 22.459427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391811, 32.485775, 22.327929>,  <34.762821, 33.040775, 22.701965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391811, 32.485775, 22.327929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265064, 32.832714, 22.174406>,  <34.189014, 33.040878, 22.082293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265064, 32.832714, 22.174406>,  <34.391811, 32.485775, 22.327929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265064, 32.832714, 22.174406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067719, -0.382935, -0.921290,
		-0.946050, -0.317917, 0.062604,
		-0.316867, 0.867346, -0.383805,
		34.170006, 33.092918, 22.059265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876434, 32.309933, 21.862995>,  <34.391811, 32.485775, 22.327929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876434, 32.309933, 21.862995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.980690, 32.683067, 21.763493>,  <34.043243, 32.906948, 21.703791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.980690, 32.683067, 21.763493>,  <33.876434, 32.309933, 21.862995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980690, 32.683067, 21.763493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193675, -0.302946, -0.933120,
		-0.945811, 0.195027, -0.259626,
		0.260637, 0.932839, -0.248758,
		34.058880, 32.962917, 21.688866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487705, 32.504227, 21.330730>,  <33.876434, 32.309933, 21.862995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487705, 32.504227, 21.330730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.785515, 32.769169, 21.297333>,  <33.964199, 32.928135, 21.277294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.785515, 32.769169, 21.297333>,  <33.487705, 32.504227, 21.330730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785515, 32.769169, 21.297333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140598, -0.277830, -0.950286,
		-0.652622, 0.695772, -0.299977,
		0.744524, 0.662354, -0.083494,
		34.008873, 32.967876, 21.272284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359055, 32.768253, 20.613821>,  <33.487705, 32.504227, 21.330730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359055, 32.768253, 20.613821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.731613, 32.844532, 20.737841>,  <33.955151, 32.890297, 20.812252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.731613, 32.844532, 20.737841>,  <33.359055, 32.768253, 20.613821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731613, 32.844532, 20.737841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351219, -0.247101, -0.903098,
		-0.095602, 0.950041, -0.297125,
		0.931400, 0.190694, 0.310049,
		34.011032, 32.901741, 20.830854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597580, 33.193920, 20.057957>,  <33.359055, 32.768253, 20.613821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597580, 33.193920, 20.057957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.916683, 33.049400, 20.251055>,  <34.108147, 32.962688, 20.366915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.916683, 33.049400, 20.251055>,  <33.597580, 33.193920, 20.057957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916683, 33.049400, 20.251055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414032, -0.253810, -0.874161,
		0.438359, 0.897243, -0.052890,
		0.797759, -0.361298, 0.482747,
		34.156010, 32.941010, 20.395880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107231, 33.438877, 19.743521>,  <33.597580, 33.193920, 20.057957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107231, 33.438877, 19.743521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299099, 33.130707, 19.911501>,  <34.414219, 32.945805, 20.012289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299099, 33.130707, 19.911501>,  <34.107231, 33.438877, 19.743521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299099, 33.130707, 19.911501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348912, -0.271664, -0.896916,
		0.805096, 0.576746, 0.138504,
		0.479667, -0.770430, 0.419949,
		34.443001, 32.899578, 20.037485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677185, 33.393131, 19.363249>,  <34.107231, 33.438877, 19.743521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677185, 33.393131, 19.363249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660751, 33.023621, 19.515539>,  <34.650890, 32.801914, 19.606913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660751, 33.023621, 19.515539>,  <34.677185, 33.393131, 19.363249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660751, 33.023621, 19.515539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384386, -0.366333, -0.847377,
		0.922258, 0.111528, 0.370138,
		-0.041087, -0.923775, 0.380724,
		34.648426, 32.746487, 19.629757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305679, 33.111134, 19.146420>,  <34.677185, 33.393131, 19.363249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305679, 33.111134, 19.146420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098148, 32.787479, 19.256775>,  <34.973629, 32.593285, 19.322989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.098148, 32.787479, 19.256775>,  <35.305679, 33.111134, 19.146420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098148, 32.787479, 19.256775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337778, -0.490490, -0.803322,
		0.785318, -0.323597, 0.527788,
		-0.518827, -0.809138, 0.275886,
		34.942501, 32.544739, 19.339540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757927, 32.507885, 18.977364>,  <35.305679, 33.111134, 19.146420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757927, 32.507885, 18.977364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397892, 32.339775, 19.023338>,  <35.181870, 32.238911, 19.050922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397892, 32.339775, 19.023338>,  <35.757927, 32.507885, 18.977364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397892, 32.339775, 19.023338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195883, -0.625955, -0.754857,
		0.389190, -0.656925, 0.645740,
		-0.900089, -0.420273, 0.114935,
		35.127865, 32.213692, 19.057819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851837, 31.682081, 18.928146>,  <35.757927, 32.507885, 18.977364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851837, 31.682081, 18.928146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478210, 31.783758, 18.827826>,  <35.254036, 31.844765, 18.767633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.478210, 31.783758, 18.827826>,  <35.851837, 31.682081, 18.928146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478210, 31.783758, 18.827826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016927, -0.733072, -0.679941,
		-0.356693, -0.630866, 0.689041,
		-0.934068, 0.254194, -0.250803,
		35.197990, 31.860016, 18.752584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594971, 31.052588, 18.758169>,  <35.851837, 31.682081, 18.928146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594971, 31.052588, 18.758169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.346760, 31.320175, 18.594500>,  <35.197834, 31.480728, 18.496298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.346760, 31.320175, 18.594500>,  <35.594971, 31.052588, 18.758169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346760, 31.320175, 18.594500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105054, -0.587995, -0.802013,
		-0.777115, -0.454687, 0.435146,
		-0.620529, 0.668970, -0.409173,
		35.160603, 31.520866, 18.471748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126625, 30.997250, 19.288467>,  <35.594971, 31.052588, 18.758169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126625, 30.997250, 19.288467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.729313, 30.981173, 19.245058>,  <35.490925, 30.971527, 19.219013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.729313, 30.981173, 19.245058>,  <36.126625, 30.997250, 19.288467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729313, 30.981173, 19.245058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060712, -0.617383, 0.784317,
		-0.098524, 0.785635, 0.610795,
		-0.993281, -0.040191, -0.108524,
		35.431328, 30.969114, 19.212502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874119, 31.000887, 19.994509>,  <36.126625, 30.997250, 19.288467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874119, 31.000887, 19.994509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586742, 30.857729, 19.755930>,  <35.414314, 30.771833, 19.612783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586742, 30.857729, 19.755930>,  <35.874119, 31.000887, 19.994509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586742, 30.857729, 19.755930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319676, -0.591668, 0.740092,
		-0.617775, 0.722384, 0.310669,
		-0.718443, -0.357897, -0.596447,
		35.371208, 30.750360, 19.576996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323032, 31.038958, 20.399885>,  <35.874119, 31.000887, 19.994509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323032, 31.038958, 20.399885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.238708, 30.760374, 20.125511>,  <35.188114, 30.593224, 19.960888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.238708, 30.760374, 20.125511>,  <35.323032, 31.038958, 20.399885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238708, 30.760374, 20.125511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447503, -0.555097, 0.701148,
		-0.869080, 0.454767, -0.194646,
		-0.210811, -0.696458, -0.685933,
		35.175465, 30.551437, 19.919731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613426, 30.898849, 20.437691>,  <35.323032, 31.038958, 20.399885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613426, 30.898849, 20.437691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744049, 30.571701, 20.248186>,  <34.822422, 30.375412, 20.134483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.744049, 30.571701, 20.248186>,  <34.613426, 30.898849, 20.437691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744049, 30.571701, 20.248186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440440, -0.575168, 0.689344,
		-0.836286, -0.016444, -0.548046,
		0.326554, -0.817870, -0.473762,
		34.842014, 30.326340, 20.106058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024536, 30.426987, 20.356993>,  <34.613426, 30.898849, 20.437691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024536, 30.426987, 20.356993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346184, 30.198168, 20.292301>,  <34.539173, 30.060877, 20.253487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.346184, 30.198168, 20.292301>,  <34.024536, 30.426987, 20.356993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346184, 30.198168, 20.292301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382550, -0.706186, 0.595782,
		-0.455024, -0.417211, -0.786694,
		0.804120, -0.572045, -0.161727,
		34.587421, 30.026554, 20.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700687, 29.767256, 20.210419>,  <34.024536, 30.426987, 20.356993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700687, 29.767256, 20.210419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.073135, 29.740120, 20.353760>,  <34.296604, 29.723839, 20.439764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.073135, 29.740120, 20.353760>,  <33.700687, 29.767256, 20.210419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073135, 29.740120, 20.353760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259593, -0.813429, 0.520523,
		0.256181, -0.577695, -0.775010,
		0.931119, -0.067839, 0.358351,
		34.352470, 29.719769, 20.461266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703545, 29.053684, 20.423674>,  <33.700687, 29.767256, 20.210419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703545, 29.053684, 20.423674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.063580, 29.152386, 20.567314>,  <34.279602, 29.211607, 20.653498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.063580, 29.152386, 20.567314>,  <33.703545, 29.053684, 20.423674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063580, 29.152386, 20.567314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147173, -0.603557, 0.783619,
		0.410100, -0.758176, -0.506939,
		0.900088, 0.246755, 0.359102,
		34.333607, 29.226412, 20.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947521, 28.434238, 20.679729>,  <33.703545, 29.053684, 20.423674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947521, 28.434238, 20.679729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.104092, 28.750490, 20.868065>,  <34.198036, 28.940241, 20.981066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.104092, 28.750490, 20.868065>,  <33.947521, 28.434238, 20.679729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104092, 28.750490, 20.868065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345247, -0.348108, 0.871565,
		0.852987, -0.503712, 0.136703,
		0.391430, 0.790630, 0.470837,
		34.221519, 28.987679, 21.009315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384979, 28.125549, 21.220221>,  <33.947521, 28.434238, 20.679729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384979, 28.125549, 21.220221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.314960, 28.501421, 21.337767>,  <34.272949, 28.726944, 21.408295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.314960, 28.501421, 21.337767>,  <34.384979, 28.125549, 21.220221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314960, 28.501421, 21.337767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251314, -0.331231, 0.909465,
		0.951945, 0.085351, 0.294138,
		-0.175051, 0.939682, 0.293864,
		34.262444, 28.783325, 21.425926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838509, 27.602276, 21.528627>,  <34.384979, 28.125549, 21.220221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838509, 27.602276, 21.528627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118244, 27.362934, 21.685038>,  <35.286083, 27.219330, 21.778885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.118244, 27.362934, 21.685038>,  <34.838509, 27.602276, 21.528627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118244, 27.362934, 21.685038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353367, -0.186119, -0.916783,
		0.621339, 0.779315, 0.081279,
		0.699335, -0.598355, 0.391027,
		35.328045, 27.183428, 21.802345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498714, 27.872843, 21.267330>,  <34.838509, 27.602276, 21.528627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498714, 27.872843, 21.267330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567677, 27.501795, 21.399872>,  <35.609055, 27.279165, 21.479397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567677, 27.501795, 21.399872>,  <35.498714, 27.872843, 21.267330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567677, 27.501795, 21.399872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511857, -0.203043, -0.834731,
		0.841594, 0.313515, 0.439805,
		0.172401, -0.927622, 0.331355,
		35.619396, 27.223509, 21.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149551, 27.808689, 21.056793>,  <35.498714, 27.872843, 21.267330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149551, 27.808689, 21.056793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020218, 27.433998, 21.110460>,  <35.942619, 27.209185, 21.142660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.020218, 27.433998, 21.110460>,  <36.149551, 27.808689, 21.056793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020218, 27.433998, 21.110460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459467, -0.279356, -0.843119,
		0.827252, -0.210964, 0.520720,
		-0.323334, -0.936725, 0.134167,
		35.923218, 27.152981, 21.150711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712864, 27.371149, 21.030657>,  <36.149551, 27.808689, 21.056793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712864, 27.371149, 21.030657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403553, 27.137375, 20.932291>,  <36.217964, 26.997110, 20.873272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.403553, 27.137375, 20.932291>,  <36.712864, 27.371149, 21.030657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403553, 27.137375, 20.932291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479289, -0.284857, -0.830144,
		0.415117, -0.759795, 0.500388,
		-0.773279, -0.584437, -0.245912,
		36.171570, 26.962044, 20.858517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010971, 26.799692, 20.695700>,  <36.712864, 27.371149, 21.030657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010971, 26.799692, 20.695700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630470, 26.740257, 20.587597>,  <36.402168, 26.704596, 20.522736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.630470, 26.740257, 20.587597>,  <37.010971, 26.799692, 20.695700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630470, 26.740257, 20.587597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304331, -0.310186, -0.900648,
		0.049995, -0.938992, 0.340285,
		-0.951253, -0.148587, -0.270256,
		36.345093, 26.695681, 20.506519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023403, 26.147631, 20.478380>,  <37.010971, 26.799692, 20.695700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023403, 26.147631, 20.478380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691879, 26.307888, 20.322142>,  <36.492966, 26.404041, 20.228397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.691879, 26.307888, 20.322142>,  <37.023403, 26.147631, 20.478380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691879, 26.307888, 20.322142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314499, -0.243812, -0.917413,
		-0.462787, -0.883199, 0.076070,
		-0.828805, 0.400643, -0.390598,
		36.443237, 26.428082, 20.204962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675179, 25.665543, 20.126680>,  <37.023403, 26.147631, 20.478380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675179, 25.665543, 20.126680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542831, 26.007662, 19.967182>,  <36.463425, 26.212933, 19.871483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542831, 26.007662, 19.967182>,  <36.675179, 25.665543, 20.126680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542831, 26.007662, 19.967182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242130, -0.331453, -0.911873,
		-0.912087, -0.398253, -0.097427,
		-0.330863, 0.855298, -0.398743,
		36.443573, 26.264252, 19.847559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449535, 25.447851, 19.400610>,  <36.675179, 25.665543, 20.126680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449535, 25.447851, 19.400610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.456127, 25.844574, 19.349941>,  <36.460083, 26.082607, 19.319540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.456127, 25.844574, 19.349941>,  <36.449535, 25.447851, 19.400610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456127, 25.844574, 19.349941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111525, -0.127721, -0.985520,
		-0.993625, 0.002117, -0.112716,
		0.016482, 0.991808, -0.126671,
		36.461071, 26.142117, 19.311939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174816, 25.527391, 18.810213>,  <36.449535, 25.447851, 19.400610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174816, 25.527391, 18.810213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.376808, 25.870245, 18.850845>,  <36.498001, 26.075956, 18.875225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.376808, 25.870245, 18.850845>,  <36.174816, 25.527391, 18.810213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376808, 25.870245, 18.850845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351777, -0.096906, -0.931054,
		-0.788194, 0.505896, -0.350456,
		0.504978, 0.857134, 0.101582,
		36.528301, 26.127386, 18.881319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.640453, 31.733906, 34.045837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844135, 32.020683, 33.855385>,  <35.966343, 32.192749, 33.741112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844135, 32.020683, 33.855385>,  <35.640453, 31.733906, 34.045837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844135, 32.020683, 33.855385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431478, -0.266021, -0.862009,
		-0.744672, 0.644382, 0.173885,
		0.509206, 0.716941, -0.476135,
		35.996899, 32.235767, 33.712543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202339, 32.307247, 33.792526>,  <35.640453, 31.733906, 34.045837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202339, 32.307247, 33.792526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521351, 32.308689, 33.551220>,  <35.712757, 32.309555, 33.406437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521351, 32.308689, 33.551220>,  <35.202339, 32.307247, 33.792526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521351, 32.308689, 33.551220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551422, -0.401254, -0.731389,
		-0.244698, 0.915960, -0.318026,
		0.797532, 0.003603, -0.603266,
		35.760609, 32.309769, 33.370239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886131, 32.555542, 33.153313>,  <35.202339, 32.307247, 33.792526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886131, 32.555542, 33.153313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236912, 32.385071, 33.064480>,  <35.447380, 32.282787, 33.011181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236912, 32.385071, 33.064480>,  <34.886131, 32.555542, 33.153313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236912, 32.385071, 33.064480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455403, -0.589353, -0.667287,
		0.153499, 0.686318, -0.710919,
		0.876953, -0.426182, -0.222086,
		35.499996, 32.257217, 32.997852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984592, 32.623650, 32.392475>,  <34.886131, 32.555542, 33.153313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984592, 32.623650, 32.392475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221607, 32.320839, 32.502617>,  <35.363815, 32.139153, 32.568703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.221607, 32.320839, 32.502617>,  <34.984592, 32.623650, 32.392475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221607, 32.320839, 32.502617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285983, -0.517242, -0.806644,
		0.753071, 0.399219, -0.522980,
		0.592534, -0.757024, 0.275350,
		35.399368, 32.093731, 32.585220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406872, 32.373444, 31.803753>,  <34.984592, 32.623650, 32.392475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406872, 32.373444, 31.803753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429832, 32.068771, 32.061913>,  <35.443607, 31.885967, 32.216808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429832, 32.068771, 32.061913>,  <35.406872, 32.373444, 31.803753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429832, 32.068771, 32.061913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006746, -0.646155, -0.763176,
		0.998329, 0.048160, -0.031951,
		0.057399, -0.761685, 0.645400,
		35.447052, 31.840265, 32.255531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979633, 31.959644, 31.527451>,  <35.406872, 32.373444, 31.803753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979633, 31.959644, 31.527451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746597, 31.730711, 31.758286>,  <35.606777, 31.593351, 31.896786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746597, 31.730711, 31.758286>,  <35.979633, 31.959644, 31.527451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746597, 31.730711, 31.758286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107663, -0.649426, -0.752765,
		0.805606, -0.500682, 0.316728,
		-0.582587, -0.572332, 0.577086,
		35.571819, 31.559011, 31.931412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232262, 31.355049, 31.489634>,  <35.979633, 31.959644, 31.527451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232262, 31.355049, 31.489634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845867, 31.300701, 31.577635>,  <35.614029, 31.268091, 31.630436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845867, 31.300701, 31.577635>,  <36.232262, 31.355049, 31.489634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845867, 31.300701, 31.577635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077277, -0.660242, -0.747066,
		0.246761, -0.738660, 0.627288,
		-0.965990, -0.135872, 0.220004,
		35.556068, 31.259939, 31.643637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077755, 30.649530, 31.339214>,  <36.232262, 31.355049, 31.489634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077755, 30.649530, 31.339214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723026, 30.833961, 31.351526>,  <35.510189, 30.944620, 31.358913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723026, 30.833961, 31.351526>,  <36.077755, 30.649530, 31.339214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723026, 30.833961, 31.351526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340865, -0.607732, -0.717268,
		-0.312012, -0.646583, 0.696118,
		-0.886826, 0.461078, 0.030778,
		35.456978, 30.972284, 31.360760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555264, 30.048452, 31.363266>,  <36.077755, 30.649530, 31.339214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555264, 30.048452, 31.363266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407516, 30.393188, 31.224241>,  <35.318867, 30.600031, 31.140825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407516, 30.393188, 31.224241>,  <35.555264, 30.048452, 31.363266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407516, 30.393188, 31.224241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304143, -0.465528, -0.831132,
		-0.878103, -0.201283, 0.434073,
		-0.369366, 0.861840, -0.347563,
		35.296707, 30.651741, 31.119972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970787, 29.821051, 31.096457>,  <35.555264, 30.048452, 31.363266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970787, 29.821051, 31.096457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980690, 30.175844, 30.912001>,  <34.986633, 30.388720, 30.801327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980690, 30.175844, 30.912001>,  <34.970787, 29.821051, 31.096457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980690, 30.175844, 30.912001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298079, -0.433750, -0.850300,
		-0.954220, 0.158508, 0.253652,
		0.024758, 0.886981, -0.461141,
		34.988117, 30.441938, 30.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312340, 29.931431, 30.726902>,  <34.970787, 29.821051, 31.096457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312340, 29.931431, 30.726902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566509, 30.190306, 30.558432>,  <34.719009, 30.345631, 30.457350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566509, 30.190306, 30.558432>,  <34.312340, 29.931431, 30.726902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566509, 30.190306, 30.558432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248593, -0.344945, -0.905104,
		-0.731056, 0.679823, -0.058299,
		0.635420, 0.647189, -0.421174,
		34.757133, 30.384462, 30.432079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995304, 30.134583, 30.086033>,  <34.312340, 29.931431, 30.726902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995304, 30.134583, 30.086033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383518, 30.220198, 30.041754>,  <34.616447, 30.271566, 30.015186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383518, 30.220198, 30.041754>,  <33.995304, 30.134583, 30.086033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383518, 30.220198, 30.041754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000423, -0.457875, -0.889017,
		-0.240968, 0.862867, -0.444292,
		0.970533, 0.214036, -0.110698,
		34.674679, 30.284409, 30.008545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931995, 30.911402, 29.814610>,  <33.995304, 30.134583, 30.086033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931995, 30.911402, 29.814610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596264, 31.073408, 29.669559>,  <33.394825, 31.170612, 29.582529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596264, 31.073408, 29.669559>,  <33.931995, 30.911402, 29.814610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596264, 31.073408, 29.669559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096242, 0.545807, 0.832366,
		0.535044, 0.733525, -0.419129,
		-0.839324, 0.405014, -0.362627,
		33.344467, 31.194912, 29.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950062, 31.642294, 29.944372>,  <33.931995, 30.911402, 29.814610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950062, 31.642294, 29.944372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566422, 31.557505, 29.869333>,  <33.336239, 31.506632, 29.824310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566422, 31.557505, 29.869333>,  <33.950062, 31.642294, 29.944372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566422, 31.557505, 29.869333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275596, 0.548080, 0.789718,
		-0.064580, 0.809121, -0.584083,
		-0.959102, -0.211971, -0.187595,
		33.278690, 31.493914, 29.813055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723667, 32.235062, 30.157648>,  <33.950062, 31.642294, 29.944372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723667, 32.235062, 30.157648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415043, 31.981920, 30.131777>,  <33.229870, 31.830034, 30.116253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415043, 31.981920, 30.131777>,  <33.723667, 32.235062, 30.157648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415043, 31.981920, 30.131777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392030, 0.392938, 0.831813,
		-0.501003, 0.667152, -0.551275,
		-0.771562, -0.632857, -0.064681,
		33.183575, 31.792063, 30.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061810, 32.552582, 30.188307>,  <33.723667, 32.235062, 30.157648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061810, 32.552582, 30.188307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953999, 32.182140, 30.293894>,  <32.889313, 31.959875, 30.357246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953999, 32.182140, 30.293894>,  <33.061810, 32.552582, 30.188307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953999, 32.182140, 30.293894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463469, 0.365027, 0.807435,
		-0.844128, 0.095284, -0.527607,
		-0.269527, -0.926108, 0.263968,
		32.873142, 31.904308, 30.373085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461887, 32.718067, 30.380539>,  <33.061810, 32.552582, 30.188307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461887, 32.718067, 30.380539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546146, 32.359676, 30.536928>,  <32.596703, 32.144642, 30.630762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546146, 32.359676, 30.536928>,  <32.461887, 32.718067, 30.380539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546146, 32.359676, 30.536928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558511, 0.217938, 0.800355,
		-0.802305, -0.386954, -0.454504,
		0.210647, -0.895974, 0.390971,
		32.609341, 32.090885, 30.654219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762434, 32.372025, 30.589043>,  <32.461887, 32.718067, 30.380539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762434, 32.372025, 30.589043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.066231, 32.209339, 30.792122>,  <32.248508, 32.111729, 30.913969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.066231, 32.209339, 30.792122>,  <31.762434, 32.372025, 30.589043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066231, 32.209339, 30.792122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477432, 0.181601, 0.859697,
		-0.441849, -0.895324, -0.056253,
		0.759492, -0.406713, 0.507697,
		32.294079, 32.087326, 30.944431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512081, 31.966709, 31.047651>,  <31.762434, 32.372025, 30.589043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512081, 31.966709, 31.047651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876038, 32.054077, 31.188728>,  <32.094410, 32.106499, 31.273375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.876038, 32.054077, 31.188728>,  <31.512081, 31.966709, 31.047651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876038, 32.054077, 31.188728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408581, 0.324592, 0.853054,
		0.071842, -0.920290, 0.384585,
		0.909890, 0.218419, 0.352693,
		32.149006, 32.119602, 31.294537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556728, 31.815434, 31.823492>,  <31.512081, 31.966709, 31.047651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556728, 31.815434, 31.823492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845930, 32.078999, 31.740450>,  <32.019451, 32.237137, 31.690624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845930, 32.078999, 31.740450>,  <31.556728, 31.815434, 31.823492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845930, 32.078999, 31.740450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305724, 0.574648, 0.759152,
		0.619518, -0.485397, 0.616917,
		0.723001, 0.658915, -0.207607,
		32.062832, 32.276672, 31.678169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681225, 32.173176, 32.426609>,  <31.556728, 31.815434, 31.823492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681225, 32.173176, 32.426609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873262, 32.415173, 32.172523>,  <31.988485, 32.560371, 32.020073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.873262, 32.415173, 32.172523>,  <31.681225, 32.173176, 32.426609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873262, 32.415173, 32.172523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176700, 0.775978, 0.605504,
		0.859236, -0.178457, 0.479445,
		0.480095, 0.604989, -0.635215,
		32.017292, 32.596668, 31.981958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971163, 32.562439, 32.915691>,  <31.681225, 32.173176, 32.426609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971163, 32.562439, 32.915691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992540, 32.770859, 32.574951>,  <32.005367, 32.895908, 32.370506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.992540, 32.770859, 32.574951>,  <31.971163, 32.562439, 32.915691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992540, 32.770859, 32.574951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331676, 0.813903, 0.477025,
		0.941878, 0.257044, 0.216319,
		0.053446, 0.521047, -0.851853,
		32.008575, 32.927174, 32.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252754, 33.247227, 33.120373>,  <31.971163, 32.562439, 32.915691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252754, 33.247227, 33.120373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035816, 33.298077, 32.788181>,  <31.905653, 33.328587, 32.588867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035816, 33.298077, 32.788181>,  <32.252754, 33.247227, 33.120373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035816, 33.298077, 32.788181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361312, 0.857119, 0.367153,
		0.758496, 0.499186, -0.418923,
		-0.542345, 0.127122, -0.830483,
		31.873114, 33.336212, 32.539036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169838, 33.967587, 33.089153>,  <32.252754, 33.247227, 33.120373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169838, 33.967587, 33.089153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901928, 33.836594, 32.822571>,  <31.741182, 33.757999, 32.662621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.901928, 33.836594, 32.822571>,  <32.169838, 33.967587, 33.089153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901928, 33.836594, 32.822571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534497, 0.835643, 0.126541,
		0.515478, 0.440972, -0.734729,
		-0.669772, -0.327481, -0.666454,
		31.700996, 33.738350, 32.622635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921503, 34.564545, 32.708385>,  <32.169838, 33.967587, 33.089153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921503, 34.564545, 32.708385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629927, 34.296265, 32.653538>,  <31.454981, 34.135296, 32.620628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629927, 34.296265, 32.653538>,  <31.921503, 34.564545, 32.708385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629927, 34.296265, 32.653538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682575, 0.696783, 0.220419,
		-0.052296, 0.254264, -0.965720,
		-0.728942, -0.670703, -0.137115,
		31.411243, 34.095055, 32.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378029, 34.921211, 32.360836>,  <31.921503, 34.564545, 32.708385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378029, 34.921211, 32.360836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210430, 34.603306, 32.536469>,  <31.109871, 34.412563, 32.641850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210430, 34.603306, 32.536469>,  <31.378029, 34.921211, 32.360836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210430, 34.603306, 32.536469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754178, 0.573908, 0.319132,
		-0.505627, -0.197431, -0.839859,
		-0.418995, -0.794764, 0.439082,
		31.084732, 34.364876, 32.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337498, 35.584595, 32.819145>,  <31.378029, 34.921211, 32.360836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337498, 35.584595, 32.819145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355009, 35.957943, 32.676651>,  <31.365517, 36.181953, 32.591152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355009, 35.957943, 32.676651>,  <31.337498, 35.584595, 32.819145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355009, 35.957943, 32.676651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135270, -0.358834, -0.923547,
		-0.989841, -0.007757, -0.141967,
		0.043779, 0.933369, -0.356238,
		31.368143, 36.237953, 32.569778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760408, 35.710835, 32.411186>,  <31.337498, 35.584595, 32.819145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760408, 35.710835, 32.411186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093069, 35.906876, 32.306759>,  <31.292665, 36.024498, 32.244102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093069, 35.906876, 32.306759>,  <30.760408, 35.710835, 32.411186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093069, 35.906876, 32.306759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036880, -0.517849, -0.854677,
		-0.554068, 0.701167, -0.448746,
		0.831654, 0.490099, -0.261065,
		31.342566, 36.053905, 32.228439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687212, 35.958393, 31.767044>,  <30.760408, 35.710835, 32.411186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687212, 35.958393, 31.767044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072762, 35.876869, 31.835640>,  <31.304090, 35.827953, 31.876799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072762, 35.876869, 31.835640>,  <30.687212, 35.958393, 31.767044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072762, 35.876869, 31.835640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073006, -0.417030, -0.905956,
		0.256161, 0.885747, -0.387084,
		0.963873, -0.203811, 0.171491,
		31.361923, 35.815727, 31.887087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967741, 36.310566, 31.332043>,  <30.687212, 35.958393, 31.767044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967741, 36.310566, 31.332043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227787, 36.018711, 31.416876>,  <31.383816, 35.843597, 31.467775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227787, 36.018711, 31.416876>,  <30.967741, 36.310566, 31.332043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227787, 36.018711, 31.416876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013028, -0.289779, -0.957005,
		0.759722, 0.619402, -0.197896,
		0.650117, -0.729636, 0.212082,
		31.422823, 35.799820, 31.480501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549339, 36.401024, 30.839647>,  <30.967741, 36.310566, 31.332043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549339, 36.401024, 30.839647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530413, 36.018497, 30.955042>,  <31.519056, 35.788982, 31.024279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530413, 36.018497, 30.955042>,  <31.549339, 36.401024, 30.839647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530413, 36.018497, 30.955042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123341, -0.292194, -0.948372,
		0.991236, -0.009292, 0.131779,
		-0.047318, -0.956314, 0.288487,
		31.516218, 35.731602, 31.041588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044895, 36.116322, 30.478827>,  <31.549339, 36.401024, 30.839647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044895, 36.116322, 30.478827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827393, 35.802074, 30.596905>,  <31.696892, 35.613525, 30.667751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827393, 35.802074, 30.596905>,  <32.044895, 36.116322, 30.478827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827393, 35.802074, 30.596905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125110, -0.423690, -0.897126,
		0.829867, -0.450884, 0.328672,
		-0.543754, -0.785615, 0.295196,
		31.664267, 35.566391, 30.685463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444069, 35.570377, 30.258318>,  <32.044895, 36.116322, 30.478827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444069, 35.570377, 30.258318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073803, 35.423737, 30.295715>,  <31.851643, 35.335751, 30.318153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073803, 35.423737, 30.295715>,  <32.444069, 35.570377, 30.258318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073803, 35.423737, 30.295715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148355, -0.579042, -0.801686,
		0.348035, -0.728226, 0.590388,
		-0.925669, -0.366602, 0.093491,
		31.796103, 35.313755, 30.323763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600697, 34.896328, 30.152287>,  <32.444069, 35.570377, 30.258318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600697, 34.896328, 30.152287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208847, 34.941765, 30.086037>,  <31.973738, 34.969028, 30.046288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208847, 34.941765, 30.086037>,  <32.600697, 34.896328, 30.152287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208847, 34.941765, 30.086037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116406, -0.350875, -0.929159,
		-0.163662, -0.929507, 0.330503,
		-0.979625, 0.113595, -0.165625,
		31.914959, 34.975845, 30.036348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363415, 34.297150, 29.879473>,  <32.600697, 34.896328, 30.152287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363415, 34.297150, 29.879473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057674, 34.530140, 29.768845>,  <31.874231, 34.669933, 29.702469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.057674, 34.530140, 29.768845>,  <32.363415, 34.297150, 29.879473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057674, 34.530140, 29.768845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073835, -0.347034, -0.934942,
		-0.640563, -0.735041, 0.222247,
		-0.764348, 0.582479, -0.276569,
		31.828369, 34.704884, 29.685873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751835, 33.858532, 29.659773>,  <32.363415, 34.297150, 29.879473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751835, 33.858532, 29.659773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778790, 34.228695, 29.510597>,  <31.794962, 34.450790, 29.421091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778790, 34.228695, 29.510597>,  <31.751835, 33.858532, 29.659773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778790, 34.228695, 29.510597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092902, -0.377987, -0.921138,
		-0.993392, 0.027427, -0.111444,
		0.067389, 0.925405, -0.372941,
		31.799006, 34.506317, 29.398714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638456, 33.673809, 28.952944>,  <31.751835, 33.858532, 29.659773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638456, 33.673809, 28.952944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705444, 34.067654, 28.932945>,  <31.745638, 34.303959, 28.920946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705444, 34.067654, 28.932945>,  <31.638456, 33.673809, 28.952944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705444, 34.067654, 28.932945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247882, -0.091137, -0.964494,
		-0.954206, 0.149131, -0.259330,
		0.167470, 0.984609, -0.049997,
		31.755686, 34.363037, 28.917946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326292, 33.881050, 28.314859>,  <31.638456, 33.673809, 28.952944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326292, 33.881050, 28.314859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595684, 34.165203, 28.396624>,  <31.757318, 34.335693, 28.445683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.595684, 34.165203, 28.396624>,  <31.326292, 33.881050, 28.314859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595684, 34.165203, 28.396624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207426, 0.083803, -0.974655,
		-0.709507, 0.698809, -0.090912,
		0.673479, 0.710382, 0.204410,
		31.797728, 34.378319, 28.457947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235106, 34.393673, 27.825413>,  <31.326292, 33.881050, 28.314859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235106, 34.393673, 27.825413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600969, 34.465878, 27.970083>,  <31.820488, 34.509201, 28.056887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600969, 34.465878, 27.970083>,  <31.235106, 34.393673, 27.825413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600969, 34.465878, 27.970083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297462, 0.305261, -0.904617,
		-0.273699, 0.935003, 0.225515,
		0.914661, 0.180511, 0.361678,
		31.875368, 34.520031, 28.078587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442463, 35.081741, 27.624201>,  <31.235106, 34.393673, 27.825413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442463, 35.081741, 27.624201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772142, 34.866161, 27.693741>,  <31.969950, 34.736813, 27.735466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772142, 34.866161, 27.693741>,  <31.442463, 35.081741, 27.624201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772142, 34.866161, 27.693741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378431, 0.295793, -0.877095,
		0.421290, 0.788692, 0.447749,
		0.824200, -0.538953, 0.173851,
		32.019402, 34.704475, 27.745895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821123, 35.401669, 27.263689>,  <31.442463, 35.081741, 27.624201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821123, 35.401669, 27.263689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068314, 35.089287, 27.299932>,  <32.216629, 34.901855, 27.321678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.068314, 35.089287, 27.299932>,  <31.821123, 35.401669, 27.263689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068314, 35.089287, 27.299932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406278, 0.218550, -0.887228,
		0.673086, 0.585098, 0.452345,
		0.617975, -0.780959, 0.090610,
		32.253708, 34.855000, 27.327116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575283, 35.589870, 27.215973>,  <31.821123, 35.401669, 27.263689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575283, 35.589870, 27.215973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574791, 35.197998, 27.135750>,  <32.574493, 34.962875, 27.087616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574791, 35.197998, 27.135750>,  <32.575283, 35.589870, 27.215973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574791, 35.197998, 27.135750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572575, 0.163737, -0.803335,
		0.819851, -0.115826, 0.560739,
		-0.001233, -0.979681, -0.200559,
		32.574421, 34.904095, 27.075583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270405, 35.455189, 26.979948>,  <32.575283, 35.589870, 27.215973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270405, 35.455189, 26.979948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034248, 35.156185, 26.858183>,  <32.892555, 34.976784, 26.785124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034248, 35.156185, 26.858183>,  <33.270405, 35.455189, 26.979948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034248, 35.156185, 26.858183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477673, -0.019588, -0.878319,
		0.650586, -0.663966, 0.368628,
		-0.590395, -0.747506, -0.304415,
		32.857128, 34.931934, 26.766859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642864, 34.997131, 26.509899>,  <33.270405, 35.455189, 26.979948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642864, 34.997131, 26.509899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281696, 34.850559, 26.420048>,  <33.064995, 34.762615, 26.366137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281696, 34.850559, 26.420048>,  <33.642864, 34.997131, 26.509899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281696, 34.850559, 26.420048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323974, -0.236815, -0.915947,
		0.282436, -0.899804, 0.332540,
		-0.902923, -0.366431, -0.224628,
		33.010818, 34.740631, 26.352659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677258, 34.242435, 26.276037>,  <33.642864, 34.997131, 26.509899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677258, 34.242435, 26.276037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347908, 34.406094, 26.118734>,  <33.150299, 34.504288, 26.024353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347908, 34.406094, 26.118734>,  <33.677258, 34.242435, 26.276037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347908, 34.406094, 26.118734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244627, -0.369388, -0.896499,
		-0.512061, -0.834358, 0.204058,
		-0.823377, 0.409144, -0.393256,
		33.100895, 34.528835, 26.000757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375404, 33.744408, 25.852509>,  <33.677258, 34.242435, 26.276037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375404, 33.744408, 25.852509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224884, 34.092110, 25.724266>,  <33.134571, 34.300732, 25.647320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224884, 34.092110, 25.724266>,  <33.375404, 33.744408, 25.852509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224884, 34.092110, 25.724266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084270, -0.312497, -0.946173,
		-0.922657, -0.383063, 0.044340,
		-0.376300, 0.869258, -0.320608,
		33.111996, 34.352886, 25.628084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943317, 33.501961, 25.424871>,  <33.375404, 33.744408, 25.852509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943317, 33.501961, 25.424871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012669, 33.884430, 25.330484>,  <33.054279, 34.113911, 25.273853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012669, 33.884430, 25.330484>,  <32.943317, 33.501961, 25.424871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012669, 33.884430, 25.330484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044697, -0.246987, -0.967988,
		-0.983841, 0.157278, -0.085559,
		0.173375, 0.956170, -0.235966,
		33.064682, 34.171280, 25.259695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593292, 33.515305, 24.808636>,  <32.943317, 33.501961, 25.424871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593292, 33.515305, 24.808636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834301, 33.834282, 24.821577>,  <32.978905, 34.025669, 24.829342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834301, 33.834282, 24.821577>,  <32.593292, 33.515305, 24.808636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834301, 33.834282, 24.821577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175974, -0.093200, -0.979973,
		-0.778460, 0.596149, -0.196485,
		0.602522, 0.797446, 0.032355,
		33.015057, 34.073517, 24.831284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421856, 34.002892, 24.258215>,  <32.593292, 33.515305, 24.808636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421856, 34.002892, 24.258215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802204, 34.099663, 24.335480>,  <33.030415, 34.157726, 24.381838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802204, 34.099663, 24.335480>,  <32.421856, 34.002892, 24.258215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802204, 34.099663, 24.335480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199622, -0.002240, -0.979870,
		-0.236627, 0.970291, -0.050424,
		0.950873, 0.241929, 0.193162,
		33.087467, 34.172241, 24.393429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618927, 34.651562, 23.773993>,  <32.421856, 34.002892, 24.258215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618927, 34.651562, 23.773993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958309, 34.476170, 23.892551>,  <33.161938, 34.370934, 23.963686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958309, 34.476170, 23.892551>,  <32.618927, 34.651562, 23.773993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958309, 34.476170, 23.892551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318644, -0.023947, -0.947572,
		0.422592, 0.898420, 0.119402,
		0.848458, -0.438483, 0.296397,
		33.212845, 34.344624, 23.981470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118195, 34.883141, 23.245546>,  <32.618927, 34.651562, 23.773993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118195, 34.883141, 23.245546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281506, 34.572712, 23.437807>,  <33.379494, 34.386456, 23.553164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281506, 34.572712, 23.437807>,  <33.118195, 34.883141, 23.245546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281506, 34.572712, 23.437807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491034, -0.257164, -0.832318,
		0.769542, 0.575833, 0.276082,
		0.408278, -0.776069, 0.480652,
		33.403988, 34.339890, 23.582003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899590, 34.859886, 23.257841>,  <33.118195, 34.883141, 23.245546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899590, 34.859886, 23.257841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816517, 34.480885, 23.355093>,  <33.766674, 34.253483, 23.413445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816517, 34.480885, 23.355093>,  <33.899590, 34.859886, 23.257841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816517, 34.480885, 23.355093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594071, -0.319634, -0.738183,
		0.777141, -0.008871, 0.629264,
		-0.207683, -0.947500, 0.243130,
		33.754211, 34.196636, 23.428032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480930, 34.490559, 22.933319>,  <33.899590, 34.859886, 23.257841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480930, 34.490559, 22.933319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232594, 34.191536, 23.027735>,  <34.083591, 34.012123, 23.084383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232594, 34.191536, 23.027735>,  <34.480930, 34.490559, 22.933319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232594, 34.191536, 23.027735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321309, -0.517296, -0.793199,
		0.715061, -0.416613, 0.561357,
		-0.620845, -0.747555, 0.236037,
		34.046341, 33.967270, 23.098545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865036, 33.793186, 22.972879>,  <34.480930, 34.490559, 22.933319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865036, 33.793186, 22.972879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474407, 33.752621, 22.896967>,  <34.240028, 33.728283, 22.851419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474407, 33.752621, 22.896967>,  <34.865036, 33.793186, 22.972879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474407, 33.752621, 22.896967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215033, -0.427854, -0.877896,
		0.007831, -0.898141, 0.439638,
		-0.976575, -0.101412, -0.189780,
		34.181435, 33.722198, 22.840033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394524, 33.356155, 23.380724>,  <34.865036, 33.793186, 22.972879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394524, 33.356155, 23.380724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712154, 33.583275, 23.293972>,  <35.902733, 33.719547, 23.241920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712154, 33.583275, 23.293972>,  <35.394524, 33.356155, 23.380724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712154, 33.583275, 23.293972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065958, 0.435216, 0.897907,
		0.604222, -0.698706, 0.383048,
		0.794081, 0.567800, -0.216882,
		35.950378, 33.753616, 23.228907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743412, 33.399525, 23.902336>,  <35.394524, 33.356155, 23.380724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743412, 33.399525, 23.902336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871674, 33.723743, 23.706301>,  <35.948631, 33.918274, 23.588678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871674, 33.723743, 23.706301>,  <35.743412, 33.399525, 23.902336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871674, 33.723743, 23.706301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143164, 0.469994, 0.870982,
		0.936315, -0.349446, 0.034664,
		0.320653, 0.810551, -0.490090,
		35.967869, 33.966908, 23.559273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403389, 33.644314, 24.289877>,  <35.743412, 33.399525, 23.902336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403389, 33.644314, 24.289877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277775, 33.957050, 24.074430>,  <36.202408, 34.144691, 23.945162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277775, 33.957050, 24.074430>,  <36.403389, 33.644314, 24.289877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277775, 33.957050, 24.074430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181092, 0.606227, 0.774399,
		0.931982, 0.145646, -0.331959,
		-0.314031, 0.781841, -0.538617,
		36.183567, 34.191605, 23.912846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868874, 34.197552, 24.280617>,  <36.403389, 33.644314, 24.289877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868874, 34.197552, 24.280617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540009, 34.410793, 24.200769>,  <36.342690, 34.538738, 24.152861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540009, 34.410793, 24.200769>,  <36.868874, 34.197552, 24.280617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540009, 34.410793, 24.200769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105379, 0.487136, 0.866945,
		0.559417, 0.691732, -0.456682,
		-0.822160, 0.533109, -0.199619,
		36.293362, 34.570724, 24.140884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013851, 34.807102, 24.436316>,  <36.868874, 34.197552, 24.280617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013851, 34.807102, 24.436316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615208, 34.838890, 24.427721>,  <36.376022, 34.857964, 24.422564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615208, 34.838890, 24.427721>,  <37.013851, 34.807102, 24.436316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615208, 34.838890, 24.427721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025898, 0.550401, 0.834498,
		0.078145, 0.831109, -0.550591,
		-0.996606, 0.079471, -0.021487,
		36.316227, 34.862732, 24.421274>
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
