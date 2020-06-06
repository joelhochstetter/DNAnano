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
	<24.669340, 35.029331, 34.943527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276060, 35.042980, 35.015247>,  <24.040092, 35.051170, 35.058281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276060, 35.042980, 35.015247>,  <24.669340, 35.029331, 34.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276060, 35.042980, 35.015247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170022, 0.528490, 0.831740,
		-0.066378, 0.848253, -0.525414,
		-0.983202, 0.034123, 0.179302,
		23.981100, 35.053219, 35.069038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255701, 35.030350, 35.397579>,  <24.669340, 35.029331, 34.943527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255701, 35.030350, 35.397579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369684, 34.788292, 35.694927>,  <25.438074, 34.643059, 35.873337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369684, 34.788292, 35.694927>,  <25.255701, 35.030350, 35.397579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369684, 34.788292, 35.694927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852949, -0.193768, -0.484698,
		0.437353, 0.772177, 0.460940,
		0.284957, -0.605142, 0.743372,
		25.455172, 34.606750, 35.917938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940123, 35.100166, 35.675488>,  <25.255701, 35.030350, 35.397579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940123, 35.100166, 35.675488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884712, 34.723225, 35.797325>,  <25.851465, 34.497059, 35.870426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884712, 34.723225, 35.797325>,  <25.940123, 35.100166, 35.675488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884712, 34.723225, 35.797325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902891, -0.246544, -0.352141,
		0.406937, 0.226232, 0.884998,
		-0.138525, -0.942356, 0.304591,
		25.843155, 34.440517, 35.888702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559540, 35.341999, 35.227272>,  <25.940123, 35.100166, 35.675488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559540, 35.341999, 35.227272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509222, 35.361233, 34.830917>,  <26.479033, 35.372772, 34.593105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509222, 35.361233, 34.830917>,  <26.559540, 35.341999, 35.227272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509222, 35.361233, 34.830917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395135, 0.918606, -0.005582,
		0.909970, -0.392237, -0.134555,
		-0.125792, 0.048087, -0.990890,
		26.471485, 35.375660, 34.533649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258940, 35.485931, 34.827560>,  <26.559540, 35.341999, 35.227272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258940, 35.485931, 34.827560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948534, 35.619675, 34.613644>,  <26.762291, 35.699921, 34.485294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948534, 35.619675, 34.613644>,  <27.258940, 35.485931, 34.827560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948534, 35.619675, 34.613644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477133, 0.865751, -0.151062,
		0.412489, -0.372394, -0.831370,
		-0.776013, 0.334362, -0.534794,
		26.715731, 35.719982, 34.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438200, 35.655247, 34.136890>,  <27.258940, 35.485931, 34.827560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438200, 35.655247, 34.136890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148987, 35.899490, 34.266125>,  <26.975460, 36.046036, 34.343666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148987, 35.899490, 34.266125>,  <27.438200, 35.655247, 34.136890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148987, 35.899490, 34.266125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548834, 0.791761, -0.268133,
		-0.419533, -0.016547, -0.907589,
		-0.723031, 0.610606, 0.323088,
		26.932077, 36.082672, 34.363052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063248, 36.082630, 33.568272>,  <27.438200, 35.655247, 34.136890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063248, 36.082630, 33.568272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048901, 36.276485, 33.917862>,  <27.040293, 36.392799, 34.127617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.048901, 36.276485, 33.917862>,  <27.063248, 36.082630, 33.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048901, 36.276485, 33.917862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403269, 0.807197, -0.431054,
		-0.914378, 0.336988, -0.224392,
		-0.035868, 0.484637, 0.873980,
		27.038139, 36.421875, 34.180058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556063, 36.738956, 33.607288>,  <27.063248, 36.082630, 33.568272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556063, 36.738956, 33.607288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880758, 36.759502, 33.839993>,  <27.075575, 36.771828, 33.979614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880758, 36.759502, 33.839993>,  <26.556063, 36.738956, 33.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880758, 36.759502, 33.839993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167442, 0.933839, -0.316081,
		-0.559502, 0.353986, 0.749434,
		0.811740, 0.051361, 0.581757,
		27.124281, 36.774910, 34.014519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492167, 37.367435, 34.085644>,  <26.556063, 36.738956, 33.607288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492167, 37.367435, 34.085644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882936, 37.288242, 34.053596>,  <27.117399, 37.240726, 34.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882936, 37.288242, 34.053596>,  <26.492167, 37.367435, 34.085644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882936, 37.288242, 34.053596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170294, 0.948452, -0.267278,
		0.128903, 0.247468, 0.960283,
		0.976926, -0.197983, -0.080116,
		27.176014, 37.228848, 34.029560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717472, 37.874935, 34.367371>,  <26.492167, 37.367435, 34.085644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717472, 37.874935, 34.367371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034594, 37.737846, 34.165775>,  <27.224867, 37.655594, 34.044819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034594, 37.737846, 34.165775>,  <26.717472, 37.874935, 34.367371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034594, 37.737846, 34.165775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232535, 0.934458, -0.269658,
		0.563376, 0.096591, 0.820535,
		0.792802, -0.342722, -0.503990,
		27.272434, 37.635029, 34.014580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228127, 38.296894, 34.584869>,  <26.717472, 37.874935, 34.367371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228127, 38.296894, 34.584869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325312, 38.141857, 34.229176>,  <27.383623, 38.048836, 34.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325312, 38.141857, 34.229176>,  <27.228127, 38.296894, 34.584869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325312, 38.141857, 34.229176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131747, 0.921397, -0.365611,
		0.961047, -0.028325, 0.274928,
		0.242962, -0.387590, -0.889237,
		27.398201, 38.025581, 33.962406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993076, 38.556721, 34.363861>,  <27.228127, 38.296894, 34.584869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993076, 38.556721, 34.363861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701221, 38.496700, 34.096992>,  <27.526108, 38.460686, 33.936871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701221, 38.496700, 34.096992>,  <27.993076, 38.556721, 34.363861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701221, 38.496700, 34.096992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100451, 0.988563, -0.112482,
		0.676416, -0.015053, -0.736366,
		-0.729637, -0.150054, -0.667168,
		27.482330, 38.451683, 33.896843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091274, 38.824837, 33.670597>,  <27.993076, 38.556721, 34.363861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091274, 38.824837, 33.670597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706909, 38.810280, 33.780376>,  <27.476290, 38.801544, 33.846245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706909, 38.810280, 33.780376>,  <28.091274, 38.824837, 33.670597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706909, 38.810280, 33.780376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007335, 0.987629, 0.156640,
		-0.276751, 0.152530, -0.948759,
		-0.960914, -0.036391, 0.274446,
		27.418634, 38.799362, 33.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440229, 39.095730, 33.242531>,  <28.091274, 38.824837, 33.670597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440229, 39.095730, 33.242531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405268, 39.143921, 33.638077>,  <27.384291, 39.172836, 33.875404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405268, 39.143921, 33.638077>,  <27.440229, 39.095730, 33.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405268, 39.143921, 33.638077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007359, 0.992711, -0.120297,
		-0.996146, -0.003237, -0.087654,
		-0.087405, 0.120478, 0.988861,
		27.379045, 39.180065, 33.934734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100199, 38.598709, 32.852283>,  <27.440229, 39.095730, 33.242531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100199, 38.598709, 32.852283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756464, 38.496578, 33.029530>,  <26.550224, 38.435299, 33.135876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756464, 38.496578, 33.029530>,  <27.100199, 38.598709, 32.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756464, 38.496578, 33.029530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059777, -0.910660, -0.408809,
		0.507906, -0.324816, 0.797826,
		-0.859336, -0.255328, 0.443113,
		26.498663, 38.419979, 33.162464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370386, 37.924732, 32.684948>,  <27.100199, 38.598709, 32.852283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370386, 37.924732, 32.684948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491543, 38.044899, 33.046722>,  <27.564238, 38.116997, 33.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491543, 38.044899, 33.046722>,  <27.370386, 37.924732, 32.684948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491543, 38.044899, 33.046722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093632, -0.935047, 0.341936,
		0.948414, -0.188254, -0.255091,
		0.302893, 0.300413, 0.904438,
		27.582411, 38.135021, 33.318054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902885, 37.489166, 32.863293>,  <27.370386, 37.924732, 32.684948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902885, 37.489166, 32.863293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765121, 37.651726, 33.201813>,  <27.682463, 37.749260, 33.404926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765121, 37.651726, 33.201813>,  <27.902885, 37.489166, 32.863293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765121, 37.651726, 33.201813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135527, -0.870487, 0.473166,
		0.928986, 0.277659, 0.244727,
		-0.344410, 0.406397, 0.846300,
		27.661798, 37.773643, 33.455704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317907, 37.211311, 33.334480>,  <27.902885, 37.489166, 32.863293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317907, 37.211311, 33.334480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994791, 37.335732, 33.534771>,  <27.800922, 37.410381, 33.654945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994791, 37.335732, 33.534771>,  <28.317907, 37.211311, 33.334480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994791, 37.335732, 33.534771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000795, -0.848872, 0.528598,
		0.589471, 0.427393, 0.685463,
		-0.807789, 0.311048, 0.500725,
		27.752455, 37.429047, 33.684990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417770, 36.970444, 34.015671>,  <28.317907, 37.211311, 33.334480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417770, 36.970444, 34.015671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029173, 37.064903, 34.023972>,  <27.796015, 37.121578, 34.028954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029173, 37.064903, 34.023972>,  <28.417770, 36.970444, 34.015671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029173, 37.064903, 34.023972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202433, -0.871956, 0.445774,
		0.123365, 0.428866, 0.894905,
		-0.971494, 0.236152, 0.020752,
		27.737724, 37.135750, 34.030197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174290, 36.889412, 34.743767>,  <28.417770, 36.970444, 34.015671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174290, 36.889412, 34.743767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848074, 36.852207, 34.515297>,  <27.652344, 36.829884, 34.378216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848074, 36.852207, 34.515297>,  <28.174290, 36.889412, 34.743767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848074, 36.852207, 34.515297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107514, -0.945463, 0.307473,
		-0.568627, 0.312166, 0.761063,
		-0.815539, -0.093012, -0.571178,
		27.603413, 36.824303, 34.343945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556271, 36.885136, 35.147144>,  <28.174290, 36.889412, 34.743767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556271, 36.885136, 35.147144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332729, 36.936298, 34.819408>,  <27.198605, 36.966995, 34.622765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332729, 36.936298, 34.819408>,  <27.556271, 36.885136, 35.147144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332729, 36.936298, 34.819408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601631, -0.742524, 0.294445,
		-0.570721, 0.657494, 0.491913,
		-0.558854, 0.127904, -0.819343,
		27.165073, 36.974670, 34.573605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789553, 37.064831, 35.315266>,  <27.556271, 36.885136, 35.147144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789553, 37.064831, 35.315266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874464, 36.848896, 34.989441>,  <26.925411, 36.719337, 34.793945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874464, 36.848896, 34.989441>,  <26.789553, 37.064831, 35.315266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874464, 36.848896, 34.989441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579083, -0.740932, 0.340123,
		-0.787147, 0.399500, -0.469893,
		0.212280, -0.539834, -0.814565,
		26.938148, 36.686947, 34.745071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220879, 36.918072, 34.807041>,  <26.789553, 37.064831, 35.315266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220879, 36.918072, 34.807041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462509, 36.599300, 34.807037>,  <26.607487, 36.408039, 34.807037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462509, 36.599300, 34.807037>,  <26.220879, 36.918072, 34.807041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462509, 36.599300, 34.807037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770703, -0.584200, 0.254415,
		-0.202754, -0.153681, -0.967095,
		0.604076, -0.796927, -0.000006,
		26.643732, 36.360222, 34.807034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781668, 36.564468, 34.328606>,  <26.220879, 36.918072, 34.807041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781668, 36.564468, 34.328606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152077, 36.429092, 34.261745>,  <26.374323, 36.347866, 34.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152077, 36.429092, 34.261745>,  <25.781668, 36.564468, 34.328606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152077, 36.429092, 34.261745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355596, -0.930718, -0.085538,
		-0.126623, 0.138649, -0.982213,
		0.926023, -0.338440, -0.167154,
		26.429884, 36.327560, 34.211597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686575, 36.186150, 33.834789>,  <25.781668, 36.564468, 34.328606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686575, 36.186150, 33.834789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022718, 36.049416, 34.003048>,  <26.224403, 35.967377, 34.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022718, 36.049416, 34.003048>,  <25.686575, 36.186150, 33.834789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022718, 36.049416, 34.003048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320642, -0.939222, -0.122679,
		0.437021, -0.031784, -0.898890,
		0.840358, -0.341835, 0.420651,
		26.274826, 35.946865, 34.129242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099092, 35.744026, 33.324928>,  <25.686575, 36.186150, 33.834789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099092, 35.744026, 33.324928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158258, 35.656189, 33.710655>,  <26.193758, 35.603489, 33.942089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158258, 35.656189, 33.710655>,  <26.099092, 35.744026, 33.324928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158258, 35.656189, 33.710655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299912, -0.939086, -0.167843,
		0.942430, -0.264383, -0.204761,
		0.147913, -0.219591, 0.964314,
		26.202633, 35.590313, 33.999950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336115, 34.980820, 33.407673>,  <26.099092, 35.744026, 33.324928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336115, 34.980820, 33.407673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171169, 35.087852, 33.756008>,  <26.072201, 35.152073, 33.965008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171169, 35.087852, 33.756008>,  <26.336115, 34.980820, 33.407673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171169, 35.087852, 33.756008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458305, -0.887058, 0.055542,
		0.787345, -0.376206, 0.488424,
		-0.412365, 0.267578, 0.870837,
		26.047461, 35.168125, 34.017258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025398, 35.282497, 33.424820>,  <26.336115, 34.980820, 33.407673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025398, 35.282497, 33.424820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172651, 35.159786, 33.073738>,  <27.261003, 35.086159, 32.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172651, 35.159786, 33.073738>,  <27.025398, 35.282497, 33.424820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172651, 35.159786, 33.073738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902194, -0.110353, 0.416976,
		-0.224778, -0.945361, 0.236153,
		0.368132, -0.306783, -0.877703,
		27.283091, 35.067753, 32.810429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343536, 34.631443, 33.504456>,  <27.025398, 35.282497, 33.424820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343536, 34.631443, 33.504456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535877, 34.832237, 33.216900>,  <27.651281, 34.952713, 33.044369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535877, 34.832237, 33.216900>,  <27.343536, 34.631443, 33.504456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535877, 34.832237, 33.216900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863262, -0.127507, 0.488386,
		0.153499, -0.855427, -0.494655,
		0.480851, 0.501983, -0.718885,
		27.680132, 34.982834, 33.001236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927227, 34.216885, 33.417152>,  <27.343536, 34.631443, 33.504456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927227, 34.216885, 33.417152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022879, 34.579212, 33.277260>,  <28.080271, 34.796608, 33.193325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022879, 34.579212, 33.277260>,  <27.927227, 34.216885, 33.417152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022879, 34.579212, 33.277260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939359, -0.124633, 0.319485,
		0.245806, -0.404925, -0.880690,
		0.239131, 0.905816, -0.349734,
		28.094618, 34.850956, 33.172340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590940, 34.325443, 32.989902>,  <27.927227, 34.216885, 33.417152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590940, 34.325443, 32.989902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539383, 34.673981, 33.179276>,  <28.508448, 34.883102, 33.292900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539383, 34.673981, 33.179276>,  <28.590940, 34.325443, 32.989902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539383, 34.673981, 33.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854984, -0.144217, 0.498201,
		0.502383, 0.468995, -0.726399,
		-0.128895, 0.871347, 0.473435,
		28.500715, 34.935387, 33.321304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300867, 34.613403, 32.901810>,  <28.590940, 34.325443, 32.989902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300867, 34.613403, 32.901810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125013, 34.767784, 33.226219>,  <29.019501, 34.860413, 33.420864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125013, 34.767784, 33.226219>,  <29.300867, 34.613403, 32.901810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125013, 34.767784, 33.226219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865069, -0.060957, 0.497935,
		0.241616, 0.920503, -0.307076,
		-0.439633, 0.385951, 0.811027,
		28.993124, 34.883568, 33.469528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801168, 35.163960, 33.167728>,  <29.300867, 34.613403, 32.901810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801168, 35.163960, 33.167728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552925, 35.062695, 33.464581>,  <29.403978, 35.001938, 33.642693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552925, 35.062695, 33.464581>,  <29.801168, 35.163960, 33.167728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552925, 35.062695, 33.464581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780690, -0.111043, 0.614974,
		-0.073279, 0.961030, 0.266554,
		-0.620608, -0.253161, 0.742129,
		29.366743, 34.986748, 33.687218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001568, 35.596630, 33.797489>,  <29.801168, 35.163960, 33.167728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001568, 35.596630, 33.797489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805164, 35.269226, 33.916786>,  <29.687323, 35.072784, 33.988365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805164, 35.269226, 33.916786>,  <30.001568, 35.596630, 33.797489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805164, 35.269226, 33.916786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685004, -0.151241, 0.712668,
		-0.538218, 0.554227, 0.634944,
		-0.491009, -0.818510, 0.298247,
		29.657862, 35.023674, 34.006260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055975, 35.590218, 34.520176>,  <30.001568, 35.596630, 33.797489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055975, 35.590218, 34.520176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973797, 35.221672, 34.388187>,  <29.924490, 35.000546, 34.308994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973797, 35.221672, 34.388187>,  <30.055975, 35.590218, 34.520176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973797, 35.221672, 34.388187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572121, -0.386615, 0.723330,
		-0.794021, -0.040177, 0.606560,
		-0.205444, -0.921365, -0.329967,
		29.912163, 34.945263, 34.289196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852186, 35.233612, 35.110252>,  <30.055975, 35.590218, 34.520176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852186, 35.233612, 35.110252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002634, 34.971725, 34.847992>,  <30.092903, 34.814594, 34.690636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002634, 34.971725, 34.847992>,  <29.852186, 35.233612, 35.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002634, 34.971725, 34.847992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679784, -0.285852, 0.675413,
		-0.629624, -0.699737, 0.337552,
		0.376121, -0.654719, -0.655649,
		30.115471, 34.775311, 34.651299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751350, 34.615986, 35.593697>,  <29.852186, 35.233612, 35.110252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751350, 34.615986, 35.593697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812443, 34.497864, 35.216450>,  <29.849098, 34.426991, 34.990101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812443, 34.497864, 35.216450>,  <29.751350, 34.615986, 35.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812443, 34.497864, 35.216450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580119, -0.745804, 0.327472,
		-0.800084, -0.597135, 0.057404,
		0.152733, -0.295306, -0.943116,
		29.858263, 34.409271, 34.933514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613878, 33.965748, 35.626854>,  <29.751350, 34.615986, 35.593697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613878, 33.965748, 35.626854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876490, 34.024212, 35.330853>,  <30.034058, 34.059288, 35.153252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876490, 34.024212, 35.330853>,  <29.613878, 33.965748, 35.626854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876490, 34.024212, 35.330853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657228, -0.592275, 0.466113,
		-0.370160, -0.792369, -0.484906,
		0.656531, 0.146157, -0.740003,
		30.073448, 34.068058, 35.108852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924038, 33.369156, 35.516842>,  <29.613878, 33.965748, 35.626854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924038, 33.369156, 35.516842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165335, 33.621387, 35.321507>,  <30.310112, 33.772728, 35.204308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165335, 33.621387, 35.321507>,  <29.924038, 33.369156, 35.516842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165335, 33.621387, 35.321507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796834, -0.502637, 0.335280,
		-0.034034, -0.591376, -0.805678,
		0.603240, 0.630580, -0.488335,
		30.346306, 33.810562, 35.175007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449440, 33.654911, 35.877186>,  <29.924038, 33.369156, 35.516842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449440, 33.654911, 35.877186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803709, 33.486153, 35.799641>,  <31.016272, 33.384895, 35.753113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803709, 33.486153, 35.799641>,  <30.449440, 33.654911, 35.877186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803709, 33.486153, 35.799641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074208, 0.540783, -0.837883,
		0.458338, 0.727705, 0.510266,
		0.885675, -0.421899, -0.193860,
		31.069412, 33.359581, 35.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030270, 33.993416, 35.890800>,  <30.449440, 33.654911, 35.877186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030270, 33.993416, 35.890800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047440, 33.711361, 35.607693>,  <31.057741, 33.542130, 35.437828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047440, 33.711361, 35.607693>,  <31.030270, 33.993416, 35.890800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047440, 33.711361, 35.607693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091086, 0.702712, -0.705620,
		0.994918, 0.094756, -0.034066,
		0.042923, -0.705136, -0.707772,
		31.060316, 33.499821, 35.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487865, 34.294228, 35.315853>,  <31.030270, 33.993416, 35.890800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487865, 34.294228, 35.315853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207491, 34.020809, 35.234413>,  <31.039267, 33.856758, 35.185547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207491, 34.020809, 35.234413>,  <31.487865, 34.294228, 35.315853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207491, 34.020809, 35.234413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403043, 0.615131, -0.677621,
		0.588428, -0.392907, -0.706666,
		-0.700934, -0.683548, -0.203602,
		30.997210, 33.815746, 35.173332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358912, 34.276279, 34.641979>,  <31.487865, 34.294228, 35.315853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358912, 34.276279, 34.641979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013731, 34.128376, 34.779732>,  <30.806623, 34.039635, 34.862381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013731, 34.128376, 34.779732>,  <31.358912, 34.276279, 34.641979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013731, 34.128376, 34.779732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494769, 0.480006, -0.724429,
		0.102559, -0.795535, -0.597165,
		-0.862951, -0.369756, 0.344377,
		30.754845, 34.017448, 34.883045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919743, 34.036316, 34.092583>,  <31.358912, 34.276279, 34.641979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919743, 34.036316, 34.092583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654436, 34.093765, 34.386372>,  <30.495253, 34.128235, 34.562645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654436, 34.093765, 34.386372>,  <30.919743, 34.036316, 34.092583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654436, 34.093765, 34.386372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658101, 0.355373, -0.663787,
		-0.356345, -0.923625, -0.141191,
		-0.663266, 0.143619, 0.734474,
		30.455456, 34.136852, 34.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297039, 34.103588, 33.769905>,  <30.919743, 34.036316, 34.092583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297039, 34.103588, 33.769905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167473, 34.206085, 34.134193>,  <30.089733, 34.267582, 34.352768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167473, 34.206085, 34.134193>,  <30.297039, 34.103588, 33.769905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167473, 34.206085, 34.134193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699092, 0.583771, -0.412894,
		-0.637455, -0.770423, -0.009957,
		-0.323915, 0.256240, 0.910725,
		30.070299, 34.282959, 34.407410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604830, 33.810486, 33.908783>,  <30.297039, 34.103588, 33.769905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604830, 33.810486, 33.908783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658838, 34.144173, 34.122639>,  <29.691244, 34.344387, 34.250954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658838, 34.144173, 34.122639>,  <29.604830, 33.810486, 33.908783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658838, 34.144173, 34.122639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820155, 0.396868, -0.412119,
		-0.555981, -0.382846, 0.737776,
		0.135022, 0.834221, 0.534644,
		29.699345, 34.394440, 34.283031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969040, 33.946587, 34.288757>,  <29.604830, 33.810486, 33.908783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969040, 33.946587, 34.288757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159014, 34.292076, 34.221329>,  <29.272997, 34.499371, 34.180874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159014, 34.292076, 34.221329>,  <28.969040, 33.946587, 34.288757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159014, 34.292076, 34.221329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830964, 0.377091, -0.409024,
		-0.289719, 0.334333, 0.896819,
		0.474933, 0.863727, -0.168569,
		29.301493, 34.551193, 34.170757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490023, 34.526821, 34.593777>,  <28.969040, 33.946587, 34.288757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490023, 34.526821, 34.593777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753187, 34.659534, 34.323349>,  <28.911085, 34.739162, 34.161091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753187, 34.659534, 34.323349>,  <28.490023, 34.526821, 34.593777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753187, 34.659534, 34.323349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744885, 0.418890, -0.519305,
		0.110900, 0.845250, 0.522736,
		0.657912, 0.331787, -0.676069,
		28.950562, 34.759071, 34.120529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343351, 35.320187, 34.519932>,  <28.490023, 34.526821, 34.593777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343351, 35.320187, 34.519932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529003, 35.161472, 34.203163>,  <28.640394, 35.066242, 34.013100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529003, 35.161472, 34.203163>,  <28.343351, 35.320187, 34.519932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529003, 35.161472, 34.203163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749291, 0.300930, -0.589919,
		0.472385, 0.867181, -0.157637,
		0.464129, -0.396785, -0.791926,
		28.668242, 35.042439, 33.965584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387249, 35.850761, 33.979729>,  <28.343351, 35.320187, 34.519932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387249, 35.850761, 33.979729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399851, 35.478069, 33.835014>,  <28.407412, 35.254456, 33.748188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399851, 35.478069, 33.835014>,  <28.387249, 35.850761, 33.979729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399851, 35.478069, 33.835014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742464, 0.220511, -0.632553,
		0.669145, 0.288539, -0.684828,
		0.031504, -0.931730, -0.361783,
		28.409302, 35.198551, 33.726479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632662, 35.898693, 33.292271>,  <28.387249, 35.850761, 33.979729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632662, 35.898693, 33.292271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384914, 35.607662, 33.410267>,  <28.236267, 35.433044, 33.481064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384914, 35.607662, 33.410267>,  <28.632662, 35.898693, 33.292271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384914, 35.607662, 33.410267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605683, 0.203746, -0.769179,
		0.499533, -0.655072, -0.566874,
		-0.619366, -0.727577, 0.294988,
		28.199104, 35.389389, 33.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309258, 36.304665, 33.386753>,  <28.632662, 35.898693, 33.292271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309258, 36.304665, 33.386753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144602, 36.667271, 33.424252>,  <29.045809, 36.884834, 33.446751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144602, 36.667271, 33.424252>,  <29.309258, 36.304665, 33.386753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144602, 36.667271, 33.424252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890296, 0.421977, -0.171199,
		-0.194751, 0.012986, -0.980767,
		-0.411638, 0.906513, 0.093742,
		29.021111, 36.939224, 33.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376347, 36.672882, 32.804180>,  <29.309258, 36.304665, 33.386753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376347, 36.672882, 32.804180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351162, 36.946205, 33.095142>,  <29.336050, 37.110199, 33.269722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351162, 36.946205, 33.095142>,  <29.376347, 36.672882, 32.804180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351162, 36.946205, 33.095142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836318, 0.433861, -0.335167,
		-0.544617, 0.587242, -0.598781,
		-0.062964, 0.683309, 0.727409,
		29.332273, 37.151199, 33.313366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922264, 36.935978, 32.526154>,  <29.376347, 36.672882, 32.804180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922264, 36.935978, 32.526154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932943, 37.280308, 32.729435>,  <29.939352, 37.486904, 32.851402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932943, 37.280308, 32.729435>,  <29.922264, 36.935978, 32.526154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932943, 37.280308, 32.729435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862289, 0.237354, -0.447349,
		-0.505712, 0.450161, -0.735942,
		0.026700, 0.860824, 0.508202,
		29.940954, 37.538555, 32.881897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439327, 36.453594, 32.133121>,  <29.922264, 36.935978, 32.526154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439327, 36.453594, 32.133121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382198, 36.087948, 32.284908>,  <30.347921, 35.868561, 32.375980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382198, 36.087948, 32.284908>,  <30.439327, 36.453594, 32.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382198, 36.087948, 32.284908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967021, -0.210569, -0.143286,
		0.210884, 0.346489, 0.914042,
		-0.142822, -0.914115, 0.379467,
		30.339352, 35.813713, 32.398750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034470, 36.303471, 32.530716>,  <30.439327, 36.453594, 32.133121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034470, 36.303471, 32.530716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883013, 35.955372, 32.404663>,  <30.792139, 35.746513, 32.329033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883013, 35.955372, 32.404663>,  <31.034470, 36.303471, 32.530716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883013, 35.955372, 32.404663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914245, -0.298631, -0.273816,
		0.144180, -0.391783, 0.908691,
		-0.378640, -0.870245, -0.315129,
		30.769421, 35.694298, 32.310123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327482, 35.730919, 32.932537>,  <31.034470, 36.303471, 32.530716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327482, 35.730919, 32.932537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220583, 35.637299, 32.558628>,  <31.156443, 35.581127, 32.334282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220583, 35.637299, 32.558628>,  <31.327482, 35.730919, 32.932537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220583, 35.637299, 32.558628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944472, -0.256076, -0.205906,
		-0.191179, -0.937893, 0.289495,
		-0.267250, -0.234055, -0.934771,
		31.140408, 35.567081, 32.278198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931055, 35.234982, 33.349136>,  <31.327482, 35.730919, 32.932537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931055, 35.234982, 33.349136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849201, 35.191288, 32.960045>,  <31.800089, 35.165073, 32.726589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849201, 35.191288, 32.960045>,  <31.931055, 35.234982, 33.349136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849201, 35.191288, 32.960045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804923, -0.584243, -0.103725,
		-0.556978, -0.804194, 0.207478,
		-0.204633, -0.109232, -0.972725,
		31.787811, 35.158520, 32.668228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388615, 35.549400, 33.800385>,  <31.931055, 35.234982, 33.349136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388615, 35.549400, 33.800385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113621, 35.757229, 33.597443>,  <31.948626, 35.881927, 33.475677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113621, 35.757229, 33.597443>,  <32.388615, 35.549400, 33.800385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113621, 35.757229, 33.597443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718444, 0.588460, -0.370882,
		0.105858, -0.619482, -0.777841,
		-0.687483, 0.519574, -0.507356,
		31.907375, 35.913101, 33.445236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311302, 36.127010, 34.151237>,  <32.388615, 35.549400, 33.800385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311302, 36.127010, 34.151237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336273, 36.394703, 33.855064>,  <32.351254, 36.555317, 33.677361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336273, 36.394703, 33.855064>,  <32.311302, 36.127010, 34.151237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336273, 36.394703, 33.855064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846175, 0.357907, 0.394831,
		0.529237, -0.651179, -0.543943,
		0.062425, 0.669230, -0.740428,
		32.355000, 36.595470, 33.632935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813206, 36.101883, 33.583553>,  <32.311302, 36.127010, 34.151237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813206, 36.101883, 33.583553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724117, 36.486786, 33.646118>,  <32.670662, 36.717728, 33.683655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724117, 36.486786, 33.646118>,  <32.813206, 36.101883, 33.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724117, 36.486786, 33.646118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842051, 0.109037, 0.528262,
		0.491268, 0.249360, -0.834551,
		-0.222724, 0.962253, 0.156408,
		32.657299, 36.775463, 33.693039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293026, 36.670723, 33.313183>,  <32.813206, 36.101883, 33.583553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293026, 36.670723, 33.313183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108440, 36.740841, 33.661049>,  <32.997688, 36.782913, 33.869770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108440, 36.740841, 33.661049>,  <33.293026, 36.670723, 33.313183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108440, 36.740841, 33.661049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886058, 0.139879, 0.441968,
		-0.044173, 0.974528, -0.219871,
		-0.461466, 0.175295, 0.869667,
		32.970001, 36.793430, 33.921947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581680, 37.343826, 33.632008>,  <33.293026, 36.670723, 33.313183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581680, 37.343826, 33.632008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445827, 37.090145, 33.909840>,  <33.364315, 36.937939, 34.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445827, 37.090145, 33.909840>,  <33.581680, 37.343826, 33.632008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445827, 37.090145, 33.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781960, 0.219986, 0.583219,
		-0.522675, 0.741213, 0.421205,
		-0.339630, -0.634199, 0.694581,
		33.343937, 36.899887, 34.118214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977497, 37.616596, 32.936291>,  <33.581680, 37.343826, 33.632008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977497, 37.616596, 32.936291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344208, 37.464901, 32.886177>,  <34.564236, 37.373886, 32.856110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344208, 37.464901, 32.886177>,  <33.977497, 37.616596, 32.936291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344208, 37.464901, 32.886177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193996, -0.148630, -0.969678,
		0.349114, 0.913285, -0.209831,
		0.916780, -0.379235, -0.125285,
		34.619240, 37.351131, 32.848591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175396, 36.885925, 32.977852>,  <33.977497, 37.616596, 32.936291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175396, 36.885925, 32.977852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344822, 36.978500, 33.328171>,  <34.446476, 37.034046, 33.538364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344822, 36.978500, 33.328171>,  <34.175396, 36.885925, 32.977852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344822, 36.978500, 33.328171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442533, -0.790729, 0.422981,
		0.790415, -0.566731, -0.232506,
		0.423566, 0.231439, 0.875801,
		34.471893, 37.047932, 33.590912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444710, 36.331390, 33.387226>,  <34.175396, 36.885925, 32.977852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444710, 36.331390, 33.387226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307293, 36.579048, 33.669685>,  <34.224842, 36.727642, 33.839161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307293, 36.579048, 33.669685>,  <34.444710, 36.331390, 33.387226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307293, 36.579048, 33.669685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687746, -0.677882, 0.259771,
		0.639520, -0.396408, 0.658692,
		-0.343540, 0.619141, 0.706147,
		34.204231, 36.764790, 33.881531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339813, 35.874241, 34.064758>,  <34.444710, 36.331390, 33.387226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339813, 35.874241, 34.064758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098888, 36.193333, 34.053097>,  <33.954334, 36.384789, 34.046101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098888, 36.193333, 34.053097>,  <34.339813, 35.874241, 34.064758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098888, 36.193333, 34.053097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781153, -0.581485, 0.227324,
		0.164389, 0.159694, 0.973383,
		-0.602309, 0.797730, -0.029155,
		33.918194, 36.432652, 34.044350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590569, 35.173519, 33.996075>,  <34.339813, 35.874241, 34.064758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590569, 35.173519, 33.996075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531353, 35.411026, 33.679714>,  <34.495823, 35.553528, 33.489899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531353, 35.411026, 33.679714>,  <34.590569, 35.173519, 33.996075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531353, 35.411026, 33.679714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101898, -0.786302, -0.609382,
		-0.983718, -0.170804, 0.055902,
		-0.148041, 0.593764, -0.790904,
		34.486942, 35.589153, 33.442444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162464, 34.809093, 33.649197>,  <34.590569, 35.173519, 33.996075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162464, 34.809093, 33.649197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320473, 35.045078, 33.367516>,  <34.415276, 35.186668, 33.198505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320473, 35.045078, 33.367516>,  <34.162464, 34.809093, 33.649197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320473, 35.045078, 33.367516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134514, -0.795428, -0.590932,
		-0.908772, 0.138704, -0.393568,
		0.395019, 0.589962, -0.704205,
		34.438980, 35.222069, 33.156254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941593, 34.575676, 33.103973>,  <34.162464, 34.809093, 33.649197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941593, 34.575676, 33.103973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250507, 34.787727, 32.963955>,  <34.435856, 34.914959, 32.879944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250507, 34.787727, 32.963955>,  <33.941593, 34.575676, 33.103973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250507, 34.787727, 32.963955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242401, -0.755234, -0.608985,
		-0.587208, 0.385461, -0.711763,
		0.772288, 0.530133, -0.350043,
		34.482193, 34.946766, 32.858940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904060, 34.489426, 32.372662>,  <33.941593, 34.575676, 33.103973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904060, 34.489426, 32.372662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277744, 34.576324, 32.485836>,  <34.501953, 34.628464, 32.553741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277744, 34.576324, 32.485836>,  <33.904060, 34.489426, 32.372662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277744, 34.576324, 32.485836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354820, -0.647714, -0.674218,
		0.036792, 0.730254, -0.682184,
		0.934210, 0.217247, 0.282939,
		34.558006, 34.641499, 32.570717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255684, 34.539177, 31.753433>,  <33.904060, 34.489426, 32.372662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255684, 34.539177, 31.753433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550362, 34.506546, 32.021950>,  <34.727169, 34.486969, 32.183060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550362, 34.506546, 32.021950>,  <34.255684, 34.539177, 31.753433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550362, 34.506546, 32.021950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490676, -0.618601, -0.613653,
		0.465320, 0.781459, -0.415691,
		0.736691, -0.081575, 0.671291,
		34.771370, 34.482075, 32.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802162, 34.729214, 31.307726>,  <34.255684, 34.539177, 31.753433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802162, 34.729214, 31.307726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913013, 34.520733, 31.630600>,  <34.979523, 34.395645, 31.824324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913013, 34.520733, 31.630600>,  <34.802162, 34.729214, 31.307726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913013, 34.520733, 31.630600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327663, -0.738465, -0.589327,
		0.903238, 0.427803, -0.033868,
		0.277126, -0.521205, 0.807185,
		34.996151, 34.364372, 31.872755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532326, 34.501144, 31.254992>,  <34.802162, 34.729214, 31.307726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532326, 34.501144, 31.254992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382069, 34.245705, 31.523642>,  <35.291916, 34.092442, 31.684832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382069, 34.245705, 31.523642>,  <35.532326, 34.501144, 31.254992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382069, 34.245705, 31.523642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520478, -0.744985, -0.417253,
		0.766811, 0.192830, 0.612224,
		-0.375638, -0.638603, 0.671626,
		35.269379, 34.054123, 31.725130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151775, 34.177189, 31.521030>,  <35.532326, 34.501144, 31.254992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151775, 34.177189, 31.521030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848129, 33.948898, 31.646254>,  <35.665939, 33.811924, 31.721388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848129, 33.948898, 31.646254>,  <36.151775, 34.177189, 31.521030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848129, 33.948898, 31.646254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428490, -0.800150, -0.419709,
		0.490036, -0.184466, 0.851961,
		-0.759119, -0.570729, 0.313060,
		35.620392, 33.777679, 31.740171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466618, 33.636311, 31.982708>,  <36.151775, 34.177189, 31.521030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466618, 33.636311, 31.982708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135567, 33.502411, 31.802498>,  <35.936935, 33.422070, 31.694372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135567, 33.502411, 31.802498>,  <36.466618, 33.636311, 31.982708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135567, 33.502411, 31.802498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448802, -0.876717, -0.173044,
		-0.337058, -0.345413, 0.875832,
		-0.827628, -0.334749, -0.450527,
		35.887280, 33.401985, 31.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353806, 32.895439, 32.306423>,  <36.466618, 33.636311, 31.982708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353806, 32.895439, 32.306423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146118, 32.908504, 31.964815>,  <36.021507, 32.916344, 31.759851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146118, 32.908504, 31.964815>,  <36.353806, 32.895439, 32.306423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146118, 32.908504, 31.964815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366969, -0.893941, -0.257299,
		-0.771845, -0.446992, 0.452164,
		-0.519218, 0.032665, -0.854017,
		35.990353, 32.918304, 31.708611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169937, 32.179970, 32.182919>,  <36.353806, 32.895439, 32.306423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169937, 32.179970, 32.182919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105274, 32.359020, 31.831123>,  <36.066479, 32.466450, 31.620047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105274, 32.359020, 31.831123>,  <36.169937, 32.179970, 32.182919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105274, 32.359020, 31.831123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189977, -0.860426, -0.472838,
		-0.968389, -0.243519, 0.054053,
		-0.161654, 0.447623, -0.879490,
		36.056778, 32.493305, 31.567276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879292, 31.666164, 31.769743>,  <36.169937, 32.179970, 32.182919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879292, 31.666164, 31.769743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999218, 31.931108, 31.495111>,  <36.071175, 32.090076, 31.330334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999218, 31.931108, 31.495111>,  <35.879292, 31.666164, 31.769743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999218, 31.931108, 31.495111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264177, -0.749184, -0.607399,
		-0.916691, 0.000729, -0.399597,
		0.299814, 0.662361, -0.686578,
		36.089161, 32.129818, 31.289139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508842, 31.412146, 31.144897>,  <35.879292, 31.666164, 31.769743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508842, 31.412146, 31.144897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810719, 31.647768, 31.029346>,  <35.991844, 31.789141, 30.960016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810719, 31.647768, 31.029346>,  <35.508842, 31.412146, 31.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810719, 31.647768, 31.029346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258451, -0.671638, -0.694338,
		-0.603025, 0.449352, -0.659123,
		0.754694, 0.589054, -0.288879,
		36.037128, 31.824484, 30.942682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537918, 31.362362, 30.415752>,  <35.508842, 31.412146, 31.144897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537918, 31.362362, 30.415752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905380, 31.498882, 30.495338>,  <36.125858, 31.580795, 30.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905380, 31.498882, 30.495338>,  <35.537918, 31.362362, 30.415752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905380, 31.498882, 30.495338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315353, -0.330148, -0.889694,
		-0.237967, 0.880065, -0.410923,
		0.918654, 0.341303, 0.198967,
		36.180977, 31.601273, 30.555029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742668, 31.836548, 29.862604>,  <35.537918, 31.362362, 30.415752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742668, 31.836548, 29.862604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051834, 31.651392, 30.036192>,  <36.237335, 31.540298, 30.140345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051834, 31.651392, 30.036192>,  <35.742668, 31.836548, 29.862604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051834, 31.651392, 30.036192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244862, -0.413367, -0.877023,
		0.585357, 0.784129, -0.206154,
		0.772917, -0.462892, 0.433971,
		36.283710, 31.512524, 30.166384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215488, 31.997034, 29.441059>,  <35.742668, 31.836548, 29.862604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215488, 31.997034, 29.441059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375645, 31.693432, 29.646427>,  <36.471737, 31.511271, 29.769648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375645, 31.693432, 29.646427>,  <36.215488, 31.997034, 29.441059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375645, 31.693432, 29.646427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306325, -0.417192, -0.855638,
		0.863627, 0.499864, 0.065462,
		0.400392, -0.759004, 0.513419,
		36.495762, 31.465731, 29.800453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868069, 31.986820, 29.188528>,  <36.215488, 31.997034, 29.441059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868069, 31.986820, 29.188528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796482, 31.627968, 29.350084>,  <36.753529, 31.412657, 29.447018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796482, 31.627968, 29.350084>,  <36.868069, 31.986820, 29.188528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796482, 31.627968, 29.350084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136101, -0.429146, -0.892922,
		0.974396, -0.104835, 0.198903,
		-0.178968, -0.897130, 0.403890,
		36.742790, 31.358829, 29.471251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294743, 31.596788, 28.826376>,  <36.868069, 31.986820, 29.188528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294743, 31.596788, 28.826376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066700, 31.319641, 29.002972>,  <36.929874, 31.153353, 29.108929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066700, 31.319641, 29.002972>,  <37.294743, 31.596788, 28.826376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066700, 31.319641, 29.002972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065987, -0.574252, -0.816015,
		0.818917, -0.436082, 0.373105,
		-0.570106, -0.692868, 0.441489,
		36.895668, 31.111780, 29.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597828, 30.894133, 28.956810>,  <37.294743, 31.596788, 28.826376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597828, 30.894133, 28.956810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219257, 30.764984, 28.959370>,  <36.992115, 30.687496, 28.960905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219257, 30.764984, 28.959370>,  <37.597828, 30.894133, 28.956810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219257, 30.764984, 28.959370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181028, -0.546846, -0.817428,
		0.267422, -0.772473, 0.575996,
		-0.946422, -0.322870, 0.006400,
		36.935329, 30.668123, 28.961290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598320, 30.063553, 28.905979>,  <37.597828, 30.894133, 28.956810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598320, 30.063553, 28.905979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250118, 30.219006, 28.785196>,  <37.041195, 30.312277, 28.712727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250118, 30.219006, 28.785196>,  <37.598320, 30.063553, 28.905979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250118, 30.219006, 28.785196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068511, -0.511876, -0.856323,
		-0.487356, -0.766126, 0.418969,
		-0.870512, 0.388630, -0.301954,
		36.988964, 30.335596, 28.694609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173241, 29.614193, 28.795715>,  <37.598320, 30.063553, 28.905979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173241, 29.614193, 28.795715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026505, 29.904524, 28.562958>,  <36.938461, 30.078722, 28.423304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026505, 29.904524, 28.562958>,  <37.173241, 29.614193, 28.795715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026505, 29.904524, 28.562958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062705, -0.643371, -0.762982,
		-0.928169, -0.243404, 0.281527,
		-0.366840, 0.725829, -0.581894,
		36.916454, 30.122272, 28.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843079, 29.235487, 28.375454>,  <37.173241, 29.614193, 28.795715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843079, 29.235487, 28.375454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777912, 29.587589, 28.197191>,  <36.738811, 29.798851, 28.090233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777912, 29.587589, 28.197191>,  <36.843079, 29.235487, 28.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777912, 29.587589, 28.197191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156595, -0.469036, -0.869185,
		-0.974133, -0.071819, 0.214258,
		-0.162919, 0.880254, -0.445657,
		36.729038, 29.851665, 28.063494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290993, 29.130161, 28.004284>,  <36.843079, 29.235487, 28.375454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290993, 29.130161, 28.004284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493904, 29.427721, 27.830259>,  <36.615654, 29.606256, 27.725843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493904, 29.427721, 27.830259>,  <36.290993, 29.130161, 28.004284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493904, 29.427721, 27.830259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154854, -0.575310, -0.803143,
		-0.847752, 0.340050, -0.407041,
		0.507283, 0.743898, -0.435063,
		36.646088, 29.650890, 27.699741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027943, 29.194952, 27.355261>,  <36.290993, 29.130161, 28.004284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027943, 29.194952, 27.355261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382393, 29.373919, 27.306927>,  <36.595062, 29.481298, 27.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382393, 29.373919, 27.306927>,  <36.027943, 29.194952, 27.355261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382393, 29.373919, 27.306927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076528, -0.398412, -0.914008,
		-0.457085, 0.800678, -0.387283,
		0.886124, 0.447417, -0.120834,
		36.648232, 29.508144, 27.270676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981300, 29.374853, 26.719860>,  <36.027943, 29.194952, 27.355261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981300, 29.374853, 26.719860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369820, 29.393137, 26.813231>,  <36.602932, 29.404108, 26.869253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369820, 29.393137, 26.813231>,  <35.981300, 29.374853, 26.719860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369820, 29.393137, 26.813231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233951, -0.360804, -0.902822,
		0.042953, 0.931521, -0.361143,
		0.971299, 0.045711, 0.233428,
		36.661209, 29.406851, 26.883259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334442, 29.610933, 26.092318>,  <35.981300, 29.374853, 26.719860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334442, 29.610933, 26.092318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625084, 29.433287, 26.302002>,  <36.799469, 29.326698, 26.427813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625084, 29.433287, 26.302002>,  <36.334442, 29.610933, 26.092318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625084, 29.433287, 26.302002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406550, -0.337143, -0.849147,
		0.553856, 0.830117, -0.064415,
		0.726609, -0.444117, 0.524213,
		36.843067, 29.300051, 26.459267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994629, 29.808329, 25.832006>,  <36.334442, 29.610933, 26.092318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994629, 29.808329, 25.832006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088814, 29.467920, 26.019758>,  <37.145325, 29.263676, 26.132410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088814, 29.467920, 26.019758>,  <36.994629, 29.808329, 25.832006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088814, 29.467920, 26.019758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585086, -0.261513, -0.767649,
		0.776036, 0.455381, 0.436345,
		0.235463, -0.851022, 0.469380,
		37.159454, 29.212614, 26.160572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625568, 29.591589, 25.504925>,  <36.994629, 29.808329, 25.832006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625568, 29.591589, 25.504925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514328, 29.252565, 25.685726>,  <37.447586, 29.049152, 25.794207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514328, 29.252565, 25.685726>,  <37.625568, 29.591589, 25.504925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514328, 29.252565, 25.685726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457027, -0.530641, -0.713825,
		0.844860, 0.008066, 0.534927,
		-0.278096, -0.847558, 0.452004,
		37.430901, 28.998299, 25.821327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198750, 29.117319, 25.299196>,  <37.625568, 29.591589, 25.504925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198750, 29.117319, 25.299196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917320, 28.880177, 25.455915>,  <37.748463, 28.737890, 25.549948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917320, 28.880177, 25.455915>,  <38.198750, 29.117319, 25.299196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917320, 28.880177, 25.455915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145828, -0.660065, -0.736918,
		0.695499, -0.461341, 0.550860,
		-0.703573, -0.592857, 0.391798,
		37.706249, 28.702320, 25.573454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502254, 28.507856, 25.329819>,  <38.198750, 29.117319, 25.299196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502254, 28.507856, 25.329819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104504, 28.488432, 25.292192>,  <37.865852, 28.476778, 25.269617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104504, 28.488432, 25.292192>,  <38.502254, 28.507856, 25.329819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104504, 28.488432, 25.292192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099408, -0.733792, -0.672062,
		-0.036388, -0.677637, 0.734496,
		-0.994381, -0.048560, -0.094064,
		37.806190, 28.473864, 25.263973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320660, 27.756863, 25.305468>,  <38.502254, 28.507856, 25.329819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320660, 27.756863, 25.305468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027340, 27.955252, 25.119440>,  <37.851349, 28.074286, 25.007824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027340, 27.955252, 25.119440>,  <38.320660, 27.756863, 25.305468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027340, 27.955252, 25.119440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070454, -0.624904, -0.777516,
		-0.676247, -0.602917, 0.423298,
		-0.733298, 0.495969, -0.465067,
		37.807350, 28.104042, 24.979919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920086, 27.259228, 24.921337>,  <38.320660, 27.756863, 25.305468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920086, 27.259228, 24.921337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838856, 27.612736, 24.752714>,  <37.790119, 27.824841, 24.651541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838856, 27.612736, 24.752714>,  <37.920086, 27.259228, 24.921337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838856, 27.612736, 24.752714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066325, -0.417122, -0.906427,
		-0.976915, -0.212029, 0.026090,
		-0.203071, 0.883772, -0.421556,
		37.777935, 27.877867, 24.626247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543144, 27.099743, 24.442381>,  <37.920086, 27.259228, 24.921337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543144, 27.099743, 24.442381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678055, 27.463337, 24.344412>,  <37.759003, 27.681494, 24.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678055, 27.463337, 24.344412>,  <37.543144, 27.099743, 24.442381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678055, 27.463337, 24.344412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009146, -0.256993, -0.966370,
		-0.941361, 0.328174, -0.078364,
		0.337277, 0.908986, -0.244925,
		37.779240, 27.736032, 24.270935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184853, 27.180096, 23.842617>,  <37.543144, 27.099743, 24.442381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184853, 27.180096, 23.842617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489143, 27.438541, 23.817879>,  <37.671719, 27.593609, 23.803036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489143, 27.438541, 23.817879>,  <37.184853, 27.180096, 23.842617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489143, 27.438541, 23.817879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044362, -0.146822, -0.988168,
		-0.647549, 0.748986, -0.140355,
		0.760731, 0.646114, -0.061848,
		37.717361, 27.632376, 23.799324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095604, 27.589970, 23.303772>,  <37.184853, 27.180096, 23.842617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095604, 27.589970, 23.303772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489128, 27.622654, 23.367569>,  <37.725243, 27.642265, 23.405848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489128, 27.622654, 23.367569>,  <37.095604, 27.589970, 23.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489128, 27.622654, 23.367569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172569, -0.192029, -0.966098,
		-0.048314, 0.977981, -0.203022,
		0.983812, 0.081712, 0.159492,
		37.784271, 27.647167, 23.415417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259258, 28.062014, 22.858561>,  <37.095604, 27.589970, 23.303772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259258, 28.062014, 22.858561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606724, 27.886503, 22.950567>,  <37.815201, 27.781197, 23.005772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606724, 27.886503, 22.950567>,  <37.259258, 28.062014, 22.858561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606724, 27.886503, 22.950567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258952, 0.006328, -0.965870,
		0.422344, 0.898575, 0.119119,
		0.868660, -0.438775, 0.230015,
		37.867321, 27.754871, 23.019571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653419, 28.307568, 22.405624>,  <37.259258, 28.062014, 22.858561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653419, 28.307568, 22.405624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862179, 27.997847, 22.548775>,  <37.987434, 27.812014, 22.634665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862179, 27.997847, 22.548775>,  <37.653419, 28.307568, 22.405624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862179, 27.997847, 22.548775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371430, -0.171399, -0.912503,
		0.767893, 0.609163, 0.198145,
		0.521901, -0.774302, 0.357877,
		38.018749, 27.765556, 22.656137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346889, 28.463755, 22.292913>,  <37.653419, 28.307568, 22.405624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346889, 28.463755, 22.292913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329197, 28.066170, 22.333071>,  <38.318581, 27.827618, 22.357166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329197, 28.066170, 22.333071>,  <38.346889, 28.463755, 22.292913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329197, 28.066170, 22.333071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533023, -0.108473, -0.839119,
		0.844944, 0.016400, 0.534603,
		-0.044229, -0.993964, 0.100395,
		38.315929, 27.767981, 22.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034161, 28.129078, 22.001961>,  <38.346889, 28.463755, 22.292913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034161, 28.129078, 22.001961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762772, 27.835487, 22.014334>,  <38.599937, 27.659334, 22.021757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762772, 27.835487, 22.014334>,  <39.034161, 28.129078, 22.001961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762772, 27.835487, 22.014334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426177, -0.427550, -0.797229,
		0.598372, -0.527714, 0.602884,
		-0.678472, -0.733975, 0.030934,
		38.559231, 27.615295, 22.023613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422668, 27.574436, 21.949751>,  <39.034161, 28.129078, 22.001961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422668, 27.574436, 21.949751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055222, 27.497637, 21.811602>,  <38.834755, 27.451557, 21.728712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055222, 27.497637, 21.811602>,  <39.422668, 27.574436, 21.949751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055222, 27.497637, 21.811602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393345, -0.360809, -0.845634,
		0.037746, -0.912663, 0.406966,
		-0.918616, -0.191998, -0.345372,
		38.779636, 27.440037, 21.707991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444241, 26.894030, 21.690683>,  <39.422668, 27.574436, 21.949751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444241, 26.894030, 21.690683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109722, 27.044956, 21.531563>,  <38.909012, 27.135511, 21.436090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109722, 27.044956, 21.531563>,  <39.444241, 26.894030, 21.690683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109722, 27.044956, 21.531563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266711, -0.353948, -0.896429,
		-0.479040, -0.855776, 0.195370,
		-0.836293, 0.377319, -0.397800,
		38.858833, 27.158152, 21.412224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188358, 26.343613, 21.213242>,  <39.444241, 26.894030, 21.690683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188358, 26.343613, 21.213242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006004, 26.676472, 21.086941>,  <38.896591, 26.876186, 21.011160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006004, 26.676472, 21.086941>,  <39.188358, 26.343613, 21.213242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006004, 26.676472, 21.086941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091157, -0.309241, -0.946605,
		-0.885358, -0.460326, 0.065122,
		-0.455885, 0.832148, -0.315751,
		38.869240, 26.926117, 20.992216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627712, 26.196671, 20.654428>,  <39.188358, 26.343613, 21.213242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627712, 26.196671, 20.654428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747826, 26.575209, 20.606667>,  <38.819893, 26.802332, 20.578009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747826, 26.575209, 20.606667>,  <38.627712, 26.196671, 20.654428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747826, 26.575209, 20.606667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031919, -0.115144, -0.992836,
		-0.953315, 0.301946, -0.004370,
		0.300286, 0.946346, -0.119407,
		38.837910, 26.859112, 20.570845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277042, 26.378366, 20.034849>,  <38.627712, 26.196671, 20.654428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277042, 26.378366, 20.034849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541519, 26.672075, 20.096378>,  <38.700207, 26.848301, 20.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541519, 26.672075, 20.096378>,  <38.277042, 26.378366, 20.034849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541519, 26.672075, 20.096378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169288, 0.053721, -0.984102,
		-0.730864, 0.676724, -0.088783,
		0.661196, 0.734274, 0.153824,
		38.739880, 26.892357, 20.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417591, 26.673450, 19.375637>,  <38.277042, 26.378366, 20.034849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417591, 26.673450, 19.375637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738255, 26.837690, 19.549421>,  <38.930653, 26.936234, 19.653692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738255, 26.837690, 19.549421>,  <38.417591, 26.673450, 19.375637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738255, 26.837690, 19.549421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333052, 0.296752, -0.894994,
		-0.496411, 0.862175, 0.101142,
		0.801656, 0.410600, 0.434461,
		38.978752, 26.960871, 19.679760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606522, 27.384253, 19.147682>,  <38.417591, 26.673450, 19.375637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606522, 27.384253, 19.147682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918324, 27.165508, 19.269875>,  <39.105404, 27.034262, 19.343191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918324, 27.165508, 19.269875>,  <38.606522, 27.384253, 19.147682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918324, 27.165508, 19.269875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402448, 0.063511, -0.913237,
		0.480013, 0.834811, 0.269591,
		0.779502, -0.546862, 0.305482,
		39.152176, 27.001450, 19.361519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133736, 27.825006, 18.983561>,  <38.606522, 27.384253, 19.147682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133736, 27.825006, 18.983561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227802, 27.436485, 18.969339>,  <39.284241, 27.203373, 18.960808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227802, 27.436485, 18.969339>,  <39.133736, 27.825006, 18.983561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227802, 27.436485, 18.969339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230921, 0.091365, -0.968673,
		0.944125, 0.219590, 0.245781,
		0.235167, -0.971304, -0.035552,
		39.298351, 27.145094, 18.958673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754864, 27.685682, 18.561939>,  <39.133736, 27.825006, 18.983561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754864, 27.685682, 18.561939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532768, 27.353367, 18.577410>,  <39.399509, 27.153976, 18.586691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532768, 27.353367, 18.577410>,  <39.754864, 27.685682, 18.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532768, 27.353367, 18.577410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009173, -0.052616, -0.998573,
		0.831640, -0.554093, 0.036835,
		-0.555240, -0.830790, 0.038675,
		39.366196, 27.104130, 18.589012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212482, 27.627857, 18.035948>,  <39.754864, 27.685682, 18.561939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212482, 27.627857, 18.035948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453423, 27.939751, 18.104288>,  <40.597988, 28.126886, 18.145292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453423, 27.939751, 18.104288>,  <40.212482, 27.627857, 18.035948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453423, 27.939751, 18.104288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414627, 0.122729, 0.901678,
		0.682099, -0.613966, 0.397224,
		0.602350, 0.779733, 0.170853,
		40.634129, 28.173670, 18.155544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495567, 27.538961, 18.707489>,  <40.212482, 27.627857, 18.035948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495567, 27.538961, 18.707489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506020, 27.926395, 18.608564>,  <40.512291, 28.158855, 18.549210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506020, 27.926395, 18.608564>,  <40.495567, 27.538961, 18.707489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506020, 27.926395, 18.608564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342754, 0.241081, 0.907965,
		0.939062, 0.061037, 0.338286,
		0.026135, 0.968584, -0.247310,
		40.513859, 28.216970, 18.534370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251350, 27.833603, 19.363661>,  <40.495567, 27.538961, 18.707489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251350, 27.833603, 19.363661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333843, 28.128952, 19.106827>,  <40.383339, 28.306162, 18.952726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333843, 28.128952, 19.106827>,  <40.251350, 27.833603, 19.363661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333843, 28.128952, 19.106827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240372, 0.674314, 0.698228,
		0.948519, 0.010339, 0.316551,
		0.206236, 0.738373, -0.642085,
		40.395714, 28.350464, 18.914202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846359, 28.403149, 19.570192>,  <40.251350, 27.833603, 19.363661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846359, 28.403149, 19.570192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535152, 28.509335, 19.342432>,  <40.348427, 28.573046, 19.205776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535152, 28.509335, 19.342432>,  <40.846359, 28.403149, 19.570192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535152, 28.509335, 19.342432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249690, 0.701024, 0.667997,
		0.576494, 0.661887, -0.479125,
		-0.778017, 0.265463, -0.569402,
		40.301746, 28.588974, 19.171612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702835, 29.149401, 19.549519>,  <40.846359, 28.403149, 19.570192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702835, 29.149401, 19.549519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351124, 28.964092, 19.505241>,  <40.140099, 28.852907, 19.478674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351124, 28.964092, 19.505241>,  <40.702835, 29.149401, 19.549519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351124, 28.964092, 19.505241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429171, 0.669752, 0.606007,
		-0.206608, 0.580354, -0.787720,
		-0.879276, -0.463272, -0.110695,
		40.087341, 28.825111, 19.472033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192734, 29.622938, 19.377762>,  <40.702835, 29.149401, 19.549519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192734, 29.622938, 19.377762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063503, 29.305517, 19.584021>,  <39.985966, 29.115065, 19.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063503, 29.305517, 19.584021>,  <40.192734, 29.622938, 19.377762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063503, 29.305517, 19.584021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322426, 0.604568, 0.728382,
		-0.889754, 0.069066, -0.451185,
		-0.323078, -0.793554, 0.515648,
		39.966579, 29.067451, 19.738714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486618, 29.720493, 19.501265>,  <40.192734, 29.622938, 19.377762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486618, 29.720493, 19.501265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617107, 29.457678, 19.773111>,  <39.695400, 29.299990, 19.936220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617107, 29.457678, 19.773111>,  <39.486618, 29.720493, 19.501265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617107, 29.457678, 19.773111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339054, 0.589784, 0.732937,
		-0.882395, -0.469528, -0.030370,
		0.326223, -0.657037, 0.679618,
		39.714973, 29.260567, 19.976997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951019, 29.783581, 19.978594>,  <39.486618, 29.720493, 19.501265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951019, 29.783581, 19.978594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249645, 29.594709, 20.166075>,  <39.428822, 29.481386, 20.278563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249645, 29.594709, 20.166075>,  <38.951019, 29.783581, 19.978594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249645, 29.594709, 20.166075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229689, 0.478247, 0.847657,
		-0.624402, -0.740490, 0.248590,
		0.746569, -0.472181, 0.468700,
		39.473618, 29.453054, 20.306684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654613, 29.487722, 20.612152>,  <38.951019, 29.783581, 19.978594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654613, 29.487722, 20.612152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047222, 29.526648, 20.678059>,  <39.282787, 29.550003, 20.717602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047222, 29.526648, 20.678059>,  <38.654613, 29.487722, 20.612152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047222, 29.526648, 20.678059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188291, 0.337671, 0.922239,
		0.034108, -0.936220, 0.349754,
		0.981521, 0.097311, 0.164765,
		39.341679, 29.555841, 20.727488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781631, 29.235750, 21.312557>,  <38.654613, 29.487722, 20.612152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781631, 29.235750, 21.312557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079163, 29.484743, 21.215208>,  <39.257683, 29.634138, 21.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079163, 29.484743, 21.215208>,  <38.781631, 29.235750, 21.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079163, 29.484743, 21.215208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111800, 0.474882, 0.872919,
		0.658950, -0.622096, 0.422825,
		0.743832, 0.622482, -0.243373,
		39.302311, 29.671488, 21.142197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183811, 29.180483, 21.945482>,  <38.781631, 29.235750, 21.312557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183811, 29.180483, 21.945482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291065, 29.519943, 21.763100>,  <39.355419, 29.723619, 21.653669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.291065, 29.519943, 21.763100>,  <39.183811, 29.180483, 21.945482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291065, 29.519943, 21.763100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075554, 0.490355, 0.868242,
		0.960414, -0.198357, 0.195600,
		0.268135, 0.848650, -0.455957,
		39.371506, 29.774538, 21.626312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621628, 29.498579, 22.368240>,  <39.183811, 29.180483, 21.945482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621628, 29.498579, 22.368240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496212, 29.789276, 22.123770>,  <39.420963, 29.963696, 21.977087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496212, 29.789276, 22.123770>,  <39.621628, 29.498579, 22.368240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496212, 29.789276, 22.123770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048053, 0.630664, 0.774567,
		0.948359, 0.272225, -0.162814,
		-0.313537, 0.726744, -0.611177,
		39.402149, 30.007299, 21.940416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001907, 30.122189, 22.577795>,  <39.621628, 29.498579, 22.368240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001907, 30.122189, 22.577795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687069, 30.251892, 22.367903>,  <39.498165, 30.329714, 22.241968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687069, 30.251892, 22.367903>,  <40.001907, 30.122189, 22.577795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687069, 30.251892, 22.367903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237607, 0.625654, 0.743034,
		0.569234, 0.709517, -0.415402,
		-0.787093, 0.324258, -0.524730,
		39.450939, 30.349169, 22.210484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982738, 30.839317, 22.671089>,  <40.001907, 30.122189, 22.577795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982738, 30.839317, 22.671089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611855, 30.792685, 22.528713>,  <39.389324, 30.764706, 22.443287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611855, 30.792685, 22.528713>,  <39.982738, 30.839317, 22.671089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611855, 30.792685, 22.528713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360240, 0.537729, 0.762283,
		0.102531, 0.835019, -0.540584,
		-0.927208, -0.116582, -0.355941,
		39.333691, 30.757710, 22.421930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654488, 31.497450, 22.725761>,  <39.982738, 30.839317, 22.671089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654488, 31.497450, 22.725761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351471, 31.236341, 22.724072>,  <39.169659, 31.079676, 22.723059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351471, 31.236341, 22.724072>,  <39.654488, 31.497450, 22.725761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351471, 31.236341, 22.724072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420890, 0.483480, 0.767528,
		-0.498978, 0.583213, -0.641002,
		-0.757544, -0.652771, -0.004223,
		39.124207, 31.040510, 22.722805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148224, 31.874731, 22.769064>,  <39.654488, 31.497450, 22.725761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148224, 31.874731, 22.769064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976498, 31.531557, 22.881945>,  <38.873463, 31.325653, 22.949673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976498, 31.531557, 22.881945>,  <39.148224, 31.874731, 22.769064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976498, 31.531557, 22.881945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515123, 0.489259, 0.703757,
		-0.741848, 0.156764, -0.651987,
		-0.429314, -0.857934, 0.282203,
		38.847702, 31.274178, 22.966606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369160, 31.845360, 22.661863>,  <39.148224, 31.874731, 22.769064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369160, 31.845360, 22.661863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461899, 31.615761, 22.976004>,  <38.517544, 31.478003, 23.164488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461899, 31.615761, 22.976004>,  <38.369160, 31.845360, 22.661863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461899, 31.615761, 22.976004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540421, 0.595287, 0.594626,
		-0.808821, -0.562283, -0.172182,
		0.231851, -0.573996, 0.785349,
		38.531452, 31.443562, 23.211609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814262, 31.826586, 23.035236>,  <38.369160, 31.845360, 22.661863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814262, 31.826586, 23.035236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064552, 31.655210, 23.295975>,  <38.214725, 31.552385, 23.452417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064552, 31.655210, 23.295975>,  <37.814262, 31.826586, 23.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064552, 31.655210, 23.295975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491747, 0.432027, 0.756001,
		-0.605517, -0.793594, 0.059647,
		0.625727, -0.428440, 0.651848,
		38.252270, 31.526678, 23.491529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406353, 31.430319, 23.501902>,  <37.814262, 31.826586, 23.035236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406353, 31.430319, 23.501902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755707, 31.495342, 23.685541>,  <37.965321, 31.534357, 23.795725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755707, 31.495342, 23.685541>,  <37.406353, 31.430319, 23.501902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755707, 31.495342, 23.685541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479296, 0.119589, 0.869468,
		0.086424, -0.979427, 0.182355,
		0.873388, 0.162545, 0.459100,
		38.017723, 31.544109, 23.823271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452175, 30.926121, 24.057106>,  <37.406353, 31.430319, 23.501902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452175, 30.926121, 24.057106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675663, 31.244862, 24.149071>,  <37.809757, 31.436106, 24.204250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675663, 31.244862, 24.149071>,  <37.452175, 30.926121, 24.057106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675663, 31.244862, 24.149071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526315, 0.126425, 0.840838,
		0.640957, -0.590799, 0.490031,
		0.558719, 0.796852, 0.229913,
		37.843277, 31.483917, 24.218044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403793, 30.922411, 24.742737>,  <37.452175, 30.926121, 24.057106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403793, 30.922411, 24.742737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566471, 31.278008, 24.658554>,  <37.664078, 31.491365, 24.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566471, 31.278008, 24.658554>,  <37.403793, 30.922411, 24.742737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566471, 31.278008, 24.658554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355114, 0.366089, 0.860158,
		0.841720, -0.275086, 0.464580,
		0.406695, 0.888992, -0.210458,
		37.688480, 31.544704, 24.595417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783077, 31.065098, 25.294411>,  <37.403793, 30.922411, 24.742737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783077, 31.065098, 25.294411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744640, 31.430658, 25.136652>,  <37.721581, 31.649996, 25.041996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744640, 31.430658, 25.136652>,  <37.783077, 31.065098, 25.294411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744640, 31.430658, 25.136652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218380, 0.367220, 0.904135,
		0.971121, 0.173007, 0.164292,
		-0.096090, 0.913903, -0.394397,
		37.715813, 31.704828, 25.018333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262417, 31.568977, 25.792284>,  <37.783077, 31.065098, 25.294411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262417, 31.568977, 25.792284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005924, 31.797213, 25.587051>,  <37.852028, 31.934155, 25.463911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005924, 31.797213, 25.587051>,  <38.262417, 31.568977, 25.792284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005924, 31.797213, 25.587051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197402, 0.523477, 0.828857,
		0.741523, 0.632770, -0.223034,
		-0.641229, 0.570589, -0.513081,
		37.813557, 31.968390, 25.433126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438187, 32.242661, 25.912815>,  <38.262417, 31.568977, 25.792284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438187, 32.242661, 25.912815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051243, 32.233139, 25.811905>,  <37.819077, 32.227428, 25.751358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051243, 32.233139, 25.811905>,  <38.438187, 32.242661, 25.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051243, 32.233139, 25.811905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198949, 0.687937, 0.697970,
		0.156939, 0.725380, -0.670219,
		-0.967362, -0.023801, -0.252277,
		37.761036, 32.225998, 25.736221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177132, 32.887165, 25.978588>,  <38.438187, 32.242661, 25.912815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177132, 32.887165, 25.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840248, 32.674149, 26.012283>,  <37.638119, 32.546341, 26.032501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840248, 32.674149, 26.012283>,  <38.177132, 32.887165, 25.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840248, 32.674149, 26.012283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430520, 0.758300, 0.489523,
		-0.324568, 0.376012, -0.867912,
		-0.842205, -0.532537, 0.084239,
		37.587585, 32.514389, 26.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662109, 33.339333, 25.821621>,  <38.177132, 32.887165, 25.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662109, 33.339333, 25.821621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480400, 33.039291, 26.013859>,  <37.371372, 32.859264, 26.129202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480400, 33.039291, 26.013859>,  <37.662109, 33.339333, 25.821621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480400, 33.039291, 26.013859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488643, 0.660884, 0.569614,
		-0.744890, 0.023923, -0.666759,
		-0.454277, -0.750106, 0.480596,
		37.344116, 32.814259, 26.158037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984310, 33.541756, 25.854204>,  <37.662109, 33.339333, 25.821621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984310, 33.541756, 25.854204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008797, 33.277325, 26.153332>,  <37.023487, 33.118668, 26.332808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008797, 33.277325, 26.153332>,  <36.984310, 33.541756, 25.854204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008797, 33.277325, 26.153332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394751, 0.672105, 0.626456,
		-0.916747, -0.333551, -0.219817,
		0.061215, -0.661074, 0.747819,
		37.027161, 33.079002, 26.377678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410351, 33.849323, 26.178879>,  <36.984310, 33.541756, 25.854204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410351, 33.849323, 26.178879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602066, 33.606445, 26.432365>,  <36.717094, 33.460720, 26.584457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602066, 33.606445, 26.432365>,  <36.410351, 33.849323, 26.178879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602066, 33.606445, 26.432365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325962, 0.547258, 0.770881,
		-0.814883, -0.576041, 0.064371,
		0.479286, -0.607195, 0.633719,
		36.745853, 33.424286, 26.622480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933765, 33.691593, 26.733601>,  <36.410351, 33.849323, 26.178879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933765, 33.691593, 26.733601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307755, 33.637348, 26.864708>,  <36.532150, 33.604801, 26.943373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307755, 33.637348, 26.864708>,  <35.933765, 33.691593, 26.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307755, 33.637348, 26.864708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188021, 0.594061, 0.782138,
		-0.300784, -0.792906, 0.529934,
		0.934975, -0.135616, 0.327767,
		36.588245, 33.596664, 26.963037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924000, 33.737785, 27.412313>,  <35.933765, 33.691593, 26.733601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924000, 33.737785, 27.412313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323704, 33.752293, 27.407064>,  <36.563526, 33.760998, 27.403915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323704, 33.752293, 27.407064>,  <35.924000, 33.737785, 27.412313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323704, 33.752293, 27.407064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016068, 0.700765, 0.713212,
		0.035060, -0.712470, 0.700826,
		0.999256, 0.036266, -0.013121,
		36.623482, 33.763172, 27.403128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170803, 33.539558, 28.000427>,  <35.924000, 33.737785, 27.412313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170803, 33.539558, 28.000427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456627, 33.775269, 27.849607>,  <36.628120, 33.916695, 27.759115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456627, 33.775269, 27.849607>,  <36.170803, 33.539558, 28.000427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456627, 33.775269, 27.849607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085798, 0.608716, 0.788735,
		0.694296, -0.531246, 0.485521,
		0.714557, 0.589273, -0.377049,
		36.670994, 33.952049, 27.736492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502037, 33.619080, 28.551933>,  <36.170803, 33.539558, 28.000427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502037, 33.619080, 28.551933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585846, 33.919228, 28.301159>,  <36.636131, 34.099316, 28.150694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585846, 33.919228, 28.301159>,  <36.502037, 33.619080, 28.551933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585846, 33.919228, 28.301159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097907, 0.654045, 0.750093,
		0.972890, -0.095779, 0.210502,
		0.209520, 0.750368, -0.626936,
		36.648701, 34.144337, 28.113077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002697, 33.975319, 28.885021>,  <36.502037, 33.619080, 28.551933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002697, 33.975319, 28.885021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812511, 34.224144, 28.636192>,  <36.698399, 34.373440, 28.486895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812511, 34.224144, 28.636192>,  <37.002697, 33.975319, 28.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812511, 34.224144, 28.636192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020590, 0.714789, 0.699037,
		0.879494, 0.319559, -0.352666,
		-0.475465, 0.622060, -0.622073,
		36.669872, 34.410763, 28.449570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153870, 34.550758, 29.201719>,  <37.002697, 33.975319, 28.885021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153870, 34.550758, 29.201719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865395, 34.659203, 28.946726>,  <36.692310, 34.724270, 28.793730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865395, 34.659203, 28.946726>,  <37.153870, 34.550758, 29.201719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865395, 34.659203, 28.946726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196197, 0.802624, 0.563296,
		0.664374, 0.531316, -0.525653,
		-0.721189, 0.271108, -0.637484,
		36.649036, 34.740536, 28.755480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333668, 35.220108, 29.011053>,  <37.153870, 34.550758, 29.201719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333668, 35.220108, 29.011053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945671, 35.158508, 28.935793>,  <36.712872, 35.121548, 28.890636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945671, 35.158508, 28.935793>,  <37.333668, 35.220108, 29.011053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945671, 35.158508, 28.935793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235668, 0.785887, 0.571702,
		0.059822, 0.598886, -0.798596,
		-0.969991, -0.154003, -0.188152,
		36.654675, 35.112309, 28.879347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089436, 35.855824, 28.741005>,  <37.333668, 35.220108, 29.011053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089436, 35.855824, 28.741005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777813, 35.648342, 28.881866>,  <36.590839, 35.523853, 28.966383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777813, 35.648342, 28.881866>,  <37.089436, 35.855824, 28.741005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777813, 35.648342, 28.881866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222434, 0.753833, 0.618272,
		-0.586167, 0.403338, -0.702657,
		-0.779058, -0.518705, 0.352156,
		36.544094, 35.492729, 28.987513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674698, 36.350246, 28.920670>,  <37.089436, 35.855824, 28.741005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674698, 36.350246, 28.920670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528633, 36.029968, 29.110636>,  <36.440994, 35.837803, 29.224615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528633, 36.029968, 29.110636>,  <36.674698, 36.350246, 28.920670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528633, 36.029968, 29.110636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389525, 0.594755, 0.703233,
		-0.845532, 0.071807, -0.529074,
		-0.365167, -0.800694, 0.474914,
		36.419083, 35.789761, 29.253109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005116, 36.536556, 29.220285>,  <36.674698, 36.350246, 28.920670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005116, 36.536556, 29.220285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117329, 36.217300, 29.433554>,  <36.184658, 36.025745, 29.561514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117329, 36.217300, 29.433554>,  <36.005116, 36.536556, 29.220285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117329, 36.217300, 29.433554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383545, 0.415987, 0.824529,
		-0.879883, -0.435802, -0.189425,
		0.280534, -0.798142, 0.533169,
		36.201488, 35.977859, 29.593504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388359, 36.307365, 29.578560>,  <36.005116, 36.536556, 29.220285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388359, 36.307365, 29.578560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707451, 36.177795, 29.782013>,  <35.898907, 36.100056, 29.904085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707451, 36.177795, 29.782013>,  <35.388359, 36.307365, 29.578560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707451, 36.177795, 29.782013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323190, 0.482438, 0.814127,
		-0.509097, -0.813835, 0.280165,
		0.797727, -0.323923, 0.508631,
		35.946770, 36.080620, 29.934603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246479, 35.934765, 30.154531>,  <35.388359, 36.307365, 29.578560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246479, 35.934765, 30.154531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619598, 36.054859, 30.234274>,  <35.843472, 36.126915, 30.282120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619598, 36.054859, 30.234274>,  <35.246479, 35.934765, 30.154531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619598, 36.054859, 30.234274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303196, 0.354729, 0.884443,
		0.194824, -0.885452, 0.421922,
		0.932800, 0.300236, 0.199356,
		35.899437, 36.144932, 30.294081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350395, 35.778790, 30.860943>,  <35.246479, 35.934765, 30.154531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350395, 35.778790, 30.860943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659843, 36.025768, 30.804001>,  <35.845512, 36.173954, 30.769836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659843, 36.025768, 30.804001>,  <35.350395, 35.778790, 30.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659843, 36.025768, 30.804001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100785, 0.341701, 0.934389,
		0.625578, -0.708519, 0.326577,
		0.773624, 0.617447, -0.142353,
		35.891930, 36.211002, 30.761295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808975, 35.743782, 31.547508>,  <35.350395, 35.778790, 30.860943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808975, 35.743782, 31.547508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873455, 36.085152, 31.349245>,  <35.912144, 36.289974, 31.230288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873455, 36.085152, 31.349245>,  <35.808975, 35.743782, 31.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873455, 36.085152, 31.349245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115777, 0.515110, 0.849268,
		0.980107, -0.079519, 0.181845,
		0.161203, 0.853427, -0.495656,
		35.921818, 36.341179, 31.200548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161385, 36.051201, 32.037136>,  <35.808975, 35.743782, 31.547508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161385, 36.051201, 32.037136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077324, 36.341213, 31.774786>,  <36.026886, 36.515221, 31.617376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077324, 36.341213, 31.774786>,  <36.161385, 36.051201, 32.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077324, 36.341213, 31.774786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098034, 0.651848, 0.751987,
		0.972742, 0.222328, -0.065909,
		-0.210150, 0.725027, -0.655875,
		36.014278, 36.558720, 31.578024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628426, 36.625465, 32.168774>,  <36.161385, 36.051201, 32.037136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628426, 36.625465, 32.168774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296902, 36.747429, 31.981113>,  <36.097988, 36.820606, 31.868517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296902, 36.747429, 31.981113>,  <36.628426, 36.625465, 32.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296902, 36.747429, 31.981113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213124, 0.603239, 0.768558,
		0.517350, 0.736976, -0.434988,
		-0.828810, 0.304907, -0.469153,
		36.048260, 36.838902, 31.840368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376091, 36.817837, 32.262405>,  <36.628426, 36.625465, 32.168774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376091, 36.817837, 32.262405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746704, 36.804932, 32.412338>,  <37.969070, 36.797188, 32.502300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746704, 36.804932, 32.412338>,  <37.376091, 36.817837, 32.262405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746704, 36.804932, 32.412338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325223, -0.432184, -0.841098,
		0.189135, 0.901208, -0.389939,
		0.926530, -0.032264, 0.374835,
		38.024662, 36.795254, 32.524788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944702, 37.096809, 31.810068>,  <37.376091, 36.817837, 32.262405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944702, 37.096809, 31.810068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134350, 36.837387, 32.048256>,  <38.248138, 36.681732, 32.191170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134350, 36.837387, 32.048256>,  <37.944702, 37.096809, 31.810068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134350, 36.837387, 32.048256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266712, -0.538746, -0.799135,
		0.839093, 0.537704, -0.082451,
		0.474118, -0.648558, 0.595470,
		38.276585, 36.642818, 32.226898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617912, 37.016754, 31.495434>,  <37.944702, 37.096809, 31.810068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617912, 37.016754, 31.495434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560024, 36.684528, 31.710552>,  <38.525291, 36.485195, 31.839622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560024, 36.684528, 31.710552>,  <38.617912, 37.016754, 31.495434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560024, 36.684528, 31.710552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166327, -0.556203, -0.814232,
		0.975393, -0.028387, 0.218639,
		-0.144721, -0.830562, 0.537794,
		38.516609, 36.435360, 31.871891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155994, 36.593452, 31.333389>,  <38.617912, 37.016754, 31.495434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155994, 36.593452, 31.333389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885391, 36.329124, 31.463406>,  <38.723030, 36.170528, 31.541414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885391, 36.329124, 31.463406>,  <39.155994, 36.593452, 31.333389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885391, 36.329124, 31.463406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260924, -0.627822, -0.733321,
		0.688658, -0.411290, 0.597152,
		-0.676512, -0.660818, 0.325039,
		38.682438, 36.130878, 31.560917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537815, 36.063755, 31.500235>,  <39.155994, 36.593452, 31.333389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537815, 36.063755, 31.500235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171562, 35.915760, 31.437328>,  <38.951813, 35.826962, 31.399584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171562, 35.915760, 31.437328>,  <39.537815, 36.063755, 31.500235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171562, 35.915760, 31.437328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369786, -0.621600, -0.690559,
		0.157744, -0.690449, 0.705972,
		-0.915628, -0.369990, -0.157265,
		38.896873, 35.804764, 31.390148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699562, 35.407875, 31.541033>,  <39.537815, 36.063755, 31.500235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699562, 35.407875, 31.541033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340973, 35.440273, 31.366781>,  <39.125820, 35.459713, 31.262230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340973, 35.440273, 31.366781>,  <39.699562, 35.407875, 31.541033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340973, 35.440273, 31.366781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246961, -0.724954, -0.643003,
		-0.367889, -0.684019, 0.629901,
		-0.896475, 0.080993, -0.435628,
		39.072029, 35.464573, 31.236094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401741, 34.706139, 31.494587>,  <39.699562, 35.407875, 31.541033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401741, 34.706139, 31.494587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173618, 34.881184, 31.216526>,  <39.036743, 34.986210, 31.049688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173618, 34.881184, 31.216526>,  <39.401741, 34.706139, 31.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173618, 34.881184, 31.216526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325630, -0.656493, -0.680428,
		-0.754131, -0.614417, 0.231902,
		-0.570308, 0.437617, -0.695155,
		39.002525, 35.012470, 31.007980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110001, 34.084660, 31.120584>,  <39.401741, 34.706139, 31.494587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110001, 34.084660, 31.120584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093498, 34.407394, 30.884851>,  <39.083595, 34.601036, 30.743412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093498, 34.407394, 30.884851>,  <39.110001, 34.084660, 31.120584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093498, 34.407394, 30.884851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128048, -0.580703, -0.803982,
		-0.990909, -0.108633, -0.079355,
		-0.041258, 0.806835, -0.589334,
		39.081120, 34.649445, 30.708052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629135, 34.043198, 30.569878>,  <39.110001, 34.084660, 31.120584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629135, 34.043198, 30.569878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903721, 34.309681, 30.453308>,  <39.068474, 34.469570, 30.383368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903721, 34.309681, 30.453308>,  <38.629135, 34.043198, 30.569878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903721, 34.309681, 30.453308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159883, -0.529245, -0.833269,
		-0.709366, 0.525419, -0.469825,
		0.686468, 0.666210, -0.291422,
		39.109661, 34.509544, 30.365881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600468, 33.963497, 29.869717>,  <38.629135, 34.043198, 30.569878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600468, 33.963497, 29.869717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942188, 34.164379, 29.923323>,  <39.147221, 34.284908, 29.955486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942188, 34.164379, 29.923323>,  <38.600468, 33.963497, 29.869717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942188, 34.164379, 29.923323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403898, -0.479114, -0.779305,
		-0.327161, 0.719890, -0.612147,
		0.854302, 0.502203, 0.134015,
		39.198479, 34.315041, 29.963528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808361, 34.035824, 29.271044>,  <38.600468, 33.963497, 29.869717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808361, 34.035824, 29.271044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169590, 34.126381, 29.417036>,  <39.386326, 34.180714, 29.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169590, 34.126381, 29.417036>,  <38.808361, 34.035824, 29.271044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169590, 34.126381, 29.417036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425020, -0.348717, -0.835317,
		-0.061834, 0.909474, -0.411137,
		0.903070, 0.226392, 0.364982,
		39.440510, 34.194298, 29.526531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167202, 34.251118, 28.756403>,  <38.808361, 34.035824, 29.271044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167202, 34.251118, 28.756403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456699, 34.167698, 29.019526>,  <39.630398, 34.117645, 29.177399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456699, 34.167698, 29.019526>,  <39.167202, 34.251118, 28.756403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456699, 34.167698, 29.019526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559723, -0.380140, -0.736345,
		0.403619, 0.901112, -0.158396,
		0.723742, -0.208545, 0.657804,
		39.673820, 34.105133, 29.216867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863857, 34.512665, 28.370209>,  <39.167202, 34.251118, 28.756403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863857, 34.512665, 28.370209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909935, 34.229614, 28.649063>,  <39.937580, 34.059784, 28.816376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909935, 34.229614, 28.649063>,  <39.863857, 34.512665, 28.370209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909935, 34.229614, 28.649063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628848, -0.491322, -0.602622,
		0.768948, 0.507812, 0.388390,
		0.115194, -0.707623, 0.697137,
		39.944492, 34.017326, 28.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573364, 34.368328, 28.418539>,  <39.863857, 34.512665, 28.370209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573364, 34.368328, 28.418539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378990, 34.044315, 28.549818>,  <40.262367, 33.849907, 28.628586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378990, 34.044315, 28.549818>,  <40.573364, 34.368328, 28.418539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378990, 34.044315, 28.549818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558621, -0.576653, -0.596166,
		0.672171, -0.106358, 0.732717,
		-0.485931, -0.810036, 0.328195,
		40.233212, 33.801304, 28.648277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109058, 33.926121, 28.469124>,  <40.573364, 34.368328, 28.418539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109058, 33.926121, 28.469124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781265, 33.699158, 28.436905>,  <40.584587, 33.562981, 28.417574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781265, 33.699158, 28.436905>,  <41.109058, 33.926121, 28.469124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781265, 33.699158, 28.436905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494315, -0.628702, -0.600322,
		0.289989, -0.531771, 0.795692,
		-0.819487, -0.567410, -0.080546,
		40.535419, 33.528934, 28.412741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356548, 33.289600, 28.312206>,  <41.109058, 33.926121, 28.469124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356548, 33.289600, 28.312206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965351, 33.255508, 28.236040>,  <40.730633, 33.235054, 28.190340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965351, 33.255508, 28.236040>,  <41.356548, 33.289600, 28.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965351, 33.255508, 28.236040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200197, -0.640167, -0.741692,
		-0.058683, -0.763493, 0.643144,
		-0.977997, -0.085231, -0.190416,
		40.671951, 33.229939, 28.178915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245220, 32.557503, 28.191027>,  <41.356548, 33.289600, 28.312206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245220, 32.557503, 28.191027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935925, 32.733570, 28.008444>,  <40.750347, 32.839211, 27.898893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935925, 32.733570, 28.008444>,  <41.245220, 32.557503, 28.191027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935925, 32.733570, 28.008444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165066, -0.555301, -0.815104,
		-0.612255, -0.705615, 0.356723,
		-0.773238, 0.440168, -0.456459,
		40.703953, 32.865620, 27.871506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863434, 32.003517, 27.968277>,  <41.245220, 32.557503, 28.191027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863434, 32.003517, 27.968277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745068, 32.319138, 27.752932>,  <40.674049, 32.508511, 27.623724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745068, 32.319138, 27.752932>,  <40.863434, 32.003517, 27.968277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745068, 32.319138, 27.752932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018011, -0.558895, -0.829042,
		-0.955045, -0.255020, 0.151172,
		-0.295912, 0.789050, -0.538364,
		40.656296, 32.555851, 27.591423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455723, 31.643881, 27.403351>,  <40.863434, 32.003517, 27.968277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455723, 31.643881, 27.403351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516689, 32.015694, 27.269045>,  <40.553268, 32.238781, 27.188461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516689, 32.015694, 27.269045>,  <40.455723, 31.643881, 27.403351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516689, 32.015694, 27.269045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146480, -0.314738, -0.937808,
		-0.977401, 0.192124, 0.088186,
		0.152420, 0.929531, -0.335767,
		40.562416, 32.294552, 27.168314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871357, 31.869114, 27.019844>,  <40.455723, 31.643881, 27.403351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871357, 31.869114, 27.019844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185177, 32.068302, 26.872053>,  <40.373466, 32.187817, 26.783379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185177, 32.068302, 26.872053>,  <39.871357, 31.869114, 27.019844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185177, 32.068302, 26.872053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207196, -0.351082, -0.913133,
		-0.584430, 0.792948, -0.172262,
		0.784545, 0.497970, -0.369478,
		40.420540, 32.217693, 26.761209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559551, 32.334175, 26.558849>,  <39.871357, 31.869114, 27.019844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559551, 32.334175, 26.558849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950211, 32.297440, 26.481163>,  <40.184608, 32.275398, 26.434551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950211, 32.297440, 26.481163>,  <39.559551, 32.334175, 26.558849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950211, 32.297440, 26.481163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214167, -0.487512, -0.846442,
		-0.016944, 0.868272, -0.495798,
		0.976650, -0.091842, -0.194216,
		40.243206, 32.269886, 26.422899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660229, 32.563572, 25.895166>,  <39.559551, 32.334175, 26.558849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660229, 32.563572, 25.895166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969646, 32.323925, 25.977812>,  <40.155296, 32.180138, 26.027399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969646, 32.323925, 25.977812>,  <39.660229, 32.563572, 25.895166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969646, 32.323925, 25.977812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141603, -0.481178, -0.865111,
		0.617720, 0.639944, -0.457049,
		0.773544, -0.599116, 0.206616,
		40.201710, 32.144192, 26.039797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144974, 33.127785, 25.780420>,  <39.660229, 32.563572, 25.895166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144974, 33.127785, 25.780420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253010, 33.505707, 25.854607>,  <40.317829, 33.732460, 25.899118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253010, 33.505707, 25.854607>,  <40.144974, 33.127785, 25.780420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253010, 33.505707, 25.854607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745730, -0.083425, -0.661005,
		-0.609048, 0.316835, -0.727101,
		0.270088, 0.944804, 0.185464,
		40.334038, 33.789146, 25.910246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085697, 32.737041, 25.170588>,  <40.144974, 33.127785, 25.780420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085697, 32.737041, 25.170588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215576, 32.430222, 25.391933>,  <40.293503, 32.246132, 25.524740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215576, 32.430222, 25.391933>,  <40.085697, 32.737041, 25.170588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215576, 32.430222, 25.391933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081305, -0.560262, -0.824315,
		0.942318, 0.312641, -0.119549,
		0.324694, -0.767047, 0.553365,
		40.312984, 32.200108, 25.557943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747978, 32.410816, 24.894129>,  <40.085697, 32.737041, 25.170588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747978, 32.410816, 24.894129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616032, 32.105148, 25.115841>,  <40.536861, 31.921747, 25.248869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616032, 32.105148, 25.115841>,  <40.747978, 32.410816, 24.894129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616032, 32.105148, 25.115841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589090, -0.625429, -0.511676,
		0.737672, 0.157736, 0.656475,
		-0.329869, -0.764172, 0.554282,
		40.517071, 31.875896, 25.282125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291008, 32.097389, 25.050972>,  <40.747978, 32.410816, 24.894129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291008, 32.097389, 25.050972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990906, 31.832987, 25.045620>,  <40.810844, 31.674345, 25.042408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990906, 31.832987, 25.045620>,  <41.291008, 32.097389, 25.050972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990906, 31.832987, 25.045620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457285, -0.504200, -0.732580,
		0.477495, -0.555743, 0.680549,
		-0.750259, -0.661009, -0.013380,
		40.765827, 31.634684, 25.041605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686592, 31.509594, 24.830090>,  <41.291008, 32.097389, 25.050972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686592, 31.509594, 24.830090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303616, 31.397160, 24.803871>,  <41.073830, 31.329699, 24.788139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303616, 31.397160, 24.803871>,  <41.686592, 31.509594, 24.830090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303616, 31.397160, 24.803871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255936, -0.721827, -0.643011,
		0.133429, -0.632421, 0.763047,
		-0.957441, -0.281088, -0.065547,
		41.016384, 31.312834, 24.784206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644817, 30.771244, 25.083723>,  <41.686592, 31.509594, 24.830090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644817, 30.771244, 25.083723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358341, 30.876995, 24.825365>,  <41.186455, 30.940445, 24.670351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358341, 30.876995, 24.825365>,  <41.644817, 30.771244, 25.083723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358341, 30.876995, 24.825365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210814, -0.800290, -0.561331,
		-0.665307, -0.538182, 0.517423,
		-0.716187, 0.264377, -0.645895,
		41.143486, 30.956308, 24.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352009, 30.091591, 25.025131>,  <41.644817, 30.771244, 25.083723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352009, 30.091591, 25.025131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245754, 30.339022, 24.729347>,  <41.182003, 30.487480, 24.551878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245754, 30.339022, 24.729347>,  <41.352009, 30.091591, 25.025131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245754, 30.339022, 24.729347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016175, -0.764047, -0.644958,
		-0.963937, -0.183286, 0.192954,
		-0.265638, 0.618578, -0.739458,
		41.166061, 30.524595, 24.507509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816807, 29.684603, 24.611441>,  <41.352009, 30.091591, 25.025131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816807, 29.684603, 24.611441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957092, 29.967867, 24.366327>,  <41.041264, 30.137825, 24.219259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957092, 29.967867, 24.366327>,  <40.816807, 29.684603, 24.611441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957092, 29.967867, 24.366327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287264, -0.704154, -0.649342,
		-0.891335, 0.051704, -0.450388,
		0.350716, 0.708162, -0.612785,
		41.062305, 30.180315, 24.182491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504967, 29.520559, 23.944323>,  <40.816807, 29.684603, 24.611441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504967, 29.520559, 23.944323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830544, 29.748795, 23.900637>,  <41.025890, 29.885736, 23.874424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830544, 29.748795, 23.900637>,  <40.504967, 29.520559, 23.944323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830544, 29.748795, 23.900637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356926, -0.639489, -0.680924,
		-0.458369, 0.515251, -0.724164,
		0.813942, 0.570587, -0.109216,
		41.074726, 29.919971, 23.867872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596203, 29.662018, 23.234304>,  <40.504967, 29.520559, 23.944323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596203, 29.662018, 23.234304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958973, 29.712988, 23.394928>,  <41.176636, 29.743570, 23.491302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958973, 29.712988, 23.394928>,  <40.596203, 29.662018, 23.234304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958973, 29.712988, 23.394928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380530, -0.656800, -0.651007,
		0.180788, 0.743220, -0.644158,
		0.906925, 0.127427, 0.401559,
		41.231049, 29.751217, 23.515396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057793, 29.653061, 22.641073>,  <40.596203, 29.662018, 23.234304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057793, 29.653061, 22.641073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300785, 29.597902, 22.953983>,  <41.446579, 29.564806, 23.141729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300785, 29.597902, 22.953983>,  <41.057793, 29.653061, 22.641073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300785, 29.597902, 22.953983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564389, -0.618063, -0.547232,
		0.558957, 0.773939, -0.297632,
		0.607479, -0.137899, 0.782274,
		41.483028, 29.556532, 23.188665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727852, 29.725842, 22.419863>,  <41.057793, 29.653061, 22.641073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727852, 29.725842, 22.419863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789944, 29.501333, 22.745041>,  <41.827198, 29.366629, 22.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789944, 29.501333, 22.745041>,  <41.727852, 29.725842, 22.419863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789944, 29.501333, 22.745041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514724, -0.656435, -0.551500,
		0.843186, 0.504052, 0.187001,
		0.155231, -0.561271, 0.812944,
		41.836514, 29.332952, 22.988924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441120, 29.574684, 22.387026>,  <41.727852, 29.725842, 22.419863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441120, 29.574684, 22.387026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277340, 29.305368, 22.633289>,  <42.179073, 29.143780, 22.781048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277340, 29.305368, 22.633289>,  <42.441120, 29.574684, 22.387026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277340, 29.305368, 22.633289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541021, -0.722547, -0.430373,
		0.734607, 0.156868, 0.660109,
		-0.409448, -0.673288, 0.615658,
		42.154507, 29.103382, 22.817987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968510, 29.070009, 22.402941>,  <42.441120, 29.574684, 22.387026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968510, 29.070009, 22.402941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636608, 28.891417, 22.536901>,  <42.437466, 28.784260, 22.617279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636608, 28.891417, 22.536901>,  <42.968510, 29.070009, 22.402941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636608, 28.891417, 22.536901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354390, -0.885033, -0.301867,
		0.431180, -0.131788, 0.892589,
		-0.829754, -0.446484, 0.334904,
		42.387680, 28.757471, 22.637373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188972, 28.351572, 22.603765>,  <42.968510, 29.070009, 22.402941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188972, 28.351572, 22.603765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791206, 28.333426, 22.565651>,  <42.552547, 28.322538, 22.542782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791206, 28.333426, 22.565651>,  <43.188972, 28.351572, 22.603765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791206, 28.333426, 22.565651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077569, -0.926402, -0.368459,
		-0.071558, -0.373793, 0.924748,
		-0.994416, -0.045366, -0.095286,
		42.492882, 28.319817, 22.537066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962490, 27.638634, 22.847822>,  <43.188972, 28.351572, 22.603765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962490, 27.638634, 22.847822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676414, 27.783913, 22.608963>,  <42.504768, 27.871080, 22.465647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676414, 27.783913, 22.608963>,  <42.962490, 27.638634, 22.847822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676414, 27.783913, 22.608963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061084, -0.883592, -0.464257,
		-0.696252, -0.295557, 0.654124,
		-0.715193, 0.363196, -0.597149,
		42.461857, 27.892872, 22.429819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286457, 27.928211, 23.454241>,  <42.962490, 27.638634, 22.847822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286457, 27.928211, 23.454241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650688, 27.824671, 23.325340>,  <43.869225, 27.762547, 23.247999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650688, 27.824671, 23.325340>,  <43.286457, 27.928211, 23.454241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650688, 27.824671, 23.325340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370903, 0.167601, 0.913422,
		-0.182433, -0.951265, 0.248623,
		0.910576, -0.258853, -0.322252,
		43.923862, 27.747015, 23.228664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436119, 27.408764, 23.915033>,  <43.286457, 27.928211, 23.454241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436119, 27.408764, 23.915033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786472, 27.520519, 23.757669>,  <43.996685, 27.587572, 23.663252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786472, 27.520519, 23.757669>,  <43.436119, 27.408764, 23.915033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786472, 27.520519, 23.757669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324272, 0.262938, 0.908687,
		0.357320, -0.923474, 0.139705,
		0.875883, 0.279390, -0.393410,
		44.049236, 27.604336, 23.639647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913960, 27.219595, 24.430113>,  <43.436119, 27.408764, 23.915033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913960, 27.219595, 24.430113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119400, 27.472677, 24.198288>,  <44.242664, 27.624527, 24.059193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.119400, 27.472677, 24.198288>,  <43.913960, 27.219595, 24.430113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119400, 27.472677, 24.198288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394038, 0.426093, 0.814358,
		0.762197, -0.646628, -0.030467,
		0.513605, 0.632706, -0.579563,
		44.273483, 27.662489, 24.024420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645523, 27.182777, 24.661633>,  <43.913960, 27.219595, 24.430113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645523, 27.182777, 24.661633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588989, 27.538580, 24.487827>,  <44.555069, 27.752062, 24.383545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588989, 27.538580, 24.487827>,  <44.645523, 27.182777, 24.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588989, 27.538580, 24.487827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209046, 0.455837, 0.865166,
		0.967639, 0.031444, -0.250373,
		-0.141334, 0.889508, -0.434512,
		44.546589, 27.805431, 24.357473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293907, 27.606926, 24.944342>,  <44.645523, 27.182777, 24.661633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293907, 27.606926, 24.944342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005417, 27.853216, 24.817396>,  <44.832325, 28.000990, 24.741230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005417, 27.853216, 24.817396>,  <45.293907, 27.606926, 24.944342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005417, 27.853216, 24.817396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150035, 0.586128, 0.796205,
		0.676260, 0.526626, -0.515110,
		-0.721223, 0.615726, -0.317362,
		44.789051, 28.037933, 24.722187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473274, 28.266130, 25.103163>,  <45.293907, 27.606926, 24.944342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473274, 28.266130, 25.103163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075657, 28.285898, 25.064316>,  <44.837086, 28.297760, 25.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075657, 28.285898, 25.064316>,  <45.473274, 28.266130, 25.103163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075657, 28.285898, 25.064316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051568, 0.571779, 0.818785,
		0.095994, 0.818918, -0.565826,
		-0.994045, 0.049421, -0.097117,
		44.777443, 28.300724, 25.035181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333729, 28.930412, 25.239098>,  <45.473274, 28.266130, 25.103163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333729, 28.930412, 25.239098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958652, 28.791536, 25.244713>,  <44.733608, 28.708210, 25.248081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958652, 28.791536, 25.244713>,  <45.333729, 28.930412, 25.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958652, 28.791536, 25.244713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278377, 0.774790, 0.567633,
		-0.207952, 0.528356, -0.823162,
		-0.937690, -0.347190, 0.014036,
		44.677345, 28.687380, 25.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875271, 29.510580, 25.212145>,  <45.333729, 28.930412, 25.239098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875271, 29.510580, 25.212145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651573, 29.213163, 25.358782>,  <44.517357, 29.034714, 25.446764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651573, 29.213163, 25.358782>,  <44.875271, 29.510580, 25.212145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651573, 29.213163, 25.358782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296376, 0.592308, 0.749222,
		-0.774216, 0.310347, -0.551611,
		-0.559242, -0.743543, 0.366595,
		44.483799, 28.990101, 25.468760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204262, 29.836147, 25.396427>,  <44.875271, 29.510580, 25.212145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204262, 29.836147, 25.396427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210068, 29.502134, 25.616432>,  <44.213551, 29.301727, 25.748436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210068, 29.502134, 25.616432>,  <44.204262, 29.836147, 25.396427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210068, 29.502134, 25.616432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419784, 0.494157, 0.761308,
		-0.907508, -0.241937, -0.343359,
		0.014515, -0.835030, 0.550013,
		44.214424, 29.251625, 25.781437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595234, 29.852898, 25.848591>,  <44.204262, 29.836147, 25.396427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595234, 29.852898, 25.848591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834179, 29.583563, 26.022844>,  <43.977547, 29.421961, 26.127396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834179, 29.583563, 26.022844>,  <43.595234, 29.852898, 25.848591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834179, 29.583563, 26.022844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186070, 0.412011, 0.891978,
		-0.780089, -0.613890, 0.120831,
		0.597360, -0.673339, 0.435632,
		44.013386, 29.381561, 26.153534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144958, 29.550793, 26.353947>,  <43.595234, 29.852898, 25.848591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144958, 29.550793, 26.353947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523254, 29.481863, 26.464128>,  <43.750233, 29.440506, 26.530237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523254, 29.481863, 26.464128>,  <43.144958, 29.550793, 26.353947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523254, 29.481863, 26.464128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138936, 0.551872, 0.822274,
		-0.293711, -0.815930, 0.497988,
		0.945744, -0.172322, 0.275453,
		43.806976, 29.430166, 26.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068092, 29.349289, 27.066648>,  <43.144958, 29.550793, 26.353947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068092, 29.349289, 27.066648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453114, 29.439341, 27.006250>,  <43.684128, 29.493372, 26.970011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453114, 29.439341, 27.006250>,  <43.068092, 29.349289, 27.066648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453114, 29.439341, 27.006250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002369, 0.563985, 0.825782,
		0.271069, -0.794504, 0.543401,
		0.962557, 0.225131, -0.150996,
		43.741882, 29.506880, 26.960951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403984, 29.301060, 27.664257>,  <43.068092, 29.349289, 27.066648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403984, 29.301060, 27.664257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622772, 29.560774, 27.452879>,  <43.754044, 29.716602, 27.326052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622772, 29.560774, 27.452879>,  <43.403984, 29.301060, 27.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622772, 29.560774, 27.452879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017661, 0.640050, 0.768130,
		0.836966, -0.410811, 0.361555,
		0.546970, 0.649284, -0.528445,
		43.786861, 29.755560, 27.294346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929966, 29.439911, 28.090416>,  <43.403984, 29.301060, 27.664257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929966, 29.439911, 28.090416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860054, 29.719131, 27.812660>,  <43.818108, 29.886663, 27.646006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860054, 29.719131, 27.812660>,  <43.929966, 29.439911, 28.090416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860054, 29.719131, 27.812660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105638, 0.714470, 0.691645,
		0.978924, 0.047533, -0.198616,
		-0.174781, 0.698049, -0.694391,
		43.807621, 29.928547, 27.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091263, 30.014307, 28.528124>,  <43.929966, 29.439911, 28.090416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091263, 30.014307, 28.528124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973480, 30.209082, 28.199202>,  <43.902809, 30.325947, 28.001848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973480, 30.209082, 28.199202>,  <44.091263, 30.014307, 28.528124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973480, 30.209082, 28.199202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061596, 0.848996, 0.524798,
		0.953678, 0.205181, -0.219999,
		-0.294457, 0.486937, -0.822306,
		43.885143, 30.355164, 27.952509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500797, 30.653198, 28.607393>,  <44.091263, 30.014307, 28.528124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500797, 30.653198, 28.607393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183449, 30.684412, 28.365908>,  <43.993038, 30.703140, 28.221016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183449, 30.684412, 28.365908>,  <44.500797, 30.653198, 28.607393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183449, 30.684412, 28.365908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276427, 0.837417, 0.471510,
		0.542352, 0.540966, -0.642814,
		-0.793374, 0.078033, -0.603712,
		43.945438, 30.707823, 28.184793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347572, 31.351231, 28.652981>,  <44.500797, 30.653198, 28.607393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347572, 31.351231, 28.652981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004852, 31.240265, 28.479115>,  <43.799221, 31.173685, 28.374796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004852, 31.240265, 28.479115>,  <44.347572, 31.351231, 28.652981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004852, 31.240265, 28.479115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471291, 0.763337, 0.441816,
		0.209229, 0.583402, -0.784771,
		-0.856801, -0.277415, -0.434664,
		43.747810, 31.157040, 28.348715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954029, 31.967680, 28.351543>,  <44.347572, 31.351231, 28.652981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954029, 31.967680, 28.351543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679871, 31.682594, 28.411232>,  <43.515373, 31.511543, 28.447044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679871, 31.682594, 28.411232>,  <43.954029, 31.967680, 28.351543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679871, 31.682594, 28.411232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605745, 0.671793, 0.426342,
		-0.404106, 0.201824, -0.892169,
		-0.685399, -0.712714, 0.149221,
		43.474251, 31.468781, 28.455997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354496, 32.178909, 28.032934>,  <43.954029, 31.967680, 28.351543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354496, 32.178909, 28.032934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221508, 31.892765, 28.278772>,  <43.141716, 31.721079, 28.426275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221508, 31.892765, 28.278772>,  <43.354496, 32.178909, 28.032934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221508, 31.892765, 28.278772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796699, 0.561772, 0.222898,
		-0.504715, -0.415542, -0.756696,
		-0.332467, -0.715358, 0.614596,
		43.121769, 31.678158, 28.463152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630146, 32.218361, 27.927998>,  <43.354496, 32.178909, 28.032934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630146, 32.218361, 27.927998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700756, 32.034615, 28.276211>,  <42.743122, 31.924368, 28.485138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700756, 32.034615, 28.276211>,  <42.630146, 32.218361, 27.927998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700756, 32.034615, 28.276211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858258, 0.361173, 0.364619,
		-0.481905, -0.811504, -0.330497,
		0.176523, -0.459364, 0.870531,
		42.753712, 31.896805, 28.537371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955105, 32.080090, 28.191336>,  <42.630146, 32.218361, 27.927998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955105, 32.080090, 28.191336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195194, 32.047523, 28.509605>,  <42.339249, 32.027985, 28.700567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195194, 32.047523, 28.509605>,  <41.955105, 32.080090, 28.191336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195194, 32.047523, 28.509605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715764, 0.389283, 0.579777,
		-0.356946, -0.917513, 0.175383,
		0.600226, -0.081417, 0.795676,
		42.375263, 32.023098, 28.748308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561554, 31.870584, 28.841066>,  <41.955105, 32.080090, 28.191336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561554, 31.870584, 28.841066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876472, 32.050533, 29.009724>,  <42.065422, 32.158504, 29.110918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876472, 32.050533, 29.009724>,  <41.561554, 31.870584, 28.841066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876472, 32.050533, 29.009724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602829, 0.418019, 0.679601,
		0.129480, -0.789224, 0.600301,
		0.787294, 0.449873, 0.421641,
		42.112659, 32.185493, 29.136215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511288, 31.839302, 29.560423>,  <41.561554, 31.870584, 28.841066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511288, 31.839302, 29.560423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771431, 32.141449, 29.528299>,  <41.927517, 32.322739, 29.509026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771431, 32.141449, 29.528299>,  <41.511288, 31.839302, 29.560423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771431, 32.141449, 29.528299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508617, 0.511545, 0.692554,
		0.564218, -0.409560, 0.716882,
		0.650359, 0.755369, -0.080314,
		41.966541, 32.368057, 29.504206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662014, 31.920580, 30.223351>,  <41.511288, 31.839302, 29.560423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662014, 31.920580, 30.223351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805965, 32.248627, 30.045410>,  <41.892338, 32.445454, 29.938646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805965, 32.248627, 30.045410>,  <41.662014, 31.920580, 30.223351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805965, 32.248627, 30.045410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292679, 0.551964, 0.780817,
		0.885904, -0.150801, 0.438672,
		0.359879, 0.820119, -0.444851,
		41.913929, 32.494663, 29.911955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103630, 32.347675, 30.777945>,  <41.662014, 31.920580, 30.223351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103630, 32.347675, 30.777945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008102, 32.600624, 30.483170>,  <41.950787, 32.752392, 30.306305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008102, 32.600624, 30.483170>,  <42.103630, 32.347675, 30.777945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008102, 32.600624, 30.483170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205539, 0.708782, 0.674820,
		0.949063, 0.312627, -0.039293,
		-0.238817, 0.632370, -0.736936,
		41.936459, 32.790337, 30.262089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328674, 32.955986, 31.033066>,  <42.103630, 32.347675, 30.777945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328674, 32.955986, 31.033066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039238, 33.036934, 30.769106>,  <41.865578, 33.085503, 30.610731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039238, 33.036934, 30.769106>,  <42.328674, 32.955986, 31.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039238, 33.036934, 30.769106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281458, 0.786449, 0.549799,
		0.630237, 0.583562, -0.512109,
		-0.723590, 0.202367, -0.659898,
		41.822163, 33.097645, 30.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415989, 33.598042, 30.891802>,  <42.328674, 32.955986, 31.033066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415989, 33.598042, 30.891802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023056, 33.540253, 30.844208>,  <41.787296, 33.505581, 30.815651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023056, 33.540253, 30.844208>,  <42.415989, 33.598042, 30.891802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023056, 33.540253, 30.844208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186978, 0.729669, 0.657740,
		-0.008203, 0.668365, -0.743788,
		-0.982330, -0.144468, -0.118984,
		41.728355, 33.496914, 30.808512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080048, 34.281898, 30.555840>,  <42.415989, 33.598042, 30.891802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080048, 34.281898, 30.555840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843704, 34.039803, 30.769222>,  <41.701897, 33.894547, 30.897251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843704, 34.039803, 30.769222>,  <42.080048, 34.281898, 30.555840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843704, 34.039803, 30.769222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056843, 0.690808, 0.720800,
		-0.804770, 0.395568, -0.442573,
		-0.590858, -0.605236, 0.533457,
		41.666447, 33.858231, 30.929258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695732, 34.795578, 30.879023>,  <42.080048, 34.281898, 30.555840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695732, 34.795578, 30.879023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570774, 34.463081, 31.062954>,  <41.495800, 34.263584, 31.173313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570774, 34.463081, 31.062954>,  <41.695732, 34.795578, 30.879023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570774, 34.463081, 31.062954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353846, 0.551045, 0.755740,
		-0.881590, 0.073382, -0.466277,
		-0.312397, -0.831243, 0.459830,
		41.477055, 34.213707, 31.200903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959972, 34.870762, 31.043514>,  <41.695732, 34.795578, 30.879023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959972, 34.870762, 31.043514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082661, 34.598610, 31.309748>,  <41.156273, 34.435318, 31.469488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082661, 34.598610, 31.309748>,  <40.959972, 34.870762, 31.043514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082661, 34.598610, 31.309748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682982, 0.329714, 0.651785,
		-0.662914, -0.654501, -0.363556,
		0.306725, -0.680380, 0.665584,
		41.174679, 34.394497, 31.509422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465458, 34.887135, 31.581800>,  <40.959972, 34.870762, 31.043514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465458, 34.887135, 31.581800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763359, 34.684116, 31.755116>,  <40.942101, 34.562305, 31.859104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763359, 34.684116, 31.755116>,  <40.465458, 34.887135, 31.581800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763359, 34.684116, 31.755116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190569, 0.460487, 0.866969,
		-0.639549, -0.728251, 0.246227,
		0.744755, -0.507546, 0.433286,
		40.986786, 34.531853, 31.885101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226772, 34.817986, 32.184776>,  <40.465458, 34.887135, 31.581800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226772, 34.817986, 32.184776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611504, 34.753147, 32.272968>,  <40.842342, 34.714245, 32.325882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611504, 34.753147, 32.272968>,  <40.226772, 34.817986, 32.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611504, 34.753147, 32.272968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167645, 0.287762, 0.942915,
		-0.216288, -0.943884, 0.249603,
		0.961829, -0.162096, 0.220477,
		40.900051, 34.704517, 32.339111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175770, 34.687027, 32.876110>,  <40.226772, 34.817986, 32.184776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175770, 34.687027, 32.876110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562145, 34.768745, 32.812588>,  <40.793972, 34.817776, 32.774475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562145, 34.768745, 32.812588>,  <40.175770, 34.687027, 32.876110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562145, 34.768745, 32.812588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113442, 0.217261, 0.969499,
		0.232586, -0.954491, 0.186683,
		0.965937, 0.204314, -0.158811,
		40.851929, 34.830036, 32.764946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492481, 34.365528, 33.360344>,  <40.175770, 34.687027, 32.876110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492481, 34.365528, 33.360344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759129, 34.648155, 33.265362>,  <40.919117, 34.817734, 33.208374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759129, 34.648155, 33.265362>,  <40.492481, 34.365528, 33.360344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759129, 34.648155, 33.265362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108235, 0.223427, 0.968693,
		0.737504, -0.671444, 0.072464,
		0.666613, 0.706571, -0.237452,
		40.959114, 34.860126, 33.194126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019939, 34.302258, 33.822422>,  <40.492481, 34.365528, 33.360344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019939, 34.302258, 33.822422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094360, 34.665581, 33.672562>,  <41.139011, 34.883575, 33.582645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094360, 34.665581, 33.672562>,  <41.019939, 34.302258, 33.822422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094360, 34.665581, 33.672562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306669, 0.308574, 0.900409,
		0.933456, -0.282412, -0.221141,
		0.186048, 0.908309, -0.374647,
		41.150173, 34.938072, 33.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643101, 34.518246, 34.132214>,  <41.019939, 34.302258, 33.822422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643101, 34.518246, 34.132214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473381, 34.855915, 34.001160>,  <41.371552, 35.058517, 33.922527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473381, 34.855915, 34.001160>,  <41.643101, 34.518246, 34.132214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473381, 34.855915, 34.001160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303083, 0.473344, 0.827095,
		0.853296, 0.251632, -0.456692,
		-0.424296, 0.844173, -0.327637,
		41.346092, 35.109165, 33.902870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056477, 35.058220, 34.308277>,  <41.643101, 34.518246, 34.132214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056477, 35.058220, 34.308277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696259, 35.222691, 34.251781>,  <41.480125, 35.321373, 34.217884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696259, 35.222691, 34.251781>,  <42.056477, 35.058220, 34.308277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696259, 35.222691, 34.251781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108032, 0.526311, 0.843401,
		0.421118, 0.744266, -0.518389,
		-0.900549, 0.411174, -0.141235,
		41.426094, 35.346043, 34.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137760, 35.806114, 34.278030>,  <42.056477, 35.058220, 34.308277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137760, 35.806114, 34.278030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755341, 35.735672, 34.371796>,  <41.525887, 35.693405, 34.428055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755341, 35.735672, 34.371796>,  <42.137760, 35.806114, 34.278030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755341, 35.735672, 34.371796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048072, 0.694540, 0.717846,
		-0.289231, 0.697567, -0.655550,
		-0.956051, -0.176110, 0.234416,
		41.468525, 35.682838, 34.442120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743633, 36.501228, 34.351067>,  <42.137760, 35.806114, 34.278030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743633, 36.501228, 34.351067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516476, 36.238560, 34.549572>,  <41.380180, 36.080959, 34.668674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516476, 36.238560, 34.549572>,  <41.743633, 36.501228, 34.351067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516476, 36.238560, 34.549572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205305, 0.696872, 0.687182,
		-0.797084, 0.288364, -0.530569,
		-0.567897, -0.656670, 0.496263,
		41.346107, 36.041557, 34.698452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157299, 36.865200, 34.421860>,  <41.743633, 36.501228, 34.351067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157299, 36.865200, 34.421860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128159, 36.566471, 34.686268>,  <41.110676, 36.387234, 34.844913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128159, 36.566471, 34.686268>,  <41.157299, 36.865200, 34.421860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128159, 36.566471, 34.686268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083990, 0.665017, 0.742090,
		-0.993800, -0.001456, -0.111174,
		-0.072852, -0.746827, 0.661016,
		41.106304, 36.342422, 34.884571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577190, 37.009022, 34.734779>,  <41.157299, 36.865200, 34.421860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577190, 37.009022, 34.734779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780567, 36.772312, 34.984993>,  <40.902592, 36.630287, 35.135120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780567, 36.772312, 34.984993>,  <40.577190, 37.009022, 34.734779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780567, 36.772312, 34.984993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124646, 0.668207, 0.733460,
		-0.852026, -0.450892, 0.265983,
		0.508443, -0.591774, 0.625531,
		40.933102, 36.594780, 35.172653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187172, 37.119030, 35.428322>,  <40.577190, 37.009022, 34.734779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187172, 37.119030, 35.428322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556004, 36.980309, 35.497017>,  <40.777302, 36.897076, 35.538235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556004, 36.980309, 35.497017>,  <40.187172, 37.119030, 35.428322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556004, 36.980309, 35.497017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114863, 0.669031, 0.734305,
		-0.369555, -0.657363, 0.656736,
		0.922082, -0.346801, 0.171737,
		40.832626, 36.876266, 35.548538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209961, 37.297474, 36.106201>,  <40.187172, 37.119030, 35.428322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209961, 37.297474, 36.106201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591194, 37.217800, 36.015030>,  <40.819935, 37.169994, 35.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591194, 37.217800, 36.015030>,  <40.209961, 37.297474, 36.106201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591194, 37.217800, 36.015030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302333, 0.589559, 0.749009,
		-0.014816, -0.782780, 0.622122,
		0.953087, -0.199185, -0.227925,
		40.877121, 37.158043, 35.946651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560249, 37.274982, 36.747162>,  <40.209961, 37.297474, 36.106201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560249, 37.274982, 36.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882679, 37.255817, 36.511215>,  <41.076138, 37.244316, 36.369648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882679, 37.255817, 36.511215>,  <40.560249, 37.274982, 36.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882679, 37.255817, 36.511215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546030, 0.444602, 0.710057,
		0.228233, -0.894446, 0.384548,
		0.806078, -0.047916, -0.589867,
		41.124504, 37.241444, 36.334255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134785, 36.861141, 37.102486>,  <40.560249, 37.274982, 36.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134785, 36.861141, 37.102486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289364, 37.112869, 36.832787>,  <41.382111, 37.263905, 36.670967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289364, 37.112869, 36.832787>,  <41.134785, 36.861141, 37.102486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289364, 37.112869, 36.832787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509405, 0.463788, 0.724850,
		0.768871, -0.623585, -0.141348,
		0.386450, 0.629319, -0.674251,
		41.405300, 37.301666, 36.630512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898357, 36.851566, 37.148144>,  <41.134785, 36.861141, 37.102486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898357, 36.851566, 37.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774872, 37.203358, 37.003246>,  <41.700783, 37.414433, 36.916306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774872, 37.203358, 37.003246>,  <41.898357, 36.851566, 37.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774872, 37.203358, 37.003246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525520, 0.475151, 0.705734,
		0.792797, 0.027500, -0.608865,
		-0.308711, 0.879474, -0.362247,
		41.682259, 37.467201, 36.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521301, 37.171673, 37.057285>,  <41.898357, 36.851566, 37.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521301, 37.171673, 37.057285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233002, 37.447491, 37.085716>,  <42.060020, 37.612980, 37.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233002, 37.447491, 37.085716>,  <42.521301, 37.171673, 37.057285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233002, 37.447491, 37.085716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529759, 0.481779, 0.698029,
		0.447077, 0.540758, -0.712533,
		-0.720748, 0.689543, 0.071080,
		42.016777, 37.654354, 37.107040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801918, 37.854332, 37.043682>,  <42.521301, 37.171673, 37.057285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801918, 37.854332, 37.043682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442066, 37.940556, 37.195576>,  <42.226154, 37.992290, 37.286713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442066, 37.940556, 37.195576>,  <42.801918, 37.854332, 37.043682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442066, 37.940556, 37.195576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430797, 0.580048, 0.691345,
		-0.071235, 0.785543, -0.614693,
		-0.899633, 0.215560, 0.379730,
		42.172176, 38.005222, 37.309494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896355, 38.477287, 37.417282>,  <42.801918, 37.854332, 37.043682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896355, 38.477287, 37.417282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534988, 38.370773, 37.551704>,  <42.318169, 38.306866, 37.632359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534988, 38.370773, 37.551704>,  <42.896355, 38.477287, 37.417282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534988, 38.370773, 37.551704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174476, 0.487632, 0.855438,
		-0.391664, 0.831448, -0.394073,
		-0.903414, -0.266288, 0.336055,
		42.263966, 38.290886, 37.652519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661747, 39.083519, 37.598637>,  <42.896355, 38.477287, 37.417282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661747, 39.083519, 37.598637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462227, 38.802071, 37.801071>,  <42.342514, 38.633202, 37.922531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462227, 38.802071, 37.801071>,  <42.661747, 39.083519, 37.598637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462227, 38.802071, 37.801071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244128, 0.446208, 0.860988,
		-0.831623, 0.553012, -0.050797,
		-0.498803, -0.703616, 0.506083,
		42.312588, 38.590984, 37.952896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205673, 39.482685, 37.988941>,  <42.661747, 39.083519, 37.598637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205673, 39.482685, 37.988941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283379, 39.137417, 38.175362>,  <42.330002, 38.930256, 38.287216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283379, 39.137417, 38.175362>,  <42.205673, 39.482685, 37.988941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283379, 39.137417, 38.175362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164319, 0.497025, 0.852036,
		-0.967089, -0.088939, 0.238389,
		0.194264, -0.863166, 0.466053,
		42.341660, 38.878468, 38.315178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798073, 39.364586, 38.563438>,  <42.205673, 39.482685, 37.988941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798073, 39.364586, 38.563438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130486, 39.172035, 38.674908>,  <42.329933, 39.056503, 38.741791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130486, 39.172035, 38.674908>,  <41.798073, 39.364586, 38.563438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130486, 39.172035, 38.674908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120735, 0.645184, 0.754427,
		-0.542962, -0.593308, 0.594288,
		0.831033, -0.481377, 0.278678,
		42.379795, 39.027622, 38.758511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811668, 39.426113, 39.247215>,  <41.798073, 39.364586, 38.563438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811668, 39.426113, 39.247215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190929, 39.352226, 39.143764>,  <42.418484, 39.307892, 39.081692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190929, 39.352226, 39.143764>,  <41.811668, 39.426113, 39.247215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190929, 39.352226, 39.143764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317361, 0.594080, 0.739156,
		0.017109, -0.782910, 0.621900,
		0.948151, -0.184721, -0.258629,
		42.475376, 39.296810, 39.066177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253700, 39.169830, 39.890785>,  <41.811668, 39.426113, 39.247215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253700, 39.169830, 39.890785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498817, 39.346127, 39.628414>,  <42.645885, 39.451904, 39.470993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498817, 39.346127, 39.628414>,  <42.253700, 39.169830, 39.890785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498817, 39.346127, 39.628414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390972, 0.552238, 0.736325,
		0.686754, -0.707660, 0.166089,
		0.612788, 0.440738, -0.655927,
		42.682655, 39.478348, 39.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855625, 39.148438, 40.264038>,  <42.253700, 39.169830, 39.890785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855625, 39.148438, 40.264038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942951, 39.413528, 39.977505>,  <42.995346, 39.572582, 39.805584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942951, 39.413528, 39.977505>,  <42.855625, 39.148438, 40.264038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942951, 39.413528, 39.977505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396970, 0.610254, 0.685569,
		0.891489, -0.434034, -0.129854,
		0.218316, 0.662725, -0.716333,
		43.008446, 39.612347, 39.762604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495316, 39.332729, 40.464485>,  <42.855625, 39.148438, 40.264038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495316, 39.332729, 40.464485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356850, 39.625530, 40.229763>,  <43.273769, 39.801208, 40.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356850, 39.625530, 40.229763>,  <43.495316, 39.332729, 40.464485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356850, 39.625530, 40.229763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233135, 0.672979, 0.701960,
		0.908744, 0.106191, -0.403619,
		-0.346169, 0.731999, -0.586808,
		43.252998, 39.845131, 40.053719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930714, 39.896267, 40.593033>,  <43.495316, 39.332729, 40.464485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930714, 39.896267, 40.593033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622940, 40.089874, 40.426323>,  <43.438278, 40.206039, 40.326298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622940, 40.089874, 40.426323>,  <43.930714, 39.896267, 40.593033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622940, 40.089874, 40.426323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201438, 0.803088, 0.560779,
		0.606136, 0.347526, -0.715420,
		-0.769430, 0.484021, -0.416775,
		43.392113, 40.235081, 40.301289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155815, 40.565266, 40.489952>,  <43.930714, 39.896267, 40.593033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155815, 40.565266, 40.489952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756809, 40.593365, 40.487659>,  <43.517406, 40.610226, 40.486282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756809, 40.593365, 40.487659>,  <44.155815, 40.565266, 40.489952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756809, 40.593365, 40.487659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052222, 0.791270, 0.609233,
		0.047338, 0.607418, -0.792970,
		-0.997513, 0.070250, -0.005736,
		43.457554, 40.614441, 40.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011898, 41.286472, 40.477673>,  <44.155815, 40.565266, 40.489952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011898, 41.286472, 40.477673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670036, 41.121994, 40.604469>,  <43.464920, 41.023308, 40.680546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670036, 41.121994, 40.604469>,  <44.011898, 41.286472, 40.477673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670036, 41.121994, 40.604469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141121, 0.771537, 0.620335,
		-0.499648, 0.485439, -0.717427,
		-0.854656, -0.411193, 0.316991,
		43.413639, 40.998634, 40.699566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620380, 41.863533, 40.397488>,  <44.011898, 41.286472, 40.477673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620380, 41.863533, 40.397488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515083, 41.607540, 40.686245>,  <43.451904, 41.453945, 40.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515083, 41.607540, 40.686245>,  <43.620380, 41.863533, 40.397488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515083, 41.607540, 40.686245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111030, 0.763411, 0.636298,
		-0.958319, 0.087349, -0.272019,
		-0.263242, -0.639979, 0.721893,
		43.436111, 41.415546, 40.902813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131611, 41.953243, 41.002289>,  <43.620380, 41.863533, 40.397488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131611, 41.953243, 41.002289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824993, 41.922279, 41.257294>,  <42.641022, 41.903702, 41.410297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824993, 41.922279, 41.257294>,  <43.131611, 41.953243, 41.002289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824993, 41.922279, 41.257294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638085, -0.203890, 0.742480,
		0.072503, 0.975928, 0.205688,
		-0.766545, -0.077414, 0.637508,
		42.595028, 41.899055, 41.448547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275906, 42.571224, 41.408413>,  <43.131611, 41.953243, 41.002289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275906, 42.571224, 41.408413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249187, 42.454273, 41.790001>,  <43.233154, 42.384102, 42.018951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249187, 42.454273, 41.790001>,  <43.275906, 42.571224, 41.408413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249187, 42.454273, 41.790001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104788, -0.948760, -0.298118,
		0.992249, -0.119878, 0.032737,
		-0.066798, -0.292376, 0.953967,
		43.229149, 42.366562, 42.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944603, 42.189339, 41.508553>,  <43.275906, 42.571224, 41.408413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944603, 42.189339, 41.508553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599304, 42.124413, 41.699741>,  <43.392124, 42.085457, 41.814457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599304, 42.124413, 41.699741>,  <43.944603, 42.189339, 41.508553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599304, 42.124413, 41.699741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028329, -0.929822, -0.366918,
		0.503987, -0.330281, 0.798067,
		-0.863247, -0.162314, 0.477975,
		43.340332, 42.075718, 41.843132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950802, 41.453190, 41.769043>,  <43.944603, 42.189339, 41.508553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950802, 41.453190, 41.769043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570820, 41.571499, 41.728848>,  <43.342831, 41.642483, 41.704731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570820, 41.571499, 41.728848>,  <43.950802, 41.453190, 41.769043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570820, 41.571499, 41.728848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255190, -0.920336, -0.296412,
		-0.180156, -0.255934, 0.949759,
		-0.949959, 0.295769, -0.100492,
		43.285831, 41.660229, 41.698700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497589, 40.813828, 41.912125>,  <43.950802, 41.453190, 41.769043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497589, 40.813828, 41.912125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276417, 41.060265, 41.687737>,  <43.143715, 41.208126, 41.553104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276417, 41.060265, 41.687737>,  <43.497589, 40.813828, 41.912125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276417, 41.060265, 41.687737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303612, -0.775943, -0.552930,
		-0.775943, -0.135413, 0.616097,
		0.552930, -0.616097, 0.560974,
		43.110538, 41.245094, 41.519444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921757, 40.447132, 41.608212>,  <43.497589, 40.813828, 41.912125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921757, 40.447132, 41.608212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937836, 40.774837, 41.379410>,  <42.947483, 40.971462, 41.242130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937836, 40.774837, 41.379410>,  <42.921757, 40.447132, 41.608212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937836, 40.774837, 41.379410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009533, -0.572754, -0.819672,
		-0.999146, 0.027495, -0.030833,
		0.040197, 0.819266, -0.572003,
		42.949894, 41.020618, 41.207809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354385, 40.392994, 41.056255>,  <42.921757, 40.447132, 41.608212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354385, 40.392994, 41.056255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666393, 40.610619, 40.932602>,  <42.853600, 40.741192, 40.858410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666393, 40.610619, 40.932602>,  <42.354385, 40.392994, 41.056255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666393, 40.610619, 40.932602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019883, -0.515319, -0.856768,
		-0.625438, 0.662150, -0.412777,
		0.780021, 0.544062, -0.309134,
		42.900398, 40.773838, 40.839863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187485, 40.569141, 40.384659>,  <42.354385, 40.392994, 41.056255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187485, 40.569141, 40.384659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581234, 40.633766, 40.412678>,  <42.817482, 40.672543, 40.429489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581234, 40.633766, 40.412678>,  <42.187485, 40.569141, 40.384659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581234, 40.633766, 40.412678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146073, -0.527015, -0.837208,
		-0.098350, 0.834357, -0.542380,
		0.984373, 0.161566, 0.070045,
		42.876545, 40.682236, 40.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409988, 40.915241, 39.772884>,  <42.187485, 40.569141, 40.384659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409988, 40.915241, 39.772884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702709, 40.703499, 39.944584>,  <42.878342, 40.576454, 40.047604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702709, 40.703499, 39.944584>,  <42.409988, 40.915241, 39.772884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702709, 40.703499, 39.944584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023070, -0.648722, -0.760675,
		0.681130, 0.546758, -0.486946,
		0.731799, -0.529353, 0.429251,
		42.922249, 40.544693, 40.073360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678646, 40.653210, 39.252422>,  <42.409988, 40.915241, 39.772884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678646, 40.653210, 39.252422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883919, 40.469959, 39.542736>,  <43.007084, 40.360008, 39.716923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883919, 40.469959, 39.542736>,  <42.678646, 40.653210, 39.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883919, 40.469959, 39.542736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220650, -0.746782, -0.627400,
		0.829433, 0.482114, -0.282147,
		0.513181, -0.458130, 0.725784,
		43.037872, 40.332520, 39.760471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235882, 40.576118, 38.916355>,  <42.678646, 40.653210, 39.252422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235882, 40.576118, 38.916355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187050, 40.278820, 39.179470>,  <43.157749, 40.100441, 39.337337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187050, 40.278820, 39.179470>,  <43.235882, 40.576118, 38.916355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187050, 40.278820, 39.179470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041014, -0.658398, -0.751552,
		0.991672, -0.118728, 0.049894,
		-0.122080, -0.743247, 0.657784,
		43.150425, 40.055847, 39.376804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659859, 39.948055, 38.771667>,  <43.235882, 40.576118, 38.916355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659859, 39.948055, 38.771667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350513, 39.785873, 38.966610>,  <43.164906, 39.688564, 39.083576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350513, 39.785873, 38.966610>,  <43.659859, 39.948055, 38.771667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350513, 39.785873, 38.966610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123548, -0.657613, -0.743156,
		0.621803, -0.634944, 0.458483,
		-0.773367, -0.405452, 0.487352,
		43.118504, 39.664238, 39.112816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739296, 39.251919, 38.792137>,  <43.659859, 39.948055, 38.771667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739296, 39.251919, 38.792137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345966, 39.294952, 38.850784>,  <43.109966, 39.320770, 38.885971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345966, 39.294952, 38.850784>,  <43.739296, 39.251919, 38.792137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345966, 39.294952, 38.850784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181847, -0.586888, -0.788983,
		0.001166, -0.802489, 0.596666,
		-0.983326, 0.107582, 0.146614,
		43.050968, 39.327229, 38.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570400, 38.578766, 38.834824>,  <43.739296, 39.251919, 38.792137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570400, 38.578766, 38.834824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227486, 38.759758, 38.736580>,  <43.021736, 38.868355, 38.677635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227486, 38.759758, 38.736580>,  <43.570400, 38.578766, 38.834824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227486, 38.759758, 38.736580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265442, -0.797223, -0.542196,
		-0.441138, -0.399621, 0.803555,
		-0.857285, 0.452480, -0.245609,
		42.970299, 38.895504, 38.662899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062496, 38.121117, 38.816425>,  <43.570400, 38.578766, 38.834824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062496, 38.121117, 38.816425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906837, 38.413040, 38.591591>,  <42.813442, 38.588196, 38.456688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906837, 38.413040, 38.591591>,  <43.062496, 38.121117, 38.816425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906837, 38.413040, 38.591591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385928, -0.683218, -0.619897,
		-0.836436, -0.024304, 0.547525,
		-0.389145, 0.729810, -0.562089,
		42.790092, 38.631985, 38.422966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576859, 37.694427, 38.670334>,  <43.062496, 38.121117, 38.816425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576859, 37.694427, 38.670334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611454, 38.024731, 38.447392>,  <42.632210, 38.222912, 38.313625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611454, 38.024731, 38.447392>,  <42.576859, 37.694427, 38.670334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611454, 38.024731, 38.447392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418435, -0.477610, -0.772529,
		-0.904120, 0.300032, 0.304217,
		0.086486, 0.825754, -0.557360,
		42.637402, 38.272457, 38.280182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920197, 37.872269, 38.346588>,  <42.576859, 37.694427, 38.670334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920197, 37.872269, 38.346588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242825, 37.993477, 38.143559>,  <42.436401, 38.066204, 38.021740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242825, 37.993477, 38.143559>,  <41.920197, 37.872269, 38.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242825, 37.993477, 38.143559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312523, -0.510239, -0.801240,
		-0.501778, 0.804880, -0.316839,
		0.806566, 0.303024, -0.507571,
		42.484795, 38.084385, 37.991287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189190, 38.037457, 38.280190>,  <41.920197, 37.872269, 38.346588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189190, 38.037457, 38.280190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480019, 38.189789, 38.051689>,  <41.654518, 38.281189, 37.914589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480019, 38.189789, 38.051689>,  <41.189190, 38.037457, 38.280190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480019, 38.189789, 38.051689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407702, -0.429960, -0.805552,
		-0.552396, 0.818597, -0.157346,
		0.727075, 0.380833, -0.571252,
		41.698139, 38.304039, 37.880314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966976, 38.355137, 37.685310>,  <41.189190, 38.037457, 38.280190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966976, 38.355137, 37.685310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333031, 38.263214, 37.552818>,  <41.552666, 38.208061, 37.473324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333031, 38.263214, 37.552818>,  <40.966976, 38.355137, 37.685310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333031, 38.263214, 37.552818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391550, -0.311078, -0.865979,
		0.095970, 0.922182, -0.374660,
		0.915139, -0.229806, -0.331226,
		41.607571, 38.194271, 37.453449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984497, 38.479454, 37.002972>,  <40.966976, 38.355137, 37.685310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984497, 38.479454, 37.002972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300659, 38.241432, 37.061188>,  <41.490356, 38.098621, 37.096115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300659, 38.241432, 37.061188>,  <40.984497, 38.479454, 37.002972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300659, 38.241432, 37.061188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188182, -0.461941, -0.866717,
		0.582970, 0.657666, -0.477096,
		0.790401, -0.595051, 0.145537,
		41.537781, 38.062916, 37.104847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489189, 38.551544, 36.334198>,  <40.984497, 38.479454, 37.002972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489189, 38.551544, 36.334198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549957, 38.212528, 36.537609>,  <41.586418, 38.009121, 36.659657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549957, 38.212528, 36.537609>,  <41.489189, 38.551544, 36.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549957, 38.212528, 36.537609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344196, -0.527663, -0.776596,
		0.926525, -0.057053, -0.371882,
		0.151922, -0.847536, 0.508530,
		41.595535, 37.958267, 36.690166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929932, 38.165035, 35.771744>,  <41.489189, 38.551544, 36.334198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929932, 38.165035, 35.771744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770828, 37.897667, 36.023144>,  <41.675365, 37.737247, 36.173985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770828, 37.897667, 36.023144>,  <41.929932, 38.165035, 35.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770828, 37.897667, 36.023144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012360, -0.681051, -0.732132,
		0.917408, -0.298978, 0.262630,
		-0.397756, -0.668417, 0.628497,
		41.651501, 37.697144, 36.211693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332653, 37.475201, 35.800529>,  <41.929932, 38.165035, 35.771744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332653, 37.475201, 35.800529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941502, 37.432865, 35.872692>,  <41.706810, 37.407463, 35.915989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941502, 37.432865, 35.872692>,  <42.332653, 37.475201, 35.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941502, 37.432865, 35.872692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043932, -0.739353, -0.671883,
		0.204490, -0.664948, 0.718351,
		-0.977882, -0.105835, 0.180403,
		41.648136, 37.401115, 35.926811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063618, 36.949711, 35.319767>,  <42.332653, 37.475201, 35.800529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063618, 36.949711, 35.319767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750187, 36.981087, 35.566299>,  <41.562130, 36.999912, 35.714218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750187, 36.981087, 35.566299>,  <42.063618, 36.949711, 35.319767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750187, 36.981087, 35.566299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337483, -0.886627, -0.316224,
		0.521648, -0.455785, 0.721210,
		-0.783574, 0.078439, 0.616327,
		41.515114, 37.004620, 35.751198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976715, 36.372887, 35.878986>,  <42.063618, 36.949711, 35.319767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976715, 36.372887, 35.878986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617870, 36.525322, 35.789574>,  <41.402565, 36.616783, 35.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617870, 36.525322, 35.789574>,  <41.976715, 36.372887, 35.878986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617870, 36.525322, 35.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249094, -0.854150, -0.456487,
		-0.364892, -0.353838, 0.861192,
		-0.897110, 0.381087, -0.223534,
		41.348736, 36.639648, 35.722515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505592, 35.860661, 36.032722>,  <41.976715, 36.372887, 35.878986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505592, 35.860661, 36.032722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333420, 36.096020, 35.758930>,  <41.230114, 36.237236, 35.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333420, 36.096020, 35.758930>,  <41.505592, 35.860661, 36.032722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333420, 36.096020, 35.758930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167502, -0.797222, -0.579983,
		-0.886944, -0.134993, 0.441709,
		-0.430434, 0.588399, -0.684480,
		41.204288, 36.272541, 35.553585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927849, 35.546497, 35.423935>,  <41.505592, 35.860661, 36.032722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927849, 35.546497, 35.423935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035530, 35.840542, 35.175053>,  <42.100140, 36.016968, 35.025723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035530, 35.840542, 35.175053>,  <41.927849, 35.546497, 35.423935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035530, 35.840542, 35.175053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675196, 0.316635, 0.666222,
		0.686760, -0.599460, -0.411106,
		0.269203, 0.735112, -0.622205,
		42.116291, 36.061077, 34.988392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701099, 35.497116, 35.318909>,  <41.927849, 35.546497, 35.423935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701099, 35.497116, 35.318909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541237, 35.862328, 35.286285>,  <42.445320, 36.081455, 35.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541237, 35.862328, 35.286285>,  <42.701099, 35.497116, 35.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541237, 35.862328, 35.286285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584149, 0.322244, 0.744935,
		0.706430, 0.250074, -0.662132,
		-0.399658, 0.913029, -0.081563,
		42.421341, 36.136238, 35.261818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258324, 35.938679, 35.142334>,  <42.701099, 35.497116, 35.318909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258324, 35.938679, 35.142334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972546, 36.134426, 35.342369>,  <42.801079, 36.251873, 35.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972546, 36.134426, 35.342369>,  <43.258324, 35.938679, 35.142334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972546, 36.134426, 35.342369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659734, 0.233069, 0.714444,
		0.233069, 0.840356, -0.489367,
		-0.714444, 0.489367, 0.500090,
		42.758213, 36.281235, 35.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518620, 36.544964, 35.423622>,  <43.258324, 35.938679, 35.142334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518620, 36.544964, 35.423622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189476, 36.469437, 35.638008>,  <42.991989, 36.424122, 35.766640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189476, 36.469437, 35.638008>,  <43.518620, 36.544964, 35.423622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189476, 36.469437, 35.638008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541614, 0.024771, 0.840262,
		-0.171933, 0.981700, 0.081884,
		-0.822856, -0.188818, 0.535962,
		42.942619, 36.412792, 35.798798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337341, 37.111961, 35.907700>,  <43.518620, 36.544964, 35.423622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337341, 37.111961, 35.907700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271202, 36.729553, 36.004608>,  <43.231518, 36.500111, 36.062752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271202, 36.729553, 36.004608>,  <43.337341, 37.111961, 35.907700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271202, 36.729553, 36.004608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773519, 0.026684, 0.633211,
		-0.611825, 0.292097, 0.735085,
		-0.165344, -0.956016, 0.242268,
		43.221600, 36.442749, 36.077290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170513, 37.203770, 36.597187>,  <43.337341, 37.111961, 35.907700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170513, 37.203770, 36.597187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350742, 36.878803, 36.449154>,  <43.458881, 36.683823, 36.360332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350742, 36.878803, 36.449154>,  <43.170513, 37.203770, 36.597187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350742, 36.878803, 36.449154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796820, 0.179047, 0.577079,
		-0.402564, -0.554910, 0.728022,
		0.450577, -0.812414, -0.370085,
		43.485916, 36.635078, 36.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554970, 36.986130, 37.143967>,  <43.170513, 37.203770, 36.597187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554970, 36.986130, 37.143967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692501, 36.749794, 36.852024>,  <43.775021, 36.607990, 36.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692501, 36.749794, 36.852024>,  <43.554970, 36.986130, 37.143967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692501, 36.749794, 36.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897595, -0.021543, 0.440294,
		-0.275868, -0.806499, 0.522931,
		0.343831, -0.590843, -0.729853,
		43.795650, 36.572540, 36.633068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596619, 37.047523, 37.841175>,  <43.554970, 36.986130, 37.143967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596619, 37.047523, 37.841175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974396, 37.142250, 37.750008>,  <44.201061, 37.199085, 37.695309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974396, 37.142250, 37.750008>,  <43.596619, 37.047523, 37.841175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974396, 37.142250, 37.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235782, 0.005033, -0.971793,
		-0.228992, 0.971541, 0.060591,
		0.944441, 0.236819, -0.227920,
		44.257729, 37.213295, 37.681633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647667, 36.351704, 37.583920>,  <43.596619, 37.047523, 37.841175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647667, 36.351704, 37.583920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559429, 35.979118, 37.468189>,  <43.506485, 35.755566, 37.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559429, 35.979118, 37.468189>,  <43.647667, 36.351704, 37.583920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559429, 35.979118, 37.468189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803316, -0.341744, 0.487743,
		-0.553191, -0.124825, 0.823649,
		-0.220594, -0.931467, -0.289324,
		43.493252, 35.699677, 37.381393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072483, 36.087124, 38.127720>,  <43.647667, 36.351704, 37.583920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072483, 36.087124, 38.127720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014713, 35.837864, 37.820259>,  <43.980049, 35.688309, 37.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014713, 35.837864, 37.820259>,  <44.072483, 36.087124, 38.127720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014713, 35.837864, 37.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825081, -0.504656, 0.254092,
		-0.546242, -0.597505, 0.587033,
		-0.144429, -0.623146, -0.768654,
		43.971386, 35.650921, 37.589664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214577, 35.418358, 38.373684>,  <44.072483, 36.087124, 38.127720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214577, 35.418358, 38.373684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303085, 35.466999, 37.986645>,  <44.356190, 35.496185, 37.754421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303085, 35.466999, 37.986645>,  <44.214577, 35.418358, 38.373684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303085, 35.466999, 37.986645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891058, -0.428414, 0.149925,
		-0.396302, -0.895362, -0.203152,
		0.221270, 0.121604, -0.967601,
		44.369465, 35.503479, 37.696365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417255, 34.722183, 37.960781>,  <44.214577, 35.418358, 38.373684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417255, 34.722183, 37.960781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576900, 35.043358, 37.783691>,  <44.672688, 35.236061, 37.677437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576900, 35.043358, 37.783691>,  <44.417255, 34.722183, 37.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576900, 35.043358, 37.783691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909211, -0.408984, 0.077899,
		-0.118522, -0.433624, -0.893265,
		0.399110, 0.802934, -0.442729,
		44.696632, 35.284237, 37.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080673, 34.560116, 38.138969>,  <44.417255, 34.722183, 37.960781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080673, 34.560116, 38.138969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041508, 34.862377, 37.879925>,  <45.018009, 35.043732, 37.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041508, 34.862377, 37.879925>,  <45.080673, 34.560116, 38.138969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041508, 34.862377, 37.879925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989228, 0.002744, -0.146360,
		-0.108820, -0.654968, -0.747780,
		-0.097913, 0.755652, -0.647614,
		45.012135, 35.089073, 37.685642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461830, 34.328979, 37.573540>,  <45.080673, 34.560116, 38.138969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461830, 34.328979, 37.573540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423729, 34.724720, 37.617561>,  <45.400867, 34.962166, 37.643974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423729, 34.724720, 37.617561>,  <45.461830, 34.328979, 37.573540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423729, 34.724720, 37.617561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991922, 0.103638, -0.073149,
		-0.083776, 0.102200, -0.991230,
		-0.095253, 0.989350, 0.110056,
		45.395153, 35.021526, 37.650578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742256, 34.725086, 36.978844>,  <45.461830, 34.328979, 37.573540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742256, 34.725086, 36.978844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753242, 34.941082, 37.315334>,  <45.759834, 35.070679, 37.517227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753242, 34.941082, 37.315334>,  <45.742256, 34.725086, 36.978844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753242, 34.941082, 37.315334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966429, 0.200718, -0.160397,
		-0.255461, 0.817391, -0.516344,
		0.027468, 0.539985, 0.841226,
		45.761482, 35.103077, 37.567703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632053, 34.012646, 36.597572>,  <45.742256, 34.725086, 36.978844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632053, 34.012646, 36.597572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970928, 34.070065, 36.802185>,  <46.174255, 34.104515, 36.924953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970928, 34.070065, 36.802185>,  <45.632053, 34.012646, 36.597572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970928, 34.070065, 36.802185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527708, -0.115735, -0.841504,
		-0.061594, 0.982853, -0.173800,
		0.847190, 0.143547, 0.511531,
		46.225086, 34.113129, 36.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945236, 34.558971, 36.302685>,  <45.632053, 34.012646, 36.597572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945236, 34.558971, 36.302685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233299, 34.308437, 36.422070>,  <46.406136, 34.158115, 36.493698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233299, 34.308437, 36.422070>,  <45.945236, 34.558971, 36.302685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233299, 34.308437, 36.422070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481240, 0.141059, -0.865165,
		0.499785, 0.766684, 0.403002,
		0.720155, -0.626337, 0.298460,
		46.449345, 34.120537, 36.511608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780449, 34.612953, 36.164017>,  <45.945236, 34.558971, 36.302685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780449, 34.612953, 36.164017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544140, 34.727234, 35.862194>,  <46.402355, 34.795803, 35.681099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544140, 34.727234, 35.862194>,  <46.780449, 34.612953, 36.164017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544140, 34.727234, 35.862194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709647, -0.260992, -0.654434,
		-0.383907, -0.922094, -0.048560,
		-0.590776, 0.285703, -0.754558,
		46.366905, 34.812946, 35.635826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915455, 34.125679, 35.593082>,  <46.780449, 34.612953, 36.164017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915455, 34.125679, 35.593082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750271, 34.460342, 35.449158>,  <46.651161, 34.661140, 35.362804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.750271, 34.460342, 35.449158>,  <46.915455, 34.125679, 35.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.750271, 34.460342, 35.449158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838803, 0.195497, -0.508124,
		-0.354786, -0.511644, -0.782526,
		-0.412960, 0.836661, -0.359809,
		46.626381, 34.711342, 35.341213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100616, 34.183376, 34.886703>,  <46.915455, 34.125679, 35.593082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100616, 34.183376, 34.886703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036663, 34.554958, 35.020260>,  <46.998291, 34.777908, 35.100395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036663, 34.554958, 35.020260>,  <47.100616, 34.183376, 34.886703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.036663, 34.554958, 35.020260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857593, 0.298221, -0.419044,
		-0.488846, 0.219345, -0.844344,
		-0.159886, 0.928952, 0.333893,
		46.988697, 34.833645, 35.120426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785683, 34.347248, 34.772942>,  <47.100616, 34.183376, 34.886703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785683, 34.347248, 34.772942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603825, 34.677273, 34.907146>,  <47.494709, 34.875290, 34.987671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603825, 34.677273, 34.907146>,  <47.785683, 34.347248, 34.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603825, 34.677273, 34.907146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836490, 0.524914, -0.157320,
		-0.305915, 0.209130, -0.928806,
		-0.454643, 0.825064, 0.335514,
		47.467430, 34.924793, 35.007801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.189415, 28.242126, 28.774328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799278, 28.268244, 28.689999>,  <39.565197, 28.283915, 28.639400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.799278, 28.268244, 28.689999>,  <40.189415, 28.242126, 28.774328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799278, 28.268244, 28.689999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079381, 0.787531, 0.611141,
		0.205933, 0.612806, -0.762928,
		-0.975341, 0.065292, -0.210824,
		39.506676, 28.287832, 28.626751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017212, 28.875099, 28.525551>,  <40.189415, 28.242126, 28.774328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017212, 28.875099, 28.525551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675629, 28.752943, 28.694071>,  <39.470680, 28.679649, 28.795183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675629, 28.752943, 28.694071>,  <40.017212, 28.875099, 28.525551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675629, 28.752943, 28.694071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013722, 0.822596, 0.568461,
		-0.520163, 0.479660, -0.706652,
		-0.853957, -0.305389, 0.421302,
		39.419441, 28.661325, 28.820461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793831, 29.475164, 28.821428>,  <40.017212, 28.875099, 28.525551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793831, 29.475164, 28.821428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517357, 29.220636, 28.958464>,  <39.351475, 29.067921, 29.040686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517357, 29.220636, 28.958464>,  <39.793831, 29.475164, 28.821428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517357, 29.220636, 28.958464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242495, 0.650779, 0.719502,
		-0.680783, 0.414229, -0.604109,
		-0.691180, -0.636318, 0.342591,
		39.310001, 29.029741, 29.061241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105137, 29.820127, 28.706318>,  <39.793831, 29.475164, 28.821428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105137, 29.820127, 28.706318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070217, 29.551121, 29.000282>,  <39.049263, 29.389717, 29.176661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.070217, 29.551121, 29.000282>,  <39.105137, 29.820127, 28.706318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070217, 29.551121, 29.000282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402343, 0.698687, 0.591572,
		-0.911317, -0.244041, -0.331581,
		-0.087303, -0.672519, 0.734913,
		39.044025, 29.349365, 29.220757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448608, 29.932020, 28.977467>,  <39.105137, 29.820127, 28.706318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448608, 29.932020, 28.977467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671200, 29.761652, 29.262821>,  <38.804756, 29.659431, 29.434034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.671200, 29.761652, 29.262821>,  <38.448608, 29.932020, 28.977467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671200, 29.761652, 29.262821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382257, 0.631100, 0.674976,
		-0.737703, -0.648309, 0.188385,
		0.556483, -0.425920, 0.713385,
		38.838146, 29.633877, 29.476837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058071, 29.974932, 29.558517>,  <38.448608, 29.932020, 28.977467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058071, 29.974932, 29.558517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410225, 29.906023, 29.735264>,  <38.621517, 29.864677, 29.841311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.410225, 29.906023, 29.735264>,  <38.058071, 29.974932, 29.558517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410225, 29.906023, 29.735264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254148, 0.615247, 0.746244,
		-0.400414, -0.769281, 0.497871,
		0.880385, -0.172274, 0.441865,
		38.674339, 29.854342, 29.867823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934822, 29.646027, 30.264454>,  <38.058071, 29.974932, 29.558517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934822, 29.646027, 30.264454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294083, 29.821901, 30.263765>,  <38.509640, 29.927425, 30.263353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294083, 29.821901, 30.263765>,  <37.934822, 29.646027, 30.264454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294083, 29.821901, 30.263765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143373, 0.296564, 0.944190,
		0.415657, -0.847777, 0.329398,
		0.898150, 0.439686, -0.001720,
		38.563526, 29.953806, 30.263250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267990, 29.591305, 30.990871>,  <37.934822, 29.646027, 30.264454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267990, 29.591305, 30.990871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505219, 29.879894, 30.847906>,  <38.647556, 30.053047, 30.762127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505219, 29.879894, 30.847906>,  <38.267990, 29.591305, 30.990871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505219, 29.879894, 30.847906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037927, 0.418382, 0.907479,
		0.804255, -0.551757, 0.220767,
		0.593073, 0.721472, -0.357412,
		38.683140, 30.096336, 30.740683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753357, 29.694004, 31.553917>,  <38.267990, 29.591305, 30.990871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753357, 29.694004, 31.553917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773102, 30.029854, 31.337547>,  <38.784950, 30.231363, 31.207726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773102, 30.029854, 31.337547>,  <38.753357, 29.694004, 31.553917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773102, 30.029854, 31.337547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121658, 0.532495, 0.837644,
		0.991344, -0.107155, -0.075862,
		0.049361, 0.839623, -0.540922,
		38.787910, 30.281740, 31.175270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187389, 30.127192, 31.885309>,  <38.753357, 29.694004, 31.553917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187389, 30.127192, 31.885309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990654, 30.389830, 31.656582>,  <38.872612, 30.547413, 31.519346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990654, 30.389830, 31.656582>,  <39.187389, 30.127192, 31.885309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990654, 30.389830, 31.656582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122364, 0.702351, 0.701234,
		0.862045, 0.274924, -0.425787,
		-0.491838, 0.656597, -0.571818,
		38.843102, 30.586809, 31.485037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572159, 30.683662, 31.936762>,  <39.187389, 30.127192, 31.885309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572159, 30.683662, 31.936762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214802, 30.828629, 31.830557>,  <39.000385, 30.915609, 31.766834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214802, 30.828629, 31.830557>,  <39.572159, 30.683662, 31.936762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214802, 30.828629, 31.830557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028035, 0.634807, 0.772162,
		0.448392, 0.682404, -0.577295,
		-0.893397, 0.362416, -0.265511,
		38.946781, 30.937353, 31.750904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663277, 31.417580, 32.007942>,  <39.572159, 30.683662, 31.936762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663277, 31.417580, 32.007942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265003, 31.382957, 32.021366>,  <39.026039, 31.362185, 32.029423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265003, 31.382957, 32.021366>,  <39.663277, 31.417580, 32.007942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265003, 31.382957, 32.021366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026627, 0.612605, 0.789941,
		-0.088936, 0.785635, -0.612264,
		-0.995681, -0.086556, 0.033563,
		38.966297, 31.356991, 32.031437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402637, 32.102032, 32.089275>,  <39.663277, 31.417580, 32.007942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402637, 32.102032, 32.089275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046505, 31.931440, 32.153057>,  <38.832825, 31.829084, 32.191326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046505, 31.931440, 32.153057>,  <39.402637, 32.102032, 32.089275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046505, 31.931440, 32.153057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150771, 0.606604, 0.780576,
		-0.429627, 0.670930, -0.604379,
		-0.890331, -0.426480, 0.159457,
		38.779408, 31.803497, 32.200893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937572, 32.702690, 32.147598>,  <39.402637, 32.102032, 32.089275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937572, 32.702690, 32.147598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780895, 32.380909, 32.326229>,  <38.686890, 32.187840, 32.433407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780895, 32.380909, 32.326229>,  <38.937572, 32.702690, 32.147598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780895, 32.380909, 32.326229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395042, 0.585383, 0.708003,
		-0.830974, 0.100903, -0.547083,
		-0.391693, -0.804453, 0.446578,
		38.663387, 32.139572, 32.460201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140194, 32.816109, 32.189518>,  <38.937572, 32.702690, 32.147598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140194, 32.816109, 32.189518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284748, 32.563862, 32.464249>,  <38.371479, 32.412514, 32.629086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284748, 32.563862, 32.464249>,  <38.140194, 32.816109, 32.189518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284748, 32.563862, 32.464249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122670, 0.698047, 0.705466,
		-0.924313, -0.339196, 0.174905,
		0.361383, -0.630615, 0.686823,
		38.393162, 32.374676, 32.670296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676849, 32.795952, 32.763889>,  <38.140194, 32.816109, 32.189518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676849, 32.795952, 32.763889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028400, 32.669342, 32.906654>,  <38.239330, 32.593376, 32.992313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028400, 32.669342, 32.906654>,  <37.676849, 32.795952, 32.763889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028400, 32.669342, 32.906654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106558, 0.599010, 0.793620,
		-0.464999, -0.735525, 0.492727,
		0.878875, -0.316528, 0.356915,
		38.292065, 32.574383, 33.013729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583900, 33.022514, 33.394295>,  <37.676849, 32.795952, 32.763889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583900, 33.022514, 33.394295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971283, 32.924305, 33.411278>,  <38.203712, 32.865379, 33.421467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.971283, 32.924305, 33.411278>,  <37.583900, 33.022514, 33.394295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971283, 32.924305, 33.411278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130963, 0.646524, 0.751569,
		-0.211977, -0.722304, 0.658287,
		0.968460, -0.245527, 0.042453,
		38.261822, 32.850647, 33.424015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785378, 32.879154, 34.050766>,  <37.583900, 33.022514, 33.394295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785378, 32.879154, 34.050766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126957, 32.996414, 33.878796>,  <38.331905, 33.066772, 33.775616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.126957, 32.996414, 33.878796>,  <37.785378, 32.879154, 34.050766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126957, 32.996414, 33.878796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217641, 0.549253, 0.806817,
		0.472654, -0.782550, 0.405233,
		0.853950, 0.293150, -0.429921,
		38.383141, 33.084358, 33.749821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313614, 32.876057, 34.630222>,  <37.785378, 32.879154, 34.050766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313614, 32.876057, 34.630222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449707, 33.102314, 34.329746>,  <38.531361, 33.238068, 34.149460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449707, 33.102314, 34.329746>,  <38.313614, 32.876057, 34.630222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449707, 33.102314, 34.329746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368486, 0.654765, 0.659926,
		0.865137, -0.501331, 0.014340,
		0.340231, 0.565642, -0.751194,
		38.551777, 33.272007, 34.104389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056534, 33.025867, 34.853146>,  <38.313614, 32.876057, 34.630222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056534, 33.025867, 34.853146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939430, 33.300285, 34.586723>,  <38.869167, 33.464935, 34.426872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939430, 33.300285, 34.586723>,  <39.056534, 33.025867, 34.853146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939430, 33.300285, 34.586723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536855, 0.694355, 0.479227,
		0.791250, -0.217274, -0.571590,
		-0.292763, 0.686049, -0.666053,
		38.851601, 33.506100, 34.386906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687027, 33.384533, 34.641823>,  <39.056534, 33.025867, 34.853146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687027, 33.384533, 34.641823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382301, 33.622379, 34.539001>,  <39.199467, 33.765087, 34.477306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382301, 33.622379, 34.539001>,  <39.687027, 33.384533, 34.641823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382301, 33.622379, 34.539001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466124, 0.778720, 0.419909,
		0.449860, 0.200070, -0.870401,
		-0.761810, 0.594615, -0.257058,
		39.153759, 33.800762, 34.461884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858833, 33.957333, 34.233788>,  <39.687027, 33.384533, 34.641823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858833, 33.957333, 34.233788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532818, 34.079327, 34.430847>,  <39.337208, 34.152523, 34.549084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532818, 34.079327, 34.430847>,  <39.858833, 33.957333, 34.233788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532818, 34.079327, 34.430847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485511, 0.823524, 0.293407,
		-0.316220, 0.478322, -0.819276,
		-0.815036, 0.304986, 0.492646,
		39.288307, 34.170822, 34.578640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064976, 33.978806, 35.042645>,  <39.858833, 33.957333, 34.233788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064976, 33.978806, 35.042645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.394272, 33.898529, 35.255062>,  <40.591850, 33.850365, 35.382511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.394272, 33.898529, 35.255062>,  <40.064976, 33.978806, 35.042645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394272, 33.898529, 35.255062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371372, -0.517127, -0.771144,
		0.429378, 0.832048, -0.351186,
		0.823236, -0.200692, 0.531042,
		40.641243, 33.838322, 35.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650631, 34.116276, 34.632122>,  <40.064976, 33.978806, 35.042645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650631, 34.116276, 34.632122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765305, 33.869617, 34.925396>,  <40.834110, 33.721622, 35.101360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765305, 33.869617, 34.925396>,  <40.650631, 34.116276, 34.632122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765305, 33.869617, 34.925396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442931, -0.593285, -0.672180,
		0.849484, 0.517454, 0.103046,
		0.286686, -0.616648, 0.733182,
		40.851311, 33.684624, 35.145351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244236, 33.854790, 34.326553>,  <40.650631, 34.116276, 34.632122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244236, 33.854790, 34.326553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175041, 33.593304, 34.621235>,  <41.133526, 33.436413, 34.798046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175041, 33.593304, 34.621235>,  <41.244236, 33.854790, 34.326553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175041, 33.593304, 34.621235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390130, -0.732281, -0.558178,
		0.904365, 0.190857, 0.381704,
		-0.172982, -0.653711, 0.736708,
		41.123146, 33.397190, 34.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873848, 33.385094, 34.384888>,  <41.244236, 33.854790, 34.326553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873848, 33.385094, 34.384888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571194, 33.184017, 34.552124>,  <41.389599, 33.063374, 34.652466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.571194, 33.184017, 34.552124>,  <41.873848, 33.385094, 34.384888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571194, 33.184017, 34.552124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162826, -0.764172, -0.624122,
		0.633234, -0.404159, 0.660053,
		-0.756639, -0.502689, 0.418092,
		41.344204, 33.033211, 34.677551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161373, 32.707943, 34.543861>,  <41.873848, 33.385094, 34.384888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161373, 32.707943, 34.543861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764690, 32.668938, 34.510395>,  <41.526680, 32.645535, 34.490314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.764690, 32.668938, 34.510395>,  <42.161373, 32.707943, 34.543861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764690, 32.668938, 34.510395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127933, -0.688904, -0.713473,
		0.011931, -0.718264, 0.695669,
		-0.991711, -0.097512, -0.083670,
		41.467178, 32.639683, 34.485294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114628, 32.056030, 34.431076>,  <42.161373, 32.707943, 34.543861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114628, 32.056030, 34.431076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748386, 32.162331, 34.310383>,  <41.528641, 32.226112, 34.237968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.748386, 32.162331, 34.310383>,  <42.114628, 32.056030, 34.431076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748386, 32.162331, 34.310383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, -0.724196, -0.689385,
		-0.401718, -0.636331, 0.658563,
		-0.915606, 0.265750, -0.301733,
		41.473705, 32.242054, 34.219864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730389, 31.497118, 34.375603>,  <42.114628, 32.056030, 34.431076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730389, 31.497118, 34.375603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497757, 31.743565, 34.163128>,  <41.358177, 31.891434, 34.035645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497757, 31.743565, 34.163128>,  <41.730389, 31.497118, 34.375603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497757, 31.743565, 34.163128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113596, -0.708086, -0.696929,
		-0.805517, -0.344981, 0.481799,
		-0.581582, 0.616119, -0.531187,
		41.323280, 31.928400, 34.003773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222645, 31.084066, 34.196411>,  <41.730389, 31.497118, 34.375603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222645, 31.084066, 34.196411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.225361, 31.389845, 33.938553>,  <41.226990, 31.573313, 33.783836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.225361, 31.389845, 33.938553>,  <41.222645, 31.084066, 34.196411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225361, 31.389845, 33.938553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062032, -0.643746, -0.762721,
		-0.998051, -0.034808, -0.051792,
		0.006792, 0.764447, -0.644650,
		41.227398, 31.619179, 33.745159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667099, 31.015781, 33.786392>,  <41.222645, 31.084066, 34.196411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667099, 31.015781, 33.786392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.923470, 31.236937, 33.573402>,  <41.077293, 31.369629, 33.445610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.923470, 31.236937, 33.573402>,  <40.667099, 31.015781, 33.786392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923470, 31.236937, 33.573402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039222, -0.716366, -0.696622,
		-0.766598, 0.425600, -0.480825,
		0.640929, 0.552888, -0.532471,
		41.115749, 31.402803, 33.413662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516293, 30.867722, 33.113419>,  <40.667099, 31.015781, 33.786392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516293, 30.867722, 33.113419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860600, 31.065243, 33.064045>,  <41.067184, 31.183756, 33.034420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.860600, 31.065243, 33.064045>,  <40.516293, 30.867722, 33.113419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860600, 31.065243, 33.064045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113268, -0.422260, -0.899370,
		-0.496233, 0.760168, -0.419400,
		0.860769, 0.493802, -0.123437,
		41.118832, 31.213383, 33.027016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425812, 31.121189, 32.414631>,  <40.516293, 30.867722, 33.113419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425812, 31.121189, 32.414631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817787, 31.092789, 32.489117>,  <41.052975, 31.075748, 32.533810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.817787, 31.092789, 32.489117>,  <40.425812, 31.121189, 32.414631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817787, 31.092789, 32.489117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122037, -0.524918, -0.842359,
		0.157555, 0.848186, -0.505724,
		0.979940, -0.071000, 0.186214,
		41.111771, 31.071489, 32.544979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651424, 31.230436, 31.723488>,  <40.425812, 31.121189, 32.414631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651424, 31.230436, 31.723488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957203, 31.076843, 31.930632>,  <41.140671, 30.984688, 32.054916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957203, 31.076843, 31.930632>,  <40.651424, 31.230436, 31.723488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957203, 31.076843, 31.930632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312366, -0.482073, -0.818555,
		0.563958, 0.787504, -0.248576,
		0.764447, -0.383984, 0.517858,
		41.186539, 30.961649, 32.085991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294949, 31.297836, 31.371780>,  <40.651424, 31.230436, 31.723488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294949, 31.297836, 31.371780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.300762, 30.968575, 31.598833>,  <41.304253, 30.771017, 31.735065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.300762, 30.968575, 31.598833>,  <41.294949, 31.297836, 31.371780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300762, 30.968575, 31.598833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295013, -0.538889, -0.789029,
		0.955383, 0.178930, 0.235007,
		0.014538, -0.823154, 0.567631,
		41.305122, 30.721628, 31.769123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020363, 30.988789, 31.236572>,  <41.294949, 31.297836, 31.371780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020363, 30.988789, 31.236572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771999, 30.702991, 31.365553>,  <41.622982, 30.531513, 31.442942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.771999, 30.702991, 31.365553>,  <42.020363, 30.988789, 31.236572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771999, 30.702991, 31.365553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308953, -0.601109, -0.737032,
		0.720431, -0.358008, 0.593978,
		-0.620909, -0.714492, 0.322450,
		41.585728, 30.488644, 31.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384315, 30.413822, 31.264332>,  <42.020363, 30.988789, 31.236572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384315, 30.413822, 31.264332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.007919, 30.279856, 31.244873>,  <41.782082, 30.199476, 31.233198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.007919, 30.279856, 31.244873>,  <42.384315, 30.413822, 31.264332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007919, 30.279856, 31.244873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275376, -0.674165, -0.685325,
		0.196731, -0.658281, 0.726611,
		-0.940992, -0.334916, -0.048646,
		41.725620, 30.179380, 31.230280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495743, 29.753054, 30.927204>,  <42.384315, 30.413822, 31.264332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495743, 29.753054, 30.927204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096123, 29.765177, 30.914711>,  <41.856350, 29.772451, 30.907215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096123, 29.765177, 30.914711>,  <42.495743, 29.753054, 30.927204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096123, 29.765177, 30.914711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013519, -0.466068, -0.884645,
		-0.041368, -0.884230, 0.465217,
		-0.999052, 0.030306, -0.031235,
		41.796406, 29.774269, 30.905340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236813, 29.035961, 30.769487>,  <42.495743, 29.753054, 30.927204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236813, 29.035961, 30.769487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.935852, 29.272669, 30.653763>,  <41.755276, 29.414692, 30.584328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.935852, 29.272669, 30.653763>,  <42.236813, 29.035961, 30.769487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935852, 29.272669, 30.653763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120867, -0.555786, -0.822492,
		-0.647520, -0.583877, 0.489700,
		-0.752402, 0.591768, -0.289311,
		41.710133, 29.450199, 30.566969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701191, 28.582155, 30.568928>,  <42.236813, 29.035961, 30.769487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701191, 28.582155, 30.568928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.605721, 28.918125, 30.373966>,  <41.548439, 29.119707, 30.256989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.605721, 28.918125, 30.373966>,  <41.701191, 28.582155, 30.568928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605721, 28.918125, 30.373966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190457, -0.451674, -0.871617,
		-0.952240, -0.300862, -0.052167,
		-0.238674, 0.839924, -0.487404,
		41.534119, 29.170103, 30.227745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.089466, 28.442024, 30.118708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.283875, 28.769619, 29.996696>,  <41.400520, 28.966177, 29.923489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.283875, 28.769619, 29.996696>,  <41.089466, 28.442024, 30.118708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283875, 28.769619, 29.996696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227801, -0.455676, -0.860503,
		-0.843737, 0.348735, -0.408034,
		0.486019, 0.818989, -0.305029,
		41.429680, 29.015316, 29.905188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784245, 28.452755, 29.482368>,  <41.089466, 28.442024, 30.118708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784245, 28.452755, 29.482368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095837, 28.702816, 29.462915>,  <41.282791, 28.852854, 29.451244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.095837, 28.702816, 29.462915>,  <40.784245, 28.452755, 29.482368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095837, 28.702816, 29.462915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196552, -0.317091, -0.927804,
		-0.595441, 0.713187, -0.369884,
		0.778985, 0.625154, -0.048630,
		41.329533, 28.890362, 29.448326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739662, 29.017488, 28.880077>,  <40.784245, 28.452755, 29.482368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739662, 29.017488, 28.880077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121483, 28.944069, 28.974010>,  <41.350574, 28.900017, 29.030371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121483, 28.944069, 28.974010>,  <40.739662, 29.017488, 28.880077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121483, 28.944069, 28.974010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159492, -0.351038, -0.922678,
		0.251793, 0.918195, -0.305808,
		0.954548, -0.183550, 0.234833,
		41.407848, 28.889004, 29.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103436, 29.289169, 28.348181>,  <40.739662, 29.017488, 28.880077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103436, 29.289169, 28.348181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351101, 29.026253, 28.520042>,  <41.499702, 28.868504, 28.623159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351101, 29.026253, 28.520042>,  <41.103436, 29.289169, 28.348181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351101, 29.026253, 28.520042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099709, -0.476914, -0.873276,
		0.778904, 0.583543, -0.229751,
		0.619166, -0.657290, 0.429655,
		41.536850, 28.829065, 28.648939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322723, 28.942734, 27.811537>,  <41.103436, 29.289169, 28.348181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322723, 28.942734, 27.811537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.514736, 28.729706, 28.090374>,  <41.629944, 28.601889, 28.257675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.514736, 28.729706, 28.090374>,  <41.322723, 28.942734, 27.811537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514736, 28.729706, 28.090374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348317, -0.613598, -0.708641,
		0.805135, 0.582980, -0.109045,
		0.480034, -0.532570, 0.697092,
		41.658745, 28.569935, 28.299501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101936, 28.941637, 27.690256>,  <41.322723, 28.942734, 27.811537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101936, 28.941637, 27.690256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.012615, 28.602743, 27.883057>,  <41.959023, 28.399406, 27.998737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.012615, 28.602743, 27.883057>,  <42.101936, 28.941637, 27.690256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012615, 28.602743, 27.883057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406621, -0.530374, -0.743883,
		0.885886, 0.029881, 0.462939,
		-0.223303, -0.847237, 0.482002,
		41.945625, 28.348572, 28.027657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665302, 28.458961, 27.468613>,  <42.101936, 28.941637, 27.690256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665302, 28.458961, 27.468613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394905, 28.223419, 27.645830>,  <42.232666, 28.082094, 27.752161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394905, 28.223419, 27.645830>,  <42.665302, 28.458961, 27.468613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394905, 28.223419, 27.645830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304612, -0.770738, -0.559620,
		0.671006, -0.243341, 0.700383,
		-0.675990, -0.588853, 0.443046,
		42.192108, 28.046762, 27.778744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001892, 27.879684, 27.546423>,  <42.665302, 28.458961, 27.468613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001892, 27.879684, 27.546423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617294, 27.769756, 27.545374>,  <42.386536, 27.703800, 27.544744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617294, 27.769756, 27.545374>,  <43.001892, 27.879684, 27.546423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617294, 27.769756, 27.545374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217907, -0.756491, -0.616634,
		0.167480, -0.593460, 0.787246,
		-0.961492, -0.274820, -0.002622,
		42.328846, 27.687309, 27.544588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013901, 27.080233, 27.526863>,  <43.001892, 27.879684, 27.546423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013901, 27.080233, 27.526863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648186, 27.198698, 27.416325>,  <42.428757, 27.269777, 27.350002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.648186, 27.198698, 27.416325>,  <43.013901, 27.080233, 27.526863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648186, 27.198698, 27.416325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069512, -0.557384, -0.827340,
		-0.399058, -0.775636, 0.489022,
		-0.914287, 0.296163, -0.276345,
		42.373901, 27.287548, 27.333422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610756, 26.448576, 27.457273>,  <43.013901, 27.080233, 27.526863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610756, 26.448576, 27.457273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457970, 26.721348, 27.207769>,  <42.366299, 26.885010, 27.058067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.457970, 26.721348, 27.207769>,  <42.610756, 26.448576, 27.457273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457970, 26.721348, 27.207769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043879, -0.687556, -0.724804,
		-0.923133, -0.249482, 0.292547,
		-0.381969, 0.681928, -0.623759,
		42.343380, 26.925926, 27.020641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155277, 26.033167, 27.149858>,  <42.610756, 26.448576, 27.457273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155277, 26.033167, 27.149858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172401, 26.357090, 26.915806>,  <42.182674, 26.551443, 26.775375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172401, 26.357090, 26.915806>,  <42.155277, 26.033167, 27.149858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172401, 26.357090, 26.915806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067276, -0.582002, -0.810400,
		-0.996815, 0.074059, 0.029565,
		0.042811, 0.809808, -0.585131,
		42.185246, 26.600033, 26.740267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845562, 25.808189, 26.636227>,  <42.155277, 26.033167, 27.149858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845562, 25.808189, 26.636227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.985603, 26.152096, 26.487509>,  <42.069630, 26.358438, 26.398277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.985603, 26.152096, 26.487509>,  <41.845562, 25.808189, 26.636227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985603, 26.152096, 26.487509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035259, -0.408729, -0.911974,
		-0.936047, 0.306178, -0.173412,
		0.350105, 0.859765, -0.371794,
		42.090633, 26.410025, 26.375971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386456, 26.102533, 26.177546>,  <41.845562, 25.808189, 26.636227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386456, 26.102533, 26.177546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764332, 26.187813, 26.077866>,  <41.991058, 26.238981, 26.018057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764332, 26.187813, 26.077866>,  <41.386456, 26.102533, 26.177546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764332, 26.187813, 26.077866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118737, -0.485964, -0.865876,
		-0.305706, 0.847576, -0.433772,
		0.944693, 0.213199, -0.249201,
		42.047741, 26.251772, 26.003105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469330, 26.139278, 25.379339>,  <41.386456, 26.102533, 26.177546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469330, 26.139278, 25.379339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844425, 26.108330, 25.514784>,  <42.069481, 26.089760, 25.596050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844425, 26.108330, 25.514784>,  <41.469330, 26.139278, 25.379339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844425, 26.108330, 25.514784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303395, -0.292159, -0.906970,
		0.169102, 0.953235, -0.250495,
		0.937740, -0.077372, 0.338611,
		42.125748, 26.085117, 25.616367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779823, 26.508381, 24.922543>,  <41.469330, 26.139278, 25.379339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779823, 26.508381, 24.922543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.055820, 26.270529, 25.087626>,  <42.221420, 26.127817, 25.186676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.055820, 26.270529, 25.087626>,  <41.779823, 26.508381, 24.922543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055820, 26.270529, 25.087626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279853, -0.306681, -0.909741,
		0.667528, 0.743212, -0.045199,
		0.689992, -0.594628, 0.412708,
		42.262817, 26.092140, 25.211437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308510, 26.565430, 24.415491>,  <41.779823, 26.508381, 24.922543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308510, 26.565430, 24.415491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433926, 26.248722, 24.625175>,  <42.509174, 26.058697, 24.750986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433926, 26.248722, 24.625175>,  <42.308510, 26.565430, 24.415491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433926, 26.248722, 24.625175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480951, -0.343587, -0.806619,
		0.818768, 0.505024, 0.273075,
		0.313537, -0.791769, 0.524210,
		42.527988, 26.011190, 24.782438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038277, 26.522133, 24.354609>,  <42.308510, 26.565430, 24.415491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038277, 26.522133, 24.354609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.879482, 26.165092, 24.440086>,  <42.784206, 25.950869, 24.491373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.879482, 26.165092, 24.440086>,  <43.038277, 26.522133, 24.354609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879482, 26.165092, 24.440086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368995, -0.368397, -0.853303,
		0.840385, -0.259894, 0.475613,
		-0.396983, -0.892602, 0.213696,
		42.760387, 25.897312, 24.504194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490913, 26.006731, 24.136993>,  <43.038277, 26.522133, 24.354609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490913, 26.006731, 24.136993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135361, 25.824041, 24.151396>,  <42.922031, 25.714428, 24.160038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.135361, 25.824041, 24.151396>,  <43.490913, 26.006731, 24.136993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135361, 25.824041, 24.151396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151461, -0.367127, -0.917757,
		0.432382, -0.810321, 0.395507,
		-0.888879, -0.456725, 0.036007,
		42.868698, 25.687023, 24.162197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668823, 25.347689, 23.759596>,  <43.490913, 26.006731, 24.136993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668823, 25.347689, 23.759596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.272823, 25.403244, 23.769419>,  <43.035221, 25.436577, 23.775312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.272823, 25.403244, 23.769419>,  <43.668823, 25.347689, 23.759596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272823, 25.403244, 23.769419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050250, -0.184650, -0.981519,
		-0.131784, -0.972941, 0.189784,
		-0.990004, 0.138885, 0.024557,
		42.975822, 25.444910, 23.776785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367954, 24.694180, 23.467993>,  <43.668823, 25.347689, 23.759596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367954, 24.694180, 23.467993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082001, 24.973322, 23.450388>,  <42.910427, 25.140808, 23.439825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082001, 24.973322, 23.450388>,  <43.367954, 24.694180, 23.467993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082001, 24.973322, 23.450388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240560, -0.304551, -0.921618,
		-0.656562, -0.648261, 0.385595,
		-0.714882, 0.697858, -0.044011,
		42.867535, 25.182680, 23.437185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740009, 24.398230, 23.112984>,  <43.367954, 24.694180, 23.467993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740009, 24.398230, 23.112984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.720917, 24.793041, 23.051672>,  <42.709461, 25.029928, 23.014885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.720917, 24.793041, 23.051672>,  <42.740009, 24.398230, 23.112984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720917, 24.793041, 23.051672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144715, -0.158671, -0.976668,
		-0.988321, -0.024440, 0.150412,
		-0.047736, 0.987029, -0.153281,
		42.706596, 25.089149, 23.005688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171452, 24.555676, 22.606983>,  <42.740009, 24.398230, 23.112984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171452, 24.555676, 22.606983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398907, 24.883512, 22.578930>,  <42.535381, 25.080215, 22.562098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.398907, 24.883512, 22.578930>,  <42.171452, 24.555676, 22.606983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398907, 24.883512, 22.578930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059389, -0.044131, -0.997259,
		-0.820442, 0.571243, 0.023580,
		0.568637, 0.819594, -0.070132,
		42.569496, 25.129391, 22.557890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936516, 25.097965, 22.202616>,  <42.171452, 24.555676, 22.606983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936516, 25.097965, 22.202616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.331863, 25.158760, 22.200951>,  <42.569073, 25.195236, 22.199951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.331863, 25.158760, 22.200951>,  <41.936516, 25.097965, 22.202616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331863, 25.158760, 22.200951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041644, 0.244285, -0.968809,
		-0.146231, 0.957718, 0.247774,
		0.988374, 0.151988, -0.004161,
		42.628376, 25.204357, 22.199701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506794, 24.673018, 21.617033>,  <41.936516, 25.097965, 22.202616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506794, 24.673018, 21.617033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.264706, 24.828201, 21.338984>,  <41.119453, 24.921312, 21.172153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.264706, 24.828201, 21.338984>,  <41.506794, 24.673018, 21.617033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264706, 24.828201, 21.338984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124065, 0.816570, 0.563757,
		0.786333, 0.427436, -0.446070,
		-0.605218, 0.387959, -0.695126,
		41.083141, 24.944590, 21.130445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735859, 25.404951, 21.414465>,  <41.506794, 24.673018, 21.617033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735859, 25.404951, 21.414465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345299, 25.321056, 21.393887>,  <41.110962, 25.270720, 21.381540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345299, 25.321056, 21.393887>,  <41.735859, 25.404951, 21.414465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345299, 25.321056, 21.393887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202392, 0.805651, 0.556744,
		-0.075322, 0.554020, -0.829089,
		-0.976403, -0.209736, -0.051446,
		41.052376, 25.258135, 21.378452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350422, 26.089550, 21.196157>,  <41.735859, 25.404951, 21.414465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350422, 26.089550, 21.196157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093647, 25.845371, 21.381748>,  <40.939583, 25.698864, 21.493103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.093647, 25.845371, 21.381748>,  <41.350422, 26.089550, 21.196157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093647, 25.845371, 21.381748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182363, 0.709302, 0.680907,
		-0.744755, 0.352488, -0.566650,
		-0.641937, -0.610445, 0.463976,
		40.901066, 25.662237, 21.520941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874451, 26.688927, 21.499968>,  <41.350422, 26.089550, 21.196157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874451, 26.688927, 21.499968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808029, 26.338577, 21.681194>,  <40.768177, 26.128368, 21.789930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.808029, 26.338577, 21.681194>,  <40.874451, 26.688927, 21.499968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808029, 26.338577, 21.681194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414668, 0.478871, 0.773778,
		-0.894694, -0.059387, -0.442714,
		-0.166050, -0.875874, 0.453069,
		40.758213, 26.075815, 21.817116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134502, 26.594213, 21.772709>,  <40.874451, 26.688927, 21.499968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134502, 26.594213, 21.772709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338943, 26.336670, 22.000471>,  <40.461609, 26.182144, 22.137129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338943, 26.336670, 22.000471>,  <40.134502, 26.594213, 21.772709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338943, 26.336670, 22.000471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431374, 0.380844, 0.817847,
		-0.743431, -0.663631, -0.083093,
		0.511103, -0.643857, 0.569404,
		40.492275, 26.143513, 22.171293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709152, 26.345598, 22.317894>,  <40.134502, 26.594213, 21.772709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709152, 26.345598, 22.317894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068947, 26.269804, 22.475380>,  <40.284824, 26.224327, 22.569872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068947, 26.269804, 22.475380>,  <39.709152, 26.345598, 22.317894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068947, 26.269804, 22.475380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298861, 0.390524, 0.870731,
		-0.318745, -0.900881, 0.294643,
		0.899491, -0.189484, 0.393716,
		40.338795, 26.212959, 22.593494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497169, 26.102222, 23.017065>,  <39.709152, 26.345598, 22.317894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497169, 26.102222, 23.017065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890682, 26.173548, 23.024799>,  <40.126789, 26.216343, 23.029440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890682, 26.173548, 23.024799>,  <39.497169, 26.102222, 23.017065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890682, 26.173548, 23.024799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057765, 0.212943, 0.975356,
		0.169796, -0.960657, 0.219790,
		0.983785, 0.178307, 0.019336,
		40.185818, 26.227043, 23.030600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836544, 25.617640, 23.446453>,  <39.497169, 26.102222, 23.017065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836544, 25.617640, 23.446453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037132, 25.963217, 23.428005>,  <40.157486, 26.170563, 23.416937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037132, 25.963217, 23.428005>,  <39.836544, 25.617640, 23.446453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037132, 25.963217, 23.428005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165577, 0.148159, 0.975004,
		0.849181, -0.481303, 0.217347,
		0.501474, 0.863942, -0.046121,
		40.187576, 26.222399, 23.414169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078518, 25.529579, 24.091898>,  <39.836544, 25.617640, 23.446453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078518, 25.529579, 24.091898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106880, 25.906431, 23.960831>,  <40.123898, 26.132542, 23.882191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106880, 25.906431, 23.960831>,  <40.078518, 25.529579, 24.091898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106880, 25.906431, 23.960831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241065, 0.334942, 0.910880,
		0.967915, 0.014404, 0.250863,
		0.070904, 0.942129, -0.327667,
		40.128151, 26.189070, 23.862530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303810, 25.814831, 24.652786>,  <40.078518, 25.529579, 24.091898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303810, 25.814831, 24.652786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187691, 26.131723, 24.438087>,  <40.118019, 26.321859, 24.309269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187691, 26.131723, 24.438087>,  <40.303810, 25.814831, 24.652786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187691, 26.131723, 24.438087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074726, 0.540421, 0.838069,
		0.954013, 0.283401, -0.097685,
		-0.290301, 0.792230, -0.536747,
		40.100601, 26.369392, 24.277063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759991, 26.416100, 24.810099>,  <40.303810, 25.814831, 24.652786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759991, 26.416100, 24.810099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406731, 26.557421, 24.686663>,  <40.194775, 26.642214, 24.612600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.406731, 26.557421, 24.686663>,  <40.759991, 26.416100, 24.810099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406731, 26.557421, 24.686663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148053, 0.414286, 0.898024,
		0.445118, 0.838776, -0.313568,
		-0.883148, 0.353302, -0.308590,
		40.141785, 26.663412, 24.594086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767460, 27.052233, 25.084307>,  <40.759991, 26.416100, 24.810099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767460, 27.052233, 25.084307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376144, 27.037460, 25.002739>,  <40.141354, 27.028597, 24.953798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.376144, 27.037460, 25.002739>,  <40.767460, 27.052233, 25.084307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376144, 27.037460, 25.002739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189873, 0.554026, 0.810558,
		0.083042, 0.831680, -0.549010,
		-0.978290, -0.036932, -0.203921,
		40.082657, 27.026381, 24.941563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457836, 27.726152, 25.223581>,  <40.767460, 27.052233, 25.084307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457836, 27.726152, 25.223581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130589, 27.496180, 25.228098>,  <39.934238, 27.358196, 25.230808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130589, 27.496180, 25.228098>,  <40.457836, 27.726152, 25.223581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130589, 27.496180, 25.228098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320888, 0.472739, 0.820700,
		-0.477187, 0.667809, -0.571248,
		-0.818122, -0.574934, 0.011293,
		39.885151, 27.323700, 25.231485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820366, 28.131477, 25.416477>,  <40.457836, 27.726152, 25.223581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820366, 28.131477, 25.416477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745377, 27.751732, 25.517321>,  <39.700382, 27.523884, 25.577827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745377, 27.751732, 25.517321>,  <39.820366, 28.131477, 25.416477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745377, 27.751732, 25.517321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236454, 0.292730, 0.926498,
		-0.953385, 0.114082, -0.279360,
		-0.187473, -0.949366, 0.252109,
		39.689133, 27.466923, 25.592953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303219, 28.189793, 25.927231>,  <39.820366, 28.131477, 25.416477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303219, 28.189793, 25.927231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396942, 27.803598, 25.972725>,  <39.453175, 27.571882, 26.000021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396942, 27.803598, 25.972725>,  <39.303219, 28.189793, 25.927231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396942, 27.803598, 25.972725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231117, 0.058319, 0.971176,
		-0.944291, -0.253840, -0.209476,
		0.234307, -0.965487, 0.113737,
		39.467236, 27.513952, 26.006845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693104, 27.788725, 26.200611>,  <39.303219, 28.189793, 25.927231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693104, 27.788725, 26.200611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026310, 27.588364, 26.294571>,  <39.226234, 27.468147, 26.350946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026310, 27.588364, 26.294571>,  <38.693104, 27.788725, 26.200611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026310, 27.588364, 26.294571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309662, -0.070299, 0.948244,
		-0.458466, -0.862643, -0.213672,
		0.833017, -0.500904, 0.234898,
		39.276215, 27.438093, 26.365040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458366, 27.374311, 26.740948>,  <38.693104, 27.788725, 26.200611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458366, 27.374311, 26.740948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856621, 27.340826, 26.757412>,  <39.095573, 27.320736, 26.767290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856621, 27.340826, 26.757412>,  <38.458366, 27.374311, 26.740948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856621, 27.340826, 26.757412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025740, 0.177582, 0.983769,
		-0.089663, -0.980539, 0.174653,
		0.995639, -0.083712, 0.041162,
		39.155312, 27.315712, 26.769760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662148, 26.997631, 27.266081>,  <38.458366, 27.374311, 26.740948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662148, 26.997631, 27.266081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995899, 27.208458, 27.201557>,  <39.196148, 27.334953, 27.162844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995899, 27.208458, 27.201557>,  <38.662148, 26.997631, 27.266081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995899, 27.208458, 27.201557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073506, 0.183641, 0.980241,
		0.546274, -0.829746, 0.114483,
		0.834374, 0.527065, -0.161310,
		39.246212, 27.366577, 27.153164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118000, 26.788216, 27.832008>,  <38.662148, 26.997631, 27.266081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118000, 26.788216, 27.832008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248749, 27.138685, 27.690321>,  <39.327198, 27.348967, 27.605309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248749, 27.138685, 27.690321>,  <39.118000, 26.788216, 27.832008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248749, 27.138685, 27.690321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009839, 0.371633, 0.928328,
		0.945017, -0.306930, 0.112856,
		0.326873, 0.876175, -0.354220,
		39.346809, 27.401537, 27.584055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643532, 26.984764, 28.293070>,  <39.118000, 26.788216, 27.832008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643532, 26.984764, 28.293070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524830, 27.328899, 28.127295>,  <39.453609, 27.535379, 28.027830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524830, 27.328899, 28.127295>,  <39.643532, 26.984764, 28.293070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524830, 27.328899, 28.127295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001701, 0.434462, 0.900689,
		0.954953, 0.266577, -0.130391,
		-0.296752, 0.860337, -0.414437,
		39.435802, 27.587000, 28.002964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981419, 27.465269, 28.750841>,  <39.643532, 26.984764, 28.293070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981419, 27.465269, 28.750841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747234, 27.710173, 28.538286>,  <39.606724, 27.857115, 28.410753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747234, 27.710173, 28.538286>,  <39.981419, 27.465269, 28.750841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747234, 27.710173, 28.538286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090583, 0.601958, 0.793373,
		0.805621, 0.512627, -0.296965,
		-0.585465, 0.612258, -0.531385,
		39.571594, 27.893850, 28.378870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.041397, 30.338497, 32.831032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792572, 30.525692, 32.579945>,  <41.643276, 30.638008, 32.429295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.792572, 30.525692, 32.579945>,  <42.041397, 30.338497, 32.831032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792572, 30.525692, 32.579945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039427, 0.781973, 0.622065,
		0.781973, 0.411713, -0.467986,
		-0.622065, 0.467986, -0.627714,
		41.605953, 30.666088, 32.391632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315643, 30.936718, 32.942459>,  <42.041397, 30.338497, 32.831032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315643, 30.936718, 32.942459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947372, 30.994717, 32.797504>,  <41.726410, 31.029516, 32.710529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947372, 30.994717, 32.797504>,  <42.315643, 30.936718, 32.942459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947372, 30.994717, 32.797504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141918, 0.740542, 0.656853,
		0.363607, 0.656181, -0.661224,
		-0.920679, 0.144997, -0.362390,
		41.671169, 31.038216, 32.688786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284050, 31.687508, 32.800404>,  <42.315643, 30.936718, 32.942459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284050, 31.687508, 32.800404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.914768, 31.549765, 32.868649>,  <41.693199, 31.467119, 32.909595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.914768, 31.549765, 32.868649>,  <42.284050, 31.687508, 32.800404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914768, 31.549765, 32.868649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197106, 0.805395, 0.559006,
		-0.329911, 0.482448, -0.811420,
		-0.923205, -0.344358, 0.170615,
		41.637806, 31.446457, 32.919834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847778, 32.216751, 32.743507>,  <42.284050, 31.687508, 32.800404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847778, 32.216751, 32.743507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608028, 31.968309, 32.945488>,  <41.464180, 31.819244, 33.066677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608028, 31.968309, 32.945488>,  <41.847778, 32.216751, 32.743507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608028, 31.968309, 32.945488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230187, 0.737912, 0.634428,
		-0.766657, 0.264028, -0.585258,
		-0.599376, -0.621108, 0.504950,
		41.428215, 31.781977, 33.096973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221165, 32.512783, 32.812996>,  <41.847778, 32.216751, 32.743507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221165, 32.512783, 32.812996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213409, 32.241470, 33.106812>,  <41.208755, 32.078682, 33.283100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213409, 32.241470, 33.106812>,  <41.221165, 32.512783, 32.812996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213409, 32.241470, 33.106812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256629, 0.713443, 0.652028,
		-0.966315, -0.175862, -0.187902,
		-0.019390, -0.678286, 0.734542,
		41.207592, 32.037983, 33.327175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618790, 32.635929, 33.249775>,  <41.221165, 32.512783, 32.812996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618790, 32.635929, 33.249775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860027, 32.428967, 33.492615>,  <41.004772, 32.304790, 33.638317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860027, 32.428967, 33.492615>,  <40.618790, 32.635929, 33.249775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860027, 32.428967, 33.492615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315293, 0.544480, 0.777259,
		-0.732709, -0.660177, 0.165241,
		0.603098, -0.517405, 0.607095,
		41.040958, 32.273746, 33.674744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232117, 32.565186, 33.848106>,  <40.618790, 32.635929, 33.249775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232117, 32.565186, 33.848106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602760, 32.472424, 33.966511>,  <40.825146, 32.416767, 34.037552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602760, 32.472424, 33.966511>,  <40.232117, 32.565186, 33.848106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602760, 32.472424, 33.966511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226986, 0.282639, 0.931983,
		-0.299799, -0.930770, 0.209255,
		0.926606, -0.231909, 0.296007,
		40.880741, 32.402851, 34.055313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188671, 32.369869, 34.597408>,  <40.232117, 32.565186, 33.848106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188671, 32.369869, 34.597408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578827, 32.444592, 34.550552>,  <40.812920, 32.489426, 34.522438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.578827, 32.444592, 34.550552>,  <40.188671, 32.369869, 34.597408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578827, 32.444592, 34.550552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007975, 0.560805, 0.827909,
		0.220350, -0.806598, 0.548493,
		0.975388, 0.186804, -0.117141,
		40.871445, 32.500633, 34.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406342, 32.250202, 35.206047>,  <40.188671, 32.369869, 34.597408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406342, 32.250202, 35.206047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678772, 32.496120, 35.046970>,  <40.842232, 32.643673, 34.951527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.678772, 32.496120, 35.046970>,  <40.406342, 32.250202, 35.206047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678772, 32.496120, 35.046970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054933, 0.498699, 0.865032,
		0.730149, -0.610999, 0.305879,
		0.681076, 0.614800, -0.397689,
		40.883095, 32.680561, 34.927662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795361, 32.432007, 35.724216>,  <40.406342, 32.250202, 35.206047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795361, 32.432007, 35.724216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887131, 32.722374, 35.464863>,  <40.942192, 32.896595, 35.309250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887131, 32.722374, 35.464863>,  <40.795361, 32.432007, 35.724216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887131, 32.722374, 35.464863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098081, 0.680005, 0.726617,
		0.968371, -0.103113, 0.227212,
		0.229429, 0.725920, -0.648384,
		40.955959, 32.940151, 35.270348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380505, 32.873669, 35.995853>,  <40.795361, 32.432007, 35.724216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380505, 32.873669, 35.995853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.201725, 33.113384, 35.730194>,  <41.094460, 33.257214, 35.570801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.201725, 33.113384, 35.730194>,  <41.380505, 32.873669, 35.995853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201725, 33.113384, 35.730194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054418, 0.722839, 0.688871,
		0.892904, 0.344030, -0.290459,
		-0.446947, 0.599289, -0.664147,
		41.067642, 33.293171, 35.530949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768459, 33.560738, 35.954094>,  <41.380505, 32.873669, 35.995853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768459, 33.560738, 35.954094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407040, 33.640358, 35.802319>,  <41.190186, 33.688129, 35.711254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407040, 33.640358, 35.802319>,  <41.768459, 33.560738, 35.954094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407040, 33.640358, 35.802319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007984, 0.877566, 0.479389,
		0.428405, 0.436182, -0.791337,
		-0.903551, 0.199054, -0.379436,
		41.135975, 33.700073, 35.688488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859558, 34.266647, 35.673431>,  <41.768459, 33.560738, 35.954094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859558, 34.266647, 35.673431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.487263, 34.171528, 35.784554>,  <41.263885, 34.114456, 35.851227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.487263, 34.171528, 35.784554>,  <41.859558, 34.266647, 35.673431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487263, 34.171528, 35.784554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113055, 0.909596, 0.399818,
		-0.347769, 0.340719, -0.873480,
		-0.930739, -0.237796, 0.277810,
		41.208042, 34.100189, 35.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652115, 34.936249, 35.760151>,  <41.859558, 34.266647, 35.673431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652115, 34.936249, 35.760151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371555, 34.715374, 35.940426>,  <41.203220, 34.582848, 36.048592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371555, 34.715374, 35.940426>,  <41.652115, 34.936249, 35.760151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371555, 34.715374, 35.940426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188456, 0.753483, 0.629879,
		-0.687401, 0.356863, -0.632558,
		-0.701402, -0.552189, 0.450692,
		41.161137, 34.549717, 36.075634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977821, 35.392506, 35.750805>,  <41.652115, 34.936249, 35.760151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977821, 35.392506, 35.750805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.034855, 35.680073, 35.478680>,  <41.069077, 35.852612, 35.315403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.034855, 35.680073, 35.478680>,  <40.977821, 35.392506, 35.750805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034855, 35.680073, 35.478680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085973, -0.675742, -0.732107,
		-0.986041, 0.162878, -0.034545,
		0.142587, 0.718918, -0.680313,
		41.077633, 35.895748, 35.274586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504959, 35.234989, 35.254505>,  <40.977821, 35.392506, 35.750805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504959, 35.234989, 35.254505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774811, 35.484631, 35.096832>,  <40.936722, 35.634415, 35.002228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774811, 35.484631, 35.096832>,  <40.504959, 35.234989, 35.254505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774811, 35.484631, 35.096832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006582, -0.539067, -0.842237,
		-0.738128, 0.565603, -0.367777,
		0.674628, 0.624100, -0.394178,
		40.977200, 35.671860, 34.978580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181583, 35.592739, 34.655422>,  <40.504959, 35.234989, 35.254505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181583, 35.592739, 34.655422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579041, 35.576054, 34.613586>,  <40.817513, 35.566040, 34.588486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579041, 35.576054, 34.613586>,  <40.181583, 35.592739, 34.655422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579041, 35.576054, 34.613586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112597, -0.361682, -0.925477,
		0.000779, 0.931368, -0.364079,
		0.993640, -0.041716, -0.104588,
		40.877132, 35.563538, 34.582211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198093, 35.822536, 34.048805>,  <40.181583, 35.592739, 34.655422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198093, 35.822536, 34.048805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.545261, 35.632900, 34.108078>,  <40.753563, 35.519119, 34.143642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.545261, 35.632900, 34.108078>,  <40.198093, 35.822536, 34.048805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545261, 35.632900, 34.108078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048898, -0.378421, -0.924341,
		0.494299, 0.795005, -0.351620,
		0.867916, -0.474094, 0.148178,
		40.805637, 35.490673, 34.152531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632378, 36.124260, 33.489571>,  <40.198093, 35.822536, 34.048805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632378, 36.124260, 33.489571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852726, 35.809048, 33.599514>,  <40.984936, 35.619919, 33.665478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.852726, 35.809048, 33.599514>,  <40.632378, 36.124260, 33.489571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852726, 35.809048, 33.599514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016401, -0.319046, -0.947597,
		0.834430, 0.526510, -0.162828,
		0.550869, -0.788033, 0.274857,
		41.017986, 35.572639, 33.681973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285728, 36.161667, 33.084110>,  <40.632378, 36.124260, 33.489571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285728, 36.161667, 33.084110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236279, 35.789455, 33.221996>,  <41.206608, 35.566128, 33.304729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.236279, 35.789455, 33.221996>,  <41.285728, 36.161667, 33.084110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236279, 35.789455, 33.221996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128071, -0.359438, -0.924339,
		0.984029, -0.070126, 0.163610,
		-0.123628, -0.930530, 0.344717,
		41.199188, 35.510296, 33.325413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629799, 35.771477, 32.637493>,  <41.285728, 36.161667, 33.084110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629799, 35.771477, 32.637493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467941, 35.463665, 32.835114>,  <41.370827, 35.278976, 32.953686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467941, 35.463665, 32.835114>,  <41.629799, 35.771477, 32.637493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467941, 35.463665, 32.835114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043674, -0.555904, -0.830098,
		0.913431, -0.314317, 0.258552,
		-0.404644, -0.769530, 0.494052,
		41.346550, 35.232807, 32.983330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057770, 35.172421, 32.498161>,  <41.629799, 35.771477, 32.637493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057770, 35.172421, 32.498161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689056, 35.046314, 32.588425>,  <41.467827, 34.970650, 32.642582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.689056, 35.046314, 32.588425>,  <42.057770, 35.172421, 32.498161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689056, 35.046314, 32.588425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087568, -0.736297, -0.670969,
		0.377679, -0.598730, 0.706315,
		-0.921787, -0.315261, 0.225654,
		41.412521, 34.951736, 32.656120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050522, 34.500401, 32.754448>,  <42.057770, 35.172421, 32.498161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050522, 34.500401, 32.754448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.690712, 34.534054, 32.582970>,  <41.474827, 34.554245, 32.480083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.690712, 34.534054, 32.582970>,  <42.050522, 34.500401, 32.754448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690712, 34.534054, 32.582970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206088, -0.783515, -0.586202,
		-0.385208, -0.615651, 0.687451,
		-0.899524, 0.084134, -0.428695,
		41.420856, 34.559296, 32.454361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853371, 33.811981, 32.466942>,  <42.050522, 34.500401, 32.754448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853371, 33.811981, 32.466942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600075, 34.064976, 32.288525>,  <41.448097, 34.216774, 32.181473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600075, 34.064976, 32.288525>,  <41.853371, 33.811981, 32.466942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600075, 34.064976, 32.288525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059462, -0.614380, -0.786767,
		-0.771666, -0.471692, 0.426661,
		-0.633243, 0.632491, -0.446048,
		41.410103, 34.254723, 32.154709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529652, 33.350208, 32.203487>,  <41.853371, 33.811981, 32.466942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529652, 33.350208, 32.203487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426174, 33.675678, 31.995255>,  <41.364086, 33.870960, 31.870316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426174, 33.675678, 31.995255>,  <41.529652, 33.350208, 32.203487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426174, 33.675678, 31.995255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038839, -0.529728, -0.847278,
		-0.965178, -0.239407, 0.105436,
		-0.258697, 0.813679, -0.520580,
		41.348564, 33.919781, 31.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041290, 33.129391, 31.862648>,  <41.529652, 33.350208, 32.203487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041290, 33.129391, 31.862648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171001, 33.451466, 31.664047>,  <41.248829, 33.644711, 31.544888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171001, 33.451466, 31.664047>,  <41.041290, 33.129391, 31.862648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171001, 33.451466, 31.664047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027749, -0.516543, -0.855811,
		-0.945553, 0.291302, -0.145162,
		0.324282, 0.805187, -0.496502,
		41.268288, 33.693024, 31.515097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522957, 33.460556, 31.249306>,  <41.041290, 33.129391, 31.862648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522957, 33.460556, 31.249306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898304, 33.565945, 31.159826>,  <41.123512, 33.629177, 31.106138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.898304, 33.565945, 31.159826>,  <40.522957, 33.460556, 31.249306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898304, 33.565945, 31.159826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073430, -0.480469, -0.873932,
		-0.337737, 0.836500, -0.431512,
		0.938372, 0.263473, -0.223697,
		41.179817, 33.644985, 31.092718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486610, 33.550716, 30.600262>,  <40.522957, 33.460556, 31.249306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486610, 33.550716, 30.600262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.875019, 33.499454, 30.680943>,  <41.108067, 33.468697, 30.729351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.875019, 33.499454, 30.680943>,  <40.486610, 33.550716, 30.600262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875019, 33.499454, 30.680943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085873, -0.600553, -0.794960,
		0.223010, 0.789249, -0.572148,
		0.971026, -0.128152, 0.201704,
		41.166328, 33.461010, 30.741453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624249, 33.886013, 30.053162>,  <40.486610, 33.550716, 30.600262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624249, 33.886013, 30.053162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323788, 33.943924, 29.795536>,  <40.143513, 33.978672, 29.640961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.323788, 33.943924, 29.795536>,  <40.624249, 33.886013, 30.053162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323788, 33.943924, 29.795536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428966, 0.634535, 0.642926,
		0.501762, 0.759213, -0.414525,
		-0.751148, 0.144779, -0.644062,
		40.098442, 33.987358, 29.602318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598278, 34.566185, 30.011009>,  <40.624249, 33.886013, 30.053162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598278, 34.566185, 30.011009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237881, 34.460659, 29.873249>,  <40.021641, 34.397343, 29.790594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237881, 34.460659, 29.873249>,  <40.598278, 34.566185, 30.011009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237881, 34.460659, 29.873249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403937, 0.799720, 0.444166,
		0.158246, 0.539307, -0.827107,
		-0.900996, -0.263811, -0.344399,
		39.967583, 34.381516, 29.769930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193336, 35.111919, 29.825834>,  <40.598278, 34.566185, 30.011009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193336, 35.111919, 29.825834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900528, 34.854748, 29.915977>,  <39.724842, 34.700443, 29.970064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900528, 34.854748, 29.915977>,  <40.193336, 35.111919, 29.825834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900528, 34.854748, 29.915977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496234, 0.729816, 0.470234,
		-0.466799, 0.232389, -0.853284,
		-0.732018, -0.642933, 0.225358,
		39.680923, 34.661869, 29.983585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719849, 35.541389, 29.861719>,  <40.193336, 35.111919, 29.825834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719849, 35.541389, 29.861719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570347, 35.210495, 30.029520>,  <39.480644, 35.011959, 30.130201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570347, 35.210495, 30.029520>,  <39.719849, 35.541389, 29.861719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570347, 35.210495, 30.029520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535926, 0.561750, 0.630254,
		-0.757026, 0.010740, -0.653297,
		-0.373759, -0.827237, 0.419504,
		39.458218, 34.962322, 30.155371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878845, 35.566483, 29.799629>,  <39.719849, 35.541389, 29.861719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878845, 35.566483, 29.799629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967705, 35.312088, 30.095242>,  <39.021023, 35.159451, 30.272610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967705, 35.312088, 30.095242>,  <38.878845, 35.566483, 29.799629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967705, 35.312088, 30.095242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610069, 0.500594, 0.614183,
		-0.760569, -0.587301, -0.276790,
		0.222151, -0.635990, 0.739030,
		39.034351, 35.121292, 30.316950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245735, 35.602795, 30.121517>,  <38.878845, 35.566483, 29.799629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245735, 35.602795, 30.121517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472546, 35.415539, 30.392612>,  <38.608631, 35.303185, 30.555269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472546, 35.415539, 30.392612>,  <38.245735, 35.602795, 30.121517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472546, 35.415539, 30.392612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518181, 0.436856, 0.735286,
		-0.640287, -0.768119, 0.005131,
		0.567029, -0.468136, 0.677737,
		38.642654, 35.275097, 30.595934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829021, 35.615417, 30.675108>,  <38.245735, 35.602795, 30.121517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829021, 35.615417, 30.675108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188751, 35.542149, 30.833939>,  <38.404587, 35.498188, 30.929237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188751, 35.542149, 30.833939>,  <37.829021, 35.615417, 30.675108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188751, 35.542149, 30.833939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305083, 0.387723, 0.869825,
		-0.313282, -0.903393, 0.292805,
		0.899321, -0.183171, 0.397077,
		38.458546, 35.487198, 30.953062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728470, 35.269878, 31.243113>,  <37.829021, 35.615417, 30.675108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728470, 35.269878, 31.243113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097870, 35.414761, 31.293642>,  <38.319511, 35.501690, 31.323959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097870, 35.414761, 31.293642>,  <37.728470, 35.269878, 31.243113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097870, 35.414761, 31.293642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233779, 0.270324, 0.933955,
		0.304139, -0.892036, 0.334320,
		0.923497, 0.362210, 0.126324,
		38.374920, 35.523422, 31.331539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882523, 35.193565, 31.972446>,  <37.728470, 35.269878, 31.243113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882523, 35.193565, 31.972446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137886, 35.481728, 31.864037>,  <38.291103, 35.654625, 31.798990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.137886, 35.481728, 31.864037>,  <37.882523, 35.193565, 31.972446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137886, 35.481728, 31.864037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119677, 0.440741, 0.889621,
		0.760338, -0.535504, 0.367588,
		0.638407, 0.720404, -0.271024,
		38.329407, 35.697849, 31.782730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320675, 35.428318, 32.569939>,  <37.882523, 35.193565, 31.972446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320675, 35.428318, 32.569939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394352, 35.746231, 32.338631>,  <38.438557, 35.936977, 32.199848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394352, 35.746231, 32.338631>,  <38.320675, 35.428318, 32.569939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394352, 35.746231, 32.338631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019528, 0.591175, 0.806306,
		0.982696, -0.137224, 0.124412,
		0.184194, 0.794784, -0.578266,
		38.449612, 35.984665, 32.165150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746265, 35.759979, 33.052200>,  <38.320675, 35.428318, 32.569939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746265, 35.759979, 33.052200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634758, 36.047920, 32.797924>,  <38.567852, 36.220684, 32.645359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.634758, 36.047920, 32.797924>,  <38.746265, 35.759979, 33.052200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634758, 36.047920, 32.797924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192619, 0.606567, 0.771346,
		0.940843, 0.337475, -0.030437,
		-0.278772, 0.719853, -0.635688,
		38.551125, 36.263878, 32.607216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101288, 36.342499, 33.198044>,  <38.746265, 35.759979, 33.052200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101288, 36.342499, 33.198044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783131, 36.468414, 32.990871>,  <38.592236, 36.543964, 32.866570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.783131, 36.468414, 32.990871>,  <39.101288, 36.342499, 33.198044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783131, 36.468414, 32.990871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202477, 0.667440, 0.716608,
		0.571269, 0.674856, -0.467141,
		-0.795396, 0.314790, -0.517931,
		38.544514, 36.562851, 32.835491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.472378, 32.231441, 26.097141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086437, 32.243668, 26.201544>,  <40.854874, 32.251003, 26.264185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086437, 32.243668, 26.201544>,  <41.472378, 32.231441, 26.097141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086437, 32.243668, 26.201544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192214, 0.759359, 0.621633,
		-0.179200, 0.649954, -0.738545,
		-0.964853, 0.030562, 0.261007,
		40.796982, 32.252838, 26.279846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425690, 32.901920, 26.366539>,  <41.472378, 32.231441, 26.097141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425690, 32.901920, 26.366539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103497, 32.694267, 26.480869>,  <40.910179, 32.569675, 26.549467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103497, 32.694267, 26.480869>,  <41.425690, 32.901920, 26.366539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103497, 32.694267, 26.480869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108918, 0.603779, 0.789675,
		-0.582521, 0.604940, -0.542878,
		-0.805485, -0.519132, 0.285825,
		40.861851, 32.538528, 26.566616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960915, 33.414619, 26.723858>,  <41.425690, 32.901920, 26.366539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960915, 33.414619, 26.723858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803596, 33.067654, 26.845787>,  <40.709206, 32.859474, 26.918945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803596, 33.067654, 26.845787>,  <40.960915, 33.414619, 26.723858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803596, 33.067654, 26.845787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257046, 0.422059, 0.869364,
		-0.882750, 0.263561, -0.388957,
		-0.393293, -0.867411, 0.304825,
		40.685608, 32.807430, 26.937235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293102, 33.561264, 26.776739>,  <40.960915, 33.414619, 26.723858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293102, 33.561264, 26.776739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392071, 33.254585, 27.013704>,  <40.451454, 33.070576, 27.155884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392071, 33.254585, 27.013704>,  <40.293102, 33.561264, 26.776739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392071, 33.254585, 27.013704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374912, 0.488036, 0.788202,
		-0.893433, -0.417122, -0.166693,
		0.247424, -0.766701, 0.592411,
		40.466297, 33.024574, 27.191427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748272, 33.400940, 27.222893>,  <40.293102, 33.561264, 26.776739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748272, 33.400940, 27.222893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050797, 33.249382, 27.436220>,  <40.232311, 33.158447, 27.564217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050797, 33.249382, 27.436220>,  <39.748272, 33.400940, 27.222893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050797, 33.249382, 27.436220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367400, 0.428524, 0.825460,
		-0.541300, -0.820249, 0.184894,
		0.756315, -0.378892, 0.533319,
		40.277691, 33.135715, 27.596216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414371, 33.071053, 27.808374>,  <39.748272, 33.400940, 27.222893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414371, 33.071053, 27.808374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795555, 33.117981, 27.920164>,  <40.024265, 33.146137, 27.987238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795555, 33.117981, 27.920164>,  <39.414371, 33.071053, 27.808374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795555, 33.117981, 27.920164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303080, 0.379604, 0.874096,
		-0.003543, -0.917680, 0.397303,
		0.952958, 0.117318, 0.279476,
		40.081444, 33.153175, 28.004007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511276, 32.764301, 28.480772>,  <39.414371, 33.071053, 27.808374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511276, 32.764301, 28.480772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834801, 32.998814, 28.462477>,  <40.028915, 33.139523, 28.451500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834801, 32.998814, 28.462477>,  <39.511276, 32.764301, 28.480772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834801, 32.998814, 28.462477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197073, 0.343513, 0.918238,
		0.554061, -0.733669, 0.393379,
		0.808814, 0.586284, -0.045741,
		40.077446, 33.174698, 28.448755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797501, 32.712894, 29.165878>,  <39.511276, 32.764301, 28.480772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797501, 32.712894, 29.165878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933784, 33.054554, 29.008736>,  <40.015556, 33.259552, 28.914450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933784, 33.054554, 29.008736>,  <39.797501, 32.712894, 29.165878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933784, 33.054554, 29.008736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201320, 0.474452, 0.856952,
		0.918359, -0.212885, 0.333611,
		0.340714, 0.854152, -0.392859,
		40.035999, 33.310799, 28.890879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189278, 33.070297, 29.723339>,  <39.797501, 32.712894, 29.165878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189278, 33.070297, 29.723339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100876, 33.355499, 29.457170>,  <40.047836, 33.526619, 29.297468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100876, 33.355499, 29.457170>,  <40.189278, 33.070297, 29.723339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100876, 33.355499, 29.457170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137786, 0.652624, 0.745048,
		0.965491, 0.256343, -0.045990,
		-0.221003, 0.713001, -0.665423,
		40.034576, 33.569401, 29.257544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955238, 33.273491, 29.718643>,  <40.189278, 33.070297, 29.723339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955238, 33.273491, 29.718643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236847, 33.278645, 30.002666>,  <41.405811, 33.281738, 30.173080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236847, 33.278645, 30.002666>,  <40.955238, 33.273491, 29.718643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236847, 33.278645, 30.002666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507073, -0.709142, -0.489892,
		0.497220, 0.704947, -0.505788,
		0.704023, 0.012888, 0.710060,
		41.448055, 33.282513, 30.215685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592205, 33.673126, 29.337847>,  <40.955238, 33.273491, 29.718643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592205, 33.673126, 29.337847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704655, 33.406490, 29.613998>,  <41.772125, 33.246510, 29.779690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704655, 33.406490, 29.613998>,  <41.592205, 33.673126, 29.337847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704655, 33.406490, 29.613998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412936, -0.565366, -0.714034,
		0.866285, 0.485819, 0.116318,
		0.281129, -0.666589, 0.690381,
		41.788994, 33.206512, 29.821112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364243, 33.651478, 29.342506>,  <41.592205, 33.673126, 29.337847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364243, 33.651478, 29.342506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234253, 33.309700, 29.504648>,  <42.156258, 33.104633, 29.601933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234253, 33.309700, 29.504648>,  <42.364243, 33.651478, 29.342506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234253, 33.309700, 29.504648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635120, -0.514761, -0.575886,
		0.700724, 0.070300, 0.709960,
		-0.324975, -0.854447, 0.405354,
		42.136761, 33.053368, 29.626255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896435, 33.215801, 29.269146>,  <42.364243, 33.651478, 29.342506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896435, 33.215801, 29.269146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609562, 32.954350, 29.365818>,  <42.437439, 32.797478, 29.423822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609562, 32.954350, 29.365818>,  <42.896435, 33.215801, 29.269146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609562, 32.954350, 29.365818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511986, -0.729477, -0.453579,
		0.472775, -0.201562, 0.857821,
		-0.717185, -0.653633, 0.241681,
		42.394405, 32.758259, 29.438322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239395, 32.655811, 29.524742>,  <42.896435, 33.215801, 29.269146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239395, 32.655811, 29.524742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882900, 32.504749, 29.424286>,  <42.669003, 32.414112, 29.364012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882900, 32.504749, 29.424286>,  <43.239395, 32.655811, 29.524742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882900, 32.504749, 29.424286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452736, -0.773728, -0.443142,
		-0.026961, -0.508646, 0.860553,
		-0.891237, -0.377656, -0.251143,
		42.615528, 32.391453, 29.348944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316536, 31.906286, 29.674564>,  <43.239395, 32.655811, 29.524742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316536, 31.906286, 29.674564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016117, 31.948389, 29.413841>,  <42.835865, 31.973652, 29.257406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016117, 31.948389, 29.413841>,  <43.316536, 31.906286, 29.674564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016117, 31.948389, 29.413841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278496, -0.844589, -0.457285,
		-0.598644, -0.524967, 0.605009,
		-0.751043, 0.105258, -0.651809,
		42.790806, 31.979967, 29.218298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847099, 31.278475, 29.664042>,  <43.316536, 31.906286, 29.674564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847099, 31.278475, 29.664042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836624, 31.471050, 29.313606>,  <42.830341, 31.586596, 29.103346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836624, 31.471050, 29.313606>,  <42.847099, 31.278475, 29.664042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836624, 31.471050, 29.313606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312237, -0.828604, -0.464676,
		-0.949643, -0.285714, -0.128627,
		-0.026184, 0.481439, -0.876089,
		42.828770, 31.615482, 29.050779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674080, 30.741499, 29.190481>,  <42.847099, 31.278475, 29.664042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674080, 30.741499, 29.190481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815472, 31.046253, 28.973381>,  <42.900307, 31.229105, 28.843121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815472, 31.046253, 28.973381>,  <42.674080, 30.741499, 29.190481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815472, 31.046253, 28.973381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435122, -0.647537, -0.625592,
		-0.828082, -0.015028, -0.560406,
		0.353482, 0.761886, -0.542752,
		42.921516, 31.274818, 28.810555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635281, 30.505915, 28.491699>,  <42.674080, 30.741499, 29.190481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635281, 30.505915, 28.491699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896748, 30.808064, 28.510180>,  <43.053627, 30.989353, 28.521269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896748, 30.808064, 28.510180>,  <42.635281, 30.505915, 28.491699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896748, 30.808064, 28.510180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630729, -0.510034, -0.584846,
		-0.418211, 0.411436, -0.809827,
		0.653667, 0.755371, 0.046203,
		43.092846, 31.034676, 28.524040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616425, 30.851538, 27.828657>,  <42.635281, 30.505915, 28.491699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616425, 30.851538, 27.828657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976116, 30.938721, 27.980387>,  <43.191929, 30.991032, 28.071424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976116, 30.938721, 27.980387>,  <42.616425, 30.851538, 27.828657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976116, 30.938721, 27.980387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430945, -0.590673, -0.682197,
		0.075366, 0.776917, -0.625076,
		0.899226, 0.217959, 0.379325,
		43.245884, 31.004108, 28.094185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013378, 31.007240, 27.314735>,  <42.616425, 30.851538, 27.828657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013378, 31.007240, 27.314735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277294, 30.885611, 27.589607>,  <43.435642, 30.812634, 27.754530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277294, 30.885611, 27.589607>,  <43.013378, 31.007240, 27.314735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277294, 30.885611, 27.589607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423523, -0.604919, -0.674315,
		0.620730, 0.735943, -0.270337,
		0.659790, -0.304074, 0.687180,
		43.475231, 30.794388, 27.795761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586384, 31.067375, 26.932209>,  <43.013378, 31.007240, 27.314735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586384, 31.067375, 26.932209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648529, 30.827852, 27.246479>,  <43.685818, 30.684137, 27.435041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648529, 30.827852, 27.246479>,  <43.586384, 31.067375, 26.932209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648529, 30.827852, 27.246479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516019, -0.629006, -0.581444,
		0.842369, 0.495761, 0.211270,
		0.155367, -0.598810, 0.785677,
		43.695141, 30.648209, 27.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265881, 30.939854, 26.922525>,  <43.586384, 31.067375, 26.932209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265881, 30.939854, 26.922525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124649, 30.624514, 27.124056>,  <44.039909, 30.435310, 27.244974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124649, 30.624514, 27.124056>,  <44.265881, 30.939854, 26.922525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124649, 30.624514, 27.124056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380085, -0.612934, -0.692710,
		0.854908, -0.053088, 0.516056,
		-0.353083, -0.788348, 0.503824,
		44.018723, 30.388010, 27.275204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719231, 30.463184, 26.699644>,  <44.265881, 30.939854, 26.922525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719231, 30.463184, 26.699644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444824, 30.241577, 26.888298>,  <44.280178, 30.108612, 27.001490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444824, 30.241577, 26.888298>,  <44.719231, 30.463184, 26.699644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444824, 30.241577, 26.888298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311568, -0.809471, -0.497677,
		0.657497, -0.194470, 0.727928,
		-0.686020, -0.554020, 0.471634,
		44.239017, 30.075371, 27.029789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.969238, 27.910305, 26.425215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111221, 28.242167, 26.252853>,  <37.196411, 28.441282, 26.149437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.111221, 28.242167, 26.252853>,  <36.969238, 27.910305, 26.425215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111221, 28.242167, 26.252853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006644, 0.458669, 0.888583,
		0.934858, -0.318275, 0.157298,
		0.354961, 0.829653, -0.430905,
		37.217709, 28.491062, 26.123583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518959, 28.168940, 26.855600>,  <36.969238, 27.910305, 26.425215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518959, 28.168940, 26.855600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385269, 28.470747, 26.629681>,  <37.305054, 28.651831, 26.494129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385269, 28.470747, 26.629681>,  <37.518959, 28.168940, 26.855600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385269, 28.470747, 26.629681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011537, 0.602489, 0.798043,
		0.942422, 0.260212, -0.210073,
		-0.334227, 0.754517, -0.564797,
		37.285000, 28.697102, 26.460241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883919, 28.747013, 27.026102>,  <37.518959, 28.168940, 26.855600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883919, 28.747013, 27.026102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559433, 28.911531, 26.859838>,  <37.364742, 29.010242, 26.760080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559433, 28.911531, 26.859838>,  <37.883919, 28.747013, 27.026102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559433, 28.911531, 26.859838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102921, 0.599303, 0.793878,
		0.575624, 0.686783, -0.443830,
		-0.811211, 0.411296, -0.415658,
		37.316071, 29.034920, 26.735142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928303, 29.414307, 27.273689>,  <37.883919, 28.747013, 27.026102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928303, 29.414307, 27.273689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558647, 29.410639, 27.120914>,  <37.336853, 29.408438, 27.029249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558647, 29.410639, 27.120914>,  <37.928303, 29.414307, 27.273689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558647, 29.410639, 27.120914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298656, 0.640782, 0.707250,
		0.238255, 0.767668, -0.594912,
		-0.924142, -0.009168, -0.381938,
		37.281403, 29.407888, 27.006332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779793, 30.055122, 27.160137>,  <37.928303, 29.414307, 27.273689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779793, 30.055122, 27.160137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410069, 29.903582, 27.178591>,  <37.188236, 29.812656, 27.189663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410069, 29.903582, 27.178591>,  <37.779793, 30.055122, 27.160137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410069, 29.903582, 27.178591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233964, 0.657976, 0.715771,
		-0.301526, 0.650799, -0.696809,
		-0.924306, -0.378853, 0.046133,
		37.132778, 29.789927, 27.192430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374012, 30.598619, 27.170527>,  <37.779793, 30.055122, 27.160137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374012, 30.598619, 27.170527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133362, 30.313971, 27.315655>,  <36.988972, 30.143181, 27.402731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133362, 30.313971, 27.315655>,  <37.374012, 30.598619, 27.170527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133362, 30.313971, 27.315655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157845, 0.551180, 0.819320,
		-0.783025, 0.435656, -0.443931,
		-0.601628, -0.711621, 0.362821,
		36.952873, 30.100485, 27.424501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714317, 30.966553, 27.411232>,  <37.374012, 30.598619, 27.170527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714317, 30.966553, 27.411232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723400, 30.621908, 27.614058>,  <36.728851, 30.415121, 27.735752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723400, 30.621908, 27.614058>,  <36.714317, 30.966553, 27.411232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723400, 30.621908, 27.614058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207571, 0.492078, 0.845443,
		-0.977956, -0.124453, -0.167670,
		0.022711, -0.861610, 0.507064,
		36.730213, 30.363426, 27.766176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307217, 31.106834, 27.867172>,  <36.714317, 30.966553, 27.411232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307217, 31.106834, 27.867172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504734, 30.790871, 28.012613>,  <36.623245, 30.601292, 28.099878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504734, 30.790871, 28.012613>,  <36.307217, 31.106834, 27.867172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504734, 30.790871, 28.012613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131191, 0.345677, 0.929137,
		-0.859625, -0.506504, 0.067064,
		0.493794, -0.789912, 0.363602,
		36.652874, 30.553898, 28.121695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779484, 30.660522, 28.301294>,  <36.307217, 31.106834, 27.867172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779484, 30.660522, 28.301294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155373, 30.583591, 28.414387>,  <36.380905, 30.537434, 28.482243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155373, 30.583591, 28.414387>,  <35.779484, 30.660522, 28.301294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155373, 30.583591, 28.414387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190955, 0.390744, 0.900475,
		-0.283661, -0.900183, 0.330465,
		0.939719, -0.192326, 0.282733,
		36.437290, 30.525894, 28.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689793, 30.368698, 28.998724>,  <35.779484, 30.660522, 28.301294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689793, 30.368698, 28.998724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075016, 30.471416, 28.966269>,  <36.306149, 30.533047, 28.946795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075016, 30.471416, 28.966269>,  <35.689793, 30.368698, 28.998724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075016, 30.471416, 28.966269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059542, 0.496859, 0.865786,
		0.262644, -0.828967, 0.493792,
		0.963054, 0.256794, -0.081139,
		36.363934, 30.548454, 28.941927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030518, 30.276615, 29.633486>,  <35.689793, 30.368698, 28.998724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030518, 30.276615, 29.633486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306980, 30.513542, 29.467850>,  <36.472858, 30.655699, 29.368469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306980, 30.513542, 29.467850>,  <36.030518, 30.276615, 29.633486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306980, 30.513542, 29.467850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138553, 0.453743, 0.880296,
		0.709303, -0.665792, 0.231539,
		0.691153, 0.592316, -0.414088,
		36.514328, 30.691236, 29.343624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582504, 30.198057, 30.107590>,  <36.030518, 30.276615, 29.633486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582504, 30.198057, 30.107590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644653, 30.532272, 29.896788>,  <36.681942, 30.732801, 29.770308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644653, 30.532272, 29.896788>,  <36.582504, 30.198057, 30.107590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644653, 30.532272, 29.896788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091064, 0.519097, 0.849851,
		0.983650, -0.180035, 0.004567,
		0.155373, 0.835539, -0.527004,
		36.691265, 30.782934, 29.738686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083843, 30.500395, 30.438313>,  <36.582504, 30.198057, 30.107590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083843, 30.500395, 30.438313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905197, 30.798115, 30.239697>,  <36.798008, 30.976748, 30.120527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905197, 30.798115, 30.239697>,  <37.083843, 30.500395, 30.438313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905197, 30.798115, 30.239697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027851, 0.543131, 0.839186,
		0.894293, 0.388622, -0.221841,
		-0.446615, 0.744299, -0.496542,
		36.771214, 31.021404, 30.090734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398052, 31.102837, 30.757750>,  <37.083843, 30.500395, 30.438313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398052, 31.102837, 30.757750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065273, 31.224360, 30.572033>,  <36.865608, 31.297274, 30.460602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065273, 31.224360, 30.572033>,  <37.398052, 31.102837, 30.757750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065273, 31.224360, 30.572033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237433, 0.561371, 0.792772,
		0.501490, 0.769782, -0.394897,
		-0.831945, 0.303806, -0.464294,
		36.815689, 31.315502, 30.432745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179501, 31.378637, 30.702309>,  <37.398052, 31.102837, 30.757750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179501, 31.378637, 30.702309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407032, 31.158936, 30.947176>,  <38.543552, 31.027115, 31.094097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407032, 31.158936, 30.947176>,  <38.179501, 31.378637, 30.702309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407032, 31.158936, 30.947176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390864, -0.474360, -0.788802,
		0.723642, 0.687969, -0.055146,
		0.568830, -0.549256, 0.612169,
		38.577682, 30.994160, 31.130827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855473, 31.366341, 30.396814>,  <38.179501, 31.378637, 30.702309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855473, 31.366341, 30.396814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842850, 31.052694, 30.644739>,  <38.835274, 30.864506, 30.793493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.842850, 31.052694, 30.644739>,  <38.855473, 31.366341, 30.396814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842850, 31.052694, 30.644739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210520, -0.611424, -0.762785,
		0.977080, 0.106409, 0.184369,
		-0.031561, -0.784116, 0.619812,
		38.833382, 30.817459, 30.830683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407387, 31.001019, 30.192038>,  <38.855473, 31.366341, 30.396814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407387, 31.001019, 30.192038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207355, 30.721125, 30.396112>,  <39.087337, 30.553188, 30.518557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.207355, 30.721125, 30.396112>,  <39.407387, 31.001019, 30.192038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207355, 30.721125, 30.396112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263327, -0.684118, -0.680177,
		0.824973, -0.205795, 0.526372,
		-0.500078, -0.699736, 0.510188,
		39.057331, 30.511204, 30.549170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866772, 30.299744, 30.385241>,  <39.407387, 31.001019, 30.192038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866772, 30.299744, 30.385241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477783, 30.227152, 30.326778>,  <39.244389, 30.183596, 30.291702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.477783, 30.227152, 30.326778>,  <39.866772, 30.299744, 30.385241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477783, 30.227152, 30.326778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232436, -0.711282, -0.663364,
		0.016433, -0.679075, 0.733885,
		-0.972473, -0.181482, -0.146153,
		39.186043, 30.172707, 30.282932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844105, 29.613832, 30.348654>,  <39.866772, 30.299744, 30.385241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844105, 29.613832, 30.348654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475227, 29.687780, 30.212782>,  <39.253902, 29.732149, 30.131258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475227, 29.687780, 30.212782>,  <39.844105, 29.613832, 30.348654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475227, 29.687780, 30.212782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110875, -0.715083, -0.690190,
		-0.370493, -0.674151, 0.638948,
		-0.922194, 0.184868, -0.339679,
		39.198570, 29.743240, 30.110878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522186, 28.970913, 30.300137>,  <39.844105, 29.613832, 30.348654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522186, 28.970913, 30.300137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284027, 29.190403, 30.065393>,  <39.141132, 29.322098, 29.924547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.284027, 29.190403, 30.065393>,  <39.522186, 28.970913, 30.300137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284027, 29.190403, 30.065393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089310, -0.771115, -0.630401,
		-0.798458, -0.322922, 0.508121,
		-0.595389, 0.548728, -0.586863,
		39.105408, 29.355021, 29.889336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863865, 28.594770, 30.247807>,  <39.522186, 28.970913, 30.300137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863865, 28.594770, 30.247807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927055, 28.820463, 29.923662>,  <38.964970, 28.955879, 29.729176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927055, 28.820463, 29.923662>,  <38.863865, 28.594770, 30.247807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927055, 28.820463, 29.923662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037591, -0.816634, -0.575931,
		-0.986727, 0.121447, -0.107800,
		0.157978, 0.564234, -0.810360,
		38.974449, 28.989733, 29.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485043, 28.252106, 29.694662>,  <38.863865, 28.594770, 30.247807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485043, 28.252106, 29.694662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730492, 28.480871, 29.476900>,  <38.877762, 28.618130, 29.346243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730492, 28.480871, 29.476900>,  <38.485043, 28.252106, 29.694662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730492, 28.480871, 29.476900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091574, -0.736367, -0.670356,
		-0.784268, 0.361495, -0.504227,
		0.613627, 0.571913, -0.544406,
		38.914581, 28.652445, 29.313578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160473, 28.229038, 29.003733>,  <38.485043, 28.252106, 29.694662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160473, 28.229038, 29.003733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528854, 28.376358, 28.952820>,  <38.749882, 28.464750, 28.922272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528854, 28.376358, 28.952820>,  <38.160473, 28.229038, 29.003733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528854, 28.376358, 28.952820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084834, -0.508304, -0.856989,
		-0.380329, 0.778448, -0.499368,
		0.920952, 0.368302, -0.127284,
		38.805141, 28.486849, 28.914635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282658, 28.388752, 28.301134>,  <38.160473, 28.229038, 29.003733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282658, 28.388752, 28.301134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650303, 28.338007, 28.450340>,  <38.870892, 28.307560, 28.539864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650303, 28.338007, 28.450340>,  <38.282658, 28.388752, 28.301134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650303, 28.338007, 28.450340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288873, -0.426829, -0.856953,
		0.267928, 0.895390, -0.355656,
		0.919112, -0.126863, 0.373014,
		38.926037, 28.299948, 28.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683289, 28.552727, 27.769283>,  <38.282658, 28.388752, 28.301134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683289, 28.552727, 27.769283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970123, 28.349594, 27.960236>,  <39.142223, 28.227715, 28.074808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970123, 28.349594, 27.960236>,  <38.683289, 28.552727, 27.769283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970123, 28.349594, 27.960236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298148, -0.395596, -0.868684,
		0.629996, 0.765252, -0.132266,
		0.717086, -0.507833, 0.477382,
		39.185249, 28.197245, 28.103451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275654, 28.701513, 27.385944>,  <38.683289, 28.552727, 27.769283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275654, 28.701513, 27.385944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309010, 28.353058, 27.579508>,  <39.329021, 28.143986, 27.695646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309010, 28.353058, 27.579508>,  <39.275654, 28.701513, 27.385944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309010, 28.353058, 27.579508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278960, -0.445779, -0.850566,
		0.956676, 0.205917, 0.205841,
		0.083386, -0.871137, 0.483908,
		39.334026, 28.091717, 27.724680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937691, 28.498745, 27.165173>,  <39.275654, 28.701513, 27.385944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937691, 28.498745, 27.165173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757751, 28.163855, 27.289555>,  <39.649788, 27.962921, 27.364183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757751, 28.163855, 27.289555>,  <39.937691, 28.498745, 27.165173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757751, 28.163855, 27.289555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326321, -0.478180, -0.815389,
		0.831354, -0.265331, 0.488313,
		-0.449849, -0.837224, 0.310953,
		39.622795, 27.912687, 27.382841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428436, 27.920322, 27.149176>,  <39.937691, 28.498745, 27.165173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428436, 27.920322, 27.149176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057186, 27.774448, 27.119259>,  <39.834438, 27.686924, 27.101309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.057186, 27.774448, 27.119259>,  <40.428436, 27.920322, 27.149176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057186, 27.774448, 27.119259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292790, -0.590996, -0.751664,
		0.229920, -0.719534, 0.655292,
		-0.928122, -0.364685, -0.074790,
		39.778748, 27.665043, 27.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058952, 27.404102, 27.496645>,  <40.428436, 27.920322, 27.149176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058952, 27.404102, 27.496645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448879, 27.488220, 27.526331>,  <41.682835, 27.538691, 27.544144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448879, 27.488220, 27.526331>,  <41.058952, 27.404102, 27.496645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448879, 27.488220, 27.526331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163857, 0.449681, 0.878031,
		0.151272, -0.868080, 0.472815,
		0.974817, 0.210296, 0.074216,
		41.741325, 27.551310, 27.548595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315670, 27.142433, 28.173174>,  <41.058952, 27.404102, 27.496645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315670, 27.142433, 28.173174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578636, 27.425592, 28.069883>,  <41.736416, 27.595488, 28.007910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.578636, 27.425592, 28.069883>,  <41.315670, 27.142433, 28.173174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578636, 27.425592, 28.069883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108073, 0.427725, 0.897425,
		0.745735, -0.562077, 0.357699,
		0.657419, 0.707899, -0.258224,
		41.775864, 27.637962, 27.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636551, 27.261303, 28.753296>,  <41.315670, 27.142433, 28.173174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636551, 27.261303, 28.753296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.724010, 27.577301, 28.524176>,  <41.776485, 27.766901, 28.386703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.724010, 27.577301, 28.524176>,  <41.636551, 27.261303, 28.753296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724010, 27.577301, 28.524176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009598, 0.588716, 0.808283,
		0.975757, -0.171229, 0.136302,
		0.218645, 0.789996, -0.572801,
		41.789604, 27.814301, 28.352335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088512, 27.714565, 29.107508>,  <41.636551, 27.261303, 28.753296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088512, 27.714565, 29.107508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.996479, 27.988810, 28.831247>,  <41.941257, 28.153357, 28.665491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.996479, 27.988810, 28.831247>,  <42.088512, 27.714565, 29.107508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996479, 27.988810, 28.831247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217262, 0.727969, 0.650276,
		0.948609, -0.000435, -0.316450,
		-0.230083, 0.685610, -0.690652,
		41.927456, 28.194492, 28.624052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534077, 28.149736, 29.207684>,  <42.088512, 27.714565, 29.107508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534077, 28.149736, 29.207684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238857, 28.358227, 29.036283>,  <42.061726, 28.483322, 28.933443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238857, 28.358227, 29.036283>,  <42.534077, 28.149736, 29.207684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238857, 28.358227, 29.036283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002985, 0.637564, 0.770392,
		0.674745, 0.567305, -0.472106,
		-0.738045, 0.521228, -0.428499,
		42.017445, 28.514595, 28.907734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680824, 28.841335, 29.335163>,  <42.534077, 28.149736, 29.207684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680824, 28.841335, 29.335163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288994, 28.834929, 29.254990>,  <42.053894, 28.831085, 29.206886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288994, 28.834929, 29.254990>,  <42.680824, 28.841335, 29.335163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288994, 28.834929, 29.254990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152833, 0.707061, 0.690439,
		0.130659, 0.706971, -0.695069,
		-0.979576, -0.016017, -0.200433,
		41.995121, 28.830124, 29.194860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480080, 29.550804, 29.365538>,  <42.680824, 28.841335, 29.335163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480080, 29.550804, 29.365538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.128902, 29.362555, 29.400709>,  <41.918198, 29.249605, 29.421812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.128902, 29.362555, 29.400709>,  <42.480080, 29.550804, 29.365538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128902, 29.362555, 29.400709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279766, 0.653335, 0.703481,
		-0.388521, 0.593016, -0.705254,
		-0.877942, -0.470623, 0.087929,
		41.865520, 29.221367, 29.427088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064548, 30.072187, 29.522184>,  <42.480080, 29.550804, 29.365538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064548, 30.072187, 29.522184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855457, 29.751352, 29.637711>,  <41.730003, 29.558851, 29.707027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.855457, 29.751352, 29.637711>,  <42.064548, 30.072187, 29.522184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855457, 29.751352, 29.637711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364877, 0.516688, 0.774531,
		-0.770469, 0.299485, -0.562749,
		-0.522726, -0.802086, 0.288817,
		41.698639, 29.510727, 29.724356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371315, 30.373100, 29.754684>,  <42.064548, 30.072187, 29.522184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371315, 30.373100, 29.754684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.387836, 30.001278, 29.901228>,  <41.397751, 29.778185, 29.989155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.387836, 30.001278, 29.901228>,  <41.371315, 30.373100, 29.754684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387836, 30.001278, 29.901228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346622, 0.330567, 0.877826,
		-0.937095, -0.163246, -0.308551,
		0.041305, -0.929557, 0.366358,
		41.400227, 29.722410, 30.011135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719826, 30.139257, 30.197475>,  <41.371315, 30.373100, 29.754684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719826, 30.139257, 30.197475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032696, 29.923536, 30.322281>,  <41.220417, 29.794104, 30.397163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032696, 29.923536, 30.322281>,  <40.719826, 30.139257, 30.197475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032696, 29.923536, 30.322281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238009, 0.204168, 0.949561,
		-0.575803, -0.816987, 0.031337,
		0.782178, -0.539302, 0.312011,
		41.267349, 29.761745, 30.415884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520939, 29.834328, 30.706562>,  <40.719826, 30.139257, 30.197475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520939, 29.834328, 30.706562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913948, 29.805040, 30.775019>,  <41.149754, 29.787468, 30.816093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913948, 29.805040, 30.775019>,  <40.520939, 29.834328, 30.706562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913948, 29.805040, 30.775019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142435, 0.296203, 0.944445,
		-0.119845, -0.952314, 0.280596,
		0.982522, -0.073220, 0.171142,
		41.208706, 29.783075, 30.826361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528938, 29.608873, 31.350279>,  <40.520939, 29.834328, 30.706562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528938, 29.608873, 31.350279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891125, 29.770391, 31.298000>,  <41.108437, 29.867302, 31.266634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.891125, 29.770391, 31.298000>,  <40.528938, 29.608873, 31.350279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891125, 29.770391, 31.298000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071609, 0.448873, 0.890722,
		0.418330, -0.797162, 0.435355,
		0.905468, 0.403791, -0.130692,
		41.162766, 29.891529, 31.258793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827324, 29.567926, 32.001007>,  <40.528938, 29.608873, 31.350279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827324, 29.567926, 32.001007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.036320, 29.862539, 31.829182>,  <41.161716, 30.039307, 31.726088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.036320, 29.862539, 31.829182>,  <40.827324, 29.567926, 32.001007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036320, 29.862539, 31.829182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197725, 0.594729, 0.779232,
		0.829403, -0.322206, 0.456371,
		0.522490, 0.736533, -0.429561,
		41.193066, 30.083500, 31.700314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217323, 29.625652, 32.478989>,  <40.827324, 29.567926, 32.001007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217323, 29.625652, 32.478989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218834, 29.956881, 32.254745>,  <41.219742, 30.155617, 32.120197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218834, 29.956881, 32.254745>,  <41.217323, 29.625652, 32.478989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218834, 29.956881, 32.254745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215164, 0.548157, 0.808225,
		0.976571, 0.117571, 0.180241,
		0.003776, 0.828070, -0.560611,
		41.219967, 30.205301, 32.086563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.019829, 29.799585, 26.857460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.629616, 29.716825, 26.887196>,  <44.395489, 29.667170, 26.905037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.629616, 29.716825, 26.887196>,  <45.019829, 29.799585, 26.857460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629616, 29.716825, 26.887196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148771, -0.870219, -0.469667,
		0.161864, -0.447116, 0.879708,
		-0.975534, -0.206898, 0.074339,
		44.336956, 29.654757, 26.909498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069000, 29.086805, 26.847189>,  <45.019829, 29.799585, 26.857460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069000, 29.086805, 26.847189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690987, 29.177206, 26.752674>,  <44.464180, 29.231445, 26.695965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690987, 29.177206, 26.752674>,  <45.069000, 29.086805, 26.847189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690987, 29.177206, 26.752674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000407, -0.723478, -0.690347,
		-0.326968, -0.652306, 0.683805,
		-0.945035, 0.226000, -0.236289,
		44.407475, 29.245007, 26.681787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766365, 28.413097, 26.660534>,  <45.069000, 29.086805, 26.847189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766365, 28.413097, 26.660534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.542633, 28.713825, 26.520868>,  <44.408394, 28.894262, 26.437069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.542633, 28.713825, 26.520868>,  <44.766365, 28.413097, 26.660534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542633, 28.713825, 26.520868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040561, -0.445532, -0.894347,
		-0.827949, -0.486076, 0.279696,
		-0.559334, 0.751819, -0.349162,
		44.374832, 28.939371, 26.416121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317215, 28.069489, 26.325907>,  <44.766365, 28.413097, 26.660534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317215, 28.069489, 26.325907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271484, 28.435030, 26.170061>,  <44.244045, 28.654356, 26.076553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271484, 28.435030, 26.170061>,  <44.317215, 28.069489, 26.325907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271484, 28.435030, 26.170061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110759, -0.401466, -0.909152,
		-0.987250, -0.060782, 0.147114,
		-0.114322, 0.913854, -0.389616,
		44.237186, 28.709187, 26.053177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741695, 28.020817, 25.971479>,  <44.317215, 28.069489, 26.325907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741695, 28.020817, 25.971479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.957943, 28.324484, 25.826488>,  <44.087692, 28.506683, 25.739494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.957943, 28.324484, 25.826488>,  <43.741695, 28.020817, 25.971479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957943, 28.324484, 25.826488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074885, -0.385737, -0.919565,
		-0.837925, 0.524282, -0.151688,
		0.540623, 0.759167, -0.362479,
		44.120129, 28.552235, 25.717745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429058, 28.412848, 25.303602>,  <43.741695, 28.020817, 25.971479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429058, 28.412848, 25.303602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.823120, 28.480545, 25.292147>,  <44.059559, 28.521164, 25.285275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.823120, 28.480545, 25.292147>,  <43.429058, 28.412848, 25.303602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823120, 28.480545, 25.292147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039430, -0.385507, -0.921862,
		-0.167060, 0.907050, -0.386459,
		0.985158, 0.169244, -0.028638,
		44.118668, 28.531319, 25.283556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537685, 28.628017, 24.670769>,  <43.429058, 28.412848, 25.303602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537685, 28.628017, 24.670769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903931, 28.532047, 24.799820>,  <44.123676, 28.474466, 24.877251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.903931, 28.532047, 24.799820>,  <43.537685, 28.628017, 24.670769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903931, 28.532047, 24.799820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268198, -0.233347, -0.934676,
		0.299535, 0.942330, -0.149308,
		0.915614, -0.239924, 0.322627,
		44.178616, 28.460070, 24.896608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979218, 28.964504, 24.296726>,  <43.537685, 28.628017, 24.670769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979218, 28.964504, 24.296726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182705, 28.645395, 24.426191>,  <44.304798, 28.453930, 24.503870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.182705, 28.645395, 24.426191>,  <43.979218, 28.964504, 24.296726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182705, 28.645395, 24.426191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207853, -0.251015, -0.945404,
		0.835463, 0.548223, 0.038123,
		0.508723, -0.797774, 0.323664,
		44.335323, 28.406063, 24.523291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531948, 29.009113, 23.978609>,  <43.979218, 28.964504, 24.296726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531948, 29.009113, 23.978609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483490, 28.622505, 24.069082>,  <44.454414, 28.390539, 24.123367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.483490, 28.622505, 24.069082>,  <44.531948, 29.009113, 23.978609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483490, 28.622505, 24.069082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283793, -0.252074, -0.925160,
		0.951203, -0.047885, 0.304828,
		-0.121141, -0.966522, 0.226184,
		44.447147, 28.332548, 24.136938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874996, 28.673330, 23.446085>,  <44.531948, 29.009113, 23.978609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874996, 28.673330, 23.446085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693371, 28.356955, 23.610153>,  <44.584396, 28.167130, 23.708595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.693371, 28.356955, 23.610153>,  <44.874996, 28.673330, 23.446085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693371, 28.356955, 23.610153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121317, -0.401194, -0.907924,
		0.882672, -0.462014, 0.086212,
		-0.454061, -0.790940, 0.410173,
		44.557152, 28.119673, 23.733206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186497, 28.044439, 23.235840>,  <44.874996, 28.673330, 23.446085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186497, 28.044439, 23.235840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.834000, 27.900690, 23.358644>,  <44.622501, 27.814440, 23.432327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.834000, 27.900690, 23.358644>,  <45.186497, 28.044439, 23.235840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834000, 27.900690, 23.358644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112153, -0.472007, -0.874432,
		0.459159, -0.805022, 0.375650,
		-0.881246, -0.359373, 0.307012,
		44.569626, 27.792879, 23.450748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099689, 27.374353, 22.915459>,  <45.186497, 28.044439, 23.235840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099689, 27.374353, 22.915459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.729374, 27.503332, 22.994402>,  <44.507187, 27.580719, 23.041769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.729374, 27.503332, 22.994402>,  <45.099689, 27.374353, 22.915459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729374, 27.503332, 22.994402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319390, -0.387791, -0.864643,
		-0.202266, -0.863509, 0.461997,
		-0.925785, 0.322445, 0.197359,
		44.451637, 27.600065, 23.053610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525604, 26.819204, 22.869036>,  <45.099689, 27.374353, 22.915459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525604, 26.819204, 22.869036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405586, 27.191879, 22.787125>,  <44.333576, 27.415483, 22.737978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.405586, 27.191879, 22.787125>,  <44.525604, 26.819204, 22.869036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405586, 27.191879, 22.787125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321502, -0.300876, -0.897836,
		-0.898113, -0.203557, 0.389816,
		-0.300048, 0.931686, -0.204777,
		44.315571, 27.471384, 22.725691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787659, 26.844042, 22.686539>,  <44.525604, 26.819204, 22.869036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787659, 26.844042, 22.686539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.018650, 27.103201, 22.487843>,  <44.157246, 27.258698, 22.368626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.018650, 27.103201, 22.487843>,  <43.787659, 26.844042, 22.686539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018650, 27.103201, 22.487843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067014, -0.568772, -0.819761,
		-0.813654, 0.506679, -0.285032,
		0.577474, 0.647900, -0.496738,
		44.191891, 27.297571, 22.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237202, 26.294971, 22.650307>,  <43.787659, 26.844042, 22.686539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237202, 26.294971, 22.650307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.995388, 25.977261, 22.626110>,  <42.850300, 25.786634, 22.611591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.995388, 25.977261, 22.626110>,  <43.237202, 26.294971, 22.650307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995388, 25.977261, 22.626110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018577, -0.061862, 0.997912,
		-0.796362, 0.604397, 0.022643,
		-0.604536, -0.794278, -0.060492,
		42.814026, 25.738977, 22.607962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466251, 26.339249, 22.855972>,  <43.237202, 26.294971, 22.650307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466251, 26.339249, 22.855972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538258, 25.949497, 22.909910>,  <42.581463, 25.715647, 22.942274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538258, 25.949497, 22.909910>,  <42.466251, 26.339249, 22.855972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538258, 25.949497, 22.909910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188709, 0.100330, 0.976895,
		-0.965393, -0.201304, -0.165813,
		0.180017, -0.974377, 0.134846,
		42.592262, 25.657185, 22.950363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068619, 26.167711, 23.453075>,  <42.466251, 26.339249, 22.855972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068619, 26.167711, 23.453075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309742, 25.849478, 23.428860>,  <42.454418, 25.658537, 23.414331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309742, 25.849478, 23.428860>,  <42.068619, 26.167711, 23.453075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309742, 25.849478, 23.428860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067646, -0.126560, 0.989650,
		-0.795010, -0.592478, -0.130110,
		0.602812, -0.795583, -0.060538,
		42.490585, 25.610804, 23.410698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698627, 25.553186, 23.775503>,  <42.068619, 26.167711, 23.453075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698627, 25.553186, 23.775503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098507, 25.550879, 23.765932>,  <42.338432, 25.549494, 23.760189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098507, 25.550879, 23.765932>,  <41.698627, 25.553186, 23.775503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098507, 25.550879, 23.765932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024182, 0.048637, 0.998524,
		-0.004604, -0.998800, 0.048762,
		0.999697, -0.005777, -0.023929,
		42.398415, 25.549147, 23.758753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763226, 25.000370, 24.233322>,  <41.698627, 25.553186, 23.775503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763226, 25.000370, 24.233322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.113434, 25.192991, 24.217495>,  <42.323559, 25.308563, 24.207998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.113434, 25.192991, 24.217495>,  <41.763226, 25.000370, 24.233322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113434, 25.192991, 24.217495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046904, -0.003198, 0.998894,
		0.480893, -0.876412, -0.025387,
		0.875524, 0.481552, -0.039569,
		42.376091, 25.337458, 24.205624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224220, 24.764872, 24.832926>,  <41.763226, 25.000370, 24.233322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224220, 24.764872, 24.832926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.399372, 25.110437, 24.733398>,  <42.504463, 25.317778, 24.673681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.399372, 25.110437, 24.733398>,  <42.224220, 24.764872, 24.832926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399372, 25.110437, 24.733398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102910, 0.323108, 0.940750,
		0.893124, -0.386330, 0.230388,
		0.437880, 0.863915, -0.248818,
		42.530735, 25.369612, 24.658752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696419, 24.852400, 25.416796>,  <42.224220, 24.764872, 24.832926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696419, 24.852400, 25.416796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643375, 25.203379, 25.232405>,  <42.611549, 25.413967, 25.121771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643375, 25.203379, 25.232405>,  <42.696419, 24.852400, 25.416796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643375, 25.203379, 25.232405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012370, 0.463583, 0.885967,
		0.991092, 0.123185, -0.050619,
		-0.132604, 0.877448, -0.460978,
		42.603596, 25.466614, 25.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187668, 25.312654, 25.722609>,  <42.696419, 24.852400, 25.416796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187668, 25.312654, 25.722609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.906769, 25.551876, 25.568110>,  <42.738232, 25.695408, 25.475410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.906769, 25.551876, 25.568110>,  <43.187668, 25.312654, 25.722609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906769, 25.551876, 25.568110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025025, 0.562929, 0.826126,
		0.711496, 0.570477, -0.410280,
		-0.702245, 0.598053, -0.386246,
		42.696095, 25.731293, 25.452236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363350, 26.036360, 25.864729>,  <43.187668, 25.312654, 25.722609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363350, 26.036360, 25.864729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.968388, 26.040325, 25.801567>,  <42.731411, 26.042704, 25.763670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.968388, 26.040325, 25.801567>,  <43.363350, 26.036360, 25.864729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968388, 26.040325, 25.801567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103553, 0.714080, 0.692363,
		0.119621, 0.699994, -0.704059,
		-0.987404, 0.009914, -0.157905,
		42.672165, 26.043299, 25.754196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256626, 26.681368, 25.876978>,  <43.363350, 26.036360, 25.864729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256626, 26.681368, 25.876978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.883118, 26.543747, 25.916363>,  <42.659012, 26.461174, 25.939993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.883118, 26.543747, 25.916363>,  <43.256626, 26.681368, 25.876978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883118, 26.543747, 25.916363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215492, 0.760240, 0.612861,
		-0.285710, 0.551056, -0.784033,
		-0.933773, -0.344054, 0.098460,
		42.602985, 26.440531, 25.945900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807850, 27.213774, 25.753592>,  <43.256626, 26.681368, 25.876978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807850, 27.213774, 25.753592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598473, 26.959978, 25.981075>,  <42.472847, 26.807701, 26.117565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598473, 26.959978, 25.981075>,  <42.807850, 27.213774, 25.753592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598473, 26.959978, 25.981075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300271, 0.761994, 0.573761,
		-0.797399, 0.129565, -0.589379,
		-0.523443, -0.634490, 0.568709,
		42.441441, 26.769630, 26.151688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334270, 27.661892, 25.980236>,  <42.807850, 27.213774, 25.753592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334270, 27.661892, 25.980236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.297672, 27.335182, 26.208097>,  <42.275715, 27.139156, 26.344814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.297672, 27.335182, 26.208097>,  <42.334270, 27.661892, 25.980236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297672, 27.335182, 26.208097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287271, 0.569384, 0.770245,
		-0.953469, -0.093170, -0.286732,
		-0.091497, -0.816775, 0.569656,
		42.270222, 27.090149, 26.378994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686432, 27.841856, 26.338413>,  <42.334270, 27.661892, 25.980236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686432, 27.841856, 26.338413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.882412, 27.556196, 26.538387>,  <42.000000, 27.384800, 26.658371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.882412, 27.556196, 26.538387>,  <41.686432, 27.841856, 26.338413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882412, 27.556196, 26.538387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217150, 0.455425, 0.863385,
		-0.844270, -0.531578, 0.068058,
		0.489953, -0.714151, 0.499935,
		42.029396, 27.341951, 26.688368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227341, 27.570171, 26.792625>,  <41.686432, 27.841856, 26.338413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227341, 27.570171, 26.792625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593975, 27.493713, 26.933102>,  <41.813957, 27.447838, 27.017387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.593975, 27.493713, 26.933102>,  <41.227341, 27.570171, 26.792625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593975, 27.493713, 26.933102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206652, 0.525452, 0.825345,
		-0.342295, -0.829074, 0.442121,
		0.916586, -0.191147, 0.351190,
		41.868950, 27.436369, 27.038458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409908, 27.308689, 26.779387>,  <41.227341, 27.570171, 26.792625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409908, 27.308689, 26.779387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009941, 27.312656, 26.782537>,  <39.769958, 27.315037, 26.784428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.009941, 27.312656, 26.782537>,  <40.409908, 27.308689, 26.779387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009941, 27.312656, 26.782537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011293, -0.416817, -0.908920,
		-0.005733, -0.908936, 0.416896,
		-0.999920, 0.009919, 0.007876,
		39.709965, 27.315632, 26.784901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234463, 26.626574, 26.647959>,  <40.409908, 27.308689, 26.779387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234463, 26.626574, 26.647959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947582, 26.888210, 26.551807>,  <39.775455, 27.045193, 26.494116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947582, 26.888210, 26.551807>,  <40.234463, 26.626574, 26.647959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947582, 26.888210, 26.551807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090616, -0.254479, -0.962824,
		-0.690948, -0.712322, 0.123242,
		-0.717203, 0.654093, -0.240379,
		39.732422, 27.084438, 26.479694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909416, 26.273350, 26.111195>,  <40.234463, 26.626574, 26.647959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909416, 26.273350, 26.111195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753231, 26.641531, 26.104216>,  <39.659519, 26.862440, 26.100029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753231, 26.641531, 26.104216>,  <39.909416, 26.273350, 26.111195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753231, 26.641531, 26.104216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080524, -0.053025, -0.995341,
		-0.917092, -0.387236, 0.094822,
		-0.390460, 0.920455, -0.017447,
		39.636093, 26.917667, 26.098982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231693, 26.281597, 25.886700>,  <39.909416, 26.273350, 26.111195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231693, 26.281597, 25.886700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391037, 26.635931, 25.791533>,  <39.486641, 26.848532, 25.734432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391037, 26.635931, 25.791533>,  <39.231693, 26.281597, 25.886700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391037, 26.635931, 25.791533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047748, -0.239010, -0.969842,
		-0.915987, 0.397703, -0.052914,
		0.398357, 0.885836, -0.237920,
		39.510544, 26.901682, 25.720156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902023, 26.467211, 25.245062>,  <39.231693, 26.281597, 25.886700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902023, 26.467211, 25.245062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.210438, 26.721670, 25.233597>,  <39.395485, 26.874346, 25.226717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.210438, 26.721670, 25.233597>,  <38.902023, 26.467211, 25.245062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210438, 26.721670, 25.233597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105976, -0.172570, -0.979280,
		-0.627914, 0.752020, -0.200474,
		0.771034, 0.636149, -0.028664,
		39.441750, 26.912516, 25.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829277, 26.949438, 24.737673>,  <38.902023, 26.467211, 25.245062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829277, 26.949438, 24.737673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226082, 26.963934, 24.786011>,  <39.464165, 26.972631, 24.815014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226082, 26.963934, 24.786011>,  <38.829277, 26.949438, 24.737673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226082, 26.963934, 24.786011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122016, -0.032075, -0.992010,
		-0.032075, 0.998828, -0.036241,
		0.992010, 0.036241, 0.120844,
		39.523685, 26.974806, 24.822264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114098, 27.355961, 24.219643>,  <38.829277, 26.949438, 24.737673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114098, 27.355961, 24.219643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417450, 27.122375, 24.335468>,  <39.599461, 26.982224, 24.404963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417450, 27.122375, 24.335468>,  <39.114098, 27.355961, 24.219643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417450, 27.122375, 24.335468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382310, 0.038710, -0.923223,
		0.527920, 0.810856, 0.252612,
		0.758380, -0.583964, 0.289563,
		39.644962, 26.947186, 24.422337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049343, 27.958666, 23.686121>,  <39.114098, 27.355961, 24.219643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049343, 27.958666, 23.686121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664677, 27.890610, 23.600105>,  <38.433876, 27.849775, 23.548496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664677, 27.890610, 23.600105>,  <39.049343, 27.958666, 23.686121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664677, 27.890610, 23.600105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268391, 0.423355, 0.865296,
		-0.056185, 0.889844, -0.452793,
		-0.961670, -0.170142, -0.215039,
		38.376175, 27.839567, 23.535593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572430, 28.597010, 23.694979>,  <39.049343, 27.958666, 23.686121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572430, 28.597010, 23.694979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288311, 28.318575, 23.736814>,  <38.117840, 28.151514, 23.761915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288311, 28.318575, 23.736814>,  <38.572430, 28.597010, 23.694979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288311, 28.318575, 23.736814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298158, 0.432125, 0.851099,
		-0.637636, 0.573349, -0.514481,
		-0.710297, -0.696088, 0.104589,
		38.075222, 28.109749, 23.768190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955036, 28.946716, 23.867863>,  <38.572430, 28.597010, 23.694979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955036, 28.946716, 23.867863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.888851, 28.573591, 23.995916>,  <37.849140, 28.349716, 24.072748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.888851, 28.573591, 23.995916>,  <37.955036, 28.946716, 23.867863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888851, 28.573591, 23.995916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261434, 0.354482, 0.897772,
		-0.950934, 0.064849, -0.302520,
		-0.165458, -0.932812, 0.320135,
		37.839214, 28.293747, 24.091957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284794, 28.987986, 24.168783>,  <37.955036, 28.946716, 23.867863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284794, 28.987986, 24.168783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455685, 28.654989, 24.309883>,  <37.558220, 28.455191, 24.394543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455685, 28.654989, 24.309883>,  <37.284794, 28.987986, 24.168783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455685, 28.654989, 24.309883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184616, 0.301604, 0.935389,
		-0.885094, -0.464749, -0.024837,
		0.427230, -0.832493, 0.352748,
		37.583855, 28.405241, 24.415707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751534, 28.529987, 24.419149>,  <37.284794, 28.987986, 24.168783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751534, 28.529987, 24.419149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091431, 28.410145, 24.592667>,  <37.295368, 28.338240, 24.696777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.091431, 28.410145, 24.592667>,  <36.751534, 28.529987, 24.419149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091431, 28.410145, 24.592667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313794, 0.373773, 0.872827,
		-0.423648, -0.877797, 0.223594,
		0.849739, -0.299609, 0.433795,
		37.346352, 28.320263, 24.722805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472130, 28.268700, 25.112661>,  <36.751534, 28.529987, 24.419149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472130, 28.268700, 25.112661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863796, 28.326897, 25.169317>,  <37.098797, 28.361814, 25.203310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.863796, 28.326897, 25.169317>,  <36.472130, 28.268700, 25.112661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863796, 28.326897, 25.169317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188074, 0.386912, 0.902733,
		0.076539, -0.910566, 0.406216,
		0.979168, 0.145493, 0.141640,
		37.157547, 28.370544, 25.211809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626266, 28.052038, 25.776655>,  <36.472130, 28.268700, 25.112661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626266, 28.052038, 25.776655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.963505, 28.258472, 25.716198>,  <37.165848, 28.382332, 25.679924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.963505, 28.258472, 25.716198>,  <36.626266, 28.052038, 25.776655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963505, 28.258472, 25.716198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124196, 0.460328, 0.879019,
		0.523222, -0.722327, 0.452196,
		0.843098, 0.516083, -0.151144,
		37.216434, 28.413298, 25.670855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.395561, 28.250612, 21.736835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706779, 28.124708, 21.954302>,  <41.893509, 28.049166, 22.084782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.706779, 28.124708, 21.954302>,  <41.395561, 28.250612, 21.736835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706779, 28.124708, 21.954302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214389, 0.680427, 0.700754,
		-0.590495, -0.661774, 0.461921,
		0.778044, -0.314761, 0.543666,
		41.940193, 28.030279, 22.117401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212673, 28.074181, 22.330566>,  <41.395561, 28.250612, 21.736835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212673, 28.074181, 22.330566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.596561, 28.165277, 22.396385>,  <41.826893, 28.219934, 22.435877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.596561, 28.165277, 22.396385>,  <41.212673, 28.074181, 22.330566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596561, 28.165277, 22.396385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279667, 0.718102, 0.637272,
		0.026971, -0.657620, 0.752867,
		0.959718, 0.227740, 0.164547,
		41.884476, 28.233599, 22.445749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334599, 28.003487, 23.012505>,  <41.212673, 28.074181, 22.330566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334599, 28.003487, 23.012505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.641609, 28.236647, 22.905825>,  <41.825817, 28.376543, 22.841816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.641609, 28.236647, 22.905825>,  <41.334599, 28.003487, 23.012505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641609, 28.236647, 22.905825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199961, 0.613017, 0.764347,
		0.608998, -0.533351, 0.587076,
		0.767553, 0.582878, -0.266677,
		41.871868, 28.411516, 22.825813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534336, 28.243032, 23.661087>,  <41.334599, 28.003487, 23.012505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534336, 28.243032, 23.661087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709610, 28.495216, 23.404800>,  <41.814774, 28.646526, 23.251028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709610, 28.495216, 23.404800>,  <41.534336, 28.243032, 23.661087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709610, 28.495216, 23.404800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013620, 0.708049, 0.706032,
		0.898783, -0.318096, 0.301667,
		0.438181, 0.630461, -0.640715,
		41.841064, 28.684355, 23.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089245, 28.686712, 24.049080>,  <41.534336, 28.243032, 23.661087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089245, 28.686712, 24.049080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973866, 28.877745, 23.717123>,  <41.904640, 28.992363, 23.517950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973866, 28.877745, 23.717123>,  <42.089245, 28.686712, 24.049080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973866, 28.877745, 23.717123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340025, 0.759145, 0.555050,
		0.895088, 0.442285, -0.056583,
		-0.288445, 0.477579, -0.829890,
		41.887333, 29.021019, 23.468157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268253, 29.353901, 24.189684>,  <42.089245, 28.686712, 24.049080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268253, 29.353901, 24.189684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.014668, 29.406631, 23.884865>,  <41.862518, 29.438271, 23.701973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.014668, 29.406631, 23.884865>,  <42.268253, 29.353901, 24.189684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014668, 29.406631, 23.884865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278204, 0.880525, 0.383768,
		0.721592, 0.455299, -0.521544,
		-0.633962, 0.131828, -0.762046,
		41.824478, 29.446180, 23.656252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349663, 30.078093, 23.980709>,  <42.268253, 29.353901, 24.189684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349663, 30.078093, 23.980709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995739, 29.962538, 23.834471>,  <41.783386, 29.893206, 23.746727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995739, 29.962538, 23.834471>,  <42.349663, 30.078093, 23.980709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995739, 29.962538, 23.834471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418469, 0.837748, 0.350801,
		0.204936, 0.463382, -0.862136,
		-0.884808, -0.288885, -0.365595,
		41.730297, 29.875872, 23.724792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121193, 30.703665, 23.596918>,  <42.349663, 30.078093, 23.980709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121193, 30.703665, 23.596918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799438, 30.475006, 23.661648>,  <41.606388, 30.337811, 23.700485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799438, 30.475006, 23.661648>,  <42.121193, 30.703665, 23.596918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799438, 30.475006, 23.661648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460132, 0.771737, 0.438975,
		-0.375826, 0.278643, -0.883806,
		-0.804384, -0.571646, 0.161826,
		41.558125, 30.303513, 23.710196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580246, 31.113239, 23.445601>,  <42.121193, 30.703665, 23.596918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580246, 31.113239, 23.445601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.405872, 30.831707, 23.669954>,  <41.301250, 30.662788, 23.804565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.405872, 30.831707, 23.669954>,  <41.580246, 31.113239, 23.445601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405872, 30.831707, 23.669954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488771, 0.708449, 0.509119,
		-0.755689, -0.052202, -0.652846,
		-0.435931, -0.703829, 0.560882,
		41.275093, 30.620558, 23.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932957, 31.377474, 23.453196>,  <41.580246, 31.113239, 23.445601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932957, 31.377474, 23.453196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988079, 31.129955, 23.762543>,  <41.021152, 30.981443, 23.948151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988079, 31.129955, 23.762543>,  <40.932957, 31.377474, 23.453196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988079, 31.129955, 23.762543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379750, 0.688137, 0.618270,
		-0.914767, -0.378889, -0.140158,
		0.137808, -0.618798, 0.773368,
		41.029423, 30.944317, 23.994553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275021, 31.431822, 23.744989>,  <40.932957, 31.377474, 23.453196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275021, 31.431822, 23.744989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531357, 31.273819, 24.008291>,  <40.685158, 31.179018, 24.166271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531357, 31.273819, 24.008291>,  <40.275021, 31.431822, 23.744989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531357, 31.273819, 24.008291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195818, 0.744986, 0.637692,
		-0.742282, -0.537555, 0.400066,
		0.640838, -0.395007, 0.658253,
		40.723610, 31.155317, 24.205767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832912, 31.063633, 24.390860>,  <40.275021, 31.431822, 23.744989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832912, 31.063633, 24.390860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201088, 31.185390, 24.488951>,  <40.421993, 31.258446, 24.547806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201088, 31.185390, 24.488951>,  <39.832912, 31.063633, 24.390860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201088, 31.185390, 24.488951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370026, 0.476317, 0.797623,
		0.125986, -0.824904, 0.551054,
		0.920439, 0.304394, 0.245227,
		40.477219, 31.276709, 24.562519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111641, 30.900139, 24.211105>,  <39.832912, 31.063633, 24.390860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111641, 30.900139, 24.211105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827808, 31.088280, 24.001242>,  <38.657509, 31.201164, 23.875324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827808, 31.088280, 24.001242>,  <39.111641, 30.900139, 24.211105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827808, 31.088280, 24.001242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206283, -0.573303, -0.792951,
		-0.673755, -0.670889, 0.309778,
		-0.709579, 0.470352, -0.524659,
		38.614933, 31.229385, 23.843843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748962, 30.418198, 23.892218>,  <39.111641, 30.900139, 24.211105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748962, 30.418198, 23.892218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.696182, 30.752974, 23.679756>,  <38.664516, 30.953838, 23.552280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.696182, 30.752974, 23.679756>,  <38.748962, 30.418198, 23.892218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696182, 30.752974, 23.679756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050313, -0.529492, -0.846822,
		-0.989979, -0.138459, 0.027756,
		-0.131947, 0.836940, -0.531152,
		38.656597, 31.004055, 23.520411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436047, 30.133608, 23.371155>,  <38.748962, 30.418198, 23.892218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436047, 30.133608, 23.371155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567566, 30.488829, 23.242624>,  <38.646477, 30.701962, 23.165506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567566, 30.488829, 23.242624>,  <38.436047, 30.133608, 23.371155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567566, 30.488829, 23.242624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169231, -0.390142, -0.905069,
		-0.929114, 0.243207, -0.278564,
		0.328798, 0.888054, -0.321328,
		38.666206, 30.755245, 23.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253937, 30.128788, 22.630226>,  <38.436047, 30.133608, 23.371155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253937, 30.128788, 22.630226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522339, 30.421484, 22.678074>,  <38.683380, 30.597101, 22.706781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522339, 30.421484, 22.678074>,  <38.253937, 30.128788, 22.630226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522339, 30.421484, 22.678074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399616, -0.221019, -0.889639,
		-0.624547, 0.644754, -0.440719,
		0.671005, 0.731740, 0.119617,
		38.723640, 30.641006, 22.713959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152931, 30.525175, 21.986687>,  <38.253937, 30.128788, 22.630226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152931, 30.525175, 21.986687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523563, 30.600393, 22.116970>,  <38.745941, 30.645523, 22.195141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523563, 30.600393, 22.116970>,  <38.152931, 30.525175, 21.986687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523563, 30.600393, 22.116970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374705, -0.387210, -0.842416,
		-0.032293, 0.902612, -0.429242,
		0.926582, 0.188043, 0.325709,
		38.801537, 30.656807, 22.214684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538490, 30.852449, 21.411667>,  <38.152931, 30.525175, 21.986687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538490, 30.852449, 21.411667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811287, 30.692543, 21.656641>,  <38.974964, 30.596600, 21.803625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.811287, 30.692543, 21.656641>,  <38.538490, 30.852449, 21.411667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811287, 30.692543, 21.656641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528148, -0.310059, -0.790521,
		0.505914, 0.862584, -0.000321,
		0.681990, -0.399766, 0.612435,
		39.015884, 30.572613, 21.840372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126530, 31.040123, 21.159475>,  <38.538490, 30.852449, 21.411667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126530, 31.040123, 21.159475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216152, 30.722904, 21.386061>,  <39.269924, 30.532574, 21.522011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.216152, 30.722904, 21.386061>,  <39.126530, 31.040123, 21.159475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216152, 30.722904, 21.386061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504271, -0.403046, -0.763717,
		0.833973, 0.456763, 0.309607,
		0.224052, -0.793045, 0.566462,
		39.283367, 30.484991, 21.556000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806717, 30.884811, 21.037512>,  <39.126530, 31.040123, 21.159475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806717, 30.884811, 21.037512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.683235, 30.536222, 21.189951>,  <39.609146, 30.327068, 21.281414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.683235, 30.536222, 21.189951>,  <39.806717, 30.884811, 21.037512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683235, 30.536222, 21.189951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421742, -0.484538, -0.766392,
		0.852547, -0.075863, 0.517115,
		-0.308703, -0.871475, 0.381097,
		39.590626, 30.274780, 21.304279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375282, 30.340145, 20.934195>,  <39.806717, 30.884811, 21.037512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375282, 30.340145, 20.934195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.028458, 30.148300, 20.988127>,  <39.820362, 30.033194, 21.020487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.028458, 30.148300, 20.988127>,  <40.375282, 30.340145, 20.934195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028458, 30.148300, 20.988127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263353, -0.670961, -0.693149,
		0.422909, -0.565494, 0.708071,
		-0.867060, -0.479612, 0.134831,
		39.768341, 30.004417, 21.028576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574474, 29.633003, 20.904352>,  <40.375282, 30.340145, 20.934195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574474, 29.633003, 20.904352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179214, 29.589203, 20.861315>,  <39.942059, 29.562922, 20.835493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179214, 29.589203, 20.861315>,  <40.574474, 29.633003, 20.904352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179214, 29.589203, 20.861315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153302, -0.666832, -0.729269,
		0.008110, -0.737119, 0.675715,
		-0.988146, -0.109503, -0.107593,
		39.882771, 29.556353, 20.829037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504230, 28.908953, 20.876060>,  <40.574474, 29.633003, 20.904352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504230, 28.908953, 20.876060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179829, 29.068380, 20.704756>,  <39.985188, 29.164038, 20.601973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179829, 29.068380, 20.704756>,  <40.504230, 28.908953, 20.876060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179829, 29.068380, 20.704756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078332, -0.799412, -0.595654,
		-0.579765, -0.449534, 0.679552,
		-0.811009, 0.398571, -0.428259,
		39.936527, 29.187952, 20.576279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062626, 28.331635, 20.821096>,  <40.504230, 28.908953, 20.876060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062626, 28.331635, 20.821096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974045, 28.615330, 20.553383>,  <39.920895, 28.785547, 20.392756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.974045, 28.615330, 20.553383>,  <40.062626, 28.331635, 20.821096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974045, 28.615330, 20.553383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014781, -0.683802, -0.729517,
		-0.975059, -0.171448, 0.140948,
		-0.221455, 0.709239, -0.669282,
		39.907608, 28.828102, 20.352598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638599, 27.982473, 20.372122>,  <40.062626, 28.331635, 20.821096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638599, 27.982473, 20.372122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728134, 28.315119, 20.168821>,  <39.781857, 28.514706, 20.046841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.728134, 28.315119, 20.168821>,  <39.638599, 27.982473, 20.372122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728134, 28.315119, 20.168821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251987, -0.553132, -0.794070,
		-0.941487, 0.049673, -0.333369,
		0.223841, 0.831612, -0.508249,
		39.795288, 28.564602, 20.016346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958824, 28.103273, 20.307083>,  <39.638599, 27.982473, 20.372122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958824, 28.103273, 20.307083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932961, 27.712643, 20.389172>,  <38.917442, 27.478264, 20.438425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932961, 27.712643, 20.389172>,  <38.958824, 28.103273, 20.307083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932961, 27.712643, 20.389172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095164, 0.210750, 0.972897,
		-0.993359, 0.043379, -0.106562,
		-0.064661, -0.976577, 0.205222,
		38.913563, 27.419670, 20.450739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411343, 28.095196, 20.751871>,  <38.958824, 28.103273, 20.307083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411343, 28.095196, 20.751871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576763, 27.736710, 20.816093>,  <38.676014, 27.521618, 20.854628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576763, 27.736710, 20.816093>,  <38.411343, 28.095196, 20.751871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576763, 27.736710, 20.816093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329705, 0.016965, 0.943932,
		-0.848688, -0.443299, -0.288470,
		0.413550, -0.896213, 0.160556,
		38.700829, 27.467846, 20.864260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808979, 27.668480, 20.808937>,  <38.411343, 28.095196, 20.751871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808979, 27.668480, 20.808937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132626, 27.529263, 20.998333>,  <38.326813, 27.445732, 21.111971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.132626, 27.529263, 20.998333>,  <37.808979, 27.668480, 20.808937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132626, 27.529263, 20.998333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488143, 0.050522, 0.871300,
		-0.327172, -0.936116, -0.129017,
		0.809120, -0.348044, 0.473487,
		38.375362, 27.424849, 21.140379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592243, 27.143536, 21.243036>,  <37.808979, 27.668480, 20.808937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592243, 27.143536, 21.243036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953262, 27.238062, 21.387018>,  <38.169872, 27.294777, 21.473408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953262, 27.238062, 21.387018>,  <37.592243, 27.143536, 21.243036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953262, 27.238062, 21.387018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374493, 0.018187, 0.927051,
		0.212532, -0.971506, 0.104914,
		0.902544, 0.236317, 0.359957,
		38.224026, 27.308956, 21.495005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783386, 26.641960, 21.867449>,  <37.592243, 27.143536, 21.243036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783386, 26.641960, 21.867449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.005787, 26.969004, 21.927280>,  <38.139229, 27.165230, 21.963181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.005787, 26.969004, 21.927280>,  <37.783386, 26.641960, 21.867449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005787, 26.969004, 21.927280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331693, 0.053247, 0.941884,
		0.762129, -0.573305, 0.300801,
		0.556003, 0.817610, 0.149581,
		38.172588, 27.214287, 21.972155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096359, 26.518301, 22.525639>,  <37.783386, 26.641960, 21.867449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096359, 26.518301, 22.525639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173752, 26.905056, 22.459074>,  <38.220188, 27.137110, 22.419134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173752, 26.905056, 22.459074>,  <38.096359, 26.518301, 22.525639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173752, 26.905056, 22.459074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022180, 0.165265, 0.986000,
		0.980853, -0.194467, 0.010531,
		0.193485, 0.966887, -0.166414,
		38.231796, 27.195122, 22.409149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453678, 26.644617, 23.008217>,  <38.096359, 26.518301, 22.525639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453678, 26.644617, 23.008217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354370, 27.017139, 22.901609>,  <38.294785, 27.240652, 22.837645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354370, 27.017139, 22.901609>,  <38.453678, 26.644617, 23.008217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354370, 27.017139, 22.901609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033792, 0.283291, 0.958439,
		0.968102, 0.228943, -0.101803,
		-0.248268, 0.931306, -0.266518,
		38.279888, 27.296532, 22.821653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898396, 27.082180, 23.434397>,  <38.453678, 26.644617, 23.008217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898396, 27.082180, 23.434397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581650, 27.292194, 23.309635>,  <38.391602, 27.418203, 23.234777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581650, 27.292194, 23.309635>,  <38.898396, 27.082180, 23.434397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581650, 27.292194, 23.309635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201356, 0.257708, 0.945009,
		0.576546, 0.811124, -0.098350,
		-0.791865, 0.525038, -0.311906,
		38.344090, 27.449705, 23.216063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549824, 27.334152, 23.575968>,  <38.898396, 27.082180, 23.434397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549824, 27.334152, 23.575968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704033, 27.038403, 23.796764>,  <39.796558, 26.860952, 23.929241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704033, 27.038403, 23.796764>,  <39.549824, 27.334152, 23.575968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704033, 27.038403, 23.796764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519921, -0.320144, -0.791953,
		0.762267, 0.592310, 0.260993,
		0.385526, -0.739376, 0.551990,
		39.819691, 26.816589, 23.962360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232704, 27.395679, 23.412975>,  <39.549824, 27.334152, 23.575968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232704, 27.395679, 23.412975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207611, 27.025652, 23.562807>,  <40.192554, 26.803635, 23.652706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.207611, 27.025652, 23.562807>,  <40.232704, 27.395679, 23.412975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207611, 27.025652, 23.562807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674140, -0.316032, -0.667577,
		0.735934, 0.210636, 0.643454,
		-0.062736, -0.925071, 0.374577,
		40.188789, 26.748131, 23.675180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959156, 27.245180, 23.420322>,  <40.232704, 27.395679, 23.412975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959156, 27.245180, 23.420322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718204, 26.925940, 23.415043>,  <40.573635, 26.734394, 23.411875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718204, 26.925940, 23.415043>,  <40.959156, 27.245180, 23.420322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718204, 26.925940, 23.415043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451473, -0.327026, -0.830196,
		0.658267, -0.506049, 0.557315,
		-0.602376, -0.798103, -0.013197,
		40.537491, 26.686508, 23.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394665, 26.769951, 23.157469>,  <40.959156, 27.245180, 23.420322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394665, 26.769951, 23.157469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.043900, 26.583897, 23.109030>,  <40.833439, 26.472263, 23.079966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.043900, 26.583897, 23.109030>,  <41.394665, 26.769951, 23.157469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043900, 26.583897, 23.109030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361288, -0.471720, -0.804333,
		0.317000, -0.749084, 0.581708,
		-0.876916, -0.465138, -0.121100,
		40.780823, 26.444355, 23.072701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525387, 26.006357, 23.004917>,  <41.394665, 26.769951, 23.157469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525387, 26.006357, 23.004917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149426, 26.043615, 22.873520>,  <40.923847, 26.065969, 22.794682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149426, 26.043615, 22.873520>,  <41.525387, 26.006357, 23.004917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149426, 26.043615, 22.873520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175370, -0.693787, -0.698502,
		-0.292967, -0.714131, 0.635757,
		-0.939902, 0.093145, -0.328494,
		40.867455, 26.071558, 22.774971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262093, 25.329311, 22.800190>,  <41.525387, 26.006357, 23.004917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262093, 25.329311, 22.800190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.024799, 25.595539, 22.619045>,  <40.882423, 25.755276, 22.510359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.024799, 25.595539, 22.619045>,  <41.262093, 25.329311, 22.800190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024799, 25.595539, 22.619045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161514, -0.452701, -0.876912,
		-0.788660, -0.593360, 0.161060,
		-0.593237, 0.665572, -0.452863,
		40.846828, 25.795210, 22.483187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819321, 24.924030, 22.471558>,  <41.262093, 25.329311, 22.800190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819321, 24.924030, 22.471558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770542, 25.271976, 22.280367>,  <40.741276, 25.480743, 22.165651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770542, 25.271976, 22.280367>,  <40.819321, 24.924030, 22.471558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770542, 25.271976, 22.280367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036304, -0.477342, -0.877968,
		-0.991872, -0.124419, 0.026631,
		-0.121948, 0.869865, -0.477979,
		40.733959, 25.532936, 22.136972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264084, 24.742735, 22.078547>,  <40.819321, 24.924030, 22.471558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264084, 24.742735, 22.078547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465237, 25.042807, 21.906809>,  <40.585930, 25.222849, 21.803766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465237, 25.042807, 21.906809>,  <40.264084, 24.742735, 22.078547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465237, 25.042807, 21.906809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045284, -0.473174, -0.879804,
		-0.863166, 0.461883, -0.203981,
		0.502886, 0.750180, -0.429344,
		40.616104, 25.267860, 21.778006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815136, 25.019545, 21.394358>,  <40.264084, 24.742735, 22.078547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815136, 25.019545, 21.394358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210835, 25.077950, 21.397764>,  <40.448254, 25.112991, 21.399809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210835, 25.077950, 21.397764>,  <39.815136, 25.019545, 21.394358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210835, 25.077950, 21.397764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082047, -0.505789, -0.858747,
		-0.121079, 0.850211, -0.512329,
		0.989246, 0.146011, 0.008517,
		40.507607, 25.121754, 21.400320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.058483, 34.355164, 34.862846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444237, 34.343689, 34.757664>,  <38.675690, 34.336803, 34.694553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.444237, 34.343689, 34.757664>,  <38.058483, 34.355164, 34.862846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444237, 34.343689, 34.757664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237974, -0.528102, -0.815154,
		-0.115488, 0.848696, -0.516117,
		0.964381, -0.028682, -0.262958,
		38.733551, 34.335083, 34.678776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109962, 34.518215, 34.138660>,  <38.058483, 34.355164, 34.862846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109962, 34.518215, 34.138660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434666, 34.306969, 34.238373>,  <38.629490, 34.180222, 34.298199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434666, 34.306969, 34.238373>,  <38.109962, 34.518215, 34.138660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434666, 34.306969, 34.238373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229532, -0.681031, -0.695350,
		0.536993, 0.507239, -0.674053,
		0.811760, -0.528115, 0.249281,
		38.678192, 34.148533, 34.313156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562904, 34.395210, 33.485909>,  <38.109962, 34.518215, 34.138660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562904, 34.395210, 33.485909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630821, 34.112427, 33.760536>,  <38.671570, 33.942757, 33.925312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.630821, 34.112427, 33.760536>,  <38.562904, 34.395210, 33.485909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630821, 34.112427, 33.760536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175551, -0.707240, -0.684831,
		0.969718, -0.004251, -0.244190,
		0.169789, -0.706961, 0.686570,
		38.681759, 33.900337, 33.966507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082912, 34.062210, 33.267620>,  <38.562904, 34.395210, 33.485909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082912, 34.062210, 33.267620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920845, 33.807297, 33.529827>,  <38.823605, 33.654346, 33.687149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920845, 33.807297, 33.529827>,  <39.082912, 34.062210, 33.267620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920845, 33.807297, 33.529827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011662, -0.713344, -0.700717,
		0.914166, -0.291556, 0.281596,
		-0.405173, -0.637287, 0.655515,
		38.799294, 33.616112, 33.726482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478745, 33.371567, 33.143990>,  <39.082912, 34.062210, 33.267620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478745, 33.371567, 33.143990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136475, 33.276745, 33.328003>,  <38.931114, 33.219852, 33.438412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136475, 33.276745, 33.328003>,  <39.478745, 33.371567, 33.143990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136475, 33.276745, 33.328003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098388, -0.798190, -0.594317,
		0.508082, -0.553802, 0.659663,
		-0.855671, -0.237059, 0.460034,
		38.879772, 33.205627, 33.466011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529480, 32.611629, 33.357605>,  <39.478745, 33.371567, 33.143990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529480, 32.611629, 33.357605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136318, 32.673954, 33.396858>,  <38.900421, 32.711349, 33.420410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.136318, 32.673954, 33.396858>,  <39.529480, 32.611629, 33.357605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136318, 32.673954, 33.396858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183848, -0.860302, -0.475479,
		0.010340, -0.485390, 0.874236,
		-0.982900, 0.155810, 0.098134,
		38.841450, 32.720695, 33.426300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253956, 32.068653, 33.677444>,  <39.529480, 32.611629, 33.357605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253956, 32.068653, 33.677444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955418, 32.226753, 33.463249>,  <38.776295, 32.321613, 33.334732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955418, 32.226753, 33.463249>,  <39.253956, 32.068653, 33.677444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955418, 32.226753, 33.463249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044996, -0.832690, -0.551909,
		-0.664037, -0.387819, 0.639259,
		-0.746345, 0.395252, -0.535486,
		38.731514, 32.345329, 33.302605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861557, 31.472446, 33.485260>,  <39.253956, 32.068653, 33.677444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861557, 31.472446, 33.485260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672600, 31.756765, 33.276794>,  <38.559223, 31.927357, 33.151714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672600, 31.756765, 33.276794>,  <38.861557, 31.472446, 33.485260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672600, 31.756765, 33.276794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339962, -0.692485, -0.636310,
		-0.813183, -0.123416, 0.568772,
		-0.472397, 0.710797, -0.521160,
		38.530880, 31.970005, 33.120445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404987, 31.035931, 33.126690>,  <38.861557, 31.472446, 33.485260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404987, 31.035931, 33.126690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454010, 31.372925, 32.916851>,  <38.483425, 31.575121, 32.790947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454010, 31.372925, 32.916851>,  <38.404987, 31.035931, 33.126690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454010, 31.372925, 32.916851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125856, -0.511119, -0.850246,
		-0.984449, 0.170230, 0.043389,
		0.122560, 0.842484, -0.524595,
		38.490780, 31.625669, 32.759472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825336, 31.072596, 32.654083>,  <38.404987, 31.035931, 33.126690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825336, 31.072596, 32.654083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149223, 31.270681, 32.528145>,  <38.343555, 31.389534, 32.452583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149223, 31.270681, 32.528145>,  <37.825336, 31.072596, 32.654083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149223, 31.270681, 32.528145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044967, -0.482580, -0.874697,
		-0.585101, 0.722411, -0.368483,
		0.809713, 0.495217, -0.314843,
		38.392136, 31.419247, 32.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708088, 31.126305, 31.978632>,  <37.825336, 31.072596, 32.654083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708088, 31.126305, 31.978632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103951, 31.182421, 31.990660>,  <38.341469, 31.216091, 31.997877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103951, 31.182421, 31.990660>,  <37.708088, 31.126305, 31.978632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103951, 31.182421, 31.990660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083968, -0.396376, -0.914240,
		-0.116340, 0.907306, -0.404055,
		0.989654, 0.140290, 0.030070,
		38.400848, 31.224508, 31.999681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894196, 31.553461, 31.392193>,  <37.708088, 31.126305, 31.978632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894196, 31.553461, 31.392193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219952, 31.347002, 31.498291>,  <38.415405, 31.223125, 31.561951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219952, 31.347002, 31.498291>,  <37.894196, 31.553461, 31.392193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219952, 31.347002, 31.498291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108447, -0.313658, -0.943323,
		0.570091, 0.797000, -0.199466,
		0.814393, -0.516149, 0.265246,
		38.464268, 31.192158, 31.577866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372192, 31.861521, 30.942413>,  <37.894196, 31.553461, 31.392193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372192, 31.861521, 30.942413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001392, 31.783833, 30.814068>,  <36.778912, 31.737219, 30.737061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001392, 31.783833, 30.814068>,  <37.372192, 31.861521, 30.942413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001392, 31.783833, 30.814068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350776, 0.751804, 0.558343,
		0.132785, 0.630134, -0.765049,
		-0.926997, -0.194221, -0.320864,
		36.723293, 31.725567, 30.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123383, 32.416195, 30.560251>,  <37.372192, 31.861521, 30.942413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123383, 32.416195, 30.560251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777046, 32.250961, 30.673159>,  <36.569244, 32.151821, 30.740904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777046, 32.250961, 30.673159>,  <37.123383, 32.416195, 30.560251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777046, 32.250961, 30.673159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292642, 0.875752, 0.383952,
		-0.405803, 0.249838, -0.879150,
		-0.865843, -0.413085, 0.282270,
		36.517292, 32.127037, 30.757839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584625, 32.948509, 30.455931>,  <37.123383, 32.416195, 30.560251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584625, 32.948509, 30.455931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412430, 32.681370, 30.698797>,  <36.309113, 32.521084, 30.844517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412430, 32.681370, 30.698797>,  <36.584625, 32.948509, 30.455931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412430, 32.681370, 30.698797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355040, 0.743757, 0.566368,
		-0.829833, 0.028250, -0.557296,
		-0.430493, -0.667853, 0.607164,
		36.283283, 32.481014, 30.880947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838036, 33.121220, 30.476770>,  <36.584625, 32.948509, 30.455931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838036, 33.121220, 30.476770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885799, 32.900658, 30.807030>,  <35.914459, 32.768322, 31.005186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885799, 32.900658, 30.807030>,  <35.838036, 33.121220, 30.476770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885799, 32.900658, 30.807030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484616, 0.693437, 0.533191,
		-0.866538, -0.463791, -0.184415,
		0.119409, -0.551401, 0.825651,
		35.921623, 32.735237, 31.054726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188713, 32.897869, 30.688984>,  <35.838036, 33.121220, 30.476770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188713, 32.897869, 30.688984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405525, 32.901890, 31.025103>,  <35.535614, 32.904305, 31.226774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405525, 32.901890, 31.025103>,  <35.188713, 32.897869, 30.688984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405525, 32.901890, 31.025103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599903, 0.704862, 0.378532,
		-0.588486, -0.709274, 0.388091,
		0.542033, 0.010056, 0.840297,
		35.568134, 32.904907, 31.277191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711544, 33.127686, 31.258165>,  <35.188713, 32.897869, 30.688984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711544, 33.127686, 31.258165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083145, 33.167374, 31.400774>,  <35.306107, 33.191185, 31.486340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083145, 33.167374, 31.400774>,  <34.711544, 33.127686, 31.258165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083145, 33.167374, 31.400774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292409, 0.787282, 0.542848,
		-0.226823, -0.608558, 0.760400,
		0.929004, 0.099217, 0.356521,
		35.361847, 33.197140, 31.507730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524643, 33.059456, 31.939800>,  <34.711544, 33.127686, 31.258165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524643, 33.059456, 31.939800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854980, 33.269573, 31.857773>,  <35.053181, 33.395645, 31.808556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854980, 33.269573, 31.857773>,  <34.524643, 33.059456, 31.939800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854980, 33.269573, 31.857773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305803, 0.722730, 0.619795,
		0.473785, -0.449141, 0.757496,
		0.825840, 0.525294, -0.205070,
		35.102734, 33.427162, 31.796251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768639, 33.294022, 32.630680>,  <34.524643, 33.059456, 31.939800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768639, 33.294022, 32.630680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936726, 33.521812, 32.348091>,  <35.037579, 33.658489, 32.178535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936726, 33.521812, 32.348091>,  <34.768639, 33.294022, 32.630680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936726, 33.521812, 32.348091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216741, 0.819009, 0.531270,
		0.881158, -0.070128, 0.467593,
		0.420220, 0.569479, -0.706477,
		35.062790, 33.692657, 32.136147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351807, 33.681107, 32.974216>,  <34.768639, 33.294022, 32.630680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351807, 33.681107, 32.974216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253487, 33.894711, 32.650631>,  <35.194496, 34.022873, 32.456478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253487, 33.894711, 32.650631>,  <35.351807, 33.681107, 32.974216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253487, 33.894711, 32.650631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008731, 0.833313, 0.552733,
		0.969282, 0.142924, -0.200165,
		-0.245798, 0.534006, -0.808963,
		35.179749, 34.054913, 32.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749287, 34.249367, 33.029053>,  <35.351807, 33.681107, 32.974216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749287, 34.249367, 33.029053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437164, 34.335945, 32.794353>,  <35.249889, 34.387890, 32.653534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.437164, 34.335945, 32.794353>,  <35.749287, 34.249367, 33.029053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437164, 34.335945, 32.794353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116262, 0.871643, 0.476152,
		0.614492, 0.439762, -0.654987,
		-0.780309, 0.216442, -0.586746,
		35.203072, 34.400879, 32.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791656, 34.941292, 32.901913>,  <35.749287, 34.249367, 33.029053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791656, 34.941292, 32.901913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416946, 34.854317, 32.792244>,  <35.192120, 34.802132, 32.726440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416946, 34.854317, 32.792244>,  <35.791656, 34.941292, 32.901913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416946, 34.854317, 32.792244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274709, 0.942309, 0.191283,
		0.216766, 0.254508, -0.942464,
		-0.936775, -0.217440, -0.274176,
		35.135914, 34.789085, 32.709991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580959, 35.510017, 32.523857>,  <35.791656, 34.941292, 32.901913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580959, 35.510017, 32.523857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231369, 35.342945, 32.623219>,  <35.021614, 35.242702, 32.682835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231369, 35.342945, 32.623219>,  <35.580959, 35.510017, 32.523857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231369, 35.342945, 32.623219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341938, 0.891757, 0.296392,
		-0.345313, 0.174102, -0.922197,
		-0.873978, -0.417682, 0.248403,
		34.969177, 35.217640, 32.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028431, 35.893341, 32.227798>,  <35.580959, 35.510017, 32.523857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028431, 35.893341, 32.227798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843479, 35.680988, 32.511875>,  <34.732510, 35.553577, 32.682320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.843479, 35.680988, 32.511875>,  <35.028431, 35.893341, 32.227798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843479, 35.680988, 32.511875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290733, 0.847447, 0.444194,
		-0.837663, -0.001090, -0.546186,
		-0.462380, -0.530879, 0.710191,
		34.704765, 35.521725, 32.724934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384380, 36.234798, 32.313385>,  <35.028431, 35.893341, 32.227798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384380, 36.234798, 32.313385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416012, 36.032772, 32.657166>,  <34.434990, 35.911556, 32.863434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.416012, 36.032772, 32.657166>,  <34.384380, 36.234798, 32.313385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416012, 36.032772, 32.657166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498704, 0.726467, 0.472800,
		-0.863158, -0.466000, -0.194429,
		0.079078, -0.505064, 0.859452,
		34.439735, 35.881252, 32.915001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972126, 36.752022, 32.401821>,  <34.384380, 36.234798, 32.313385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972126, 36.752022, 32.401821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143143, 37.099697, 32.302444>,  <35.245754, 37.308300, 32.242817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143143, 37.099697, 32.302444>,  <34.972126, 36.752022, 32.401821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143143, 37.099697, 32.302444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479884, -0.451131, -0.752457,
		-0.766104, 0.202486, -0.609987,
		0.427546, 0.869184, -0.248444,
		35.271408, 37.360451, 32.227913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736645, 37.029518, 31.798836>,  <34.972126, 36.752022, 32.401821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736645, 37.029518, 31.798836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108154, 37.166225, 31.856216>,  <35.331059, 37.248249, 31.890644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108154, 37.166225, 31.856216>,  <34.736645, 37.029518, 31.798836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108154, 37.166225, 31.856216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287996, -0.421787, -0.859741,
		-0.233322, 0.839818, -0.490170,
		0.928773, 0.341763, 0.143452,
		35.386787, 37.268753, 31.899252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021820, 37.445148, 31.212166>,  <34.736645, 37.029518, 31.798836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021820, 37.445148, 31.212166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320480, 37.275818, 31.417419>,  <35.499676, 37.174217, 31.540571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320480, 37.275818, 31.417419>,  <35.021820, 37.445148, 31.212166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320480, 37.275818, 31.417419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368035, -0.379687, -0.848757,
		0.554133, 0.822576, -0.127693,
		0.746650, -0.423329, 0.513133,
		35.544476, 37.148819, 31.571360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628357, 37.569519, 30.806688>,  <35.021820, 37.445148, 31.212166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628357, 37.569519, 30.806688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730747, 37.263527, 31.043091>,  <35.792183, 37.079933, 31.184933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730747, 37.263527, 31.043091>,  <35.628357, 37.569519, 30.806688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730747, 37.263527, 31.043091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486655, -0.426272, -0.762534,
		0.835249, 0.482809, 0.263163,
		0.255979, -0.764976, 0.591005,
		35.807541, 37.034035, 31.220392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315708, 37.486435, 30.599489>,  <35.628357, 37.569519, 30.806688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315708, 37.486435, 30.599489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202164, 37.149239, 30.782267>,  <36.134037, 36.946922, 30.891933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202164, 37.149239, 30.782267>,  <36.315708, 37.486435, 30.599489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202164, 37.149239, 30.782267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471518, -0.537662, -0.698992,
		0.834922, 0.017042, 0.550104,
		-0.283858, -0.842988, 0.456942,
		36.117004, 36.896343, 30.919350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973984, 36.935158, 30.589647>,  <36.315708, 37.486435, 30.599489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973984, 36.935158, 30.589647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651249, 36.707741, 30.653873>,  <36.457607, 36.571293, 30.692410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651249, 36.707741, 30.653873>,  <36.973984, 36.935158, 30.589647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651249, 36.707741, 30.653873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282778, -0.610284, -0.739994,
		0.518707, -0.551647, 0.653168,
		-0.806833, -0.568541, 0.160565,
		36.409199, 36.537178, 30.702044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164173, 36.307648, 30.386671>,  <36.973984, 36.935158, 30.589647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164173, 36.307648, 30.386671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765125, 36.280407, 30.382502>,  <36.525696, 36.264061, 30.380001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765125, 36.280407, 30.382502>,  <37.164173, 36.307648, 30.386671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765125, 36.280407, 30.382502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050621, -0.621970, -0.781403,
		0.046731, -0.780074, 0.623940,
		-0.997624, -0.068101, -0.010423,
		36.465839, 36.259975, 30.379375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021030, 35.653370, 30.512278>,  <37.164173, 36.307648, 30.386671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021030, 35.653370, 30.512278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694767, 35.787788, 30.323904>,  <36.499008, 35.868439, 30.210880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694767, 35.787788, 30.323904>,  <37.021030, 35.653370, 30.512278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694767, 35.787788, 30.323904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142879, -0.671785, -0.726836,
		-0.560619, -0.660134, 0.499930,
		-0.815654, 0.336049, -0.470935,
		36.450069, 35.888603, 30.182623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664867, 35.021500, 30.260250>,  <37.021030, 35.653370, 30.512278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664867, 35.021500, 30.260250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503086, 35.316605, 30.044058>,  <36.406017, 35.493668, 29.914343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.503086, 35.316605, 30.044058>,  <36.664867, 35.021500, 30.260250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503086, 35.316605, 30.044058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140163, -0.533988, -0.833793,
		-0.903754, -0.412986, 0.112566,
		-0.404454, 0.737766, -0.540479,
		36.381748, 35.537933, 29.881914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999760, 34.743473, 29.913498>,  <36.664867, 35.021500, 30.260250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999760, 34.743473, 29.913498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113171, 35.070950, 29.713755>,  <36.181217, 35.267437, 29.593908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.113171, 35.070950, 29.713755>,  <35.999760, 34.743473, 29.913498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113171, 35.070950, 29.713755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031344, -0.528362, -0.848441,
		-0.958452, 0.224903, -0.175465,
		0.283525, 0.818690, -0.499360,
		36.198227, 35.316555, 29.563946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444584, 34.867908, 29.379673>,  <35.999760, 34.743473, 29.913498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444584, 34.867908, 29.379673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784966, 35.043900, 29.264931>,  <35.989197, 35.149494, 29.196085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784966, 35.043900, 29.264931>,  <35.444584, 34.867908, 29.379673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784966, 35.043900, 29.264931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023314, -0.577250, -0.816234,
		-0.524716, 0.687894, -0.501473,
		0.850958, 0.439982, -0.286855,
		36.040253, 35.175896, 29.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384769, 34.881229, 28.709490>,  <35.444584, 34.867908, 29.379673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384769, 34.881229, 28.709490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772762, 34.958630, 28.768398>,  <36.005558, 35.005070, 28.803743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772762, 34.958630, 28.768398>,  <35.384769, 34.881229, 28.709490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772762, 34.958630, 28.768398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233822, -0.575888, -0.783378,
		-0.066773, 0.794299, -0.603846,
		0.969984, 0.193501, 0.147271,
		36.063759, 35.016682, 28.812580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602139, 35.002293, 28.085264>,  <35.384769, 34.881229, 28.709490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602139, 35.002293, 28.085264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948845, 34.937607, 28.273972>,  <36.156868, 34.898796, 28.387196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948845, 34.937607, 28.273972>,  <35.602139, 35.002293, 28.085264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948845, 34.937607, 28.273972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333876, -0.514536, -0.789797,
		0.370463, 0.842081, -0.391990,
		0.866766, -0.161714, 0.471768,
		36.208874, 34.889091, 28.415503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082626, 35.036282, 27.510040>,  <35.602139, 35.002293, 28.085264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082626, 35.036282, 27.510040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295937, 34.865879, 27.802380>,  <36.423923, 34.763638, 27.977783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295937, 34.865879, 27.802380>,  <36.082626, 35.036282, 27.510040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295937, 34.865879, 27.802380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462891, -0.576181, -0.673608,
		0.708063, 0.697519, -0.110066,
		0.533272, -0.426008, 0.730847,
		36.455917, 34.738075, 28.021633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754139, 35.152008, 27.342669>,  <36.082626, 35.036282, 27.510040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754139, 35.152008, 27.342669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747738, 34.825611, 27.573805>,  <36.743896, 34.629772, 27.712486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747738, 34.825611, 27.573805>,  <36.754139, 35.152008, 27.342669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747738, 34.825611, 27.573805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532762, -0.496005, -0.685670,
		0.846114, 0.296878, 0.442668,
		-0.016005, -0.815992, 0.577842,
		36.742935, 34.580814, 27.747158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533916, 34.757076, 27.297194>,  <36.754139, 35.152008, 27.342669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533916, 34.757076, 27.297194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267017, 34.488945, 27.427084>,  <37.106880, 34.328068, 27.505018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267017, 34.488945, 27.427084>,  <37.533916, 34.757076, 27.297194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267017, 34.488945, 27.427084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436886, -0.705317, -0.558263,
		0.603252, -0.230631, 0.763476,
		-0.667246, -0.670326, 0.324724,
		37.066845, 34.287846, 27.524502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870716, 34.109383, 27.313181>,  <37.533916, 34.757076, 27.297194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870716, 34.109383, 27.313181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503387, 33.960636, 27.367435>,  <37.282990, 33.871387, 27.399988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503387, 33.960636, 27.367435>,  <37.870716, 34.109383, 27.313181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503387, 33.960636, 27.367435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275201, -0.846113, -0.456461,
		0.284505, -0.381852, 0.879344,
		-0.918325, -0.371862, 0.135638,
		37.227890, 33.849079, 27.408127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810810, 33.449379, 27.427565>,  <37.870716, 34.109383, 27.313181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810810, 33.449379, 27.427565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435387, 33.478191, 27.292559>,  <37.210133, 33.495480, 27.211555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.435387, 33.478191, 27.292559>,  <37.810810, 33.449379, 27.427565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435387, 33.478191, 27.292559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196563, -0.692269, -0.694353,
		-0.283669, -0.718035, 0.635577,
		-0.938560, 0.072035, -0.337514,
		37.153820, 33.499802, 27.191305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469257, 32.815308, 27.547588>,  <37.810810, 33.449379, 27.427565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469257, 32.815308, 27.547588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247509, 32.987083, 27.262419>,  <37.114460, 33.090149, 27.091318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247509, 32.987083, 27.262419>,  <37.469257, 32.815308, 27.547588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247509, 32.987083, 27.262419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150021, -0.791008, -0.593128,
		-0.818640, -0.435764, 0.374083,
		-0.554366, 0.429438, -0.712924,
		37.081196, 33.115913, 27.048542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971916, 32.193684, 27.330433>,  <37.469257, 32.815308, 27.547588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971916, 32.193684, 27.330433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977623, 32.448833, 27.022430>,  <36.981049, 32.601925, 26.837629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977623, 32.448833, 27.022430>,  <36.971916, 32.193684, 27.330433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977623, 32.448833, 27.022430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270553, -0.743821, -0.611172,
		-0.962599, -0.199605, -0.183195,
		0.014271, 0.637878, -0.770005,
		36.981903, 32.640198, 26.791430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700245, 31.799158, 26.698610>,  <36.971916, 32.193684, 27.330433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700245, 31.799158, 26.698610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886772, 32.104439, 26.519693>,  <36.998688, 32.287609, 26.412342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886772, 32.104439, 26.519693>,  <36.700245, 31.799158, 26.698610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886772, 32.104439, 26.519693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310899, -0.614770, -0.724845,
		-0.828187, 0.198942, -0.523955,
		0.466314, 0.763204, -0.447294,
		37.026665, 32.333401, 26.385506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452740, 31.803213, 25.980762>,  <36.700245, 31.799158, 26.698610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452740, 31.803213, 25.980762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780964, 32.031666, 25.989655>,  <36.977898, 32.168739, 25.994989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780964, 32.031666, 25.989655>,  <36.452740, 31.803213, 25.980762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780964, 32.031666, 25.989655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268315, -0.350569, -0.897279,
		-0.504672, 0.742233, -0.440905,
		0.820557, 0.571133, 0.022229,
		37.027130, 32.203007, 25.996323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500317, 32.232449, 25.382782>,  <36.452740, 31.803213, 25.980762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500317, 32.232449, 25.382782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882126, 32.237991, 25.501909>,  <37.111210, 32.241318, 25.573385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882126, 32.237991, 25.501909>,  <36.500317, 32.232449, 25.382782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882126, 32.237991, 25.501909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288588, -0.293761, -0.911275,
		0.074861, 0.955779, -0.284400,
		0.954522, 0.013855, 0.297817,
		37.168484, 32.242149, 25.591255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798897, 32.532406, 24.820848>,  <36.500317, 32.232449, 25.382782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798897, 32.532406, 24.820848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113415, 32.371021, 25.008018>,  <37.302124, 32.274189, 25.120321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.113415, 32.371021, 25.008018>,  <36.798897, 32.532406, 24.820848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113415, 32.371021, 25.008018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414619, -0.216925, -0.883761,
		0.458072, 0.888909, -0.003283,
		0.786296, -0.403465, 0.467926,
		37.349304, 32.249981, 25.148396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477428, 32.773331, 24.397326>,  <36.798897, 32.532406, 24.820848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477428, 32.773331, 24.397326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576725, 32.456345, 24.620169>,  <37.636303, 32.266151, 24.753874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576725, 32.456345, 24.620169>,  <37.477428, 32.773331, 24.397326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576725, 32.456345, 24.620169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456931, -0.411315, -0.788691,
		0.854160, 0.450348, 0.259997,
		0.248245, -0.792469, 0.557107,
		37.651199, 32.218605, 24.787300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322247, 32.674156, 24.458220>,  <37.477428, 32.773331, 24.397326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322247, 32.674156, 24.458220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135242, 32.327530, 24.528076>,  <38.023041, 32.119553, 24.569990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.135242, 32.327530, 24.528076>,  <38.322247, 32.674156, 24.458220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135242, 32.327530, 24.528076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570664, -0.446737, -0.689034,
		0.675113, -0.222467, 0.703371,
		-0.467510, -0.866565, 0.174643,
		37.994991, 32.067562, 24.580469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762577, 32.269093, 24.655922>,  <38.322247, 32.674156, 24.458220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762577, 32.269093, 24.655922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485580, 32.026821, 24.499149>,  <38.319382, 31.881458, 24.405087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485580, 32.026821, 24.499149>,  <38.762577, 32.269093, 24.655922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485580, 32.026821, 24.499149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687947, -0.390830, -0.611539,
		0.217217, -0.693114, 0.687321,
		-0.692493, -0.605677, -0.391931,
		38.277832, 31.845118, 24.381571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165134, 31.678686, 24.366642>,  <38.762577, 32.269093, 24.655922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165134, 31.678686, 24.366642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802670, 31.641680, 24.201567>,  <38.585190, 31.619476, 24.102522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802670, 31.641680, 24.201567>,  <39.165134, 31.678686, 24.366642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802670, 31.641680, 24.201567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384845, -0.585049, -0.713871,
		-0.175396, -0.805704, 0.565754,
		-0.906163, -0.092517, -0.412686,
		38.530819, 31.613924, 24.077761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476402, 31.816090, 25.055449>,  <39.165134, 31.678686, 24.366642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476402, 31.816090, 25.055449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.683765, 31.476385, 25.015442>,  <39.808186, 31.272562, 24.991438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.683765, 31.476385, 25.015442>,  <39.476402, 31.816090, 25.055449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683765, 31.476385, 25.015442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573297, 0.258386, 0.777539,
		-0.634492, -0.460424, 0.620830,
		0.518412, -0.849262, -0.100016,
		39.839291, 31.221607, 24.985437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465675, 31.241398, 25.671776>,  <39.476402, 31.816090, 25.055449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465675, 31.241398, 25.671776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808960, 31.278761, 25.469887>,  <40.014931, 31.301178, 25.348753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808960, 31.278761, 25.469887>,  <39.465675, 31.241398, 25.671776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808960, 31.278761, 25.469887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448778, 0.340723, 0.826139,
		0.249136, -0.935512, 0.250495,
		0.858213, 0.093404, -0.504724,
		40.066425, 31.306784, 25.318470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116592, 30.854225, 25.950624>,  <39.465675, 31.241398, 25.671776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116592, 30.854225, 25.950624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257515, 31.169367, 25.748569>,  <40.342068, 31.358452, 25.627337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257515, 31.169367, 25.748569>,  <40.116592, 30.854225, 25.950624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257515, 31.169367, 25.748569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451701, 0.329574, 0.829064,
		0.819664, -0.520254, -0.239764,
		0.352304, 0.787856, -0.505139,
		40.363205, 31.405724, 25.597027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730286, 31.012478, 26.151674>,  <40.116592, 30.854225, 25.950624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730286, 31.012478, 26.151674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.627560, 31.357353, 25.977009>,  <40.565926, 31.564280, 25.872210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.627560, 31.357353, 25.977009>,  <40.730286, 31.012478, 26.151674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627560, 31.357353, 25.977009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398517, 0.506090, 0.764890,
		0.880472, 0.022417, -0.473568,
		-0.256814, 0.862189, -0.436664,
		40.550514, 31.616011, 25.846010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291027, 31.534103, 26.061901>,  <40.730286, 31.012478, 26.151674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291027, 31.534103, 26.061901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948631, 31.740601, 26.050816>,  <40.743195, 31.864500, 26.044165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.948631, 31.740601, 26.050816>,  <41.291027, 31.534103, 26.061901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948631, 31.740601, 26.050816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352178, 0.621522, 0.699772,
		0.378479, 0.589239, -0.713828,
		-0.855993, 0.516244, -0.027715,
		40.691833, 31.895473, 26.042501>
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
