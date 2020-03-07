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
	<35.931877, 52.522522, 50.205738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177734, 52.697098, 49.942913>,  <36.325249, 52.801846, 49.785217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177734, 52.697098, 49.942913>,  <35.931877, 52.522522, 50.205738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177734, 52.697098, 49.942913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137101, -0.761200, -0.633859,
		-0.776801, 0.479680, -0.408029,
		0.614641, 0.436441, -0.657066,
		36.362125, 52.828030, 49.745792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674469, 53.005104, 50.695362>,  <35.931877, 52.522522, 50.205738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674469, 53.005104, 50.695362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736492, 53.398071, 50.736958>,  <35.773708, 53.633850, 50.761913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736492, 53.398071, 50.736958>,  <35.674469, 53.005104, 50.695362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736492, 53.398071, 50.736958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850198, -0.186311, 0.492393,
		0.503109, 0.012055, -0.864139,
		0.155063, 0.982417, 0.103984,
		35.783012, 53.692795, 50.768154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309975, 53.333488, 50.359245>,  <35.674469, 53.005104, 50.695362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309975, 53.333488, 50.359245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217514, 53.477268, 50.720879>,  <36.162037, 53.563534, 50.937859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217514, 53.477268, 50.720879>,  <36.309975, 53.333488, 50.359245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217514, 53.477268, 50.720879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959031, -0.072264, 0.273929,
		0.163796, 0.930364, -0.328016,
		-0.231149, 0.359446, 0.904084,
		36.148170, 53.585102, 50.992104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423004, 54.099628, 50.650402>,  <36.309975, 53.333488, 50.359245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423004, 54.099628, 50.650402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456890, 53.807541, 50.921577>,  <36.477222, 53.632290, 51.084282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456890, 53.807541, 50.921577>,  <36.423004, 54.099628, 50.650402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456890, 53.807541, 50.921577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996256, 0.073870, -0.044919,
		-0.017279, 0.679207, 0.733743,
		0.084711, -0.730220, 0.677941,
		36.482304, 53.588474, 51.124958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781914, 54.281452, 51.283592>,  <36.423004, 54.099628, 50.650402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781914, 54.281452, 51.283592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833855, 53.888023, 51.233444>,  <36.865017, 53.651966, 51.203354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833855, 53.888023, 51.233444>,  <36.781914, 54.281452, 51.283592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833855, 53.888023, 51.233444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986034, 0.114792, 0.120665,
		-0.104291, -0.139289, 0.984745,
		0.129848, -0.983576, -0.125372,
		36.872810, 53.592949, 51.195831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268639, 53.963646, 51.796955>,  <36.781914, 54.281452, 51.283592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268639, 53.963646, 51.796955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289631, 53.729134, 51.473591>,  <37.302227, 53.588428, 51.279572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289631, 53.729134, 51.473591>,  <37.268639, 53.963646, 51.796955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289631, 53.729134, 51.473591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982492, 0.175223, -0.063290,
		0.178758, -0.790933, 0.585210,
		0.052484, -0.586278, -0.808408,
		37.305378, 53.553249, 51.231068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913380, 53.591858, 51.673134>,  <37.268639, 53.963646, 51.796955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913380, 53.591858, 51.673134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814251, 53.598797, 51.285675>,  <37.754776, 53.602962, 51.053200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814251, 53.598797, 51.285675>,  <37.913380, 53.591858, 51.673134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814251, 53.598797, 51.285675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804619, 0.560577, -0.195811,
		0.539606, -0.827921, -0.152883,
		-0.247819, 0.017352, -0.968651,
		37.739906, 53.604004, 50.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149612, 54.156975, 51.178829>,  <37.913380, 53.591858, 51.673134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149612, 54.156975, 51.178829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044212, 54.412678, 50.889854>,  <37.980972, 54.566101, 50.716469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044212, 54.412678, 50.889854>,  <38.149612, 54.156975, 51.178829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044212, 54.412678, 50.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800305, 0.562994, 0.206272,
		0.538590, -0.523819, -0.659950,
		-0.263499, 0.639258, -0.722438,
		37.965164, 54.604454, 50.673122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689762, 54.249981, 50.710587>,  <38.149612, 54.156975, 51.178829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689762, 54.249981, 50.710587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458206, 54.568825, 50.779278>,  <38.319271, 54.760132, 50.820492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458206, 54.568825, 50.779278>,  <38.689762, 54.249981, 50.710587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458206, 54.568825, 50.779278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813629, 0.550796, 0.186095,
		0.053749, 0.247455, -0.967407,
		-0.578894, 0.797113, 0.171732,
		38.284538, 54.807961, 50.830799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162212, 54.791496, 50.507183>,  <38.689762, 54.249981, 50.710587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162212, 54.791496, 50.507183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942226, 54.958782, 50.796356>,  <38.810234, 55.059155, 50.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942226, 54.958782, 50.796356>,  <39.162212, 54.791496, 50.507183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942226, 54.958782, 50.796356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788316, 0.545840, 0.283929,
		-0.275863, 0.726052, -0.629879,
		-0.549961, 0.418219, 0.722936,
		38.777237, 55.084248, 51.013237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926720, 54.807957, 50.410374>,  <39.162212, 54.791496, 50.507183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926720, 54.807957, 50.410374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326656, 54.813206, 50.415321>,  <40.566616, 54.816353, 50.418289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326656, 54.813206, 50.415321>,  <39.926720, 54.807957, 50.410374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326656, 54.813206, 50.415321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005919, -0.409004, 0.912513,
		0.017030, -0.912438, -0.408860,
		0.999837, 0.013120, 0.012367,
		40.626606, 54.817142, 50.419033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160343, 54.127964, 50.541977>,  <39.926720, 54.807957, 50.410374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160343, 54.127964, 50.541977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428055, 54.398033, 50.666042>,  <40.588680, 54.560074, 50.740482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428055, 54.398033, 50.666042>,  <40.160343, 54.127964, 50.541977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428055, 54.398033, 50.666042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021174, -0.399943, 0.916295,
		0.742709, -0.619826, -0.253378,
		0.669280, 0.675175, 0.310165,
		40.628838, 54.600586, 50.759090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274624, 53.470898, 50.104820>,  <40.160343, 54.127964, 50.541977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274624, 53.470898, 50.104820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609650, 53.569279, 50.299957>,  <40.810665, 53.628307, 50.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609650, 53.569279, 50.299957>,  <40.274624, 53.470898, 50.104820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609650, 53.569279, 50.299957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235761, 0.968229, -0.083367,
		-0.492845, -0.045188, 0.868943,
		0.837568, 0.245949, 0.487841,
		40.860920, 53.643063, 50.446308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220024, 54.051369, 49.660080>,  <40.274624, 53.470898, 50.104820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220024, 54.051369, 49.660080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334736, 54.322197, 49.931175>,  <40.403564, 54.484695, 50.093834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334736, 54.322197, 49.931175>,  <40.220024, 54.051369, 49.660080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334736, 54.322197, 49.931175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941114, -0.066891, -0.331405,
		-0.179051, 0.732871, -0.656385,
		0.286783, 0.677072, 0.677738,
		40.420773, 54.525318, 50.134495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797665, 54.535675, 49.343842>,  <40.220024, 54.051369, 49.660080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797665, 54.535675, 49.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896267, 54.571960, 49.729797>,  <40.955429, 54.593731, 49.961369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896267, 54.571960, 49.729797>,  <40.797665, 54.535675, 49.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896267, 54.571960, 49.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962820, 0.090593, -0.254499,
		-0.110499, 0.991748, -0.065010,
		0.246509, 0.090714, 0.964886,
		40.970219, 54.599174, 50.019264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396233, 54.851269, 49.195938>,  <40.797665, 54.535675, 49.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396233, 54.851269, 49.195938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431038, 54.741142, 49.578899>,  <41.451920, 54.675068, 49.808678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431038, 54.741142, 49.578899>,  <41.396233, 54.851269, 49.195938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431038, 54.741142, 49.578899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987990, -0.099337, -0.118356,
		0.127692, 0.956208, 0.263366,
		0.087011, -0.275316, 0.957408,
		41.457142, 54.658546, 49.866123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830025, 55.330429, 49.538597>,  <41.396233, 54.851269, 49.195938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830025, 55.330429, 49.538597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861717, 54.970665, 49.710541>,  <41.880733, 54.754807, 49.813705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861717, 54.970665, 49.710541>,  <41.830025, 55.330429, 49.538597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861717, 54.970665, 49.710541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995989, 0.089405, 0.003489,
		-0.041569, 0.427856, 0.902891,
		0.079230, -0.899415, 0.429856,
		41.885487, 54.700840, 49.839497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503738, 55.438816, 49.059738>,  <41.830025, 55.330429, 49.538597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503738, 55.438816, 49.059738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654049, 55.084656, 49.169182>,  <42.744236, 54.872162, 49.234848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654049, 55.084656, 49.169182>,  <42.503738, 55.438816, 49.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654049, 55.084656, 49.169182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460554, 0.434632, 0.773941,
		-0.804166, -0.164815, 0.571098,
		0.375775, -0.885399, 0.273610,
		42.766781, 54.819035, 49.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557487, 55.750053, 48.459175>,  <42.503738, 55.438816, 49.059738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557487, 55.750053, 48.459175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800041, 55.932995, 48.198982>,  <42.945572, 56.042759, 48.042866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800041, 55.932995, 48.198982>,  <42.557487, 55.750053, 48.459175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800041, 55.932995, 48.198982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739056, -0.626015, 0.248799,
		-0.293425, -0.631613, -0.717612,
		0.606381, 0.457352, -0.650486,
		42.981956, 56.070202, 48.003838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908958, 55.259537, 47.853680>,  <42.557487, 55.750053, 48.459175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908958, 55.259537, 47.853680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145561, 55.575401, 47.918846>,  <43.287525, 55.764919, 47.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145561, 55.575401, 47.918846>,  <42.908958, 55.259537, 47.853680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145561, 55.575401, 47.918846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754004, -0.613322, 0.235187,
		0.285642, -0.016274, -0.958198,
		0.591512, 0.789665, 0.162920,
		43.323013, 55.812302, 47.967724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620960, 55.222927, 47.571030>,  <42.908958, 55.259537, 47.853680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620960, 55.222927, 47.571030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654675, 55.458908, 47.892242>,  <43.674904, 55.600498, 48.084969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654675, 55.458908, 47.892242>,  <43.620960, 55.222927, 47.571030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654675, 55.458908, 47.892242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781174, -0.539426, 0.314304,
		0.618598, 0.600814, -0.506319,
		0.084284, 0.589951, 0.803028,
		43.679958, 55.635895, 48.133152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261593, 55.521801, 47.436684>,  <43.620960, 55.222927, 47.571030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261593, 55.521801, 47.436684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144783, 55.481987, 47.817169>,  <44.074696, 55.458099, 48.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144783, 55.481987, 47.817169>,  <44.261593, 55.521801, 47.436684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144783, 55.481987, 47.817169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718404, -0.679379, 0.149466,
		0.631360, 0.727006, 0.269902,
		-0.292029, -0.099531, 0.951216,
		44.057175, 55.452129, 48.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848686, 55.746540, 47.961327>,  <44.261593, 55.521801, 47.436684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848686, 55.746540, 47.961327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596802, 55.464546, 48.091839>,  <44.445671, 55.295349, 48.170147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596802, 55.464546, 48.091839>,  <44.848686, 55.746540, 47.961327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596802, 55.464546, 48.091839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756965, -0.651236, 0.053807,
		0.174550, 0.280863, 0.943742,
		-0.629711, -0.704987, 0.326277,
		44.407887, 55.253052, 48.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219219, 55.429920, 48.505852>,  <44.848686, 55.746540, 47.961327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219219, 55.429920, 48.505852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966427, 55.162594, 48.348904>,  <44.814751, 55.002197, 48.254734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966427, 55.162594, 48.348904>,  <45.219219, 55.429920, 48.505852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966427, 55.162594, 48.348904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717483, -0.695940, 0.029763,
		-0.292957, -0.262709, 0.919326,
		-0.631977, -0.668320, -0.392370,
		44.776833, 54.962097, 48.231194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914661, 55.228413, 48.884350>,  <45.219219, 55.429920, 48.505852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914661, 55.228413, 48.884350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908958, 55.482079, 49.193577>,  <45.905537, 55.634277, 49.379112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908958, 55.482079, 49.193577>,  <45.914661, 55.228413, 48.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908958, 55.482079, 49.193577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959287, 0.226779, -0.168342,
		-0.282072, 0.739196, -0.611575,
		-0.014255, 0.634161, 0.773070,
		45.904682, 55.672325, 49.425499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987400, 55.911373, 48.629631>,  <45.914661, 55.228413, 48.884350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987400, 55.911373, 48.629631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147182, 55.821625, 48.985180>,  <46.243053, 55.767776, 49.198509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.147182, 55.821625, 48.985180>,  <45.987400, 55.911373, 48.629631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147182, 55.821625, 48.985180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916708, 0.088226, -0.389695,
		0.009014, 0.970503, 0.240922,
		0.399456, -0.224367, 0.888872,
		46.267017, 55.754314, 49.251842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405994, 56.460701, 48.945507>,  <45.987400, 55.911373, 48.629631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405994, 56.460701, 48.945507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541172, 56.091812, 49.020660>,  <46.622280, 55.870480, 49.065750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.541172, 56.091812, 49.020660>,  <46.405994, 56.460701, 48.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541172, 56.091812, 49.020660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874035, 0.233482, -0.426085,
		0.349079, 0.308208, 0.884959,
		0.337945, -0.922222, 0.187881,
		46.642555, 55.815144, 49.077026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113243, 56.339893, 49.053703>,  <46.405994, 56.460701, 48.945507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113243, 56.339893, 49.053703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069656, 55.975460, 48.894680>,  <47.043503, 55.756802, 48.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069656, 55.975460, 48.894680>,  <47.113243, 56.339893, 49.053703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069656, 55.975460, 48.894680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860093, 0.114095, -0.497215,
		0.498364, -0.396120, 0.771182,
		-0.108969, -0.911082, -0.397561,
		47.036964, 55.702137, 48.775414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.760818, 55.867516, 49.167488>,  <47.113243, 56.339893, 49.053703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.760818, 55.867516, 49.167488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562801, 55.798042, 48.826954>,  <47.443993, 55.756359, 48.622635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562801, 55.798042, 48.826954>,  <47.760818, 55.867516, 49.167488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562801, 55.798042, 48.826954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854832, 0.078045, -0.513002,
		0.155542, -0.981704, 0.109834,
		-0.495044, -0.173683, -0.851332,
		47.414288, 55.745937, 48.571556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.390537, 55.914398, 49.411377>,  <47.760818, 55.867516, 49.167488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.390537, 55.914398, 49.411377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.600704, 55.577782, 49.361179>,  <48.726803, 55.375813, 49.331062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.600704, 55.577782, 49.361179>,  <48.390537, 55.914398, 49.411377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.600704, 55.577782, 49.361179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850647, 0.516360, 0.098852,
		-0.018389, -0.158688, 0.987157,
		0.525415, -0.841541, -0.125492,
		48.758327, 55.325321, 49.323532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.865944, 55.943592, 49.898026>,  <48.390537, 55.914398, 49.411377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.865944, 55.943592, 49.898026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.012920, 55.653965, 49.664543>,  <49.101105, 55.480186, 49.524456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.012920, 55.653965, 49.664543>,  <48.865944, 55.943592, 49.898026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.012920, 55.653965, 49.664543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918626, 0.380607, 0.106137,
		0.145311, -0.575204, 0.805000,
		0.367439, -0.724071, -0.583704,
		49.123154, 55.436745, 49.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.241314, 55.489155, 50.384552>,  <48.865944, 55.943592, 49.898026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.241314, 55.489155, 50.384552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.355324, 55.529846, 50.003307>,  <49.423729, 55.554260, 49.774563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.355324, 55.529846, 50.003307>,  <49.241314, 55.489155, 50.384552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.355324, 55.529846, 50.003307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777905, 0.556409, 0.292015,
		0.560024, -0.824658, 0.079452,
		0.285020, 0.101729, -0.953108,
		49.440830, 55.560364, 49.717377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.025108, 55.302559, 50.197041>,  <49.241314, 55.489155, 50.384552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.025108, 55.302559, 50.197041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.876652, 55.575207, 49.944801>,  <49.787579, 55.738796, 49.793457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.876652, 55.575207, 49.944801>,  <50.025108, 55.302559, 50.197041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.876652, 55.575207, 49.944801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768517, 0.606636, 0.203408,
		0.521189, -0.409130, -0.748983,
		-0.371139, 0.681620, -0.630595,
		49.765308, 55.779694, 49.755623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.472038, 55.542339, 49.617268>,  <50.025108, 55.302559, 50.197041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.472038, 55.542339, 49.617268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226936, 55.836540, 49.732903>,  <50.079876, 56.013062, 49.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226936, 55.836540, 49.732903>,  <50.472038, 55.542339, 49.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.226936, 55.836540, 49.732903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788303, 0.543021, 0.289321,
		0.055818, 0.405168, -0.912537,
		-0.612750, 0.735505, 0.289085,
		50.043110, 56.057190, 49.819630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.658604, 56.321693, 49.398903>,  <50.472038, 55.542339, 49.617268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.658604, 56.321693, 49.398903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.449150, 56.348949, 49.738590>,  <50.323479, 56.365303, 49.942402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.449150, 56.348949, 49.738590>,  <50.658604, 56.321693, 49.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.449150, 56.348949, 49.738590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738909, 0.532480, 0.412891,
		-0.424056, 0.843695, -0.329173,
		-0.523632, 0.068140, 0.849215,
		50.292061, 56.369392, 49.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.474373, 57.072701, 49.624878>,  <50.658604, 56.321693, 49.398903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.474373, 57.072701, 49.624878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.506180, 56.832298, 49.942989>,  <50.525265, 56.688057, 50.133858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.506180, 56.832298, 49.942989>,  <50.474373, 57.072701, 49.624878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.506180, 56.832298, 49.942989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503564, 0.712746, 0.488279,
		-0.860291, 0.361651, 0.359316,
		0.079514, -0.601001, 0.795283,
		50.530033, 56.651997, 50.181576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.400509, 57.401588, 50.338455>,  <50.474373, 57.072701, 49.624878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.400509, 57.401588, 50.338455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.650120, 57.096287, 50.405426>,  <50.799885, 56.913105, 50.445610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.650120, 57.096287, 50.405426>,  <50.400509, 57.401588, 50.338455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.650120, 57.096287, 50.405426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551684, 0.582087, 0.597344,
		-0.553384, -0.280390, 0.784313,
		0.624028, -0.763254, 0.167431,
		50.837330, 56.867310, 50.455654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.533421, 57.467480, 50.984375>,  <50.400509, 57.401588, 50.338455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.533421, 57.467480, 50.984375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841331, 57.254456, 50.843624>,  <51.026077, 57.126640, 50.759174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841331, 57.254456, 50.843624>,  <50.533421, 57.467480, 50.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.841331, 57.254456, 50.843624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636392, 0.597596, 0.487734,
		-0.049467, -0.599380, 0.798935,
		0.769778, -0.532563, -0.351879,
		51.072266, 57.094688, 50.738060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.984917, 57.387383, 51.553162>,  <50.533421, 57.467480, 50.984375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.984917, 57.387383, 51.553162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.185047, 57.359360, 51.207962>,  <51.305126, 57.342548, 51.000843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.185047, 57.359360, 51.207962>,  <50.984917, 57.387383, 51.553162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.185047, 57.359360, 51.207962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735246, 0.560754, 0.380746,
		0.457256, -0.825014, 0.332069,
		0.500330, -0.070054, -0.862996,
		51.335148, 57.338345, 50.949062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.668457, 57.026875, 51.566841>,  <50.984917, 57.387383, 51.553162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.668457, 57.026875, 51.566841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.671898, 57.322582, 51.297501>,  <51.673962, 57.500008, 51.135895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.671898, 57.322582, 51.297501>,  <51.668457, 57.026875, 51.566841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.671898, 57.322582, 51.297501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792770, 0.405371, 0.455182,
		0.609461, -0.537727, -0.582587,
		0.008600, 0.739273, -0.673351,
		51.674477, 57.544365, 51.095497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.277466, 57.058434, 51.164955>,  <51.668457, 57.026875, 51.566841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.277466, 57.058434, 51.164955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.144619, 57.435524, 51.152565>,  <52.064911, 57.661777, 51.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.144619, 57.435524, 51.152565>,  <52.277466, 57.058434, 51.164955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.144619, 57.435524, 51.152565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712727, 0.272326, 0.646420,
		0.617835, 0.192609, -0.762353,
		-0.332114, 0.942730, -0.030975,
		52.044983, 57.718342, 51.143272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.736488, 57.342739, 50.731178>,  <52.277466, 57.058434, 51.164955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.736488, 57.342739, 50.731178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.531525, 57.528625, 51.020035>,  <52.408546, 57.640156, 51.193348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.531525, 57.528625, 51.020035>,  <52.736488, 57.342739, 50.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.531525, 57.528625, 51.020035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725777, -0.215127, 0.653428,
		0.459007, 0.858931, -0.227046,
		-0.512406, 0.464713, 0.722138,
		52.377804, 57.668037, 51.236675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.130070, 57.952690, 50.981571>,  <52.736488, 57.342739, 50.731178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.130070, 57.952690, 50.981571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.889816, 57.823051, 51.273926>,  <52.745663, 57.745270, 51.449337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.889816, 57.823051, 51.273926>,  <53.130070, 57.952690, 50.981571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.889816, 57.823051, 51.273926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797812, -0.183204, 0.574398,
		-0.052260, 0.928115, 0.368608,
		-0.600637, -0.324097, 0.730887,
		52.709625, 57.725822, 51.493191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.426510, 58.273357, 51.532764>,  <53.130070, 57.952690, 50.981571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.426510, 58.273357, 51.532764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.206715, 57.959450, 51.647442>,  <53.074837, 57.771103, 51.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.206715, 57.959450, 51.647442>,  <53.426510, 58.273357, 51.532764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.206715, 57.959450, 51.647442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620777, -0.153818, 0.768750,
		-0.559195, 0.600394, 0.571689,
		-0.549488, -0.784773, 0.286696,
		53.041866, 57.724018, 51.733452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.957630, 58.376877, 52.191051>,  <53.426510, 58.273357, 51.532764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.957630, 58.376877, 52.191051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.085670, 58.001091, 52.142151>,  <53.162495, 57.775620, 52.112812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.085670, 58.001091, 52.142151>,  <52.957630, 58.376877, 52.191051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.085670, 58.001091, 52.142151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633394, 0.116263, 0.765046,
		-0.704518, -0.322327, 0.632265,
		0.320104, -0.939462, -0.122251,
		53.181702, 57.719254, 52.105476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.116661, 57.984837, 52.850929>,  <52.957630, 58.376877, 52.191051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.116661, 57.984837, 52.850929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.346035, 57.815582, 52.570320>,  <53.483658, 57.714031, 52.401955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.346035, 57.815582, 52.570320>,  <53.116661, 57.984837, 52.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.346035, 57.815582, 52.570320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804263, 0.127705, 0.580389,
		-0.155997, -0.897021, 0.413543,
		0.573433, -0.423137, -0.701520,
		53.518066, 57.688641, 52.359863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.562546, 57.410255, 53.199211>,  <53.116661, 57.984837, 52.850929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.562546, 57.410255, 53.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.749729, 57.603054, 52.902916>,  <53.862041, 57.718735, 52.725140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.749729, 57.603054, 52.902916>,  <53.562546, 57.410255, 53.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.749729, 57.603054, 52.902916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761583, 0.205272, 0.614699,
		0.448335, -0.851788, -0.271021,
		0.467960, 0.481996, -0.740738,
		53.890118, 57.747654, 52.680695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.201355, 57.104897, 53.080067>,  <53.562546, 57.410255, 53.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.201355, 57.104897, 53.080067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.182983, 57.504402, 53.072433>,  <54.171963, 57.744106, 53.067852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.182983, 57.504402, 53.072433>,  <54.201355, 57.104897, 53.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.182983, 57.504402, 53.072433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739883, 0.046844, 0.671103,
		0.671166, 0.016704, -0.741119,
		-0.045927, 0.998763, -0.019081,
		54.169205, 57.804031, 53.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.883991, 57.280102, 52.772888>,  <54.201355, 57.104897, 53.080067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.883991, 57.280102, 52.772888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.721741, 57.543991, 53.025944>,  <54.624390, 57.702324, 53.177776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.721741, 57.543991, 53.025944>,  <54.883991, 57.280102, 52.772888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.721741, 57.543991, 53.025944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688777, -0.234387, 0.686038,
		0.600876, 0.714026, -0.359326,
		-0.405628, 0.659719, 0.632643,
		54.600052, 57.741905, 53.215736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.314526, 58.008278, 52.969074>,  <54.883991, 57.280102, 52.772888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.314526, 58.008278, 52.969074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.090736, 57.815372, 53.238712>,  <54.956463, 57.699627, 53.400497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.090736, 57.815372, 53.238712>,  <55.314526, 58.008278, 52.969074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.090736, 57.815372, 53.238712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825574, -0.252049, 0.504875,
		-0.073578, 0.838982, 0.539161,
		-0.559476, -0.482265, 0.674097,
		54.922894, 57.670692, 53.440941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.414894, 58.259735, 53.614708>,  <55.314526, 58.008278, 52.969074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.414894, 58.259735, 53.614708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.337021, 57.869911, 53.570293>,  <55.290298, 57.636017, 53.543644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.337021, 57.869911, 53.570293>,  <55.414894, 58.259735, 53.614708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.337021, 57.869911, 53.570293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877474, -0.223629, 0.424298,
		-0.438335, -0.014828, 0.898689,
		-0.194682, -0.974561, -0.111035,
		55.278618, 57.577541, 53.536983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.411644, 57.887844, 54.242779>,  <55.414894, 58.259735, 53.614708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.411644, 57.887844, 54.242779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.531784, 57.665737, 53.932564>,  <55.603867, 57.532471, 53.746433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.531784, 57.665737, 53.932564>,  <55.411644, 57.887844, 54.242779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.531784, 57.665737, 53.932564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836102, -0.238044, 0.494235,
		-0.459048, -0.796874, 0.392768,
		0.300347, -0.555272, -0.775542,
		55.621887, 57.499157, 53.699902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.615196, 57.275959, 54.555996>,  <55.411644, 57.887844, 54.242779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.615196, 57.275959, 54.555996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.828972, 57.333466, 54.222839>,  <55.957237, 57.367970, 54.022945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.828972, 57.333466, 54.222839>,  <55.615196, 57.275959, 54.555996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.828972, 57.333466, 54.222839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836389, -0.231928, 0.496652,
		-0.121767, -0.962050, -0.244198,
		0.534440, 0.143769, -0.832889,
		55.989304, 57.376595, 53.972973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.987862, 56.663063, 54.322235>,  <55.615196, 57.275959, 54.555996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.987862, 56.663063, 54.322235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.176346, 57.010250, 54.259521>,  <56.289436, 57.218563, 54.221893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.176346, 57.010250, 54.259521>,  <55.987862, 56.663063, 54.322235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.176346, 57.010250, 54.259521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748395, -0.299387, 0.591838,
		0.466758, -0.396221, -0.790661,
		0.471213, 0.867972, -0.156788,
		56.317711, 57.270641, 54.212486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.570717, 56.503593, 54.064259>,  <55.987862, 56.663063, 54.322235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.570717, 56.503593, 54.064259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571648, 56.838730, 54.282619>,  <56.572205, 57.039814, 54.413635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571648, 56.838730, 54.282619>,  <56.570717, 56.503593, 54.064259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.571648, 56.838730, 54.282619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579079, -0.446191, 0.682335,
		0.815268, 0.314536, -0.486214,
		0.002325, 0.837843, 0.545907,
		56.572346, 57.090084, 54.446392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.110119, 56.526218, 54.529121>,  <56.570717, 56.503593, 54.064259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.110119, 56.526218, 54.529121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.908478, 56.793373, 54.748142>,  <56.787495, 56.953667, 54.879555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.908478, 56.793373, 54.748142>,  <57.110119, 56.526218, 54.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.908478, 56.793373, 54.748142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553423, -0.236918, 0.798494,
		0.663028, 0.705548, -0.250193,
		-0.504101, 0.667886, 0.547549,
		56.757248, 56.993740, 54.912407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.475704, 57.236744, 54.858391>,  <57.110119, 56.526218, 54.529121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.475704, 57.236744, 54.858391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.166420, 57.070427, 55.049919>,  <56.980850, 56.970638, 55.164837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.166420, 57.070427, 55.049919>,  <57.475704, 57.236744, 54.858391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.166420, 57.070427, 55.049919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548587, -0.059789, 0.833953,
		-0.318121, 0.907493, 0.274326,
		-0.773209, -0.415790, 0.478819,
		56.934456, 56.945690, 55.193565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.201443, 57.604019, 55.475689>,  <57.475704, 57.236744, 54.858391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.201443, 57.604019, 55.475689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.201736, 57.207710, 55.529892>,  <57.201912, 56.969925, 55.562412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.201736, 57.207710, 55.529892>,  <57.201443, 57.604019, 55.475689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.201736, 57.207710, 55.529892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637909, 0.104818, 0.762945,
		-0.770112, 0.085882, 0.632102,
		0.000733, -0.990776, 0.135507,
		57.201958, 56.910477, 55.570545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.185287, 57.474060, 56.165581>,  <57.201443, 57.604019, 55.475689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.185287, 57.474060, 56.165581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.335030, 57.140354, 56.003662>,  <57.424877, 56.940132, 55.906509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.335030, 57.140354, 56.003662>,  <57.185287, 57.474060, 56.165581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.335030, 57.140354, 56.003662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748595, 0.014278, 0.662874,
		-0.547230, -0.551184, 0.629869,
		0.374359, -0.834261, -0.404801,
		57.447338, 56.890076, 55.882221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.206127, 56.980164, 56.722034>,  <57.185287, 57.474060, 56.165581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.206127, 56.980164, 56.722034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.479362, 56.890385, 56.444038>,  <57.643303, 56.836517, 56.277241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.479362, 56.890385, 56.444038>,  <57.206127, 56.980164, 56.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.479362, 56.890385, 56.444038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717883, 0.031373, 0.695457,
		-0.134289, -0.973981, 0.182557,
		0.683089, -0.224447, -0.694991,
		57.684288, 56.823051, 56.235542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.607128, 56.359989, 56.876255>,  <57.206127, 56.980164, 56.722034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.607128, 56.359989, 56.876255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.872505, 56.539108, 56.636482>,  <58.031731, 56.646580, 56.492619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.872505, 56.539108, 56.636482>,  <57.607128, 56.359989, 56.876255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.872505, 56.539108, 56.636482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689512, -0.054805, 0.722197,
		0.290545, -0.892454, -0.345121,
		0.663443, 0.447796, -0.599435,
		58.071537, 56.673447, 56.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.222816, 55.958542, 56.998367>,  <57.607128, 56.359989, 56.876255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.222816, 55.958542, 56.998367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.272301, 56.336273, 56.876427>,  <58.301991, 56.562912, 56.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.272301, 56.336273, 56.876427>,  <58.222816, 55.958542, 56.998367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.272301, 56.336273, 56.876427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701329, 0.134136, 0.700103,
		0.702021, -0.300409, -0.645694,
		0.123707, 0.944331, -0.304852,
		58.309414, 56.619572, 56.784969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.992489, 56.043056, 56.844471>,  <58.222816, 55.958542, 56.998367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.992489, 56.043056, 56.844471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.811157, 56.384964, 56.945549>,  <58.702358, 56.590111, 57.006195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.811157, 56.384964, 56.945549>,  <58.992489, 56.043056, 56.844471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.811157, 56.384964, 56.945549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606460, 0.088022, 0.790227,
		0.653219, 0.511487, -0.558288,
		-0.453332, 0.854771, 0.252699,
		58.675156, 56.641396, 57.021358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.381874, 56.627598, 56.964188>,  <58.992489, 56.043056, 56.844471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.381874, 56.627598, 56.964188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.079506, 56.640549, 57.225731>,  <58.898087, 56.648319, 57.382656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.079506, 56.640549, 57.225731>,  <59.381874, 56.627598, 56.964188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.079506, 56.640549, 57.225731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654661, 0.035635, 0.755082,
		0.001143, 0.998840, -0.048131,
		-0.755922, 0.032373, 0.653861,
		58.852730, 56.650261, 57.421890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.476742, 57.225368, 57.407261>,  <59.381874, 56.627598, 56.964188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.476742, 57.225368, 57.407261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.256050, 56.965210, 57.616096>,  <59.123634, 56.809113, 57.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.256050, 56.965210, 57.616096>,  <59.476742, 57.225368, 57.407261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.256050, 56.965210, 57.616096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699804, -0.020472, 0.714041,
		-0.453723, 0.759318, 0.466447,
		-0.551733, -0.650398, 0.522085,
		59.090530, 56.770092, 57.772720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.177525, 57.097919, 57.560566>,  <59.476742, 57.225368, 57.407261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.177525, 57.097919, 57.560566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047523, 57.437309, 57.727638>,  <59.969521, 57.640945, 57.827881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047523, 57.437309, 57.727638>,  <60.177525, 57.097919, 57.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.047523, 57.437309, 57.727638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906818, 0.154242, 0.392288,
		0.268423, 0.506258, -0.819544,
		-0.325007, 0.848476, 0.417682,
		59.950020, 57.691853, 57.852943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.602184, 57.777851, 57.270737>,  <60.177525, 57.097919, 57.560566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.602184, 57.777851, 57.270737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.425529, 57.874718, 57.616295>,  <60.319538, 57.932838, 57.823631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.425529, 57.874718, 57.616295>,  <60.602184, 57.777851, 57.270737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.425529, 57.874718, 57.616295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868115, 0.358500, 0.343299,
		-0.226571, 0.901573, -0.368553,
		-0.441635, 0.242165, 0.863895,
		60.293037, 57.947369, 57.875462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.450638, 58.500614, 57.370033>,  <60.602184, 57.777851, 57.270737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.450638, 58.500614, 57.370033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.525017, 58.300297, 57.708176>,  <60.569645, 58.180107, 57.911060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.525017, 58.300297, 57.708176>,  <60.450638, 58.500614, 57.370033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.525017, 58.300297, 57.708176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774938, 0.603690, 0.187164,
		-0.604064, 0.620297, 0.500337,
		0.185952, -0.500789, 0.845359,
		60.580803, 58.150059, 57.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.343254, 58.926754, 58.018379>,  <60.450638, 58.500614, 57.370033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.343254, 58.926754, 58.018379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.588165, 58.639626, 58.150955>,  <60.735111, 58.467350, 58.230499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.588165, 58.639626, 58.150955>,  <60.343254, 58.926754, 58.018379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.588165, 58.639626, 58.150955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617263, 0.695937, 0.366959,
		-0.494071, -0.020095, 0.869190,
		0.612275, -0.717822, 0.331438,
		60.771847, 58.424278, 58.250385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.762753, 59.267010, 58.461281>,  <60.343254, 58.926754, 58.018379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.762753, 59.267010, 58.461281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947151, 58.913136, 58.433525>,  <61.057789, 58.700809, 58.416870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947151, 58.913136, 58.433525>,  <60.762753, 59.267010, 58.461281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.947151, 58.913136, 58.433525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852574, 0.419856, 0.311188,
		-0.246171, -0.202615, 0.947812,
		0.460996, -0.884685, -0.069388,
		61.085449, 58.647732, 58.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.139530, 59.092514, 59.120338>,  <60.762753, 59.267010, 58.461281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.139530, 59.092514, 59.120338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.322113, 58.953133, 58.792870>,  <61.431664, 58.869503, 58.596390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.322113, 58.953133, 58.792870>,  <61.139530, 59.092514, 59.120338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.322113, 58.953133, 58.792870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791290, 0.579693, 0.194460,
		0.406819, -0.736571, 0.540334,
		0.456462, -0.348451, -0.818672,
		61.459053, 58.848598, 58.547268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.848888, 58.690845, 59.180672>,  <61.139530, 59.092514, 59.120338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.848888, 58.690845, 59.180672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.788849, 58.925018, 58.861992>,  <61.752823, 59.065521, 58.670784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.788849, 58.925018, 58.861992>,  <61.848888, 58.690845, 59.180672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.788849, 58.925018, 58.861992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689484, 0.639522, 0.340035,
		0.708577, -0.498273, -0.499643,
		-0.150103, 0.585436, -0.796702,
		61.743816, 59.100651, 58.622982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.281715, 58.661572, 58.562737>,  <61.848888, 58.690845, 59.180672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.281715, 58.661572, 58.562737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.162781, 59.039795, 58.615662>,  <62.091419, 59.266727, 58.647419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.162781, 59.039795, 58.615662>,  <62.281715, 58.661572, 58.562737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.162781, 59.039795, 58.615662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907843, 0.237084, 0.345850,
		0.295651, 0.222959, -0.928913,
		-0.297340, 0.945558, 0.132318,
		62.073578, 59.323463, 58.655357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.791817, 59.022797, 58.257252>,  <62.281715, 58.661572, 58.562737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.791817, 59.022797, 58.257252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.598503, 59.218216, 58.547836>,  <62.482513, 59.335468, 58.722187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.598503, 59.218216, 58.547836>,  <62.791817, 59.022797, 58.257252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.598503, 59.218216, 58.547836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874662, 0.233991, 0.424516,
		0.037412, 0.840575, -0.540402,
		-0.483287, 0.488551, 0.726465,
		62.453518, 59.364780, 58.765778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.966850, 59.785820, 58.306713>,  <62.791817, 59.022797, 58.257252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.966850, 59.785820, 58.306713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.864502, 59.571304, 58.628441>,  <62.803093, 59.442596, 58.821476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.864502, 59.571304, 58.628441>,  <62.966850, 59.785820, 58.306713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.864502, 59.571304, 58.628441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936328, 0.069475, 0.344184,
		-0.240462, 0.841172, 0.484364,
		-0.255867, -0.536287, 0.804319,
		62.787743, 59.410419, 58.869736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.130783, 60.065037, 58.987129>,  <62.966850, 59.785820, 58.306713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.130783, 60.065037, 58.987129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.155609, 59.667442, 59.023201>,  <63.170506, 59.428886, 59.044846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.155609, 59.667442, 59.023201>,  <63.130783, 60.065037, 58.987129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.155609, 59.667442, 59.023201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900748, 0.094703, 0.423891,
		-0.429883, 0.054923, 0.901212,
		0.062066, -0.993989, 0.090183,
		63.174229, 59.369244, 59.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.369171, 59.845993, 59.707973>,  <63.130783, 60.065037, 58.987129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.369171, 59.845993, 59.707973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.478996, 59.550148, 59.462181>,  <63.544891, 59.372639, 59.314705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.478996, 59.550148, 59.462181>,  <63.369171, 59.845993, 59.707973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.478996, 59.550148, 59.462181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939012, 0.068634, 0.336967,
		-0.207052, -0.669520, 0.713352,
		0.274566, -0.739616, -0.614477,
		63.561367, 59.328262, 59.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.587837, 59.153328, 60.049755>,  <63.369171, 59.845993, 59.707973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.587837, 59.153328, 60.049755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.768951, 59.237106, 59.703087>,  <63.877621, 59.287373, 59.495087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.768951, 59.237106, 59.703087>,  <63.587837, 59.153328, 60.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.768951, 59.237106, 59.703087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885393, 0.009034, 0.464755,
		0.105172, -0.977778, -0.181355,
		0.452789, 0.209450, -0.866668,
		63.904789, 59.299942, 59.443085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.169067, 58.840496, 60.069252>,  <63.587837, 59.153328, 60.049755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.169067, 58.840496, 60.069252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.238884, 59.087448, 59.762428>,  <64.280777, 59.235619, 59.578335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.238884, 59.087448, 59.762428>,  <64.169067, 58.840496, 60.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.238884, 59.087448, 59.762428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858679, 0.285807, 0.425424,
		0.481879, -0.732908, -0.480248,
		0.174539, 0.617381, -0.767057,
		64.291245, 59.272663, 59.532310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.732147, 58.603622, 59.674442>,  <64.169067, 58.840496, 60.069252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.732147, 58.603622, 59.674442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.753723, 59.002960, 59.682419>,  <64.766670, 59.242561, 59.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.753723, 59.002960, 59.682419>,  <64.732147, 58.603622, 59.674442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.753723, 59.002960, 59.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848274, -0.056346, 0.526550,
		0.526803, -0.011484, -0.849910,
		0.053936, 0.998345, 0.019942,
		64.769905, 59.302464, 59.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.302109, 58.820187, 59.312874>,  <64.732147, 58.603622, 59.674442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.302109, 58.820187, 59.312874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233475, 59.094234, 59.596046>,  <65.192291, 59.258663, 59.765949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233475, 59.094234, 59.596046>,  <65.302109, 58.820187, 59.312874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.233475, 59.094234, 59.596046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916186, -0.153197, 0.370317,
		0.362164, 0.712141, -0.601409,
		-0.171584, 0.685118, 0.707935,
		65.181999, 59.299770, 59.808426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.767616, 59.420200, 59.209854>,  <65.302109, 58.820187, 59.312874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.767616, 59.420200, 59.209854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.688980, 59.403839, 59.601707>,  <65.641800, 59.394024, 59.836819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.688980, 59.403839, 59.601707>,  <65.767616, 59.420200, 59.209854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.688980, 59.403839, 59.601707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980429, -0.018766, 0.195974,
		0.010368, 0.998987, 0.043788,
		-0.196598, -0.040899, 0.979631,
		65.629997, 59.391571, 59.895596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.248360, 59.912334, 59.511974>,  <65.767616, 59.420200, 59.209854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.248360, 59.912334, 59.511974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.108688, 59.618942, 59.745239>,  <66.024887, 59.442909, 59.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.108688, 59.618942, 59.745239>,  <66.248360, 59.912334, 59.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.108688, 59.618942, 59.745239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936737, -0.257062, 0.237578,
		-0.024349, 0.629230, 0.776837,
		-0.349186, -0.733477, 0.583164,
		66.003929, 59.398899, 59.920189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.586815, 60.025246, 60.218529>,  <66.248360, 59.912334, 59.511974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.586815, 60.025246, 60.218529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474533, 59.648193, 60.146255>,  <66.407166, 59.421963, 60.102890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474533, 59.648193, 60.146255>,  <66.586815, 60.025246, 60.218529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.474533, 59.648193, 60.146255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920497, -0.317710, 0.227477,
		-0.271833, -0.102468, 0.956874,
		-0.280699, -0.942635, -0.180686,
		66.390320, 59.365402, 60.092049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.778679, 59.609032, 60.710739>,  <66.586815, 60.025246, 60.218529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.778679, 59.609032, 60.710739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.780640, 59.381981, 60.381432>,  <66.781815, 59.245750, 60.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.780640, 59.381981, 60.381432>,  <66.778679, 59.609032, 60.710739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.780640, 59.381981, 60.381432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892539, -0.368778, 0.259569,
		-0.450943, -0.736073, 0.504823,
		0.004894, -0.567626, -0.823272,
		66.782104, 59.211693, 60.134449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.041359, 59.000301, 60.835888>,  <66.778679, 59.609032, 60.710739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.041359, 59.000301, 60.835888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.141426, 59.044609, 60.451149>,  <67.201469, 59.071194, 60.220306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.141426, 59.044609, 60.451149>,  <67.041359, 59.000301, 60.835888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.141426, 59.044609, 60.451149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949305, -0.223370, 0.221193,
		-0.190346, -0.968420, -0.161034,
		0.250177, 0.110767, -0.961843,
		67.216476, 59.077839, 60.162598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.361748, 58.441418, 60.546730>,  <67.041359, 59.000301, 60.835888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.361748, 58.441418, 60.546730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.505066, 58.740387, 60.322952>,  <67.591057, 58.919769, 60.188686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.505066, 58.740387, 60.322952>,  <67.361748, 58.441418, 60.546730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.505066, 58.740387, 60.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931630, -0.325220, 0.162166,
		-0.060737, -0.579301, -0.812848,
		0.358298, 0.747424, -0.559446,
		67.612556, 58.964615, 60.155117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.967918, 58.176319, 60.351479>,  <67.361748, 58.441418, 60.546730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.967918, 58.176319, 60.351479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.052643, 58.565975, 60.320015>,  <68.103477, 58.799767, 60.301136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.052643, 58.565975, 60.320015>,  <67.967918, 58.176319, 60.351479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.052643, 58.565975, 60.320015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955189, -0.189327, 0.227530,
		0.206753, -0.123328, -0.970589,
		0.211819, 0.974138, -0.078658,
		68.116188, 58.858215, 60.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.499374, 58.194172, 59.937317>,  <67.967918, 58.176319, 60.351479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.499374, 58.194172, 59.937317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534027, 58.483185, 60.211670>,  <68.554817, 58.656593, 60.376282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.534027, 58.483185, 60.211670>,  <68.499374, 58.194172, 59.937317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.534027, 58.483185, 60.211670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989711, -0.141116, 0.023651,
		0.113878, 0.676778, -0.727326,
		0.086631, 0.722536, 0.685884,
		68.560013, 58.699947, 60.417435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.196823, 58.540958, 59.756294>,  <68.499374, 58.194172, 59.937317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.196823, 58.540958, 59.756294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.098930, 58.619179, 60.136162>,  <69.040192, 58.666111, 60.364082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.098930, 58.619179, 60.136162>,  <69.196823, 58.540958, 59.756294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.098930, 58.619179, 60.136162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910478, -0.290411, 0.294434,
		0.333370, 0.936708, -0.106971,
		-0.244733, 0.195550, 0.949666,
		69.025513, 58.677845, 60.421062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.684059, 59.024635, 59.985081>,  <69.196823, 58.540958, 59.756294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.684059, 59.024635, 59.985081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.538979, 58.750305, 60.237457>,  <69.451927, 58.585705, 60.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.538979, 58.750305, 60.237457>,  <69.684059, 59.024635, 59.985081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.538979, 58.750305, 60.237457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931820, -0.257792, 0.255450,
		-0.012543, 0.680576, 0.732570,
		-0.362704, -0.685827, 0.630941,
		69.430168, 58.544556, 60.426739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.883018, 59.110172, 60.760471>,  <69.684059, 59.024635, 59.985081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.883018, 59.110172, 60.760471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826950, 58.725632, 60.665688>,  <69.793312, 58.494907, 60.608818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.826950, 58.725632, 60.665688>,  <69.883018, 59.110172, 60.760471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.826950, 58.725632, 60.665688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987411, -0.118004, -0.105329,
		0.073297, -0.248738, 0.965793,
		-0.140167, -0.961355, -0.236957,
		69.784897, 58.437225, 60.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.616287, 58.849236, 60.763603>,  <69.883018, 59.110172, 60.760471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.616287, 58.849236, 60.763603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.395279, 58.620365, 60.521172>,  <70.262672, 58.483044, 60.375713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.395279, 58.620365, 60.521172>,  <70.616287, 58.849236, 60.763603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.395279, 58.620365, 60.521172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833271, -0.396240, -0.385555,
		-0.019547, -0.718057, 0.695710,
		-0.552519, -0.572178, -0.606082,
		70.229523, 58.448711, 60.339348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.880981, 58.129654, 60.741230>,  <70.616287, 58.849236, 60.763603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.880981, 58.129654, 60.741230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.707001, 58.221359, 60.392921>,  <70.602608, 58.276382, 60.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.707001, 58.221359, 60.392921>,  <70.880981, 58.129654, 60.741230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.707001, 58.221359, 60.392921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790196, -0.366485, -0.491202,
		-0.431740, -0.901736, -0.021757,
		-0.434961, 0.229264, -0.870774,
		70.576515, 58.290138, 60.131691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.709740, 57.487946, 60.244190>,  <70.880981, 58.129654, 60.741230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.709740, 57.487946, 60.244190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.816414, 57.827648, 60.061920>,  <70.880417, 58.031467, 59.952557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.816414, 57.827648, 60.061920>,  <70.709740, 57.487946, 60.244190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.816414, 57.827648, 60.061920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786930, -0.464847, -0.405782,
		-0.556432, -0.250367, -0.792275,
		0.266693, 0.849255, -0.455677,
		70.896423, 58.082424, 59.925217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.022079, 57.262753, 59.626060>,  <70.709740, 57.487946, 60.244190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.022079, 57.262753, 59.626060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.142105, 57.628998, 59.733101>,  <71.214119, 57.848743, 59.797325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.142105, 57.628998, 59.733101>,  <71.022079, 57.262753, 59.626060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.142105, 57.628998, 59.733101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928967, -0.216746, -0.300070,
		-0.216746, 0.338636, -0.915613,
		0.300070, 0.915613, 0.267602,
		71.232124, 57.903683, 59.813381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.662231, 57.162468, 59.407650>,  <71.022079, 57.262753, 59.626060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.662231, 57.162468, 59.407650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.663475, 57.505348, 59.613640>,  <71.664223, 57.711075, 59.737232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.663475, 57.505348, 59.613640>,  <71.662231, 57.162468, 59.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.663475, 57.505348, 59.613640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999302, 0.016505, -0.033499,
		-0.037215, 0.514721, -0.856550,
		0.003105, 0.857199, 0.514976,
		71.664406, 57.762508, 59.768131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.205429, 57.604984, 59.026386>,  <71.662231, 57.162468, 59.407650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.205429, 57.604984, 59.026386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.131409, 57.636219, 59.418236>,  <72.086998, 57.654961, 59.653343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.131409, 57.636219, 59.418236>,  <72.205429, 57.604984, 59.026386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.131409, 57.636219, 59.418236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960140, -0.198135, 0.197165,
		0.209493, 0.977059, -0.038309,
		-0.185052, 0.078087, 0.979622,
		72.075890, 57.659645, 59.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.723091, 58.058701, 59.342983>,  <72.205429, 57.604984, 59.026386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.723091, 58.058701, 59.342983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605347, 57.774582, 59.598740>,  <72.534698, 57.604111, 59.752193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605347, 57.774582, 59.598740>,  <72.723091, 58.058701, 59.342983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.605347, 57.774582, 59.598740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953610, -0.262455, 0.147464,
		0.063069, 0.653141, 0.754605,
		-0.294365, -0.710298, 0.639395,
		72.517036, 57.561493, 59.790558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.273834, 58.033840, 59.814041>,  <72.723091, 58.058701, 59.342983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.273834, 58.033840, 59.814041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.033432, 57.745781, 59.952713>,  <72.889191, 57.572945, 60.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.033432, 57.745781, 59.952713>,  <73.273834, 58.033840, 59.814041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.033432, 57.745781, 59.952713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767143, -0.398064, 0.503028,
		-0.224253, 0.568273, 0.791692,
		-0.601001, -0.720146, 0.346680,
		72.853134, 57.529736, 60.056717>
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
