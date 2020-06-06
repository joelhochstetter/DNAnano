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
	<24.046314, 35.089397, 34.792294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122570, 34.964420, 35.164536>,  <24.168324, 34.889435, 35.387882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122570, 34.964420, 35.164536>,  <24.046314, 35.089397, 34.792294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122570, 34.964420, 35.164536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958548, -0.145248, -0.245131,
		0.211760, 0.938765, 0.271805,
		0.190641, -0.312447, 0.930609,
		24.179762, 34.870686, 35.443718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645336, 35.435139, 35.157566>,  <24.046314, 35.089397, 34.792294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645336, 35.435139, 35.157566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587219, 35.052895, 35.260094>,  <24.552349, 34.823547, 35.321609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587219, 35.052895, 35.260094>,  <24.645336, 35.435139, 35.157566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587219, 35.052895, 35.260094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926087, -0.222529, -0.304702,
		0.348215, 0.193100, 0.917311,
		-0.145290, -0.955611, 0.256316,
		24.543633, 34.766212, 35.336987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265396, 35.238693, 35.344265>,  <24.645336, 35.435139, 35.157566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265396, 35.238693, 35.344265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083286, 34.889858, 35.272499>,  <24.974020, 34.680557, 35.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083286, 34.889858, 35.272499>,  <25.265396, 35.238693, 35.344265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083286, 34.889858, 35.272499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882275, -0.414813, -0.222533,
		0.119643, -0.259610, 0.958274,
		-0.455276, -0.872086, -0.179418,
		24.946703, 34.628231, 35.218674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753122, 34.808868, 35.587635>,  <25.265396, 35.238693, 35.344265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753122, 34.808868, 35.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517405, 34.602985, 35.338539>,  <25.375973, 34.479454, 35.189083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517405, 34.602985, 35.338539>,  <25.753122, 34.808868, 35.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517405, 34.602985, 35.338539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807904, -0.379925, -0.450498,
		-0.004719, -0.768591, 0.639723,
		-0.589295, -0.514709, -0.622740,
		25.340616, 34.448574, 35.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956320, 34.074310, 35.599934>,  <25.753122, 34.808868, 35.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956320, 34.074310, 35.599934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815174, 34.165703, 35.236996>,  <25.730486, 34.220539, 35.019234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815174, 34.165703, 35.236996>,  <25.956320, 34.074310, 35.599934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815174, 34.165703, 35.236996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853739, -0.318216, -0.412150,
		-0.382903, -0.920072, -0.082778,
		-0.352866, 0.228484, -0.907348,
		25.709314, 34.234249, 34.964790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796925, 33.571392, 34.946014>,  <25.956320, 34.074310, 35.599934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796925, 33.571392, 34.946014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925669, 33.936352, 34.844868>,  <26.002916, 34.155327, 34.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925669, 33.936352, 34.844868>,  <25.796925, 33.571392, 34.946014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925669, 33.936352, 34.844868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865185, -0.391907, -0.312831,
		-0.384525, -0.118088, -0.915530,
		0.321862, 0.912395, -0.252866,
		26.022226, 34.210072, 34.769009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882837, 33.674854, 34.249664>,  <25.796925, 33.571392, 34.946014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882837, 33.674854, 34.249664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130188, 33.868755, 34.497093>,  <26.278599, 33.985096, 34.645550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130188, 33.868755, 34.497093>,  <25.882837, 33.674854, 34.249664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130188, 33.868755, 34.497093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778647, -0.484471, -0.398743,
		0.106389, 0.728221, -0.677035,
		0.618377, 0.484749, 0.618569,
		26.315701, 34.014179, 34.682663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425919, 33.943684, 33.856205>,  <25.882837, 33.674854, 34.249664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425919, 33.943684, 33.856205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563768, 33.921165, 34.231026>,  <26.646479, 33.907654, 34.455917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563768, 33.921165, 34.231026>,  <26.425919, 33.943684, 33.856205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563768, 33.921165, 34.231026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892105, -0.291073, -0.345579,
		0.292205, 0.955043, -0.050090,
		0.344623, -0.056294, 0.937052,
		26.667154, 33.904278, 34.512142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019297, 34.382950, 33.954300>,  <26.425919, 33.943684, 33.856205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019297, 34.382950, 33.954300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062166, 34.098988, 34.232738>,  <27.087889, 33.928612, 34.399803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062166, 34.098988, 34.232738>,  <27.019297, 34.382950, 33.954300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062166, 34.098988, 34.232738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914798, -0.203823, -0.348713,
		0.389433, 0.674159, 0.627575,
		0.107174, -0.709905, 0.696095,
		27.094318, 33.886017, 34.441566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683050, 34.453979, 34.093273>,  <27.019297, 34.382950, 33.954300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683050, 34.453979, 34.093273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584435, 34.094444, 34.238216>,  <27.525265, 33.878723, 34.325184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584435, 34.094444, 34.238216>,  <27.683050, 34.453979, 34.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584435, 34.094444, 34.238216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852830, -0.378814, -0.359417,
		0.460325, 0.220419, 0.859951,
		-0.246539, -0.898841, 0.362358,
		27.510473, 33.824791, 34.346924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363258, 34.055687, 34.440975>,  <27.683050, 34.453979, 34.093273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363258, 34.055687, 34.440975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103388, 33.780296, 34.312027>,  <27.947466, 33.615063, 34.234657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103388, 33.780296, 34.312027>,  <28.363258, 34.055687, 34.440975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103388, 33.780296, 34.312027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714683, -0.408587, -0.567701,
		0.259134, -0.599212, 0.757493,
		-0.649675, -0.688478, -0.322368,
		27.908485, 33.573753, 34.215317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861473, 33.579357, 34.221554>,  <28.363258, 34.055687, 34.440975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861473, 33.579357, 34.221554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514557, 33.479225, 34.049442>,  <28.306406, 33.419147, 33.946175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514557, 33.479225, 34.049442>,  <28.861473, 33.579357, 34.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514557, 33.479225, 34.049442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497260, -0.395411, -0.772258,
		0.023180, -0.883734, 0.467414,
		-0.867292, -0.250327, -0.430280,
		28.254370, 33.404125, 33.920357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005095, 32.848137, 34.010090>,  <28.861473, 33.579357, 34.221554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005095, 32.848137, 34.010090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727209, 32.990959, 33.760330>,  <28.560478, 33.076653, 33.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727209, 32.990959, 33.760330>,  <29.005095, 32.848137, 34.010090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727209, 32.990959, 33.760330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507319, -0.372154, -0.777258,
		-0.509900, -0.856745, 0.077399,
		-0.694716, 0.357058, -0.624404,
		28.518795, 33.098076, 33.573009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076132, 32.408913, 33.432014>,  <29.005095, 32.848137, 34.010090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076132, 32.408913, 33.432014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845610, 32.693947, 33.271965>,  <28.707296, 32.864967, 33.175934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845610, 32.693947, 33.271965>,  <29.076132, 32.408913, 33.432014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845610, 32.693947, 33.271965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301942, -0.269302, -0.914498,
		-0.759411, -0.647843, -0.059959,
		-0.576304, 0.712584, -0.400122,
		28.672718, 32.907722, 33.151928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691414, 32.112823, 32.963215>,  <29.076132, 32.408913, 33.432014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691414, 32.112823, 32.963215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697937, 32.497353, 32.853237>,  <28.701851, 32.728069, 32.787251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697937, 32.497353, 32.853237>,  <28.691414, 32.112823, 32.963215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697937, 32.497353, 32.853237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470950, -0.249955, -0.846007,
		-0.882009, -0.115692, -0.456810,
		0.016306, 0.961321, -0.274948,
		28.702829, 32.785748, 32.770752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286785, 32.131252, 32.354790>,  <28.691414, 32.112823, 32.963215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286785, 32.131252, 32.354790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559683, 32.422775, 32.378044>,  <28.723421, 32.597691, 32.391998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559683, 32.422775, 32.378044>,  <28.286785, 32.131252, 32.354790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559683, 32.422775, 32.378044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433181, -0.338878, -0.835174,
		-0.588981, 0.594977, -0.546904,
		0.682243, 0.728810, 0.058140,
		28.764357, 32.641418, 32.395485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301985, 32.409458, 31.674070>,  <28.286785, 32.131252, 32.354790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301985, 32.409458, 31.674070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637081, 32.512638, 31.866590>,  <28.838139, 32.574547, 31.982103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637081, 32.512638, 31.866590>,  <28.301985, 32.409458, 31.674070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637081, 32.512638, 31.866590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531115, -0.180041, -0.827951,
		-0.126918, 0.949234, -0.287829,
		0.837740, 0.257952, 0.481302,
		28.888403, 32.590023, 32.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567636, 32.832848, 31.171083>,  <28.301985, 32.409458, 31.674070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567636, 32.832848, 31.171083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868153, 32.747467, 31.420883>,  <29.048462, 32.696239, 31.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868153, 32.747467, 31.420883>,  <28.567636, 32.832848, 31.171083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868153, 32.747467, 31.420883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611110, -0.132317, -0.780408,
		0.249210, 0.967952, 0.031033,
		0.751291, -0.213450, 0.624500,
		29.093540, 32.683434, 31.608232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159748, 33.125328, 30.828360>,  <28.567636, 32.832848, 31.171083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159748, 33.125328, 30.828360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332550, 32.856834, 31.069298>,  <29.436232, 32.695740, 31.213861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332550, 32.856834, 31.069298>,  <29.159748, 33.125328, 30.828360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332550, 32.856834, 31.069298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609684, -0.274793, -0.743488,
		0.664573, 0.688431, 0.290527,
		0.432005, -0.671231, 0.602345,
		29.462152, 32.655464, 31.250002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796246, 33.279320, 30.796967>,  <29.159748, 33.125328, 30.828360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796246, 33.279320, 30.796967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779573, 32.895519, 30.908413>,  <29.769569, 32.665241, 30.975281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779573, 32.895519, 30.908413>,  <29.796246, 33.279320, 30.796967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779573, 32.895519, 30.908413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697946, -0.227502, -0.679054,
		0.714936, 0.166155, 0.679160,
		-0.041682, -0.959498, 0.278617,
		29.767069, 32.607670, 30.991999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486416, 33.141705, 30.890549>,  <29.796246, 33.279320, 30.796967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486416, 33.141705, 30.890549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297413, 32.791492, 30.850197>,  <30.184011, 32.581364, 30.825985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297413, 32.791492, 30.850197>,  <30.486416, 33.141705, 30.890549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297413, 32.791492, 30.850197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627179, -0.253626, -0.736424,
		0.619178, -0.411236, 0.668957,
		-0.472509, -0.875533, -0.100879,
		30.155661, 32.528831, 30.819933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046337, 32.689220, 30.698709>,  <30.486416, 33.141705, 30.890549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046337, 32.689220, 30.698709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715946, 32.481468, 30.611073>,  <30.517712, 32.356815, 30.558491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715946, 32.481468, 30.611073>,  <31.046337, 32.689220, 30.698709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715946, 32.481468, 30.611073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426261, -0.321158, -0.845671,
		0.368862, -0.791897, 0.486661,
		-0.825980, -0.519381, -0.219092,
		30.468153, 32.325653, 30.545345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235485, 32.016304, 30.654100>,  <31.046337, 32.689220, 30.698709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235485, 32.016304, 30.654100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894440, 32.046707, 30.447308>,  <30.689812, 32.064949, 30.323231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894440, 32.046707, 30.447308>,  <31.235485, 32.016304, 30.654100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894440, 32.046707, 30.447308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472580, -0.310011, -0.824962,
		-0.222975, -0.947690, 0.228399,
		-0.852614, 0.076009, -0.516984,
		30.638655, 32.069511, 30.292212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198622, 31.442499, 30.185734>,  <31.235485, 32.016304, 30.654100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198622, 31.442499, 30.185734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942438, 31.708094, 30.031366>,  <30.788727, 31.867451, 29.938745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942438, 31.708094, 30.031366>,  <31.198622, 31.442499, 30.185734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942438, 31.708094, 30.031366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232161, -0.311606, -0.921414,
		-0.732061, -0.679724, 0.045420,
		-0.640460, 0.663986, -0.385920,
		30.750299, 31.907290, 29.915590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012749, 31.043484, 29.555931>,  <31.198622, 31.442499, 30.185734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012749, 31.043484, 29.555931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910564, 31.424627, 29.490450>,  <30.849253, 31.653313, 29.451160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910564, 31.424627, 29.490450>,  <31.012749, 31.043484, 29.555931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910564, 31.424627, 29.490450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304369, -0.081452, -0.949066,
		-0.917659, -0.292277, -0.269212,
		-0.255462, 0.952859, -0.163705,
		30.833925, 31.710485, 29.441338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591179, 31.059889, 28.903542>,  <31.012749, 31.043484, 29.555931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591179, 31.059889, 28.903542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781616, 31.403418, 28.979183>,  <30.895878, 31.609535, 29.024569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781616, 31.403418, 28.979183>,  <30.591179, 31.059889, 28.903542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781616, 31.403418, 28.979183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336454, 0.020790, -0.941470,
		-0.812487, 0.511852, -0.279056,
		0.476092, 0.858822, 0.189106,
		30.924444, 31.661064, 29.035915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112192, 30.526863, 29.009350>,  <30.591179, 31.059889, 28.903542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112192, 30.526863, 29.009350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162638, 30.290056, 29.327747>,  <30.192905, 30.147972, 29.518785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162638, 30.290056, 29.327747>,  <30.112192, 30.526863, 29.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162638, 30.290056, 29.327747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664295, -0.646330, -0.375460,
		0.736755, -0.481425, -0.474785,
		0.126113, -0.592019, 0.795996,
		30.200472, 30.112450, 29.566545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290455, 29.784882, 28.762503>,  <30.112192, 30.526863, 29.009350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290455, 29.784882, 28.762503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137785, 29.744371, 29.129995>,  <30.046183, 29.720066, 29.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137785, 29.744371, 29.129995>,  <30.290455, 29.784882, 28.762503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137785, 29.744371, 29.129995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462843, -0.839438, -0.284815,
		0.800064, -0.533935, 0.273516,
		-0.381673, -0.101276, 0.918732,
		30.023283, 29.713989, 29.405615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516668, 29.090382, 29.181612>,  <30.290455, 29.784882, 28.762503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516668, 29.090382, 29.181612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158020, 29.254278, 29.248760>,  <29.942831, 29.352615, 29.289049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158020, 29.254278, 29.248760>,  <30.516668, 29.090382, 29.181612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158020, 29.254278, 29.248760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440265, -0.784477, -0.436763,
		-0.047268, -0.465520, 0.883774,
		-0.896623, 0.409740, 0.167872,
		29.889032, 29.377201, 29.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159773, 28.503248, 29.411757>,  <30.516668, 29.090382, 29.181612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159773, 28.503248, 29.411757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894697, 28.776495, 29.288992>,  <29.735653, 28.940443, 29.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894697, 28.776495, 29.288992>,  <30.159773, 28.503248, 29.411757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894697, 28.776495, 29.288992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527976, -0.716807, -0.455444,
		-0.531119, -0.139775, 0.835689,
		-0.662687, 0.683118, -0.306912,
		29.695890, 28.981430, 29.196918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466532, 28.228600, 29.613335>,  <30.159773, 28.503248, 29.411757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466532, 28.228600, 29.613335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461651, 28.450691, 29.280691>,  <29.458723, 28.583946, 29.081106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461651, 28.450691, 29.280691>,  <29.466532, 28.228600, 29.613335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461651, 28.450691, 29.280691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560115, -0.692739, -0.454295,
		-0.828325, 0.460252, 0.319446,
		-0.012202, 0.555230, -0.831607,
		29.457991, 28.617260, 29.031210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735746, 28.117104, 29.525522>,  <29.466532, 28.228600, 29.613335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735746, 28.117104, 29.525522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697304, 27.778734, 29.735350>,  <28.674238, 27.575712, 29.861246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697304, 27.778734, 29.735350>,  <28.735746, 28.117104, 29.525522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697304, 27.778734, 29.735350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533996, 0.488568, 0.690036,
		-0.840008, -0.213803, -0.498674,
		-0.096105, -0.845925, 0.524571,
		28.668472, 27.524956, 29.892721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051304, 28.096220, 29.817858>,  <28.735746, 28.117104, 29.525522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051304, 28.096220, 29.817858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299070, 27.884386, 30.049673>,  <28.447731, 27.757286, 30.188763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299070, 27.884386, 30.049673>,  <28.051304, 28.096220, 29.817858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299070, 27.884386, 30.049673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432842, 0.385492, 0.814889,
		-0.654959, -0.755604, 0.009554,
		0.619416, -0.529584, 0.579539,
		28.484896, 27.725512, 30.223536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637779, 27.630310, 30.366316>,  <28.051304, 28.096220, 29.817858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637779, 27.630310, 30.366316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006779, 27.737295, 30.477642>,  <28.228178, 27.801487, 30.544437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006779, 27.737295, 30.477642>,  <27.637779, 27.630310, 30.366316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006779, 27.737295, 30.477642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376626, 0.465743, 0.800772,
		0.084554, -0.843532, 0.530381,
		0.922499, 0.267464, 0.278316,
		28.283527, 27.817535, 30.561136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859600, 27.428230, 31.115334>,  <27.637779, 27.630310, 30.366316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859600, 27.428230, 31.115334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038218, 27.756689, 30.973167>,  <28.145388, 27.953764, 30.887869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038218, 27.756689, 30.973167>,  <27.859600, 27.428230, 31.115334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038218, 27.756689, 30.973167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392122, 0.536633, 0.747171,
		0.804264, -0.194278, 0.561619,
		0.446542, 0.821146, -0.355413,
		28.172180, 28.003033, 30.866543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515388, 27.841383, 31.530174>,  <27.859600, 27.428230, 31.115334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515388, 27.841383, 31.530174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289156, 28.085718, 31.308546>,  <28.153416, 28.232319, 31.175570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289156, 28.085718, 31.308546>,  <28.515388, 27.841383, 31.530174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289156, 28.085718, 31.308546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241383, 0.519811, 0.819470,
		0.788576, 0.597220, -0.146549,
		-0.565582, 0.610839, -0.554069,
		28.119482, 28.268970, 31.142324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797794, 28.495798, 31.792933>,  <28.515388, 27.841383, 31.530174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797794, 28.495798, 31.792933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431782, 28.530094, 31.635265>,  <28.212173, 28.550671, 31.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431782, 28.530094, 31.635265>,  <28.797794, 28.495798, 31.792933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431782, 28.530094, 31.635265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263295, 0.613346, 0.744636,
		0.305604, 0.785147, -0.538656,
		-0.915031, 0.085738, -0.394166,
		28.157272, 28.555815, 31.517015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747431, 29.167902, 31.834637>,  <28.797794, 28.495798, 31.792933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747431, 29.167902, 31.834637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369108, 29.043940, 31.795847>,  <28.142115, 28.969563, 31.772573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369108, 29.043940, 31.795847>,  <28.747431, 29.167902, 31.834637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369108, 29.043940, 31.795847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269908, 0.584233, 0.765389,
		-0.180545, 0.750086, -0.636219,
		-0.945808, -0.309908, -0.096974,
		28.085365, 28.950968, 31.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358791, 29.779095, 31.762770>,  <28.747431, 29.167902, 31.834637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358791, 29.779095, 31.762770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114296, 29.493027, 31.898371>,  <27.967598, 29.321386, 31.979731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.114296, 29.493027, 31.898371>,  <28.358791, 29.779095, 31.762770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114296, 29.493027, 31.898371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234681, 0.572845, 0.785349,
		-0.755852, 0.400478, -0.517981,
		-0.611239, -0.715168, 0.339001,
		27.930923, 29.278477, 32.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778709, 30.192911, 31.890718>,  <28.358791, 29.779095, 31.762770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778709, 30.192911, 31.890718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778725, 29.850689, 32.097801>,  <27.778734, 29.645355, 32.222050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778725, 29.850689, 32.097801>,  <27.778709, 30.192911, 31.890718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778725, 29.850689, 32.097801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050142, 0.517055, 0.854483,
		-0.998742, -0.025992, -0.042879,
		0.000039, -0.855558, 0.517708,
		27.778736, 29.594021, 32.253113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256493, 30.275517, 32.379520>,  <27.778709, 30.192911, 31.890718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256493, 30.275517, 32.379520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474007, 29.964088, 32.504818>,  <27.604515, 29.777231, 32.579998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474007, 29.964088, 32.504818>,  <27.256493, 30.275517, 32.379520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474007, 29.964088, 32.504818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083876, 0.320970, 0.943368,
		-0.835022, -0.539264, 0.109235,
		0.543786, -0.778571, 0.313248,
		27.637142, 29.730516, 32.598793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960697, 30.093815, 32.971958>,  <27.256493, 30.275517, 32.379520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960697, 30.093815, 32.971958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319262, 29.919641, 33.005035>,  <27.534401, 29.815138, 33.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319262, 29.919641, 33.005035>,  <26.960697, 30.093815, 32.971958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319262, 29.919641, 33.005035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021114, 0.228326, 0.973356,
		-0.442716, -0.870783, 0.213868,
		0.896413, -0.435436, 0.082698,
		27.588186, 29.789011, 33.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868225, 29.748648, 33.647861>,  <26.960697, 30.093815, 32.971958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868225, 29.748648, 33.647861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256580, 29.786013, 33.559635>,  <27.489594, 29.808432, 33.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256580, 29.786013, 33.559635>,  <26.868225, 29.748648, 33.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256580, 29.786013, 33.559635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175897, 0.347007, 0.921220,
		0.162593, -0.933199, 0.320474,
		0.970888, 0.093413, -0.220567,
		27.547848, 29.814037, 33.493465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203623, 29.493479, 34.201973>,  <26.868225, 29.748648, 33.647861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203623, 29.493479, 34.201973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475988, 29.720133, 34.016380>,  <27.639408, 29.856125, 33.905025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475988, 29.720133, 34.016380>,  <27.203623, 29.493479, 34.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475988, 29.720133, 34.016380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245310, 0.420483, 0.873508,
		0.690058, -0.708604, 0.147311,
		0.680913, 0.566635, -0.463985,
		27.680262, 29.890123, 33.877186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915850, 29.332857, 34.595631>,  <27.203623, 29.493479, 34.201973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915850, 29.332857, 34.595631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925680, 29.686886, 34.409710>,  <27.931578, 29.899303, 34.298157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925680, 29.686886, 34.409710>,  <27.915850, 29.332857, 34.595631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925680, 29.686886, 34.409710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402115, 0.416921, 0.815156,
		0.915259, -0.206938, -0.345655,
		0.024576, 0.885073, -0.464804,
		27.933054, 29.952408, 34.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602882, 29.557190, 34.525410>,  <27.915850, 29.332857, 34.595631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602882, 29.557190, 34.525410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394152, 29.896935, 34.493694>,  <28.268913, 30.100780, 34.474667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394152, 29.896935, 34.493694>,  <28.602882, 29.557190, 34.525410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394152, 29.896935, 34.493694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460534, 0.358733, 0.811923,
		0.718056, 0.387169, -0.578356,
		-0.521827, 0.849359, -0.079286,
		28.237604, 30.151743, 34.469910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974628, 30.065174, 34.891525>,  <28.602882, 29.557190, 34.525410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974628, 30.065174, 34.891525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639626, 30.280315, 34.852970>,  <28.438623, 30.409401, 34.829838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639626, 30.280315, 34.852970>,  <28.974628, 30.065174, 34.891525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639626, 30.280315, 34.852970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264232, 0.553040, 0.790145,
		0.478288, 0.636286, -0.605294,
		-0.837510, 0.537855, -0.096386,
		28.388372, 30.441671, 34.824055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151011, 30.749146, 34.941113>,  <28.974628, 30.065174, 34.891525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151011, 30.749146, 34.941113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757002, 30.757547, 35.009575>,  <28.520597, 30.762589, 35.050652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757002, 30.757547, 35.009575>,  <29.151011, 30.749146, 34.941113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757002, 30.757547, 35.009575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156433, 0.526442, 0.835696,
		-0.072547, 0.849952, -0.521842,
		-0.985021, 0.021006, 0.171152,
		28.461496, 30.763849, 35.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977320, 31.483479, 35.058685>,  <29.151011, 30.749146, 34.941113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977320, 31.483479, 35.058685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681839, 31.269403, 35.222584>,  <28.504551, 31.140959, 35.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681839, 31.269403, 35.222584>,  <28.977320, 31.483479, 35.058685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681839, 31.269403, 35.222584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032559, 0.578865, 0.814773,
		-0.673244, 0.615217, -0.410184,
		-0.738703, -0.535186, 0.409748,
		28.460228, 31.108849, 35.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499668, 31.990282, 35.131626>,  <28.977320, 31.483479, 35.058685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499668, 31.990282, 35.131626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452135, 31.680088, 35.379658>,  <28.423615, 31.493971, 35.528477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452135, 31.680088, 35.379658>,  <28.499668, 31.990282, 35.131626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452135, 31.680088, 35.379658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028315, 0.626898, 0.778586,
		-0.992510, 0.074964, -0.096455,
		-0.118833, -0.775486, 0.620081,
		28.416485, 31.447443, 35.565681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089863, 32.253426, 35.586735>,  <28.499668, 31.990282, 35.131626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089863, 32.253426, 35.586735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163000, 31.915833, 35.788433>,  <28.206882, 31.713278, 35.909451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163000, 31.915833, 35.788433>,  <28.089863, 32.253426, 35.586735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163000, 31.915833, 35.788433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052203, 0.503835, 0.862221,
		-0.981756, -0.183973, 0.048063,
		0.182841, -0.843982, 0.504247,
		28.217852, 31.662638, 35.939709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646410, 32.250488, 36.167999>,  <28.089863, 32.253426, 35.586735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646410, 32.250488, 36.167999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951172, 32.011822, 36.268791>,  <28.134029, 31.868622, 36.329266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951172, 32.011822, 36.268791>,  <27.646410, 32.250488, 36.167999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951172, 32.011822, 36.268791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018529, 0.408960, 0.912364,
		-0.647423, -0.690467, 0.322644,
		0.761906, -0.596664, 0.251976,
		28.179743, 31.832823, 36.344383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520849, 32.016247, 36.851608>,  <27.646410, 32.250488, 36.167999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520849, 32.016247, 36.851608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917284, 31.974636, 36.818333>,  <28.155146, 31.949669, 36.798367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917284, 31.974636, 36.818333>,  <27.520849, 32.016247, 36.851608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917284, 31.974636, 36.818333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121117, 0.443894, 0.887856,
		-0.055439, -0.890020, 0.452538,
		0.991089, -0.104032, -0.083187,
		28.214611, 31.943426, 36.793377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712934, 31.937330, 37.525990>,  <27.520849, 32.016247, 36.851608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712934, 31.937330, 37.525990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055614, 32.038952, 37.346424>,  <28.261223, 32.099926, 37.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055614, 32.038952, 37.346424>,  <27.712934, 31.937330, 37.525990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055614, 32.038952, 37.346424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210388, 0.622511, 0.753801,
		0.470957, -0.740228, 0.479857,
		0.856701, 0.254052, -0.448911,
		28.312624, 32.115166, 37.211750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197851, 31.889351, 38.112404>,  <27.712934, 31.937330, 37.525990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197851, 31.889351, 38.112404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375748, 32.096703, 37.820244>,  <28.482487, 32.221115, 37.644947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375748, 32.096703, 37.820244>,  <28.197851, 31.889351, 38.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375748, 32.096703, 37.820244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324573, 0.666781, 0.670862,
		0.834779, -0.535429, 0.128294,
		0.444743, 0.518381, -0.730401,
		28.509171, 32.252216, 37.601124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871700, 32.013126, 38.346088>,  <28.197851, 31.889351, 38.112404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871700, 32.013126, 38.346088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777971, 32.282196, 38.065346>,  <28.721735, 32.443638, 37.896900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777971, 32.282196, 38.065346>,  <28.871700, 32.013126, 38.346088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777971, 32.282196, 38.065346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117694, 0.736275, 0.666368,
		0.965009, 0.073540, -0.251694,
		-0.234320, 0.672674, -0.701857,
		28.707676, 32.483997, 37.854790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377567, 32.587070, 38.401966>,  <28.871700, 32.013126, 38.346088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377567, 32.587070, 38.401966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067463, 32.741673, 38.202133>,  <28.881401, 32.834435, 38.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067463, 32.741673, 38.202133>,  <29.377567, 32.587070, 38.401966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067463, 32.741673, 38.202133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007476, 0.796489, 0.604607,
		0.631597, 0.464993, -0.620376,
		-0.775261, 0.386505, -0.499584,
		28.834885, 32.857624, 38.052258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535032, 33.196182, 38.104774>,  <29.377567, 32.587070, 38.401966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535032, 33.196182, 38.104774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142921, 33.195759, 38.183823>,  <28.907656, 33.195503, 38.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142921, 33.195759, 38.183823>,  <29.535032, 33.196182, 38.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142921, 33.195759, 38.183823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140381, 0.700109, 0.700100,
		-0.139099, 0.714035, -0.686152,
		-0.980278, -0.001060, 0.197622,
		28.848839, 33.195442, 38.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277794, 33.801228, 37.831837>,  <29.535032, 33.196182, 38.104774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277794, 33.801228, 37.831837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066393, 33.677261, 38.147972>,  <28.939552, 33.602882, 38.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066393, 33.677261, 38.147972>,  <29.277794, 33.801228, 37.831837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066393, 33.677261, 38.147972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309198, 0.796762, 0.519198,
		-0.790621, 0.518769, -0.325265,
		-0.528503, -0.309918, 0.790339,
		28.907843, 33.584286, 38.385075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812555, 33.512352, 37.381268>,  <29.277794, 33.801228, 37.831837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812555, 33.512352, 37.381268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945925, 33.170280, 37.222519>,  <30.025948, 32.965038, 37.127270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945925, 33.170280, 37.222519>,  <29.812555, 33.512352, 37.381268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945925, 33.170280, 37.222519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874740, -0.123603, -0.468563,
		0.351649, 0.503388, -0.789268,
		0.333425, -0.855174, -0.396869,
		30.045952, 32.913727, 37.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364765, 33.350857, 37.745068>,  <29.812555, 33.512352, 37.381268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364765, 33.350857, 37.745068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150911, 33.688862, 37.740807>,  <30.022598, 33.891666, 37.738251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150911, 33.688862, 37.740807>,  <30.364765, 33.350857, 37.745068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150911, 33.688862, 37.740807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441443, -0.268502, 0.856174,
		0.720619, 0.462447, 0.516577,
		-0.534637, 0.845015, -0.010656,
		29.990520, 33.942368, 37.737610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887520, 32.846752, 37.776531>,  <30.364765, 33.350857, 37.745068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887520, 32.846752, 37.776531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855267, 33.186146, 37.567318>,  <30.835915, 33.389782, 37.441788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855267, 33.186146, 37.567318>,  <30.887520, 32.846752, 37.776531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855267, 33.186146, 37.567318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996667, 0.062118, -0.052881,
		-0.012379, -0.525557, -0.850668,
		-0.080634, 0.848488, -0.523036,
		30.831076, 33.440693, 37.410408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985498, 32.820015, 37.002792>,  <30.887520, 32.846752, 37.776531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985498, 32.820015, 37.002792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089470, 33.172539, 37.160645>,  <31.151854, 33.384052, 37.255356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089470, 33.172539, 37.160645>,  <30.985498, 32.820015, 37.002792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089470, 33.172539, 37.160645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957971, -0.286714, 0.009319,
		0.121358, 0.375619, -0.918794,
		0.259931, 0.881309, 0.394627,
		31.167450, 33.436932, 37.279034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564783, 32.918159, 36.591236>,  <30.985498, 32.820015, 37.002792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564783, 32.918159, 36.591236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550776, 33.079865, 36.956825>,  <31.542370, 33.176888, 37.176178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550776, 33.079865, 36.956825>,  <31.564783, 32.918159, 36.591236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550776, 33.079865, 36.956825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938650, -0.300655, 0.168949,
		0.343090, 0.863816, -0.368932,
		-0.035020, 0.404263, 0.913972,
		31.540270, 33.201145, 37.231018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016415, 33.557434, 36.779377>,  <31.564783, 32.918159, 36.591236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016415, 33.557434, 36.779377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954813, 33.294926, 37.074837>,  <31.917852, 33.137421, 37.252113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954813, 33.294926, 37.074837>,  <32.016415, 33.557434, 36.779377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954813, 33.294926, 37.074837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986365, -0.146015, 0.075915,
		0.058033, 0.740265, 0.669806,
		-0.154000, -0.656268, 0.738645,
		31.908613, 33.098045, 37.296429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675274, 33.427521, 36.923378>,  <32.016415, 33.557434, 36.779377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675274, 33.427521, 36.923378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509335, 33.253441, 37.243004>,  <32.409771, 33.148994, 37.434780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509335, 33.253441, 37.243004>,  <32.675274, 33.427521, 36.923378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509335, 33.253441, 37.243004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909199, -0.164072, 0.382673,
		-0.035434, 0.885260, 0.463745,
		-0.414852, -0.435195, 0.799063,
		32.384880, 33.122883, 37.482723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918938, 34.017632, 37.393951>,  <32.675274, 33.427521, 36.923378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918938, 34.017632, 37.393951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305817, 34.098362, 37.332241>,  <33.537945, 34.146801, 37.295216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305817, 34.098362, 37.332241>,  <32.918938, 34.017632, 37.393951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305817, 34.098362, 37.332241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156200, 0.006467, 0.987704,
		0.200344, -0.979400, -0.025271,
		0.967194, 0.201828, -0.154278,
		33.595974, 34.158909, 37.285957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361717, 33.492805, 37.656940>,  <32.918938, 34.017632, 37.393951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361717, 33.492805, 37.656940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565525, 33.836960, 37.661266>,  <33.687809, 34.043453, 37.663860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565525, 33.836960, 37.661266>,  <33.361717, 33.492805, 37.656940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565525, 33.836960, 37.661266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140727, -0.095723, 0.985410,
		0.848872, -0.500566, -0.169853,
		0.509522, 0.860390, 0.010813,
		33.718380, 34.095078, 37.664509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856552, 33.303192, 38.112549>,  <33.361717, 33.492805, 37.656940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856552, 33.303192, 38.112549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900070, 33.700027, 38.087482>,  <33.926182, 33.938129, 38.072441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900070, 33.700027, 38.087482>,  <33.856552, 33.303192, 38.112549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900070, 33.700027, 38.087482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153117, 0.045567, 0.987157,
		0.982201, -0.116998, -0.146947,
		0.108800, 0.992086, -0.062670,
		33.932709, 33.997654, 38.068680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504322, 33.443466, 38.548580>,  <33.856552, 33.303192, 38.112549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504322, 33.443466, 38.548580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300301, 33.785778, 38.513947>,  <34.177887, 33.991165, 38.493168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300301, 33.785778, 38.513947>,  <34.504322, 33.443466, 38.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300301, 33.785778, 38.513947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121397, 0.171273, 0.977716,
		0.851535, 0.488172, -0.191247,
		-0.510049, 0.855776, -0.086582,
		34.147285, 34.042511, 38.487972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894573, 33.954353, 38.854557>,  <34.504322, 33.443466, 38.548580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894573, 33.954353, 38.854557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533318, 34.126091, 38.853985>,  <34.316563, 34.229134, 38.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533318, 34.126091, 38.853985>,  <34.894573, 33.954353, 38.854557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533318, 34.126091, 38.853985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200609, 0.424939, 0.882713,
		0.379593, 0.796928, -0.469910,
		-0.903142, 0.429339, -0.001433,
		34.262375, 34.254894, 38.853554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005062, 34.623070, 39.004333>,  <34.894573, 33.954353, 38.854557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005062, 34.623070, 39.004333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627296, 34.534328, 39.101379>,  <34.400639, 34.481083, 39.159607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627296, 34.534328, 39.101379>,  <35.005062, 34.623070, 39.004333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627296, 34.534328, 39.101379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120787, 0.452219, 0.883690,
		-0.305762, 0.863875, -0.400286,
		-0.944415, -0.221849, 0.242617,
		34.343971, 34.467773, 39.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713844, 35.277981, 39.319359>,  <35.005062, 34.623070, 39.004333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713844, 35.277981, 39.319359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485054, 34.971035, 39.435291>,  <34.347782, 34.786869, 39.504852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485054, 34.971035, 39.435291>,  <34.713844, 35.277981, 39.319359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485054, 34.971035, 39.435291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090887, 0.291871, 0.952130,
		-0.815221, 0.570935, -0.097199,
		-0.571974, -0.767362, 0.289830,
		34.313461, 34.740826, 39.522240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104065, 35.457127, 39.733398>,  <34.713844, 35.277981, 39.319359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104065, 35.457127, 39.733398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167702, 35.075481, 39.834869>,  <34.205883, 34.846493, 39.895752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167702, 35.075481, 39.834869>,  <34.104065, 35.457127, 39.733398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167702, 35.075481, 39.834869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118566, 0.236625, 0.964339,
		-0.980119, -0.183495, -0.075481,
		0.159090, -0.954116, 0.253677,
		34.215427, 34.789246, 39.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733749, 35.247574, 40.323669>,  <34.104065, 35.457127, 39.733398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733749, 35.247574, 40.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974354, 34.928028, 40.323845>,  <34.118717, 34.736301, 40.323952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974354, 34.928028, 40.323845>,  <33.733749, 35.247574, 40.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974354, 34.928028, 40.323845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152507, -0.114288, 0.981672,
		-0.784169, -0.590558, -0.190578,
		0.601515, -0.798862, 0.000443,
		34.154808, 34.688370, 40.323978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451008, 34.758469, 40.753357>,  <33.733749, 35.247574, 40.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451008, 34.758469, 40.753357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830837, 34.633202, 40.759529>,  <34.058735, 34.558041, 40.763233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830837, 34.633202, 40.759529>,  <33.451008, 34.758469, 40.753357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830837, 34.633202, 40.759529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147111, -0.401510, 0.903963,
		-0.276899, -0.860647, -0.427333,
		0.949571, -0.313172, 0.015433,
		34.115707, 34.539249, 40.764160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456116, 34.133522, 41.122086>,  <33.451008, 34.758469, 40.753357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456116, 34.133522, 41.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838253, 34.250729, 41.137360>,  <34.067535, 34.321053, 41.146526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838253, 34.250729, 41.137360>,  <33.456116, 34.133522, 41.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838253, 34.250729, 41.137360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017502, -0.185124, 0.982559,
		0.294974, -0.938015, -0.181986,
		0.955345, 0.293014, 0.038190,
		34.124855, 34.338634, 41.148815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828064, 33.545452, 41.391151>,  <33.456116, 34.133522, 41.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828064, 33.545452, 41.391151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019989, 33.888985, 41.462914>,  <34.135143, 34.095104, 41.505970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019989, 33.888985, 41.462914>,  <33.828064, 33.545452, 41.391151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019989, 33.888985, 41.462914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271549, -0.339808, 0.900440,
		0.834292, -0.383322, -0.396258,
		0.479810, 0.858833, 0.179409,
		34.163933, 34.146633, 41.516735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528328, 33.343235, 41.539112>,  <33.828064, 33.545452, 41.391151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528328, 33.343235, 41.539112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431915, 33.684654, 41.723877>,  <34.374069, 33.889507, 41.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431915, 33.684654, 41.723877>,  <34.528328, 33.343235, 41.539112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431915, 33.684654, 41.723877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342882, -0.370357, 0.863289,
		0.907930, 0.366459, -0.203399,
		-0.241030, 0.853548, 0.461910,
		34.359608, 33.940720, 41.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962009, 33.198452, 42.140186>,  <34.528328, 33.343235, 41.539112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962009, 33.198452, 42.140186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797848, 33.554371, 42.220016>,  <34.699348, 33.767921, 42.267914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797848, 33.554371, 42.220016>,  <34.962009, 33.198452, 42.140186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797848, 33.554371, 42.220016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322022, -0.063344, 0.944611,
		0.853151, 0.451944, -0.260536,
		-0.410408, 0.889794, 0.199578,
		34.674725, 33.821308, 42.279888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535336, 33.584721, 42.483070>,  <34.962009, 33.198452, 42.140186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535336, 33.584721, 42.483070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173649, 33.729942, 42.573040>,  <34.956638, 33.817074, 42.627022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173649, 33.729942, 42.573040>,  <35.535336, 33.584721, 42.483070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173649, 33.729942, 42.573040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235276, -0.016095, 0.971795,
		0.356435, 0.931629, -0.070865,
		-0.904212, 0.363054, 0.224927,
		34.902386, 33.838860, 42.640518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670261, 34.132034, 42.848797>,  <35.535336, 33.584721, 42.483070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670261, 34.132034, 42.848797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291634, 34.056217, 42.953163>,  <35.064457, 34.010727, 43.015785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291634, 34.056217, 42.953163>,  <35.670261, 34.132034, 42.848797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291634, 34.056217, 42.953163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261101, 0.024460, 0.965002,
		-0.189287, 0.981569, 0.026335,
		-0.946571, -0.189539, 0.260919,
		35.007664, 33.999355, 43.031437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560780, 34.461159, 43.541210>,  <35.670261, 34.132034, 42.848797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560780, 34.461159, 43.541210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269753, 34.188091, 43.514027>,  <35.095139, 34.024250, 43.497719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269753, 34.188091, 43.514027>,  <35.560780, 34.461159, 43.541210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269753, 34.188091, 43.514027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070718, -0.173155, 0.982352,
		-0.682386, 0.709918, 0.174258,
		-0.727563, -0.682666, -0.067954,
		35.051483, 33.983292, 43.493641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085052, 34.561543, 44.112484>,  <35.560780, 34.461159, 43.541210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085052, 34.561543, 44.112484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997360, 34.192459, 43.985645>,  <34.944744, 33.971008, 43.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997360, 34.192459, 43.985645>,  <35.085052, 34.561543, 44.112484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997360, 34.192459, 43.985645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141139, -0.291597, 0.946071,
		-0.965411, 0.252163, -0.066303,
		-0.219231, -0.922705, -0.317101,
		34.931591, 33.915649, 43.890514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466549, 34.351982, 44.456951>,  <35.085052, 34.561543, 44.112484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466549, 34.351982, 44.456951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651272, 34.014679, 44.346928>,  <34.762108, 33.812298, 44.280914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651272, 34.014679, 44.346928>,  <34.466549, 34.351982, 44.456951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651272, 34.014679, 44.346928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260501, -0.425372, 0.866717,
		-0.847863, -0.328606, -0.416109,
		0.461809, -0.843254, -0.275056,
		34.789814, 33.761703, 44.264412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956005, 33.830666, 44.781433>,  <34.466549, 34.351982, 44.456951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956005, 33.830666, 44.781433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283039, 33.630348, 44.667755>,  <34.479259, 33.510159, 44.599548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283039, 33.630348, 44.667755>,  <33.956005, 33.830666, 44.781433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283039, 33.630348, 44.667755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002418, -0.496532, 0.868015,
		-0.575806, -0.708987, -0.407166,
		0.817583, -0.500793, -0.284192,
		34.528313, 33.480110, 44.582497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782940, 33.073471, 44.586807>,  <33.956005, 33.830666, 44.781433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782940, 33.073471, 44.586807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157787, 33.123112, 44.717289>,  <34.382694, 33.152897, 44.795578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157787, 33.123112, 44.717289>,  <33.782940, 33.073471, 44.586807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157787, 33.123112, 44.717289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244386, -0.433934, 0.867166,
		0.249165, -0.892357, -0.376320,
		0.937119, 0.124100, 0.326201,
		34.438923, 33.160343, 44.815147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972729, 32.487762, 45.021755>,  <33.782940, 33.073471, 44.586807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972729, 32.487762, 45.021755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266346, 32.732487, 45.139656>,  <34.442516, 32.879322, 45.210396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266346, 32.732487, 45.139656>,  <33.972729, 32.487762, 45.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266346, 32.732487, 45.139656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022701, -0.455889, 0.889747,
		0.678727, -0.646419, -0.348529,
		0.734040, 0.611807, 0.294750,
		34.486557, 32.916027, 45.228081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368374, 32.100483, 45.458717>,  <33.972729, 32.487762, 45.021755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368374, 32.100483, 45.458717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502289, 32.461449, 45.567207>,  <34.582638, 32.678028, 45.632301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502289, 32.461449, 45.567207>,  <34.368374, 32.100483, 45.458717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502289, 32.461449, 45.567207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228517, -0.356997, 0.905723,
		0.914164, -0.241247, -0.325736,
		0.334789, 0.902416, 0.271224,
		34.602726, 32.732174, 45.648575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994640, 32.007263, 45.808487>,  <34.368374, 32.100483, 45.458717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994640, 32.007263, 45.808487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862465, 32.372200, 45.905186>,  <34.783161, 32.591164, 45.963207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862465, 32.372200, 45.905186>,  <34.994640, 32.007263, 45.808487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862465, 32.372200, 45.905186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425356, -0.084703, 0.901053,
		0.842546, 0.400571, -0.360082,
		-0.330435, 0.912342, 0.241752,
		34.763336, 32.645905, 45.977711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521717, 32.362068, 46.034710>,  <34.994640, 32.007263, 45.808487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521717, 32.362068, 46.034710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214996, 32.567368, 46.188904>,  <35.030964, 32.690548, 46.281422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214996, 32.567368, 46.188904>,  <35.521717, 32.362068, 46.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214996, 32.567368, 46.188904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487707, 0.075395, 0.869746,
		0.417330, 0.854923, -0.308126,
		-0.766797, 0.513246, 0.385487,
		34.984959, 32.721340, 46.304550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765369, 32.994495, 46.345451>,  <35.521717, 32.362068, 46.034710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765369, 32.994495, 46.345451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427845, 32.908596, 46.542171>,  <35.225330, 32.857056, 46.660202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427845, 32.908596, 46.542171>,  <35.765369, 32.994495, 46.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427845, 32.908596, 46.542171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431954, 0.272005, 0.859900,
		-0.318438, 0.938027, -0.136757,
		-0.843808, -0.214752, 0.491802,
		35.174702, 32.844170, 46.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689728, 33.512325, 46.831211>,  <35.765369, 32.994495, 46.345451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689728, 33.512325, 46.831211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461990, 33.209846, 46.960213>,  <35.325348, 33.028358, 47.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461990, 33.209846, 46.960213>,  <35.689728, 33.512325, 46.831211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461990, 33.209846, 46.960213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302067, 0.172430, 0.937562,
		-0.764596, 0.631212, 0.130252,
		-0.569341, -0.756201, 0.322508,
		35.291187, 32.982986, 47.056965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317833, 33.750298, 47.326508>,  <35.689728, 33.512325, 46.831211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317833, 33.750298, 47.326508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304134, 33.362141, 47.422150>,  <35.295914, 33.129246, 47.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304134, 33.362141, 47.422150>,  <35.317833, 33.750298, 47.326508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304134, 33.362141, 47.422150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025065, 0.240000, 0.970449,
		-0.999099, 0.027246, -0.032543,
		-0.034251, -0.970390, 0.239101,
		35.293858, 33.071022, 47.493881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751228, 33.641422, 47.836140>,  <35.317833, 33.750298, 47.326508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751228, 33.641422, 47.836140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016441, 33.345448, 47.881535>,  <35.175571, 33.167862, 47.908772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016441, 33.345448, 47.881535>,  <34.751228, 33.641422, 47.836140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016441, 33.345448, 47.881535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087022, 0.074388, 0.993425,
		-0.743512, -0.668552, -0.015069,
		0.663036, -0.739935, 0.113487,
		35.215351, 33.123466, 47.915581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408550, 33.255547, 48.245625>,  <34.751228, 33.641422, 47.836140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408550, 33.255547, 48.245625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788063, 33.132694, 48.275272>,  <35.015770, 33.058983, 48.293060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788063, 33.132694, 48.275272>,  <34.408550, 33.255547, 48.245625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788063, 33.132694, 48.275272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119405, -0.131357, 0.984118,
		-0.292513, -0.942559, -0.161302,
		0.948777, -0.307128, 0.074123,
		35.072697, 33.040558, 48.297508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450588, 32.569241, 48.694256>,  <34.408550, 33.255547, 48.245625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450588, 32.569241, 48.694256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816017, 32.728218, 48.728706>,  <35.035275, 32.823605, 48.749374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816017, 32.728218, 48.728706>,  <34.450588, 32.569241, 48.694256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816017, 32.728218, 48.728706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017848, -0.172383, 0.984868,
		0.406281, -0.901287, -0.150391,
		0.913574, 0.397449, 0.086122,
		35.090088, 32.847454, 48.754543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864845, 32.067230, 49.088490>,  <34.450588, 32.569241, 48.694256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864845, 32.067230, 49.088490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049240, 32.420338, 49.124756>,  <35.159878, 32.632202, 49.146515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049240, 32.420338, 49.124756>,  <34.864845, 32.067230, 49.088490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049240, 32.420338, 49.124756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015536, -0.110177, 0.993790,
		0.887272, -0.456714, -0.064504,
		0.460984, 0.882765, 0.090662,
		35.187534, 32.685165, 49.151955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401459, 31.805056, 49.597794>,  <34.864845, 32.067230, 49.088490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401459, 31.805056, 49.597794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327740, 32.195297, 49.645508>,  <35.283508, 32.429443, 49.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327740, 32.195297, 49.645508>,  <35.401459, 31.805056, 49.597794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327740, 32.195297, 49.645508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187460, -0.154028, 0.970121,
		0.964829, 0.156428, 0.211273,
		-0.184296, 0.975605, 0.119287,
		35.272449, 32.487980, 49.681293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846813, 31.955751, 50.200485>,  <35.401459, 31.805056, 49.597794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846813, 31.955751, 50.200485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525387, 32.183922, 50.132488>,  <35.332531, 32.320824, 50.091690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525387, 32.183922, 50.132488>,  <35.846813, 31.955751, 50.200485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525387, 32.183922, 50.132488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373460, -0.260794, 0.890233,
		0.463478, 0.778845, 0.422596,
		-0.803564, 0.570426, -0.169995,
		35.284317, 32.355049, 50.081490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665302, 32.356510, 50.848671>,  <35.846813, 31.955751, 50.200485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665302, 32.356510, 50.848671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331402, 32.333683, 50.629608>,  <35.131062, 32.319988, 50.498169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331402, 32.333683, 50.629608>,  <35.665302, 32.356510, 50.848671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331402, 32.333683, 50.629608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512895, -0.281244, 0.811074,
		-0.200312, 0.957938, 0.205500,
		-0.834754, -0.057068, -0.547658,
		35.080975, 32.316563, 50.465309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159904, 32.887966, 51.182102>,  <35.665302, 32.356510, 50.848671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159904, 32.887966, 51.182102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975643, 32.601341, 50.972591>,  <34.865086, 32.429367, 50.846886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975643, 32.601341, 50.972591>,  <35.159904, 32.887966, 51.182102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975643, 32.601341, 50.972591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669683, -0.106700, 0.734942,
		-0.582516, 0.689318, -0.430716,
		-0.460651, -0.716559, -0.523779,
		34.837448, 32.386375, 50.815456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492130, 32.899944, 51.459801>,  <35.159904, 32.887966, 51.182102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492130, 32.899944, 51.459801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468246, 32.551006, 51.265705>,  <34.453918, 32.341644, 51.149250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468246, 32.551006, 51.265705>,  <34.492130, 32.899944, 51.459801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468246, 32.551006, 51.265705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601749, -0.356395, 0.714760,
		-0.796451, 0.334665, -0.503652,
		-0.059706, -0.872343, -0.485235,
		34.450336, 32.289303, 51.120136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722939, 32.734791, 51.466156>,  <34.492130, 32.899944, 51.459801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722939, 32.734791, 51.466156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905422, 32.386639, 51.392063>,  <34.014912, 32.177746, 51.347607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905422, 32.386639, 51.392063>,  <33.722939, 32.734791, 51.466156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905422, 32.386639, 51.392063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401549, -0.387106, 0.830005,
		-0.794124, -0.304276, -0.526102,
		0.456207, -0.870382, -0.185228,
		34.042286, 32.125523, 51.336494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197506, 32.254631, 51.485607>,  <33.722939, 32.734791, 51.466156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197506, 32.254631, 51.485607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540142, 32.059620, 51.553226>,  <33.745724, 31.942614, 51.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540142, 32.059620, 51.553226>,  <33.197506, 32.254631, 51.485607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540142, 32.059620, 51.553226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378995, -0.372103, 0.847291,
		-0.350167, -0.789851, -0.503507,
		0.856590, -0.487520, 0.169052,
		33.797119, 31.913363, 51.603939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799667, 31.784679, 51.998425>,  <33.197506, 32.254631, 51.485607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799667, 31.784679, 51.998425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510273, 32.048420, 52.080235>,  <32.336636, 32.206665, 52.129322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510273, 32.048420, 52.080235>,  <32.799667, 31.784679, 51.998425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510273, 32.048420, 52.080235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081118, -0.375412, 0.923301,
		0.685561, 0.651401, 0.325089,
		-0.723482, 0.659350, 0.204528,
		32.293228, 32.246223, 52.141594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272980, 31.906818, 52.525543>,  <32.799667, 31.784679, 51.998425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272980, 31.906818, 52.525543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652378, 31.937977, 52.402718>,  <33.880016, 31.956671, 52.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652378, 31.937977, 52.402718>,  <33.272980, 31.906818, 52.525543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652378, 31.937977, 52.402718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250036, 0.411112, 0.876624,
		0.194521, -0.908251, 0.370462,
		0.948496, 0.077893, -0.307065,
		33.936928, 31.961346, 52.310596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694019, 31.844669, 53.121464>,  <33.272980, 31.906818, 52.525543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694019, 31.844669, 53.121464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928665, 32.009647, 52.842674>,  <34.069454, 32.108635, 52.675400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928665, 32.009647, 52.842674>,  <33.694019, 31.844669, 53.121464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928665, 32.009647, 52.842674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475547, 0.521189, 0.708673,
		0.655542, -0.747163, 0.109603,
		0.586618, 0.412443, -0.696972,
		34.104649, 32.133381, 52.633583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398388, 31.732197, 53.327827>,  <33.694019, 31.844669, 53.121464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398388, 31.732197, 53.327827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364998, 32.039921, 53.074467>,  <34.344963, 32.224556, 52.922451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364998, 32.039921, 53.074467>,  <34.398388, 31.732197, 53.327827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364998, 32.039921, 53.074467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649704, 0.523961, 0.550772,
		0.755591, -0.365547, -0.543561,
		-0.083472, 0.769311, -0.633398,
		34.339958, 32.270714, 52.884449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787075, 30.993433, 53.455456>,  <34.398388, 31.732197, 53.327827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787075, 30.993433, 53.455456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611622, 30.634100, 53.465260>,  <34.506351, 30.418501, 53.471142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611622, 30.634100, 53.465260>,  <34.787075, 30.993433, 53.455456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611622, 30.634100, 53.465260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164037, -0.106852, -0.980650,
		0.883568, -0.426124, 0.194229,
		-0.438633, -0.898332, 0.024511,
		34.480034, 30.364601, 53.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245007, 30.343624, 53.190720>,  <34.787075, 30.993433, 53.455456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245007, 30.343624, 53.190720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850105, 30.293156, 53.151897>,  <34.613167, 30.262875, 53.128605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850105, 30.293156, 53.151897>,  <35.245007, 30.343624, 53.190720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850105, 30.293156, 53.151897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109665, -0.097184, -0.989206,
		0.115378, -0.987236, 0.109781,
		-0.987249, -0.126172, -0.097052,
		34.553932, 30.255304, 53.122784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842014, 30.806644, 53.337708>,  <35.245007, 30.343624, 53.190720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842014, 30.806644, 53.337708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218296, 30.885372, 53.448219>,  <36.444065, 30.932608, 53.514526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218296, 30.885372, 53.448219>,  <35.842014, 30.806644, 53.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218296, 30.885372, 53.448219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223222, 0.254100, -0.941066,
		-0.255421, 0.946940, 0.195100,
		0.940708, 0.196818, 0.276280,
		36.500507, 30.944418, 53.531105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889114, 31.481617, 53.022285>,  <35.842014, 30.806644, 53.337708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889114, 31.481617, 53.022285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222954, 31.263292, 53.052059>,  <36.423256, 31.132298, 53.069923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222954, 31.263292, 53.052059>,  <35.889114, 31.481617, 53.022285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222954, 31.263292, 53.052059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207799, 0.186799, -0.960170,
		0.510169, 0.816819, 0.269320,
		0.834594, -0.545813, 0.074435,
		36.473331, 31.099548, 53.074390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479595, 31.832195, 52.695915>,  <35.889114, 31.481617, 53.022285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479595, 31.832195, 52.695915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552708, 31.439194, 52.710220>,  <36.596577, 31.203394, 52.718803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552708, 31.439194, 52.710220>,  <36.479595, 31.832195, 52.695915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552708, 31.439194, 52.710220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313181, 0.023706, -0.949397,
		0.931937, 0.184735, 0.312034,
		0.182784, -0.982502, 0.035763,
		36.607544, 31.144444, 52.720951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176224, 31.700550, 52.334431>,  <36.479595, 31.832195, 52.695915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176224, 31.700550, 52.334431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948383, 31.372396, 52.314331>,  <36.811680, 31.175505, 52.302273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948383, 31.372396, 52.314331>,  <37.176224, 31.700550, 52.334431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948383, 31.372396, 52.314331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169120, -0.057156, -0.983937,
		0.804336, -0.568947, 0.171300,
		-0.569598, -0.820386, -0.050248,
		36.777504, 31.126280, 52.299255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541508, 31.128981, 51.974434>,  <37.176224, 31.700550, 52.334431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541508, 31.128981, 51.974434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146210, 31.073404, 51.948948>,  <36.909031, 31.040058, 51.933659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146210, 31.073404, 51.948948>,  <37.541508, 31.128981, 51.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146210, 31.073404, 51.948948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093941, -0.223285, -0.970216,
		0.120578, -0.964800, 0.233713,
		-0.988249, -0.138942, -0.063711,
		36.849735, 31.031721, 51.929836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415192, 30.440367, 51.841778>,  <37.541508, 31.128981, 51.974434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415192, 30.440367, 51.841778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096382, 30.646685, 51.716106>,  <36.905098, 30.770475, 51.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096382, 30.646685, 51.716106>,  <37.415192, 30.440367, 51.841778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096382, 30.646685, 51.716106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013993, -0.504294, -0.863419,
		-0.603785, -0.692562, 0.394717,
		-0.797024, 0.515796, -0.314176,
		36.857273, 30.801424, 51.621853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023739, 30.069071, 51.340702>,  <37.415192, 30.440367, 51.841778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023739, 30.069071, 51.340702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860294, 30.426666, 51.267136>,  <36.762230, 30.641224, 51.222996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860294, 30.426666, 51.267136>,  <37.023739, 30.069071, 51.340702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860294, 30.426666, 51.267136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156763, -0.267254, -0.950789,
		-0.899147, -0.359669, 0.249346,
		-0.408608, 0.893987, -0.183918,
		36.737713, 30.694862, 51.211960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319324, 29.950739, 51.045296>,  <37.023739, 30.069071, 51.340702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319324, 29.950739, 51.045296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485828, 30.292421, 50.920677>,  <36.585732, 30.497431, 50.845905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485828, 30.292421, 50.920677>,  <36.319324, 29.950739, 51.045296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485828, 30.292421, 50.920677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138202, -0.279222, -0.950229,
		-0.898681, 0.438599, 0.001824,
		0.416260, 0.854205, -0.311546,
		36.610706, 30.548683, 50.827213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939266, 30.166636, 50.531250>,  <36.319324, 29.950739, 51.045296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939266, 30.166636, 50.531250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242344, 30.423368, 50.484001>,  <36.424191, 30.577408, 50.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242344, 30.423368, 50.484001>,  <35.939266, 30.166636, 50.531250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242344, 30.423368, 50.484001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087039, -0.080003, -0.992987,
		-0.646784, 0.762659, -0.004753,
		0.757691, 0.641834, -0.118126,
		36.469650, 30.615919, 50.448563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740303, 30.672752, 50.098305>,  <35.939266, 30.166636, 50.531250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740303, 30.672752, 50.098305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137569, 30.688591, 50.054382>,  <36.375927, 30.698095, 50.028027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137569, 30.688591, 50.054382>,  <35.740303, 30.672752, 50.098305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137569, 30.688591, 50.054382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095151, -0.270326, -0.958056,
		-0.067622, 0.961954, -0.264710,
		0.993163, 0.039598, -0.109811,
		36.435520, 30.700470, 50.021439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902794, 31.123184, 49.473759>,  <35.740303, 30.672752, 50.098305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902794, 31.123184, 49.473759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242191, 30.917177, 49.522442>,  <36.445831, 30.793573, 49.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242191, 30.917177, 49.522442>,  <35.902794, 31.123184, 49.473759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242191, 30.917177, 49.522442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150609, 0.014527, -0.988487,
		0.507319, 0.857057, 0.089892,
		0.848495, -0.515017, 0.121711,
		36.496738, 30.762672, 49.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314781, 31.361633, 48.990681>,  <35.902794, 31.123184, 49.473759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314781, 31.361633, 48.990681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462986, 31.006269, 49.099087>,  <36.551910, 30.793051, 49.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462986, 31.006269, 49.099087>,  <36.314781, 31.361633, 48.990681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462986, 31.006269, 49.099087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361512, -0.130846, -0.923141,
		0.855588, 0.440011, 0.272691,
		0.370511, -0.888409, 0.271019,
		36.574139, 30.739746, 49.180393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974316, 31.382328, 48.723106>,  <36.314781, 31.361633, 48.990681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974316, 31.382328, 48.723106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914627, 30.997231, 48.813316>,  <36.878815, 30.766172, 48.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914627, 30.997231, 48.813316>,  <36.974316, 31.382328, 48.723106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914627, 30.997231, 48.813316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466385, -0.269642, -0.842484,
		0.871905, -0.020533, 0.489244,
		-0.149219, -0.962742, 0.225526,
		36.869862, 30.708408, 48.880974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666992, 31.017054, 48.753902>,  <36.974316, 31.382328, 48.723106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666992, 31.017054, 48.753902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380722, 30.748709, 48.676186>,  <37.208958, 30.587702, 48.629555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380722, 30.748709, 48.676186>,  <37.666992, 31.017054, 48.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380722, 30.748709, 48.676186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457245, -0.239758, -0.856413,
		0.527951, -0.701755, 0.478338,
		-0.715678, -0.670862, -0.194293,
		37.166019, 30.547451, 48.617897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050301, 30.440413, 48.640247>,  <37.666992, 31.017054, 48.753902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050301, 30.440413, 48.640247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691059, 30.366575, 48.480576>,  <37.475513, 30.322273, 48.384773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691059, 30.366575, 48.480576>,  <38.050301, 30.440413, 48.640247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691059, 30.366575, 48.480576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437077, -0.273920, -0.856698,
		0.048800, -0.943871, 0.326689,
		-0.898099, -0.184595, -0.399177,
		37.421631, 30.311197, 48.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222626, 29.912924, 48.150642>,  <38.050301, 30.440413, 48.640247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222626, 29.912924, 48.150642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880169, 30.091978, 48.047375>,  <37.674694, 30.199409, 47.985413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880169, 30.091978, 48.047375>,  <38.222626, 29.912924, 48.150642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880169, 30.091978, 48.047375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187246, -0.196920, -0.962373,
		-0.481630, -0.872265, 0.084773,
		-0.856138, 0.447634, -0.258171,
		37.623329, 30.226269, 47.969925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046700, 29.553514, 47.544327>,  <38.222626, 29.912924, 48.150642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046700, 29.553514, 47.544327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813335, 29.876125, 47.506077>,  <37.673317, 30.069691, 47.483128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813335, 29.876125, 47.506077>,  <38.046700, 29.553514, 47.544327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813335, 29.876125, 47.506077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042640, -0.087159, -0.995281,
		-0.811054, -0.584739, 0.016459,
		-0.583415, 0.806526, -0.095624,
		37.638309, 30.118082, 47.477390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557674, 29.379642, 47.011482>,  <38.046700, 29.553514, 47.544327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557674, 29.379642, 47.011482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528728, 29.778290, 47.027058>,  <37.511360, 30.017479, 47.036404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528728, 29.778290, 47.027058>,  <37.557674, 29.379642, 47.011482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528728, 29.778290, 47.027058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189432, 0.024592, -0.981586,
		-0.979224, -0.078408, 0.187011,
		-0.072366, 0.996618, 0.038934,
		37.507019, 30.077274, 47.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968761, 29.447922, 46.649879>,  <37.557674, 29.379642, 47.011482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968761, 29.447922, 46.649879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137901, 29.808950, 46.682289>,  <37.239384, 30.025568, 46.701736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137901, 29.808950, 46.682289>,  <36.968761, 29.447922, 46.649879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137901, 29.808950, 46.682289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284112, 0.216946, -0.933924,
		-0.860513, 0.371884, 0.348166,
		0.422845, 0.902572, 0.081028,
		37.264755, 30.079721, 46.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543659, 30.002136, 46.448009>,  <36.968761, 29.447922, 46.649879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543659, 30.002136, 46.448009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901749, 30.164774, 46.375053>,  <37.116600, 30.262356, 46.331280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901749, 30.164774, 46.375053>,  <36.543659, 30.002136, 46.448009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901749, 30.164774, 46.375053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298250, 0.242573, -0.923150,
		-0.331104, 0.880818, 0.338422,
		0.895219, 0.406593, -0.182387,
		37.170315, 30.286753, 46.320335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386860, 30.676929, 46.237804>,  <36.543659, 30.002136, 46.448009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386860, 30.676929, 46.237804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760147, 30.609034, 46.111130>,  <36.984119, 30.568296, 46.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760147, 30.609034, 46.111130>,  <36.386860, 30.676929, 46.237804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760147, 30.609034, 46.111130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238449, 0.366757, -0.899239,
		0.268783, 0.914701, 0.301791,
		0.933219, -0.169738, -0.316688,
		37.040112, 30.558111, 46.016125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668587, 31.338707, 46.026371>,  <36.386860, 30.676929, 46.237804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668587, 31.338707, 46.026371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849617, 31.050398, 45.816357>,  <36.958233, 30.877413, 45.690346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849617, 31.050398, 45.816357>,  <36.668587, 31.338707, 46.026371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849617, 31.050398, 45.816357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278617, 0.445015, -0.851079,
		0.847084, 0.531459, 0.000582,
		0.452573, -0.720773, -0.525038,
		36.985390, 30.834166, 45.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948975, 31.687660, 45.398914>,  <36.668587, 31.338707, 46.026371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948975, 31.687660, 45.398914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998688, 31.297924, 45.323853>,  <37.028515, 31.064083, 45.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998688, 31.297924, 45.323853>,  <36.948975, 31.687660, 45.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998688, 31.297924, 45.323853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126685, 0.171992, -0.976919,
		0.984126, 0.145191, -0.102058,
		0.124287, -0.974340, -0.187656,
		37.035973, 31.005623, 45.267555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465427, 31.603014, 44.876980>,  <36.948975, 31.687660, 45.398914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465427, 31.603014, 44.876980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247040, 31.268087, 44.865559>,  <37.116005, 31.067131, 44.858704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247040, 31.268087, 44.865559>,  <37.465427, 31.603014, 44.876980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247040, 31.268087, 44.865559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166606, 0.141914, -0.975758,
		0.821070, -0.527979, -0.216983,
		-0.545973, -0.837316, -0.028557,
		37.083248, 31.016893, 44.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706692, 31.290430, 44.219749>,  <37.465427, 31.603014, 44.876980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706692, 31.290430, 44.219749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347782, 31.134148, 44.301964>,  <37.132435, 31.040379, 44.351292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347782, 31.134148, 44.301964>,  <37.706692, 31.290430, 44.219749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347782, 31.134148, 44.301964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224187, 0.002189, -0.974544,
		0.380309, -0.920513, -0.089555,
		-0.897276, -0.390705, 0.205534,
		37.078598, 31.016935, 44.363625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594765, 30.767279, 43.699234>,  <37.706692, 31.290430, 44.219749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594765, 30.767279, 43.699234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238808, 30.883486, 43.839912>,  <37.025234, 30.953211, 43.924320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238808, 30.883486, 43.839912>,  <37.594765, 30.767279, 43.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238808, 30.883486, 43.839912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340337, 0.090527, -0.935936,
		-0.303745, -0.952577, 0.018315,
		-0.889893, 0.290519, 0.351694,
		36.971840, 30.970642, 43.945419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160454, 30.280008, 43.432537>,  <37.594765, 30.767279, 43.699234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160454, 30.280008, 43.432537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923931, 30.593267, 43.509518>,  <36.782017, 30.781223, 43.555706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923931, 30.593267, 43.509518>,  <37.160454, 30.280008, 43.432537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923931, 30.593267, 43.509518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336084, -0.022379, -0.941566,
		-0.733077, -0.621434, 0.276437,
		-0.591308, 0.783147, 0.192448,
		36.746540, 30.828211, 43.567253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543377, 30.085335, 43.050369>,  <37.160454, 30.280008, 43.432537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543377, 30.085335, 43.050369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501110, 30.476221, 43.124001>,  <36.475750, 30.710752, 43.168179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501110, 30.476221, 43.124001>,  <36.543377, 30.085335, 43.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501110, 30.476221, 43.124001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246960, 0.153521, -0.956787,
		-0.963247, -0.146564, 0.225111,
		-0.105671, 0.977215, 0.184074,
		36.469410, 30.769386, 43.179222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967434, 30.272774, 42.697346>,  <36.543377, 30.085335, 43.050369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967434, 30.272774, 42.697346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147087, 30.623802, 42.764462>,  <36.254879, 30.834419, 42.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147087, 30.623802, 42.764462>,  <35.967434, 30.272774, 42.697346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147087, 30.623802, 42.764462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255018, 0.305895, -0.917275,
		-0.856298, 0.369190, 0.361183,
		0.449133, 0.877569, 0.167787,
		36.281826, 30.887074, 42.814796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464451, 30.748848, 42.423512>,  <35.967434, 30.272774, 42.697346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464451, 30.748848, 42.423512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815487, 30.939810, 42.441074>,  <36.026108, 31.054386, 42.451614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815487, 30.939810, 42.441074>,  <35.464451, 30.748848, 42.423512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815487, 30.939810, 42.441074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200721, 0.449058, -0.870665,
		-0.435378, 0.755270, 0.489911,
		0.877586, 0.477404, 0.043912,
		36.078762, 31.083031, 42.454247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341820, 31.352297, 42.245731>,  <35.464451, 30.748848, 42.423512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341820, 31.352297, 42.245731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736294, 31.344532, 42.179932>,  <35.972977, 31.339872, 42.140450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736294, 31.344532, 42.179932>,  <35.341820, 31.352297, 42.245731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736294, 31.344532, 42.179932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143368, 0.397390, -0.906381,
		0.082966, 0.917444, 0.389118,
		0.986186, -0.019412, -0.164502,
		36.032150, 31.338709, 42.130581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506145, 31.911354, 41.919964>,  <35.341820, 31.352297, 42.245731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506145, 31.911354, 41.919964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839840, 31.712685, 41.824158>,  <36.040058, 31.593483, 41.766674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839840, 31.712685, 41.824158>,  <35.506145, 31.911354, 41.919964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839840, 31.712685, 41.824158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043351, 0.492099, -0.869459,
		0.549702, 0.714950, 0.432057,
		0.834235, -0.496674, -0.239514,
		36.090111, 31.563683, 41.752304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982544, 32.405220, 41.522427>,  <35.506145, 31.911354, 41.919964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982544, 32.405220, 41.522427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100719, 32.037914, 41.416969>,  <36.171623, 31.817532, 41.353695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100719, 32.037914, 41.416969>,  <35.982544, 32.405220, 41.522427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100719, 32.037914, 41.416969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031107, 0.285063, -0.958004,
		0.954856, 0.274827, 0.112781,
		0.295435, -0.918265, -0.263645,
		36.189350, 31.762436, 41.337875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621372, 32.472004, 41.319599>,  <35.982544, 32.405220, 41.522427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621372, 32.472004, 41.319599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526390, 32.123306, 41.148170>,  <36.469398, 31.914087, 41.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526390, 32.123306, 41.148170>,  <36.621372, 32.472004, 41.319599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526390, 32.123306, 41.148170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134677, 0.407387, -0.903271,
		0.962016, -0.272209, 0.020666,
		-0.237459, -0.871744, -0.428573,
		36.455151, 31.861782, 41.019600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181423, 32.289551, 40.755592>,  <36.621372, 32.472004, 41.319599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181423, 32.289551, 40.755592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842575, 32.087132, 40.690720>,  <36.639267, 31.965679, 40.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842575, 32.087132, 40.690720>,  <37.181423, 32.289551, 40.755592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842575, 32.087132, 40.690720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038180, 0.362370, -0.931252,
		0.530031, -0.782688, -0.326292,
		-0.847118, -0.506050, -0.162184,
		36.588440, 31.935316, 40.642063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384659, 31.815695, 40.197525>,  <37.181423, 32.289551, 40.755592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384659, 31.815695, 40.197525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985435, 31.808472, 40.173695>,  <36.745899, 31.804138, 40.159397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985435, 31.808472, 40.173695>,  <37.384659, 31.815695, 40.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985435, 31.808472, 40.173695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054042, 0.223832, -0.973128,
		0.030907, -0.974461, -0.222422,
		-0.998060, -0.018057, -0.059580,
		36.686016, 31.803055, 40.155819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166630, 31.338839, 39.532677>,  <37.384659, 31.815695, 40.197525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166630, 31.338839, 39.532677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865936, 31.588554, 39.617683>,  <36.685520, 31.738384, 39.668690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865936, 31.588554, 39.617683>,  <37.166630, 31.338839, 39.532677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865936, 31.588554, 39.617683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108243, 0.201082, -0.973576,
		-0.650527, -0.754870, -0.083584,
		-0.751730, 0.624290, 0.212519,
		36.640419, 31.775841, 39.681438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601212, 31.081036, 39.190109>,  <37.166630, 31.338839, 39.532677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601212, 31.081036, 39.190109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517567, 31.463104, 39.273933>,  <36.467381, 31.692347, 39.324230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517567, 31.463104, 39.273933>,  <36.601212, 31.081036, 39.190109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517567, 31.463104, 39.273933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219623, 0.162953, -0.961879,
		-0.952911, -0.247162, 0.175703,
		-0.209109, 0.955174, 0.209563,
		36.454834, 31.749657, 39.336803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971848, 31.165457, 38.920502>,  <36.601212, 31.081036, 39.190109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971848, 31.165457, 38.920502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143845, 31.524727, 38.957134>,  <36.247044, 31.740290, 38.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143845, 31.524727, 38.957134>,  <35.971848, 31.165457, 38.920502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143845, 31.524727, 38.957134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057948, 0.128681, -0.989991,
		-0.900970, 0.420383, 0.107380,
		0.429993, 0.898176, 0.091578,
		36.272842, 31.794180, 38.984608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536808, 31.616938, 38.577168>,  <35.971848, 31.165457, 38.920502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536808, 31.616938, 38.577168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887859, 31.807600, 38.597443>,  <36.098488, 31.921997, 38.609608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887859, 31.807600, 38.597443>,  <35.536808, 31.616938, 38.577168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887859, 31.807600, 38.597443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162496, 0.395329, -0.904052,
		-0.450962, 0.785183, 0.424406,
		0.877627, 0.476657, 0.050689,
		36.151146, 31.950598, 38.612648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377773, 32.242893, 38.407902>,  <35.536808, 31.616938, 38.577168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377773, 32.242893, 38.407902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773994, 32.251656, 38.353767>,  <36.011726, 32.256912, 38.321285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773994, 32.251656, 38.353767>,  <35.377773, 32.242893, 38.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773994, 32.251656, 38.353767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129590, 0.471823, -0.872118,
		0.044749, 0.881421, 0.470207,
		0.990557, 0.021908, -0.135337,
		36.071163, 32.258228, 38.313168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506603, 32.937004, 38.278385>,  <35.377773, 32.242893, 38.407902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506603, 32.937004, 38.278385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812519, 32.722965, 38.134850>,  <35.996067, 32.594543, 38.048729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812519, 32.722965, 38.134850>,  <35.506603, 32.937004, 38.278385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812519, 32.722965, 38.134850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096223, 0.455855, -0.884837,
		0.637053, 0.711244, 0.297145,
		0.764791, -0.535096, -0.358842,
		36.041958, 32.562435, 38.027195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017693, 33.370502, 37.992012>,  <35.506603, 32.937004, 38.278385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017693, 33.370502, 37.992012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080677, 33.028057, 37.795128>,  <36.118469, 32.822590, 37.676998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080677, 33.028057, 37.795128>,  <36.017693, 33.370502, 37.992012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080677, 33.028057, 37.795128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139027, 0.512683, -0.847248,
		0.977690, 0.064978, 0.199750,
		0.157461, -0.856116, -0.492211,
		36.127914, 32.771221, 37.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599918, 33.521713, 37.559288>,  <36.017693, 33.370502, 37.992012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599918, 33.521713, 37.559288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453186, 33.180141, 37.411648>,  <36.365147, 32.975197, 37.323063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453186, 33.180141, 37.411648>,  <36.599918, 33.521713, 37.559288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453186, 33.180141, 37.411648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210941, 0.310077, -0.927015,
		0.906058, -0.417914, 0.066384,
		-0.366828, -0.853932, -0.369102,
		36.343136, 32.923962, 37.300919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985512, 33.559414, 38.072937>,  <36.599918, 33.521713, 37.559288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985512, 33.559414, 38.072937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307312, 33.741238, 37.920017>,  <37.500393, 33.850330, 37.828266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307312, 33.741238, 37.920017>,  <36.985512, 33.559414, 38.072937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307312, 33.741238, 37.920017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582152, -0.475838, 0.659301,
		0.117779, -0.752965, -0.647436,
		0.804504, 0.454558, -0.382296,
		37.548664, 33.877605, 37.805328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547386, 33.052711, 37.767719>,  <36.985512, 33.559414, 38.072937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547386, 33.052711, 37.767719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717487, 33.396545, 37.881042>,  <37.819550, 33.602848, 37.949036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717487, 33.396545, 37.881042>,  <37.547386, 33.052711, 37.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717487, 33.396545, 37.881042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565835, -0.496811, 0.658035,
		0.706390, -0.119528, -0.697657,
		0.425257, 0.859588, 0.283309,
		37.845066, 33.654423, 37.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288994, 32.894299, 37.789326>,  <37.547386, 33.052711, 37.767719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288994, 32.894299, 37.789326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246983, 33.239639, 37.986744>,  <38.221775, 33.446846, 38.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246983, 33.239639, 37.986744>,  <38.288994, 32.894299, 37.789326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246983, 33.239639, 37.986744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651266, -0.315350, 0.690223,
		0.751547, 0.393923, -0.529153,
		-0.105027, 0.863353, 0.493549,
		38.215473, 33.498646, 38.134808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983513, 32.958019, 37.987854>,  <38.288994, 32.894299, 37.789326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983513, 32.958019, 37.987854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736736, 33.166344, 38.223866>,  <38.588669, 33.291340, 38.365471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736736, 33.166344, 38.223866>,  <38.983513, 32.958019, 37.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736736, 33.166344, 38.223866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598215, -0.176819, 0.781585,
		0.511389, 0.835156, -0.202472,
		-0.616944, 0.520815, 0.590026,
		38.551655, 33.322590, 38.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414532, 33.453094, 38.415859>,  <38.983513, 32.958019, 37.987854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414532, 33.453094, 38.415859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 33.369930, 38.602829>,  <38.864616, 33.320034, 38.715012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070835, 33.369930, 38.602829>,  <39.414532, 33.453094, 38.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070835, 33.369930, 38.602829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510200, -0.281313, 0.812748,
		-0.037485, 0.936823, 0.347789,
		-0.859239, -0.207908, 0.467422,
		38.813065, 33.307556, 38.743057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514771, 33.738510, 39.107918>,  <39.414532, 33.453094, 38.415859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514771, 33.738510, 39.107918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171680, 33.540745, 39.164284>,  <38.965824, 33.422085, 39.198105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171680, 33.540745, 39.164284>,  <39.514771, 33.738510, 39.107918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171680, 33.540745, 39.164284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218496, -0.102461, 0.970444,
		-0.465363, 0.863166, 0.195911,
		-0.857728, -0.494414, 0.140917,
		38.914364, 33.392422, 39.206558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336048, 34.013126, 39.804417>,  <39.514771, 33.738510, 39.107918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336048, 34.013126, 39.804417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127197, 33.681286, 39.725277>,  <39.001884, 33.482182, 39.677795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127197, 33.681286, 39.725277>,  <39.336048, 34.013126, 39.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127197, 33.681286, 39.725277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054906, -0.264193, 0.962906,
		-0.851096, 0.491900, 0.183493,
		-0.522130, -0.829601, -0.197845,
		38.970558, 33.432407, 39.665924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755798, 33.914360, 40.337570>,  <39.336048, 34.013126, 39.804417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755798, 33.914360, 40.337570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819916, 33.556343, 40.171097>,  <38.858387, 33.341534, 40.071213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819916, 33.556343, 40.171097>,  <38.755798, 33.914360, 40.337570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819916, 33.556343, 40.171097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033870, -0.426377, 0.903911,
		-0.986489, -0.130791, -0.098659,
		0.160290, -0.895040, -0.416186,
		38.868004, 33.287830, 40.046242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419647, 33.457157, 40.795952>,  <38.755798, 33.914360, 40.337570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419647, 33.457157, 40.795952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607258, 33.184883, 40.570858>,  <38.719826, 33.021519, 40.435802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607258, 33.184883, 40.570858>,  <38.419647, 33.457157, 40.795952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607258, 33.184883, 40.570858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217163, -0.528725, 0.820543,
		-0.856067, -0.507066, -0.100169,
		0.469031, -0.680687, -0.562739,
		38.747967, 32.980679, 40.402035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177807, 32.774666, 40.955040>,  <38.419647, 33.457157, 40.795952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177807, 32.774666, 40.955040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547775, 32.698593, 40.823372>,  <38.769756, 32.652950, 40.744370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547775, 32.698593, 40.823372>,  <38.177807, 32.774666, 40.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547775, 32.698593, 40.823372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226183, -0.420656, 0.878573,
		-0.305557, -0.887062, -0.346057,
		0.924920, -0.190182, -0.329173,
		38.825253, 32.641537, 40.724621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354404, 32.098751, 41.191856>,  <38.177807, 32.774666, 40.955040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354404, 32.098751, 41.191856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694813, 32.300415, 41.133080>,  <38.899055, 32.421413, 41.097813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694813, 32.300415, 41.133080>,  <38.354404, 32.098751, 41.191856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694813, 32.300415, 41.133080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255068, -0.152248, 0.954861,
		0.459031, -0.850084, -0.258161,
		0.851017, 0.504160, -0.146943,
		38.950119, 32.451664, 41.088997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871078, 31.637848, 41.396317>,  <38.354404, 32.098751, 41.191856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871078, 31.637848, 41.396317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061749, 31.988529, 41.422153>,  <39.176151, 32.198936, 41.437656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061749, 31.988529, 41.422153>,  <38.871078, 31.637848, 41.396317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061749, 31.988529, 41.422153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267756, -0.214782, 0.939242,
		0.837307, -0.430423, -0.337124,
		0.476679, 0.876701, 0.064590,
		39.204754, 32.251541, 41.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612751, 31.479952, 41.336735>,  <38.871078, 31.637848, 41.396317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612751, 31.479952, 41.336735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525517, 31.817801, 41.532307>,  <39.473175, 32.020512, 41.649651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525517, 31.817801, 41.532307>,  <39.612751, 31.479952, 41.336735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525517, 31.817801, 41.532307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315189, -0.413180, 0.854364,
		0.923630, 0.340432, -0.176106,
		-0.218089, 0.844623, 0.488927,
		39.460091, 32.071186, 41.678986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026051, 31.492773, 41.966602>,  <39.612751, 31.479952, 41.336735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026051, 31.492773, 41.966602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773373, 31.782530, 42.077038>,  <39.621765, 31.956383, 42.143299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773373, 31.782530, 42.077038>,  <40.026051, 31.492773, 41.966602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773373, 31.782530, 42.077038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095146, -0.281001, 0.954980,
		0.769358, 0.629522, 0.108583,
		-0.631692, 0.724390, 0.276086,
		39.583866, 31.999847, 42.159863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322529, 31.934626, 42.509274>,  <40.026051, 31.492773, 41.966602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322529, 31.934626, 42.509274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926262, 31.984983, 42.530174>,  <39.688503, 32.015198, 42.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926262, 31.984983, 42.530174>,  <40.322529, 31.934626, 42.509274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926262, 31.984983, 42.530174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036535, -0.124041, 0.991604,
		0.131321, 0.984258, 0.118283,
		-0.990666, 0.125897, 0.052249,
		39.629063, 32.022751, 42.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207714, 32.435001, 43.068615>,  <40.322529, 31.934626, 42.509274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207714, 32.435001, 43.068615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858418, 32.244843, 43.025810>,  <39.648842, 32.130749, 43.000130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858418, 32.244843, 43.025810>,  <40.207714, 32.435001, 43.068615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858418, 32.244843, 43.025810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077783, -0.080795, 0.993691,
		-0.481043, 0.876054, 0.033575,
		-0.873239, -0.475397, -0.107008,
		39.596447, 32.102222, 42.993710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745598, 32.812576, 43.486423>,  <40.207714, 32.435001, 43.068615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745598, 32.812576, 43.486423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573597, 32.454704, 43.438004>,  <39.470398, 32.239983, 43.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573597, 32.454704, 43.438004>,  <39.745598, 32.812576, 43.486423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573597, 32.454704, 43.438004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124076, -0.074247, 0.989491,
		-0.894261, 0.440504, -0.079081,
		-0.430003, -0.894675, -0.121052,
		39.444595, 32.186302, 43.401688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188408, 32.942318, 43.822304>,  <39.745598, 32.812576, 43.486423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188408, 32.942318, 43.822304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200813, 32.542828, 43.806347>,  <39.208256, 32.303135, 43.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200813, 32.542828, 43.806347>,  <39.188408, 32.942318, 43.822304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200813, 32.542828, 43.806347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106534, -0.042988, 0.993380,
		-0.993825, -0.026561, -0.107731,
		0.031016, -0.998723, -0.039893,
		39.210117, 32.243210, 43.794380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688564, 32.699879, 44.273560>,  <39.188408, 32.942318, 43.822304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688564, 32.699879, 44.273560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970955, 32.422085, 44.217995>,  <39.140388, 32.255409, 44.184654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970955, 32.422085, 44.217995>,  <38.688564, 32.699879, 44.273560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970955, 32.422085, 44.217995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128323, -0.067467, 0.989435,
		-0.696516, -0.716341, 0.041488,
		0.705974, -0.694481, -0.138914,
		39.182747, 32.213741, 44.176319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423229, 32.203220, 44.644737>,  <38.688564, 32.699879, 44.273560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423229, 32.203220, 44.644737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811928, 32.114677, 44.611984>,  <39.045147, 32.061554, 44.592331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811928, 32.114677, 44.611984>,  <38.423229, 32.203220, 44.644737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811928, 32.114677, 44.611984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042074, -0.178923, 0.982963,
		-0.232239, -0.958638, -0.164555,
		0.971748, -0.221359, -0.081886,
		39.103451, 32.048271, 44.587418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606720, 31.522100, 45.050510>,  <38.423229, 32.203220, 44.644737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606720, 31.522100, 45.050510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948093, 31.729183, 45.026417>,  <39.152916, 31.853434, 45.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948093, 31.729183, 45.026417>,  <38.606720, 31.522100, 45.050510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948093, 31.729183, 45.026417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117144, -0.077920, 0.990053,
		0.507866, -0.852001, -0.127146,
		0.853434, 0.517709, -0.060234,
		39.204124, 31.884497, 45.008347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033863, 31.133095, 45.417809>,  <38.606720, 31.522100, 45.050510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033863, 31.133095, 45.417809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182068, 31.503893, 45.394501>,  <39.270992, 31.726372, 45.380516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182068, 31.503893, 45.394501>,  <39.033863, 31.133095, 45.417809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182068, 31.503893, 45.394501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037711, 0.077693, 0.996264,
		0.928061, -0.366933, 0.063744,
		0.370514, 0.926998, -0.058266,
		39.293221, 31.781992, 45.377022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538452, 31.165751, 45.867542>,  <39.033863, 31.133095, 45.417809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538452, 31.165751, 45.867542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453598, 31.553164, 45.815468>,  <39.402687, 31.785610, 45.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453598, 31.553164, 45.815468>,  <39.538452, 31.165751, 45.867542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453598, 31.553164, 45.815468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014670, 0.136357, 0.990551,
		0.977130, 0.208220, -0.043135,
		-0.212135, 0.968531, -0.130184,
		39.389957, 31.843723, 45.776413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942146, 31.458036, 46.364681>,  <39.538452, 31.165751, 45.867542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942146, 31.458036, 46.364681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691551, 31.756428, 46.274326>,  <39.541195, 31.935463, 46.220112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691551, 31.756428, 46.274326>,  <39.942146, 31.458036, 46.364681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691551, 31.756428, 46.274326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130982, 0.184927, 0.973984,
		0.768345, 0.639779, -0.018145,
		-0.626490, 0.745979, -0.225887,
		39.503605, 31.980221, 46.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064583, 31.999561, 46.816486>,  <39.942146, 31.458036, 46.364681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064583, 31.999561, 46.816486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700596, 32.058697, 46.661510>,  <39.482204, 32.094177, 46.568523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700596, 32.058697, 46.661510>,  <40.064583, 31.999561, 46.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700596, 32.058697, 46.661510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332482, 0.298275, 0.894700,
		0.247834, 0.942961, -0.222266,
		-0.909964, 0.147838, -0.387440,
		39.427608, 32.103046, 46.545277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973289, 32.643555, 47.023964>,  <40.064583, 31.999561, 46.816486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973289, 32.643555, 47.023964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617970, 32.476112, 46.948402>,  <39.404778, 32.375645, 46.903065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617970, 32.476112, 46.948402>,  <39.973289, 32.643555, 47.023964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617970, 32.476112, 46.948402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292147, 0.197691, 0.935718,
		-0.354356, 0.886388, -0.297904,
		-0.888303, -0.418609, -0.188903,
		39.351479, 32.350529, 46.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433483, 33.241364, 47.177158>,  <39.973289, 32.643555, 47.023964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433483, 33.241364, 47.177158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221249, 32.902870, 47.196625>,  <39.093910, 32.699776, 47.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221249, 32.902870, 47.196625>,  <39.433483, 33.241364, 47.177158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221249, 32.902870, 47.196625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224714, 0.195793, 0.954551,
		-0.817303, 0.495534, -0.294046,
		-0.530584, -0.846234, 0.048669,
		39.062073, 32.648998, 47.211224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810944, 33.408001, 47.512634>,  <39.433483, 33.241364, 47.177158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810944, 33.408001, 47.512634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849426, 33.014431, 47.572811>,  <38.872517, 32.778290, 47.608917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849426, 33.014431, 47.572811>,  <38.810944, 33.408001, 47.512634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849426, 33.014431, 47.572811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234261, 0.124519, 0.964166,
		-0.967402, -0.128000, -0.218516,
		0.096204, -0.983926, 0.150446,
		38.878288, 32.719254, 47.617947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299786, 33.192345, 48.023647>,  <38.810944, 33.408001, 47.512634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299786, 33.192345, 48.023647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483521, 32.839931, 48.068878>,  <38.593761, 32.628483, 48.096016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483521, 32.839931, 48.068878>,  <38.299786, 33.192345, 48.023647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483521, 32.839931, 48.068878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170396, 0.037540, 0.984660,
		-0.871764, -0.471562, -0.132881,
		0.459340, -0.881033, 0.113079,
		38.621323, 32.575623, 48.102802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960991, 32.796738, 48.472679>,  <38.299786, 33.192345, 48.023647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960991, 32.796738, 48.472679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313488, 32.607746, 48.477970>,  <38.524986, 32.494350, 48.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313488, 32.607746, 48.477970>,  <37.960991, 32.796738, 48.472679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313488, 32.607746, 48.477970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017607, 0.060782, 0.997996,
		-0.472337, -0.879243, 0.061883,
		0.881242, -0.472480, 0.013229,
		38.577862, 32.466003, 48.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965485, 32.331154, 48.947803>,  <37.960991, 32.796738, 48.472679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965485, 32.331154, 48.947803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361164, 32.389774, 48.946812>,  <38.598572, 32.424946, 48.946217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361164, 32.389774, 48.946812>,  <37.965485, 32.331154, 48.947803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361164, 32.389774, 48.946812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002798, -0.001967, 0.999994,
		0.146551, -0.989200, -0.002356,
		0.989199, 0.146556, -0.002479,
		38.657925, 32.433743, 48.946068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172157, 32.092186, 49.549603>,  <37.965485, 32.331154, 48.947803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172157, 32.092186, 49.549603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490932, 32.308952, 49.442860>,  <38.682198, 32.439011, 49.378815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490932, 32.308952, 49.442860>,  <38.172157, 32.092186, 49.549603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490932, 32.308952, 49.442860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197530, 0.183693, 0.962932,
		0.570848, -0.820112, 0.039348,
		0.796940, 0.541916, -0.266858,
		38.730015, 32.471527, 49.362801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521637, 32.097565, 50.028645>,  <38.172157, 32.092186, 49.549603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521637, 32.097565, 50.028645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716667, 32.396805, 49.848595>,  <38.833687, 32.576347, 49.740562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716667, 32.396805, 49.848595>,  <38.521637, 32.097565, 50.028645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716667, 32.396805, 49.848595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071763, 0.479477, 0.874615,
		0.870125, -0.458745, 0.180096,
		0.487577, 0.748100, -0.450127,
		38.862942, 32.621235, 49.713558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027267, 32.154198, 50.530846>,  <38.521637, 32.097565, 50.028645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027267, 32.154198, 50.530846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984913, 32.483589, 50.307896>,  <38.959499, 32.681225, 50.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984913, 32.483589, 50.307896>,  <39.027267, 32.154198, 50.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984913, 32.483589, 50.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097333, 0.566416, 0.818352,
		0.989603, 0.032401, -0.140127,
		-0.105885, 0.823482, -0.557373,
		38.953148, 32.730633, 50.140682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475090, 32.596977, 50.874870>,  <39.027267, 32.154198, 50.530846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475090, 32.596977, 50.874870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225861, 32.823097, 50.658646>,  <39.076321, 32.958771, 50.528912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225861, 32.823097, 50.658646>,  <39.475090, 32.596977, 50.874870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225861, 32.823097, 50.658646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236133, 0.522914, 0.819025,
		0.745664, 0.637961, -0.192330,
		-0.623078, 0.565302, -0.540562,
		39.038937, 32.992687, 50.496475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651951, 33.272205, 51.152885>,  <39.475090, 32.596977, 50.874870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651951, 33.272205, 51.152885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303371, 33.299854, 50.958652>,  <39.094223, 33.316444, 50.842113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303371, 33.299854, 50.958652>,  <39.651951, 33.272205, 51.152885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303371, 33.299854, 50.958652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365797, 0.567934, 0.737322,
		0.326745, 0.820167, -0.469643,
		-0.871453, 0.069122, -0.485584,
		39.041935, 33.320591, 50.812977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418045, 33.977779, 51.284084>,  <39.651951, 33.272205, 51.152885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418045, 33.977779, 51.284084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114559, 33.731907, 51.197815>,  <38.932468, 33.584385, 51.146053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114559, 33.731907, 51.197815>,  <39.418045, 33.977779, 51.284084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114559, 33.731907, 51.197815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491038, 0.322109, 0.809400,
		-0.428050, 0.720011, -0.546220,
		-0.758719, -0.614679, -0.215674,
		38.886944, 33.547504, 51.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920750, 34.323814, 51.821163>,  <39.418045, 33.977779, 51.284084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920750, 34.323814, 51.821163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806755, 33.968166, 51.677917>,  <38.738358, 33.754776, 51.591969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806755, 33.968166, 51.677917>,  <38.920750, 34.323814, 51.821163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806755, 33.968166, 51.677917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640232, -0.101484, 0.761448,
		-0.713363, 0.446277, -0.540323,
		-0.284983, -0.889122, -0.358116,
		38.721260, 33.701431, 51.570484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365742, 34.801926, 51.571518>,  <38.920750, 34.323814, 51.821163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365742, 34.801926, 51.571518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494461, 35.167908, 51.668926>,  <38.571693, 35.387497, 51.727371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494461, 35.167908, 51.668926>,  <38.365742, 34.801926, 51.571518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494461, 35.167908, 51.668926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073522, 0.232281, -0.969866,
		-0.943950, 0.330003, 0.007478,
		0.321796, 0.914955, 0.243524,
		38.591000, 35.442394, 51.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960335, 35.268383, 51.202259>,  <38.365742, 34.801926, 51.571518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960335, 35.268383, 51.202259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290955, 35.479527, 51.280422>,  <38.489326, 35.606213, 51.327320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290955, 35.479527, 51.280422>,  <37.960335, 35.268383, 51.202259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290955, 35.479527, 51.280422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053685, 0.271653, -0.960897,
		-0.560299, 0.804719, 0.196197,
		0.826549, 0.527856, 0.195408,
		38.538918, 35.637882, 51.339046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778831, 35.952827, 51.087673>,  <37.960335, 35.268383, 51.202259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778831, 35.952827, 51.087673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170914, 35.882389, 51.051498>,  <38.406162, 35.840126, 51.029793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170914, 35.882389, 51.051498>,  <37.778831, 35.952827, 51.087673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170914, 35.882389, 51.051498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052923, 0.207096, -0.976888,
		0.190757, 0.962341, 0.193678,
		0.980210, -0.176098, -0.090434,
		38.464977, 35.829559, 51.024368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090946, 36.532475, 50.609444>,  <37.778831, 35.952827, 51.087673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090946, 36.532475, 50.609444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363491, 36.240211, 50.592045>,  <38.527016, 36.064854, 50.581604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363491, 36.240211, 50.592045>,  <38.090946, 36.532475, 50.609444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363491, 36.240211, 50.592045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112061, 0.162856, -0.980265,
		0.723321, 0.663037, 0.192842,
		0.681358, -0.730657, -0.043497,
		38.567898, 36.021015, 50.578995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605347, 36.718925, 50.187233>,  <38.090946, 36.532475, 50.609444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605347, 36.718925, 50.187233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654587, 36.322250, 50.172218>,  <38.684132, 36.084248, 50.163212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654587, 36.322250, 50.172218>,  <38.605347, 36.718925, 50.187233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654587, 36.322250, 50.172218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043506, 0.043177, -0.998120,
		0.991440, 0.121237, 0.048460,
		0.123101, -0.991684, -0.037533,
		38.691517, 36.024746, 50.160957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054386, 36.598560, 49.669231>,  <38.605347, 36.718925, 50.187233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054386, 36.598560, 49.669231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902042, 36.231190, 49.712017>,  <38.810635, 36.010769, 49.737690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902042, 36.231190, 49.712017>,  <39.054386, 36.598560, 49.669231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902042, 36.231190, 49.712017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110294, -0.159985, -0.980939,
		0.918031, -0.361803, 0.162228,
		-0.380860, -0.918425, 0.106966,
		38.787785, 35.955662, 49.744106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551708, 36.174122, 49.382988>,  <39.054386, 36.598560, 49.669231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551708, 36.174122, 49.382988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206234, 35.972755, 49.392914>,  <38.998947, 35.851936, 49.398869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206234, 35.972755, 49.392914>,  <39.551708, 36.174122, 49.382988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206234, 35.972755, 49.392914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175111, -0.345879, -0.921794,
		0.472626, -0.791798, 0.386885,
		-0.863690, -0.503412, 0.024819,
		38.947128, 35.821732, 49.400360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671982, 35.498783, 49.139896>,  <39.551708, 36.174122, 49.382988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671982, 35.498783, 49.139896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 35.556313, 49.089870>,  <39.043716, 35.590832, 49.059853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 35.556313, 49.089870>,  <39.671982, 35.498783, 49.139896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279316, 35.556313, 49.089870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069583, -0.340470, -0.937677,
		-0.177442, -0.929191, 0.324221,
		-0.981668, 0.143823, -0.125069,
		38.984814, 35.599461, 49.052349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430565, 34.870441, 48.977966>,  <39.671982, 35.498783, 49.139896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430565, 34.870441, 48.977966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142525, 35.113029, 48.843124>,  <38.969700, 35.258583, 48.762218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142525, 35.113029, 48.843124>,  <39.430565, 34.870441, 48.977966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142525, 35.113029, 48.843124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028853, -0.459245, -0.887841,
		-0.693268, -0.649063, 0.313205,
		-0.720102, 0.606475, -0.337107,
		38.926495, 35.294971, 48.741993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112366, 34.427486, 48.522793>,  <39.430565, 34.870441, 48.977966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112366, 34.427486, 48.522793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993771, 34.796646, 48.424534>,  <38.922611, 35.018143, 48.365578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993771, 34.796646, 48.424534>,  <39.112366, 34.427486, 48.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993771, 34.796646, 48.424534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031972, -0.247474, -0.968367,
		-0.954500, -0.294967, 0.043867,
		-0.296492, 0.922903, -0.245645,
		38.904823, 35.073517, 48.350842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591450, 34.401821, 48.017910>,  <39.112366, 34.427486, 48.522793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591450, 34.401821, 48.017910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733875, 34.773506, 47.978352>,  <38.819332, 34.996517, 47.954617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733875, 34.773506, 47.978352>,  <38.591450, 34.401821, 48.017910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733875, 34.773506, 47.978352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026347, -0.095810, -0.995051,
		-0.934090, 0.356907, -0.009632,
		0.356063, 0.929214, -0.098899,
		38.840694, 35.052269, 47.948681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192463, 34.714359, 47.546700>,  <38.591450, 34.401821, 48.017910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192463, 34.714359, 47.546700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 34.911724, 47.539894>,  <38.749023, 35.030144, 47.535812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540314, 34.911724, 47.539894>,  <38.192463, 34.714359, 47.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540314, 34.911724, 47.539894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060349, 0.072039, -0.995574,
		-0.490004, 0.866806, 0.092425,
		0.869628, 0.493414, -0.017011,
		38.801201, 35.059750, 47.534790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101345, 35.216858, 47.039303>,  <38.192463, 34.714359, 47.546700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101345, 35.216858, 47.039303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500584, 35.207596, 47.062157>,  <38.740128, 35.202038, 47.075871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500584, 35.207596, 47.062157>,  <38.101345, 35.216858, 47.039303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500584, 35.207596, 47.062157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056704, -0.018957, -0.998211,
		0.024199, 0.999552, -0.017608,
		0.998098, -0.023157, 0.057138,
		38.800014, 35.200649, 47.079296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260330, 35.580860, 46.447357>,  <38.101345, 35.216858, 47.039303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260330, 35.580860, 46.447357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595470, 35.394707, 46.561497>,  <38.796555, 35.283016, 46.629982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595470, 35.394707, 46.561497>,  <38.260330, 35.580860, 46.447357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595470, 35.394707, 46.561497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261068, -0.117478, -0.958145,
		0.479426, 0.877279, 0.023067,
		0.837851, -0.465382, 0.285352,
		38.846825, 35.255093, 46.647102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686314, 35.818489, 45.952282>,  <38.260330, 35.580860, 46.447357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686314, 35.818489, 45.952282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848110, 35.482624, 46.097252>,  <38.945187, 35.281105, 46.184235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848110, 35.482624, 46.097252>,  <38.686314, 35.818489, 45.952282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848110, 35.482624, 46.097252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479549, -0.142709, -0.865833,
		0.778730, 0.524023, 0.344935,
		0.404492, -0.839663, 0.362426,
		38.969460, 35.230724, 46.205978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291382, 35.898991, 45.705723>,  <38.686314, 35.818489, 45.952282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291382, 35.898991, 45.705723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222961, 35.519562, 45.812271>,  <39.181908, 35.291904, 45.876202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222961, 35.519562, 45.812271>,  <39.291382, 35.898991, 45.705723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222961, 35.519562, 45.812271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089591, -0.284213, -0.954566,
		0.981180, -0.139416, 0.133599,
		-0.171052, -0.948571, 0.266374,
		39.171646, 35.234989, 45.892181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855350, 35.589569, 45.425968>,  <39.291382, 35.898991, 45.705723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855350, 35.589569, 45.425968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560425, 35.324505, 45.478489>,  <39.383469, 35.165466, 45.510002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560425, 35.324505, 45.478489>,  <39.855350, 35.589569, 45.425968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560425, 35.324505, 45.478489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108637, -0.075521, -0.991209,
		0.666754, -0.745099, -0.016307,
		-0.737317, -0.662664, 0.131299,
		39.339230, 35.125706, 45.517879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166485, 34.936340, 45.218121>,  <39.855350, 35.589569, 45.425968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166485, 34.936340, 45.218121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767563, 34.916580, 45.196404>,  <39.528210, 34.904724, 45.183372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767563, 34.916580, 45.196404>,  <40.166485, 34.936340, 45.218121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767563, 34.916580, 45.196404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058931, -0.097901, -0.993450,
		0.043764, -0.993969, 0.100548,
		-0.997302, -0.049403, -0.054291,
		39.468372, 34.901760, 45.180115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933636, 34.294868, 44.832870>,  <40.166485, 34.936340, 45.218121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933636, 34.294868, 44.832870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637222, 34.563087, 44.818798>,  <39.459373, 34.724018, 44.810356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637222, 34.563087, 44.818798>,  <39.933636, 34.294868, 44.832870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637222, 34.563087, 44.818798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038294, -0.094509, -0.994787,
		-0.670380, -0.735819, 0.095712,
		-0.741029, 0.670550, -0.035179,
		39.414913, 34.764252, 44.808243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533146, 34.045944, 44.382362>,  <39.933636, 34.294868, 44.832870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533146, 34.045944, 44.382362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413227, 34.427532, 44.385494>,  <39.341274, 34.656487, 44.387375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413227, 34.427532, 44.385494>,  <39.533146, 34.045944, 44.382362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413227, 34.427532, 44.385494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128889, -0.032371, -0.991130,
		-0.945257, -0.298146, 0.132661,
		-0.299795, 0.953971, 0.007829,
		39.323288, 34.713722, 44.387844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924828, 34.083710, 43.952526>,  <39.533146, 34.045944, 44.382362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924828, 34.083710, 43.952526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074314, 34.454556, 43.963814>,  <39.164005, 34.677063, 43.970589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074314, 34.454556, 43.963814>,  <38.924828, 34.083710, 43.952526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074314, 34.454556, 43.963814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146869, 0.089191, -0.985127,
		-0.915843, 0.364009, 0.169496,
		0.373712, 0.927115, 0.028224,
		39.186428, 34.732689, 43.972282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663368, 34.288338, 43.327324>,  <38.924828, 34.083710, 43.952526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663368, 34.288338, 43.327324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884083, 34.605019, 43.432205>,  <39.016510, 34.795025, 43.495132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884083, 34.605019, 43.432205>,  <38.663368, 34.288338, 43.327324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884083, 34.605019, 43.432205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154404, 0.211982, -0.964999,
		-0.819570, 0.572954, -0.005274,
		0.551782, 0.791699, 0.262201,
		39.049618, 34.842529, 43.510864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403404, 34.780781, 42.902832>,  <38.663368, 34.288338, 43.327324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403404, 34.780781, 42.902832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770134, 34.898823, 43.010422>,  <38.990173, 34.969646, 43.074978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770134, 34.898823, 43.010422>,  <38.403404, 34.780781, 42.902832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770134, 34.898823, 43.010422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232782, 0.152288, -0.960532,
		-0.324421, 0.943250, 0.070926,
		0.916823, 0.295106, 0.268977,
		39.045181, 34.987354, 43.091114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544579, 35.218418, 42.316502>,  <38.403404, 34.780781, 42.902832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544579, 35.218418, 42.316502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888897, 35.174625, 42.515312>,  <39.095490, 35.148350, 42.634598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888897, 35.174625, 42.515312>,  <38.544579, 35.218418, 42.316502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888897, 35.174625, 42.515312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508548, 0.146433, -0.848490,
		0.020116, 0.983143, 0.181728,
		0.860798, -0.109485, 0.497030,
		39.147137, 35.141781, 42.664421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075909, 35.783848, 42.191708>,  <38.544579, 35.218418, 42.316502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075909, 35.783848, 42.191708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278957, 35.450874, 42.280586>,  <39.400787, 35.251091, 42.333912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278957, 35.450874, 42.280586>,  <39.075909, 35.783848, 42.191708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278957, 35.450874, 42.280586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551363, 0.115693, -0.826204,
		0.662057, 0.541908, 0.517704,
		0.507622, -0.832437, 0.222193,
		39.431244, 35.201145, 42.347244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673546, 35.839264, 41.865002>,  <39.075909, 35.783848, 42.191708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673546, 35.839264, 41.865002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702728, 35.448822, 41.946884>,  <39.720238, 35.214558, 41.996014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702728, 35.448822, 41.946884>,  <39.673546, 35.839264, 41.865002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702728, 35.448822, 41.946884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577279, -0.126045, -0.806760,
		0.813281, 0.177034, 0.554286,
		0.072959, -0.976100, 0.204708,
		39.724617, 35.155991, 42.008297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336796, 35.740894, 41.788673>,  <39.673546, 35.839264, 41.865002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336796, 35.740894, 41.788673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207401, 35.362537, 41.778492>,  <40.129765, 35.135525, 41.772381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207401, 35.362537, 41.778492>,  <40.336796, 35.740894, 41.788673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207401, 35.362537, 41.778492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588220, -0.179949, -0.788426,
		0.741183, -0.270023, 0.614603,
		-0.323490, -0.945889, -0.025457,
		40.110355, 35.078770, 41.770855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893463, 35.296135, 41.846054>,  <40.336796, 35.740894, 41.788673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893463, 35.296135, 41.846054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585712, 35.125175, 41.656147>,  <40.401062, 35.022602, 41.542202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585712, 35.125175, 41.656147>,  <40.893463, 35.296135, 41.846054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585712, 35.125175, 41.656147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579685, -0.154865, -0.799988,
		0.268387, -0.890702, 0.366903,
		-0.769372, -0.427395, -0.474763,
		40.354900, 34.996956, 41.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169533, 34.764332, 41.493294>,  <40.893463, 35.296135, 41.846054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169533, 34.764332, 41.493294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823433, 34.876789, 41.327255>,  <40.615772, 34.944263, 41.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823433, 34.876789, 41.327255>,  <41.169533, 34.764332, 41.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823433, 34.876789, 41.327255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449206, 0.067101, -0.890905,
		-0.222619, -0.957317, -0.184351,
		-0.865249, 0.281144, -0.415094,
		40.563858, 34.961132, 41.202728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142792, 34.365761, 40.956047>,  <41.169533, 34.764332, 41.493294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142792, 34.365761, 40.956047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888374, 34.662991, 40.872829>,  <40.735722, 34.841328, 40.822899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888374, 34.662991, 40.872829>,  <41.142792, 34.365761, 40.956047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888374, 34.662991, 40.872829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397239, 0.084162, -0.913848,
		-0.661548, -0.663894, -0.348710,
		-0.636047, 0.743076, -0.208047,
		40.697559, 34.885914, 40.810413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966038, 34.239647, 40.292568>,  <41.142792, 34.365761, 40.956047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966038, 34.239647, 40.292568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848888, 34.619236, 40.339352>,  <40.778599, 34.846989, 40.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848888, 34.619236, 40.339352>,  <40.966038, 34.239647, 40.292568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848888, 34.619236, 40.339352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380824, 0.227975, -0.896103,
		-0.877039, -0.217904, -0.428159,
		-0.292874, 0.948970, 0.116960,
		40.761024, 34.903927, 40.374439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688793, 34.528694, 39.605526>,  <40.966038, 34.239647, 40.292568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688793, 34.528694, 39.605526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768021, 34.879642, 39.780338>,  <40.815559, 35.090210, 39.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768021, 34.879642, 39.780338>,  <40.688793, 34.528694, 39.605526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768021, 34.879642, 39.780338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490848, 0.297149, -0.819006,
		-0.848432, 0.376737, -0.371797,
		0.198071, 0.877367, 0.437030,
		40.827442, 35.142853, 39.911446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624882, 34.964443, 39.037117>,  <40.688793, 34.528694, 39.605526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624882, 34.964443, 39.037117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814209, 35.177776, 39.317554>,  <40.927807, 35.305775, 39.485817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814209, 35.177776, 39.317554>,  <40.624882, 34.964443, 39.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814209, 35.177776, 39.317554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586761, 0.402741, -0.702504,
		-0.657025, 0.743880, -0.122313,
		0.473318, 0.533331, 0.701091,
		40.956203, 35.337776, 39.527882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540859, 35.687130, 38.893856>,  <40.624882, 34.964443, 39.037117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540859, 35.687130, 38.893856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866146, 35.660973, 39.125164>,  <41.061317, 35.645279, 39.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866146, 35.660973, 39.125164>,  <40.540859, 35.687130, 38.893856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866146, 35.660973, 39.125164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547784, 0.421503, -0.722681,
		-0.196483, 0.904466, 0.378597,
		0.813220, -0.065395, 0.578270,
		41.110111, 35.641354, 39.298645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803974, 36.309723, 38.785664>,  <40.540859, 35.687130, 38.893856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803974, 36.309723, 38.785664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099632, 36.078411, 38.923801>,  <41.277027, 35.939625, 39.006683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099632, 36.078411, 38.923801>,  <40.803974, 36.309723, 38.785664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099632, 36.078411, 38.923801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624775, 0.397079, -0.672298,
		0.251648, 0.712685, 0.654793,
		0.739141, -0.578281, 0.345344,
		41.321373, 35.904926, 39.027405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297245, 36.743057, 39.050449>,  <40.803974, 36.309723, 38.785664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297245, 36.743057, 39.050449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453552, 36.394176, 38.932762>,  <41.547337, 36.184849, 38.862148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453552, 36.394176, 38.932762>,  <41.297245, 36.743057, 39.050449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453552, 36.394176, 38.932762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740957, 0.487698, -0.461664,
		0.546153, -0.037598, 0.836841,
		0.390768, -0.872202, -0.294216,
		41.570782, 36.132515, 38.844498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903824, 36.910053, 38.952209>,  <41.297245, 36.743057, 39.050449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903824, 36.910053, 38.952209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901127, 36.557755, 38.762791>,  <41.899509, 36.346375, 38.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901127, 36.557755, 38.762791>,  <41.903824, 36.910053, 38.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901127, 36.557755, 38.762791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654418, 0.354178, -0.668053,
		0.756103, -0.314405, 0.573984,
		-0.006747, -0.880742, -0.473548,
		41.899101, 36.293533, 38.620728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584061, 36.821159, 38.869747>,  <41.903824, 36.910053, 38.952209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584061, 36.821159, 38.869747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382385, 36.594601, 38.608982>,  <42.261379, 36.458664, 38.452522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382385, 36.594601, 38.608982>,  <42.584061, 36.821159, 38.869747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382385, 36.594601, 38.608982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444613, 0.476905, -0.758209,
		0.740346, -0.672129, 0.011376,
		-0.504189, -0.566395, -0.651912,
		42.231129, 36.424683, 38.413410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088524, 36.406078, 38.530579>,  <42.584061, 36.821159, 38.869747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088524, 36.406078, 38.530579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762253, 36.427055, 38.300125>,  <42.566490, 36.439640, 38.161854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762253, 36.427055, 38.300125>,  <43.088524, 36.406078, 38.530579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762253, 36.427055, 38.300125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573373, 0.205721, -0.793046,
		0.076932, -0.977205, -0.197871,
		-0.815674, 0.052443, -0.576129,
		42.517551, 36.442787, 38.127285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417328, 36.184258, 37.920429>,  <43.088524, 36.406078, 38.530579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417328, 36.184258, 37.920429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071083, 36.368599, 37.842117>,  <42.863338, 36.479206, 37.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071083, 36.368599, 37.842117>,  <43.417328, 36.184258, 37.920429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071083, 36.368599, 37.842117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380352, 0.350886, -0.855694,
		-0.325655, -0.815163, -0.479018,
		-0.865610, 0.460856, -0.195781,
		42.811401, 36.506855, 37.783382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832275, 36.276573, 37.360947>,  <43.417328, 36.184258, 37.920429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832275, 36.276573, 37.360947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913689, 36.462215, 37.016117>,  <43.962536, 36.573601, 36.809219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913689, 36.462215, 37.016117>,  <43.832275, 36.276573, 37.360947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913689, 36.462215, 37.016117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716469, 0.670699, 0.191922,
		0.667267, 0.578590, 0.469029,
		0.203533, 0.464108, -0.862078,
		43.974747, 36.601448, 36.757492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706348, 35.501286, 37.361500>,  <43.832275, 36.276573, 37.360947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706348, 35.501286, 37.361500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848953, 35.130146, 37.317684>,  <43.934517, 34.907463, 37.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848953, 35.130146, 37.317684>,  <43.706348, 35.501286, 37.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848953, 35.130146, 37.317684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064764, 0.092418, -0.993612,
		0.932042, 0.361333, -0.027143,
		0.356516, -0.927846, -0.109539,
		43.955910, 34.851791, 37.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111839, 35.548119, 36.849358>,  <43.706348, 35.501286, 37.361500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111839, 35.548119, 36.849358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974854, 35.172310, 36.847687>,  <43.892662, 34.946827, 36.846684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974854, 35.172310, 36.847687>,  <44.111839, 35.548119, 36.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974854, 35.172310, 36.847687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117474, -0.038409, -0.992333,
		0.932156, -0.340334, 0.123523,
		-0.342469, -0.939520, -0.004178,
		43.872112, 34.890453, 36.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433445, 35.187645, 36.430244>,  <44.111839, 35.548119, 36.849358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433445, 35.187645, 36.430244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082405, 35.002766, 36.379341>,  <43.871780, 34.891838, 36.348797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082405, 35.002766, 36.379341>,  <44.433445, 35.187645, 36.430244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082405, 35.002766, 36.379341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056849, 0.163256, -0.984945,
		0.476012, -0.871621, -0.116998,
		-0.877599, -0.462194, -0.127263,
		43.819126, 34.864109, 36.341164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341877, 35.006836, 35.808300>,  <44.433445, 35.187645, 36.430244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341877, 35.006836, 35.808300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955105, 34.980396, 35.906834>,  <43.723042, 34.964535, 35.965954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955105, 34.980396, 35.906834>,  <44.341877, 35.006836, 35.808300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955105, 34.980396, 35.906834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248070, 0.019287, -0.968550,
		0.059269, -0.997627, -0.035046,
		-0.966927, -0.066099, 0.246338,
		43.665028, 34.960567, 35.980736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105812, 34.397011, 35.628036>,  <44.341877, 35.006836, 35.808300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105812, 34.397011, 35.628036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799305, 34.653866, 35.636929>,  <43.615402, 34.807980, 35.642262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799305, 34.653866, 35.636929>,  <44.105812, 34.397011, 35.628036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799305, 34.653866, 35.636929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160977, -0.158374, -0.974168,
		-0.622035, -0.750047, 0.224726,
		-0.766263, 0.642143, 0.022226,
		43.569427, 34.846508, 35.643597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387283, 34.081280, 35.486996>,  <44.105812, 34.397011, 35.628036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387283, 34.081280, 35.486996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449902, 34.462749, 35.384232>,  <43.487473, 34.691631, 35.322575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449902, 34.462749, 35.384232>,  <43.387283, 34.081280, 35.486996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449902, 34.462749, 35.384232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219570, -0.220002, -0.950467,
		-0.962956, 0.205196, 0.174958,
		0.156541, 0.953674, -0.256907,
		43.496864, 34.748852, 35.307159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806591, 34.508301, 35.100883>,  <43.387283, 34.081280, 35.486996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806591, 34.508301, 35.100883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185242, 34.597240, 35.007538>,  <43.412434, 34.650604, 34.951530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185242, 34.597240, 35.007538>,  <42.806591, 34.508301, 35.100883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185242, 34.597240, 35.007538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185553, -0.216092, -0.958579,
		-0.263572, 0.950717, -0.163299,
		0.946626, 0.222354, -0.233364,
		43.469231, 34.663948, 34.937527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756668, 34.998070, 34.559353>,  <42.806591, 34.508301, 35.100883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756668, 34.998070, 34.559353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109856, 34.814564, 34.519547>,  <43.321766, 34.704460, 34.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109856, 34.814564, 34.519547>,  <42.756668, 34.998070, 34.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109856, 34.814564, 34.519547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242066, -0.263331, -0.933842,
		0.402213, 0.848639, -0.343564,
		0.882966, -0.458769, -0.099512,
		43.374744, 34.676933, 34.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154690, 35.376591, 34.029327>,  <42.756668, 34.998070, 34.559353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154690, 35.376591, 34.029327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340458, 35.022545, 34.041252>,  <43.451920, 34.810116, 34.048409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340458, 35.022545, 34.041252>,  <43.154690, 35.376591, 34.029327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340458, 35.022545, 34.041252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023888, -0.021134, -0.999491,
		0.885294, 0.464894, 0.011328,
		0.464418, -0.885114, 0.029815,
		43.479782, 34.757011, 34.050198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650234, 35.388638, 33.475426>,  <43.154690, 35.376591, 34.029327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650234, 35.388638, 33.475426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613621, 35.002129, 33.571705>,  <43.591652, 34.770222, 33.629471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613621, 35.002129, 33.571705>,  <43.650234, 35.388638, 33.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613621, 35.002129, 33.571705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061915, -0.235723, -0.969846,
		0.993876, -0.103673, -0.038251,
		-0.091530, -0.966274, 0.240699,
		43.586163, 34.712246, 33.643913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141289, 35.008198, 32.980072>,  <43.650234, 35.388638, 33.475426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141289, 35.008198, 32.980072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888107, 34.731945, 33.120014>,  <43.736198, 34.566193, 33.203979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888107, 34.731945, 33.120014>,  <44.141289, 35.008198, 32.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888107, 34.731945, 33.120014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171335, -0.315728, -0.933253,
		0.754992, -0.650649, 0.081512,
		-0.632955, -0.690632, 0.349851,
		43.698219, 34.524757, 33.224968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275169, 34.379826, 32.763027>,  <44.141289, 35.008198, 32.980072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275169, 34.379826, 32.763027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885994, 34.319447, 32.832996>,  <43.652489, 34.283218, 32.874977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885994, 34.319447, 32.832996>,  <44.275169, 34.379826, 32.763027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885994, 34.319447, 32.832996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135896, -0.238393, -0.961614,
		0.186857, -0.959366, 0.211429,
		-0.972943, -0.150952, 0.174919,
		43.594112, 34.274162, 32.885471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142712, 33.773548, 32.397400>,  <44.275169, 34.379826, 32.763027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142712, 33.773548, 32.397400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801170, 33.977818, 32.437706>,  <43.596245, 34.100380, 32.461891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801170, 33.977818, 32.437706>,  <44.142712, 33.773548, 32.397400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801170, 33.977818, 32.437706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207196, -0.155866, -0.965803,
		-0.477504, -0.845528, 0.238896,
		-0.853849, 0.510673, 0.100764,
		43.545013, 34.131020, 32.467934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713646, 33.302471, 32.195057>,  <44.142712, 33.773548, 32.397400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713646, 33.302471, 32.195057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537437, 33.659939, 32.160896>,  <43.431713, 33.874420, 32.140400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537437, 33.659939, 32.160896>,  <43.713646, 33.302471, 32.195057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537437, 33.659939, 32.160896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290615, -0.231963, -0.928298,
		-0.849405, -0.384111, 0.361898,
		-0.440517, 0.893673, -0.085401,
		43.405281, 33.928040, 32.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357758, 33.123314, 31.677864>,  <43.713646, 33.302471, 32.195057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357758, 33.123314, 31.677864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299454, 33.518822, 31.691122>,  <43.264473, 33.756126, 31.699078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299454, 33.518822, 31.691122>,  <43.357758, 33.123314, 31.677864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299454, 33.518822, 31.691122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108427, 0.017337, -0.993953,
		-0.983361, -0.148469, 0.104682,
		-0.145757, 0.988765, 0.033147,
		43.255726, 33.815453, 31.701067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630722, 33.319748, 31.363588>,  <43.357758, 33.123314, 31.677864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630722, 33.319748, 31.363588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881405, 33.630260, 31.336388>,  <43.031815, 33.816566, 31.320068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881405, 33.630260, 31.336388>,  <42.630722, 33.319748, 31.363588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881405, 33.630260, 31.336388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133605, 0.021069, -0.990811,
		-0.767714, 0.630036, 0.116919,
		0.626710, 0.776280, -0.068001,
		43.069416, 33.863144, 31.315987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332268, 33.680832, 30.843437>,  <42.630722, 33.319748, 31.363588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332268, 33.680832, 30.843437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691662, 33.854660, 30.868355>,  <42.907299, 33.958958, 30.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691662, 33.854660, 30.868355>,  <42.332268, 33.680832, 30.843437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691662, 33.854660, 30.868355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073311, 0.288425, -0.954692,
		-0.432845, 0.853207, 0.291003,
		0.898483, 0.434567, 0.062294,
		42.961208, 33.985031, 30.887043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322113, 34.303207, 30.346334>,  <42.332268, 33.680832, 30.843437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322113, 34.303207, 30.346334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715366, 34.272202, 30.412586>,  <42.951321, 34.253597, 30.452337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715366, 34.272202, 30.412586>,  <42.322113, 34.303207, 30.346334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715366, 34.272202, 30.412586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165081, -0.013489, -0.986188,
		0.078681, 0.996900, -0.000465,
		0.983137, -0.077517, 0.165631,
		43.010307, 34.248947, 30.462275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728657, 34.821327, 29.819029>,  <42.322113, 34.303207, 30.346334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728657, 34.821327, 29.819029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995583, 34.545166, 29.930765>,  <43.155739, 34.379467, 29.997807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995583, 34.545166, 29.930765>,  <42.728657, 34.821327, 29.819029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995583, 34.545166, 29.930765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242484, -0.153229, -0.957978,
		0.704197, 0.707008, 0.065160,
		0.667314, -0.690406, 0.279342,
		43.195778, 34.338043, 30.014568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312588, 34.934067, 29.436625>,  <42.728657, 34.821327, 29.819029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312588, 34.934067, 29.436625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331432, 34.548672, 29.542055>,  <43.342739, 34.317436, 29.605314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331432, 34.548672, 29.542055>,  <43.312588, 34.934067, 29.436625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331432, 34.548672, 29.542055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088910, -0.258778, -0.961836,
		0.994925, 0.068747, 0.073473,
		0.047110, -0.963488, 0.263577,
		43.345566, 34.259624, 29.621128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958893, 34.691906, 29.052614>,  <43.312588, 34.934067, 29.436625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958893, 34.691906, 29.052614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717884, 34.385178, 29.141115>,  <43.573280, 34.201141, 29.194216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717884, 34.385178, 29.141115>,  <43.958893, 34.691906, 29.052614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717884, 34.385178, 29.141115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093436, -0.343093, -0.934643,
		0.792615, -0.542469, 0.278369,
		-0.602521, -0.766821, 0.221254,
		43.537128, 34.155132, 29.207491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142220, 34.273972, 28.534084>,  <43.958893, 34.691906, 29.052614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142220, 34.273972, 28.534084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816540, 34.098942, 28.686712>,  <43.621132, 33.993923, 28.778290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816540, 34.098942, 28.686712>,  <44.142220, 34.273972, 28.534084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816540, 34.098942, 28.686712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238741, -0.346745, -0.907067,
		0.529221, -0.829634, 0.177853,
		-0.814204, -0.437579, 0.381572,
		43.572277, 33.967667, 28.801184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247513, 33.520138, 28.504410>,  <44.142220, 34.273972, 28.534084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247513, 33.520138, 28.504410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854416, 33.593430, 28.494282>,  <43.618557, 33.637405, 28.488205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854416, 33.593430, 28.494282>,  <44.247513, 33.520138, 28.504410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854416, 33.593430, 28.494282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037590, -0.331858, -0.942580,
		-0.181108, -0.925364, 0.333019,
		-0.982745, 0.183227, -0.025318,
		43.559593, 33.648399, 28.486687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999279, 32.858944, 28.342224>,  <44.247513, 33.520138, 28.504410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999279, 32.858944, 28.342224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696064, 33.109859, 28.270788>,  <43.514133, 33.260406, 28.227926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696064, 33.109859, 28.270788>,  <43.999279, 32.858944, 28.342224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696064, 33.109859, 28.270788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180695, -0.465090, -0.866626,
		-0.626682, -0.624664, 0.465902,
		-0.758036, 0.627285, -0.178590,
		43.468655, 33.298046, 28.217211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460941, 32.452053, 28.177986>,  <43.999279, 32.858944, 28.342224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460941, 32.452053, 28.177986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391445, 32.815430, 28.025909>,  <43.349747, 33.033455, 27.934664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391445, 32.815430, 28.025909>,  <43.460941, 32.452053, 28.177986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391445, 32.815430, 28.025909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169875, -0.407921, -0.897074,
		-0.970029, -0.091274, 0.225195,
		-0.173742, 0.908443, -0.380190,
		43.339321, 33.087963, 27.911852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857098, 32.368259, 27.735897>,  <43.460941, 32.452053, 28.177986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857098, 32.368259, 27.735897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077076, 32.684353, 27.627752>,  <43.209061, 32.874008, 27.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077076, 32.684353, 27.627752>,  <42.857098, 32.368259, 27.735897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077076, 32.684353, 27.627752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033018, -0.344024, -0.938380,
		-0.834549, 0.507130, -0.215285,
		0.549944, 0.790232, -0.270360,
		43.242058, 32.921421, 27.546644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534698, 32.558033, 27.114708>,  <42.857098, 32.368259, 27.735897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534698, 32.558033, 27.114708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904408, 32.710423, 27.124308>,  <43.126232, 32.801857, 27.130068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904408, 32.710423, 27.124308>,  <42.534698, 32.558033, 27.114708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904408, 32.710423, 27.124308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249202, -0.554570, -0.793946,
		-0.289166, 0.739804, -0.607514,
		0.924273, 0.380976, 0.023998,
		43.181690, 32.824715, 27.131508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664749, 32.888725, 26.506660>,  <42.534698, 32.558033, 27.114708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664749, 32.888725, 26.506660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990532, 32.715313, 26.660912>,  <43.186001, 32.611267, 26.753462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990532, 32.715313, 26.660912>,  <42.664749, 32.888725, 26.506660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990532, 32.715313, 26.660912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190706, -0.427684, -0.883582,
		0.547984, 0.793184, -0.265655,
		0.814460, -0.433527, 0.385629,
		43.234871, 32.585255, 26.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560028, 33.222263, 25.808697>,  <42.664749, 32.888725, 26.506660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560028, 33.222263, 25.808697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364086, 33.407810, 25.513435>,  <42.246521, 33.519138, 25.336279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364086, 33.407810, 25.513435>,  <42.560028, 33.222263, 25.808697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364086, 33.407810, 25.513435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871224, 0.291373, -0.395059,
		0.031825, -0.836620, -0.546859,
		-0.489854, 0.463863, -0.738156,
		42.217129, 33.546970, 25.291988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753929, 33.098274, 25.044996>,  <42.560028, 33.222263, 25.808697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753929, 33.098274, 25.044996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651012, 33.472256, 25.142694>,  <42.589264, 33.696644, 25.201313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651012, 33.472256, 25.142694>,  <42.753929, 33.098274, 25.044996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651012, 33.472256, 25.142694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900340, 0.323741, -0.290827,
		-0.350983, 0.145077, -0.925075,
		-0.257292, 0.934957, 0.244246,
		42.573826, 33.752743, 25.215967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732456, 33.672634, 24.528957>,  <42.753929, 33.098274, 25.044996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732456, 33.672634, 24.528957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810783, 33.854523, 24.876493>,  <42.857780, 33.963654, 25.085016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810783, 33.854523, 24.876493>,  <42.732456, 33.672634, 24.528957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810783, 33.854523, 24.876493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885222, 0.299256, -0.356128,
		-0.421945, 0.838854, -0.343928,
		0.195817, 0.454719, 0.868842,
		42.869530, 33.990940, 25.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873089, 34.477955, 24.490068>,  <42.732456, 33.672634, 24.528957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873089, 34.477955, 24.490068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081509, 34.257912, 24.751110>,  <43.206562, 34.125885, 24.907736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081509, 34.257912, 24.751110>,  <42.873089, 34.477955, 24.490068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081509, 34.257912, 24.751110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840445, 0.197321, -0.504695,
		0.148863, 0.811448, 0.565147,
		0.521049, -0.550106, 0.652604,
		43.237823, 34.092880, 24.946892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488335, 34.904938, 24.561914>,  <42.873089, 34.477955, 24.490068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488335, 34.904938, 24.561914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548241, 34.526932, 24.678196>,  <43.584187, 34.300129, 24.747965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548241, 34.526932, 24.678196>,  <43.488335, 34.904938, 24.561914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548241, 34.526932, 24.678196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888793, -0.000128, -0.458309,
		0.433148, 0.327017, 0.839906,
		0.149767, -0.945018, 0.290706,
		43.593170, 34.243427, 24.765408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186558, 34.734612, 25.065617>,  <43.488335, 34.904938, 24.561914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186558, 34.734612, 25.065617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059444, 34.504265, 24.764315>,  <43.983177, 34.366058, 24.583534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059444, 34.504265, 24.764315>,  <44.186558, 34.734612, 25.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059444, 34.504265, 24.764315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852384, 0.174434, -0.492963,
		0.415274, -0.798720, 0.435425,
		-0.317787, -0.575864, -0.753254,
		43.964108, 34.331505, 24.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761028, 34.412170, 24.887030>,  <44.186558, 34.734612, 25.065617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761028, 34.412170, 24.887030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540459, 34.402782, 24.553473>,  <44.408115, 34.397148, 24.353338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540459, 34.402782, 24.553473>,  <44.761028, 34.412170, 24.887030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540459, 34.402782, 24.553473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824137, 0.139659, -0.548902,
		0.129341, -0.989922, -0.057673,
		-0.551424, -0.023465, -0.833895,
		44.375031, 34.395741, 24.303305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094250, 34.269165, 25.540539>,  <44.761028, 34.412170, 24.887030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094250, 34.269165, 25.540539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235340, 34.638126, 25.477606>,  <45.319996, 34.859505, 25.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235340, 34.638126, 25.477606>,  <45.094250, 34.269165, 25.540539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235340, 34.638126, 25.477606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099316, 0.130284, 0.986490,
		0.930440, -0.363589, -0.045655,
		0.352728, 0.922404, -0.157331,
		45.341160, 34.914848, 25.430407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738503, 34.343575, 25.730875>,  <45.094250, 34.269165, 25.540539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738503, 34.343575, 25.730875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534637, 34.686573, 25.759022>,  <45.412319, 34.892372, 25.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534637, 34.686573, 25.759022>,  <45.738503, 34.343575, 25.730875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534637, 34.686573, 25.759022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133695, -0.001861, 0.991021,
		0.849923, 0.514494, -0.113694,
		-0.509663, 0.857492, 0.070367,
		45.381737, 34.943821, 25.780132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108894, 34.941338, 25.807535>,  <45.738503, 34.343575, 25.730875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108894, 34.941338, 25.807535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770206, 35.024147, 26.003582>,  <45.566994, 35.073833, 26.121210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770206, 35.024147, 26.003582>,  <46.108894, 34.941338, 25.807535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770206, 35.024147, 26.003582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521024, 0.136109, 0.842620,
		0.107734, 0.968822, -0.223110,
		-0.846716, 0.207024, 0.490116,
		45.516193, 35.086254, 26.150618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262653, 35.429737, 26.385704>,  <46.108894, 34.941338, 25.807535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262653, 35.429737, 26.385704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914322, 35.268967, 26.498924>,  <45.705322, 35.172504, 26.566856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914322, 35.268967, 26.498924>,  <46.262653, 35.429737, 26.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914322, 35.268967, 26.498924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256560, 0.119560, 0.959105,
		-0.419331, 0.907833, -0.000998,
		-0.870826, -0.401927, 0.283049,
		45.653072, 35.148388, 26.583839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976570, 35.759426, 26.981617>,  <46.262653, 35.429737, 26.385704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976570, 35.759426, 26.981617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795845, 35.405094, 27.023905>,  <45.687412, 35.192493, 27.049276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795845, 35.405094, 27.023905>,  <45.976570, 35.759426, 26.981617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795845, 35.405094, 27.023905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328711, -0.055137, 0.942820,
		-0.829348, 0.460725, 0.316093,
		-0.451809, -0.885828, 0.105718,
		45.660301, 35.139347, 27.055620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522263, 35.866428, 27.492474>,  <45.976570, 35.759426, 26.981617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522263, 35.866428, 27.492474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618397, 35.479877, 27.455902>,  <45.676079, 35.247948, 27.433958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618397, 35.479877, 27.455902>,  <45.522263, 35.866428, 27.492474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618397, 35.479877, 27.455902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234262, -0.033664, 0.971591,
		-0.941998, -0.254925, 0.218294,
		0.240334, -0.966375, -0.091431,
		45.690498, 35.189964, 27.428473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284916, 35.574921, 28.001955>,  <45.522263, 35.866428, 27.492474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284916, 35.574921, 28.001955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548450, 35.291725, 27.900221>,  <45.706570, 35.121807, 27.839180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548450, 35.291725, 27.900221>,  <45.284916, 35.574921, 28.001955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548450, 35.291725, 27.900221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265767, -0.097234, 0.959121,
		-0.703778, -0.699497, 0.124099,
		0.658836, -0.707990, -0.254335,
		45.746101, 35.079327, 27.823921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126316, 35.050030, 28.413895>,  <45.284916, 35.574921, 28.001955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126316, 35.050030, 28.413895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502499, 34.989754, 28.292019>,  <45.728207, 34.953587, 28.218893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502499, 34.989754, 28.292019>,  <45.126316, 35.050030, 28.413895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502499, 34.989754, 28.292019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302275, -0.039253, 0.952412,
		-0.155481, -0.987801, 0.008635,
		0.940455, -0.150692, -0.304690,
		45.784634, 34.944546, 28.200611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396721, 34.326900, 28.649588>,  <45.126316, 35.050030, 28.413895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396721, 34.326900, 28.649588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718788, 34.556137, 28.588575>,  <45.912029, 34.693680, 28.551968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.718788, 34.556137, 28.588575>,  <45.396721, 34.326900, 28.649588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718788, 34.556137, 28.588575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304729, -0.179158, 0.935437,
		0.508765, -0.799667, -0.318891,
		0.805170, 0.573093, -0.152533,
		45.960339, 34.728065, 28.542816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968422, 34.042355, 28.943079>,  <45.396721, 34.326900, 28.649588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968422, 34.042355, 28.943079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093014, 34.422203, 28.929283>,  <46.167770, 34.650112, 28.921005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093014, 34.422203, 28.929283>,  <45.968422, 34.042355, 28.943079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093014, 34.422203, 28.929283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321876, -0.071287, 0.944094,
		0.894077, -0.305170, -0.327867,
		0.311482, 0.949626, -0.034491,
		46.186459, 34.707092, 28.918936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464493, 33.981956, 29.514038>,  <45.968422, 34.042355, 28.943079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464493, 33.981956, 29.514038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478073, 34.367756, 29.409285>,  <46.486221, 34.599236, 29.346434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478073, 34.367756, 29.409285>,  <46.464493, 33.981956, 29.514038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478073, 34.367756, 29.409285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435653, 0.221544, 0.872425,
		0.899474, -0.143712, -0.412666,
		0.033954, 0.964503, -0.261881,
		46.488258, 34.657108, 29.330721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137524, 34.286697, 29.711529>,  <46.464493, 33.981956, 29.514038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137524, 34.286697, 29.711529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860394, 34.573990, 29.685823>,  <46.694115, 34.746365, 29.670401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860394, 34.573990, 29.685823>,  <47.137524, 34.286697, 29.711529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.860394, 34.573990, 29.685823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223947, 0.299023, 0.927595,
		0.685446, 0.628273, -0.368018,
		-0.692829, 0.718232, -0.064265,
		46.652546, 34.789459, 29.666544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420734, 34.868172, 30.010269>,  <47.137524, 34.286697, 29.711529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420734, 34.868172, 30.010269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022961, 34.909004, 30.020748>,  <46.784298, 34.933506, 30.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022961, 34.909004, 30.020748>,  <47.420734, 34.868172, 30.010269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022961, 34.909004, 30.020748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043676, 0.172957, 0.983961,
		0.095916, 0.979625, -0.176452,
		-0.994431, 0.102084, 0.026197,
		46.724632, 34.939629, 30.028606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278328, 35.305794, 30.581001>,  <47.420734, 34.868172, 30.010269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278328, 35.305794, 30.581001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914085, 35.152229, 30.519800>,  <46.695541, 35.060089, 30.483080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914085, 35.152229, 30.519800>,  <47.278328, 35.305794, 30.581001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914085, 35.152229, 30.519800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180336, 0.035999, 0.982946,
		-0.371856, 0.922668, -0.102013,
		-0.910605, -0.383911, -0.153004,
		46.640903, 35.037056, 30.473900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910553, 35.660469, 31.103003>,  <47.278328, 35.305794, 30.581001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910553, 35.660469, 31.103003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696373, 35.337029, 31.005461>,  <46.567867, 35.142963, 30.946936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696373, 35.337029, 31.005461>,  <46.910553, 35.660469, 31.103003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696373, 35.337029, 31.005461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441238, 0.021634, 0.897129,
		-0.720142, 0.587963, -0.368368,
		-0.535448, -0.808598, -0.243852,
		46.535740, 35.094448, 30.932304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349377, 35.820919, 31.332382>,  <46.910553, 35.660469, 31.103003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349377, 35.820919, 31.332382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319271, 35.422615, 31.311234>,  <46.301208, 35.183632, 31.298544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319271, 35.422615, 31.311234>,  <46.349377, 35.820919, 31.332382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319271, 35.422615, 31.311234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458128, -0.012565, 0.888797,
		-0.885694, 0.091114, -0.455241,
		-0.075262, -0.995761, -0.052871,
		46.296692, 35.123886, 31.295372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703808, 35.616577, 31.595976>,  <46.349377, 35.820919, 31.332382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703808, 35.616577, 31.595976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917004, 35.280056, 31.632044>,  <46.044922, 35.078144, 31.653685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917004, 35.280056, 31.632044>,  <45.703808, 35.616577, 31.595976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917004, 35.280056, 31.632044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274061, -0.070833, 0.959100,
		-0.800506, -0.535905, -0.268322,
		0.532992, -0.841302, 0.090168,
		46.076900, 35.027664, 31.659094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230347, 35.138256, 31.855919>,  <45.703808, 35.616577, 31.595976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230347, 35.138256, 31.855919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587704, 34.984226, 31.948492>,  <45.802120, 34.891808, 32.004036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587704, 34.984226, 31.948492>,  <45.230347, 35.138256, 31.855919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587704, 34.984226, 31.948492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335800, -0.230117, 0.913392,
		-0.298468, -0.893735, -0.334894,
		0.893395, -0.385076, 0.231433,
		45.855724, 34.868706, 32.017921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083023, 34.582611, 32.205498>,  <45.230347, 35.138256, 31.855919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083023, 34.582611, 32.205498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461971, 34.615437, 32.329269>,  <45.689342, 34.635132, 32.403534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461971, 34.615437, 32.329269>,  <45.083023, 34.582611, 32.205498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461971, 34.615437, 32.329269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297016, -0.135291, 0.945240,
		0.119432, -0.987402, -0.103797,
		0.947374, 0.082062, 0.309432,
		45.746185, 34.640057, 32.422100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205711, 33.997211, 32.771801>,  <45.083023, 34.582611, 32.205498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205711, 33.997211, 32.771801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467640, 34.296082, 32.817307>,  <45.624798, 34.475403, 32.844608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.467640, 34.296082, 32.817307>,  <45.205711, 33.997211, 32.771801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467640, 34.296082, 32.817307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183967, 0.011582, 0.982864,
		0.733056, -0.664524, 0.145040,
		0.654817, 0.747177, 0.113760,
		45.664085, 34.520233, 32.851433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509224, 33.806053, 33.400562>,  <45.205711, 33.997211, 32.771801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509224, 33.806053, 33.400562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639477, 34.182518, 33.364399>,  <45.717628, 34.408398, 33.342701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639477, 34.182518, 33.364399>,  <45.509224, 33.806053, 33.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639477, 34.182518, 33.364399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027817, 0.086043, 0.995903,
		0.945087, -0.326814, 0.001838,
		0.325633, 0.941164, -0.090409,
		45.737167, 34.464867, 33.337276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148167, 33.925068, 33.820343>,  <45.509224, 33.806053, 33.400562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148167, 33.925068, 33.820343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948051, 34.269135, 33.780689>,  <45.827984, 34.475574, 33.756897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948051, 34.269135, 33.780689>,  <46.148167, 33.925068, 33.820343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948051, 34.269135, 33.780689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036367, 0.093520, 0.994953,
		0.865095, 0.501369, -0.015505,
		-0.500289, 0.860165, -0.099137,
		45.797966, 34.527184, 33.750950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488972, 34.361740, 34.137951>,  <46.148167, 33.925068, 33.820343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488972, 34.361740, 34.137951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107132, 34.479023, 34.116898>,  <45.878029, 34.549393, 34.104267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107132, 34.479023, 34.116898>,  <46.488972, 34.361740, 34.137951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107132, 34.479023, 34.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026012, 0.258060, 0.965779,
		0.296751, 0.920564, -0.253971,
		-0.954601, 0.293202, -0.052634,
		45.820751, 34.566982, 34.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466946, 34.513302, 34.889431>,  <46.488972, 34.361740, 34.137951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466946, 34.513302, 34.889431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551907, 34.902271, 34.850914>,  <46.602882, 35.135654, 34.827805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551907, 34.902271, 34.850914>,  <46.466946, 34.513302, 34.889431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551907, 34.902271, 34.850914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413456, 0.178721, 0.892812,
		0.885403, -0.149826, 0.440016,
		0.212407, 0.972425, -0.096293,
		46.615627, 35.194000, 34.822025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.928562, 34.810207, 35.402557>,  <46.466946, 34.513302, 34.889431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.928562, 34.810207, 35.402557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676567, 35.084061, 35.255924>,  <46.525368, 35.248375, 35.167942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676567, 35.084061, 35.255924>,  <46.928562, 34.810207, 35.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676567, 35.084061, 35.255924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180235, 0.330254, 0.926524,
		0.755398, 0.649774, -0.084662,
		-0.629992, 0.684636, -0.366585,
		46.487568, 35.289452, 35.145950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.576252, 34.461399, 35.307789>,  <46.928562, 34.810207, 35.402557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.576252, 34.461399, 35.307789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846752, 34.192886, 35.186420>,  <48.009052, 34.031780, 35.113598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846752, 34.192886, 35.186420>,  <47.576252, 34.461399, 35.307789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.846752, 34.192886, 35.186420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703784, 0.467024, 0.535329,
		-0.217653, -0.575559, 0.788263,
		0.676251, -0.671283, -0.303420,
		48.049629, 33.991501, 35.095394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640812, 35.342926, 35.303856>,  <47.576252, 34.461399, 35.307789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640812, 35.342926, 35.303856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636765, 35.077984, 35.004208>,  <47.634335, 34.919018, 34.824421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636765, 35.077984, 35.004208>,  <47.640812, 35.342926, 35.303856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636765, 35.077984, 35.004208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779358, -0.474593, 0.409100,
		-0.626497, -0.579691, 0.521018,
		-0.010120, -0.662360, -0.749118,
		47.633728, 34.879276, 34.779472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.852638, 37.052322, 45.231354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613674, 36.732494, 45.206718>,  <35.470295, 36.540596, 45.191936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613674, 36.732494, 45.206718>,  <35.852638, 37.052322, 45.231354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613674, 36.732494, 45.206718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088289, 0.010750, -0.996037,
		0.797064, -0.600476, 0.064171,
		-0.597406, -0.799570, -0.061584,
		35.434452, 36.492622, 45.188244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222923, 36.580338, 44.844406>,  <35.852638, 37.052322, 45.231354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222923, 36.580338, 44.844406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840176, 36.468147, 44.814110>,  <35.610527, 36.400833, 44.795933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840176, 36.468147, 44.814110>,  <36.222923, 36.580338, 44.844406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840176, 36.468147, 44.814110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126355, -0.167010, -0.977825,
		0.261602, -0.945221, 0.195245,
		-0.956869, -0.280472, -0.075743,
		35.553116, 36.384007, 44.791386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284000, 36.012459, 44.434036>,  <36.222923, 36.580338, 44.844406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284000, 36.012459, 44.434036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900818, 36.122955, 44.403027>,  <35.670910, 36.189251, 44.384418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900818, 36.122955, 44.403027>,  <36.284000, 36.012459, 44.434036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900818, 36.122955, 44.403027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015291, -0.318987, -0.947636,
		-0.286493, -0.906612, 0.309801,
		-0.957961, 0.276228, -0.077524,
		35.613430, 36.205826, 44.379768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920212, 35.481380, 44.020313>,  <36.284000, 36.012459, 44.434036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920212, 35.481380, 44.020313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701023, 35.815861, 44.011421>,  <35.569511, 36.016548, 44.006084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701023, 35.815861, 44.011421>,  <35.920212, 35.481380, 44.020313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701023, 35.815861, 44.011421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137799, -0.116452, -0.983591,
		-0.825071, -0.535912, 0.179040,
		-0.547968, 0.836204, -0.022233,
		35.536633, 36.066723, 44.004753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468475, 35.308018, 43.533592>,  <35.920212, 35.481380, 44.020313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468475, 35.308018, 43.533592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397232, 35.700470, 43.563679>,  <35.354485, 35.935940, 43.581730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397232, 35.700470, 43.563679>,  <35.468475, 35.308018, 43.533592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397232, 35.700470, 43.563679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053321, 0.066707, -0.996347,
		-0.982565, -0.181471, 0.040434,
		-0.178111, 0.981131, 0.075220,
		35.343800, 35.994808, 43.586246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849079, 35.494442, 43.105682>,  <35.468475, 35.308018, 43.533592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849079, 35.494442, 43.105682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092484, 35.810871, 43.130730>,  <35.238525, 36.000729, 43.145760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092484, 35.810871, 43.130730>,  <34.849079, 35.494442, 43.105682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092484, 35.810871, 43.130730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172398, 0.208809, -0.962641,
		-0.774594, 0.574981, 0.263442,
		0.608509, 0.791073, 0.062617,
		35.275036, 36.048191, 43.149513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675518, 35.767437, 42.408207>,  <34.849079, 35.494442, 43.105682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675518, 35.767437, 42.408207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988243, 35.993431, 42.513710>,  <35.175877, 36.129028, 42.577011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988243, 35.993431, 42.513710>,  <34.675518, 35.767437, 42.408207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988243, 35.993431, 42.513710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131728, 0.263807, -0.955538,
		-0.609444, 0.781793, 0.131822,
		0.781809, 0.564983, 0.263760,
		35.222786, 36.162926, 42.592838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663685, 36.603649, 42.139023>,  <34.675518, 35.767437, 42.408207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663685, 36.603649, 42.139023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037853, 36.476002, 42.199890>,  <35.262352, 36.399414, 42.236408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037853, 36.476002, 42.199890>,  <34.663685, 36.603649, 42.139023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037853, 36.476002, 42.199890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288791, 0.441433, -0.849551,
		0.203938, 0.838630, 0.505083,
		0.935419, -0.319119, 0.152164,
		35.318478, 36.380264, 42.245541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085030, 37.080357, 41.758842>,  <34.663685, 36.603649, 42.139023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085030, 37.080357, 41.758842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334259, 36.774158, 41.823090>,  <35.483799, 36.590439, 41.861637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.334259, 36.774158, 41.823090>,  <35.085030, 37.080357, 41.758842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334259, 36.774158, 41.823090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491322, 0.223272, -0.841874,
		0.608586, 0.603468, 0.515218,
		0.623078, -0.765491, 0.160617,
		35.521183, 36.544510, 41.871273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619881, 37.254192, 41.375885>,  <35.085030, 37.080357, 41.758842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619881, 37.254192, 41.375885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690231, 36.868450, 41.454971>,  <35.732441, 36.637005, 41.502422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.690231, 36.868450, 41.454971>,  <35.619881, 37.254192, 41.375885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690231, 36.868450, 41.454971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642819, -0.039608, -0.764994,
		0.745554, 0.261643, 0.612937,
		0.175878, -0.964352, 0.197719,
		35.742996, 36.579144, 41.514286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399841, 37.063622, 41.357712>,  <35.619881, 37.254192, 41.375885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399841, 37.063622, 41.357712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172867, 36.746017, 41.270485>,  <36.036682, 36.555454, 41.218147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172867, 36.746017, 41.270485>,  <36.399841, 37.063622, 41.357712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172867, 36.746017, 41.270485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687631, -0.311258, -0.655959,
		0.452965, -0.522168, 0.722609,
		-0.567438, -0.794014, -0.218070,
		36.002636, 36.507812, 41.205063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776161, 36.337368, 41.420303>,  <36.399841, 37.063622, 41.357712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776161, 36.337368, 41.420303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480579, 36.256958, 41.163074>,  <36.303230, 36.208714, 41.008739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.480579, 36.256958, 41.163074>,  <36.776161, 36.337368, 41.420303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480579, 36.256958, 41.163074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644922, -0.487273, -0.588761,
		-0.194997, -0.849797, 0.489715,
		-0.738953, -0.201021, -0.643070,
		36.258892, 36.196651, 40.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008987, 35.621731, 41.131260>,  <36.776161, 36.337368, 41.420303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008987, 35.621731, 41.131260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736401, 35.764244, 40.875549>,  <36.572849, 35.849751, 40.722122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736401, 35.764244, 40.875549>,  <37.008987, 35.621731, 41.131260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736401, 35.764244, 40.875549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456170, -0.476276, -0.751711,
		-0.572293, -0.803881, 0.162039,
		-0.681462, 0.356282, -0.639276,
		36.531963, 35.871128, 40.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941490, 35.088707, 40.619011>,  <37.008987, 35.621731, 41.131260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941490, 35.088707, 40.619011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801529, 35.418781, 40.441635>,  <36.717552, 35.616825, 40.335209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801529, 35.418781, 40.441635>,  <36.941490, 35.088707, 40.619011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801529, 35.418781, 40.441635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514076, -0.226578, -0.827278,
		-0.783132, -0.517424, -0.344929,
		-0.349900, 0.825188, -0.443436,
		36.696560, 35.666336, 40.308605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799694, 34.878391, 39.841759>,  <36.941490, 35.088707, 40.619011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799694, 34.878391, 39.841759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827606, 35.277180, 39.828030>,  <36.844353, 35.516453, 39.819794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827606, 35.277180, 39.828030>,  <36.799694, 34.878391, 39.841759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827606, 35.277180, 39.828030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503364, -0.064893, -0.861634,
		-0.861252, 0.042846, -0.506368,
		0.069777, 0.996972, -0.034322,
		36.848541, 35.576271, 39.817734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836628, 34.965305, 39.193214>,  <36.799694, 34.878391, 39.841759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836628, 34.965305, 39.193214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918507, 35.345100, 39.288353>,  <36.967636, 35.572979, 39.345436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918507, 35.345100, 39.288353>,  <36.836628, 34.965305, 39.193214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918507, 35.345100, 39.288353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371586, 0.149419, -0.916296,
		-0.905550, 0.275946, -0.322230,
		0.204701, 0.949488, 0.237843,
		36.979916, 35.629948, 39.359707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625816, 35.414516, 38.664936>,  <36.836628, 34.965305, 39.193214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625816, 35.414516, 38.664936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919067, 35.611961, 38.852070>,  <37.095020, 35.730427, 38.964348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919067, 35.611961, 38.852070>,  <36.625816, 35.414516, 38.664936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919067, 35.611961, 38.852070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418700, 0.214475, -0.882434,
		-0.535917, 0.842822, -0.049436,
		0.733132, 0.493611, 0.467831,
		37.139008, 35.760044, 38.992420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726368, 36.035446, 38.276764>,  <36.625816, 35.414516, 38.664936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726368, 36.035446, 38.276764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058582, 36.004204, 38.497349>,  <37.257912, 35.985458, 38.629700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058582, 36.004204, 38.497349>,  <36.726368, 36.035446, 38.276764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058582, 36.004204, 38.497349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523259, 0.448638, -0.724517,
		-0.190821, 0.890294, 0.413477,
		0.830535, -0.078102, 0.551464,
		37.307743, 35.980774, 38.662788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000011, 36.683018, 38.125645>,  <36.726368, 36.035446, 38.276764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000011, 36.683018, 38.125645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275883, 36.430298, 38.267162>,  <37.441406, 36.278667, 38.352074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275883, 36.430298, 38.267162>,  <37.000011, 36.683018, 38.125645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275883, 36.430298, 38.267162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681548, 0.401338, -0.611899,
		0.244605, 0.663144, 0.707396,
		0.689682, -0.631797, 0.353795,
		37.482788, 36.240757, 38.373302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609524, 37.079906, 38.193905>,  <37.000011, 36.683018, 38.125645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609524, 37.079906, 38.193905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731552, 36.701668, 38.148678>,  <37.804768, 36.474724, 38.121544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.731552, 36.701668, 38.148678>,  <37.609524, 37.079906, 38.193905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731552, 36.701668, 38.148678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699935, 0.303135, -0.646684,
		0.645775, 0.118144, 0.754332,
		0.305066, -0.945596, -0.113064,
		37.823071, 36.417988, 38.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312706, 37.030964, 38.129196>,  <37.609524, 37.079906, 38.193905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312706, 37.030964, 38.129196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210567, 36.692589, 37.941925>,  <38.149284, 36.489563, 37.829563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210567, 36.692589, 37.941925>,  <38.312706, 37.030964, 38.129196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210567, 36.692589, 37.941925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574738, 0.256583, -0.777072,
		0.777480, -0.467503, 0.420674,
		-0.255345, -0.845935, -0.468180,
		38.133965, 36.438808, 37.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977901, 36.552227, 37.882290>,  <38.312706, 37.030964, 38.129196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977901, 36.552227, 37.882290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673031, 36.464867, 37.638523>,  <38.490108, 36.412449, 37.492264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673031, 36.464867, 37.638523>,  <38.977901, 36.552227, 37.882290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673031, 36.464867, 37.638523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586066, 0.167069, -0.792852,
		0.274976, -0.961451, 0.000662,
		-0.762178, -0.218403, -0.609414,
		38.444378, 36.399345, 37.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586731, 36.681778, 38.337395>,  <38.977901, 36.552227, 37.882290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586731, 36.681778, 38.337395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 37.016270, 38.194565>,  <39.853100, 37.216965, 38.108868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.753212, 37.016270, 38.194565>,  <39.586731, 36.681778, 38.337395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753212, 37.016270, 38.194565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260010, 0.485758, 0.834526,
		0.871302, -0.254492, 0.419602,
		0.416205, 0.836226, -0.357072,
		39.878075, 37.267136, 38.087444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084045, 36.931644, 38.794765>,  <39.586731, 36.681778, 38.337395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084045, 36.931644, 38.794765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984272, 37.265125, 38.597694>,  <39.924408, 37.465214, 38.479454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984272, 37.265125, 38.597694>,  <40.084045, 36.931644, 38.794765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984272, 37.265125, 38.597694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069415, 0.492055, 0.867792,
		0.965900, 0.250658, -0.064866,
		-0.249437, 0.833698, -0.492675,
		39.909443, 37.515236, 38.449890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577156, 37.397114, 39.063240>,  <40.084045, 36.931644, 38.794765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577156, 37.397114, 39.063240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310867, 37.635468, 38.883583>,  <40.151093, 37.778481, 38.775787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310867, 37.635468, 38.883583>,  <40.577156, 37.397114, 39.063240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310867, 37.635468, 38.883583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048503, 0.566082, 0.822921,
		0.744618, 0.569625, -0.347954,
		-0.665726, 0.595885, -0.449143,
		40.111149, 37.814232, 38.748840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742607, 37.991402, 39.203190>,  <40.577156, 37.397114, 39.063240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742607, 37.991402, 39.203190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355289, 38.046810, 39.120037>,  <40.122898, 38.080055, 39.070145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355289, 38.046810, 39.120037>,  <40.742607, 37.991402, 39.203190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355289, 38.046810, 39.120037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122756, 0.460900, 0.878921,
		0.217560, 0.876575, -0.429284,
		-0.968297, 0.138521, -0.207878,
		40.064800, 38.088367, 39.057674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544754, 38.733013, 39.371311>,  <40.742607, 37.991402, 39.203190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544754, 38.733013, 39.371311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217911, 38.504601, 39.402954>,  <40.021805, 38.367554, 39.421940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217911, 38.504601, 39.402954>,  <40.544754, 38.733013, 39.371311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217911, 38.504601, 39.402954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143791, 0.334760, 0.931268,
		-0.558266, 0.749571, -0.355644,
		-0.817106, -0.571034, 0.079104,
		39.972778, 38.333290, 39.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141083, 39.091637, 39.811378>,  <40.544754, 38.733013, 39.371311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141083, 39.091637, 39.811378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.927158, 38.753937, 39.825329>,  <39.798801, 38.551315, 39.833698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.927158, 38.753937, 39.825329>,  <40.141083, 39.091637, 39.811378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927158, 38.753937, 39.825329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308747, 0.233675, 0.921993,
		-0.786542, 0.482327, -0.385632,
		-0.534815, -0.844249, 0.034879,
		39.766712, 38.500664, 39.835793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550774, 39.375427, 40.148926>,  <40.141083, 39.091637, 39.811378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550774, 39.375427, 40.148926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544792, 38.976254, 40.173935>,  <39.541203, 38.736752, 40.188942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544792, 38.976254, 40.173935>,  <39.550774, 39.375427, 40.148926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544792, 38.976254, 40.173935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423913, 0.062962, 0.903511,
		-0.905579, -0.012996, -0.423978,
		-0.014952, -0.997931, 0.062526,
		39.540306, 38.676872, 40.192692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884480, 39.160709, 40.301525>,  <39.550774, 39.375427, 40.148926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884480, 39.160709, 40.301525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109600, 38.853901, 40.424770>,  <39.244671, 38.669815, 40.498718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109600, 38.853901, 40.424770>,  <38.884480, 39.160709, 40.301525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109600, 38.853901, 40.424770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479657, 0.000522, 0.877456,
		-0.673189, -0.641620, -0.367614,
		0.562801, -0.767023, 0.308109,
		39.278442, 38.623795, 40.517204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373333, 38.529148, 40.545670>,  <38.884480, 39.160709, 40.301525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373333, 38.529148, 40.545670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744564, 38.485405, 40.688053>,  <38.967304, 38.459160, 40.773483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744564, 38.485405, 40.688053>,  <38.373333, 38.529148, 40.545670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744564, 38.485405, 40.688053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363344, -0.056610, 0.929933,
		-0.081539, -0.992390, -0.092271,
		0.928080, -0.109352, 0.355964,
		39.022987, 38.452599, 40.794842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265366, 37.958485, 41.010262>,  <38.373333, 38.529148, 40.545670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265366, 37.958485, 41.010262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610970, 38.131184, 41.113869>,  <38.818333, 38.234802, 41.176033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610970, 38.131184, 41.113869>,  <38.265366, 37.958485, 41.010262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610970, 38.131184, 41.113869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241912, -0.095191, 0.965618,
		0.441556, -0.896959, 0.022198,
		0.864006, 0.431745, 0.259017,
		38.870171, 38.260708, 41.191574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621281, 37.439823, 41.497078>,  <38.265366, 37.958485, 41.010262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621281, 37.439823, 41.497078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796440, 37.792099, 41.569332>,  <38.901535, 38.003464, 41.612686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796440, 37.792099, 41.569332>,  <38.621281, 37.439823, 41.497078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796440, 37.792099, 41.569332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203831, -0.098433, 0.974045,
		0.875613, -0.463352, 0.136408,
		0.437899, 0.880691, 0.180635,
		38.927811, 38.056305, 41.623524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132263, 37.317593, 42.029705>,  <38.621281, 37.439823, 41.497078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132263, 37.317593, 42.029705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069927, 37.712589, 42.039333>,  <39.032524, 37.949585, 42.045109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069927, 37.712589, 42.039333>,  <39.132263, 37.317593, 42.029705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069927, 37.712589, 42.039333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124483, -0.043809, 0.991254,
		0.979907, 0.151484, 0.129753,
		-0.155844, 0.987489, 0.024072,
		39.023174, 38.008835, 42.046555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598991, 37.634216, 42.533436>,  <39.132263, 37.317593, 42.029705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598991, 37.634216, 42.533436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316933, 37.915916, 42.500469>,  <39.147697, 38.084938, 42.480690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.316933, 37.915916, 42.500469>,  <39.598991, 37.634216, 42.533436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316933, 37.915916, 42.500469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080549, 0.035922, 0.996103,
		0.704468, 0.709041, 0.031396,
		-0.705150, 0.704252, -0.082419,
		39.105389, 38.127193, 42.475742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757286, 38.136993, 43.051937>,  <39.598991, 37.634216, 42.533436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757286, 38.136993, 43.051937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373608, 38.183567, 42.948872>,  <39.143402, 38.211514, 42.887032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373608, 38.183567, 42.948872>,  <39.757286, 38.136993, 43.051937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373608, 38.183567, 42.948872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255107, 0.036593, 0.966220,
		0.121932, 0.992524, -0.005397,
		-0.959194, 0.116436, -0.257662,
		39.085850, 38.218498, 42.871574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470245, 38.733852, 43.602459>,  <39.757286, 38.136993, 43.051937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470245, 38.733852, 43.602459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178211, 38.536213, 43.413639>,  <39.002991, 38.417629, 43.300346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.178211, 38.536213, 43.413639>,  <39.470245, 38.733852, 43.602459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178211, 38.536213, 43.413639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520161, -0.046171, 0.852820,
		-0.443172, 0.868179, -0.223302,
		-0.730090, -0.494099, -0.472054,
		38.959183, 38.387985, 43.272022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872543, 39.049603, 43.849823>,  <39.470245, 38.733852, 43.602459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872543, 39.049603, 43.849823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752312, 38.707352, 43.681271>,  <38.680172, 38.502003, 43.580139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752312, 38.707352, 43.681271>,  <38.872543, 39.049603, 43.849823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752312, 38.707352, 43.681271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626581, -0.155940, 0.763596,
		-0.719063, 0.493545, -0.489247,
		-0.300576, -0.855626, -0.421376,
		38.662140, 38.450665, 43.554859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064671, 38.990273, 43.643669>,  <38.872543, 39.049603, 43.849823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064671, 38.990273, 43.643669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234875, 38.643940, 43.748959>,  <38.336998, 38.436142, 43.812130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234875, 38.643940, 43.748959>,  <38.064671, 38.990273, 43.643669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234875, 38.643940, 43.748959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660343, -0.098181, 0.744519,
		-0.618781, -0.490615, -0.613520,
		0.425508, -0.865827, 0.263221,
		38.362526, 38.384193, 43.827927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602497, 38.724476, 43.964432>,  <38.064671, 38.990273, 43.643669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602497, 38.724476, 43.964432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887672, 38.463135, 44.066296>,  <38.058777, 38.306332, 44.127415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887672, 38.463135, 44.066296>,  <37.602497, 38.724476, 43.964432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887672, 38.463135, 44.066296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477307, -0.186095, 0.858806,
		-0.513711, -0.733826, -0.444523,
		0.712937, -0.653351, 0.254661,
		38.101555, 38.267128, 44.142693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.253010, 38.107082, 44.155720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622929, 38.078354, 44.305168>,  <37.844879, 38.061115, 44.394836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622929, 38.078354, 44.305168>,  <37.253010, 38.107082, 44.155720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622929, 38.078354, 44.305168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360585, -0.478731, 0.800497,
		0.121371, -0.875019, -0.468627,
		0.924796, -0.071823, 0.373622,
		37.900368, 38.056808, 44.417255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178867, 37.540417, 44.480663>,  <37.253010, 38.107082, 44.155720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178867, 37.540417, 44.480663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521900, 37.664536, 44.644749>,  <37.727718, 37.739006, 44.743198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521900, 37.664536, 44.644749>,  <37.178867, 37.540417, 44.480663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521900, 37.664536, 44.644749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252292, -0.441234, 0.861198,
		0.448227, -0.842038, -0.300107,
		0.857578, 0.310298, 0.410213,
		37.779175, 37.757626, 44.767811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466209, 36.922291, 44.887386>,  <37.178867, 37.540417, 44.480663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466209, 36.922291, 44.887386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640022, 37.250751, 45.035385>,  <37.744308, 37.447826, 45.124184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640022, 37.250751, 45.035385>,  <37.466209, 36.922291, 44.887386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640022, 37.250751, 45.035385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126987, -0.350843, 0.927784,
		0.891659, -0.450137, -0.048177,
		0.434532, 0.821150, 0.369994,
		37.770382, 37.497097, 45.146381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712597, 36.675041, 45.413982>,  <37.466209, 36.922291, 44.887386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712597, 36.675041, 45.413982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722328, 37.066765, 45.494343>,  <37.728168, 37.301800, 45.542557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722328, 37.066765, 45.494343>,  <37.712597, 36.675041, 45.413982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722328, 37.066765, 45.494343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030791, -0.200127, 0.979286,
		0.999230, -0.030012, 0.025285,
		0.024331, 0.979310, 0.200897,
		37.729626, 37.360558, 45.554611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055729, 36.691910, 45.977436>,  <37.712597, 36.675041, 45.413982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055729, 36.691910, 45.977436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869442, 37.045677, 45.965401>,  <37.757668, 37.257938, 45.958179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.869442, 37.045677, 45.965401>,  <38.055729, 36.691910, 45.977436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869442, 37.045677, 45.965401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126013, -0.032626, 0.991492,
		0.875914, 0.465550, 0.126643,
		-0.465721, 0.884420, -0.030088,
		37.729725, 37.311005, 45.956375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246849, 36.969379, 46.605259>,  <38.055729, 36.691910, 45.977436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246849, 36.969379, 46.605259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925625, 37.186226, 46.506302>,  <37.732891, 37.316334, 46.446926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.925625, 37.186226, 46.506302>,  <38.246849, 36.969379, 46.605259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925625, 37.186226, 46.506302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297997, -0.005828, 0.954549,
		0.516035, 0.840283, 0.166230,
		-0.803060, 0.542117, -0.247394,
		37.684708, 37.348862, 46.432083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269566, 37.420116, 47.083172>,  <38.246849, 36.969379, 46.605259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269566, 37.420116, 47.083172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887691, 37.423721, 46.964180>,  <37.658566, 37.425884, 46.892784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887691, 37.423721, 46.964180>,  <38.269566, 37.420116, 47.083172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887691, 37.423721, 46.964180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293845, 0.130181, 0.946947,
		0.047258, 0.991449, -0.121634,
		-0.954684, 0.009009, -0.297484,
		37.601288, 37.426426, 46.874935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902016, 37.983994, 47.462536>,  <38.269566, 37.420116, 47.083172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902016, 37.983994, 47.462536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594028, 37.764481, 47.332317>,  <37.409237, 37.632771, 47.254189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594028, 37.764481, 47.332317>,  <37.902016, 37.983994, 47.462536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594028, 37.764481, 47.332317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387719, -0.002815, 0.921773,
		-0.506772, 0.835959, -0.210607,
		-0.769972, -0.548785, -0.325543,
		37.363037, 37.599846, 47.234653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333214, 38.416664, 47.639439>,  <37.902016, 37.983994, 47.462536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333214, 38.416664, 47.639439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191776, 38.045284, 47.593914>,  <37.106915, 37.822456, 47.566601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.191776, 38.045284, 47.593914>,  <37.333214, 38.416664, 47.639439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191776, 38.045284, 47.593914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489981, 0.080204, 0.868035,
		-0.796799, 0.362698, -0.483282,
		-0.353596, -0.928449, -0.113809,
		37.085697, 37.766750, 47.559772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713032, 38.388882, 47.990246>,  <37.333214, 38.416664, 47.639439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713032, 38.388882, 47.990246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824615, 38.006092, 47.958275>,  <36.891563, 37.776421, 47.939091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.824615, 38.006092, 47.958275>,  <36.713032, 38.388882, 47.990246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824615, 38.006092, 47.958275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229646, -0.147299, 0.962063,
		-0.932441, -0.250017, -0.260855,
		0.278956, -0.956972, -0.079932,
		36.908302, 37.719002, 47.934296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114723, 37.936821, 48.039753>,  <36.713032, 38.388882, 47.990246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114723, 37.936821, 48.039753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444798, 37.741611, 48.153530>,  <36.642841, 37.624485, 48.221798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444798, 37.741611, 48.153530>,  <36.114723, 37.936821, 48.039753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444798, 37.741611, 48.153530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400381, -0.150111, 0.903970,
		-0.398458, -0.859827, -0.319263,
		0.825183, -0.488021, 0.284445,
		36.692352, 37.595207, 48.238865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812809, 37.559139, 48.610638>,  <36.114723, 37.936821, 48.039753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812809, 37.559139, 48.610638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208984, 37.509239, 48.634205>,  <36.446690, 37.479298, 48.648346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208984, 37.509239, 48.634205>,  <35.812809, 37.559139, 48.610638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208984, 37.509239, 48.634205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096308, -0.319411, 0.942709,
		-0.098787, -0.939369, -0.328371,
		0.990437, -0.124752, 0.058915,
		36.506115, 37.471813, 48.651878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800289, 36.861202, 48.818012>,  <35.812809, 37.559139, 48.610638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800289, 36.861202, 48.818012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143631, 37.036461, 48.924793>,  <36.349636, 37.141617, 48.988861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143631, 37.036461, 48.924793>,  <35.800289, 36.861202, 48.818012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143631, 37.036461, 48.924793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218933, -0.157767, 0.962901,
		0.464006, -0.884951, -0.039495,
		0.858351, 0.438145, 0.266950,
		36.401138, 37.167904, 49.004879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198746, 36.393600, 49.308563>,  <35.800289, 36.861202, 48.818012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198746, 36.393600, 49.308563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360332, 36.753365, 49.375351>,  <36.457283, 36.969223, 49.415424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.360332, 36.753365, 49.375351>,  <36.198746, 36.393600, 49.308563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360332, 36.753365, 49.375351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057791, -0.157065, 0.985896,
		0.912948, -0.407916, -0.011471,
		0.403964, 0.899408, 0.166966,
		36.481522, 37.023186, 49.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755600, 36.244286, 49.807327>,  <36.198746, 36.393600, 49.308563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755600, 36.244286, 49.807327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685219, 36.637264, 49.832092>,  <36.642990, 36.873051, 49.846951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685219, 36.637264, 49.832092>,  <36.755600, 36.244286, 49.807327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685219, 36.637264, 49.832092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175228, -0.093152, 0.980111,
		0.968678, 0.161602, 0.188542,
		-0.175951, 0.982450, 0.061917,
		36.632435, 36.931999, 49.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101883, 36.479778, 50.298477>,  <36.755600, 36.244286, 49.807327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101883, 36.479778, 50.298477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797508, 36.738132, 50.273800>,  <36.614883, 36.893147, 50.258995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797508, 36.738132, 50.273800>,  <37.101883, 36.479778, 50.298477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797508, 36.738132, 50.273800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077763, 0.003606, 0.996965,
		0.644151, 0.763423, 0.047483,
		-0.760935, 0.645889, -0.061689,
		36.569229, 36.931900, 50.255295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229553, 36.984760, 50.793480>,  <37.101883, 36.479778, 50.298477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229553, 36.984760, 50.793480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845226, 37.070507, 50.723183>,  <36.614632, 37.121956, 50.681004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845226, 37.070507, 50.723183>,  <37.229553, 36.984760, 50.793480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845226, 37.070507, 50.723183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161055, 0.084302, 0.983338,
		0.225609, 0.973109, -0.046474,
		-0.960813, 0.214365, -0.175743,
		36.556984, 37.134815, 50.670460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032665, 37.668556, 51.057335>,  <37.229553, 36.984760, 50.793480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032665, 37.668556, 51.057335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711277, 37.430462, 51.061817>,  <36.518444, 37.287605, 51.064507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711277, 37.430462, 51.061817>,  <37.032665, 37.668556, 51.057335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711277, 37.430462, 51.061817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003171, 0.023098, 0.999728,
		-0.595331, 0.803220, -0.020446,
		-0.803474, -0.595234, 0.011204,
		36.470234, 37.251892, 51.065178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520733, 38.029739, 51.481579>,  <37.032665, 37.668556, 51.057335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520733, 38.029739, 51.481579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408230, 37.646450, 51.460770>,  <36.340729, 37.416477, 51.448284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408230, 37.646450, 51.460770>,  <36.520733, 38.029739, 51.481579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408230, 37.646450, 51.460770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017494, -0.049084, 0.998641,
		-0.959474, 0.281782, -0.002958,
		-0.281254, -0.958222, -0.052024,
		36.323853, 37.358982, 51.445164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248077, 37.965500, 52.132618>,  <36.520733, 38.029739, 51.481579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248077, 37.965500, 52.132618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286224, 37.588245, 52.005245>,  <36.309113, 37.361893, 51.928822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.286224, 37.588245, 52.005245>,  <36.248077, 37.965500, 52.132618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286224, 37.588245, 52.005245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206218, -0.294233, 0.933221,
		-0.973848, -0.154664, 0.166432,
		0.095365, -0.943136, -0.318433,
		36.314835, 37.305305, 51.909714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943619, 37.519501, 52.620316>,  <36.248077, 37.965500, 52.132618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943619, 37.519501, 52.620316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212200, 37.292549, 52.429642>,  <36.373348, 37.156380, 52.315235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.212200, 37.292549, 52.429642>,  <35.943619, 37.519501, 52.620316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212200, 37.292549, 52.429642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344713, -0.330287, 0.878683,
		-0.655986, -0.754318, -0.026192,
		0.671457, -0.567375, -0.476687,
		36.413639, 37.122337, 52.286636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889355, 36.869022, 52.856804>,  <35.943619, 37.519501, 52.620316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889355, 36.869022, 52.856804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258591, 36.866703, 52.702988>,  <36.480133, 36.865311, 52.610699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258591, 36.866703, 52.702988>,  <35.889355, 36.869022, 52.856804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258591, 36.866703, 52.702988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352291, -0.388328, 0.851524,
		-0.154263, -0.921503, -0.356419,
		0.923089, -0.005795, -0.384542,
		36.535519, 36.864964, 52.587624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505997, 36.293152, 52.808994>,  <35.889355, 36.869022, 52.856804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505997, 36.293152, 52.808994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884560, 36.262917, 52.683388>,  <36.111698, 36.244774, 52.608025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884560, 36.262917, 52.683388>,  <35.505997, 36.293152, 52.808994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884560, 36.262917, 52.683388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322748, 0.258809, 0.910413,
		0.012452, -0.962966, 0.269335,
		0.946403, -0.075591, -0.314018,
		36.168480, 36.240238, 52.589184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645973, 35.673542, 53.132294>,  <35.505997, 36.293152, 52.808994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645973, 35.673542, 53.132294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941822, 35.843925, 53.340725>,  <36.119331, 35.946156, 53.465782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.941822, 35.843925, 53.340725>,  <35.645973, 35.673542, 53.132294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941822, 35.843925, 53.340725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672817, -0.448589, -0.588291,
		-0.016838, 0.785701, -0.618377,
		0.739618, 0.425960, 0.521079,
		36.163708, 35.971714, 53.497047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957207, 35.345772, 53.162228>,  <35.645973, 35.673542, 53.132294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957207, 35.345772, 53.162228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676483, 35.081955, 53.054550>,  <34.508049, 34.923664, 52.989944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676483, 35.081955, 53.054550>,  <34.957207, 35.345772, 53.162228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676483, 35.081955, 53.054550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253783, 0.121617, -0.959585,
		0.665623, -0.741766, 0.082028,
		-0.701812, -0.659539, -0.269198,
		34.465939, 34.884094, 52.973789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270271, 34.879021, 52.509621>,  <34.957207, 35.345772, 53.162228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270271, 34.879021, 52.509621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872631, 34.837460, 52.522102>,  <34.634048, 34.812523, 52.529591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872631, 34.837460, 52.522102>,  <35.270271, 34.879021, 52.509621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872631, 34.837460, 52.522102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024805, -0.062316, -0.997748,
		0.105618, -0.992633, 0.059371,
		-0.994097, -0.103908, 0.031204,
		34.574402, 34.806290, 52.531464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190254, 34.246433, 52.175896>,  <35.270271, 34.879021, 52.509621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190254, 34.246433, 52.175896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854618, 34.461338, 52.141777>,  <34.653236, 34.590282, 52.121304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854618, 34.461338, 52.141777>,  <35.190254, 34.246433, 52.175896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854618, 34.461338, 52.141777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063894, -0.058381, -0.996248,
		-0.540225, -0.841393, 0.014659,
		-0.839092, 0.537261, -0.085299,
		34.602890, 34.622517, 52.116188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933609, 33.917198, 51.633400>,  <35.190254, 34.246433, 52.175896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933609, 33.917198, 51.633400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742512, 34.267056, 51.666298>,  <34.627853, 34.476971, 51.686035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742512, 34.267056, 51.666298>,  <34.933609, 33.917198, 51.633400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742512, 34.267056, 51.666298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005919, 0.090413, -0.995887,
		-0.878481, -0.476262, -0.038017,
		-0.477740, 0.874643, 0.082246,
		34.599190, 34.529449, 51.690971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347187, 33.886604, 51.145023>,  <34.933609, 33.917198, 51.633400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347187, 33.886604, 51.145023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400974, 34.277237, 51.212204>,  <34.433247, 34.511616, 51.252514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400974, 34.277237, 51.212204>,  <34.347187, 33.886604, 51.145023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400974, 34.277237, 51.212204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141493, 0.186676, -0.972179,
		-0.980764, 0.106964, 0.163282,
		0.134469, 0.976581, 0.167950,
		34.441315, 34.570210, 51.262589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757797, 34.234829, 50.834476>,  <34.347187, 33.886604, 51.145023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757797, 34.234829, 50.834476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080624, 34.470421, 50.851185>,  <34.274319, 34.611774, 50.861210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080624, 34.470421, 50.851185>,  <33.757797, 34.234829, 50.834476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080624, 34.470421, 50.851185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027863, 0.108661, -0.993688,
		-0.589798, 0.800812, 0.104108,
		0.807070, 0.588976, 0.041775,
		34.322746, 34.647114, 50.863716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594524, 34.893925, 50.355328>,  <33.757797, 34.234829, 50.834476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594524, 34.893925, 50.355328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990955, 34.877426, 50.406025>,  <34.228813, 34.867527, 50.436443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990955, 34.877426, 50.406025>,  <33.594524, 34.893925, 50.355328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990955, 34.877426, 50.406025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132887, 0.232678, -0.963432,
		0.010246, 0.971679, 0.236083,
		0.991078, -0.041243, 0.126739,
		34.288280, 34.865051, 50.444046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839520, 35.374580, 49.971092>,  <33.594524, 34.893925, 50.355328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839520, 35.374580, 49.971092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179203, 35.173042, 50.034321>,  <34.383015, 35.052120, 50.072258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179203, 35.173042, 50.034321>,  <33.839520, 35.374580, 49.971092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179203, 35.173042, 50.034321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321564, 0.255970, -0.911634,
		0.418856, 0.824999, 0.379389,
		0.849209, -0.503841, 0.158075,
		34.433968, 35.021889, 50.081745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381344, 35.724705, 49.688198>,  <33.839520, 35.374580, 49.971092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381344, 35.724705, 49.688198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580814, 35.378132, 49.678211>,  <34.700497, 35.170189, 49.672218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580814, 35.378132, 49.678211>,  <34.381344, 35.724705, 49.688198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580814, 35.378132, 49.678211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576201, 0.352880, -0.737203,
		0.647547, 0.353236, 0.675209,
		0.498675, -0.866430, -0.024971,
		34.730415, 35.118202, 49.670719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033138, 35.857399, 49.492321>,  <34.381344, 35.724705, 49.688198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033138, 35.857399, 49.492321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004890, 35.475136, 49.377972>,  <34.987942, 35.245777, 49.309361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004890, 35.475136, 49.377972>,  <35.033138, 35.857399, 49.492321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004890, 35.475136, 49.377972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524747, 0.208137, -0.825421,
		0.848324, -0.208300, 0.486782,
		-0.070618, -0.955662, -0.285872,
		34.983704, 35.188438, 49.292210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700920, 35.722485, 49.117107>,  <35.033138, 35.857399, 49.492321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700920, 35.722485, 49.117107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460445, 35.420029, 49.013702>,  <35.316162, 35.238556, 48.951660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460445, 35.420029, 49.013702>,  <35.700920, 35.722485, 49.117107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460445, 35.420029, 49.013702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230194, 0.145923, -0.962142,
		0.765236, -0.637935, 0.086332,
		-0.601186, -0.756138, -0.258514,
		35.280090, 35.193188, 48.936150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098770, 35.411774, 48.627926>,  <35.700920, 35.722485, 49.117107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098770, 35.411774, 48.627926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712444, 35.313755, 48.594082>,  <35.480648, 35.254944, 48.573776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712444, 35.313755, 48.594082>,  <36.098770, 35.411774, 48.627926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712444, 35.313755, 48.594082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038858, 0.185848, -0.981810,
		0.256314, -0.951532, -0.169973,
		-0.965812, -0.245047, -0.084610,
		35.422699, 35.240242, 48.568699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068821, 34.834476, 48.058514>,  <36.098770, 35.411774, 48.627926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068821, 34.834476, 48.058514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712883, 35.013783, 48.092552>,  <35.499321, 35.121365, 48.112976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712883, 35.013783, 48.092552>,  <36.068821, 34.834476, 48.058514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712883, 35.013783, 48.092552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028077, 0.132346, -0.990806,
		-0.455405, -0.884049, -0.105181,
		-0.889841, 0.448265, 0.085092,
		35.445930, 35.148262, 48.118080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739025, 34.589684, 47.515854>,  <36.068821, 34.834476, 48.058514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739025, 34.589684, 47.515854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511448, 34.906136, 47.605671>,  <35.374901, 35.096008, 47.659561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511448, 34.906136, 47.605671>,  <35.739025, 34.589684, 47.515854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511448, 34.906136, 47.605671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073636, 0.222934, -0.972048,
		-0.819077, -0.569570, -0.068580,
		-0.568938, 0.791132, 0.224541,
		35.340767, 35.143475, 47.673035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144623, 34.623466, 47.088196>,  <35.739025, 34.589684, 47.515854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144623, 34.623466, 47.088196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186001, 35.007862, 47.190796>,  <35.210827, 35.238499, 47.252357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186001, 35.007862, 47.190796>,  <35.144623, 34.623466, 47.088196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186001, 35.007862, 47.190796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041131, 0.253531, -0.966452,
		-0.993784, 0.110527, -0.013300,
		0.103447, 0.960992, 0.256501,
		35.217033, 35.296158, 47.267746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758408, 35.002514, 46.631187>,  <35.144623, 34.623466, 47.088196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758408, 35.002514, 46.631187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996483, 35.276611, 46.799091>,  <35.139328, 35.441071, 46.899834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996483, 35.276611, 46.799091>,  <34.758408, 35.002514, 46.631187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996483, 35.276611, 46.799091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110483, 0.447620, -0.887373,
		-0.795958, 0.574527, 0.190709,
		0.595185, 0.685241, 0.419762,
		35.175037, 35.482185, 46.925018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437210, 35.560024, 46.315590>,  <34.758408, 35.002514, 46.631187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437210, 35.560024, 46.315590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790722, 35.673473, 46.464451>,  <35.002827, 35.741543, 46.553768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790722, 35.673473, 46.464451>,  <34.437210, 35.560024, 46.315590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790722, 35.673473, 46.464451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149620, 0.582301, -0.799086,
		-0.443341, 0.761896, 0.472190,
		0.883777, 0.283619, 0.372153,
		35.055855, 35.758560, 46.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482998, 36.285912, 46.386189>,  <34.437210, 35.560024, 46.315590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482998, 36.285912, 46.386189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859840, 36.154694, 46.358402>,  <35.085945, 36.075962, 46.341732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859840, 36.154694, 46.358402>,  <34.482998, 36.285912, 46.386189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859840, 36.154694, 46.358402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119017, 0.520809, -0.845336,
		0.313488, 0.788127, 0.529700,
		0.942104, -0.328046, -0.069467,
		35.142471, 36.056278, 46.337563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882889, 36.850822, 46.269123>,  <34.482998, 36.285912, 46.386189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882889, 36.850822, 46.269123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106644, 36.543472, 46.144753>,  <35.240898, 36.359062, 46.070129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.106644, 36.543472, 46.144753>,  <34.882889, 36.850822, 46.269123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106644, 36.543472, 46.144753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118901, 0.445610, -0.887296,
		0.820333, 0.459374, 0.340631,
		0.559389, -0.768379, -0.310929,
		35.274460, 36.312958, 46.051476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433868, 37.101406, 45.806858>,  <34.882889, 36.850822, 46.269123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433868, 37.101406, 45.806858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432835, 36.711506, 45.717537>,  <35.432217, 36.477566, 45.663944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432835, 36.711506, 45.717537>,  <35.433868, 37.101406, 45.806858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432835, 36.711506, 45.717537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004122, 0.223308, -0.974739,
		0.999988, -0.001594, -0.004594,
		-0.002580, -0.974747, -0.223299,
		35.432060, 36.419083, 45.650547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.122070, 33.482552, 26.791565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762436, 33.342548, 26.896749>,  <43.546658, 33.258549, 26.959860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.762436, 33.342548, 26.896749>,  <44.122070, 33.482552, 26.791565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762436, 33.342548, 26.896749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000908, 0.602160, 0.798375,
		-0.437779, 0.717566, -0.541709,
		-0.899082, -0.350004, 0.262962,
		43.492710, 33.237549, 26.975637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702858, 34.007244, 27.074505>,  <44.122070, 33.482552, 26.791565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702858, 34.007244, 27.074505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545528, 33.681175, 27.244581>,  <43.451130, 33.485535, 27.346626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.545528, 33.681175, 27.244581>,  <43.702858, 34.007244, 27.074505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545528, 33.681175, 27.244581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232962, 0.535737, 0.811613,
		-0.889398, 0.220170, -0.400621,
		-0.393320, -0.815176, 0.425192,
		43.427532, 33.436623, 27.372139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020119, 34.273869, 27.486704>,  <43.702858, 34.007244, 27.074505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020119, 34.273869, 27.486704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121712, 33.910500, 27.619522>,  <43.182667, 33.692478, 27.699213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121712, 33.910500, 27.619522>,  <43.020119, 34.273869, 27.486704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121712, 33.910500, 27.619522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355302, 0.231672, 0.905587,
		-0.899585, -0.347980, -0.263925,
		0.253982, -0.908426, 0.332047,
		43.197906, 33.637970, 27.719137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590679, 34.215904, 27.960749>,  <43.020119, 34.273869, 27.486704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590679, 34.215904, 27.960749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856209, 33.927296, 28.039474>,  <43.015526, 33.754131, 28.086710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856209, 33.927296, 28.039474>,  <42.590679, 34.215904, 27.960749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856209, 33.927296, 28.039474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144102, 0.134836, 0.980334,
		-0.733872, -0.679133, -0.014465,
		0.663827, -0.721525, 0.196816,
		43.055355, 33.710838, 28.098520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254570, 33.819939, 28.499617>,  <42.590679, 34.215904, 27.960749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254570, 33.819939, 28.499617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649822, 33.758755, 28.505337>,  <42.886974, 33.722046, 28.508770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.649822, 33.758755, 28.505337>,  <42.254570, 33.819939, 28.499617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649822, 33.758755, 28.505337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000181, 0.094249, 0.995549,
		-0.153625, -0.983728, 0.093158,
		0.988129, -0.152957, 0.014301,
		42.946262, 33.712868, 28.509626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415257, 33.475815, 29.121153>,  <42.254570, 33.819939, 28.499617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415257, 33.475815, 29.121153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776173, 33.625431, 29.035397>,  <42.992722, 33.715202, 28.983942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776173, 33.625431, 29.035397>,  <42.415257, 33.475815, 29.121153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776173, 33.625431, 29.035397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256991, -0.067356, 0.964064,
		0.346158, -0.924963, -0.156899,
		0.902292, 0.374040, -0.214391,
		43.046860, 33.737644, 28.971079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784447, 33.036163, 29.510838>,  <42.415257, 33.475815, 29.121153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784447, 33.036163, 29.510838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.011753, 33.355019, 29.429205>,  <43.148136, 33.546329, 29.380226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.011753, 33.355019, 29.429205>,  <42.784447, 33.036163, 29.510838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011753, 33.355019, 29.429205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196886, 0.109093, 0.974338,
		0.798944, -0.593863, -0.094951,
		0.568265, 0.797136, -0.204082,
		43.182232, 33.594158, 29.367981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432919, 32.990082, 29.942204>,  <42.784447, 33.036163, 29.510838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432919, 32.990082, 29.942204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391140, 33.373146, 29.834883>,  <43.366074, 33.602985, 29.770491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391140, 33.373146, 29.834883>,  <43.432919, 32.990082, 29.942204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391140, 33.373146, 29.834883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213774, 0.285089, 0.934358,
		0.971284, 0.040235, -0.234498,
		-0.104447, 0.957656, -0.268301,
		43.359806, 33.660442, 29.754393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013184, 33.426113, 30.202244>,  <43.432919, 32.990082, 29.942204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013184, 33.426113, 30.202244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724800, 33.701557, 30.171167>,  <43.551769, 33.866825, 30.152521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724800, 33.701557, 30.171167>,  <44.013184, 33.426113, 30.202244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724800, 33.701557, 30.171167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079973, 0.194042, 0.977728,
		0.688351, 0.698685, -0.194966,
		-0.720956, 0.688612, -0.077693,
		43.508514, 33.908142, 30.147860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287975, 34.003281, 30.627323>,  <44.013184, 33.426113, 30.202244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287975, 34.003281, 30.627323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895397, 34.068798, 30.587444>,  <43.659851, 34.108109, 30.563517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895397, 34.068798, 30.587444>,  <44.287975, 34.003281, 30.627323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895397, 34.068798, 30.587444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052131, 0.272423, 0.960764,
		0.184524, 0.948134, -0.258830,
		-0.981445, 0.163791, -0.099695,
		43.600964, 34.117935, 30.557535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082630, 34.588242, 31.050852>,  <44.287975, 34.003281, 30.627323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082630, 34.588242, 31.050852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733891, 34.398315, 31.002785>,  <43.524647, 34.284359, 30.973946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733891, 34.398315, 31.002785>,  <44.082630, 34.588242, 31.050852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733891, 34.398315, 31.002785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181099, 0.084558, 0.979823,
		-0.455071, 0.876016, -0.159710,
		-0.871845, -0.474812, -0.120166,
		43.472336, 34.255871, 30.966736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591366, 35.038330, 31.225637>,  <44.082630, 34.588242, 31.050852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591366, 35.038330, 31.225637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423477, 34.679878, 31.283316>,  <43.322742, 34.464809, 31.317923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423477, 34.679878, 31.283316>,  <43.591366, 35.038330, 31.225637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423477, 34.679878, 31.283316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166587, 0.232222, 0.958291,
		-0.892235, 0.378194, -0.246751,
		-0.419721, -0.896127, 0.144194,
		43.297562, 34.411041, 31.326574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963764, 35.124435, 31.685669>,  <43.591366, 35.038330, 31.225637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963764, 35.124435, 31.685669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043732, 34.732529, 31.682068>,  <43.091713, 34.497383, 31.679907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043732, 34.732529, 31.682068>,  <42.963764, 35.124435, 31.685669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043732, 34.732529, 31.682068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183881, -0.046545, 0.981846,
		-0.962403, -0.194637, -0.189467,
		0.199922, -0.979770, -0.009005,
		43.103710, 34.438599, 31.679367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790386, 35.098686, 32.295685>,  <42.963764, 35.124435, 31.685669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790386, 35.098686, 32.295685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899124, 34.724030, 32.207329>,  <42.964367, 34.499233, 32.154316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899124, 34.724030, 32.207329>,  <42.790386, 35.098686, 32.295685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899124, 34.724030, 32.207329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011684, -0.226309, 0.973985,
		-0.962269, -0.267356, -0.050578,
		0.271847, -0.936646, -0.220894,
		42.980679, 34.443035, 32.141060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369522, 34.650856, 32.665966>,  <42.790386, 35.098686, 32.295685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369522, 34.650856, 32.665966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727818, 34.485714, 32.599998>,  <42.942795, 34.386627, 32.560417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727818, 34.485714, 32.599998>,  <42.369522, 34.650856, 32.665966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727818, 34.485714, 32.599998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106172, -0.161577, 0.981132,
		-0.431714, -0.896349, -0.100898,
		0.895740, -0.412856, -0.164922,
		42.996540, 34.361858, 32.550522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395256, 33.985466, 33.159122>,  <42.369522, 34.650856, 32.665966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395256, 33.985466, 33.159122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762524, 34.113823, 33.066170>,  <42.982883, 34.190838, 33.010399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762524, 34.113823, 33.066170>,  <42.395256, 33.985466, 33.159122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762524, 34.113823, 33.066170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320152, -0.255401, 0.912290,
		0.233400, -0.912029, -0.337236,
		0.918165, 0.320895, -0.232378,
		43.037971, 34.210091, 32.996456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812748, 33.658463, 33.702400>,  <42.395256, 33.985466, 33.159122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812748, 33.658463, 33.702400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083611, 33.908867, 33.547699>,  <43.246128, 34.059109, 33.454880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083611, 33.908867, 33.547699>,  <42.812748, 33.658463, 33.702400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083611, 33.908867, 33.547699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493416, 0.003629, 0.869786,
		0.545898, -0.779807, -0.306426,
		0.677153, 0.626009, -0.386751,
		43.286755, 34.096668, 33.431675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513615, 33.375282, 33.704426>,  <42.812748, 33.658463, 33.702400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513615, 33.375282, 33.704426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528355, 33.774414, 33.726273>,  <43.537201, 34.013893, 33.739380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528355, 33.774414, 33.726273>,  <43.513615, 33.375282, 33.704426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528355, 33.774414, 33.726273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487057, -0.065661, 0.870899,
		0.872592, -0.005491, -0.488418,
		0.036852, 0.997827, 0.054621,
		43.539410, 34.073761, 33.742661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980381, 33.589344, 34.257954>,  <43.513615, 33.375282, 33.704426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980381, 33.589344, 34.257954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836155, 33.953476, 34.176670>,  <43.749619, 34.171955, 34.127899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836155, 33.953476, 34.176670>,  <43.980381, 33.589344, 34.257954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836155, 33.953476, 34.176670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349652, 0.333896, 0.875361,
		0.864716, 0.244574, -0.438690,
		-0.360567, 0.910328, -0.203209,
		43.727985, 34.226574, 34.115707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543343, 34.139988, 34.364464>,  <43.980381, 33.589344, 34.257954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543343, 34.139988, 34.364464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190323, 34.323753, 34.404549>,  <43.978512, 34.434013, 34.428600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190323, 34.323753, 34.404549>,  <44.543343, 34.139988, 34.364464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190323, 34.323753, 34.404549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206749, 0.187726, 0.960216,
		0.422326, 0.868157, -0.260661,
		-0.882551, 0.459415, 0.100209,
		43.925556, 34.461578, 34.434612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691685, 34.838524, 34.729397>,  <44.543343, 34.139988, 34.364464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691685, 34.838524, 34.729397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303295, 34.761326, 34.785904>,  <44.070259, 34.715008, 34.819809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303295, 34.761326, 34.785904>,  <44.691685, 34.838524, 34.729397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303295, 34.761326, 34.785904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072587, 0.324999, 0.942925,
		-0.227890, 0.925813, -0.301558,
		-0.970978, -0.192994, 0.141266,
		44.012001, 34.703426, 34.828285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894154, 35.362431, 34.113674>,  <44.691685, 34.838524, 34.729397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894154, 35.362431, 34.113674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236904, 35.156418, 34.104645>,  <45.442554, 35.032810, 34.099228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.236904, 35.156418, 34.104645>,  <44.894154, 35.362431, 34.113674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236904, 35.156418, 34.104645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069894, -0.072683, -0.994903,
		0.510765, 0.854085, -0.098277,
		0.856875, -0.515030, -0.022572,
		45.493965, 35.001907, 34.097874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322250, 35.681278, 33.546452>,  <44.894154, 35.362431, 34.113674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322250, 35.681278, 33.546452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502357, 35.328209, 33.600323>,  <45.610424, 35.116367, 33.632645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502357, 35.328209, 33.600323>,  <45.322250, 35.681278, 33.546452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502357, 35.328209, 33.600323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299625, 0.007285, -0.954029,
		0.841118, 0.469924, 0.267752,
		0.450272, -0.882677, 0.134674,
		45.637440, 35.063404, 33.640724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031281, 35.721592, 33.175438>,  <45.322250, 35.681278, 33.546452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031281, 35.721592, 33.175438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950363, 35.335007, 33.238720>,  <45.901814, 35.103058, 33.276691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950363, 35.335007, 33.238720>,  <46.031281, 35.721592, 33.175438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950363, 35.335007, 33.238720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439742, -0.233990, -0.867108,
		0.875045, -0.105843, 0.472329,
		-0.202297, -0.966461, 0.158208,
		45.889675, 35.045067, 33.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615005, 35.391708, 33.033390>,  <46.031281, 35.721592, 33.175438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615005, 35.391708, 33.033390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344933, 35.100826, 32.983917>,  <46.182888, 34.926296, 32.954235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344933, 35.100826, 32.983917>,  <46.615005, 35.391708, 33.033390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344933, 35.100826, 32.983917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351305, -0.169575, -0.920776,
		0.648622, -0.665143, 0.369966,
		-0.675185, -0.727207, -0.123677,
		46.142376, 34.882664, 32.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953041, 34.853210, 32.818859>,  <46.615005, 35.391708, 33.033390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953041, 34.853210, 32.818859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581444, 34.792370, 32.683903>,  <46.358486, 34.755863, 32.602928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581444, 34.792370, 32.683903>,  <46.953041, 34.853210, 32.818859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581444, 34.792370, 32.683903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360937, -0.170801, -0.916816,
		0.081824, -0.973494, 0.213573,
		-0.928994, -0.152104, -0.337395,
		46.302746, 34.746738, 32.582684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895382, 34.284325, 32.495979>,  <46.953041, 34.853210, 32.818859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895382, 34.284325, 32.495979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587566, 34.473202, 32.324005>,  <46.402878, 34.586529, 32.220821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587566, 34.473202, 32.324005>,  <46.895382, 34.284325, 32.495979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587566, 34.473202, 32.324005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335913, -0.273267, -0.901381,
		-0.543108, -0.838071, 0.051676,
		-0.769543, 0.472188, -0.429933,
		46.356705, 34.614857, 32.195026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605213, 33.893524, 31.906630>,  <46.895382, 34.284325, 32.495979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605213, 33.893524, 31.906630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458454, 34.253845, 31.813732>,  <46.370399, 34.470039, 31.757994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.458454, 34.253845, 31.813732>,  <46.605213, 33.893524, 31.906630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458454, 34.253845, 31.813732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159086, -0.185217, -0.969735,
		-0.916559, -0.392735, -0.075351,
		-0.366893, 0.900807, -0.232241,
		46.348385, 34.524086, 31.744061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282135, 33.833851, 31.176460>,  <46.605213, 33.893524, 31.906630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282135, 33.833851, 31.176460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269272, 34.232533, 31.206272>,  <46.261555, 34.471741, 31.224159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.269272, 34.232533, 31.206272>,  <46.282135, 33.833851, 31.176460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269272, 34.232533, 31.206272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057243, 0.072608, -0.995716,
		-0.997842, -0.036286, 0.054719,
		-0.032157, 0.996700, 0.074528,
		46.259624, 34.531544, 31.228630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697788, 34.110897, 30.680851>,  <46.282135, 33.833851, 31.176460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697788, 34.110897, 30.680851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961128, 34.406361, 30.738762>,  <46.119133, 34.583637, 30.773508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961128, 34.406361, 30.738762>,  <45.697788, 34.110897, 30.680851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961128, 34.406361, 30.738762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009945, 0.200859, -0.979570,
		-0.752649, 0.643456, 0.139581,
		0.658347, 0.738660, 0.144777,
		46.158630, 34.627960, 30.782196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457951, 34.588558, 30.236292>,  <45.697788, 34.110897, 30.680851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457951, 34.588558, 30.236292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831493, 34.705788, 30.318295>,  <46.055618, 34.776127, 30.367496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831493, 34.705788, 30.318295>,  <45.457951, 34.588558, 30.236292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831493, 34.705788, 30.318295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109771, 0.310667, -0.944159,
		-0.340396, 0.904209, 0.257947,
		0.933853, 0.293073, 0.205006,
		46.111649, 34.793709, 30.379797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468208, 35.192177, 29.916346>,  <45.457951, 34.588558, 30.236292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468208, 35.192177, 29.916346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856529, 35.105434, 29.957386>,  <46.089520, 35.053391, 29.982010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856529, 35.105434, 29.957386>,  <45.468208, 35.192177, 29.916346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856529, 35.105434, 29.957386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162371, 0.279097, -0.946436,
		0.176600, 0.935457, 0.306157,
		0.970798, -0.216852, 0.102603,
		46.147770, 35.040379, 29.988167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752457, 35.732254, 29.622986>,  <45.468208, 35.192177, 29.916346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752457, 35.732254, 29.622986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021492, 35.436356, 29.614960>,  <46.182915, 35.258816, 29.610144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.021492, 35.436356, 29.614960>,  <45.752457, 35.732254, 29.622986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021492, 35.436356, 29.614960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188533, 0.197515, -0.961999,
		0.715596, 0.643248, 0.272313,
		0.672590, -0.739743, -0.020067,
		46.223270, 35.214432, 29.608940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318928, 35.959694, 29.264507>,  <45.752457, 35.732254, 29.622986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318928, 35.959694, 29.264507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371883, 35.563347, 29.274731>,  <46.403656, 35.325539, 29.280865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371883, 35.563347, 29.274731>,  <46.318928, 35.959694, 29.264507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371883, 35.563347, 29.274731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044470, -0.019823, -0.998814,
		0.990200, 0.133365, 0.041440,
		0.132386, -0.990869, 0.025560,
		46.411598, 35.266087, 29.282398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717163, 35.812359, 28.678236>,  <46.318928, 35.959694, 29.264507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717163, 35.812359, 28.678236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546886, 35.465118, 28.780361>,  <46.444721, 35.256775, 28.841637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546886, 35.465118, 28.780361>,  <46.717163, 35.812359, 28.678236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546886, 35.465118, 28.780361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060344, -0.254294, -0.965243,
		0.902854, -0.426302, 0.055866,
		-0.425692, -0.868102, 0.255315,
		46.419178, 35.204689, 28.856956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060673, 35.398582, 28.251675>,  <46.717163, 35.812359, 28.678236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060673, 35.398582, 28.251675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726635, 35.197460, 28.340935>,  <46.526211, 35.076786, 28.394491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.726635, 35.197460, 28.340935>,  <47.060673, 35.398582, 28.251675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726635, 35.197460, 28.340935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173235, -0.144638, -0.974202,
		0.522114, -0.852210, 0.033682,
		-0.835097, -0.502810, 0.223150,
		46.476105, 35.046616, 28.407879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976185, 34.979286, 27.685738>,  <47.060673, 35.398582, 28.251675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976185, 34.979286, 27.685738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613697, 34.951527, 27.852566>,  <46.396202, 34.934872, 27.952662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.613697, 34.951527, 27.852566>,  <46.976185, 34.979286, 27.685738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613697, 34.951527, 27.852566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402029, -0.163971, -0.900825,
		0.130902, -0.984021, 0.120695,
		-0.906222, -0.069396, 0.417069,
		46.341831, 34.930706, 27.977686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628487, 34.207088, 27.449245>,  <46.976185, 34.979286, 27.685738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628487, 34.207088, 27.449245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357899, 34.484474, 27.548443>,  <46.195545, 34.650906, 27.607962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357899, 34.484474, 27.548443>,  <46.628487, 34.207088, 27.449245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357899, 34.484474, 27.548443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544989, -0.244863, -0.801891,
		-0.495360, -0.677604, 0.543573,
		-0.676466, 0.693466, 0.247991,
		46.154961, 34.692513, 27.622841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922752, 33.888748, 27.370485>,  <46.628487, 34.207088, 27.449245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922752, 33.888748, 27.370485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872723, 34.285576, 27.365620>,  <45.842705, 34.523674, 27.362700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.872723, 34.285576, 27.365620>,  <45.922752, 33.888748, 27.370485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872723, 34.285576, 27.365620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616750, -0.087349, -0.782298,
		-0.777158, -0.090346, 0.622786,
		-0.125077, 0.992073, -0.012164,
		45.835201, 34.583199, 27.361971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181767, 33.949497, 27.102123>,  <45.922752, 33.888748, 27.370485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181767, 33.949497, 27.102123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330223, 34.320778, 27.091530>,  <45.419296, 34.543545, 27.085173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330223, 34.320778, 27.091530>,  <45.181767, 33.949497, 27.102123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330223, 34.320778, 27.091530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478795, 0.166851, -0.861926,
		-0.795620, 0.332576, 0.506342,
		0.371139, 0.928199, -0.026486,
		45.441566, 34.599239, 27.083584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574944, 34.415779, 26.927015>,  <45.181767, 33.949497, 27.102123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574944, 34.415779, 26.927015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899929, 34.627674, 26.829618>,  <45.094921, 34.754810, 26.771181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899929, 34.627674, 26.829618>,  <44.574944, 34.415779, 26.927015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899929, 34.627674, 26.829618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476783, 0.363343, -0.800413,
		-0.335534, 0.766397, 0.547770,
		0.812463, 0.529733, -0.243491,
		45.143669, 34.786594, 26.756571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399685, 35.231606, 26.934063>,  <44.574944, 34.415779, 26.927015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399685, 35.231606, 26.934063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693035, 35.118748, 26.686657>,  <44.869045, 35.051033, 26.538214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693035, 35.118748, 26.686657>,  <44.399685, 35.231606, 26.934063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693035, 35.118748, 26.686657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531795, 0.328690, -0.780485,
		0.423509, 0.901309, 0.091010,
		0.733372, -0.282143, -0.618515,
		44.913048, 35.034103, 26.501102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.838226, 39.334793, 42.057076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901382, 38.940025, 42.070107>,  <38.939274, 38.703163, 42.077923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901382, 38.940025, 42.070107>,  <38.838226, 39.334793, 42.057076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901382, 38.940025, 42.070107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553638, 0.061159, -0.830509,
		0.817653, 0.149162, 0.556052,
		0.157888, -0.986920, 0.032575,
		38.948750, 38.643948, 42.079880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471745, 39.211918, 41.929108>,  <38.838226, 39.334793, 42.057076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471745, 39.211918, 41.929108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291634, 38.871853, 41.819950>,  <39.183567, 38.667812, 41.754456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291634, 38.871853, 41.819950>,  <39.471745, 39.211918, 41.929108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291634, 38.871853, 41.819950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378176, 0.095277, -0.920818,
		0.808847, -0.517825, 0.278611,
		-0.450277, -0.850164, -0.272894,
		39.156551, 38.616802, 41.738083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001312, 38.835991, 41.544704>,  <39.471745, 39.211918, 41.929108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001312, 38.835991, 41.544704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656811, 38.651413, 41.459557>,  <39.450111, 38.540665, 41.408466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656811, 38.651413, 41.459557>,  <40.001312, 38.835991, 41.544704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656811, 38.651413, 41.459557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331015, -0.191570, -0.923975,
		0.385584, -0.866239, 0.317735,
		-0.861251, -0.461445, -0.212871,
		39.398434, 38.512978, 41.395695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193203, 38.175144, 41.266502>,  <40.001312, 38.835991, 41.544704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193203, 38.175144, 41.266502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832481, 38.278267, 41.127769>,  <39.616051, 38.340141, 41.044529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832481, 38.278267, 41.127769>,  <40.193203, 38.175144, 41.266502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832481, 38.278267, 41.127769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313712, -0.161437, -0.935694,
		-0.297222, -0.952613, 0.064706,
		-0.901800, 0.257810, -0.346829,
		39.561943, 38.355610, 41.023720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926666, 37.529243, 40.931072>,  <40.193203, 38.175144, 41.266502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926666, 37.529243, 40.931072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732170, 37.847942, 40.787537>,  <39.615471, 38.039162, 40.701416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732170, 37.847942, 40.787537>,  <39.926666, 37.529243, 40.931072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732170, 37.847942, 40.787537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236882, -0.275086, -0.931780,
		-0.841105, -0.538071, -0.054977,
		-0.486240, 0.796748, -0.358835,
		39.586300, 38.086967, 40.679886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561798, 37.372780, 40.337761>,  <39.926666, 37.529243, 40.931072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561798, 37.372780, 40.337761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549290, 37.770443, 40.296425>,  <39.541786, 38.009041, 40.271622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549290, 37.770443, 40.296425>,  <39.561798, 37.372780, 40.337761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549290, 37.770443, 40.296425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030574, -0.104297, -0.994076,
		-0.999043, -0.027925, 0.033657,
		-0.031270, 0.994154, -0.103343,
		39.539909, 38.068687, 40.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048088, 37.409515, 39.858940>,  <39.561798, 37.372780, 40.337761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048088, 37.409515, 39.858940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273327, 37.739979, 39.851177>,  <39.408470, 37.938255, 39.846519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273327, 37.739979, 39.851177>,  <39.048088, 37.409515, 39.858940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273327, 37.739979, 39.851177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126865, -0.109625, -0.985844,
		-0.816592, 0.552668, -0.166541,
		0.563101, 0.826160, -0.019405,
		39.442257, 37.987827, 39.845356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798256, 37.673996, 39.304691>,  <39.048088, 37.409515, 39.858940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798256, 37.673996, 39.304691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134327, 37.888550, 39.336670>,  <39.335972, 38.017281, 39.355858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134327, 37.888550, 39.336670>,  <38.798256, 37.673996, 39.304691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134327, 37.888550, 39.336670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180847, -0.138147, -0.973761,
		-0.511264, 0.832592, -0.213071,
		0.840181, 0.536382, 0.079942,
		39.386383, 38.049465, 39.360653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791195, 38.200581, 38.784657>,  <38.798256, 37.673996, 39.304691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791195, 38.200581, 38.784657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176041, 38.152554, 38.882568>,  <39.406948, 38.123737, 38.941315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176041, 38.152554, 38.882568>,  <38.791195, 38.200581, 38.784657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176041, 38.152554, 38.882568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220960, -0.182557, -0.958045,
		0.159718, 0.975836, -0.149111,
		0.962116, -0.120069, 0.244778,
		39.464676, 38.116531, 38.956001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152813, 38.519203, 38.175274>,  <38.791195, 38.200581, 38.784657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152813, 38.519203, 38.175274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427887, 38.299675, 38.365383>,  <39.592930, 38.167957, 38.479446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427887, 38.299675, 38.365383>,  <39.152813, 38.519203, 38.175274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427887, 38.299675, 38.365383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294744, -0.387210, -0.873610,
		0.663486, 0.740853, -0.104517,
		0.687686, -0.548822, 0.475270,
		39.634193, 38.135029, 38.507965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723961, 38.568962, 37.699284>,  <39.152813, 38.519203, 38.175274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723961, 38.568962, 37.699284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770275, 38.252899, 37.940033>,  <39.798061, 38.063263, 38.084484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770275, 38.252899, 37.940033>,  <39.723961, 38.568962, 37.699284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770275, 38.252899, 37.940033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443189, -0.501190, -0.743231,
		0.888920, 0.352796, 0.292159,
		0.115782, -0.790154, 0.601874,
		39.805008, 38.015854, 38.120594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427616, 38.378834, 37.637756>,  <39.723961, 38.568962, 37.699284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427616, 38.378834, 37.637756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248165, 38.046879, 37.770439>,  <40.140495, 37.847706, 37.850048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248165, 38.046879, 37.770439>,  <40.427616, 38.378834, 37.637756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248165, 38.046879, 37.770439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381613, -0.513493, -0.768568,
		0.808151, -0.218213, 0.547059,
		-0.448623, -0.829884, 0.331707,
		40.113579, 37.797913, 37.869949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935669, 37.786160, 37.576199>,  <40.427616, 38.378834, 37.637756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935669, 37.786160, 37.576199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556686, 37.659031, 37.590702>,  <40.329296, 37.582756, 37.599403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556686, 37.659031, 37.590702>,  <40.935669, 37.786160, 37.576199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556686, 37.659031, 37.590702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191276, -0.653751, -0.732136,
		0.256391, -0.686733, 0.680193,
		-0.947458, -0.317818, 0.036261,
		40.272449, 37.563686, 37.601582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952469, 37.064083, 37.632183>,  <40.935669, 37.786160, 37.576199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952469, 37.064083, 37.632183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587055, 37.153801, 37.496452>,  <40.367805, 37.207630, 37.415016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587055, 37.153801, 37.496452>,  <40.952469, 37.064083, 37.632183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587055, 37.153801, 37.496452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071126, -0.733284, -0.676192,
		-0.400488, -0.641862, 0.653929,
		-0.913538, 0.224295, -0.339324,
		40.312996, 37.221088, 37.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594139, 37.062637, 37.321972>,  <40.952469, 37.064083, 37.632183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594139, 37.062637, 37.321972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928406, 36.866039, 37.420025>,  <42.128967, 36.748081, 37.478859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928406, 36.866039, 37.420025>,  <41.594139, 37.062637, 37.321972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928406, 36.866039, 37.420025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522190, -0.572664, 0.631960,
		-0.170225, -0.656116, -0.735211,
		0.835667, -0.491495, 0.245136,
		42.179108, 36.718590, 37.493565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499775, 36.349007, 37.374596>,  <41.594139, 37.062637, 37.321972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499775, 36.349007, 37.374596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841747, 36.348289, 37.582092>,  <42.046928, 36.347858, 37.706593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841747, 36.348289, 37.582092>,  <41.499775, 36.349007, 37.374596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841747, 36.348289, 37.582092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428349, -0.566488, 0.703995,
		0.292601, -0.824068, -0.485074,
		0.854928, -0.001791, 0.518744,
		42.098225, 36.347752, 37.737717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550793, 35.599743, 37.609913>,  <41.499775, 36.349007, 37.374596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550793, 35.599743, 37.609913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781395, 35.839687, 37.831833>,  <41.919758, 35.983654, 37.964985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781395, 35.839687, 37.831833>,  <41.550793, 35.599743, 37.609913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781395, 35.839687, 37.831833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381916, -0.402436, 0.831977,
		0.722342, -0.691530, -0.002912,
		0.576509, 0.599860, 0.554802,
		41.954346, 36.019646, 37.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061657, 35.156334, 38.026482>,  <41.550793, 35.599743, 37.609913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061657, 35.156334, 38.026482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959881, 35.505360, 38.193287>,  <41.898815, 35.714775, 38.293369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959881, 35.505360, 38.193287>,  <42.061657, 35.156334, 38.026482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959881, 35.505360, 38.193287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210027, -0.470766, 0.856894,
		0.944006, 0.130446, 0.303044,
		-0.254442, 0.872561, 0.417009,
		41.883549, 35.767128, 38.318390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393860, 35.206421, 38.719772>,  <42.061657, 35.156334, 38.026482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393860, 35.206421, 38.719772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110641, 35.487511, 38.747627>,  <41.940712, 35.656166, 38.764339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110641, 35.487511, 38.747627>,  <42.393860, 35.206421, 38.719772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110641, 35.487511, 38.747627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355289, -0.439715, 0.824876,
		0.610285, 0.559306, 0.561008,
		-0.708041, 0.702729, 0.069636,
		41.898228, 35.698330, 38.768517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361691, 35.150726, 39.354713>,  <42.393860, 35.206421, 38.719772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361691, 35.150726, 39.354713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038738, 35.369499, 39.266163>,  <41.844967, 35.500763, 39.213032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038738, 35.369499, 39.266163>,  <42.361691, 35.150726, 39.354713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038738, 35.369499, 39.266163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431870, -0.292141, 0.853312,
		0.402029, 0.784552, 0.472071,
		-0.807379, 0.546930, -0.221376,
		41.796524, 35.533577, 39.199749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143360, 35.411541, 40.035950>,  <42.361691, 35.150726, 39.354713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143360, 35.411541, 40.035950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840454, 35.495689, 39.788628>,  <41.658710, 35.546177, 39.640236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840454, 35.495689, 39.788628>,  <42.143360, 35.411541, 40.035950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840454, 35.495689, 39.788628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651886, -0.185536, 0.735269,
		0.039959, 0.959855, 0.277635,
		-0.757263, 0.210368, -0.618303,
		41.613274, 35.558800, 39.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729763, 35.882629, 40.435547>,  <42.143360, 35.411541, 40.035950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729763, 35.882629, 40.435547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484299, 35.724594, 40.162102>,  <41.337021, 35.629772, 39.998035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484299, 35.724594, 40.162102>,  <41.729763, 35.882629, 40.435547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484299, 35.724594, 40.162102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651106, -0.236535, 0.721188,
		-0.446629, 0.887670, -0.112089,
		-0.613664, -0.395086, -0.683611,
		41.300198, 35.606068, 39.957020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108910, 36.197182, 40.555145>,  <41.729763, 35.882629, 40.435547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108910, 36.197182, 40.555145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024872, 35.848793, 40.377487>,  <40.974449, 35.639759, 40.270893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024872, 35.848793, 40.377487>,  <41.108910, 36.197182, 40.555145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024872, 35.848793, 40.377487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614901, -0.235474, 0.752629,
		-0.760104, 0.431230, -0.486090,
		-0.210095, -0.870973, -0.444148,
		40.961845, 35.587502, 40.244244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359924, 36.145416, 40.637062>,  <41.108910, 36.197182, 40.555145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359924, 36.145416, 40.637062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486877, 35.777538, 40.544594>,  <40.563049, 35.556812, 40.489113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486877, 35.777538, 40.544594>,  <40.359924, 36.145416, 40.637062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486877, 35.777538, 40.544594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627261, -0.386425, 0.676181,
		-0.711207, -0.069602, -0.699529,
		0.317378, -0.919691, -0.231169,
		40.582092, 35.501633, 40.475243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744774, 35.652008, 40.514633>,  <40.359924, 36.145416, 40.637062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744774, 35.652008, 40.514633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066635, 35.429745, 40.598324>,  <40.259754, 35.296387, 40.648537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066635, 35.429745, 40.598324>,  <39.744774, 35.652008, 40.514633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066635, 35.429745, 40.598324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507009, -0.459661, 0.729146,
		-0.308979, -0.692792, -0.651591,
		0.804657, -0.555653, 0.209227,
		40.308033, 35.263050, 40.661091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444717, 35.090202, 40.603317>,  <39.744774, 35.652008, 40.514633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444717, 35.090202, 40.603317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794388, 35.047657, 40.792847>,  <40.004189, 35.022129, 40.906563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794388, 35.047657, 40.792847>,  <39.444717, 35.090202, 40.603317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794388, 35.047657, 40.792847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429338, -0.625212, 0.651751,
		0.226917, -0.773173, -0.592209,
		0.874173, -0.106365, 0.473824,
		40.056641, 35.015747, 40.934994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418919, 34.360172, 40.864841>,  <39.444717, 35.090202, 40.603317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418919, 34.360172, 40.864841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699337, 34.568611, 41.059570>,  <39.867588, 34.693676, 41.176407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699337, 34.568611, 41.059570>,  <39.418919, 34.360172, 40.864841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699337, 34.568611, 41.059570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292485, -0.412494, 0.862729,
		0.650379, -0.747197, -0.136761,
		0.701042, 0.521101, 0.486821,
		39.909649, 34.724941, 41.205616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551796, 33.940041, 41.400856>,  <39.418919, 34.360172, 40.864841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551796, 33.940041, 41.400856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709942, 34.286766, 41.522388>,  <39.804829, 34.494801, 41.595306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709942, 34.286766, 41.522388>,  <39.551796, 33.940041, 41.400856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709942, 34.286766, 41.522388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460497, -0.099147, 0.882107,
		0.794749, -0.488669, 0.359968,
		0.395368, 0.866817, 0.303827,
		39.828552, 34.546810, 41.613537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879990, 33.303024, 41.567554>,  <39.551796, 33.940041, 41.400856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879990, 33.303024, 41.567554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663322, 32.971424, 41.511921>,  <39.533321, 32.772465, 41.478542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663322, 32.971424, 41.511921>,  <39.879990, 33.303024, 41.567554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663322, 32.971424, 41.511921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036879, 0.188739, -0.981335,
		0.839781, -0.526431, -0.132807,
		-0.541670, -0.829004, -0.139085,
		39.500820, 32.722721, 41.470196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110558, 33.059258, 40.917023>,  <39.879990, 33.303024, 41.567554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110558, 33.059258, 40.917023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743717, 32.909866, 40.972794>,  <39.523613, 32.820232, 41.006256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743717, 32.909866, 40.972794>,  <40.110558, 33.059258, 40.917023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743717, 32.909866, 40.972794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177048, 0.068204, -0.981836,
		0.357184, -0.925128, -0.128673,
		-0.917100, -0.373478, 0.139431,
		39.468586, 32.797825, 41.014622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031609, 32.660046, 40.263668>,  <40.110558, 33.059258, 40.917023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031609, 32.660046, 40.263668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663712, 32.702850, 40.414726>,  <39.442974, 32.728535, 40.505360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663712, 32.702850, 40.414726>,  <40.031609, 32.660046, 40.263668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663712, 32.702850, 40.414726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373135, 0.060194, -0.925822,
		-0.121810, -0.992433, -0.015431,
		-0.919746, 0.107017, 0.377644,
		39.387787, 32.734955, 40.528019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670105, 32.312565, 39.783337>,  <40.031609, 32.660046, 40.263668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670105, 32.312565, 39.783337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385685, 32.532734, 39.958351>,  <39.215031, 32.664837, 40.063362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385685, 32.532734, 39.958351>,  <39.670105, 32.312565, 39.783337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385685, 32.532734, 39.958351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410782, 0.179851, -0.893819,
		-0.570669, -0.815285, 0.098220,
		-0.711052, 0.550422, 0.437539,
		39.172371, 32.697861, 40.089611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012432, 32.164677, 39.416378>,  <39.670105, 32.312565, 39.783337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012432, 32.164677, 39.416378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985390, 32.505295, 39.624340>,  <38.969162, 32.709667, 39.749115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985390, 32.505295, 39.624340>,  <39.012432, 32.164677, 39.416378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985390, 32.505295, 39.624340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492553, 0.424679, -0.759631,
		-0.867653, -0.307436, 0.390720,
		-0.067607, 0.851546, 0.519902,
		38.965107, 32.760757, 39.780312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276695, 32.300533, 39.450146>,  <39.012432, 32.164677, 39.416378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276695, 32.300533, 39.450146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491173, 32.632511, 39.511707>,  <38.619862, 32.831699, 39.548645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491173, 32.632511, 39.511707>,  <38.276695, 32.300533, 39.450146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491173, 32.632511, 39.511707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469625, 0.444826, -0.762615,
		-0.701389, 0.336635, 0.628276,
		0.536196, 0.829944, 0.153904,
		38.652031, 32.881493, 39.557880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759811, 32.849163, 39.282097>,  <38.276695, 32.300533, 39.450146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759811, 32.849163, 39.282097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130947, 32.996769, 39.260437>,  <38.353630, 33.085335, 39.247440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130947, 32.996769, 39.260437>,  <37.759811, 32.849163, 39.282097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130947, 32.996769, 39.260437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302101, 0.658427, -0.689354,
		-0.218728, 0.655972, 0.722398,
		0.927843, 0.369018, -0.054154,
		38.409302, 33.107475, 39.244190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826687, 33.561497, 39.442577>,  <37.759811, 32.849163, 39.282097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826687, 33.561497, 39.442577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104679, 33.445370, 39.179451>,  <38.271473, 33.375694, 39.021576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104679, 33.445370, 39.179451>,  <37.826687, 33.561497, 39.442577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104679, 33.445370, 39.179451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230571, 0.776565, -0.586330,
		0.681057, 0.559161, 0.472758,
		0.694981, -0.290320, -0.657812,
		38.313171, 33.358273, 38.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685413, 34.102718, 39.027489>,  <37.826687, 33.561497, 39.442577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685413, 34.102718, 39.027489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976913, 33.889290, 38.855804>,  <38.151814, 33.761234, 38.752792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976913, 33.889290, 38.855804>,  <37.685413, 34.102718, 39.027489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976913, 33.889290, 38.855804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083535, 0.552844, -0.829087,
		0.679665, 0.640052, 0.358314,
		0.728751, -0.533570, -0.429215,
		38.195538, 33.729218, 38.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091476, 34.629696, 38.667625>,  <37.685413, 34.102718, 39.027489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091476, 34.629696, 38.667625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135002, 34.263309, 38.513138>,  <38.161118, 34.043476, 38.420444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135002, 34.263309, 38.513138>,  <38.091476, 34.629696, 38.667625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135002, 34.263309, 38.513138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198804, 0.360622, -0.911278,
		0.973980, 0.175939, -0.142859,
		0.108811, -0.915968, -0.386216,
		38.167645, 33.988518, 38.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636181, 34.698376, 38.049255>,  <38.091476, 34.629696, 38.667625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636181, 34.698376, 38.049255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391022, 34.384003, 38.016590>,  <38.243927, 34.195381, 37.996990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391022, 34.384003, 38.016590>,  <38.636181, 34.698376, 38.049255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391022, 34.384003, 38.016590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376403, 0.381271, -0.844366,
		0.694750, -0.486770, -0.529506,
		-0.612897, -0.785931, -0.081666,
		38.207153, 34.148224, 37.992092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583031, 34.607143, 37.369343>,  <38.636181, 34.698376, 38.049255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583031, 34.607143, 37.369343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270782, 34.409317, 37.522205>,  <38.083435, 34.290623, 37.613922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270782, 34.409317, 37.522205>,  <38.583031, 34.607143, 37.369343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270782, 34.409317, 37.522205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577675, 0.337504, -0.743224,
		0.238589, -0.800938, -0.549157,
		-0.780620, -0.494560, 0.382158,
		38.036598, 34.260948, 37.636852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.339176, 32.490135, 44.909801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.002686, 32.274769, 44.929634>,  <39.800793, 32.145550, 44.941532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.002686, 32.274769, 44.929634>,  <40.339176, 32.490135, 44.909801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002686, 32.274769, 44.929634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036169, -0.035462, -0.998716,
		0.539479, -0.841936, 0.010358,
		-0.841223, -0.538411, 0.049583,
		39.750320, 32.113247, 44.944508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380184, 31.861868, 44.485069>,  <40.339176, 32.490135, 44.909801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380184, 31.861868, 44.485069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985210, 31.917952, 44.514225>,  <39.748226, 31.951601, 44.531719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.985210, 31.917952, 44.514225>,  <40.380184, 31.861868, 44.485069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985210, 31.917952, 44.514225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092059, -0.135487, -0.986493,
		-0.128413, -0.980812, 0.146690,
		-0.987439, 0.140182, 0.072894,
		39.688980, 31.960014, 44.536091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075439, 31.299892, 44.066257>,  <40.380184, 31.861868, 44.485069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075439, 31.299892, 44.066257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788139, 31.575964, 44.101509>,  <39.615761, 31.741608, 44.122662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788139, 31.575964, 44.101509>,  <40.075439, 31.299892, 44.066257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788139, 31.575964, 44.101509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207935, -0.092040, -0.973803,
		-0.663988, -0.717759, 0.209621,
		-0.718250, 0.690181, 0.088133,
		39.572666, 31.783018, 44.127949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431557, 31.034000, 43.648903>,  <40.075439, 31.299892, 44.066257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431557, 31.034000, 43.648903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363747, 31.426476, 43.685848>,  <39.323059, 31.661961, 43.708015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.363747, 31.426476, 43.685848>,  <39.431557, 31.034000, 43.648903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363747, 31.426476, 43.685848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253686, 0.047117, -0.966138,
		-0.952315, -0.187221, 0.240926,
		-0.169530, 0.981187, 0.092366,
		39.312889, 31.720831, 43.713558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932014, 31.040470, 43.117992>,  <39.431557, 31.034000, 43.648903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932014, 31.040470, 43.117992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084259, 31.393211, 43.229328>,  <39.175606, 31.604856, 43.296127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.084259, 31.393211, 43.229328>,  <38.932014, 31.040470, 43.117992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084259, 31.393211, 43.229328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090329, 0.335005, -0.937876,
		-0.920314, 0.331821, 0.207162,
		0.380608, 0.881854, 0.278337,
		39.198441, 31.657768, 43.312828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437172, 31.572878, 42.822189>,  <38.932014, 31.040470, 43.117992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437172, 31.572878, 42.822189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805191, 31.722137, 42.869991>,  <39.026001, 31.811693, 42.898670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.805191, 31.722137, 42.869991>,  <38.437172, 31.572878, 42.822189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805191, 31.722137, 42.869991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025288, 0.360910, -0.932258,
		-0.391000, 0.854695, 0.341489,
		0.920043, 0.373148, 0.119503,
		39.081203, 31.834082, 42.905842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388561, 32.321537, 42.528866>,  <38.437172, 31.572878, 42.822189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388561, 32.321537, 42.528866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777283, 32.231503, 42.556973>,  <39.010513, 32.177483, 42.573837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.777283, 32.231503, 42.556973>,  <38.388561, 32.321537, 42.528866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777283, 32.231503, 42.556973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183422, 0.534330, -0.825135,
		0.148184, 0.814755, 0.560549,
		0.971801, -0.225088, 0.070265,
		39.068825, 32.163975, 42.578053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717045, 32.944210, 42.468750>,  <38.388561, 32.321537, 42.528866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717045, 32.944210, 42.468750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980228, 32.655289, 42.383545>,  <39.138138, 32.481937, 42.332420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980228, 32.655289, 42.383545>,  <38.717045, 32.944210, 42.468750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980228, 32.655289, 42.383545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214745, 0.451089, -0.866258,
		0.721787, 0.524217, 0.451907,
		0.657958, -0.722299, -0.213017,
		39.177616, 32.438599, 42.319641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395832, 33.235828, 42.264385>,  <38.717045, 32.944210, 42.468750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395832, 33.235828, 42.264385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376335, 32.878620, 42.085442>,  <39.364635, 32.664295, 41.978077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376335, 32.878620, 42.085442>,  <39.395832, 33.235828, 42.264385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376335, 32.878620, 42.085442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154991, 0.435704, -0.886645,
		0.986712, -0.112558, 0.117172,
		-0.048747, -0.893025, -0.447360,
		39.361710, 32.610714, 41.951233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805016, 33.861916, 42.156677>,  <39.395832, 33.235828, 42.264385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805016, 33.861916, 42.156677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806026, 34.261292, 42.134369>,  <39.806633, 34.500916, 42.120983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.806026, 34.261292, 42.134369>,  <39.805016, 33.861916, 42.156677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806026, 34.261292, 42.134369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208906, 0.055071, 0.976384,
		0.977932, 0.009181, 0.208720,
		0.002530, 0.998440, -0.055774,
		39.806786, 34.560825, 42.117638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119534, 34.118469, 42.782825>,  <39.805016, 33.861916, 42.156677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119534, 34.118469, 42.782825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881603, 34.408997, 42.645042>,  <39.738846, 34.583313, 42.562370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.881603, 34.408997, 42.645042>,  <40.119534, 34.118469, 42.782825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881603, 34.408997, 42.645042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274235, 0.219456, 0.936287,
		0.755633, 0.651388, 0.068643,
		-0.594822, 0.726314, -0.344462,
		39.703156, 34.626892, 42.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287983, 34.740791, 43.101208>,  <40.119534, 34.118469, 42.782825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287983, 34.740791, 43.101208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927700, 34.860909, 42.975632>,  <39.711533, 34.932976, 42.900288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.927700, 34.860909, 42.975632>,  <40.287983, 34.740791, 43.101208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927700, 34.860909, 42.975632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282573, 0.143927, 0.948387,
		0.329973, 0.942927, -0.044783,
		-0.900705, 0.300288, -0.313937,
		39.657490, 34.950996, 42.881451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203640, 35.420273, 43.410843>,  <40.287983, 34.740791, 43.101208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203640, 35.420273, 43.410843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834969, 35.303463, 43.308678>,  <39.613766, 35.233376, 43.247379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834969, 35.303463, 43.308678>,  <40.203640, 35.420273, 43.410843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834969, 35.303463, 43.308678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313089, 0.171091, 0.934186,
		-0.229109, 0.940982, -0.249121,
		-0.921675, -0.292028, -0.255413,
		39.558468, 35.215855, 43.232056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902531, 35.833992, 43.785477>,  <40.203640, 35.420273, 43.410843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902531, 35.833992, 43.785477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648270, 35.535576, 43.706108>,  <39.495712, 35.356525, 43.658485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648270, 35.535576, 43.706108>,  <39.902531, 35.833992, 43.785477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648270, 35.535576, 43.706108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302774, 0.004491, 0.953052,
		-0.710124, 0.665885, -0.228737,
		-0.635650, -0.746041, -0.198423,
		39.457573, 35.311764, 43.646580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338299, 35.986485, 44.025856>,  <39.902531, 35.833992, 43.785477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338299, 35.986485, 44.025856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313560, 35.587254, 44.027706>,  <39.298717, 35.347717, 44.028816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313560, 35.587254, 44.027706>,  <39.338299, 35.986485, 44.025856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313560, 35.587254, 44.027706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294233, 0.022663, 0.955465,
		-0.953730, 0.057733, -0.295068,
		-0.061849, -0.998075, 0.004627,
		39.295006, 35.287830, 44.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802834, 35.905212, 44.436138>,  <39.338299, 35.986485, 44.025856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802834, 35.905212, 44.436138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.996212, 35.556087, 44.409359>,  <39.112240, 35.346615, 44.393291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.996212, 35.556087, 44.409359>,  <38.802834, 35.905212, 44.436138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996212, 35.556087, 44.409359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135313, -0.150067, 0.979372,
		-0.864851, -0.464419, -0.190652,
		0.483449, -0.872809, -0.066943,
		39.141247, 35.294247, 44.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348923, 35.503105, 44.768349>,  <38.802834, 35.905212, 44.436138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348923, 35.503105, 44.768349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.691208, 35.297302, 44.790409>,  <38.896580, 35.173820, 44.803646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.691208, 35.297302, 44.790409>,  <38.348923, 35.503105, 44.768349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691208, 35.297302, 44.790409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316754, -0.436543, 0.842079,
		-0.409177, -0.738047, -0.536527,
		0.855711, -0.514506, 0.055155,
		38.947922, 35.142952, 44.806957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228645, 34.738060, 44.979847>,  <38.348923, 35.503105, 44.768349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228645, 34.738060, 44.979847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605511, 34.825520, 45.081444>,  <38.831631, 34.877995, 45.142403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605511, 34.825520, 45.081444>,  <38.228645, 34.738060, 44.979847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605511, 34.825520, 45.081444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096421, -0.548986, 0.830251,
		0.320975, -0.806726, -0.496154,
		0.942167, 0.218651, 0.253996,
		38.888161, 34.891113, 45.157642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316200, 34.331146, 45.645496>,  <38.228645, 34.738060, 44.979847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316200, 34.331146, 45.645496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.644344, 34.557335, 45.611423>,  <38.841232, 34.693047, 45.590981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.644344, 34.557335, 45.611423>,  <38.316200, 34.331146, 45.645496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644344, 34.557335, 45.611423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277610, -0.263578, 0.923829,
		0.499943, -0.781520, -0.373209,
		0.820360, 0.565468, -0.085184,
		38.890453, 34.726974, 45.585869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928555, 33.994183, 46.048595>,  <38.316200, 34.331146, 45.645496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928555, 33.994183, 46.048595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995869, 34.387444, 46.020035>,  <39.036255, 34.623398, 46.002899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995869, 34.387444, 46.020035>,  <38.928555, 33.994183, 46.048595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995869, 34.387444, 46.020035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325613, 0.012924, 0.945415,
		0.930407, -0.182346, -0.317952,
		0.168283, 0.983150, -0.071399,
		39.046352, 34.682388, 45.998615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464298, 34.105534, 46.498947>,  <38.928555, 33.994183, 46.048595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464298, 34.105534, 46.498947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318653, 34.467148, 46.409378>,  <39.231266, 34.684116, 46.355637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.318653, 34.467148, 46.409378>,  <39.464298, 34.105534, 46.498947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318653, 34.467148, 46.409378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150413, 0.294348, 0.943788,
		0.919129, 0.309964, -0.243155,
		-0.364113, 0.904036, -0.223921,
		39.209419, 34.738358, 46.342201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928345, 34.570168, 46.896511>,  <39.464298, 34.105534, 46.498947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928345, 34.570168, 46.896511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604198, 34.792904, 46.823589>,  <39.409710, 34.926544, 46.779839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604198, 34.792904, 46.823589>,  <39.928345, 34.570168, 46.896511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604198, 34.792904, 46.823589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072881, 0.404517, 0.911622,
		0.581371, 0.725462, -0.368391,
		-0.810368, 0.556839, -0.182303,
		39.361088, 34.959957, 46.768898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102432, 35.247894, 47.177582>,  <39.928345, 34.570168, 46.896511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102432, 35.247894, 47.177582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704449, 35.229603, 47.141899>,  <39.465656, 35.218628, 47.120491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704449, 35.229603, 47.141899>,  <40.102432, 35.247894, 47.177582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704449, 35.229603, 47.141899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098576, 0.284685, 0.953539,
		-0.018210, 0.957530, -0.287758,
		-0.994963, -0.045730, -0.089205,
		39.405960, 35.215885, 47.115139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.865833, 33.355408, 46.713810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206028, 33.164440, 46.625500>,  <34.410145, 33.049858, 46.572514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206028, 33.164440, 46.625500>,  <33.865833, 33.355408, 46.713810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206028, 33.164440, 46.625500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064818, 0.321403, -0.944721,
		0.521986, 0.817784, 0.242404,
		0.850487, -0.477420, -0.220775,
		34.461174, 33.021214, 46.559269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425854, 33.794376, 46.426342>,  <33.865833, 33.355408, 46.713810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425854, 33.794376, 46.426342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509998, 33.425453, 46.296669>,  <34.560486, 33.204098, 46.218864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509998, 33.425453, 46.296669>,  <34.425854, 33.794376, 46.426342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509998, 33.425453, 46.296669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026111, 0.336790, -0.941218,
		0.977275, 0.189532, 0.094931,
		0.210363, -0.922307, -0.324187,
		34.573109, 33.148762, 46.199413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899281, 33.966003, 45.848244>,  <34.425854, 33.794376, 46.426342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899281, 33.966003, 45.848244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808998, 33.578316, 45.808891>,  <34.754829, 33.345703, 45.785278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808998, 33.578316, 45.808891>,  <34.899281, 33.966003, 45.848244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808998, 33.578316, 45.808891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189637, 0.055346, -0.980293,
		0.955560, -0.239917, 0.171307,
		-0.225708, -0.969215, -0.098383,
		34.741287, 33.287552, 45.779377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401028, 33.670906, 45.640114>,  <34.899281, 33.966003, 45.848244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401028, 33.670906, 45.640114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088844, 33.459705, 45.506187>,  <34.901535, 33.332985, 45.425831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088844, 33.459705, 45.506187>,  <35.401028, 33.670906, 45.640114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088844, 33.459705, 45.506187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283599, 0.178292, -0.942223,
		0.557190, -0.830318, 0.010591,
		-0.780455, -0.528000, -0.334820,
		34.854706, 33.301304, 45.405743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644844, 33.470921, 45.096954>,  <35.401028, 33.670906, 45.640114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644844, 33.470921, 45.096954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280243, 33.331490, 45.009628>,  <35.061481, 33.247829, 44.957233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280243, 33.331490, 45.009628>,  <35.644844, 33.470921, 45.096954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280243, 33.331490, 45.009628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148771, 0.215443, -0.965117,
		0.383453, -0.912183, -0.144518,
		-0.911499, -0.348577, -0.218319,
		35.006794, 33.226917, 44.944134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732285, 32.948769, 44.495529>,  <35.644844, 33.470921, 45.096954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732285, 32.948769, 44.495529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357975, 33.089375, 44.506580>,  <35.133389, 33.173737, 44.513210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.357975, 33.089375, 44.506580>,  <35.732285, 32.948769, 44.495529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357975, 33.089375, 44.506580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101407, 0.343360, -0.933713,
		-0.337699, -0.870944, -0.356953,
		-0.935776, 0.351511, 0.027632,
		35.077244, 33.194828, 44.514870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380543, 32.661228, 43.898808>,  <35.732285, 32.948769, 44.495529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380543, 32.661228, 43.898808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203747, 32.999943, 44.017193>,  <35.097668, 33.203171, 44.088223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.203747, 32.999943, 44.017193>,  <35.380543, 32.661228, 43.898808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203747, 32.999943, 44.017193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127938, 0.267059, -0.955150,
		-0.887848, -0.460034, -0.009702,
		-0.441993, 0.846787, 0.295963,
		35.071148, 33.253979, 44.105980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756210, 32.647148, 43.550381>,  <35.380543, 32.661228, 43.898808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756210, 32.647148, 43.550381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785645, 33.030075, 43.662182>,  <34.803307, 33.259830, 43.729263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785645, 33.030075, 43.662182>,  <34.756210, 32.647148, 43.550381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785645, 33.030075, 43.662182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140228, 0.287414, -0.947486,
		-0.987381, 0.030528, 0.155393,
		0.073587, 0.957320, 0.279506,
		34.807720, 33.317272, 43.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152275, 33.082352, 43.477253>,  <34.756210, 32.647148, 43.550381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152275, 33.082352, 43.477253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449825, 33.349449, 43.466217>,  <34.628357, 33.509708, 43.459595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.449825, 33.349449, 43.466217>,  <34.152275, 33.082352, 43.477253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449825, 33.349449, 43.466217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404079, 0.416502, -0.814399,
		-0.532324, 0.616959, 0.579649,
		0.743876, 0.667748, -0.027586,
		34.672989, 33.549774, 43.457943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779545, 33.668400, 43.446022>,  <34.152275, 33.082352, 43.477253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779545, 33.668400, 43.446022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153107, 33.736965, 43.320515>,  <34.377243, 33.778103, 43.245213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153107, 33.736965, 43.320515>,  <33.779545, 33.668400, 43.446022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153107, 33.736965, 43.320515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354356, 0.327000, -0.876072,
		-0.047568, 0.929349, 0.366126,
		0.933900, 0.171412, -0.313765,
		34.433277, 33.788387, 43.226383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683537, 34.255810, 43.087437>,  <33.779545, 33.668400, 43.446022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683537, 34.255810, 43.087437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029694, 34.118450, 42.941463>,  <34.237389, 34.036034, 42.853878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029694, 34.118450, 42.941463>,  <33.683537, 34.255810, 43.087437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029694, 34.118450, 42.941463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124252, 0.558469, -0.820167,
		0.485451, 0.755108, 0.440624,
		0.865389, -0.343403, -0.364933,
		34.289310, 34.015430, 42.831985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820675, 34.732861, 42.657574>,  <33.683537, 34.255810, 43.087437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820675, 34.732861, 42.657574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109306, 34.483158, 42.537823>,  <34.282486, 34.333336, 42.465973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.109306, 34.483158, 42.537823>,  <33.820675, 34.732861, 42.657574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109306, 34.483158, 42.537823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012935, 0.444505, -0.895683,
		0.692212, 0.642433, 0.328820,
		0.721578, -0.624256, -0.299382,
		34.325779, 34.295883, 42.448009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268959, 35.168884, 42.372276>,  <33.820675, 34.732861, 42.657574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268959, 35.168884, 42.372276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306744, 34.801941, 42.217598>,  <34.329414, 34.581776, 42.124790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.306744, 34.801941, 42.217598>,  <34.268959, 35.168884, 42.372276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306744, 34.801941, 42.217598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067899, 0.381589, -0.921835,
		0.993210, 0.113334, -0.026243,
		0.094461, -0.917358, -0.386693,
		34.335083, 34.526733, 42.101589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873066, 35.193455, 41.807636>,  <34.268959, 35.168884, 42.372276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873066, 35.193455, 41.807636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623043, 34.889439, 41.736473>,  <34.473030, 34.707031, 41.693775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623043, 34.889439, 41.736473>,  <34.873066, 35.193455, 41.807636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623043, 34.889439, 41.736473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193661, 0.371786, -0.907894,
		0.756176, -0.533029, -0.379576,
		-0.625055, -0.760036, -0.177908,
		34.435528, 34.661427, 41.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674290, 35.282658, 41.677788>,  <34.873066, 35.193455, 41.807636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674290, 35.282658, 41.677788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729149, 35.672329, 41.606049>,  <35.762066, 35.906132, 41.563007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729149, 35.672329, 41.606049>,  <35.674290, 35.282658, 41.677788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729149, 35.672329, 41.606049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006390, 0.180183, 0.983612,
		0.990530, -0.136049, 0.018487,
		0.137151, 0.974179, -0.179346,
		35.770294, 35.964584, 41.552246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299599, 35.514690, 42.050159>,  <35.674290, 35.282658, 41.677788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299599, 35.514690, 42.050159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055653, 35.825603, 41.988327>,  <35.909286, 36.012150, 41.951229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055653, 35.825603, 41.988327>,  <36.299599, 35.514690, 42.050159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055653, 35.825603, 41.988327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157957, 0.071922, 0.984823,
		0.776603, 0.625028, 0.078914,
		-0.609867, 0.777282, -0.154582,
		35.872692, 36.058788, 41.941952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434227, 35.930912, 42.636604>,  <36.299599, 35.514690, 42.050159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434227, 35.930912, 42.636604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097771, 36.094673, 42.495258>,  <35.895897, 36.192928, 42.410450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.097771, 36.094673, 42.495258>,  <36.434227, 35.930912, 42.636604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097771, 36.094673, 42.495258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295138, 0.200032, 0.934281,
		0.453180, 0.890156, -0.047426,
		-0.841143, 0.409401, -0.353369,
		35.845428, 36.217495, 42.389248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380871, 36.587666, 42.920479>,  <36.434227, 35.930912, 42.636604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380871, 36.587666, 42.920479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013271, 36.470360, 42.815075>,  <35.792713, 36.399975, 42.751831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.013271, 36.470360, 42.815075>,  <36.380871, 36.587666, 42.920479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013271, 36.470360, 42.815075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314139, 0.140789, 0.938880,
		-0.238244, 0.945607, -0.221512,
		-0.918998, -0.293268, -0.263510,
		35.737572, 36.382378, 42.736023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902172, 37.178162, 43.300934>,  <36.380871, 36.587666, 42.920479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902172, 37.178162, 43.300934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.700455, 36.837917, 43.241409>,  <35.579422, 36.633770, 43.205696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.700455, 36.837917, 43.241409>,  <35.902172, 37.178162, 43.300934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700455, 36.837917, 43.241409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320835, 0.024568, 0.946817,
		-0.801717, 0.525220, -0.285295,
		-0.504296, -0.850612, -0.148812,
		35.549168, 36.582733, 43.196766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281902, 37.304775, 43.598522>,  <35.902172, 37.178162, 43.300934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281902, 37.304775, 43.598522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270245, 36.904945, 43.597412>,  <35.263248, 36.665047, 43.596745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.270245, 36.904945, 43.597412>,  <35.281902, 37.304775, 43.598522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270245, 36.904945, 43.597412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252487, 0.004674, 0.967589,
		-0.967161, 0.028901, -0.252515,
		-0.029144, -0.999572, -0.002777,
		35.261501, 36.605076, 43.596581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750916, 37.109112, 43.963081>,  <35.281902, 37.304775, 43.598522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750916, 37.109112, 43.963081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987812, 36.786926, 43.971848>,  <35.129951, 36.593616, 43.977108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987812, 36.786926, 43.971848>,  <34.750916, 37.109112, 43.963081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987812, 36.786926, 43.971848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193519, -0.115780, 0.974241,
		-0.782174, -0.581231, -0.224442,
		0.592245, -0.805460, 0.021919,
		35.165485, 36.545288, 43.978424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407658, 36.655190, 44.364899>,  <34.750916, 37.109112, 43.963081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407658, 36.655190, 44.364899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783840, 36.519264, 44.367958>,  <35.009552, 36.437710, 44.369793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.783840, 36.519264, 44.367958>,  <34.407658, 36.655190, 44.364899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783840, 36.519264, 44.367958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084008, -0.210563, 0.973964,
		-0.329358, -0.916617, -0.226574,
		0.940460, -0.339817, 0.007653,
		35.065979, 36.417320, 44.370255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414200, 35.831512, 44.642193>,  <34.407658, 36.655190, 44.364899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414200, 35.831512, 44.642193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754528, 36.031059, 44.708218>,  <34.958725, 36.150787, 44.747833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754528, 36.031059, 44.708218>,  <34.414200, 35.831512, 44.642193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754528, 36.031059, 44.708218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102048, -0.151282, 0.983209,
		0.515458, -0.853375, -0.077805,
		0.850817, 0.498863, 0.165064,
		35.009773, 36.180717, 44.757736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819485, 35.380154, 45.058361>,  <34.414200, 35.831512, 44.642193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819485, 35.380154, 45.058361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007832, 35.729492, 45.108253>,  <35.120838, 35.939095, 45.138191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007832, 35.729492, 45.108253>,  <34.819485, 35.380154, 45.058361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007832, 35.729492, 45.108253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039766, -0.120236, 0.991949,
		0.881308, -0.472034, -0.021885,
		0.470865, 0.873342, 0.124736,
		35.149090, 35.991493, 45.145676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506508, 35.167034, 45.263290>,  <34.819485, 35.380154, 45.058361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506508, 35.167034, 45.263290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457973, 35.546799, 45.379154>,  <35.428852, 35.774658, 45.448673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457973, 35.546799, 45.379154>,  <35.506508, 35.167034, 45.263290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457973, 35.546799, 45.379154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167202, -0.268099, 0.948771,
		0.978428, 0.163549, -0.126213,
		-0.121333, 0.949408, 0.289661,
		35.421574, 35.831619, 45.466053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035542, 35.305660, 45.700935>,  <35.506508, 35.167034, 45.263290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035542, 35.305660, 45.700935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801559, 35.608952, 45.816116>,  <35.661171, 35.790924, 45.885227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.801559, 35.608952, 45.816116>,  <36.035542, 35.305660, 45.700935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801559, 35.608952, 45.816116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125033, -0.266488, 0.955694,
		0.801367, 0.595047, 0.061081,
		-0.584960, 0.758224, 0.287955,
		35.626072, 35.836418, 45.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368736, 35.538002, 46.330345>,  <36.035542, 35.305660, 45.700935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368736, 35.538002, 46.330345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992016, 35.672199, 46.321804>,  <35.765984, 35.752716, 46.316681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992016, 35.672199, 46.321804>,  <36.368736, 35.538002, 46.330345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992016, 35.672199, 46.321804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094498, -0.203257, 0.974554,
		0.322618, 0.919853, 0.223131,
		-0.941800, 0.335494, -0.021350,
		35.709476, 35.772846, 46.315399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305676, 36.050938, 46.814552>,  <36.368736, 35.538002, 46.330345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305676, 36.050938, 46.814552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924561, 35.938477, 46.768684>,  <35.695892, 35.871002, 46.741165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924561, 35.938477, 46.768684>,  <36.305676, 36.050938, 46.814552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924561, 35.938477, 46.768684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098744, -0.070211, 0.992633,
		-0.287130, 0.957092, 0.039135,
		-0.952789, -0.281150, -0.114667,
		35.638725, 35.854130, 46.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304642, 36.871426, 46.936565>,  <36.305676, 36.050938, 46.814552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304642, 36.871426, 46.936565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631737, 37.084263, 47.024364>,  <36.827995, 37.211964, 47.077045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631737, 37.084263, 47.024364>,  <36.304642, 36.871426, 46.936565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631737, 37.084263, 47.024364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190172, 0.110174, -0.975549,
		-0.543266, 0.839487, -0.011096,
		0.817739, 0.532093, 0.219500,
		36.877060, 37.243893, 47.090214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260258, 37.419407, 46.553635>,  <36.304642, 36.871426, 46.936565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260258, 37.419407, 46.553635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651882, 37.394455, 46.631138>,  <36.886856, 37.379482, 46.677639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.651882, 37.394455, 46.631138>,  <36.260258, 37.419407, 46.553635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651882, 37.394455, 46.631138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201431, 0.159774, -0.966384,
		0.029329, 0.985180, 0.168995,
		0.979063, -0.062384, 0.193760,
		36.945602, 37.375740, 46.689266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514156, 37.895409, 46.223225>,  <36.260258, 37.419407, 46.553635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514156, 37.895409, 46.223225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876602, 37.732052, 46.267365>,  <37.094070, 37.634037, 46.293846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.876602, 37.732052, 46.267365>,  <36.514156, 37.895409, 46.223225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876602, 37.732052, 46.267365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267857, 0.351973, -0.896865,
		0.327433, 0.842218, 0.428318,
		0.906113, -0.408391, 0.110347,
		37.148438, 37.609535, 46.300468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966316, 38.380409, 45.919365>,  <36.514156, 37.895409, 46.223225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966316, 38.380409, 45.919365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188152, 38.049919, 45.958927>,  <37.321255, 37.851624, 45.982666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.188152, 38.049919, 45.958927>,  <36.966316, 38.380409, 45.919365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188152, 38.049919, 45.958927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460823, 0.205981, -0.863258,
		0.692874, 0.524330, 0.494978,
		0.554588, -0.826226, 0.098905,
		37.354530, 37.802052, 45.988598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649082, 38.607635, 45.802242>,  <36.966316, 38.380409, 45.919365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649082, 38.607635, 45.802242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703609, 38.216675, 45.737610>,  <37.736328, 37.982098, 45.698830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703609, 38.216675, 45.737610>,  <37.649082, 38.607635, 45.802242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703609, 38.216675, 45.737610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596940, 0.211213, -0.773985,
		0.790620, 0.009053, 0.612240,
		0.136320, -0.977398, -0.161585,
		37.744507, 37.923454, 45.689133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306534, 38.532257, 45.731373>,  <37.649082, 38.607635, 45.802242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306534, 38.532257, 45.731373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132088, 38.222599, 45.547848>,  <38.027420, 38.036804, 45.437733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.132088, 38.222599, 45.547848>,  <38.306534, 38.532257, 45.731373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132088, 38.222599, 45.547848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398131, 0.291253, -0.869864,
		0.807030, -0.562024, 0.181192,
		-0.436112, -0.774145, -0.458809,
		38.001255, 37.990356, 45.410206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817257, 38.327900, 45.319546>,  <38.306534, 38.532257, 45.731373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817257, 38.327900, 45.319546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499760, 38.146339, 45.157589>,  <38.309261, 38.037403, 45.060413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499760, 38.146339, 45.157589>,  <38.817257, 38.327900, 45.319546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499760, 38.146339, 45.157589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306470, 0.276552, -0.910821,
		0.525399, -0.847048, -0.080404,
		-0.793745, -0.453903, -0.404895,
		38.261635, 38.010170, 45.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183163, 37.939713, 44.835384>,  <38.817257, 38.327900, 45.319546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183163, 37.939713, 44.835384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800022, 37.979565, 44.727615>,  <38.570137, 38.003475, 44.662952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.800022, 37.979565, 44.727615>,  <39.183163, 37.939713, 44.835384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800022, 37.979565, 44.727615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285319, 0.221324, -0.932528,
		-0.033279, -0.970098, -0.240423,
		-0.957855, 0.099631, -0.269422,
		38.512665, 38.009453, 44.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086590, 37.457195, 44.367744>,  <39.183163, 37.939713, 44.835384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086590, 37.457195, 44.367744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767788, 37.690750, 44.305958>,  <38.576508, 37.830883, 44.268887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767788, 37.690750, 44.305958>,  <39.086590, 37.457195, 44.367744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767788, 37.690750, 44.305958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059023, -0.179232, -0.982035,
		-0.601080, -0.791805, 0.108386,
		-0.797006, 0.583884, -0.154467,
		38.528687, 37.865917, 44.259617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730835, 37.125938, 43.849529>,  <39.086590, 37.457195, 44.367744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730835, 37.125938, 43.849529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624195, 37.511459, 43.850155>,  <38.560211, 37.742771, 43.850529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.624195, 37.511459, 43.850155>,  <38.730835, 37.125938, 43.849529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624195, 37.511459, 43.850155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024443, 0.008382, -0.999666,
		-0.963497, -0.266473, -0.025793,
		-0.266600, 0.963806, 0.001563,
		38.544216, 37.800602, 43.850624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275623, 37.277184, 43.297050>,  <38.730835, 37.125938, 43.849529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275623, 37.277184, 43.297050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385429, 37.657780, 43.352642>,  <38.451313, 37.886135, 43.385998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.385429, 37.657780, 43.352642>,  <38.275623, 37.277184, 43.297050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385429, 37.657780, 43.352642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056823, 0.128228, -0.990116,
		-0.959903, 0.279696, -0.018866,
		0.274512, 0.951487, 0.138979,
		38.467785, 37.943226, 43.394337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906227, 37.747162, 42.756664>,  <38.275623, 37.277184, 43.297050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906227, 37.747162, 42.756664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228634, 37.933270, 42.903008>,  <38.422077, 38.044933, 42.990814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228634, 37.933270, 42.903008>,  <37.906227, 37.747162, 42.756664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228634, 37.933270, 42.903008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306424, 0.200816, -0.930471,
		-0.506394, 0.862087, 0.019291,
		0.806021, 0.465273, 0.365857,
		38.470440, 38.072853, 43.012764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893299, 38.451900, 42.482647>,  <37.906227, 37.747162, 42.756664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893299, 38.451900, 42.482647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265472, 38.377510, 42.608955>,  <38.488777, 38.332874, 42.684738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265472, 38.377510, 42.608955>,  <37.893299, 38.451900, 42.482647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265472, 38.377510, 42.608955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362031, 0.332827, -0.870724,
		0.056837, 0.924467, 0.377002,
		0.930432, -0.185976, 0.315769,
		38.544601, 38.321716, 42.703686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193829, 39.083687, 42.438549>,  <37.893299, 38.451900, 42.482647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193829, 39.083687, 42.438549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461330, 38.786293, 42.438091>,  <38.621830, 38.607857, 42.437817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461330, 38.786293, 42.438091>,  <38.193829, 39.083687, 42.438549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461330, 38.786293, 42.438091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458966, 0.414041, -0.786079,
		0.584907, 0.525171, 0.618125,
		0.668755, -0.743482, -0.001140,
		38.661957, 38.563248, 42.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.534063, 33.031452, 29.311731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.621344, 32.643147, 29.351736>,  <30.673712, 32.410164, 29.375738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.621344, 32.643147, 29.351736>,  <30.534063, 33.031452, 29.311731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621344, 32.643147, 29.351736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533038, -0.032708, 0.845459,
		-0.817471, -0.237789, -0.524592,
		0.218199, -0.970766, 0.100012,
		30.686804, 32.351917, 29.381741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980881, 32.713413, 29.323456>,  <30.534063, 33.031452, 29.311731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980881, 32.713413, 29.323456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201721, 32.443645, 29.519554>,  <30.334227, 32.281784, 29.637213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201721, 32.443645, 29.519554>,  <29.980881, 32.713413, 29.323456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201721, 32.443645, 29.519554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644921, 0.027239, 0.763764,
		-0.528451, -0.737846, -0.419909,
		0.552102, -0.674420, 0.490246,
		30.367352, 32.241318, 29.666628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536432, 32.358406, 29.659954>,  <29.980881, 32.713413, 29.323456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536432, 32.358406, 29.659954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876175, 32.262177, 29.847876>,  <30.080021, 32.204441, 29.960629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876175, 32.262177, 29.847876>,  <29.536432, 32.358406, 29.659954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876175, 32.262177, 29.847876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485992, -0.009189, 0.873915,
		-0.205923, -0.970588, -0.124721,
		0.849357, -0.240573, 0.469805,
		30.130981, 32.190006, 29.988817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287449, 31.804161, 30.185141>,  <29.536432, 32.358406, 29.659954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287449, 31.804161, 30.185141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640779, 31.955299, 30.296112>,  <29.852777, 32.045982, 30.362696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.640779, 31.955299, 30.296112>,  <29.287449, 31.804161, 30.185141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640779, 31.955299, 30.296112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331229, 0.084330, 0.939774,
		0.331697, -0.922019, 0.199646,
		0.883326, 0.377849, 0.277428,
		29.905777, 32.068653, 30.379341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623495, 31.345051, 30.729563>,  <29.287449, 31.804161, 30.185141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623495, 31.345051, 30.729563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728806, 31.730890, 30.735682>,  <29.791992, 31.962395, 30.739353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728806, 31.730890, 30.735682>,  <29.623495, 31.345051, 30.729563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728806, 31.730890, 30.735682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198840, 0.038740, 0.979266,
		0.944006, -0.260859, 0.202001,
		0.263276, 0.964599, 0.015298,
		29.807789, 32.020271, 30.740271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747126, 31.369148, 31.477291>,  <29.623495, 31.345051, 30.729563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747126, 31.369148, 31.477291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.755104, 31.741697, 31.331884>,  <29.759892, 31.965227, 31.244640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.755104, 31.741697, 31.331884>,  <29.747126, 31.369148, 31.477291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755104, 31.741697, 31.331884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382893, 0.342983, 0.857762,
		0.923577, 0.122080, 0.363457,
		0.019944, 0.931374, -0.363515,
		29.761087, 32.021111, 31.222830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909063, 31.788233, 32.059422>,  <29.747126, 31.369148, 31.477291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909063, 31.788233, 32.059422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747293, 32.050831, 31.804720>,  <29.650230, 32.208389, 31.651899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747293, 32.050831, 31.804720>,  <29.909063, 31.788233, 32.059422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747293, 32.050831, 31.804720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520934, 0.406896, 0.750376,
		0.751710, 0.635177, 0.177431,
		-0.404426, 0.656495, -0.636753,
		29.625965, 32.247780, 31.613693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063955, 32.503338, 32.402603>,  <29.909063, 31.788233, 32.059422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063955, 32.503338, 32.402603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762901, 32.558990, 32.145176>,  <29.582270, 32.592381, 31.990719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762901, 32.558990, 32.145176>,  <30.063955, 32.503338, 32.402603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762901, 32.558990, 32.145176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495737, 0.523542, 0.692927,
		0.433341, 0.840564, -0.325066,
		-0.752635, 0.139127, -0.643571,
		29.537111, 32.600727, 31.952105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884983, 33.107639, 32.608528>,  <30.063955, 32.503338, 32.402603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884983, 33.107639, 32.608528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583321, 32.981430, 32.378155>,  <29.402323, 32.905704, 32.239933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583321, 32.981430, 32.378155>,  <29.884983, 33.107639, 32.608528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583321, 32.981430, 32.378155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652828, 0.455265, 0.605434,
		0.071172, 0.832574, -0.549323,
		-0.754156, -0.315524, -0.575929,
		29.357075, 32.886772, 32.205376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484276, 33.705750, 32.504128>,  <29.884983, 33.107639, 32.608528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484276, 33.705750, 32.504128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248129, 33.386909, 32.453369>,  <29.106441, 33.195606, 32.422916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248129, 33.386909, 32.453369>,  <29.484276, 33.705750, 32.504128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248129, 33.386909, 32.453369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648695, 0.375032, 0.662228,
		-0.480271, 0.473272, -0.738480,
		-0.590368, -0.797097, -0.126892,
		29.071018, 33.147781, 32.415302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833555, 34.023773, 32.451225>,  <29.484276, 33.705750, 32.504128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833555, 34.023773, 32.451225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795904, 33.639458, 32.555553>,  <28.773314, 33.408871, 32.618153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.795904, 33.639458, 32.555553>,  <28.833555, 34.023773, 32.451225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795904, 33.639458, 32.555553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616008, 0.262021, 0.742886,
		-0.782096, -0.090745, -0.616516,
		-0.094127, -0.960786, 0.260825,
		28.767666, 33.351223, 32.633801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104830, 33.924747, 32.579422>,  <28.833555, 34.023773, 32.451225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104830, 33.924747, 32.579422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281639, 33.615089, 32.760670>,  <28.387724, 33.429295, 32.869419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281639, 33.615089, 32.760670>,  <28.104830, 33.924747, 32.579422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281639, 33.615089, 32.760670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596532, 0.123561, 0.793021,
		-0.669900, -0.620834, -0.407185,
		0.442022, -0.774143, 0.453121,
		28.414246, 33.382847, 32.896606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555748, 33.599468, 32.851089>,  <28.104830, 33.924747, 32.579422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555748, 33.599468, 32.851089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847895, 33.433208, 33.067902>,  <28.023182, 33.333454, 33.197990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847895, 33.433208, 33.067902>,  <27.555748, 33.599468, 32.851089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847895, 33.433208, 33.067902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594310, 0.004459, 0.804224,
		-0.336692, -0.909514, -0.243768,
		0.730366, -0.415649, 0.542035,
		28.067005, 33.308514, 33.230511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173199, 33.109043, 33.289989>,  <27.555748, 33.599468, 32.851089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173199, 33.109043, 33.289989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508118, 33.196163, 33.490585>,  <27.709068, 33.248436, 33.610943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.508118, 33.196163, 33.490585>,  <27.173199, 33.109043, 33.289989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508118, 33.196163, 33.490585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468826, -0.185916, 0.863503,
		0.281310, -0.958122, -0.053555,
		0.837298, 0.217804, 0.501492,
		27.759308, 33.261505, 33.641033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153997, 32.574707, 33.921524>,  <27.173199, 33.109043, 33.289989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153997, 32.574707, 33.921524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397106, 32.880390, 34.007870>,  <27.542973, 33.063801, 34.059677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.397106, 32.880390, 34.007870>,  <27.153997, 32.574707, 33.921524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397106, 32.880390, 34.007870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473344, 0.130373, 0.871176,
		0.637619, -0.631654, 0.440971,
		0.607773, 0.764209, 0.215861,
		27.579437, 33.109653, 34.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208496, 32.569859, 34.649773>,  <27.153997, 32.574707, 33.921524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208496, 32.569859, 34.649773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273382, 32.951706, 34.549862>,  <27.312313, 33.180813, 34.489914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273382, 32.951706, 34.549862>,  <27.208496, 32.569859, 34.649773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273382, 32.951706, 34.549862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614158, 0.295799, 0.731651,
		0.772332, 0.034721, 0.634269,
		0.162213, 0.954619, -0.249779,
		27.322046, 33.238091, 34.474930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258104, 32.947880, 35.316200>,  <27.208496, 32.569859, 34.649773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258104, 32.947880, 35.316200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173763, 33.219650, 35.035084>,  <27.123159, 33.382713, 34.866413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173763, 33.219650, 35.035084>,  <27.258104, 32.947880, 35.316200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173763, 33.219650, 35.035084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707969, 0.389603, 0.589058,
		0.674033, 0.621759, 0.398867,
		-0.210853, 0.679430, -0.702791,
		27.110508, 33.423481, 34.824245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160631, 33.622051, 35.696423>,  <27.258104, 32.947880, 35.316200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160631, 33.622051, 35.696423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991640, 33.643394, 35.334503>,  <26.890245, 33.656200, 35.117352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.991640, 33.643394, 35.334503>,  <27.160631, 33.622051, 35.696423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991640, 33.643394, 35.334503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806564, 0.433272, 0.402157,
		0.413483, 0.899682, -0.140013,
		-0.422477, 0.053356, -0.904802,
		26.864897, 33.659401, 35.063061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445831, 33.950630, 36.319790>,  <27.160631, 33.622051, 35.696423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445831, 33.950630, 36.319790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490013, 33.966785, 36.717014>,  <27.516523, 33.976479, 36.955349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490013, 33.966785, 36.717014>,  <27.445831, 33.950630, 36.319790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490013, 33.966785, 36.717014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848279, -0.524490, -0.073023,
		0.517901, 0.850458, -0.092190,
		0.110456, 0.040384, 0.993060,
		27.523149, 33.978901, 37.014931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216444, 33.584068, 36.958225>,  <27.445831, 33.950630, 36.319790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216444, 33.584068, 36.958225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068180, 33.955551, 36.962433>,  <26.979221, 34.178440, 36.964958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.068180, 33.955551, 36.962433>,  <27.216444, 33.584068, 36.958225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068180, 33.955551, 36.962433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920328, 0.368793, -0.130334,
		-0.124922, -0.038629, -0.991414,
		-0.370662, 0.928708, 0.010519,
		26.956982, 34.234165, 36.965588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805952, 33.247169, 37.318722>,  <27.216444, 33.584068, 36.958225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805952, 33.247169, 37.318722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121042, 33.138672, 37.539959>,  <28.310097, 33.073574, 37.672703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121042, 33.138672, 37.539959>,  <27.805952, 33.247169, 37.318722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121042, 33.138672, 37.539959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234843, -0.697818, -0.676682,
		0.569506, 0.662931, -0.485990,
		0.787726, -0.271243, 0.553096,
		28.357361, 33.057301, 37.705887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378616, 33.275703, 36.841022>,  <27.805952, 33.247169, 37.318722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378616, 33.275703, 36.841022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486002, 33.050014, 37.153324>,  <28.550432, 32.914600, 37.340706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486002, 33.050014, 37.153324>,  <28.378616, 33.275703, 36.841022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486002, 33.050014, 37.153324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336738, -0.704406, -0.624836,
		0.902516, 0.430655, 0.000889,
		0.268462, -0.564225, 0.780755,
		28.566540, 32.880749, 37.387550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051111, 33.001331, 36.690006>,  <28.378616, 33.275703, 36.841022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051111, 33.001331, 36.690006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911491, 32.763271, 36.979546>,  <28.827719, 32.620434, 37.153271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911491, 32.763271, 36.979546>,  <29.051111, 33.001331, 36.690006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911491, 32.763271, 36.979546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249679, -0.803574, -0.540305,
		0.903230, -0.007864, 0.429085,
		-0.349051, -0.595153, 0.723849,
		28.806776, 32.584724, 37.196701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386747, 32.454170, 36.532257>,  <29.051111, 33.001331, 36.690006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386747, 32.454170, 36.532257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086283, 32.315937, 36.757229>,  <28.906004, 32.232998, 36.892212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086283, 32.315937, 36.757229>,  <29.386747, 32.454170, 36.532257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086283, 32.315937, 36.757229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112408, -0.772609, -0.624852,
		0.650477, -0.532587, 0.541508,
		-0.751162, -0.345581, 0.562431,
		28.860933, 32.212261, 36.925957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515421, 31.769510, 36.711872>,  <29.386747, 32.454170, 36.532257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515421, 31.769510, 36.711872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119591, 31.825632, 36.724876>,  <28.882093, 31.859304, 36.732681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119591, 31.825632, 36.724876>,  <29.515421, 31.769510, 36.711872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119591, 31.825632, 36.724876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121419, -0.691314, -0.712280,
		-0.077460, -0.708802, 0.701142,
		-0.989574, 0.140305, 0.032513,
		28.822718, 31.867723, 36.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200954, 31.081923, 36.636703>,  <29.515421, 31.769510, 36.711872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200954, 31.081923, 36.636703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885958, 31.316145, 36.559780>,  <28.696960, 31.456678, 36.513626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.885958, 31.316145, 36.559780>,  <29.200954, 31.081923, 36.636703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885958, 31.316145, 36.559780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273515, -0.611641, -0.742351,
		-0.552311, -0.531996, 0.641820,
		-0.787491, 0.585556, -0.192307,
		28.649710, 31.491812, 36.502087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669773, 30.666836, 36.597610>,  <29.200954, 31.081923, 36.636703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669773, 30.666836, 36.597610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544376, 30.986418, 36.392323>,  <28.469137, 31.178167, 36.269150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544376, 30.986418, 36.392323>,  <28.669773, 30.666836, 36.597610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544376, 30.986418, 36.392323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369507, -0.600506, -0.709124,
		-0.874749, -0.032668, 0.483474,
		-0.313494, 0.798953, -0.513221,
		28.450329, 31.226103, 36.238358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150419, 30.418550, 36.349060>,  <28.669773, 30.666836, 36.597610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150419, 30.418550, 36.349060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211075, 30.747320, 36.129444>,  <28.247469, 30.944582, 35.997673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.211075, 30.747320, 36.129444>,  <28.150419, 30.418550, 36.349060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211075, 30.747320, 36.129444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341609, -0.477655, -0.809412,
		-0.927528, 0.310295, 0.208346,
		0.151639, 0.821926, -0.549038,
		28.256567, 30.993898, 35.964733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562532, 30.473213, 35.893215>,  <28.150419, 30.418550, 36.349060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562532, 30.473213, 35.893215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834364, 30.705349, 35.713715>,  <27.997463, 30.844631, 35.606014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834364, 30.705349, 35.713715>,  <27.562532, 30.473213, 35.893215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834364, 30.705349, 35.713715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235698, -0.406554, -0.882701,
		-0.694708, 0.705635, -0.139500,
		0.679579, 0.580339, -0.448753,
		28.038239, 30.879450, 35.579090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191586, 30.705624, 35.231518>,  <27.562532, 30.473213, 35.893215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191586, 30.705624, 35.231518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586979, 30.739317, 35.181225>,  <27.824215, 30.759533, 35.151047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586979, 30.739317, 35.181225>,  <27.191586, 30.705624, 35.231518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586979, 30.739317, 35.181225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073235, -0.460825, -0.884464,
		-0.132444, 0.883485, -0.449348,
		0.988481, 0.084234, -0.125735,
		27.883524, 30.764587, 35.143505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335100, 31.136341, 34.707577>,  <27.191586, 30.705624, 35.231518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335100, 31.136341, 34.707577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658831, 30.902615, 34.731472>,  <27.853069, 30.762379, 34.745808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658831, 30.902615, 34.731472>,  <27.335100, 31.136341, 34.707577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658831, 30.902615, 34.731472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049106, -0.168665, -0.984450,
		0.585305, 0.793806, -0.165198,
		0.809325, -0.584316, 0.059739,
		27.901628, 30.727320, 34.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779785, 31.292324, 34.126350>,  <27.335100, 31.136341, 34.707577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779785, 31.292324, 34.126350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892746, 30.925774, 34.239841>,  <27.960522, 30.705843, 34.307938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.892746, 30.925774, 34.239841>,  <27.779785, 31.292324, 34.126350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892746, 30.925774, 34.239841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024485, -0.288785, -0.957081,
		0.958984, 0.277227, -0.059116,
		0.282400, -0.916378, 0.283728,
		27.977467, 30.650860, 34.324959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300606, 31.083118, 33.642078>,  <27.779785, 31.292324, 34.126350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300606, 31.083118, 33.642078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185074, 30.739204, 33.810528>,  <28.115755, 30.532856, 33.911598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185074, 30.739204, 33.810528>,  <28.300606, 31.083118, 33.642078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185074, 30.739204, 33.810528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063293, -0.456057, -0.887697,
		0.955286, -0.229741, 0.186142,
		-0.288831, -0.859786, 0.421124,
		28.098425, 30.481268, 33.936867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540709, 30.642670, 33.257996>,  <28.300606, 31.083118, 33.642078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540709, 30.642670, 33.257996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303352, 30.394283, 33.462852>,  <28.160938, 30.245251, 33.585766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303352, 30.394283, 33.462852>,  <28.540709, 30.642670, 33.257996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303352, 30.394283, 33.462852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067096, -0.595893, -0.800256,
		0.802113, -0.509228, 0.311934,
		-0.593392, -0.620966, 0.512140,
		28.125336, 30.207993, 33.616493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824640, 29.968729, 33.219379>,  <28.540709, 30.642670, 33.257996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824640, 29.968729, 33.219379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434006, 29.928774, 33.295593>,  <28.199625, 29.904800, 33.341320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434006, 29.928774, 33.295593>,  <28.824640, 29.968729, 33.219379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434006, 29.928774, 33.295593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052706, -0.747592, -0.662063,
		0.208575, -0.656604, 0.724823,
		-0.976585, -0.099887, 0.190536,
		28.141029, 29.898808, 33.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749947, 29.293945, 33.204128>,  <28.824640, 29.968729, 33.219379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749947, 29.293945, 33.204128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381651, 29.441397, 33.152973>,  <28.160673, 29.529867, 33.122280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381651, 29.441397, 33.152973>,  <28.749947, 29.293945, 33.204128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381651, 29.441397, 33.152973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161562, -0.658539, -0.735000,
		-0.355160, -0.656080, 0.665898,
		-0.920738, 0.368626, -0.127889,
		28.105429, 29.551985, 33.114605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319672, 28.738527, 33.167770>,  <28.749947, 29.293945, 33.204128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319672, 28.738527, 33.167770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100994, 29.033131, 33.008434>,  <27.969788, 29.209892, 32.912830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100994, 29.033131, 33.008434>,  <28.319672, 28.738527, 33.167770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100994, 29.033131, 33.008434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244061, -0.595234, -0.765592,
		-0.800975, -0.321323, 0.505164,
		-0.546694, 0.736510, -0.398345,
		27.936985, 29.254084, 32.888931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655943, 28.469814, 32.945683>,  <28.319672, 28.738527, 33.167770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655943, 28.469814, 32.945683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685869, 28.801071, 32.723480>,  <27.703825, 28.999825, 32.590160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685869, 28.801071, 32.723480>,  <27.655943, 28.469814, 32.945683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685869, 28.801071, 32.723480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178881, -0.536882, -0.824475,
		-0.981022, 0.161052, 0.107972,
		0.074815, 0.828143, -0.555502,
		27.708313, 29.049515, 32.556831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089462, 28.374716, 32.426502>,  <27.655943, 28.469814, 32.945683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089462, 28.374716, 32.426502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333330, 28.660404, 32.288986>,  <27.479650, 28.831818, 32.206474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.333330, 28.660404, 32.288986>,  <27.089462, 28.374716, 32.426502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333330, 28.660404, 32.288986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025182, -0.416050, -0.908993,
		-0.792257, 0.562841, -0.235667,
		0.609668, 0.714222, -0.343792,
		27.516230, 28.874670, 32.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862410, 28.489393, 31.770899>,  <27.089462, 28.374716, 32.426502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862410, 28.489393, 31.770899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236452, 28.631050, 31.765781>,  <27.460876, 28.716043, 31.762711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.236452, 28.631050, 31.765781>,  <26.862410, 28.489393, 31.770899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236452, 28.631050, 31.765781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140493, -0.403633, -0.904070,
		-0.325332, 0.843603, -0.427193,
		0.935105, 0.354140, -0.012794,
		27.516983, 28.737291, 31.761944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933107, 28.757074, 30.993141>,  <26.862410, 28.489393, 31.770899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933107, 28.757074, 30.993141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296396, 28.693920, 31.148165>,  <27.514370, 28.656027, 31.241179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296396, 28.693920, 31.148165>,  <26.933107, 28.757074, 30.993141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296396, 28.693920, 31.148165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368612, -0.136647, -0.919485,
		0.198133, 0.977957, -0.065907,
		0.908223, -0.157886, 0.387561,
		27.568863, 28.646555, 31.264433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410463, 29.162344, 30.590885>,  <26.933107, 28.757074, 30.993141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410463, 29.162344, 30.590885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631006, 28.869425, 30.750757>,  <27.763332, 28.693674, 30.846682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631006, 28.869425, 30.750757>,  <27.410463, 29.162344, 30.590885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631006, 28.869425, 30.750757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114364, -0.408215, -0.905694,
		0.826393, 0.545070, -0.141324,
		0.551357, -0.732297, 0.399683,
		27.796413, 28.649736, 30.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.767815, 35.831387, 47.530830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.461960, 35.573708, 47.523415>,  <39.278446, 35.419102, 47.518963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.461960, 35.573708, 47.523415>,  <39.767815, 35.831387, 47.530830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461960, 35.573708, 47.523415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172575, 0.176950, 0.968972,
		-0.620925, 0.744112, -0.246474,
		-0.764637, -0.644194, -0.018542,
		39.232567, 35.380451, 47.517853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213226, 36.229664, 47.768410>,  <39.767815, 35.831387, 47.530830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213226, 36.229664, 47.768410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.096420, 35.852375, 47.831722>,  <39.026337, 35.625999, 47.869709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.096420, 35.852375, 47.831722>,  <39.213226, 36.229664, 47.768410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096420, 35.852375, 47.831722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434604, 0.278290, 0.856548,
		-0.851966, 0.181336, -0.491194,
		-0.292018, -0.943225, 0.158284,
		39.008816, 35.569408, 47.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480526, 36.238750, 48.045010>,  <39.213226, 36.229664, 47.768410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480526, 36.238750, 48.045010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614655, 35.872993, 48.135735>,  <38.695133, 35.653538, 48.190170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614655, 35.872993, 48.135735>,  <38.480526, 36.238750, 48.045010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614655, 35.872993, 48.135735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407912, 0.076096, 0.909845,
		-0.849215, -0.397613, -0.347475,
		0.335325, -0.914393, 0.226813,
		38.715252, 35.598675, 48.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889889, 35.928844, 48.301273>,  <38.480526, 36.238750, 48.045010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889889, 35.928844, 48.301273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196259, 35.722710, 48.455044>,  <38.380081, 35.599030, 48.547306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.196259, 35.722710, 48.455044>,  <37.889889, 35.928844, 48.301273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196259, 35.722710, 48.455044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242703, 0.321933, 0.915125,
		-0.595359, -0.794219, 0.121502,
		0.765926, -0.515339, 0.384426,
		38.426037, 35.568108, 48.570370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620930, 35.674828, 48.925377>,  <37.889889, 35.928844, 48.301273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620930, 35.674828, 48.925377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018959, 35.675537, 48.965038>,  <38.257774, 35.675961, 48.988834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018959, 35.675537, 48.965038>,  <37.620930, 35.674828, 48.925377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018959, 35.675537, 48.965038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096763, 0.236333, 0.966842,
		-0.021722, -0.971670, 0.235340,
		0.995071, 0.001770, 0.099155,
		38.317482, 35.676067, 48.994785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832962, 35.118614, 49.422661>,  <37.620930, 35.674828, 48.925377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832962, 35.118614, 49.422661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168831, 35.335667, 49.413692>,  <38.370354, 35.465897, 49.408310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.168831, 35.335667, 49.413692>,  <37.832962, 35.118614, 49.422661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168831, 35.335667, 49.413692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134245, -0.167367, 0.976712,
		0.526241, -0.823128, -0.213379,
		0.839671, 0.542631, -0.022425,
		38.420731, 35.498455, 49.406963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233234, 34.759430, 49.909012>,  <37.832962, 35.118614, 49.422661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233234, 34.759430, 49.909012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397610, 35.119297, 49.850048>,  <38.496235, 35.335217, 49.814671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.397610, 35.119297, 49.850048>,  <38.233234, 34.759430, 49.909012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397610, 35.119297, 49.850048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232731, 0.052813, 0.971106,
		0.881459, -0.433368, -0.187678,
		0.410934, 0.899669, -0.147410,
		38.520889, 35.389198, 49.805824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928890, 34.755699, 50.223709>,  <38.233234, 34.759430, 49.909012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928890, 34.755699, 50.223709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840340, 35.145473, 50.208439>,  <38.787209, 35.379337, 50.199276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.840340, 35.145473, 50.208439>,  <38.928890, 34.755699, 50.223709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840340, 35.145473, 50.208439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248084, 0.094135, 0.964154,
		0.943105, 0.203972, -0.262582,
		-0.221378, 0.974440, -0.038177,
		38.773926, 35.437805, 50.196987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396370, 35.059845, 50.647747>,  <38.928890, 34.755699, 50.223709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396370, 35.059845, 50.647747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134792, 35.361839, 50.628319>,  <38.977848, 35.543037, 50.616661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.134792, 35.361839, 50.628319>,  <39.396370, 35.059845, 50.647747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134792, 35.361839, 50.628319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076069, 0.129486, 0.988659,
		0.752712, 0.642830, -0.142107,
		-0.653941, 0.754986, -0.048566,
		38.938610, 35.588333, 50.613750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762844, 35.584976, 51.056309>,  <39.396370, 35.059845, 50.647747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762844, 35.584976, 51.056309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365398, 35.622902, 51.031872>,  <39.126930, 35.645657, 51.017208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365398, 35.622902, 51.031872>,  <39.762844, 35.584976, 51.056309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365398, 35.622902, 51.031872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037303, 0.234936, 0.971295,
		0.106444, 0.967376, -0.229900,
		-0.993619, 0.094813, -0.061094,
		39.067314, 35.651344, 51.013542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719608, 36.121578, 51.493870>,  <39.762844, 35.584976, 51.056309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719608, 36.121578, 51.493870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359875, 35.950336, 51.458260>,  <39.144035, 35.847591, 51.436893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359875, 35.950336, 51.458260>,  <39.719608, 36.121578, 51.493870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359875, 35.950336, 51.458260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145018, 0.099929, 0.984370,
		-0.412519, 0.898186, -0.151952,
		-0.899332, -0.428107, -0.089030,
		39.090076, 35.821903, 51.431549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357994, 36.358475, 52.102409>,  <39.719608, 36.121578, 51.493870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357994, 36.358475, 52.102409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117664, 36.065491, 51.974342>,  <38.973465, 35.889698, 51.897503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117664, 36.065491, 51.974342>,  <39.357994, 36.358475, 52.102409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117664, 36.065491, 51.974342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382900, -0.087878, 0.919601,
		-0.701709, 0.675111, -0.227661,
		-0.600826, -0.732463, -0.320165,
		38.937416, 35.845753, 51.878292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746151, 36.586025, 52.459431>,  <39.357994, 36.358475, 52.102409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746151, 36.586025, 52.459431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807568, 36.201778, 52.366783>,  <38.844418, 35.971230, 52.311195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807568, 36.201778, 52.366783>,  <38.746151, 36.586025, 52.459431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807568, 36.201778, 52.366783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281337, -0.267195, 0.921660,
		-0.947245, -0.076352, -0.311282,
		0.153544, -0.960613, -0.231619,
		38.853630, 35.913593, 52.297298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136368, 36.182465, 52.286304>,  <38.746151, 36.586025, 52.459431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136368, 36.182465, 52.286304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418121, 35.968475, 52.472916>,  <38.587173, 35.840080, 52.584881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418121, 35.968475, 52.472916>,  <38.136368, 36.182465, 52.286304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418121, 35.968475, 52.472916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521859, 0.055218, 0.851243,
		-0.481157, -0.843060, -0.240288,
		0.704380, -0.534978, 0.466527,
		38.629436, 35.807983, 52.612873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659718, 36.635120, 52.070946>,  <38.136368, 36.182465, 52.286304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659718, 36.635120, 52.070946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291332, 36.680058, 52.220188>,  <37.070301, 36.707020, 52.309734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291332, 36.680058, 52.220188>,  <37.659718, 36.635120, 52.070946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291332, 36.680058, 52.220188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379252, -0.038702, -0.924484,
		-0.089423, -0.992915, 0.078251,
		-0.920962, 0.112347, 0.373104,
		37.015045, 36.713760, 52.332119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250378, 36.312107, 51.704254>,  <37.659718, 36.635120, 52.070946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250378, 36.312107, 51.704254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985397, 36.556969, 51.876961>,  <36.826408, 36.703888, 51.980587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.985397, 36.556969, 51.876961>,  <37.250378, 36.312107, 51.704254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985397, 36.556969, 51.876961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491062, 0.080401, -0.867406,
		-0.565706, -0.786636, 0.247347,
		-0.662446, 0.612159, 0.431771,
		36.786663, 36.740616, 52.006493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562595, 36.091660, 51.470871>,  <37.250378, 36.312107, 51.704254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562595, 36.091660, 51.470871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499161, 36.463634, 51.603577>,  <36.461098, 36.686817, 51.683201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499161, 36.463634, 51.603577>,  <36.562595, 36.091660, 51.470871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499161, 36.463634, 51.603577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587900, 0.181019, -0.788420,
		-0.793235, -0.320082, 0.518001,
		-0.158591, 0.929935, 0.331767,
		36.451584, 36.742615, 51.703106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843651, 36.174534, 51.415104>,  <36.562595, 36.091660, 51.470871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843651, 36.174534, 51.415104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010311, 36.538105, 51.408806>,  <36.110310, 36.756248, 51.405025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010311, 36.538105, 51.408806>,  <35.843651, 36.174534, 51.415104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010311, 36.538105, 51.408806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467086, 0.199190, -0.861484,
		-0.779890, 0.366296, 0.507542,
		0.416655, 0.908928, -0.015745,
		36.135307, 36.810783, 51.404083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463455, 36.565239, 50.896282>,  <35.843651, 36.174534, 51.415104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463455, 36.565239, 50.896282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772663, 36.813995, 50.946396>,  <35.958187, 36.963249, 50.976463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772663, 36.813995, 50.946396>,  <35.463455, 36.565239, 50.896282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772663, 36.813995, 50.946396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008776, 0.186984, -0.982324,
		-0.634320, 0.760456, 0.139085,
		0.773021, 0.621887, 0.125281,
		36.004570, 37.000561, 50.983978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270290, 37.272835, 50.580677>,  <35.463455, 36.565239, 50.896282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270290, 37.272835, 50.580677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666393, 37.221470, 50.602211>,  <35.904057, 37.190651, 50.615131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666393, 37.221470, 50.602211>,  <35.270290, 37.272835, 50.580677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666393, 37.221470, 50.602211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077206, 0.184606, -0.979775,
		0.115874, 0.974388, 0.192721,
		0.990259, -0.128409, 0.053838,
		35.963470, 37.182945, 50.618362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602291, 37.789806, 50.158714>,  <35.270290, 37.272835, 50.580677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602291, 37.789806, 50.158714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911045, 37.538525, 50.197800>,  <36.096298, 37.387756, 50.221249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911045, 37.538525, 50.197800>,  <35.602291, 37.789806, 50.158714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911045, 37.538525, 50.197800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271710, 0.187023, -0.944032,
		0.574771, 0.755236, 0.315050,
		0.771889, -0.628204, 0.097710,
		36.142612, 37.350063, 50.227112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219913, 38.129307, 49.812809>,  <35.602291, 37.789806, 50.158714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219913, 38.129307, 49.812809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344746, 37.749840, 49.833309>,  <36.419647, 37.522160, 49.845608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344746, 37.749840, 49.833309>,  <36.219913, 38.129307, 49.812809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344746, 37.749840, 49.833309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501704, 0.118754, -0.856850,
		0.806782, 0.293121, 0.513013,
		0.312083, -0.948672, 0.051251,
		36.438370, 37.465237, 49.848686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931690, 38.171471, 49.660774>,  <36.219913, 38.129307, 49.812809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931690, 38.171471, 49.660774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760612, 37.817101, 49.588974>,  <36.657967, 37.604481, 49.545895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760612, 37.817101, 49.588974>,  <36.931690, 38.171471, 49.660774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760612, 37.817101, 49.588974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387718, -0.000412, -0.921778,
		0.816549, -0.463835, 0.343664,
		-0.427695, -0.885921, -0.179501,
		36.632305, 37.551323, 49.535122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498394, 37.792831, 49.393974>,  <36.931690, 38.171471, 49.660774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498394, 37.792831, 49.393974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156891, 37.615242, 49.285179>,  <36.951988, 37.508686, 49.219902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.156891, 37.615242, 49.285179>,  <37.498394, 37.792831, 49.393974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156891, 37.615242, 49.285179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412658, -0.258443, -0.873454,
		0.317500, -0.857958, 0.403859,
		-0.853761, -0.443977, -0.271988,
		36.900764, 37.482048, 49.203583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785671, 37.316723, 48.802956>,  <37.498394, 37.792831, 49.393974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785671, 37.316723, 48.802956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389881, 37.352161, 48.757183>,  <37.152409, 37.373425, 48.729721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389881, 37.352161, 48.757183>,  <37.785671, 37.316723, 48.802956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389881, 37.352161, 48.757183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093180, -0.214981, -0.972163,
		-0.110727, -0.972591, 0.204463,
		-0.989473, 0.088593, -0.114431,
		37.093040, 37.378738, 48.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671665, 36.793541, 48.315449>,  <37.785671, 37.316723, 48.802956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671665, 36.793541, 48.315449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341114, 37.018566, 48.305382>,  <37.142784, 37.153580, 48.299339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341114, 37.018566, 48.305382>,  <37.671665, 36.793541, 48.315449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341114, 37.018566, 48.305382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028701, -0.002562, -0.999585,
		-0.562390, -0.826753, -0.014028,
		-0.826374, 0.562559, -0.025169,
		37.093201, 37.187332, 48.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332287, 36.506870, 47.851597>,  <37.671665, 36.793541, 48.315449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332287, 36.506870, 47.851597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174091, 36.872192, 47.890491>,  <37.079174, 37.091385, 47.913830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174091, 36.872192, 47.890491>,  <37.332287, 36.506870, 47.851597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174091, 36.872192, 47.890491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063677, 0.078348, -0.994891,
		-0.916261, -0.399659, 0.027171,
		-0.395488, 0.913310, 0.097236,
		37.055447, 37.146187, 47.919662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728867, 36.482601, 47.352768>,  <37.332287, 36.506870, 47.851597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728867, 36.482601, 47.352768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811302, 36.868408, 47.418777>,  <36.860764, 37.099892, 47.458382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811302, 36.868408, 47.418777>,  <36.728867, 36.482601, 47.352768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811302, 36.868408, 47.418777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108940, 0.144979, -0.983419,
		-0.972450, 0.220651, -0.075195,
		0.206090, 0.964518, 0.165023,
		36.873131, 37.157764, 47.468285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970116, 36.357193, 47.484612>,  <36.728867, 36.482601, 47.352768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970116, 36.357193, 47.484612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723789, 36.098827, 47.304134>,  <35.575993, 35.943810, 47.195850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723789, 36.098827, 47.304134>,  <35.970116, 36.357193, 47.484612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723789, 36.098827, 47.304134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441734, -0.191147, 0.876547,
		-0.652414, 0.739096, -0.167609,
		-0.615814, -0.645910, -0.451191,
		35.539043, 35.905056, 47.168777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291531, 36.502876, 47.699066>,  <35.970116, 36.357193, 47.484612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291531, 36.502876, 47.699066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281063, 36.128086, 47.559704>,  <35.274780, 35.903210, 47.476086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281063, 36.128086, 47.559704>,  <35.291531, 36.502876, 47.699066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281063, 36.128086, 47.559704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327981, -0.321184, 0.888408,
		-0.944322, 0.137521, -0.298906,
		-0.026171, -0.936979, -0.348406,
		35.273212, 35.846992, 47.455181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642551, 36.182449, 47.965073>,  <35.291531, 36.502876, 47.699066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642551, 36.182449, 47.965073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864727, 35.860619, 47.881023>,  <34.998032, 35.667522, 47.830593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864727, 35.860619, 47.881023>,  <34.642551, 36.182449, 47.965073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864727, 35.860619, 47.881023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129429, -0.333252, 0.933912,
		-0.821426, -0.491531, -0.289235,
		0.555435, -0.804574, -0.210124,
		35.031357, 35.619247, 47.817986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244686, 35.602432, 48.140644>,  <34.642551, 36.182449, 47.965073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244686, 35.602432, 48.140644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614758, 35.450756, 48.147087>,  <34.836800, 35.359749, 48.150955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614758, 35.450756, 48.147087>,  <34.244686, 35.602432, 48.140644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614758, 35.450756, 48.147087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188870, -0.423166, 0.886148,
		-0.329203, -0.822887, -0.463122,
		0.925178, -0.379192, 0.016111,
		34.892311, 35.336998, 48.151920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139458, 34.992065, 48.486427>,  <34.244686, 35.602432, 48.140644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139458, 34.992065, 48.486427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532864, 35.063263, 48.499191>,  <34.768906, 35.105980, 48.506851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532864, 35.063263, 48.499191>,  <34.139458, 34.992065, 48.486427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532864, 35.063263, 48.499191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051096, -0.442831, 0.895148,
		0.173464, -0.878759, -0.444626,
		0.983514, 0.177995, 0.031914,
		34.827919, 35.116661, 48.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509216, 34.228340, 48.504753>,  <34.139458, 34.992065, 48.486427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509216, 34.228340, 48.504753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728325, 34.529491, 48.650700>,  <34.859791, 34.710182, 48.738266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728325, 34.529491, 48.650700>,  <34.509216, 34.228340, 48.504753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728325, 34.529491, 48.650700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018709, -0.424979, 0.905010,
		0.836420, -0.502564, -0.218705,
		0.547771, 0.752876, 0.364863,
		34.892654, 34.755356, 48.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087082, 33.895821, 48.988499>,  <34.509216, 34.228340, 48.504753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087082, 33.895821, 48.988499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024860, 34.280273, 49.079735>,  <34.987530, 34.510944, 49.134476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024860, 34.280273, 49.079735>,  <35.087082, 33.895821, 48.988499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024860, 34.280273, 49.079735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124442, -0.248124, 0.960702,
		0.979958, 0.121053, 0.158201,
		-0.155550, 0.961135, 0.228087,
		34.978195, 34.568615, 49.148159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764610, 33.860657, 49.181087>,  <35.087082, 33.895821, 48.988499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764610, 33.860657, 49.181087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612759, 33.491074, 49.162422>,  <35.521648, 33.269321, 49.151222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612759, 33.491074, 49.162422>,  <35.764610, 33.860657, 49.181087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612759, 33.491074, 49.162422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341440, -0.093053, -0.935286,
		0.859826, -0.370995, 0.350803,
		-0.379630, -0.923961, -0.046663,
		35.498871, 33.213886, 49.148422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248711, 33.373554, 48.850189>,  <35.764610, 33.860657, 49.181087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248711, 33.373554, 48.850189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877602, 33.231441, 48.804569>,  <35.654934, 33.146175, 48.777199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877602, 33.231441, 48.804569>,  <36.248711, 33.373554, 48.850189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877602, 33.231441, 48.804569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213467, -0.254673, -0.943172,
		0.306047, -0.899398, 0.312121,
		-0.927775, -0.355282, -0.114050,
		35.599270, 33.124859, 48.770355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223843, 32.669716, 48.608307>,  <36.248711, 33.373554, 48.850189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223843, 32.669716, 48.608307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869232, 32.825512, 48.508408>,  <35.656467, 32.918987, 48.448467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869232, 32.825512, 48.508408>,  <36.223843, 32.669716, 48.608307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869232, 32.825512, 48.508408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064281, -0.430860, -0.900126,
		-0.458194, -0.814038, 0.356931,
		-0.886525, 0.389489, -0.249745,
		35.603275, 32.942356, 48.433483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026993, 32.104858, 48.033882>,  <36.223843, 32.669716, 48.608307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026993, 32.104858, 48.033882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745483, 32.387928, 48.008919>,  <35.576576, 32.557770, 47.993942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745483, 32.387928, 48.008919>,  <36.026993, 32.104858, 48.033882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745483, 32.387928, 48.008919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229821, -0.309914, -0.922570,
		-0.672224, -0.634938, 0.380749,
		-0.703774, 0.707677, -0.062410,
		35.534351, 32.600231, 47.990196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416634, 31.797131, 47.710312>,  <36.026993, 32.104858, 48.033882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416634, 31.797131, 47.710312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373493, 32.191162, 47.656670>,  <35.347610, 32.427582, 47.624485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373493, 32.191162, 47.656670>,  <35.416634, 31.797131, 47.710312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373493, 32.191162, 47.656670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441359, -0.168312, -0.881404,
		-0.890826, -0.035873, 0.452927,
		-0.107852, 0.985081, -0.134104,
		35.341137, 32.486687, 47.616440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770191, 31.834698, 47.470573>,  <35.416634, 31.797131, 47.710312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770191, 31.834698, 47.470573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926044, 32.183807, 47.352962>,  <35.019558, 32.393272, 47.282398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926044, 32.183807, 47.352962>,  <34.770191, 31.834698, 47.470573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926044, 32.183807, 47.352962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507992, -0.062625, -0.859082,
		-0.768197, 0.484092, 0.418961,
		0.389637, 0.872773, -0.294023,
		35.042934, 32.445641, 47.264755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210106, 32.348969, 47.332336>,  <34.770191, 31.834698, 47.470573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210106, 32.348969, 47.332336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522282, 32.434952, 47.097488>,  <34.709587, 32.486542, 46.956577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522282, 32.434952, 47.097488>,  <34.210106, 32.348969, 47.332336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522282, 32.434952, 47.097488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616259, 0.105897, -0.780392,
		-0.105575, 0.970865, 0.215113,
		0.780435, 0.214955, -0.587124,
		34.756413, 32.499439, 46.921352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.104424, 32.631458, 51.469353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.179630, 33.020382, 51.413822>,  <38.224754, 33.253735, 51.380505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.179630, 33.020382, 51.413822>,  <38.104424, 32.631458, 51.469353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179630, 33.020382, 51.413822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601445, -0.225723, -0.766364,
		-0.776475, 0.060596, -0.627228,
		0.188018, 0.972305, -0.138823,
		38.236034, 33.312073, 51.372173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842762, 32.835590, 50.862991>,  <38.104424, 32.631458, 51.469353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842762, 32.835590, 50.862991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136021, 33.099945, 50.927151>,  <38.311974, 33.258556, 50.965645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136021, 33.099945, 50.927151>,  <37.842762, 32.835590, 50.862991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136021, 33.099945, 50.927151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402250, -0.231230, -0.885849,
		-0.548357, 0.713975, -0.435366,
		0.733144, 0.660887, 0.160400,
		38.355965, 33.298210, 50.975269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787857, 33.350605, 50.349098>,  <37.842762, 32.835590, 50.862991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787857, 33.350605, 50.349098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.164341, 33.338066, 50.483646>,  <38.390232, 33.330544, 50.564377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.164341, 33.338066, 50.483646>,  <37.787857, 33.350605, 50.349098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164341, 33.338066, 50.483646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311273, -0.306497, -0.899538,
		0.131294, 0.951355, -0.278721,
		0.941207, -0.031345, 0.336372,
		38.446705, 33.328663, 50.584557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203346, 33.672161, 49.792873>,  <37.787857, 33.350605, 50.349098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203346, 33.672161, 49.792873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.467400, 33.465122, 50.010612>,  <38.625832, 33.340897, 50.141258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.467400, 33.465122, 50.010612>,  <38.203346, 33.672161, 49.792873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467400, 33.465122, 50.010612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485145, -0.259468, -0.835052,
		0.573465, 0.815331, 0.079829,
		0.660131, -0.517601, 0.544349,
		38.665440, 33.309841, 50.173916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825893, 33.823425, 49.488338>,  <38.203346, 33.672161, 49.792873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825893, 33.823425, 49.488338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.891220, 33.480827, 49.684193>,  <38.930416, 33.275269, 49.801704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.891220, 33.480827, 49.684193>,  <38.825893, 33.823425, 49.488338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891220, 33.480827, 49.684193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374966, -0.405170, -0.833809,
		0.912540, 0.319768, 0.254988,
		0.163312, -0.856496, 0.489636,
		38.940212, 33.223877, 49.831085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586723, 33.626514, 49.344406>,  <38.825893, 33.823425, 49.488338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586723, 33.626514, 49.344406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.371552, 33.301292, 49.433464>,  <39.242447, 33.106159, 49.486900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.371552, 33.301292, 49.433464>,  <39.586723, 33.626514, 49.344406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371552, 33.301292, 49.433464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178565, -0.368023, -0.912509,
		0.823858, -0.451112, 0.343155,
		-0.537933, -0.813054, 0.222646,
		39.210171, 33.057377, 49.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915085, 32.959232, 49.066666>,  <39.586723, 33.626514, 49.344406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915085, 32.959232, 49.066666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.533169, 32.851677, 49.117374>,  <39.304020, 32.787144, 49.147800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.533169, 32.851677, 49.117374>,  <39.915085, 32.959232, 49.066666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533169, 32.851677, 49.117374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020554, -0.485124, -0.874204,
		0.296565, -0.832076, 0.468719,
		-0.954791, -0.268892, 0.126769,
		39.246731, 32.771008, 49.155407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954617, 32.381947, 48.843857>,  <39.915085, 32.959232, 49.066666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954617, 32.381947, 48.843857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.557255, 32.413078, 48.877552>,  <39.318840, 32.431755, 48.897770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.557255, 32.413078, 48.877552>,  <39.954617, 32.381947, 48.843857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557255, 32.413078, 48.877552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097313, -0.183261, -0.978236,
		-0.060691, -0.979979, 0.189625,
		-0.993401, 0.077824, 0.084243,
		39.259235, 32.436424, 48.902824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740669, 31.966738, 48.398827>,  <39.954617, 32.381947, 48.843857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740669, 31.966738, 48.398827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378925, 32.130783, 48.446064>,  <39.161880, 32.229210, 48.474407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378925, 32.130783, 48.446064>,  <39.740669, 31.966738, 48.398827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378925, 32.130783, 48.446064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205944, -0.177010, -0.962421,
		-0.373801, -0.894691, 0.244541,
		-0.904356, 0.410116, 0.118090,
		39.107616, 32.253819, 48.481491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328007, 31.482430, 48.172886>,  <39.740669, 31.966738, 48.398827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328007, 31.482430, 48.172886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.141907, 31.834906, 48.139317>,  <39.030247, 32.046391, 48.119175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.141907, 31.834906, 48.139317>,  <39.328007, 31.482430, 48.172886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141907, 31.834906, 48.139317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156197, -0.175053, -0.972090,
		-0.871290, -0.439154, 0.219083,
		-0.465249, 0.881192, -0.083928,
		39.002331, 32.099262, 48.114140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854198, 31.388369, 47.715050>,  <39.328007, 31.482430, 48.172886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854198, 31.388369, 47.715050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.834488, 31.786882, 47.686806>,  <38.822662, 32.025990, 47.669857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.834488, 31.786882, 47.686806>,  <38.854198, 31.388369, 47.715050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834488, 31.786882, 47.686806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131615, -0.076560, -0.988340,
		-0.990076, -0.039404, 0.134898,
		-0.049273, 0.996286, -0.070614,
		38.819706, 32.085770, 47.665623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334526, 31.564772, 47.250629>,  <38.854198, 31.388369, 47.715050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334526, 31.564772, 47.250629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592030, 31.870855, 47.248566>,  <38.746532, 32.054504, 47.247330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.592030, 31.870855, 47.248566>,  <38.334526, 31.564772, 47.250629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592030, 31.870855, 47.248566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000257, -0.006520, -0.999979,
		-0.765227, 0.643748, -0.004000,
		0.643760, 0.765210, -0.005155,
		38.785156, 32.100418, 47.247021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572010, 31.338778, 47.087978>,  <38.334526, 31.564772, 47.250629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572010, 31.338778, 47.087978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521767, 30.943581, 47.051998>,  <37.491623, 30.706463, 47.030411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.521767, 30.943581, 47.051998>,  <37.572010, 31.338778, 47.087978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521767, 30.943581, 47.051998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362724, -0.038656, 0.931094,
		-0.923393, 0.149579, -0.353513,
		-0.125607, -0.987994, -0.089950,
		37.484085, 30.647182, 47.025013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874187, 31.134140, 47.254807>,  <37.572010, 31.338778, 47.087978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874187, 31.134140, 47.254807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.106697, 30.818106, 47.332661>,  <37.246204, 30.628485, 47.379372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.106697, 30.818106, 47.332661>,  <36.874187, 31.134140, 47.254807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106697, 30.818106, 47.332661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509476, -0.166874, 0.844149,
		-0.634473, -0.589843, -0.499530,
		0.581273, -0.790088, 0.194634,
		37.281078, 30.581079, 47.391052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492477, 30.620388, 47.430355>,  <36.874187, 31.134140, 47.254807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492477, 30.620388, 47.430355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.828178, 30.501879, 47.612728>,  <37.029598, 30.430773, 47.722153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.828178, 30.501879, 47.612728>,  <36.492477, 30.620388, 47.430355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828178, 30.501879, 47.612728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535603, -0.305925, 0.787108,
		-0.093716, -0.904783, -0.415433,
		0.839254, -0.296272, 0.455935,
		37.079956, 30.412996, 47.749508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344940, 30.045811, 47.744957>,  <36.492477, 30.620388, 47.430355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344940, 30.045811, 47.744957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.668541, 30.168705, 47.945404>,  <36.862701, 30.242441, 48.065674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.668541, 30.168705, 47.945404>,  <36.344940, 30.045811, 47.744957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668541, 30.168705, 47.945404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426375, -0.280114, 0.860081,
		0.404618, -0.909473, -0.095616,
		0.809004, 0.307236, 0.501116,
		36.911243, 30.260876, 48.095737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248089, 29.657619, 48.405567>,  <36.344940, 30.045811, 47.744957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248089, 29.657619, 48.405567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532433, 29.928869, 48.480221>,  <36.703037, 30.091619, 48.525013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532433, 29.928869, 48.480221>,  <36.248089, 29.657619, 48.405567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532433, 29.928869, 48.480221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322985, 0.079013, 0.943100,
		0.624793, -0.730687, 0.275191,
		0.710855, 0.678125, 0.186634,
		36.745689, 30.132307, 48.536209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499710, 29.492817, 49.128315>,  <36.248089, 29.657619, 48.405567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499710, 29.492817, 49.128315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614414, 29.863527, 49.031277>,  <36.683235, 30.085955, 48.973053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614414, 29.863527, 49.031277>,  <36.499710, 29.492817, 49.128315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614414, 29.863527, 49.031277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161210, 0.296300, 0.941391,
		0.944341, -0.230846, 0.234373,
		0.286761, 0.926778, -0.242594,
		36.700443, 30.141560, 48.958500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988850, 29.610806, 49.557468>,  <36.499710, 29.492817, 49.128315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988850, 29.610806, 49.557468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842793, 29.962147, 49.434071>,  <36.755157, 30.172951, 49.360031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.842793, 29.962147, 49.434071>,  <36.988850, 29.610806, 49.557468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842793, 29.962147, 49.434071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175328, 0.260558, 0.949405,
		0.914291, 0.400759, 0.058857,
		-0.365146, 0.878352, -0.308490,
		36.733250, 30.225653, 49.341522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569267, 30.096388, 49.783066>,  <36.988850, 29.610806, 49.557468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569267, 30.096388, 49.783066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.228863, 30.297676, 49.723000>,  <37.024620, 30.418449, 49.686958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.228863, 30.297676, 49.723000>,  <37.569267, 30.096388, 49.783066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228863, 30.297676, 49.723000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045617, 0.214039, 0.975759,
		0.523162, 0.837233, -0.159194,
		-0.851011, 0.503218, -0.150169,
		36.973560, 30.448641, 49.677948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702301, 30.772360, 50.038563>,  <37.569267, 30.096388, 49.783066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702301, 30.772360, 50.038563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304939, 30.726618, 50.035320>,  <37.066521, 30.699173, 50.033375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304939, 30.726618, 50.035320>,  <37.702301, 30.772360, 50.038563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304939, 30.726618, 50.035320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061179, 0.469039, 0.881056,
		-0.096954, 0.875743, -0.472943,
		-0.993407, -0.114356, -0.008102,
		37.006916, 30.692310, 50.032890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520611, 31.368526, 50.399414>,  <37.702301, 30.772360, 50.038563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520611, 31.368526, 50.399414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.190990, 31.143559, 50.372200>,  <36.993217, 31.008577, 50.355873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.190990, 31.143559, 50.372200>,  <37.520611, 31.368526, 50.399414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190990, 31.143559, 50.372200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367043, 0.438551, 0.820337,
		-0.431540, 0.700967, -0.567819,
		-0.824047, -0.562422, -0.068032,
		36.943775, 30.974833, 50.351791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951725, 31.773443, 50.575180>,  <37.520611, 31.368526, 50.399414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951725, 31.773443, 50.575180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.852619, 31.392485, 50.646233>,  <36.793156, 31.163910, 50.688866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.852619, 31.392485, 50.646233>,  <36.951725, 31.773443, 50.575180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852619, 31.392485, 50.646233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332342, 0.255775, 0.907815,
		-0.910035, 0.165887, -0.379893,
		-0.247762, -0.952398, 0.177633,
		36.778290, 31.106766, 50.699524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315155, 31.861280, 50.949009>,  <36.951725, 31.773443, 50.575180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315155, 31.861280, 50.949009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460354, 31.496225, 51.024193>,  <36.547474, 31.277193, 51.069302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.460354, 31.496225, 51.024193>,  <36.315155, 31.861280, 50.949009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460354, 31.496225, 51.024193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324214, 0.065403, 0.943720,
		-0.873566, -0.403506, -0.272148,
		0.362998, -0.912637, 0.187956,
		36.569252, 31.222435, 51.080578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803989, 31.488937, 51.339993>,  <36.315155, 31.861280, 50.949009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803989, 31.488937, 51.339993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136543, 31.286377, 51.431515>,  <36.336075, 31.164841, 51.486427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136543, 31.286377, 51.431515>,  <35.803989, 31.488937, 51.339993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136543, 31.286377, 51.431515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232030, 0.057782, 0.970991,
		-0.504930, -0.860361, -0.069461,
		0.831389, -0.506399, 0.228805,
		36.385960, 31.134457, 51.500156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571938, 31.111147, 51.863857>,  <35.803989, 31.488937, 51.339993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571938, 31.111147, 51.863857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968307, 31.163746, 51.874954>,  <36.206131, 31.195305, 51.881611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968307, 31.163746, 51.874954>,  <35.571938, 31.111147, 51.863857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968307, 31.163746, 51.874954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044568, 0.126788, 0.990928,
		0.126788, -0.983175, 0.131498,
		-0.990928, -0.131498, -0.027743,
		36.265587, 31.203196, 51.883278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801197, 31.173092, 51.895912>,  <35.571938, 31.111147, 51.863857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801197, 31.173092, 51.895912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471931, 31.372866, 51.787868>,  <34.274372, 31.492729, 51.723042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.471931, 31.372866, 51.787868>,  <34.801197, 31.173092, 51.895912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471931, 31.372866, 51.787868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430071, 0.237824, -0.870907,
		-0.370721, -0.833070, -0.410561,
		-0.823168, 0.499434, -0.270113,
		34.224979, 31.522696, 51.706833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732903, 31.076981, 51.169453>,  <34.801197, 31.173092, 51.895912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732903, 31.076981, 51.169453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473022, 31.379154, 51.203400>,  <34.317093, 31.560459, 51.223770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473022, 31.379154, 51.203400>,  <34.732903, 31.076981, 51.169453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473022, 31.379154, 51.203400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308124, 0.363757, -0.879057,
		-0.694941, -0.544977, -0.469102,
		-0.649705, 0.755434, 0.084870,
		34.278111, 31.605785, 51.228859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352829, 31.145460, 50.508125>,  <34.732903, 31.076981, 51.169453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352829, 31.145460, 50.508125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364746, 31.497755, 50.697193>,  <34.371899, 31.709133, 50.810635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364746, 31.497755, 50.697193>,  <34.352829, 31.145460, 50.508125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364746, 31.497755, 50.697193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244262, 0.452123, -0.857858,
		-0.969251, 0.141015, -0.201660,
		0.029796, 0.880738, 0.472665,
		34.373684, 31.761976, 50.838993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893909, 31.713707, 50.138718>,  <34.352829, 31.145460, 50.508125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893909, 31.713707, 50.138718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.176067, 31.912390, 50.340988>,  <34.345360, 32.031601, 50.462349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.176067, 31.912390, 50.340988>,  <33.893909, 31.713707, 50.138718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176067, 31.912390, 50.340988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391311, 0.321953, -0.862104,
		-0.591017, 0.805995, 0.032735,
		0.705390, 0.496708, 0.505674,
		34.387684, 32.061401, 50.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985157, 32.303802, 49.820934>,  <33.893909, 31.713707, 50.138718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985157, 32.303802, 49.820934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.329594, 32.340168, 50.021038>,  <34.536255, 32.361988, 50.141102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.329594, 32.340168, 50.021038>,  <33.985157, 32.303802, 49.820934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329594, 32.340168, 50.021038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441333, 0.354928, -0.824167,
		-0.252484, 0.930463, 0.265501,
		0.861090, 0.090915, 0.500258,
		34.587921, 32.367443, 50.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222939, 32.939919, 49.684509>,  <33.985157, 32.303802, 49.820934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222939, 32.939919, 49.684509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.560631, 32.765820, 49.809616>,  <34.763248, 32.661358, 49.884682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.560631, 32.765820, 49.809616>,  <34.222939, 32.939919, 49.684509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560631, 32.765820, 49.809616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525733, 0.558957, -0.641227,
		0.104270, 0.705779, 0.700717,
		0.844235, -0.435251, 0.312769,
		34.813900, 32.635242, 49.903446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674648, 33.605797, 49.744560>,  <34.222939, 32.939919, 49.684509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674648, 33.605797, 49.744560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874088, 33.259884, 49.720715>,  <34.993752, 33.052338, 49.706406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.874088, 33.259884, 49.720715>,  <34.674648, 33.605797, 49.744560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874088, 33.259884, 49.720715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545095, 0.366272, -0.754133,
		0.673993, 0.343517, 0.654011,
		0.498603, -0.864778, -0.059615,
		35.023670, 33.000450, 49.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412853, 33.709568, 49.907333>,  <34.674648, 33.605797, 49.744560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412853, 33.709568, 49.907333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347424, 33.395290, 49.668694>,  <35.308167, 33.206722, 49.525509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347424, 33.395290, 49.668694>,  <35.412853, 33.709568, 49.907333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347424, 33.395290, 49.668694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579599, 0.412829, -0.702594,
		0.798316, -0.460711, 0.387861,
		-0.163572, -0.785696, -0.596595,
		35.298351, 33.159580, 49.489716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552082, 34.413834, 50.190292>,  <35.412853, 33.709568, 49.907333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552082, 34.413834, 50.190292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.214779, 34.626095, 50.156063>,  <35.012398, 34.753452, 50.135525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.214779, 34.626095, 50.156063>,  <35.552082, 34.413834, 50.190292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214779, 34.626095, 50.156063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098819, 0.003431, 0.995099,
		0.528347, 0.847582, 0.049546,
		-0.843258, 0.530654, -0.085570,
		34.961800, 34.785290, 50.130394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549202, 34.875755, 50.756432>,  <35.552082, 34.413834, 50.190292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549202, 34.875755, 50.756432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.164631, 34.916069, 50.654060>,  <34.933887, 34.940258, 50.592636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.164631, 34.916069, 50.654060>,  <35.549202, 34.875755, 50.756432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164631, 34.916069, 50.654060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253024, 0.040850, 0.966597,
		0.107873, 0.994069, -0.013773,
		-0.961427, 0.100785, -0.255930,
		34.876202, 34.946304, 50.577282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213497, 35.574406, 51.050461>,  <35.549202, 34.875755, 50.756432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213497, 35.574406, 51.050461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935276, 35.292789, 50.993130>,  <34.768345, 35.123821, 50.958733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935276, 35.292789, 50.993130>,  <35.213497, 35.574406, 51.050461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935276, 35.292789, 50.993130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181859, -0.020473, 0.983112,
		-0.695083, 0.709867, -0.113795,
		-0.695549, -0.704038, -0.143326,
		34.726612, 35.081577, 50.950130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677048, 35.828911, 51.475811>,  <35.213497, 35.574406, 51.050461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677048, 35.828911, 51.475811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592800, 35.442894, 51.413422>,  <34.542252, 35.211285, 51.375988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.592800, 35.442894, 51.413422>,  <34.677048, 35.828911, 51.475811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592800, 35.442894, 51.413422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118670, -0.133133, 0.983968,
		-0.970338, 0.225753, -0.086482,
		-0.210620, -0.965045, -0.155974,
		34.529613, 35.153381, 51.366631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072197, 35.741673, 51.908741>,  <34.677048, 35.828911, 51.475811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072197, 35.741673, 51.908741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221970, 35.377480, 51.838512>,  <34.311832, 35.158962, 51.796375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.221970, 35.377480, 51.838512>,  <34.072197, 35.741673, 51.908741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221970, 35.377480, 51.838512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241182, -0.278457, 0.929674,
		-0.895339, -0.305755, -0.323855,
		0.374432, -0.910480, -0.175571,
		34.334301, 35.104336, 51.785843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494701, 35.252720, 52.038395>,  <34.072197, 35.741673, 51.908741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494701, 35.252720, 52.038395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833595, 35.043053, 52.072914>,  <34.036930, 34.917252, 52.093624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.833595, 35.043053, 52.072914>,  <33.494701, 35.252720, 52.038395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833595, 35.043053, 52.072914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249793, -0.249725, 0.935543,
		-0.468830, -0.814178, -0.342509,
		0.847232, -0.524167, 0.086297,
		34.087765, 34.885803, 52.098804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285202, 34.658718, 52.349102>,  <33.494701, 35.252720, 52.038395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285202, 34.658718, 52.349102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679260, 34.690037, 52.410248>,  <33.915695, 34.708828, 52.446934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679260, 34.690037, 52.410248>,  <33.285202, 34.658718, 52.349102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679260, 34.690037, 52.410248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132672, -0.218286, 0.966824,
		0.109065, -0.972739, -0.204655,
		0.985141, 0.078295, 0.152862,
		33.974804, 34.713524, 52.456108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468159, 34.033028, 52.682285>,  <33.285202, 34.658718, 52.349102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468159, 34.033028, 52.682285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756237, 34.296909, 52.768169>,  <33.929085, 34.455238, 52.819698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756237, 34.296909, 52.768169>,  <33.468159, 34.033028, 52.682285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756237, 34.296909, 52.768169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043018, -0.351354, 0.935254,
		0.692433, -0.664333, -0.281424,
		0.720199, 0.659706, 0.214711,
		33.972298, 34.494820, 52.832584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.780838, 35.746414, 36.802040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047241, 35.848740, 37.082325>,  <38.207085, 35.910133, 37.250496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047241, 35.848740, 37.082325>,  <37.780838, 35.746414, 36.802040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047241, 35.848740, 37.082325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654028, -0.251475, 0.713448,
		0.358722, -0.933445, -0.000174,
		0.666008, 0.255816, 0.700708,
		38.247044, 35.925484, 37.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967335, 35.241684, 37.356636>,  <37.780838, 35.746414, 36.802040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967335, 35.241684, 37.356636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029091, 35.605915, 37.510002>,  <38.066147, 35.824455, 37.602020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029091, 35.605915, 37.510002>,  <37.967335, 35.241684, 37.356636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029091, 35.605915, 37.510002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480195, -0.269993, 0.834576,
		0.863467, -0.312966, 0.395572,
		0.154392, 0.910580, 0.383414,
		38.075409, 35.879089, 37.625027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101795, 35.156342, 38.152306>,  <37.967335, 35.241684, 37.356636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101795, 35.156342, 38.152306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033684, 35.550262, 38.138630>,  <37.992817, 35.786613, 38.130424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033684, 35.550262, 38.138630>,  <38.101795, 35.156342, 38.152306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033684, 35.550262, 38.138630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271924, -0.013607, 0.962222,
		0.947134, 0.173142, 0.270108,
		-0.170276, 0.984803, -0.034194,
		37.982601, 35.845703, 38.128372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447422, 35.381832, 38.712559>,  <38.101795, 35.156342, 38.152306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447422, 35.381832, 38.712559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164104, 35.645313, 38.611023>,  <37.994114, 35.803402, 38.550102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164104, 35.645313, 38.611023>,  <38.447422, 35.381832, 38.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164104, 35.645313, 38.611023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362984, -0.031432, 0.931265,
		0.605448, 0.751746, 0.261362,
		-0.708290, 0.658703, -0.253841,
		37.951618, 35.842926, 38.534870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396755, 35.866783, 39.341988>,  <38.447422, 35.381832, 38.712559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396755, 35.866783, 39.341988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070637, 35.899570, 39.112701>,  <37.874966, 35.919243, 38.975132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070637, 35.899570, 39.112701>,  <38.396755, 35.866783, 39.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070637, 35.899570, 39.112701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563157, 0.118043, 0.817875,
		0.134700, 0.989620, -0.050082,
		-0.815298, 0.081964, -0.573212,
		37.826046, 35.924160, 38.940739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050941, 36.438770, 39.676792>,  <38.396755, 35.866783, 39.341988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050941, 36.438770, 39.676792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793385, 36.228561, 39.454357>,  <37.638851, 36.102436, 39.320896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793385, 36.228561, 39.454357>,  <38.050941, 36.438770, 39.676792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793385, 36.228561, 39.454357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651842, -0.003790, 0.758346,
		-0.400637, 0.850770, -0.340118,
		-0.643889, -0.525524, -0.556086,
		37.600220, 36.070904, 39.287533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460976, 36.815418, 39.663925>,  <38.050941, 36.438770, 39.676792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460976, 36.815418, 39.663925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313133, 36.452995, 39.581509>,  <37.224426, 36.235542, 39.532059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313133, 36.452995, 39.581509>,  <37.460976, 36.815418, 39.663925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313133, 36.452995, 39.581509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690695, 0.119573, 0.713192,
		-0.621556, 0.405910, -0.670004,
		-0.369606, -0.906057, -0.206039,
		37.202251, 36.181179, 39.519695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733433, 36.885700, 39.720028>,  <37.460976, 36.815418, 39.663925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733433, 36.885700, 39.720028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774578, 36.489555, 39.757141>,  <36.799263, 36.251869, 39.779411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774578, 36.489555, 39.757141>,  <36.733433, 36.885700, 39.720028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774578, 36.489555, 39.757141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740572, -0.013975, 0.671831,
		-0.664058, -0.137819, -0.734869,
		0.102861, -0.990359, 0.092785,
		36.805435, 36.192448, 39.784977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055981, 36.609234, 39.743221>,  <36.733433, 36.885700, 39.720028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055981, 36.609234, 39.743221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272972, 36.326721, 39.925156>,  <36.403168, 36.157215, 40.034317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272972, 36.326721, 39.925156>,  <36.055981, 36.609234, 39.743221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272972, 36.326721, 39.925156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659153, -0.022208, 0.751680,
		-0.520798, -0.707581, -0.477597,
		0.542481, -0.706283, 0.454839,
		36.435715, 36.114838, 40.061607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596699, 36.217030, 39.889500>,  <36.055981, 36.609234, 39.743221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596699, 36.217030, 39.889500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881691, 36.101261, 40.145191>,  <36.052685, 36.031799, 40.298607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881691, 36.101261, 40.145191>,  <35.596699, 36.217030, 39.889500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881691, 36.101261, 40.145191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661280, 0.027759, 0.749626,
		-0.234702, -0.956799, -0.171611,
		0.712478, -0.289421, 0.639227,
		36.095436, 36.014435, 40.336960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287685, 35.846939, 40.298790>,  <35.596699, 36.217030, 39.889500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287685, 35.846939, 40.298790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605591, 35.958656, 40.514324>,  <35.796333, 36.025684, 40.643646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605591, 35.958656, 40.514324>,  <35.287685, 35.846939, 40.298790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605591, 35.958656, 40.514324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598876, 0.216856, 0.770923,
		0.098459, -0.935399, 0.339609,
		0.794766, 0.279288, 0.538836,
		35.844021, 36.042442, 40.675976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278557, 35.474190, 40.918152>,  <35.287685, 35.846939, 40.298790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278557, 35.474190, 40.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508831, 35.788647, 41.008095>,  <35.646996, 35.977322, 41.062061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508831, 35.788647, 41.008095>,  <35.278557, 35.474190, 40.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508831, 35.788647, 41.008095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627667, 0.248622, 0.737713,
		0.524045, -0.565827, 0.636566,
		0.575682, 0.786147, 0.224862,
		35.681538, 36.024490, 41.075554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315369, 34.792744, 41.150043>,  <35.278557, 35.474190, 40.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315369, 34.792744, 41.150043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938828, 34.657784, 41.151394>,  <34.712902, 34.576809, 41.152203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938828, 34.657784, 41.151394>,  <35.315369, 34.792744, 41.150043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938828, 34.657784, 41.151394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072462, -0.211925, -0.974596,
		0.329544, -0.917196, 0.223946,
		-0.941356, -0.337400, 0.003377,
		34.656422, 34.556564, 41.152409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369602, 34.156761, 40.803368>,  <35.315369, 34.792744, 41.150043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369602, 34.156761, 40.803368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987885, 34.275631, 40.790623>,  <34.758854, 34.346951, 40.782974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987885, 34.275631, 40.790623>,  <35.369602, 34.156761, 40.803368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987885, 34.275631, 40.790623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032060, -0.207779, -0.977650,
		-0.297154, -0.931941, 0.207809,
		-0.954291, 0.297175, -0.031864,
		34.701595, 34.364784, 40.781063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971653, 33.695446, 40.305172>,  <35.369602, 34.156761, 40.803368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971653, 33.695446, 40.305172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716019, 34.003056, 40.310467>,  <34.562637, 34.187622, 40.313644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716019, 34.003056, 40.310467>,  <34.971653, 33.695446, 40.305172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716019, 34.003056, 40.310467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176478, -0.129860, -0.975701,
		-0.748615, -0.625894, 0.218707,
		-0.639087, 0.769021, 0.013242,
		34.524292, 34.233761, 40.314438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261017, 33.557587, 40.107529>,  <34.971653, 33.695446, 40.305172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261017, 33.557587, 40.107529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260487, 33.952312, 40.042786>,  <34.260170, 34.189148, 40.003941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260487, 33.952312, 40.042786>,  <34.261017, 33.557587, 40.107529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260487, 33.952312, 40.042786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433192, -0.146451, -0.889324,
		-0.901301, 0.068941, 0.427673,
		-0.001322, 0.986813, -0.161862,
		34.260090, 34.248356, 39.994228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608284, 33.698391, 39.789463>,  <34.261017, 33.557587, 40.107529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608284, 33.698391, 39.789463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843636, 34.014198, 39.719631>,  <33.984844, 34.203682, 39.677731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843636, 34.014198, 39.719631>,  <33.608284, 33.698391, 39.789463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843636, 34.014198, 39.719631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339797, 0.045503, -0.939397,
		-0.733724, 0.612043, 0.295047,
		0.588377, 0.789515, -0.174584,
		34.020149, 34.251053, 39.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137730, 34.235699, 39.454613>,  <33.608284, 33.698391, 39.789463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137730, 34.235699, 39.454613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512222, 34.327908, 39.348541>,  <33.736919, 34.383232, 39.284897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512222, 34.327908, 39.348541>,  <33.137730, 34.235699, 39.454613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512222, 34.327908, 39.348541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309764, 0.185273, -0.932588,
		-0.165854, 0.955266, 0.244867,
		0.936236, 0.230525, -0.265179,
		33.793095, 34.397064, 39.268986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129539, 34.831448, 38.985950>,  <33.137730, 34.235699, 39.454613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129539, 34.831448, 38.985950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484035, 34.653683, 38.933674>,  <33.696732, 34.547024, 38.902306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484035, 34.653683, 38.933674>,  <33.129539, 34.831448, 38.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484035, 34.653683, 38.933674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049953, 0.188808, -0.980743,
		0.460526, 0.875701, 0.145129,
		0.886239, -0.444408, -0.130695,
		33.749908, 34.520359, 38.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442005, 35.149731, 38.448868>,  <33.129539, 34.831448, 38.985950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442005, 35.149731, 38.448868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647949, 34.806824, 38.449295>,  <33.771515, 34.601078, 38.449551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647949, 34.806824, 38.449295>,  <33.442005, 35.149731, 38.448868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647949, 34.806824, 38.449295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093087, 0.054668, -0.994156,
		0.852203, 0.511955, 0.107947,
		0.514864, -0.857271, 0.001068,
		33.802410, 34.549641, 38.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073639, 35.232742, 38.011295>,  <33.442005, 35.149731, 38.448868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073639, 35.232742, 38.011295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069782, 34.832996, 38.025021>,  <34.067471, 34.593147, 38.033257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069782, 34.832996, 38.025021>,  <34.073639, 35.232742, 38.011295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069782, 34.832996, 38.025021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114516, -0.035195, -0.992798,
		0.993374, -0.005640, 0.114783,
		-0.009639, -0.999364, 0.034316,
		34.066891, 34.533188, 38.035316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544884, 35.073757, 37.547604>,  <34.073639, 35.232742, 38.011295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544884, 35.073757, 37.547604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320835, 34.744091, 37.581120>,  <34.186405, 34.546291, 37.601227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320835, 34.744091, 37.581120>,  <34.544884, 35.073757, 37.547604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320835, 34.744091, 37.581120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095223, -0.164524, -0.981766,
		0.822919, -0.541931, 0.170632,
		-0.560122, -0.824161, 0.083786,
		34.152798, 34.496841, 37.606255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887688, 34.430050, 37.300335>,  <34.544884, 35.073757, 37.547604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887688, 34.430050, 37.300335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495983, 34.357521, 37.264183>,  <34.260960, 34.314003, 37.242493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495983, 34.357521, 37.264183>,  <34.887688, 34.430050, 37.300335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495983, 34.357521, 37.264183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131433, -0.229104, -0.964488,
		0.154174, -0.956366, 0.248184,
		-0.979263, -0.181318, -0.090376,
		34.202206, 34.303127, 37.237072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917423, 33.708412, 37.018837>,  <34.887688, 34.430050, 37.300335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917423, 33.708412, 37.018837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649330, 33.983490, 36.907223>,  <34.488476, 34.148537, 36.840256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649330, 33.983490, 36.907223>,  <34.917423, 33.708412, 37.018837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649330, 33.983490, 36.907223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355211, -0.032866, -0.934208,
		-0.651625, -0.725252, -0.222250,
		-0.670232, 0.687699, -0.279033,
		34.448261, 34.189800, 36.823513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320225, 33.092014, 36.699879>,  <34.917423, 33.708412, 37.018837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320225, 33.092014, 36.699879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435532, 32.728954, 36.577843>,  <35.504715, 32.511120, 36.504623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435532, 32.728954, 36.577843>,  <35.320225, 33.092014, 36.699879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435532, 32.728954, 36.577843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285062, -0.222821, 0.932250,
		-0.914136, -0.355701, 0.194505,
		0.288263, -0.907650, -0.305085,
		35.522011, 32.456661, 36.486317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895294, 32.495903, 37.002373>,  <35.320225, 33.092014, 36.699879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895294, 32.495903, 37.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281860, 32.443298, 36.914059>,  <35.513802, 32.411736, 36.861073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281860, 32.443298, 36.914059>,  <34.895294, 32.495903, 37.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281860, 32.443298, 36.914059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181345, -0.259717, 0.948504,
		-0.182081, -0.956688, -0.227146,
		0.966416, -0.131513, -0.220780,
		35.571785, 32.403843, 36.847824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173141, 31.734383, 37.275635>,  <34.895294, 32.495903, 37.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173141, 31.734383, 37.275635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399628, 32.063904, 37.286572>,  <35.535519, 32.261616, 37.293133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399628, 32.063904, 37.286572>,  <35.173141, 31.734383, 37.275635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399628, 32.063904, 37.286572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197377, -0.167717, 0.965874,
		0.800275, -0.541499, -0.257564,
		0.566218, 0.823802, 0.027341,
		35.569492, 32.311043, 37.294773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793442, 31.538433, 37.518070>,  <35.173141, 31.734383, 37.275635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793442, 31.538433, 37.518070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740086, 31.915154, 37.641502>,  <35.708073, 32.141186, 37.715561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740086, 31.915154, 37.641502>,  <35.793442, 31.538433, 37.518070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740086, 31.915154, 37.641502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103990, -0.296343, 0.949404,
		0.985592, 0.158732, -0.058408,
		-0.133392, 0.941799, 0.308580,
		35.700069, 32.197693, 37.734077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817215, 31.878279, 36.805889>,  <35.793442, 31.538433, 37.518070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817215, 31.878279, 36.805889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020622, 32.197418, 36.935410>,  <36.142666, 32.388901, 37.013123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020622, 32.197418, 36.935410>,  <35.817215, 31.878279, 36.805889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020622, 32.197418, 36.935410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040504, -0.397803, 0.916576,
		0.860099, -0.452979, -0.234605,
		0.508516, 0.797849, 0.323803,
		36.173176, 32.436771, 37.032551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462891, 31.657902, 37.167667>,  <35.817215, 31.878279, 36.805889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462891, 31.657902, 37.167667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391178, 32.021832, 37.317375>,  <36.348152, 32.240189, 37.407200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391178, 32.021832, 37.317375>,  <36.462891, 31.657902, 37.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391178, 32.021832, 37.317375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165065, -0.347224, 0.923141,
		0.969851, 0.227283, -0.087929,
		-0.179283, 0.909823, 0.374272,
		36.337395, 32.294777, 37.429657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029572, 31.849075, 37.601768>,  <36.462891, 31.657902, 37.167667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029572, 31.849075, 37.601768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723419, 32.071846, 37.730782>,  <36.539726, 32.205509, 37.808189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723419, 32.071846, 37.730782>,  <37.029572, 31.849075, 37.601768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723419, 32.071846, 37.730782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280886, -0.161837, 0.945998,
		0.579048, 0.814643, -0.032566,
		-0.765380, 0.556925, 0.322533,
		36.493805, 32.238922, 37.827541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304440, 32.112278, 38.134651>,  <37.029572, 31.849075, 37.601768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304440, 32.112278, 38.134651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924053, 32.220898, 38.193890>,  <36.695824, 32.286068, 38.229435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924053, 32.220898, 38.193890>,  <37.304440, 32.112278, 38.134651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924053, 32.220898, 38.193890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129467, -0.085402, 0.987899,
		0.280908, 0.958629, 0.046058,
		-0.950962, 0.271545, 0.148101,
		36.638763, 32.302361, 38.238319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283092, 32.598396, 38.691692>,  <37.304440, 32.112278, 38.134651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283092, 32.598396, 38.691692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939728, 32.395844, 38.658936>,  <36.733707, 32.274311, 38.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939728, 32.395844, 38.658936>,  <37.283092, 32.598396, 38.691692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939728, 32.395844, 38.658936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006340, -0.170104, 0.985406,
		-0.512917, 0.845368, 0.149230,
		-0.858415, -0.506378, -0.081890,
		36.682205, 32.243931, 38.634369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760632, 32.963322, 39.185417>,  <37.283092, 32.598396, 38.691692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760632, 32.963322, 39.185417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644711, 32.587093, 39.114605>,  <36.575157, 32.361355, 39.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644711, 32.587093, 39.114605>,  <36.760632, 32.963322, 39.185417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644711, 32.587093, 39.114605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055428, -0.168161, 0.984200,
		-0.955479, 0.295041, -0.003400,
		-0.289807, -0.940571, -0.177028,
		36.557770, 32.304924, 39.061497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267281, 32.975262, 39.708450>,  <36.760632, 32.963322, 39.185417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267281, 32.975262, 39.708450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360569, 32.607193, 39.582661>,  <36.416542, 32.386353, 39.507187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360569, 32.607193, 39.582661>,  <36.267281, 32.975262, 39.708450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360569, 32.607193, 39.582661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196927, -0.361386, 0.911384,
		-0.952276, -0.150622, -0.265488,
		0.233219, -0.920170, -0.314477,
		36.430534, 32.331142, 39.488319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727711, 32.641693, 39.931053>,  <36.267281, 32.975262, 39.708450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727711, 32.641693, 39.931053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013096, 32.367813, 39.871502>,  <36.184326, 32.203484, 39.835773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013096, 32.367813, 39.871502>,  <35.727711, 32.641693, 39.931053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013096, 32.367813, 39.871502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252488, -0.449412, 0.856901,
		-0.653626, -0.573774, -0.493515,
		0.713459, -0.684699, -0.148876,
		36.227135, 32.162403, 39.826839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430603, 31.944916, 40.086174>,  <35.727711, 32.641693, 39.931053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430603, 31.944916, 40.086174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827557, 31.896545, 40.095551>,  <36.065727, 31.867523, 40.101177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827557, 31.896545, 40.095551>,  <35.430603, 31.944916, 40.086174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827557, 31.896545, 40.095551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067870, -0.378026, 0.923304,
		-0.102790, -0.917863, -0.383355,
		0.992385, -0.120925, 0.023438,
		36.125271, 31.860268, 40.102581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521843, 31.290293, 40.467121>,  <35.430603, 31.944916, 40.086174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521843, 31.290293, 40.467121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876404, 31.471022, 40.507431>,  <36.089138, 31.579458, 40.531616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876404, 31.471022, 40.507431>,  <35.521843, 31.290293, 40.467121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876404, 31.471022, 40.507431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097577, -0.395162, 0.913414,
		0.452522, -0.799816, -0.394359,
		0.886399, 0.451820, 0.100775,
		36.142323, 31.606567, 40.537663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029755, 30.711817, 40.686382>,  <35.521843, 31.290293, 40.467121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029755, 30.711817, 40.686382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145401, 31.081259, 40.787075>,  <36.214787, 31.302923, 40.847492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145401, 31.081259, 40.787075>,  <36.029755, 30.711817, 40.686382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145401, 31.081259, 40.787075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231774, -0.322671, 0.917695,
		0.928814, -0.206972, -0.307355,
		0.289112, 0.923605, 0.251731,
		36.232136, 31.358339, 40.862595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705742, 30.642929, 40.902054>,  <36.029755, 30.711817, 40.686382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705742, 30.642929, 40.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559006, 30.979868, 41.059978>,  <36.470963, 31.182032, 41.154736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559006, 30.979868, 41.059978>,  <36.705742, 30.642929, 40.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559006, 30.979868, 41.059978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236323, -0.326098, 0.915320,
		0.899767, 0.429080, -0.079441,
		-0.366840, 0.842348, 0.394814,
		36.448956, 31.232573, 41.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024101, 30.643581, 41.497189>,  <36.705742, 30.642929, 40.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024101, 30.643581, 41.497189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755611, 30.935249, 41.550518>,  <36.594517, 31.110250, 41.582516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755611, 30.935249, 41.550518>,  <37.024101, 30.643581, 41.497189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755611, 30.935249, 41.550518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016681, -0.164958, 0.986160,
		0.741070, 0.664155, 0.098559,
		-0.671221, 0.729169, 0.133324,
		36.554245, 31.153999, 41.590515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350048, 31.183321, 41.897717>,  <37.024101, 30.643581, 41.497189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350048, 31.183321, 41.897717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956856, 31.233072, 41.951794>,  <36.720940, 31.262924, 41.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956856, 31.233072, 41.951794>,  <37.350048, 31.183321, 41.897717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956856, 31.233072, 41.951794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145735, 0.079956, 0.986087,
		0.111841, 0.989008, -0.096722,
		-0.982982, 0.124380, 0.135191,
		36.661961, 31.270386, 41.992352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241821, 31.689381, 42.409645>,  <37.350048, 31.183321, 41.897717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241821, 31.689381, 42.409645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898384, 31.485323, 42.429920>,  <36.692322, 31.362888, 42.442085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898384, 31.485323, 42.429920>,  <37.241821, 31.689381, 42.409645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898384, 31.485323, 42.429920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019444, 0.131214, 0.991163,
		-0.512288, 0.850021, -0.122579,
		-0.858593, -0.510145, 0.050691,
		36.640804, 31.332279, 42.445129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796169, 32.063274, 42.920128>,  <37.241821, 31.689381, 42.409645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796169, 32.063274, 42.920128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640938, 31.695507, 42.894630>,  <36.547798, 31.474848, 42.879330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640938, 31.695507, 42.894630>,  <36.796169, 32.063274, 42.920128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640938, 31.695507, 42.894630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124942, -0.121015, 0.984756,
		-0.913117, 0.374202, 0.161838,
		-0.388082, -0.919418, -0.063747,
		36.524513, 31.419682, 42.875507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307739, 31.993425, 43.570004>,  <36.796169, 32.063274, 42.920128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307739, 31.993425, 43.570004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371365, 31.625332, 43.426971>,  <36.409538, 31.404476, 43.341152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371365, 31.625332, 43.426971>,  <36.307739, 31.993425, 43.570004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371365, 31.625332, 43.426971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206561, -0.323159, 0.923527,
		-0.965418, -0.220761, 0.138682,
		0.159062, -0.920235, -0.357584,
		36.419083, 31.349260, 43.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807884, 31.601696, 43.930649>,  <36.307739, 31.993425, 43.570004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807884, 31.601696, 43.930649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108292, 31.362446, 43.818779>,  <36.288536, 31.218895, 43.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108292, 31.362446, 43.818779>,  <35.807884, 31.601696, 43.930649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108292, 31.362446, 43.818779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104926, -0.310070, 0.944906,
		-0.651891, -0.738986, -0.170109,
		0.751018, -0.598127, -0.279671,
		36.333595, 31.183008, 43.734879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712826, 31.030657, 44.382080>,  <35.807884, 31.601696, 43.930649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712826, 31.030657, 44.382080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087795, 31.019762, 44.243233>,  <36.312778, 31.013226, 44.159924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087795, 31.019762, 44.243233>,  <35.712826, 31.030657, 44.382080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087795, 31.019762, 44.243233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330021, -0.248309, 0.910730,
		-0.110997, -0.968298, -0.223783,
		0.937425, -0.027235, -0.347120,
		36.369022, 31.011591, 44.139095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978310, 30.567760, 44.859692>,  <35.712826, 31.030657, 44.382080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978310, 30.567760, 44.859692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312988, 30.671902, 44.666962>,  <36.513794, 30.734386, 44.551323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312988, 30.671902, 44.666962>,  <35.978310, 30.567760, 44.859692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312988, 30.671902, 44.666962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547489, -0.375287, 0.747941,
		0.013908, -0.889593, -0.456543,
		0.836697, 0.260355, -0.481822,
		36.563999, 30.750008, 44.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369877, 29.948210, 44.704845>,  <35.978310, 30.567760, 44.859692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369877, 29.948210, 44.704845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588573, 30.279297, 44.755371>,  <36.719791, 30.477949, 44.785686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588573, 30.279297, 44.755371>,  <36.369877, 29.948210, 44.704845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588573, 30.279297, 44.755371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310658, -0.340627, 0.887392,
		0.777535, -0.445936, -0.443373,
		0.546745, 0.827716, 0.126316,
		36.752598, 30.527613, 44.793266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966236, 29.647039, 45.069122>,  <36.369877, 29.948210, 44.704845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966236, 29.647039, 45.069122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 30.041679, 45.125637>,  <37.018475, 30.278463, 45.159546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 30.041679, 45.125637>,  <36.966236, 29.647039, 45.069122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998886, 30.041679, 45.125637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404830, -0.162354, 0.899863,
		0.910742, -0.016253, -0.412657,
		0.081622, 0.986599, 0.141283,
		37.023373, 30.337660, 45.168022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630489, 29.849564, 45.184933>,  <36.966236, 29.647039, 45.069122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630489, 29.849564, 45.184933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447708, 30.174393, 45.330112>,  <37.338039, 30.369289, 45.417221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447708, 30.174393, 45.330112>,  <37.630489, 29.849564, 45.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447708, 30.174393, 45.330112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440090, -0.148186, 0.885642,
		0.772990, 0.564427, -0.289671,
		-0.456955, 0.812073, 0.362945,
		37.310623, 30.418015, 45.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169426, 30.271339, 45.479218>,  <37.630489, 29.849564, 45.184933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169426, 30.271339, 45.479218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806347, 30.336143, 45.634056>,  <37.588501, 30.375025, 45.726959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806347, 30.336143, 45.634056>,  <38.169426, 30.271339, 45.479218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806347, 30.336143, 45.634056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353325, -0.202593, 0.913300,
		0.226385, 0.965769, 0.126651,
		-0.907696, 0.162008, 0.387094,
		37.534039, 30.384747, 45.750183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344734, 30.699739, 46.070057>,  <38.169426, 30.271339, 45.479218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344734, 30.699739, 46.070057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972095, 30.579382, 46.151630>,  <37.748512, 30.507168, 46.200573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972095, 30.579382, 46.151630>,  <38.344734, 30.699739, 46.070057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972095, 30.579382, 46.151630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178331, 0.110542, 0.977741,
		-0.316739, 0.947229, -0.049322,
		-0.931598, -0.300894, 0.203934,
		37.692616, 30.489115, 46.212811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011497, 31.146637, 46.527798>,  <38.344734, 30.699739, 46.070057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011497, 31.146637, 46.527798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809452, 30.802729, 46.557858>,  <37.688225, 30.596384, 46.575893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809452, 30.802729, 46.557858>,  <38.011497, 31.146637, 46.527798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809452, 30.802729, 46.557858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015615, 0.096169, 0.995242,
		-0.862909, 0.501541, -0.062002,
		-0.505117, -0.859772, 0.075154,
		37.657917, 30.544796, 46.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108795, 31.870358, 46.562496>,  <38.011497, 31.146637, 46.527798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108795, 31.870358, 46.562496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467262, 32.022045, 46.654655>,  <38.682343, 32.113056, 46.709949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467262, 32.022045, 46.654655>,  <38.108795, 31.870358, 46.562496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467262, 32.022045, 46.654655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220503, 0.069979, -0.972873,
		-0.385056, 0.922656, -0.020906,
		0.896164, 0.379220, 0.230395,
		38.736111, 32.135811, 46.723774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175743, 32.353127, 46.121708>,  <38.108795, 31.870358, 46.562496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175743, 32.353127, 46.121708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548763, 32.276711, 46.244251>,  <38.772575, 32.230862, 46.317776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548763, 32.276711, 46.244251>,  <38.175743, 32.353127, 46.121708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548763, 32.276711, 46.244251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318855, 0.037753, -0.947051,
		0.169361, 0.980856, 0.096121,
		0.932550, -0.191042, 0.306356,
		38.828529, 32.219398, 46.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620045, 32.855873, 45.864792>,  <38.175743, 32.353127, 46.121708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620045, 32.855873, 45.864792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887249, 32.571812, 45.953735>,  <39.047569, 32.401375, 46.007103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887249, 32.571812, 45.953735>,  <38.620045, 32.855873, 45.864792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887249, 32.571812, 45.953735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477827, 0.180268, -0.859758,
		0.570479, 0.680574, 0.459753,
		0.668008, -0.710157, 0.222357,
		39.087650, 32.358765, 46.020443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163177, 33.097683, 45.573032>,  <38.620045, 32.855873, 45.864792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163177, 33.097683, 45.573032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238396, 32.709099, 45.630859>,  <39.283527, 32.475948, 45.665554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238396, 32.709099, 45.630859>,  <39.163177, 33.097683, 45.573032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238396, 32.709099, 45.630859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426331, -0.051867, -0.903079,
		0.884805, 0.231456, 0.404411,
		0.188047, -0.971462, 0.144569,
		39.294811, 32.417660, 45.674229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879047, 32.962746, 45.361393>,  <39.163177, 33.097683, 45.573032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879047, 32.962746, 45.361393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697727, 32.606415, 45.349140>,  <39.588936, 32.392616, 45.341789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697727, 32.606415, 45.349140>,  <39.879047, 32.962746, 45.361393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697727, 32.606415, 45.349140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371677, -0.157668, -0.914875,
		0.810169, -0.426099, 0.402573,
		-0.453301, -0.890831, -0.030633,
		39.561737, 32.339165, 45.339951>
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
