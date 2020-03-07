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
	<36.477295, 52.658249, 50.178055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416618, 53.047291, 50.107597>,  <36.380215, 53.280716, 50.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416618, 53.047291, 50.107597>,  <36.477295, 52.658249, 50.178055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416618, 53.047291, 50.107597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144756, 0.198145, 0.969425,
		0.977771, 0.121554, -0.170847,
		-0.151690, 0.972606, -0.176145,
		36.371113, 53.339073, 50.054752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084122, 53.054848, 50.511185>,  <36.477295, 52.658249, 50.178055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084122, 53.054848, 50.511185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751423, 53.271515, 50.462547>,  <36.551804, 53.401516, 50.433365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751423, 53.271515, 50.462547>,  <37.084122, 53.054848, 50.511185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751423, 53.271515, 50.462547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046300, 0.150584, 0.987512,
		0.553215, 0.826994, -0.100170,
		-0.831751, 0.541669, -0.121595,
		36.501896, 53.434017, 50.426067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650005, 53.300541, 50.890854>,  <37.084122, 53.054848, 50.511185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650005, 53.300541, 50.890854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726036, 53.681400, 50.986588>,  <37.771656, 53.909916, 51.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726036, 53.681400, 50.986588>,  <37.650005, 53.300541, 50.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726036, 53.681400, 50.986588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927383, -0.254141, 0.274541,
		0.322228, 0.169767, -0.931315,
		0.190078, 0.952151, 0.239330,
		37.783058, 53.967045, 51.058388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233475, 53.698776, 50.525330>,  <37.650005, 53.300541, 50.890854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233475, 53.698776, 50.525330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201664, 53.855110, 50.892136>,  <38.182575, 53.948910, 51.112221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201664, 53.855110, 50.892136>,  <38.233475, 53.698776, 50.525330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201664, 53.855110, 50.892136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974529, -0.163025, 0.154001,
		0.209686, 0.905908, -0.367916,
		-0.079531, 0.390836, 0.917018,
		38.177803, 53.972363, 51.167240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519085, 54.330345, 50.390373>,  <38.233475, 53.698776, 50.525330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519085, 54.330345, 50.390373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503826, 54.186371, 50.763252>,  <38.494671, 54.099987, 50.986980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503826, 54.186371, 50.763252>,  <38.519085, 54.330345, 50.390373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503826, 54.186371, 50.763252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992755, -0.120024, -0.005721,
		0.113945, 0.925224, 0.361908,
		-0.038145, -0.359938, 0.932196,
		38.492382, 54.078388, 51.042912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038280, 54.765465, 50.775768>,  <38.519085, 54.330345, 50.390373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038280, 54.765465, 50.775768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985691, 54.400478, 50.930744>,  <38.954136, 54.181484, 51.023731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985691, 54.400478, 50.930744>,  <39.038280, 54.765465, 50.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985691, 54.400478, 50.930744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989784, -0.099085, 0.102518,
		-0.055154, 0.396965, 0.916175,
		-0.131475, -0.912470, 0.387444,
		38.946247, 54.126736, 51.046978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284954, 54.705566, 51.529285>,  <39.038280, 54.765465, 50.775768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284954, 54.705566, 51.529285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322052, 54.398399, 51.275764>,  <39.344311, 54.214100, 51.123653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322052, 54.398399, 51.275764>,  <39.284954, 54.705566, 51.529285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322052, 54.398399, 51.275764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990746, 0.007824, 0.135499,
		-0.099093, -0.640505, 0.761534,
		0.092746, -0.767914, -0.633803,
		39.349876, 54.168026, 51.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646553, 54.087666, 51.841587>,  <39.284954, 54.705566, 51.529285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646553, 54.087666, 51.841587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708752, 54.070724, 51.446815>,  <39.746071, 54.060558, 51.209953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708752, 54.070724, 51.446815>,  <39.646553, 54.087666, 51.841587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708752, 54.070724, 51.446815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981950, -0.102287, 0.159099,
		-0.107689, -0.993853, 0.025686,
		0.155494, -0.042356, -0.986928,
		39.755402, 54.058018, 51.150738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114693, 53.613548, 51.805073>,  <39.646553, 54.087666, 51.841587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114693, 53.613548, 51.805073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151417, 53.848541, 51.483467>,  <40.173450, 53.989536, 51.290504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151417, 53.848541, 51.483467>,  <40.114693, 53.613548, 51.805073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151417, 53.848541, 51.483467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991935, 0.016893, 0.125613,
		0.087378, -0.809060, -0.581194,
		0.091810, 0.587483, -0.804011,
		40.178959, 54.024788, 51.242264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713120, 53.360481, 51.357906>,  <40.114693, 53.613548, 51.805073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713120, 53.360481, 51.357906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623512, 53.746437, 51.412754>,  <40.569748, 53.978012, 51.445663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.623512, 53.746437, 51.412754>,  <40.713120, 53.360481, 51.357906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623512, 53.746437, 51.412754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959167, 0.193349, 0.206431,
		0.172672, 0.177762, -0.968806,
		-0.224013, 0.964892, 0.137118,
		40.556309, 54.035904, 51.453888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223961, 53.655678, 50.995697>,  <40.713120, 53.360481, 51.357906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223961, 53.655678, 50.995697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084854, 53.905434, 51.275467>,  <41.001389, 54.055286, 51.443329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084854, 53.905434, 51.275467>,  <41.223961, 53.655678, 50.995697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084854, 53.905434, 51.275467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934089, 0.295048, 0.201056,
		-0.080826, 0.723245, -0.685846,
		-0.347771, 0.624390, 0.699423,
		40.980522, 54.092751, 51.485294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540085, 54.360065, 50.917488>,  <41.223961, 53.655678, 50.995697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540085, 54.360065, 50.917488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395199, 54.327759, 51.288925>,  <41.308270, 54.308372, 51.511787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395199, 54.327759, 51.288925>,  <41.540085, 54.360065, 50.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395199, 54.327759, 51.288925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884540, 0.284362, 0.369765,
		-0.293921, 0.955308, -0.031556,
		-0.362213, -0.080769, 0.928589,
		41.286533, 54.303528, 51.567501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496639, 55.038925, 51.291077>,  <41.540085, 54.360065, 50.917488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496639, 55.038925, 51.291077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540928, 54.725880, 51.536110>,  <41.567501, 54.538052, 51.683128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540928, 54.725880, 51.536110>,  <41.496639, 55.038925, 51.291077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540928, 54.725880, 51.536110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807928, 0.429830, 0.403112,
		-0.578787, 0.450288, 0.679887,
		0.110720, -0.782616, 0.612580,
		41.574142, 54.491096, 51.719883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653469, 55.267273, 51.980701>,  <41.496639, 55.038925, 51.291077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653469, 55.267273, 51.980701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801327, 54.902245, 51.910759>,  <41.890041, 54.683228, 51.868793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801327, 54.902245, 51.910759>,  <41.653469, 55.267273, 51.980701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801327, 54.902245, 51.910759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877534, 0.281008, 0.388547,
		-0.305443, -0.297064, 0.904687,
		0.369647, -0.912572, -0.174852,
		41.912220, 54.628471, 51.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255623, 55.271957, 52.329803>,  <41.653469, 55.267273, 51.980701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255623, 55.271957, 52.329803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287628, 54.930901, 52.123268>,  <42.306831, 54.726265, 51.999348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287628, 54.930901, 52.123268>,  <42.255623, 55.271957, 52.329803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287628, 54.930901, 52.123268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949388, -0.092660, 0.300128,
		-0.303744, -0.514214, 0.802074,
		0.080010, -0.852642, -0.516333,
		42.311630, 54.675110, 51.968369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261120, 55.664253, 51.652554>,  <42.255623, 55.271957, 52.329803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261120, 55.664253, 51.652554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476524, 55.410236, 51.431023>,  <42.605766, 55.257828, 51.298103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476524, 55.410236, 51.431023>,  <42.261120, 55.664253, 51.652554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476524, 55.410236, 51.431023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577789, -0.756709, 0.305862,
		-0.613321, 0.155284, -0.774419,
		0.538514, -0.635042, -0.553827,
		42.638077, 55.219723, 51.264874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939888, 55.456657, 51.556057>,  <42.261120, 55.664253, 51.652554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939888, 55.456657, 51.556057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254925, 55.680595, 51.659027>,  <43.443947, 55.814960, 51.720810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254925, 55.680595, 51.659027>,  <42.939888, 55.456657, 51.556057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254925, 55.680595, 51.659027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537945, -0.828446, 0.155858,
		0.300523, 0.015730, -0.953645,
		0.787592, 0.559848, 0.257429,
		43.491203, 55.848549, 51.736256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415562, 55.221378, 51.186207>,  <42.939888, 55.456657, 51.556057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415562, 55.221378, 51.186207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590401, 55.399250, 51.498924>,  <43.695305, 55.505974, 51.686554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590401, 55.399250, 51.498924>,  <43.415562, 55.221378, 51.186207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590401, 55.399250, 51.498924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549945, -0.819945, 0.158904,
		0.711691, 0.360489, -0.602946,
		0.437099, 0.444678, 0.781796,
		43.721531, 55.532654, 51.733463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167274, 55.230572, 51.171432>,  <43.415562, 55.221378, 51.186207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167274, 55.230572, 51.171432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041683, 55.238998, 51.551109>,  <43.966328, 55.244057, 51.778915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.041683, 55.238998, 51.551109>,  <44.167274, 55.230572, 51.171432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041683, 55.238998, 51.551109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674110, -0.699065, 0.238503,
		0.668575, 0.714748, 0.205289,
		-0.313980, 0.021070, 0.949196,
		43.947491, 55.245319, 51.835869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686901, 55.404003, 50.621132>,  <44.167274, 55.230572, 51.171432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686901, 55.404003, 50.621132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684086, 55.791412, 50.521606>,  <44.682396, 56.023857, 50.461891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.684086, 55.791412, 50.521606>,  <44.686901, 55.404003, 50.621132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684086, 55.791412, 50.521606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985910, 0.048306, 0.160152,
		0.167131, -0.244177, -0.955220,
		-0.007038, 0.968527, -0.248810,
		44.681976, 56.081970, 50.446964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.191746, 55.532261, 50.054306>,  <44.686901, 55.404003, 50.621132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.191746, 55.532261, 50.054306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147530, 55.826881, 50.321220>,  <45.121002, 56.003654, 50.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147530, 55.826881, 50.321220>,  <45.191746, 55.532261, 50.054306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147530, 55.826881, 50.321220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984134, -0.012644, 0.176978,
		0.138791, 0.676259, -0.723471,
		-0.110536, 0.736555, 0.667284,
		45.114368, 56.047848, 50.521404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832088, 55.953098, 50.041710>,  <45.191746, 55.532261, 50.054306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832088, 55.953098, 50.041710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662209, 55.939949, 50.403603>,  <45.560280, 55.932060, 50.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662209, 55.939949, 50.403603>,  <45.832088, 55.953098, 50.041710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662209, 55.939949, 50.403603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904782, -0.050286, 0.422895,
		0.031592, 0.998194, 0.051102,
		-0.424701, -0.032876, 0.904736,
		45.534798, 55.930084, 50.675022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070885, 56.523193, 50.354706>,  <45.832088, 55.953098, 50.041710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070885, 56.523193, 50.354706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985771, 56.187866, 50.555481>,  <45.934704, 55.986671, 50.675945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985771, 56.187866, 50.555481>,  <46.070885, 56.523193, 50.354706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985771, 56.187866, 50.555481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919633, 0.001744, 0.392775,
		-0.330146, 0.545178, 0.770574,
		-0.212788, -0.838319, 0.501939,
		45.921936, 55.936371, 50.706062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294292, 56.654686, 50.994747>,  <46.070885, 56.523193, 50.354706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294292, 56.654686, 50.994747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308289, 56.255703, 50.969913>,  <46.316689, 56.016312, 50.955013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308289, 56.255703, 50.969913>,  <46.294292, 56.654686, 50.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308289, 56.255703, 50.969913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918775, 0.007665, 0.394706,
		-0.393227, -0.070856, 0.916707,
		0.034994, -0.997457, -0.062087,
		46.318787, 55.956467, 50.951286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534679, 56.405994, 51.657433>,  <46.294292, 56.654686, 50.994747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534679, 56.405994, 51.657433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604977, 56.127045, 51.379501>,  <46.647156, 55.959675, 51.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.604977, 56.127045, 51.379501>,  <46.534679, 56.405994, 51.657433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.604977, 56.127045, 51.379501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925686, -0.123115, 0.357697,
		-0.334992, -0.706054, 0.623913,
		0.175741, -0.697374, -0.694827,
		46.657700, 55.917831, 51.171055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955589, 55.790886, 51.927036>,  <46.534679, 56.405994, 51.657433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955589, 55.790886, 51.927036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030460, 55.847210, 51.538162>,  <47.075382, 55.881004, 51.304840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030460, 55.847210, 51.538162>,  <46.955589, 55.790886, 51.927036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030460, 55.847210, 51.538162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982155, -0.008365, 0.187885,
		0.018324, -0.990002, -0.139861,
		0.187177, 0.140808, -0.972182,
		47.086613, 55.889454, 51.246506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349449, 55.178051, 51.500389>,  <46.955589, 55.790886, 51.927036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349449, 55.178051, 51.500389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405167, 55.567806, 51.429768>,  <47.438599, 55.801659, 51.387394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405167, 55.567806, 51.429768>,  <47.349449, 55.178051, 51.500389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405167, 55.567806, 51.429768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978216, -0.107684, 0.177477,
		0.153919, -0.197427, -0.968159,
		0.139294, 0.974385, -0.176552,
		47.446957, 55.860123, 51.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.777779, 55.220787, 50.930611>,  <47.349449, 55.178051, 51.500389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.777779, 55.220787, 50.930611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830620, 55.497353, 51.214722>,  <47.862324, 55.663292, 51.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830620, 55.497353, 51.214722>,  <47.777779, 55.220787, 50.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830620, 55.497353, 51.214722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970064, -0.237487, 0.050759,
		0.203777, 0.682310, -0.702089,
		0.132103, 0.691414, 0.710278,
		47.870251, 55.704777, 51.427807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.379379, 55.661243, 50.781040>,  <47.777779, 55.220787, 50.930611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.379379, 55.661243, 50.781040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.332268, 55.661156, 51.178257>,  <48.304001, 55.661102, 51.416588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.332268, 55.661156, 51.178257>,  <48.379379, 55.661243, 50.781040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.332268, 55.661156, 51.178257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971581, -0.206790, 0.115191,
		0.205326, 0.978385, 0.024565,
		-0.117780, -0.000215, 0.993040,
		48.296932, 55.661091, 51.476170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.534500, 56.252895, 51.263432>,  <48.379379, 55.661243, 50.781040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.534500, 56.252895, 51.263432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596737, 55.884293, 51.405762>,  <48.634079, 55.663132, 51.491158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.596737, 55.884293, 51.405762>,  <48.534500, 56.252895, 51.263432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.596737, 55.884293, 51.405762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983872, 0.176748, 0.027513,
		-0.088244, 0.345804, 0.934148,
		0.155595, -0.921510, 0.355824,
		48.643414, 55.607841, 51.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.230724, 56.289577, 51.682602>,  <48.534500, 56.252895, 51.263432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.230724, 56.289577, 51.682602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.148163, 55.899117, 51.655689>,  <49.098625, 55.664841, 51.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.148163, 55.899117, 51.655689>,  <49.230724, 56.289577, 51.682602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.148163, 55.899117, 51.655689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977905, -0.203462, -0.048014,
		0.033179, -0.075709, 0.996578,
		-0.206401, -0.976151, -0.067286,
		49.086243, 55.606270, 51.635502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.658760, 55.942474, 52.071911>,  <49.230724, 56.289577, 51.682602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.658760, 55.942474, 52.071911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.542179, 55.680183, 51.793320>,  <49.472233, 55.522808, 51.626163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.542179, 55.680183, 51.793320>,  <49.658760, 55.942474, 52.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.542179, 55.680183, 51.793320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956538, -0.192517, -0.219024,
		0.009534, -0.730044, 0.683334,
		-0.291451, -0.655723, -0.696480,
		49.454742, 55.483467, 51.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.937290, 55.323372, 52.238979>,  <49.658760, 55.942474, 52.071911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.937290, 55.323372, 52.238979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.837318, 55.255817, 51.857613>,  <49.777336, 55.215282, 51.628792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.837318, 55.255817, 51.857613>,  <49.937290, 55.323372, 52.238979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.837318, 55.255817, 51.857613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891717, -0.423870, -0.158671,
		-0.377329, -0.889838, 0.256538,
		-0.249930, -0.168888, -0.953421,
		49.762341, 55.205151, 51.571587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.973091, 54.583542, 52.182358>,  <49.937290, 55.323372, 52.238979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.973091, 54.583542, 52.182358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.074226, 54.778976, 51.848328>,  <50.134907, 54.896236, 51.647907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.074226, 54.778976, 51.848328>,  <49.973091, 54.583542, 52.182358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.074226, 54.778976, 51.848328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762987, -0.631419, -0.138423,
		-0.594916, -0.602156, -0.532432,
		0.252836, 0.488589, -0.835078,
		50.150078, 54.925552, 51.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.161026, 54.025730, 51.799641>,  <49.973091, 54.583542, 52.182358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.161026, 54.025730, 51.799641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.332790, 54.355293, 51.651711>,  <50.435848, 54.553032, 51.562950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.332790, 54.355293, 51.651711>,  <50.161026, 54.025730, 51.799641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.332790, 54.355293, 51.651711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833475, -0.519232, -0.188991,
		-0.347739, -0.227089, -0.909675,
		0.429415, 0.823911, -0.369830,
		50.461617, 54.602467, 51.540760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.566360, 53.929745, 51.167641>,  <50.161026, 54.025730, 51.799641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.566360, 53.929745, 51.167641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.757786, 54.247780, 51.316673>,  <50.872643, 54.438602, 51.406094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.757786, 54.247780, 51.316673>,  <50.566360, 53.929745, 51.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.757786, 54.247780, 51.316673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877595, -0.446824, -0.173711,
		0.028361, 0.410105, -0.911597,
		0.478564, 0.795086, 0.372578,
		50.901356, 54.486305, 51.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.154655, 54.055424, 50.782890>,  <50.566360, 53.929745, 51.167641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.154655, 54.055424, 50.782890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.229240, 54.290371, 51.097908>,  <51.273991, 54.431339, 51.286919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.229240, 54.290371, 51.097908>,  <51.154655, 54.055424, 50.782890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.229240, 54.290371, 51.097908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958557, 0.066988, -0.276914,
		-0.215406, 0.806543, -0.550534,
		0.186464, 0.587367, 0.787547,
		51.285179, 54.466579, 51.334171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.504131, 54.572144, 50.451073>,  <51.154655, 54.055424, 50.782890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.504131, 54.572144, 50.451073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.569580, 54.543690, 50.844654>,  <51.608849, 54.526619, 51.080803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.569580, 54.543690, 50.844654>,  <51.504131, 54.572144, 50.451073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.569580, 54.543690, 50.844654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985926, -0.022888, -0.165609,
		0.034302, 0.997204, 0.066390,
		0.163627, -0.071136, 0.983954,
		51.618668, 54.522350, 51.139839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.915901, 55.234882, 50.820675>,  <51.504131, 54.572144, 50.451073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.915901, 55.234882, 50.820675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977016, 54.874428, 50.982964>,  <52.013687, 54.658157, 51.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.977016, 54.874428, 50.982964>,  <51.915901, 55.234882, 50.820675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.977016, 54.874428, 50.982964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921803, -0.018055, -0.387237,
		0.356278, 0.433164, 0.827910,
		0.152789, -0.901134, 0.405725,
		52.022854, 54.604088, 51.104683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.488789, 55.286613, 51.341412>,  <51.915901, 55.234882, 50.820675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.488789, 55.286613, 51.341412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.447079, 54.937950, 51.149857>,  <52.422054, 54.728752, 51.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.447079, 54.937950, 51.149857>,  <52.488789, 55.286613, 51.341412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.447079, 54.937950, 51.149857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882136, 0.141312, -0.449297,
		0.459307, -0.469292, 0.754189,
		-0.104275, -0.871662, -0.478885,
		52.415794, 54.676453, 51.006191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.123383, 54.791584, 51.523773>,  <52.488789, 55.286613, 51.341412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.123383, 54.791584, 51.523773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.947689, 54.766846, 51.165276>,  <52.842274, 54.752003, 50.950176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.947689, 54.766846, 51.165276>,  <53.123383, 54.791584, 51.523773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.947689, 54.766846, 51.165276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857242, 0.269556, -0.438721,
		0.268715, -0.960998, -0.065391,
		-0.439236, -0.061835, -0.896240,
		52.815918, 54.748295, 50.896404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.595043, 54.978260, 51.082596>,  <53.123383, 54.791584, 51.523773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.595043, 54.978260, 51.082596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.308060, 54.941628, 50.806374>,  <53.135868, 54.919647, 50.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.308060, 54.941628, 50.806374>,  <53.595043, 54.978260, 51.082596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.308060, 54.941628, 50.806374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563002, 0.507547, -0.652246,
		0.410221, -0.856743, -0.312584,
		-0.717459, -0.091579, -0.690555,
		53.092823, 54.914154, 50.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.802826, 54.488209, 51.632111>,  <53.595043, 54.978260, 51.082596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.802826, 54.488209, 51.632111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696945, 54.694439, 51.958084>,  <53.633419, 54.818176, 52.153667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.696945, 54.694439, 51.958084>,  <53.802826, 54.488209, 51.632111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.696945, 54.694439, 51.958084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532648, -0.626297, 0.569244,
		0.803878, 0.584751, -0.108840,
		-0.264700, 0.515576, 0.814933,
		53.617535, 54.849113, 52.202564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.438179, 54.606617, 51.806988>,  <53.802826, 54.488209, 51.632111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.438179, 54.606617, 51.806988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.171158, 54.597031, 52.104660>,  <54.010944, 54.591278, 52.283264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.171158, 54.597031, 52.104660>,  <54.438179, 54.606617, 51.806988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.171158, 54.597031, 52.104660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642582, -0.523437, 0.559555,
		0.376121, 0.851727, 0.364820,
		-0.667549, -0.023966, 0.744180,
		53.970894, 54.589840, 52.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.632229, 54.858547, 52.353249>,  <54.438179, 54.606617, 51.806988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.632229, 54.858547, 52.353249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.396622, 54.552624, 52.457649>,  <54.255257, 54.369068, 52.520290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.396622, 54.552624, 52.457649>,  <54.632229, 54.858547, 52.353249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.396622, 54.552624, 52.457649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793898, -0.487320, 0.363655,
		-0.150934, 0.421411, 0.894221,
		-0.589020, -0.764809, 0.261005,
		54.219917, 54.323181, 52.535950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.467655, 54.742554, 53.179840>,  <54.632229, 54.858547, 52.353249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.467655, 54.742554, 53.179840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.468872, 54.405655, 52.964211>,  <54.469604, 54.203514, 52.834831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.468872, 54.405655, 52.964211>,  <54.467655, 54.742554, 53.179840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.468872, 54.405655, 52.964211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739041, -0.361260, 0.568603,
		-0.673653, -0.400132, 0.621358,
		0.003045, -0.842250, -0.539078,
		54.469784, 54.152981, 52.802486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.440716, 54.175293, 53.708366>,  <54.467655, 54.742554, 53.179840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.440716, 54.175293, 53.708366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.634499, 54.074203, 53.373360>,  <54.750771, 54.013550, 53.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.634499, 54.074203, 53.373360>,  <54.440716, 54.175293, 53.708366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.634499, 54.074203, 53.373360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771675, -0.327518, 0.545205,
		-0.412087, -0.910419, 0.036351,
		0.484459, -0.252723, -0.837514,
		54.779835, 53.998386, 53.122105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.771019, 53.583096, 53.814270>,  <54.440716, 54.175293, 53.708366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.771019, 53.583096, 53.814270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.994987, 53.687572, 53.499748>,  <55.129368, 53.750259, 53.311035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.994987, 53.687572, 53.499748>,  <54.771019, 53.583096, 53.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.994987, 53.687572, 53.499748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817657, -0.327550, 0.473442,
		-0.133896, -0.908015, -0.396965,
		0.559918, 0.261190, -0.786303,
		55.162964, 53.765930, 53.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.955845, 53.734295, 54.531189>,  <54.771019, 53.583096, 53.814270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.955845, 53.734295, 54.531189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.027390, 53.955986, 54.206020>,  <55.070316, 54.089001, 54.010918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.027390, 53.955986, 54.206020>,  <54.955845, 53.734295, 54.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.027390, 53.955986, 54.206020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686444, 0.521621, 0.506661,
		0.704842, -0.648649, -0.287145,
		0.178864, 0.554225, -0.812922,
		55.081047, 54.122253, 53.962143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.617279, 53.518585, 54.300903>,  <54.955845, 53.734295, 54.531189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.617279, 53.518585, 54.300903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.488808, 53.885204, 54.205585>,  <55.411724, 54.105175, 54.148396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.488808, 53.885204, 54.205585>,  <55.617279, 53.518585, 54.300903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.488808, 53.885204, 54.205585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827177, 0.394030, 0.400648,
		0.461108, -0.068433, -0.884701,
		-0.321181, 0.916547, -0.238297,
		55.392452, 54.160168, 54.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.013401, 53.722191, 53.735939>,  <55.617279, 53.518585, 54.300903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.013401, 53.722191, 53.735939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.868248, 54.001099, 53.983208>,  <55.781155, 54.168442, 54.131569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.868248, 54.001099, 53.983208>,  <56.013401, 53.722191, 53.735939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.868248, 54.001099, 53.983208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915788, 0.389439, 0.098329,
		-0.172177, 0.601793, -0.779872,
		-0.362886, 0.697267, 0.618168,
		55.759380, 54.210278, 54.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.230991, 54.377495, 53.484528>,  <56.013401, 53.722191, 53.735939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.230991, 54.377495, 53.484528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163338, 54.376701, 53.878765>,  <56.122746, 54.376225, 54.115307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163338, 54.376701, 53.878765>,  <56.230991, 54.377495, 53.484528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.163338, 54.376701, 53.878765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910942, 0.381453, 0.157090,
		-0.376268, 0.924386, -0.062711,
		-0.169133, -0.001982, 0.985591,
		56.112598, 54.376106, 54.174442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.283455, 55.078362, 53.774826>,  <56.230991, 54.377495, 53.484528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.283455, 55.078362, 53.774826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.355377, 54.802563, 54.055473>,  <56.398529, 54.637085, 54.223862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.355377, 54.802563, 54.055473>,  <56.283455, 55.078362, 53.774826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.355377, 54.802563, 54.055473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877720, 0.434491, 0.202055,
		-0.444161, 0.579492, 0.683308,
		0.179802, -0.689498, 0.701615,
		56.409317, 54.595715, 54.265957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.379429, 55.373772, 54.501446>,  <56.283455, 55.078362, 53.774826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.379429, 55.373772, 54.501446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577065, 55.026367, 54.485634>,  <56.695648, 54.817924, 54.476147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577065, 55.026367, 54.485634>,  <56.379429, 55.373772, 54.501446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.577065, 55.026367, 54.485634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831927, 0.459092, 0.311659,
		-0.252529, -0.186878, 0.949371,
		0.494091, -0.868511, -0.039534,
		56.725292, 54.765816, 54.473774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.663628, 55.296085, 55.181469>,  <56.379429, 55.373772, 54.501446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.663628, 55.296085, 55.181469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.838745, 55.129715, 54.862633>,  <56.943813, 55.029892, 54.671333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.838745, 55.129715, 54.862633>,  <56.663628, 55.296085, 55.181469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.838745, 55.129715, 54.862633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898563, 0.232404, 0.372255,
		0.030417, -0.879203, 0.475477,
		0.437790, -0.415923, -0.797088,
		56.970081, 55.004940, 54.623505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.073120, 54.649036, 55.308365>,  <56.663628, 55.296085, 55.181469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.073120, 54.649036, 55.308365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.203812, 54.901505, 55.026978>,  <57.282227, 55.052986, 54.858147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.203812, 54.901505, 55.026978>,  <57.073120, 54.649036, 55.308365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.203812, 54.901505, 55.026978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836121, 0.153972, 0.526492,
		0.440623, -0.760204, -0.477431,
		0.326730, 0.631175, -0.703467,
		57.301830, 55.090858, 54.815937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.713345, 54.447479, 55.299744>,  <57.073120, 54.649036, 55.308365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.713345, 54.447479, 55.299744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.683243, 54.813473, 55.141182>,  <57.665184, 55.033070, 55.046047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.683243, 54.813473, 55.141182>,  <57.713345, 54.447479, 55.299744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.683243, 54.813473, 55.141182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887836, 0.242457, 0.391104,
		0.453965, -0.322509, -0.830604,
		-0.075251, 0.914988, -0.396402,
		57.660667, 55.087971, 55.022263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.332775, 54.668407, 54.943916>,  <57.713345, 54.447479, 55.299744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.332775, 54.668407, 54.943916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.158752, 55.001053, 55.081985>,  <58.054340, 55.200642, 55.164825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.158752, 55.001053, 55.081985>,  <58.332775, 54.668407, 54.943916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.158752, 55.001053, 55.081985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884590, 0.323227, 0.336191,
		0.168012, 0.451598, -0.876260,
		-0.435054, 0.831615, 0.345173,
		58.028236, 55.250538, 55.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.812595, 55.345863, 54.734463>,  <58.332775, 54.668407, 54.943916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.812595, 55.345863, 54.734463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.562439, 55.403320, 55.041252>,  <58.412346, 55.437794, 55.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.562439, 55.403320, 55.041252>,  <58.812595, 55.345863, 54.734463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.562439, 55.403320, 55.041252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746731, 0.395413, 0.534828,
		-0.226450, 0.907202, -0.354549,
		-0.625391, 0.143641, 0.766977,
		58.374821, 55.446411, 55.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.680717, 56.004414, 54.929497>,  <58.812595, 55.345863, 54.734463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.680717, 56.004414, 54.929497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636818, 55.797832, 55.269196>,  <58.610477, 55.673882, 55.473015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636818, 55.797832, 55.269196>,  <58.680717, 56.004414, 54.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.636818, 55.797832, 55.269196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811841, 0.446380, 0.376377,
		-0.573471, 0.730765, 0.370289,
		-0.109754, -0.516457, 0.849251,
		58.603893, 55.642895, 55.523972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.503704, 56.326454, 55.705780>,  <58.680717, 56.004414, 54.929497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.503704, 56.326454, 55.705780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.720306, 55.990540, 55.721382>,  <58.850269, 55.788990, 55.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.720306, 55.990540, 55.721382>,  <58.503704, 56.326454, 55.705780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.720306, 55.990540, 55.721382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788762, 0.523562, 0.322082,
		-0.290903, -0.143644, 0.945908,
		0.541507, -0.839791, 0.039005,
		58.882759, 55.738602, 55.733082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.624096, 56.279343, 56.396923>,  <58.503704, 56.326454, 55.705780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.624096, 56.279343, 56.396923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903511, 56.119625, 56.159401>,  <59.071159, 56.023796, 56.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903511, 56.119625, 56.159401>,  <58.624096, 56.279343, 56.396923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.903511, 56.119625, 56.159401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712173, 0.468690, 0.522627,
		0.069629, -0.787969, 0.611765,
		0.698542, -0.399293, -0.593805,
		59.113075, 55.999836, 55.981258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.201157, 56.086765, 56.859318>,  <58.624096, 56.279343, 56.396923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.201157, 56.086765, 56.859318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.339233, 56.143284, 56.488182>,  <59.422081, 56.177197, 56.265503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.339233, 56.143284, 56.488182>,  <59.201157, 56.086765, 56.859318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.339233, 56.143284, 56.488182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715981, 0.599534, 0.357673,
		0.606807, -0.787778, 0.105787,
		0.345190, 0.141297, -0.927835,
		59.442791, 56.185673, 56.209831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.821358, 55.727829, 56.636055>,  <59.201157, 56.086765, 56.859318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.821358, 55.727829, 56.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.742363, 56.093021, 56.493248>,  <59.694965, 56.312138, 56.407562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.742363, 56.093021, 56.493248>,  <59.821358, 55.727829, 56.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.742363, 56.093021, 56.493248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878065, 0.326675, 0.349692,
		0.435892, -0.244426, -0.866172,
		-0.197483, 0.912984, -0.357017,
		59.683117, 56.366917, 56.386143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.389141, 56.089283, 56.092049>,  <59.821358, 55.727829, 56.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.389141, 56.089283, 56.092049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.215096, 56.319984, 56.368607>,  <60.110668, 56.458405, 56.534542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.215096, 56.319984, 56.368607>,  <60.389141, 56.089283, 56.092049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.215096, 56.319984, 56.368607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900372, 0.280672, 0.332496,
		-0.002285, 0.767186, -0.641421,
		-0.435115, 0.576757, 0.691394,
		60.084560, 56.493011, 56.576023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.671246, 56.707180, 56.031517>,  <60.389141, 56.089283, 56.092049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.671246, 56.707180, 56.031517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.533104, 56.658184, 56.403694>,  <60.450218, 56.628784, 56.626999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.533104, 56.658184, 56.403694>,  <60.671246, 56.707180, 56.031517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.533104, 56.658184, 56.403694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928007, 0.103068, 0.358023,
		-0.139755, 0.987103, 0.078079,
		-0.345358, -0.122493, 0.930443,
		60.429497, 56.621437, 56.682827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.762665, 57.276714, 56.489574>,  <60.671246, 56.707180, 56.031517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.762665, 57.276714, 56.489574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769356, 56.944641, 56.712471>,  <60.773369, 56.745396, 56.846207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769356, 56.944641, 56.712471>,  <60.762665, 57.276714, 56.489574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.769356, 56.944641, 56.712471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961282, 0.166670, 0.219451,
		-0.275060, 0.531993, 0.800828,
		0.016728, -0.830183, 0.557239,
		60.774376, 56.695587, 56.879642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.160088, 57.387142, 57.205517>,  <60.762665, 57.276714, 56.489574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.160088, 57.387142, 57.205517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194534, 57.009018, 57.079681>,  <61.215202, 56.782143, 57.004181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194534, 57.009018, 57.079681>,  <61.160088, 57.387142, 57.205517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.194534, 57.009018, 57.079681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961126, -0.004320, 0.276078,
		-0.262339, -0.326131, 0.908194,
		0.086114, -0.945315, -0.314586,
		61.220367, 56.725422, 56.985306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.564873, 57.482929, 57.883648>,  <61.160088, 57.387142, 57.205517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.564873, 57.482929, 57.883648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.629189, 57.829292, 58.073112>,  <61.667778, 58.037109, 58.186790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.629189, 57.829292, 58.073112>,  <61.564873, 57.482929, 57.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.629189, 57.829292, 58.073112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741651, -0.422648, 0.520886,
		0.651230, 0.267538, -0.710157,
		0.160789, 0.865905, 0.473661,
		61.677425, 58.089066, 58.215210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.170364, 57.853783, 57.756588>,  <61.564873, 57.482929, 57.883648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.170364, 57.853783, 57.756588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.056427, 57.931686, 58.132019>,  <61.988064, 57.978428, 58.357277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.056427, 57.931686, 58.132019>,  <62.170364, 57.853783, 57.756588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.056427, 57.931686, 58.132019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780981, -0.520594, 0.345037,
		0.555819, 0.831295, -0.003816,
		-0.284841, 0.194758, 0.938581,
		61.970974, 57.990112, 58.413593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.588760, 58.218086, 58.323330>,  <62.170364, 57.853783, 57.756588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.588760, 58.218086, 58.323330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.434746, 57.896080, 58.503860>,  <62.342335, 57.702877, 58.612179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.434746, 57.896080, 58.503860>,  <62.588760, 58.218086, 58.323330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.434746, 57.896080, 58.503860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922880, -0.339124, 0.182450,
		0.006178, 0.486766, 0.873510,
		-0.385039, -0.805018, 0.451322,
		62.319233, 57.654575, 58.639256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.928230, 57.913521, 59.060551>,  <62.588760, 58.218086, 58.323330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.928230, 57.913521, 59.060551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.771713, 57.596237, 58.873917>,  <62.677803, 57.405869, 58.761936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.771713, 57.596237, 58.873917>,  <62.928230, 57.913521, 59.060551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.771713, 57.596237, 58.873917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810359, -0.537274, 0.233786,
		-0.436128, -0.286625, 0.853017,
		-0.391295, -0.793211, -0.466589,
		62.654324, 57.358273, 58.733940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.813728, 57.329552, 59.567123>,  <62.928230, 57.913521, 59.060551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.813728, 57.329552, 59.567123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870407, 57.210564, 59.189461>,  <62.904415, 57.139172, 58.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.870407, 57.210564, 59.189461>,  <62.813728, 57.329552, 59.567123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.870407, 57.210564, 59.189461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861012, -0.433584, 0.265825,
		-0.488446, -0.850598, 0.194686,
		0.141698, -0.297469, -0.944158,
		62.912918, 57.121323, 58.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.035393, 56.630447, 59.524075>,  <62.813728, 57.329552, 59.567123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.035393, 56.630447, 59.524075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.158691, 56.843315, 59.208664>,  <63.232670, 56.971035, 59.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.158691, 56.843315, 59.208664>,  <63.035393, 56.630447, 59.524075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.158691, 56.843315, 59.208664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939914, -0.298269, 0.166127,
		-0.146785, -0.792355, -0.592138,
		0.308248, 0.532174, -0.788527,
		63.251167, 57.002968, 58.972107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.503204, 56.272224, 59.202705>,  <63.035393, 56.630447, 59.524075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.503204, 56.272224, 59.202705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.633194, 56.631348, 59.083817>,  <63.711189, 56.846821, 59.012482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.633194, 56.631348, 59.083817>,  <63.503204, 56.272224, 59.202705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.633194, 56.631348, 59.083817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945230, -0.298200, 0.132727,
		0.030531, -0.324075, -0.945539,
		0.324973, 0.897804, -0.297221,
		63.730686, 56.900688, 58.994652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.240173, 56.040379, 59.157330>,  <63.503204, 56.272224, 59.202705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.240173, 56.040379, 59.157330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.545410, 55.797241, 59.245163>,  <64.728554, 55.651360, 59.297863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.545410, 55.797241, 59.245163>,  <64.240173, 56.040379, 59.157330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.545410, 55.797241, 59.245163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628011, 0.777631, -0.029867,
		-0.152600, 0.160692, 0.975136,
		0.763095, -0.607839, 0.219583,
		64.774338, 55.614891, 59.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.725784, 56.217201, 59.694366>,  <64.240173, 56.040379, 59.157330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.725784, 56.217201, 59.694366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.942154, 56.004143, 59.433998>,  <65.071976, 55.876308, 59.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.942154, 56.004143, 59.433998>,  <64.725784, 56.217201, 59.694366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.942154, 56.004143, 59.433998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786459, 0.594651, 0.166951,
		0.298144, -0.602228, 0.740562,
		0.540918, -0.532646, -0.650919,
		65.104431, 55.844349, 59.238724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.319374, 56.516605, 59.788300>,  <64.725784, 56.217201, 59.694366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.319374, 56.516605, 59.788300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417595, 56.364784, 59.431503>,  <65.476524, 56.273689, 59.217426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.417595, 56.364784, 59.431503>,  <65.319374, 56.516605, 59.788300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.417595, 56.364784, 59.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681439, 0.722030, -0.119644,
		0.689453, -0.578455, 0.435941,
		0.245553, -0.379556, -0.891987,
		65.491264, 56.250919, 59.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.908394, 56.212101, 59.846245>,  <65.319374, 56.516605, 59.788300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.908394, 56.212101, 59.846245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.823654, 56.375023, 59.490891>,  <65.772812, 56.472775, 59.277679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.823654, 56.375023, 59.490891>,  <65.908394, 56.212101, 59.846245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.823654, 56.375023, 59.490891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810785, 0.580783, 0.072931,
		0.545663, -0.704836, -0.453275,
		-0.211850, 0.407304, -0.888382,
		65.760101, 56.497215, 59.224377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.442726, 56.208519, 59.254974>,  <65.908394, 56.212101, 59.846245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.442726, 56.208519, 59.254974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.202141, 56.527451, 59.275024>,  <66.057793, 56.718807, 59.287056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.202141, 56.527451, 59.275024>,  <66.442726, 56.208519, 59.254974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.202141, 56.527451, 59.275024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798661, 0.598571, 0.062072,
		0.019486, 0.077370, -0.996812,
		-0.601466, 0.797324, 0.050129,
		66.021698, 56.766647, 59.290062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.772308, 56.595287, 58.777390>,  <66.442726, 56.208519, 59.254974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.772308, 56.595287, 58.777390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.543083, 56.854126, 58.978531>,  <66.405548, 57.009430, 59.099216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.543083, 56.854126, 58.978531>,  <66.772308, 56.595287, 58.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.543083, 56.854126, 58.978531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799116, 0.577282, 0.167809,
		-0.181701, 0.498006, -0.847924,
		-0.573061, 0.647098, 0.502857,
		66.371162, 57.048256, 59.129387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.219238, 57.219521, 58.678837>,  <66.772308, 56.595287, 58.777390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.219238, 57.219521, 58.678837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.995209, 57.352005, 58.982574>,  <66.860786, 57.431496, 59.164818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.995209, 57.352005, 58.982574>,  <67.219238, 57.219521, 58.678837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.995209, 57.352005, 58.982574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598149, 0.795847, 0.094050,
		-0.573172, 0.506878, -0.643854,
		-0.560081, 0.331214, 0.759346,
		66.827187, 57.451370, 59.210377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.957962, 57.848862, 58.510277>,  <67.219238, 57.219521, 58.678837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.957962, 57.848862, 58.510277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009705, 57.806381, 58.904633>,  <67.040749, 57.780891, 59.141247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.009705, 57.806381, 58.904633>,  <66.957962, 57.848862, 58.510277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.009705, 57.806381, 58.904633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683147, 0.730199, -0.010978,
		-0.718732, 0.674931, 0.167010,
		0.129360, -0.106202, 0.985894,
		67.048515, 57.774521, 59.200401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.947365, 57.564774, 57.879997>,  <66.957962, 57.848862, 58.510277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.947365, 57.564774, 57.879997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.264496, 57.807621, 57.858696>,  <67.454773, 57.953331, 57.845917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.264496, 57.807621, 57.858696>,  <66.947365, 57.564774, 57.879997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.264496, 57.807621, 57.858696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578273, -0.721792, 0.380286,
		0.192442, -0.332295, -0.923334,
		0.792822, 0.607122, -0.053254,
		67.502342, 57.989758, 57.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.493706, 57.311737, 57.518738>,  <66.947365, 57.564774, 57.879997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.493706, 57.311737, 57.518738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698509, 57.550644, 57.765678>,  <67.821388, 57.693989, 57.913845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.698509, 57.550644, 57.765678>,  <67.493706, 57.311737, 57.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.698509, 57.550644, 57.765678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579834, -0.770568, 0.264608,
		0.633756, 0.222484, -0.740847,
		0.512002, 0.597265, 0.617356,
		67.852112, 57.729824, 57.950886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.186340, 57.068260, 57.425911>,  <67.493706, 57.311737, 57.518738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.186340, 57.068260, 57.425911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123657, 57.251328, 57.775993>,  <68.086052, 57.361168, 57.986042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123657, 57.251328, 57.775993>,  <68.186340, 57.068260, 57.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.123657, 57.251328, 57.775993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322263, -0.813957, 0.483344,
		0.933590, 0.357787, -0.019941,
		-0.156703, 0.457671, 0.875204,
		68.076645, 57.388630, 58.038555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.823128, 57.321186, 57.789059>,  <68.186340, 57.068260, 57.425911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.823128, 57.321186, 57.789059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.504669, 57.177338, 57.983719>,  <68.313599, 57.091030, 58.100517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.504669, 57.177338, 57.983719>,  <68.823128, 57.321186, 57.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.504669, 57.177338, 57.983719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492988, -0.851836, 0.177026,
		0.350888, 0.380852, 0.855470,
		-0.796141, -0.359620, 0.486655,
		68.265823, 57.069450, 58.129715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.134872, 56.965286, 58.427773>,  <68.823128, 57.321186, 57.789059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.134872, 56.965286, 58.427773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.777336, 56.818367, 58.324898>,  <68.562813, 56.730213, 58.263172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.777336, 56.818367, 58.324898>,  <69.134872, 56.965286, 58.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.777336, 56.818367, 58.324898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243158, -0.878970, 0.410226,
		-0.376733, 0.304139, 0.874969,
		-0.893838, -0.367301, -0.257183,
		68.509186, 56.708176, 58.247742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.032715, 56.786861, 59.052010>,  <69.134872, 56.965286, 58.427773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.032715, 56.786861, 59.052010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.859398, 56.572216, 58.762375>,  <68.755409, 56.443428, 58.588593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.859398, 56.572216, 58.762375>,  <69.032715, 56.786861, 59.052010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.859398, 56.572216, 58.762375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286565, -0.843761, 0.453815,
		-0.854477, -0.010860, 0.519375,
		-0.433300, -0.536609, -0.724087,
		68.729408, 56.411232, 58.545147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.509483, 56.377861, 58.668247>,  <69.032715, 56.786861, 59.052010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.509483, 56.377861, 58.668247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611649, 56.062763, 58.892471>,  <69.672943, 55.873707, 59.027008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.611649, 56.062763, 58.892471>,  <69.509483, 56.377861, 58.668247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.611649, 56.062763, 58.892471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736569, 0.534108, 0.414963,
		-0.626284, 0.306908, 0.716642,
		0.255409, -0.787741, 0.560562,
		69.688271, 55.826443, 59.060638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.576096, 56.496635, 59.458607>,  <69.509483, 56.377861, 58.668247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.576096, 56.496635, 59.458607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.803825, 56.179787, 59.370583>,  <69.940460, 55.989677, 59.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.803825, 56.179787, 59.370583>,  <69.576096, 56.496635, 59.458607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.803825, 56.179787, 59.370583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822114, 0.549276, 0.149748,
		0.002255, -0.266168, 0.963924,
		0.569318, -0.792118, -0.220059,
		69.974625, 55.942150, 59.304565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.110901, 56.394680, 59.995483>,  <69.576096, 56.496635, 59.458607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.110901, 56.394680, 59.995483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.214592, 56.290916, 59.623352>,  <70.276802, 56.228661, 59.400074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.214592, 56.290916, 59.623352>,  <70.110901, 56.394680, 59.995483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.214592, 56.290916, 59.623352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820886, 0.566697, 0.070713,
		0.508871, -0.782025, 0.359842,
		0.259221, -0.259406, -0.930330,
		70.292358, 56.213097, 59.344254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.797112, 56.381500, 60.033947>,  <70.110901, 56.394680, 59.995483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.797112, 56.381500, 60.033947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.732338, 56.451218, 59.645432>,  <70.693474, 56.493050, 59.412323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.732338, 56.451218, 59.645432>,  <70.797112, 56.381500, 60.033947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.732338, 56.451218, 59.645432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788376, 0.614831, -0.021111,
		0.593498, -0.769159, -0.236970,
		-0.161934, 0.174292, -0.971287,
		70.683754, 56.503506, 59.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.428635, 56.274734, 59.660053>,  <70.797112, 56.381500, 60.033947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.428635, 56.274734, 59.660053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.156471, 56.547260, 59.552086>,  <70.993172, 56.710777, 59.487305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.156471, 56.547260, 59.552086>,  <71.428635, 56.274734, 59.660053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.156471, 56.547260, 59.552086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698661, 0.714238, 0.041677,
		0.221178, -0.160221, -0.961982,
		-0.680407, 0.681317, -0.269914,
		70.952347, 56.751656, 59.471111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.809593, 56.705273, 59.146595>,  <71.428635, 56.274734, 59.660053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.809593, 56.705273, 59.146595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.584770, 56.909569, 59.406822>,  <71.449875, 57.032146, 59.562958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.584770, 56.909569, 59.406822>,  <71.809593, 56.705273, 59.146595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.584770, 56.909569, 59.406822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755490, 0.637167, 0.152493,
		-0.336636, 0.577207, -0.743981,
		-0.562060, 0.510736, 0.650567,
		71.416153, 57.062790, 59.601994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.721909, 57.507969, 59.048016>,  <71.809593, 56.705273, 59.146595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.721909, 57.507969, 59.048016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.717613, 57.406574, 59.434929>,  <71.715034, 57.345737, 59.667076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.717613, 57.406574, 59.434929>,  <71.721909, 57.507969, 59.048016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.717613, 57.406574, 59.434929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891954, 0.434832, 0.123852,
		-0.451999, 0.864097, 0.221433,
		-0.010734, -0.253489, 0.967279,
		71.714394, 57.330528, 59.725113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.720367, 58.031170, 59.596912>,  <71.721909, 57.507969, 59.048016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.720367, 58.031170, 59.596912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927429, 57.710197, 59.715668>,  <72.051666, 57.517616, 59.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.927429, 57.710197, 59.715668>,  <71.720367, 58.031170, 59.596912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.927429, 57.710197, 59.715668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802751, 0.575564, 0.155941,
		-0.296008, 0.157601, 0.942094,
		0.517659, -0.802426, 0.296886,
		72.082726, 57.469471, 59.804733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.997932, 57.999458, 60.351284>,  <71.720367, 58.031170, 59.596912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.997932, 57.999458, 60.351284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.250282, 57.761559, 60.151978>,  <72.401695, 57.618820, 60.032394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.250282, 57.761559, 60.151978>,  <71.997932, 57.999458, 60.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.250282, 57.761559, 60.151978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775005, 0.513575, 0.368249,
		0.036881, -0.618477, 0.784937,
		0.630877, -0.594749, -0.498264,
		72.439545, 57.583134, 60.002499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.494499, 57.715961, 60.783024>,  <71.997932, 57.999458, 60.351284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.494499, 57.715961, 60.783024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.679169, 57.730373, 60.428497>,  <72.789970, 57.739021, 60.215782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.679169, 57.730373, 60.428497>,  <72.494499, 57.715961, 60.783024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.679169, 57.730373, 60.428497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816589, 0.372996, 0.440519,
		0.346463, -0.927133, 0.142783,
		0.461678, 0.036029, -0.886316,
		72.817673, 57.741180, 60.162601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.085693, 57.297726, 60.949017>,  <72.494499, 57.715961, 60.783024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.085693, 57.297726, 60.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.116699, 57.578304, 60.665619>,  <73.135307, 57.746651, 60.495579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.116699, 57.578304, 60.665619>,  <73.085693, 57.297726, 60.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.116699, 57.578304, 60.665619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735320, 0.439667, 0.515749,
		0.673271, -0.560954, -0.481701,
		0.077523, 0.701444, -0.708496,
		73.139954, 57.788738, 60.453072>
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
