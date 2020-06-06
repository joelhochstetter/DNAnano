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
	<24.151857, 34.775280, 34.837074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261635, 35.116596, 35.014420>,  <24.327501, 35.321388, 35.120827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261635, 35.116596, 35.014420>,  <24.151857, 34.775280, 34.837074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261635, 35.116596, 35.014420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065884, -0.443298, 0.893950,
		0.959343, -0.274550, -0.065443,
		0.274444, 0.853293, 0.443363,
		24.343967, 35.372585, 35.147430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898491, 34.612492, 34.745579>,  <24.151857, 34.775280, 34.837074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898491, 34.612492, 34.745579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218950, 34.538334, 34.973186>,  <25.411226, 34.493839, 35.109753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218950, 34.538334, 34.973186>,  <24.898491, 34.612492, 34.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218950, 34.538334, 34.973186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510698, -0.283907, -0.811532,
		0.312004, 0.940758, -0.132771,
		0.801150, -0.185395, 0.569024,
		25.459295, 34.482716, 35.143894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561680, 34.914093, 34.433208>,  <24.898491, 34.612492, 34.745579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561680, 34.914093, 34.433208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636003, 34.578102, 34.637138>,  <25.680597, 34.376507, 34.759495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636003, 34.578102, 34.637138>,  <25.561680, 34.914093, 34.433208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636003, 34.578102, 34.637138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694767, -0.254587, -0.672670,
		0.694818, 0.479197, 0.536281,
		0.185811, -0.839974, 0.509822,
		25.691748, 34.326111, 34.790085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156731, 34.768650, 34.829739>,  <25.561680, 34.914093, 34.433208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156731, 34.768650, 34.829739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969700, 34.489269, 34.613022>,  <25.857481, 34.321640, 34.482990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969700, 34.489269, 34.613022>,  <26.156731, 34.768650, 34.829739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969700, 34.489269, 34.613022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748457, 0.013284, -0.663051,
		0.470304, -0.715537, 0.516547,
		-0.467575, -0.698448, -0.541796,
		25.829428, 34.279736, 34.450481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512104, 34.058277, 34.726887>,  <26.156731, 34.768650, 34.829739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512104, 34.058277, 34.726887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281713, 34.141342, 34.410625>,  <26.143480, 34.191181, 34.220871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281713, 34.141342, 34.410625>,  <26.512104, 34.058277, 34.726887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281713, 34.141342, 34.410625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789200, -0.110886, -0.604043,
		-0.213111, -0.971895, -0.100021,
		-0.575975, 0.207664, -0.790650,
		26.108921, 34.203640, 34.173431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026230, 34.302128, 34.242046>,  <26.512104, 34.058277, 34.726887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026230, 34.302128, 34.242046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280605, 34.031784, 34.391068>,  <27.433231, 33.869579, 34.480480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280605, 34.031784, 34.391068>,  <27.026230, 34.302128, 34.242046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280605, 34.031784, 34.391068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478475, -0.724063, -0.496784,
		0.605509, 0.137666, -0.783841,
		0.635940, -0.675856, 0.372557,
		27.471388, 33.829029, 34.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269705, 33.782917, 33.648491>,  <27.026230, 34.302128, 34.242046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269705, 33.782917, 33.648491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315510, 33.600403, 34.001465>,  <27.342993, 33.490894, 34.213249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315510, 33.600403, 34.001465>,  <27.269705, 33.782917, 33.648491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315510, 33.600403, 34.001465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379966, -0.840851, -0.385479,
		0.917885, -0.291153, -0.269661,
		0.114512, -0.456288, 0.882433,
		27.349863, 33.463516, 34.266193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488466, 33.141495, 33.427143>,  <27.269705, 33.782917, 33.648491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488466, 33.141495, 33.427143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357752, 33.104927, 33.803410>,  <27.279324, 33.082985, 34.029171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357752, 33.104927, 33.803410>,  <27.488466, 33.141495, 33.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357752, 33.104927, 33.803410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304202, -0.932168, -0.196275,
		0.894802, -0.350293, 0.276810,
		-0.326787, -0.091421, 0.940666,
		27.259716, 33.077499, 34.085609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655729, 32.607395, 33.576138>,  <27.488466, 33.141495, 33.427143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655729, 32.607395, 33.576138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389109, 32.634754, 33.873062>,  <27.229136, 32.651169, 34.051216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389109, 32.634754, 33.873062>,  <27.655729, 32.607395, 33.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389109, 32.634754, 33.873062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234078, -0.964620, -0.121306,
		0.707753, -0.254616, 0.658981,
		-0.666553, 0.068398, 0.742313,
		27.189142, 32.655273, 34.095757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705221, 31.980844, 33.869701>,  <27.655729, 32.607395, 33.576138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705221, 31.980844, 33.869701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347424, 32.132530, 33.964420>,  <27.132746, 32.223541, 34.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347424, 32.132530, 33.964420>,  <27.705221, 31.980844, 33.869701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347424, 32.132530, 33.964420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420668, -0.893248, -0.158578,
		0.151387, -0.241463, 0.958529,
		-0.894494, 0.379216, 0.236802,
		27.079075, 32.246296, 34.035461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315329, 31.409273, 34.219112>,  <27.705221, 31.980844, 33.869701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315329, 31.409273, 34.219112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008116, 31.647533, 34.125031>,  <26.823788, 31.790489, 34.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008116, 31.647533, 34.125031>,  <27.315329, 31.409273, 34.219112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008116, 31.647533, 34.125031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593446, -0.800024, -0.088220,
		-0.240720, 0.071827, 0.967933,
		-0.768033, 0.595653, -0.235207,
		26.777706, 31.826229, 34.054470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646563, 31.144604, 34.572823>,  <27.315329, 31.409273, 34.219112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646563, 31.144604, 34.572823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505354, 31.366594, 34.271526>,  <26.420630, 31.499788, 34.090748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505354, 31.366594, 34.271526>,  <26.646563, 31.144604, 34.572823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505354, 31.366594, 34.271526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726385, -0.669994, -0.153208,
		-0.589695, 0.493058, 0.639651,
		-0.353022, 0.554978, -0.753242,
		26.399448, 31.533089, 34.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891439, 31.213701, 34.700172>,  <26.646563, 31.144604, 34.572823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891439, 31.213701, 34.700172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024597, 31.249037, 34.324646>,  <26.104492, 31.270237, 34.099331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024597, 31.249037, 34.324646>,  <25.891439, 31.213701, 34.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024597, 31.249037, 34.324646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344024, -0.915601, -0.208140,
		-0.877968, 0.392265, -0.274410,
		0.332896, 0.088337, -0.938817,
		26.124466, 31.275537, 34.042999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419086, 30.835339, 34.386784>,  <25.891439, 31.213701, 34.700172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419086, 30.835339, 34.386784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668205, 30.885530, 34.077881>,  <25.817677, 30.915646, 33.892540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668205, 30.885530, 34.077881>,  <25.419086, 30.835339, 34.386784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668205, 30.885530, 34.077881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394679, -0.801871, -0.448587,
		-0.675538, 0.584172, -0.449879,
		0.622797, 0.125480, -0.772256,
		25.855043, 30.923174, 33.846203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051500, 30.545301, 33.759754>,  <25.419086, 30.835339, 34.386784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051500, 30.545301, 33.759754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440075, 30.565062, 33.666908>,  <25.673220, 30.576918, 33.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440075, 30.565062, 33.666908>,  <25.051500, 30.545301, 33.759754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440075, 30.565062, 33.666908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050724, -0.912265, -0.406448,
		-0.231825, 0.406611, -0.883699,
		0.971434, 0.049400, -0.232111,
		25.731504, 30.579882, 33.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017250, 30.195684, 33.069561>,  <25.051500, 30.545301, 33.759754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017250, 30.195684, 33.069561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400614, 30.210678, 33.182732>,  <25.630632, 30.219673, 33.250633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400614, 30.210678, 33.182732>,  <25.017250, 30.195684, 33.069561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400614, 30.210678, 33.182732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158771, -0.893802, -0.419415,
		0.237162, 0.446892, -0.862578,
		0.958408, 0.037483, 0.282930,
		25.688137, 30.221924, 33.267612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443338, 30.149626, 32.450249>,  <25.017250, 30.195684, 33.069561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443338, 30.149626, 32.450249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679457, 30.039623, 32.753807>,  <25.821129, 29.973621, 32.935944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679457, 30.039623, 32.753807>,  <25.443338, 30.149626, 32.450249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679457, 30.039623, 32.753807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235445, -0.840627, -0.487763,
		0.772085, 0.466603, -0.431470,
		0.590297, -0.275007, 0.758894,
		25.856546, 29.957121, 32.981476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038330, 29.950008, 32.210045>,  <25.443338, 30.149626, 32.450249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038330, 29.950008, 32.210045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050526, 29.746847, 32.554394>,  <26.057842, 29.624950, 32.761005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050526, 29.746847, 32.554394>,  <26.038330, 29.950008, 32.210045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050526, 29.746847, 32.554394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447847, -0.763044, -0.466043,
		0.893590, 0.399749, 0.204199,
		0.030488, -0.507902, 0.860875,
		26.059671, 29.594477, 32.812656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773739, 29.611210, 32.254242>,  <26.038330, 29.950008, 32.210045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773739, 29.611210, 32.254242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521057, 29.426018, 32.502953>,  <26.369448, 29.314903, 32.652180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521057, 29.426018, 32.502953>,  <26.773739, 29.611210, 32.254242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521057, 29.426018, 32.502953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250657, -0.880973, -0.401320,
		0.733569, -0.097662, 0.672561,
		-0.631702, -0.462978, 0.621775,
		26.331547, 29.287125, 32.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153660, 29.005669, 32.533176>,  <26.773739, 29.611210, 32.254242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153660, 29.005669, 32.533176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763012, 28.925480, 32.564236>,  <26.528624, 28.877367, 32.582870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763012, 28.925480, 32.564236>,  <27.153660, 29.005669, 32.533176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763012, 28.925480, 32.564236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165410, -0.931400, -0.324244,
		0.137321, -0.303819, 0.942781,
		-0.976618, -0.200471, 0.077646,
		26.470026, 28.865339, 32.587528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198545, 28.459106, 32.784725>,  <27.153660, 29.005669, 32.533176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198545, 28.459106, 32.784725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820044, 28.450483, 32.655647>,  <26.592941, 28.445311, 32.578201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820044, 28.450483, 32.655647>,  <27.198545, 28.459106, 32.784725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820044, 28.450483, 32.655647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155242, -0.905587, -0.394730,
		-0.283721, -0.423612, 0.860265,
		-0.946257, -0.021556, -0.322697,
		26.536167, 28.444017, 32.558838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852968, 27.847651, 33.004410>,  <27.198545, 28.459106, 32.784725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852968, 27.847651, 33.004410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613066, 27.934837, 32.696442>,  <26.469124, 27.987150, 32.511662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613066, 27.934837, 32.696442>,  <26.852968, 27.847651, 33.004410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613066, 27.934837, 32.696442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057800, -0.947870, -0.313370,
		-0.798092, -0.232448, 0.555893,
		-0.599757, 0.217967, -0.769923,
		26.433138, 28.000227, 32.465466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423103, 27.264866, 32.926258>,  <26.852968, 27.847651, 33.004410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423103, 27.264866, 32.926258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434885, 27.448578, 32.571136>,  <26.441954, 27.558805, 32.358063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434885, 27.448578, 32.571136>,  <26.423103, 27.264866, 32.926258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434885, 27.448578, 32.571136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228910, -0.867685, -0.441275,
		-0.973002, -0.190228, -0.130692,
		0.029457, 0.459278, -0.887804,
		26.443722, 27.586361, 32.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065596, 26.835032, 32.488480>,  <26.423103, 27.264866, 32.926258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065596, 26.835032, 32.488480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299292, 27.065062, 32.259411>,  <26.439508, 27.203079, 32.121971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299292, 27.065062, 32.259411>,  <26.065596, 26.835032, 32.488480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299292, 27.065062, 32.259411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337002, -0.813816, -0.473427,
		-0.738305, 0.083604, -0.669265,
		0.584239, 0.575077, -0.572670,
		26.474564, 27.237585, 32.087608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055983, 26.585995, 31.850306>,  <26.065596, 26.835032, 32.488480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055983, 26.585995, 31.850306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402607, 26.785063, 31.835344>,  <26.610580, 26.904503, 31.826366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402607, 26.785063, 31.835344>,  <26.055983, 26.585995, 31.850306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402607, 26.785063, 31.835344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388839, -0.720238, -0.574510,
		-0.312856, 0.483302, -0.817643,
		0.866559, 0.497671, -0.037404,
		26.662575, 26.934364, 31.824123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346605, 26.691364, 31.161201>,  <26.055983, 26.585995, 31.850306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346605, 26.691364, 31.161201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640081, 26.654428, 31.430473>,  <26.816168, 26.632267, 31.592037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640081, 26.654428, 31.430473>,  <26.346605, 26.691364, 31.161201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640081, 26.654428, 31.430473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398561, -0.743904, -0.536430,
		0.550316, 0.661876, -0.508992,
		0.733691, -0.092342, 0.673180,
		26.860189, 26.626726, 31.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085936, 26.854969, 30.897196>,  <26.346605, 26.691364, 31.161201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085936, 26.854969, 30.897196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041403, 26.578672, 31.182987>,  <27.014683, 26.412893, 31.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041403, 26.578672, 31.182987>,  <27.085936, 26.854969, 30.897196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041403, 26.578672, 31.182987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287898, -0.710535, -0.642070,
		0.951167, 0.134213, 0.277970,
		-0.111333, -0.690743, 0.714478,
		27.008003, 26.371449, 31.397331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688496, 26.386305, 31.105190>,  <27.085936, 26.854969, 30.897196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688496, 26.386305, 31.105190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344055, 26.188982, 31.154430>,  <27.137390, 26.070589, 31.183975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344055, 26.188982, 31.154430>,  <27.688496, 26.386305, 31.105190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344055, 26.188982, 31.154430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308517, -0.699416, -0.644697,
		0.404132, -0.517171, 0.754461,
		-0.861101, -0.493307, 0.123100,
		27.085726, 26.040991, 31.191360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343704, 26.508057, 30.788965>,  <27.688496, 26.386305, 31.105190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343704, 26.508057, 30.788965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585260, 26.813427, 30.697317>,  <28.730194, 26.996649, 30.642328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585260, 26.813427, 30.697317>,  <28.343704, 26.508057, 30.788965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585260, 26.813427, 30.697317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255941, 0.457956, 0.851335,
		0.754858, -0.455472, 0.471947,
		0.603890, 0.763428, -0.229118,
		28.766428, 27.042456, 30.628582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884888, 26.591305, 31.351210>,  <28.343704, 26.508057, 30.788965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884888, 26.591305, 31.351210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785637, 26.922909, 31.150740>,  <28.726086, 27.121870, 31.030458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785637, 26.922909, 31.150740>,  <28.884888, 26.591305, 31.351210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785637, 26.922909, 31.150740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155516, 0.476555, 0.865280,
		0.956163, 0.292642, 0.010676,
		-0.248129, 0.829009, -0.501175,
		28.711199, 27.171612, 31.000387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589748, 26.740566, 31.151066>,  <28.884888, 26.591305, 31.351210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589748, 26.740566, 31.151066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595758, 27.000118, 31.455362>,  <29.599365, 27.155849, 31.637939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595758, 27.000118, 31.455362>,  <29.589748, 26.740566, 31.151066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595758, 27.000118, 31.455362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973458, -0.183267, 0.137090,
		0.228374, 0.738489, -0.634412,
		0.015027, 0.648881, 0.760741,
		29.600267, 27.194782, 31.683584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124321, 27.266745, 31.092951>,  <29.589748, 26.740566, 31.151066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124321, 27.266745, 31.092951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049780, 27.160639, 31.471350>,  <30.005056, 27.096975, 31.698389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049780, 27.160639, 31.471350>,  <30.124321, 27.266745, 31.092951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049780, 27.160639, 31.471350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982155, -0.025402, 0.186351,
		-0.025402, 0.963841, 0.265264,
		-0.186351, -0.265264, 0.945996,
		29.993876, 27.081060, 31.755148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416620, 26.489115, 31.309744>,  <30.124321, 27.266745, 31.092951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416620, 26.489115, 31.309744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042048, 26.447157, 31.443663>,  <29.817303, 26.421982, 31.524014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042048, 26.447157, 31.443663>,  <30.416620, 26.489115, 31.309744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042048, 26.447157, 31.443663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280997, -0.795623, 0.536680,
		0.210076, 0.596642, 0.774523,
		-0.936434, -0.104895, 0.334796,
		29.761118, 26.415688, 31.544102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383587, 26.599682, 32.077030>,  <30.416620, 26.489115, 31.309744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383587, 26.599682, 32.077030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094948, 26.351151, 31.954884>,  <29.921764, 26.202032, 31.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094948, 26.351151, 31.954884>,  <30.383587, 26.599682, 32.077030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094948, 26.351151, 31.954884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270505, -0.659054, 0.701765,
		-0.637281, 0.423788, 0.643644,
		-0.721596, -0.621330, -0.305366,
		29.878469, 26.164751, 31.863274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087769, 26.311621, 32.693848>,  <30.383587, 26.599682, 32.077030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087769, 26.311621, 32.693848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005520, 26.043541, 32.408596>,  <29.956171, 25.882694, 32.237446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005520, 26.043541, 32.408596>,  <30.087769, 26.311621, 32.693848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005520, 26.043541, 32.408596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464205, -0.708302, 0.531811,
		-0.861530, -0.221686, 0.456752,
		-0.205623, -0.670197, -0.713130,
		29.943832, 25.842482, 32.194656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297827, 26.491682, 32.757607>,  <30.087769, 26.311621, 32.693848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297827, 26.491682, 32.757607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977552, 26.502489, 32.996994>,  <28.785387, 26.508972, 33.140629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977552, 26.502489, 32.996994>,  <29.297827, 26.491682, 32.757607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977552, 26.502489, 32.996994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041552, 0.994072, -0.100466,
		-0.597640, -0.105310, -0.794819,
		-0.800687, 0.027016, 0.598473,
		28.737347, 26.510593, 33.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774971, 26.822756, 32.379021>,  <29.297827, 26.491682, 32.757607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774971, 26.822756, 32.379021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704235, 26.869446, 32.769939>,  <28.661795, 26.897461, 33.004490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704235, 26.869446, 32.769939>,  <28.774971, 26.822756, 32.379021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704235, 26.869446, 32.769939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042265, 0.992927, -0.110947,
		-0.983332, 0.021686, -0.180521,
		-0.176838, 0.116727, 0.977294,
		28.651184, 26.904465, 33.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224316, 27.224707, 32.405003>,  <28.774971, 26.822756, 32.379021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224316, 27.224707, 32.405003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390249, 27.271585, 32.765930>,  <28.489809, 27.299713, 32.982487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390249, 27.271585, 32.765930>,  <28.224316, 27.224707, 32.405003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390249, 27.271585, 32.765930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015271, 0.990634, -0.135688,
		-0.909768, 0.070067, 0.409160,
		0.414835, 0.117197, 0.902317,
		28.514700, 27.306744, 33.036625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832764, 27.880585, 32.788006>,  <28.224316, 27.224707, 32.405003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832764, 27.880585, 32.788006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180553, 27.824789, 32.977554>,  <28.389227, 27.791311, 33.091282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180553, 27.824789, 32.977554>,  <27.832764, 27.880585, 32.788006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180553, 27.824789, 32.977554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104562, 0.989536, 0.099426,
		-0.482782, -0.036899, 0.874963,
		0.869476, -0.139489, 0.473871,
		28.441397, 27.782942, 33.119717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811861, 28.331709, 33.302200>,  <27.832764, 27.880585, 32.788006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811861, 28.331709, 33.302200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201670, 28.252346, 33.260349>,  <28.435555, 28.204729, 33.235241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201670, 28.252346, 33.260349>,  <27.811861, 28.331709, 33.302200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201670, 28.252346, 33.260349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208921, 0.972654, 0.101468,
		0.081632, -0.120741, 0.989322,
		0.974519, -0.198407, -0.104625,
		28.494026, 28.192823, 33.228962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057251, 28.871326, 33.744442>,  <27.811861, 28.331709, 33.302200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057251, 28.871326, 33.744442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377195, 28.755293, 33.534271>,  <28.569162, 28.685673, 33.408169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377195, 28.755293, 33.534271>,  <28.057251, 28.871326, 33.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377195, 28.755293, 33.534271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349655, 0.936757, 0.015105,
		0.487819, -0.195801, 0.850703,
		0.799859, -0.290084, -0.525430,
		28.617153, 28.668268, 33.376640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704077, 29.045572, 34.156662>,  <28.057251, 28.871326, 33.744442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704077, 29.045572, 34.156662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782225, 29.019913, 33.765209>,  <28.829113, 29.004517, 33.530338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782225, 29.019913, 33.765209>,  <28.704077, 29.045572, 34.156662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782225, 29.019913, 33.765209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362292, 0.931997, 0.011235,
		0.911358, -0.356745, 0.205326,
		0.195371, -0.064149, -0.978629,
		28.840836, 29.000668, 33.471619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384768, 29.386560, 34.140175>,  <28.704077, 29.045572, 34.156662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384768, 29.386560, 34.140175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288050, 29.380062, 33.752098>,  <29.230019, 29.376163, 33.519253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288050, 29.380062, 33.752098>,  <29.384768, 29.386560, 34.140175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288050, 29.380062, 33.752098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379064, 0.918826, -0.109859,
		0.893222, -0.394328, -0.216009,
		-0.241796, -0.016247, -0.970191,
		29.215511, 29.375187, 33.461040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879404, 29.693314, 33.766346>,  <29.384768, 29.386560, 34.140175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879404, 29.693314, 33.766346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570410, 29.729801, 33.514969>,  <29.385014, 29.751694, 33.364143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570410, 29.729801, 33.514969>,  <29.879404, 29.693314, 33.766346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570410, 29.729801, 33.514969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292125, 0.929747, -0.224129,
		0.563849, -0.356722, -0.744864,
		-0.772487, 0.091219, -0.628445,
		29.338663, 29.757166, 33.326435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213779, 29.929287, 33.124733>,  <29.879404, 29.693314, 33.766346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213779, 29.929287, 33.124733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839260, 30.043110, 33.042393>,  <29.614550, 30.111404, 32.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839260, 30.043110, 33.042393>,  <30.213779, 29.929287, 33.124733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839260, 30.043110, 33.042393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288184, 0.957489, 0.012798,
		0.200740, -0.047339, -0.978500,
		-0.936297, 0.284558, -0.205849,
		29.558371, 30.128477, 32.980637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237902, 30.530439, 32.608841>,  <30.213779, 29.929287, 33.124733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237902, 30.530439, 32.608841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884098, 30.558466, 32.793335>,  <29.671816, 30.575281, 32.904030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884098, 30.558466, 32.793335>,  <30.237902, 30.530439, 32.608841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884098, 30.558466, 32.793335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043350, 0.996724, -0.068278,
		-0.464509, -0.040398, -0.884647,
		-0.884507, 0.070065, 0.461236,
		29.618746, 30.579485, 32.931705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862976, 31.040525, 32.248959>,  <30.237902, 30.530439, 32.608841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862976, 31.040525, 32.248959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652193, 31.007542, 32.587311>,  <29.525724, 30.987751, 32.790321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652193, 31.007542, 32.587311>,  <29.862976, 31.040525, 32.248959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652193, 31.007542, 32.587311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124850, 0.991995, 0.018927,
		-0.840672, -0.095635, -0.533033,
		-0.526956, -0.082461, 0.845883,
		29.494106, 30.982803, 32.841076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298954, 31.567841, 32.244995>,  <29.862976, 31.040525, 32.248959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298954, 31.567841, 32.244995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333450, 31.501123, 32.637882>,  <29.354147, 31.461092, 32.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333450, 31.501123, 32.637882>,  <29.298954, 31.567841, 32.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333450, 31.501123, 32.637882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064016, 0.982921, 0.172535,
		-0.994216, -0.077757, 0.074089,
		0.086239, -0.166794, 0.982213,
		29.359322, 31.451086, 32.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800282, 32.006283, 32.572708>,  <29.298954, 31.567841, 32.244995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800282, 32.006283, 32.572708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055218, 31.942570, 32.874287>,  <29.208179, 31.904343, 33.055233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055218, 31.942570, 32.874287>,  <28.800282, 32.006283, 32.572708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055218, 31.942570, 32.874287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151277, 0.933502, 0.325099,
		-0.755589, -0.321252, 0.570861,
		0.637339, -0.159283, 0.753942,
		29.246420, 31.894785, 33.100468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514988, 32.112244, 33.243408>,  <28.800282, 32.006283, 32.572708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514988, 32.112244, 33.243408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903503, 32.172176, 33.317322>,  <29.136614, 32.208138, 33.361668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903503, 32.172176, 33.317322>,  <28.514988, 32.112244, 33.243408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903503, 32.172176, 33.317322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234851, 0.727816, 0.644306,
		-0.037947, -0.669204, 0.742109,
		0.971290, 0.149835, 0.184782,
		29.194891, 32.217129, 33.372757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518719, 32.481503, 33.851429>,  <28.514988, 32.112244, 33.243408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518719, 32.481503, 33.851429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906351, 32.520420, 33.760731>,  <29.138931, 32.543770, 33.706314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906351, 32.520420, 33.760731>,  <28.518719, 32.481503, 33.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906351, 32.520420, 33.760731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041594, 0.841395, 0.538818,
		0.243206, -0.531591, 0.811334,
		0.969083, 0.097297, -0.226743,
		29.197075, 32.549610, 33.692707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760349, 32.767658, 34.385612>,  <28.518719, 32.481503, 33.851429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760349, 32.767658, 34.385612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060915, 32.849594, 34.134720>,  <29.241255, 32.898754, 33.984184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060915, 32.849594, 34.134720>,  <28.760349, 32.767658, 34.385612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060915, 32.849594, 34.134720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105020, 0.901349, 0.420167,
		0.651420, -0.381591, 0.655774,
		0.751414, 0.204836, -0.627232,
		29.286339, 32.911045, 33.946548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201836, 33.073868, 34.825619>,  <28.760349, 32.767658, 34.385612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201836, 33.073868, 34.825619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310747, 33.178947, 34.455353>,  <29.376093, 33.241993, 34.233192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310747, 33.178947, 34.455353>,  <29.201836, 33.073868, 34.825619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310747, 33.178947, 34.455353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157079, 0.936971, 0.312107,
		0.949311, -0.230381, 0.213851,
		0.272275, 0.262695, -0.925666,
		29.392431, 33.257755, 34.177654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905079, 33.265263, 34.840179>,  <29.201836, 33.073868, 34.825619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905079, 33.265263, 34.840179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708860, 33.449310, 34.544163>,  <29.591129, 33.559738, 34.366554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708860, 33.449310, 34.544163>,  <29.905079, 33.265263, 34.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708860, 33.449310, 34.544163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217046, 0.886987, 0.407608,
		0.843952, 0.039328, -0.534975,
		-0.490546, 0.460116, -0.740039,
		29.561697, 33.587345, 34.322151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275963, 33.849747, 34.782551>,  <29.905079, 33.265263, 34.840179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275963, 33.849747, 34.782551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937263, 33.939751, 34.589725>,  <29.734043, 33.993752, 34.474030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937263, 33.939751, 34.589725>,  <30.275963, 33.849747, 34.782551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937263, 33.939751, 34.589725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031557, 0.883313, 0.467721,
		0.531058, 0.411254, -0.740843,
		-0.846748, 0.225008, -0.482068,
		29.683239, 34.007252, 34.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401281, 34.441025, 34.594746>,  <30.275963, 33.849747, 34.782551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401281, 34.441025, 34.594746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001762, 34.459377, 34.587860>,  <29.762051, 34.470387, 34.583729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001762, 34.459377, 34.587860>,  <30.401281, 34.441025, 34.594746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001762, 34.459377, 34.587860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, 0.805441, 0.592070,
		0.041032, 0.590897, -0.805703,
		-0.998799, 0.045879, -0.017218,
		29.702124, 34.473141, 34.582695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222979, 35.173820, 34.582436>,  <30.401281, 34.441025, 34.594746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222979, 35.173820, 34.582436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882572, 35.007900, 34.711250>,  <29.678329, 34.908348, 34.788540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882572, 35.007900, 34.711250>,  <30.222979, 35.173820, 34.582436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882572, 35.007900, 34.711250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132155, 0.762677, 0.633134,
		-0.508240, 0.496247, -0.703868,
		-0.851015, -0.414804, 0.322041,
		29.627268, 34.883457, 34.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400291, 35.189915, 35.227703>,  <30.222979, 35.173820, 34.582436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400291, 35.189915, 35.227703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794357, 35.159405, 35.166210>,  <31.030796, 35.141098, 35.129314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794357, 35.159405, 35.166210>,  <30.400291, 35.189915, 35.227703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794357, 35.159405, 35.166210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136360, -0.196018, 0.971073,
		-0.104205, -0.977629, -0.182709,
		0.985164, -0.076276, -0.153736,
		31.089907, 35.136520, 35.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771084, 34.771160, 35.710346>,  <30.400291, 35.189915, 35.227703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771084, 34.771160, 35.710346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101767, 34.960064, 35.588020>,  <31.300177, 35.073406, 35.514626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101767, 34.960064, 35.588020>,  <30.771084, 34.771160, 35.710346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101767, 34.960064, 35.588020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389962, -0.089155, 0.916505,
		0.405563, -0.876939, -0.257869,
		0.826709, 0.472260, -0.305815,
		31.349779, 35.101742, 35.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437698, 34.524956, 35.971912>,  <30.771084, 34.771160, 35.710346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437698, 34.524956, 35.971912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495491, 34.907879, 35.871758>,  <31.530167, 35.137630, 35.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495491, 34.907879, 35.871758>,  <31.437698, 34.524956, 35.971912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495491, 34.907879, 35.871758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662069, 0.094528, 0.743457,
		0.735384, -0.273186, -0.620145,
		0.144481, 0.957305, -0.250382,
		31.538836, 35.195072, 35.796642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217087, 34.622494, 35.919746>,  <31.437698, 34.524956, 35.971912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217087, 34.622494, 35.919746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049522, 34.981537, 35.974621>,  <31.948984, 35.196964, 36.007545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049522, 34.981537, 35.974621>,  <32.217087, 34.622494, 35.919746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049522, 34.981537, 35.974621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736997, 0.247846, 0.628815,
		0.530427, 0.364521, -0.765357,
		-0.418906, 0.897606, 0.137186,
		31.923851, 35.250820, 36.015778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683147, 35.195827, 35.725498>,  <32.217087, 34.622494, 35.919746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683147, 35.195827, 35.725498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422634, 35.307590, 36.007706>,  <32.266327, 35.374649, 36.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422634, 35.307590, 36.007706>,  <32.683147, 35.195827, 35.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422634, 35.307590, 36.007706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756470, 0.312418, 0.574584,
		-0.059875, 0.907924, -0.414837,
		-0.651282, 0.279408, 0.705523,
		32.227249, 35.391415, 36.219364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147762, 35.523708, 36.268208>,  <32.683147, 35.195827, 35.725498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147762, 35.523708, 36.268208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783272, 35.620972, 36.401196>,  <32.564579, 35.679329, 36.480988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783272, 35.620972, 36.401196>,  <33.147762, 35.523708, 36.268208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783272, 35.620972, 36.401196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409695, 0.451585, 0.792604,
		0.042592, 0.858454, -0.511119,
		-0.911228, 0.243162, 0.332470,
		32.509903, 35.693920, 36.500938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101879, 36.321457, 36.207893>,  <33.147762, 35.523708, 36.268208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101879, 36.321457, 36.207893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913559, 36.112968, 36.492619>,  <32.800568, 35.987877, 36.663452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913559, 36.112968, 36.492619>,  <33.101879, 36.321457, 36.207893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913559, 36.112968, 36.492619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427453, 0.571033, 0.700860,
		-0.771771, 0.634231, -0.046044,
		-0.470800, -0.521222, 0.711811,
		32.772320, 35.956600, 36.706161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929428, 36.802715, 36.629593>,  <33.101879, 36.321457, 36.207893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929428, 36.802715, 36.629593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920261, 36.483665, 36.870682>,  <32.914761, 36.292236, 37.015335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920261, 36.483665, 36.870682>,  <32.929428, 36.802715, 36.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920261, 36.483665, 36.870682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272730, 0.575023, 0.771341,
		-0.961818, 0.182054, 0.204361,
		-0.022914, -0.797625, 0.602719,
		32.913387, 36.244377, 37.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487213, 37.005501, 37.243542>,  <32.929428, 36.802715, 36.629593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487213, 37.005501, 37.243542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676628, 36.678638, 37.375004>,  <32.790279, 36.482521, 37.453880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676628, 36.678638, 37.375004>,  <32.487213, 37.005501, 37.243542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676628, 36.678638, 37.375004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363899, 0.521320, 0.771882,
		-0.802082, -0.245922, 0.544230,
		0.473541, -0.817158, 0.328651,
		32.818691, 36.433491, 37.473598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225224, 36.913918, 37.878403>,  <32.487213, 37.005501, 37.243542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225224, 36.913918, 37.878403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590286, 36.751663, 37.858307>,  <32.809322, 36.654312, 37.846249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590286, 36.751663, 37.858307>,  <32.225224, 36.913918, 37.878403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590286, 36.751663, 37.858307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313799, 0.616616, 0.722021,
		-0.261898, -0.674720, 0.690044,
		0.912655, -0.405632, -0.050236,
		32.864082, 36.629974, 37.843235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423737, 36.715672, 38.565456>,  <32.225224, 36.913918, 37.878403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423737, 36.715672, 38.565456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760849, 36.757755, 38.354305>,  <32.963116, 36.783005, 38.227615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760849, 36.757755, 38.354305>,  <32.423737, 36.715672, 38.565456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760849, 36.757755, 38.354305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422133, 0.479281, 0.769476,
		0.333954, -0.871333, 0.359518,
		0.842780, 0.105205, -0.527877,
		33.013683, 36.789318, 38.195942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881836, 36.539059, 38.986217>,  <32.423737, 36.715672, 38.565456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881836, 36.539059, 38.986217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106865, 36.742142, 38.725220>,  <33.241882, 36.863991, 38.568623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106865, 36.742142, 38.725220>,  <32.881836, 36.539059, 38.986217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106865, 36.742142, 38.725220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576315, 0.325040, 0.749806,
		0.592771, -0.797858, -0.109744,
		0.562568, 0.507711, -0.652493,
		33.275635, 36.894455, 38.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535698, 36.584515, 39.393898>,  <32.881836, 36.539059, 38.986217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535698, 36.584515, 39.393898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560543, 36.828934, 39.078236>,  <33.575451, 36.975586, 38.888840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560543, 36.828934, 39.078236>,  <33.535698, 36.584515, 39.393898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560543, 36.828934, 39.078236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542499, 0.643010, 0.540586,
		0.837758, -0.461690, -0.291555,
		0.062110, 0.611049, -0.789153,
		33.579178, 37.012249, 38.841488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253502, 36.836456, 39.259678>,  <33.535698, 36.584515, 39.393898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253502, 36.836456, 39.259678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992657, 37.098957, 39.107845>,  <33.836147, 37.256458, 39.016747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992657, 37.098957, 39.107845>,  <34.253502, 36.836456, 39.259678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992657, 37.098957, 39.107845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416867, 0.728596, 0.543479,
		0.633217, 0.196178, -0.748699,
		-0.652118, 0.656248, -0.379580,
		33.797020, 37.295830, 38.993973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643696, 37.466339, 38.948494>,  <34.253502, 36.836456, 39.259678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643696, 37.466339, 38.948494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277771, 37.594448, 39.046921>,  <34.058216, 37.671314, 39.105976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277771, 37.594448, 39.046921>,  <34.643696, 37.466339, 38.948494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277771, 37.594448, 39.046921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403374, 0.755086, 0.516851,
		-0.020270, 0.572078, -0.819949,
		-0.914811, 0.320269, 0.246067,
		34.003326, 37.690529, 39.120739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693577, 38.201572, 39.059521>,  <34.643696, 37.466339, 38.948494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693577, 38.201572, 39.059521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347267, 38.152180, 39.253510>,  <34.139481, 38.122543, 39.369904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347267, 38.152180, 39.253510>,  <34.693577, 38.201572, 39.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347267, 38.152180, 39.253510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307169, 0.633930, 0.709774,
		-0.395081, 0.763468, -0.510908,
		-0.865770, -0.123484, 0.484968,
		34.087536, 38.115135, 39.398998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487682, 38.900227, 39.256592>,  <34.693577, 38.201572, 39.059521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487682, 38.900227, 39.256592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289589, 38.635303, 39.481480>,  <34.170734, 38.476349, 39.616413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289589, 38.635303, 39.481480>,  <34.487682, 38.900227, 39.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289589, 38.635303, 39.481480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100888, 0.598925, 0.794424,
		-0.862881, 0.450148, -0.229789,
		-0.495235, -0.662311, 0.562216,
		34.141018, 38.436611, 39.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153584, 39.372799, 39.750004>,  <34.487682, 38.900227, 39.256592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153584, 39.372799, 39.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146805, 39.012768, 39.924168>,  <34.142738, 38.796749, 40.028664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146805, 39.012768, 39.924168>,  <34.153584, 39.372799, 39.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146805, 39.012768, 39.924168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088423, 0.432414, 0.897329,
		-0.995939, 0.053710, 0.072258,
		-0.016950, -0.900074, 0.435407,
		34.141720, 38.742744, 40.054790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044830, 39.556122, 40.392956>,  <34.153584, 39.372799, 39.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044830, 39.556122, 40.392956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131950, 39.167881, 40.433937>,  <34.184223, 38.934937, 40.458527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131950, 39.167881, 40.433937>,  <34.044830, 39.556122, 40.392956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131950, 39.167881, 40.433937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105245, 0.127716, 0.986211,
		-0.970302, -0.204016, 0.129968,
		0.217802, -0.970601, 0.102452,
		34.197292, 38.876701, 40.464672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505859, 39.227322, 40.846596>,  <34.044830, 39.556122, 40.392956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505859, 39.227322, 40.846596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840855, 39.010761, 40.876244>,  <34.041851, 38.880825, 40.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840855, 39.010761, 40.876244>,  <33.505859, 39.227322, 40.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840855, 39.010761, 40.876244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001729, 0.138270, 0.990393,
		-0.546451, -0.829316, 0.116736,
		0.837489, -0.541403, 0.074124,
		34.092102, 38.848339, 40.898479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412716, 38.649509, 41.208778>,  <33.505859, 39.227322, 40.846596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412716, 38.649509, 41.208778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806755, 38.703106, 41.251904>,  <34.043179, 38.735264, 41.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806755, 38.703106, 41.251904>,  <33.412716, 38.649509, 41.208778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806755, 38.703106, 41.251904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126012, 0.135696, 0.982704,
		0.117030, -0.981650, 0.150557,
		0.985102, 0.133977, 0.107819,
		34.102283, 38.743301, 41.284248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553677, 38.385044, 41.843609>,  <33.412716, 38.649509, 41.208778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553677, 38.385044, 41.843609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884754, 38.603458, 41.791813>,  <34.083401, 38.734509, 41.760735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884754, 38.603458, 41.791813>,  <33.553677, 38.385044, 41.843609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884754, 38.603458, 41.791813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041578, 0.289778, 0.956190,
		0.559640, -0.786047, 0.262550,
		0.827692, 0.546039, -0.129489,
		34.133060, 38.767269, 41.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928646, 38.230312, 42.503433>,  <33.553677, 38.385044, 41.843609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928646, 38.230312, 42.503433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093925, 38.560013, 42.348579>,  <34.193092, 38.757832, 42.255669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093925, 38.560013, 42.348579>,  <33.928646, 38.230312, 42.503433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093925, 38.560013, 42.348579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172804, 0.346430, 0.922022,
		0.894093, -0.447880, 0.000712,
		0.413202, 0.824251, -0.387136,
		34.217888, 38.807289, 42.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581161, 38.359943, 42.824696>,  <33.928646, 38.230312, 42.503433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581161, 38.359943, 42.824696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445099, 38.709080, 42.684731>,  <34.363461, 38.918564, 42.600750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445099, 38.709080, 42.684731>,  <34.581161, 38.359943, 42.824696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445099, 38.709080, 42.684731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046341, 0.387213, 0.920825,
		0.939228, 0.297006, -0.172160,
		-0.340153, 0.872842, -0.349917,
		34.343052, 38.970932, 42.579754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096333, 38.969948, 42.991463>,  <34.581161, 38.359943, 42.824696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096333, 38.969948, 42.991463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724129, 39.112122, 42.956100>,  <34.500805, 39.197426, 42.934883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724129, 39.112122, 42.956100>,  <35.096333, 38.969948, 42.991463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724129, 39.112122, 42.956100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056721, 0.378310, 0.923940,
		0.361847, 0.854721, -0.372182,
		-0.930510, 0.355436, -0.088409,
		34.444977, 39.218754, 42.929577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145260, 39.509899, 43.400978>,  <35.096333, 38.969948, 42.991463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145260, 39.509899, 43.400978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751366, 39.465183, 43.347618>,  <34.515030, 39.438354, 43.315601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751366, 39.465183, 43.347618>,  <35.145260, 39.509899, 43.400978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751366, 39.465183, 43.347618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165663, 0.367027, 0.915340,
		-0.053363, 0.923469, -0.379944,
		-0.984738, -0.111788, -0.133399,
		34.455944, 39.431648, 43.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845318, 40.139877, 43.688747>,  <35.145260, 39.509899, 43.400978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845318, 40.139877, 43.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560566, 39.859116, 43.679344>,  <34.389713, 39.690659, 43.673702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560566, 39.859116, 43.679344>,  <34.845318, 40.139877, 43.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560566, 39.859116, 43.679344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318025, 0.292337, 0.901887,
		-0.626170, 0.649510, -0.431333,
		-0.711879, -0.701909, -0.023508,
		34.347004, 39.648544, 43.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274170, 40.456291, 44.102146>,  <34.845318, 40.139877, 43.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274170, 40.456291, 44.102146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208530, 40.061886, 44.090466>,  <34.169147, 39.825245, 44.083458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208530, 40.061886, 44.090466>,  <34.274170, 40.456291, 44.102146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208530, 40.061886, 44.090466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393079, 0.038211, 0.918711,
		-0.904743, 0.162241, -0.393850,
		-0.164102, -0.986011, -0.029202,
		34.159298, 39.766083, 44.081703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669956, 40.350819, 44.452354>,  <34.274170, 40.456291, 44.102146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669956, 40.350819, 44.452354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797249, 39.971672, 44.458973>,  <33.873627, 39.744183, 44.462944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797249, 39.971672, 44.458973>,  <33.669956, 40.350819, 44.452354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797249, 39.971672, 44.458973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259852, -0.070435, 0.963076,
		-0.911704, -0.310783, -0.268720,
		0.318235, -0.947868, 0.016541,
		33.892719, 39.687313, 44.463936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179142, 39.916195, 44.863342>,  <33.669956, 40.350819, 44.452354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179142, 39.916195, 44.863342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505894, 39.686390, 44.842762>,  <33.701942, 39.548508, 44.830414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505894, 39.686390, 44.842762>,  <33.179142, 39.916195, 44.863342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505894, 39.686390, 44.842762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221683, -0.395046, 0.891513,
		-0.532514, -0.716849, -0.450064,
		0.816876, -0.574514, -0.051454,
		33.750957, 39.514034, 44.827328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005070, 39.262112, 45.026367>,  <33.179142, 39.916195, 44.863342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005070, 39.262112, 45.026367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398430, 39.259487, 45.098896>,  <33.634445, 39.257912, 45.142414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398430, 39.259487, 45.098896>,  <33.005070, 39.262112, 45.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398430, 39.259487, 45.098896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172656, -0.341071, 0.924046,
		0.055782, -0.940015, -0.336543,
		0.983401, -0.006561, 0.181325,
		33.693451, 39.257519, 45.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130417, 38.521721, 45.306816>,  <33.005070, 39.262112, 45.026367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130417, 38.521721, 45.306816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419147, 38.765873, 45.437294>,  <33.592388, 38.912365, 45.515579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419147, 38.765873, 45.437294>,  <33.130417, 38.521721, 45.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419147, 38.765873, 45.437294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055227, -0.419023, 0.906294,
		0.689864, -0.672205, -0.268754,
		0.721830, 0.610377, 0.326193,
		33.635696, 38.948986, 45.535152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568756, 38.111942, 45.633781>,  <33.130417, 38.521721, 45.306816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568756, 38.111942, 45.633781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659584, 38.465149, 45.798088>,  <33.714081, 38.677071, 45.896671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659584, 38.465149, 45.798088>,  <33.568756, 38.111942, 45.633781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659584, 38.465149, 45.798088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057672, -0.433232, 0.899435,
		0.972169, -0.180545, -0.149299,
		0.227070, 0.883014, 0.410762,
		33.727707, 38.730053, 45.921318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029694, 37.922276, 46.183094>,  <33.568756, 38.111942, 45.633781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029694, 37.922276, 46.183094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908936, 38.287647, 46.292271>,  <33.836479, 38.506870, 46.357777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908936, 38.287647, 46.292271>,  <34.029694, 37.922276, 46.183094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908936, 38.287647, 46.292271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060252, -0.267444, 0.961688,
		0.951434, 0.306777, 0.025705,
		-0.301899, 0.913434, 0.272940,
		33.818367, 38.561676, 46.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471817, 38.208378, 46.696899>,  <34.029694, 37.922276, 46.183094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471817, 38.208378, 46.696899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127880, 38.405525, 46.750187>,  <33.921516, 38.523811, 46.782162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127880, 38.405525, 46.750187>,  <34.471817, 38.208378, 46.696899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127880, 38.405525, 46.750187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053502, -0.172515, 0.983553,
		0.507741, 0.852833, 0.121968,
		-0.859847, 0.492864, 0.133222,
		33.869926, 38.553383, 46.790154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698200, 38.663052, 47.245338>,  <34.471817, 38.208378, 46.696899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698200, 38.663052, 47.245338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298561, 38.680000, 47.246151>,  <34.058777, 38.690170, 47.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298561, 38.680000, 47.246151>,  <34.698200, 38.663052, 47.245338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298561, 38.680000, 47.246151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006965, -0.211039, 0.977453,
		0.041842, 0.976559, 0.211144,
		-0.999100, 0.042369, 0.002029,
		33.998833, 38.692711, 47.246761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448647, 39.182167, 47.775681>,  <34.698200, 38.663052, 47.245338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448647, 39.182167, 47.775681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138218, 38.939594, 47.706440>,  <33.951962, 38.794052, 47.664898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138218, 38.939594, 47.706440>,  <34.448647, 39.182167, 47.775681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138218, 38.939594, 47.706440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121886, -0.125072, 0.984632,
		-0.618758, 0.785241, 0.023150,
		-0.776069, -0.606427, -0.173099,
		33.905396, 38.757668, 47.654510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044754, 39.194813, 48.357174>,  <34.448647, 39.182167, 47.775681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044754, 39.194813, 48.357174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889294, 38.864597, 48.193493>,  <33.796017, 38.666470, 48.095284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889294, 38.864597, 48.193493>,  <34.044754, 39.194813, 48.357174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889294, 38.864597, 48.193493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042862, -0.427431, 0.903031,
		-0.920389, 0.368500, 0.130735,
		-0.388647, -0.825537, -0.409198,
		33.772701, 38.616936, 48.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354294, 39.090862, 48.676891>,  <34.044754, 39.194813, 48.357174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354294, 39.090862, 48.676891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518806, 38.752529, 48.541000>,  <33.617516, 38.549530, 48.459465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518806, 38.752529, 48.541000>,  <33.354294, 39.090862, 48.676891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518806, 38.752529, 48.541000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000313, -0.372577, 0.928001,
		-0.911509, -0.381776, -0.152969,
		0.411281, -0.845833, -0.339727,
		33.642189, 38.498779, 48.439083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979862, 38.468739, 48.800240>,  <33.354294, 39.090862, 48.676891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979862, 38.468739, 48.800240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360493, 38.351017, 48.764713>,  <33.588871, 38.280384, 48.743397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360493, 38.351017, 48.764713>,  <32.979862, 38.468739, 48.800240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360493, 38.351017, 48.764713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089304, -0.541108, 0.836198,
		-0.294154, -0.787775, -0.541188,
		0.951577, -0.294301, -0.088817,
		33.645966, 38.262726, 48.738068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061699, 37.744629, 49.098263>,  <32.979862, 38.468739, 48.800240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061699, 37.744629, 49.098263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435139, 37.887035, 49.082005>,  <33.659203, 37.972477, 49.072250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435139, 37.887035, 49.082005>,  <33.061699, 37.744629, 49.098263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435139, 37.887035, 49.082005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209533, -0.450377, 0.867904,
		0.290679, -0.818788, -0.495067,
		0.933596, 0.356014, -0.040648,
		33.715218, 37.993839, 49.069809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373631, 37.255516, 49.360779>,  <33.061699, 37.744629, 49.098263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373631, 37.255516, 49.360779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632767, 37.557728, 49.399734>,  <33.788246, 37.739056, 49.423107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632767, 37.557728, 49.399734>,  <33.373631, 37.255516, 49.360779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632767, 37.557728, 49.399734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336024, -0.398149, 0.853560,
		0.683663, -0.520245, -0.511811,
		0.647837, 0.755528, 0.097385,
		33.827118, 37.784386, 49.428951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856354, 36.861004, 49.741417>,  <33.373631, 37.255516, 49.360779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856354, 36.861004, 49.741417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938324, 37.250301, 49.782982>,  <33.987507, 37.483879, 49.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938324, 37.250301, 49.782982>,  <33.856354, 36.861004, 49.741417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938324, 37.250301, 49.782982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320611, -0.167057, 0.932363,
		0.924777, -0.157753, -0.346268,
		0.204930, 0.973245, 0.103913,
		33.999802, 37.542274, 49.814156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602772, 36.803848, 50.066803>,  <33.856354, 36.861004, 49.741417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602772, 36.803848, 50.066803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452888, 37.169273, 50.130051>,  <34.362961, 37.388527, 50.167999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452888, 37.169273, 50.130051>,  <34.602772, 36.803848, 50.066803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452888, 37.169273, 50.130051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297385, -0.043104, 0.953784,
		0.878156, 0.404408, -0.255529,
		-0.374704, 0.913562, 0.158117,
		34.340477, 37.443340, 50.177486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072525, 37.146606, 50.464497>,  <34.602772, 36.803848, 50.066803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072525, 37.146606, 50.464497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739307, 37.362129, 50.514664>,  <34.539379, 37.491444, 50.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739307, 37.362129, 50.514664>,  <35.072525, 37.146606, 50.464497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739307, 37.362129, 50.514664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060573, -0.136506, 0.988786,
		0.549884, 0.831297, 0.081078,
		-0.833042, 0.538806, 0.125417,
		34.489395, 37.523769, 50.552288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198444, 37.609612, 51.013744>,  <35.072525, 37.146606, 50.464497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198444, 37.609612, 51.013744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800201, 37.581280, 50.989246>,  <34.561256, 37.564281, 50.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800201, 37.581280, 50.989246>,  <35.198444, 37.609612, 51.013744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800201, 37.581280, 50.989246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057955, -0.047583, 0.997185,
		-0.073544, 0.996353, 0.043269,
		-0.995606, -0.070830, -0.061243,
		34.501518, 37.560032, 50.970875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080391, 37.993755, 51.604774>,  <35.198444, 37.609612, 51.013744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080391, 37.993755, 51.604774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750637, 37.789707, 51.506660>,  <34.552784, 37.667278, 51.447792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750637, 37.789707, 51.506660>,  <35.080391, 37.993755, 51.604774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750637, 37.789707, 51.506660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151216, -0.219112, 0.963910,
		-0.545459, 0.831723, 0.103493,
		-0.824383, -0.510124, -0.245287,
		34.503323, 37.636669, 51.433075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575981, 38.159870, 52.090958>,  <35.080391, 37.993755, 51.604774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575981, 38.159870, 52.090958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458290, 37.805199, 51.948280>,  <34.387676, 37.592396, 51.862675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458290, 37.805199, 51.948280>,  <34.575981, 38.159870, 52.090958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458290, 37.805199, 51.948280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154066, -0.324328, 0.933314,
		-0.943235, 0.329563, -0.041180,
		-0.294230, -0.886679, -0.356692,
		34.370022, 37.539196, 51.841274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917088, 37.895023, 52.310390>,  <34.575981, 38.159870, 52.090958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917088, 37.895023, 52.310390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152618, 37.585575, 52.216766>,  <34.293938, 37.399906, 52.160591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152618, 37.585575, 52.216766>,  <33.917088, 37.895023, 52.310390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152618, 37.585575, 52.216766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288983, -0.471951, 0.832918,
		-0.754830, -0.422808, -0.501463,
		0.588830, -0.773625, -0.234058,
		34.329269, 37.353489, 52.146549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495899, 37.303555, 52.412247>,  <33.917088, 37.895023, 52.310390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495899, 37.303555, 52.412247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888252, 37.226887, 52.425667>,  <34.123665, 37.180885, 52.433720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888252, 37.226887, 52.425667>,  <33.495899, 37.303555, 52.412247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888252, 37.226887, 52.425667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114225, -0.427602, 0.896721,
		-0.157523, -0.883414, -0.441322,
		0.980887, -0.191664, 0.033551,
		34.182518, 37.169388, 52.435734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490433, 36.570103, 52.600349>,  <33.495899, 37.303555, 52.412247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490433, 36.570103, 52.600349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795227, 36.805885, 52.707623>,  <33.978104, 36.947353, 52.771988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795227, 36.805885, 52.707623>,  <33.490433, 36.570103, 52.600349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795227, 36.805885, 52.707623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148957, -0.243485, 0.958398,
		0.630232, -0.770232, -0.097728,
		0.761984, 0.589456, 0.268184,
		34.023823, 36.982723, 52.788078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392513, 36.474243, 53.326210>,  <33.490433, 36.570103, 52.600349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392513, 36.474243, 53.326210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670574, 36.758728, 53.284386>,  <33.837410, 36.929420, 53.259289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670574, 36.758728, 53.284386>,  <33.392513, 36.474243, 53.326210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670574, 36.758728, 53.284386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070783, 0.077030, 0.994513,
		0.715366, -0.698742, 0.003206,
		0.695155, 0.711214, -0.104564,
		33.879120, 36.972092, 53.253017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961433, 36.348423, 53.753891>,  <33.392513, 36.474243, 53.326210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961433, 36.348423, 53.753891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903851, 36.736656, 53.676693>,  <33.869301, 36.969597, 53.630375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903851, 36.736656, 53.676693>,  <33.961433, 36.348423, 53.753891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903851, 36.736656, 53.676693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066752, 0.185062, 0.980457,
		0.987330, 0.154028, 0.038148,
		-0.143958, 0.970581, -0.192998,
		33.860664, 37.027832, 53.618793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096577, 36.760162, 54.408928>,  <33.961433, 36.348423, 53.753891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096577, 36.760162, 54.408928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480995, 36.654537, 54.376270>,  <34.711647, 36.591160, 54.356678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480995, 36.654537, 54.376270>,  <34.096577, 36.760162, 54.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480995, 36.654537, 54.376270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225218, -0.576921, -0.785136,
		0.160229, 0.772936, -0.613918,
		0.961043, -0.264067, -0.081640,
		34.769310, 36.575317, 54.351780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366482, 37.026886, 53.827560>,  <34.096577, 36.760162, 54.408928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366482, 37.026886, 53.827560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553467, 36.684246, 53.914932>,  <34.665657, 36.478661, 53.967358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553467, 36.684246, 53.914932>,  <34.366482, 37.026886, 53.827560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553467, 36.684246, 53.914932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229556, -0.356240, -0.905758,
		0.853689, 0.373264, -0.363167,
		0.467461, -0.856602, 0.218433,
		34.693707, 36.427265, 53.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915512, 36.887371, 53.295162>,  <34.366482, 37.026886, 53.827560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915512, 36.887371, 53.295162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741459, 36.563469, 53.452614>,  <34.637028, 36.369125, 53.547085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741459, 36.563469, 53.452614>,  <34.915512, 36.887371, 53.295162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741459, 36.563469, 53.452614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033643, -0.451510, -0.891631,
		0.899735, -0.374739, 0.223711,
		-0.435137, -0.809758, 0.393633,
		34.610916, 36.320541, 53.570705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235439, 36.134270, 53.101002>,  <34.915512, 36.887371, 53.295162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235439, 36.134270, 53.101002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845322, 36.128124, 53.189148>,  <34.611252, 36.124439, 53.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845322, 36.128124, 53.189148>,  <35.235439, 36.134270, 53.101002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845322, 36.128124, 53.189148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173594, -0.563640, -0.807574,
		0.136612, -0.825878, 0.547050,
		-0.975296, -0.015360, 0.220367,
		34.552734, 36.123516, 53.255257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100163, 35.655907, 53.496262>,  <35.235439, 36.134270, 53.101002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100163, 35.655907, 53.496262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814095, 35.768299, 53.240269>,  <34.642452, 35.835735, 53.086674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814095, 35.768299, 53.240269>,  <35.100163, 35.655907, 53.496262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814095, 35.768299, 53.240269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380978, -0.610949, -0.693972,
		-0.585990, -0.740128, 0.329887,
		-0.715172, 0.280981, -0.639983,
		34.599545, 35.852592, 53.048275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841736, 35.073421, 53.122280>,  <35.100163, 35.655907, 53.496262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841736, 35.073421, 53.122280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763748, 35.385849, 52.884991>,  <34.716953, 35.573307, 52.742615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763748, 35.385849, 52.884991>,  <34.841736, 35.073421, 53.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763748, 35.385849, 52.884991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351288, -0.509097, -0.785758,
		-0.915741, -0.361594, -0.175120,
		-0.194973, 0.781069, -0.593226,
		34.705257, 35.620171, 52.707024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325283, 34.883423, 52.526978>,  <34.841736, 35.073421, 53.122280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325283, 34.883423, 52.526978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576698, 35.176949, 52.423851>,  <34.727547, 35.353062, 52.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576698, 35.176949, 52.423851>,  <34.325283, 34.883423, 52.526978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576698, 35.176949, 52.423851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316950, -0.544351, -0.776675,
		-0.710272, 0.406454, -0.574725,
		0.628535, 0.733810, -0.257812,
		34.765259, 35.397091, 52.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354507, 34.931450, 51.782047>,  <34.325283, 34.883423, 52.526978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354507, 34.931450, 51.782047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664490, 35.177776, 51.838924>,  <34.850479, 35.325573, 51.873051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664490, 35.177776, 51.838924>,  <34.354507, 34.931450, 51.782047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664490, 35.177776, 51.838924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437960, -0.361033, -0.823314,
		-0.455675, 0.700303, -0.549487,
		0.774953, 0.615817, 0.142191,
		34.896976, 35.362522, 51.881580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361061, 35.273796, 51.083313>,  <34.354507, 34.931450, 51.782047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361061, 35.273796, 51.083313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696007, 35.301872, 51.300159>,  <34.896973, 35.318718, 51.430267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696007, 35.301872, 51.300159>,  <34.361061, 35.273796, 51.083313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696007, 35.301872, 51.300159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546473, -0.132270, -0.826965,
		0.013658, 0.988725, -0.149117,
		0.837365, 0.070193, 0.542119,
		34.947216, 35.322929, 51.462795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828121, 35.784882, 50.819618>,  <34.361061, 35.273796, 51.083313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828121, 35.784882, 50.819618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052429, 35.542183, 51.044968>,  <35.187016, 35.396564, 51.180176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052429, 35.542183, 51.044968>,  <34.828121, 35.784882, 50.819618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052429, 35.542183, 51.044968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576671, -0.202039, -0.791600,
		0.594127, 0.768788, 0.236597,
		0.560771, -0.606749, 0.563375,
		35.220661, 35.360157, 51.213982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528378, 35.976070, 50.599678>,  <34.828121, 35.784882, 50.819618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528378, 35.976070, 50.599678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531792, 35.604412, 50.747520>,  <35.533840, 35.381416, 50.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531792, 35.604412, 50.747520>,  <35.528378, 35.976070, 50.599678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531792, 35.604412, 50.747520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610114, -0.288008, -0.738114,
		0.792268, 0.231802, 0.564428,
		0.008537, -0.929149, 0.369606,
		35.534351, 35.325668, 50.858402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197151, 35.910206, 50.615120>,  <35.528378, 35.976070, 50.599678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197151, 35.910206, 50.615120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030296, 35.546810, 50.625282>,  <35.930183, 35.328773, 50.631382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030296, 35.546810, 50.625282>,  <36.197151, 35.910206, 50.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030296, 35.546810, 50.625282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608462, -0.299925, -0.734724,
		0.675110, -0.291018, 0.677890,
		-0.417134, -0.908490, 0.025409,
		35.905155, 35.274261, 50.632904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751106, 35.463432, 50.443310>,  <36.197151, 35.910206, 50.615120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751106, 35.463432, 50.443310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447277, 35.210552, 50.382149>,  <36.264980, 35.058823, 50.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447277, 35.210552, 50.382149>,  <36.751106, 35.463432, 50.443310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447277, 35.210552, 50.382149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453599, -0.346395, -0.821133,
		0.466156, -0.693062, 0.549876,
		-0.759570, -0.632199, -0.152898,
		36.219406, 35.020893, 50.336281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041576, 34.708324, 50.283863>,  <36.751106, 35.463432, 50.443310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041576, 34.708324, 50.283863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667858, 34.742012, 50.145302>,  <36.443626, 34.762222, 50.062164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667858, 34.742012, 50.145302>,  <37.041576, 34.708324, 50.283863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667858, 34.742012, 50.145302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297480, -0.351306, -0.887744,
		-0.196455, -0.932465, 0.303172,
		-0.934297, 0.084214, -0.346406,
		36.387569, 34.767277, 50.041378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925606, 34.091236, 49.888882>,  <37.041576, 34.708324, 50.283863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925606, 34.091236, 49.888882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 34.353191, 49.771828>,  <36.479675, 34.510365, 49.701595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646900, 34.353191, 49.771828>,  <36.925606, 34.091236, 49.888882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646900, 34.353191, 49.771828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107710, -0.307823, -0.945327,
		-0.709166, -0.690192, 0.143943,
		-0.696766, 0.654890, -0.292638,
		36.437870, 34.549660, 49.684036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515278, 33.658665, 49.392376>,  <36.925606, 34.091236, 49.888882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515278, 33.658665, 49.392376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444458, 34.045017, 49.316765>,  <36.401966, 34.276829, 49.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444458, 34.045017, 49.316765>,  <36.515278, 33.658665, 49.392376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444458, 34.045017, 49.316765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096575, -0.174086, -0.979984,
		-0.979452, -0.191762, -0.062458,
		-0.177050, 0.965879, -0.189028,
		36.391342, 34.334782, 49.260056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059021, 33.673725, 48.911697>,  <36.515278, 33.658665, 49.392376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059021, 33.673725, 48.911697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239330, 34.027950, 48.866825>,  <36.347515, 34.240486, 48.839901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239330, 34.027950, 48.866825>,  <36.059021, 33.673725, 48.911697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239330, 34.027950, 48.866825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061044, -0.094792, -0.993624,
		-0.890547, 0.454751, 0.011328,
		0.450777, 0.885560, -0.112177,
		36.374565, 34.293617, 48.833172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697781, 33.993889, 48.376858>,  <36.059021, 33.673725, 48.911697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697781, 33.993889, 48.376858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037968, 34.203716, 48.392483>,  <36.242081, 34.329613, 48.401859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037968, 34.203716, 48.392483>,  <35.697781, 33.993889, 48.376858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037968, 34.203716, 48.392483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031505, 0.023329, -0.999231,
		-0.525080, 0.851046, 0.003314,
		0.850470, 0.524572, 0.039062,
		36.293110, 34.361088, 48.404202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623325, 34.437969, 47.889229>,  <35.697781, 33.993889, 48.376858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623325, 34.437969, 47.889229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018124, 34.415043, 47.949295>,  <36.255005, 34.401287, 47.985332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018124, 34.415043, 47.949295>,  <35.623325, 34.437969, 47.889229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018124, 34.415043, 47.949295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144439, -0.093520, -0.985084,
		0.070503, 0.993966, -0.084026,
		0.986999, -0.057315, 0.150161,
		36.314224, 34.397850, 47.994343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596573, 35.198608, 47.846825>,  <35.623325, 34.437969, 47.889229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596573, 35.198608, 47.846825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921448, 34.975857, 47.777271>,  <36.116371, 34.842205, 47.735538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921448, 34.975857, 47.777271>,  <35.596573, 35.198608, 47.846825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921448, 34.975857, 47.777271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084866, 0.182109, -0.979609,
		0.577189, 0.810384, 0.100647,
		0.812189, -0.556878, -0.173886,
		36.165104, 34.808792, 47.725105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889900, 35.535900, 47.249512>,  <35.596573, 35.198608, 47.846825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889900, 35.535900, 47.249512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043495, 35.167606, 47.221786>,  <36.135651, 34.946629, 47.205151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043495, 35.167606, 47.221786>,  <35.889900, 35.535900, 47.249512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043495, 35.167606, 47.221786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349508, -0.075461, -0.933889,
		0.854633, 0.382826, -0.350780,
		0.383987, -0.920733, -0.069309,
		36.158691, 34.891388, 47.200993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856564, 35.422165, 46.594128>,  <35.889900, 35.535900, 47.249512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856564, 35.422165, 46.594128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972153, 35.055443, 46.704376>,  <36.041504, 34.835411, 46.770527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972153, 35.055443, 46.704376>,  <35.856564, 35.422165, 46.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972153, 35.055443, 46.704376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195508, -0.338350, -0.920486,
		0.937162, 0.212106, -0.277016,
		0.288969, -0.916804, 0.275621,
		36.058842, 34.780403, 46.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382675, 35.238247, 46.196636>,  <35.856564, 35.422165, 46.594128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382675, 35.238247, 46.196636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203075, 34.895535, 46.298088>,  <36.095314, 34.689907, 46.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203075, 34.895535, 46.298088>,  <36.382675, 35.238247, 46.196636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203075, 34.895535, 46.298088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166453, -0.198685, -0.965825,
		0.877891, -0.475873, -0.053404,
		-0.448999, -0.856779, 0.253634,
		36.068375, 34.638500, 46.374180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 34.740738, 45.701401>,  <36.382675, 35.238247, 46.196636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615288, 34.740738, 45.701401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281387, 34.592941, 45.864697>,  <36.081047, 34.504261, 45.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281387, 34.592941, 45.864697>,  <36.615288, 34.740738, 45.701401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281387, 34.592941, 45.864697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285349, -0.343793, -0.894641,
		0.470916, -0.863295, 0.181547,
		-0.834754, -0.369496, 0.408239,
		36.030960, 34.482094, 45.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570606, 33.974129, 45.396584>,  <36.615288, 34.740738, 45.701401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570606, 33.974129, 45.396584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207851, 34.059521, 45.541904>,  <35.990200, 34.110756, 45.629097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207851, 34.059521, 45.541904>,  <36.570606, 33.974129, 45.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207851, 34.059521, 45.541904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412904, -0.278176, -0.867253,
		-0.084081, -0.936507, 0.340420,
		-0.906885, 0.213480, 0.363298,
		35.935787, 34.123566, 45.650894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074097, 33.478539, 45.253944>,  <36.570606, 33.974129, 45.396584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074097, 33.478539, 45.253944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798832, 33.766129, 45.292953>,  <35.633675, 33.938683, 45.316360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798832, 33.766129, 45.292953>,  <36.074097, 33.478539, 45.253944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798832, 33.766129, 45.292953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494297, -0.366163, -0.788413,
		-0.531141, -0.590759, 0.607367,
		-0.688157, 0.718978, 0.097526,
		35.592384, 33.981823, 45.322212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454536, 33.119617, 45.165684>,  <36.074097, 33.478539, 45.253944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454536, 33.119617, 45.165684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376526, 33.508186, 45.111568>,  <35.329720, 33.741329, 45.079098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376526, 33.508186, 45.111568>,  <35.454536, 33.119617, 45.165684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376526, 33.508186, 45.111568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626527, -0.229514, -0.744841,
		-0.754606, -0.060498, 0.653383,
		-0.195022, 0.971424, -0.135289,
		35.318020, 33.799614, 45.070980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703983, 33.141937, 44.997864>,  <35.454536, 33.119617, 45.165684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703983, 33.141937, 44.997864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843460, 33.491596, 44.862640>,  <34.927147, 33.701389, 44.781506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843460, 33.491596, 44.862640>,  <34.703983, 33.141937, 44.997864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843460, 33.491596, 44.862640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456033, -0.156880, -0.876026,
		-0.818808, 0.459631, 0.343936,
		0.348693, 0.874144, -0.338062,
		34.948067, 33.753838, 44.761223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150757, 33.525284, 44.755001>,  <34.703983, 33.141937, 44.997864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150757, 33.525284, 44.755001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474342, 33.677746, 44.575981>,  <34.668491, 33.769222, 44.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474342, 33.677746, 44.575981>,  <34.150757, 33.525284, 44.755001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474342, 33.677746, 44.575981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454419, -0.077536, -0.887407,
		-0.372944, 0.921253, 0.110482,
		0.808960, 0.381158, -0.447551,
		34.717030, 33.792095, 44.441715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947990, 34.071575, 44.239002>,  <34.150757, 33.525284, 44.755001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947990, 34.071575, 44.239002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314915, 33.991684, 44.101223>,  <34.535069, 33.943748, 44.018555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314915, 33.991684, 44.101223>,  <33.947990, 34.071575, 44.239002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314915, 33.991684, 44.101223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353558, -0.010753, -0.935351,
		0.183112, 0.979792, -0.080479,
		0.917315, -0.199728, -0.344444,
		34.590111, 33.931767, 43.997890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954975, 34.448895, 43.609886>,  <33.947990, 34.071575, 44.239002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954975, 34.448895, 43.609886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252048, 34.182514, 43.581814>,  <34.430294, 34.022686, 43.564972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252048, 34.182514, 43.581814>,  <33.954975, 34.448895, 43.609886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252048, 34.182514, 43.581814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124374, -0.034202, -0.991646,
		0.657988, 0.745210, -0.108228,
		0.742686, -0.665952, -0.070181,
		34.474854, 33.982727, 43.560760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460178, 34.653992, 43.150581>,  <33.954975, 34.448895, 43.609886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460178, 34.653992, 43.150581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506138, 34.256645, 43.152107>,  <34.533714, 34.018238, 43.153023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506138, 34.256645, 43.152107>,  <34.460178, 34.653992, 43.150581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506138, 34.256645, 43.152107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169388, 0.015810, -0.985423,
		0.978829, 0.113867, 0.170082,
		0.114896, -0.993370, 0.003812,
		34.540607, 33.958633, 43.153252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963882, 34.607002, 42.673347>,  <34.460178, 34.653992, 43.150581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963882, 34.607002, 42.673347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802204, 34.243214, 42.712311>,  <34.705196, 34.024940, 42.735691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802204, 34.243214, 42.712311>,  <34.963882, 34.607002, 42.673347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802204, 34.243214, 42.712311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020773, -0.115600, -0.993079,
		0.914438, -0.399370, 0.065617,
		-0.404191, -0.909472, 0.097413,
		34.680946, 33.970371, 42.741535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468452, 34.200222, 42.346905>,  <34.963882, 34.607002, 42.673347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468452, 34.200222, 42.346905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123329, 33.998089, 42.352612>,  <34.916256, 33.876808, 42.356033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123329, 33.998089, 42.352612>,  <35.468452, 34.200222, 42.346905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123329, 33.998089, 42.352612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023819, -0.068821, -0.997345,
		0.504976, -0.860174, 0.071415,
		-0.862805, -0.505336, 0.014264,
		34.864487, 33.846489, 42.356892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607021, 33.570541, 41.893620>,  <35.468452, 34.200222, 42.346905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607021, 33.570541, 41.893620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208519, 33.593834, 41.919159>,  <34.969418, 33.607807, 41.934483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208519, 33.593834, 41.919159>,  <35.607021, 33.570541, 41.893620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208519, 33.593834, 41.919159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072763, -0.166688, -0.983321,
		-0.046614, -0.984289, 0.170302,
		-0.996259, 0.058228, 0.063849,
		34.909641, 33.611301, 41.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415077, 32.956173, 41.495697>,  <35.607021, 33.570541, 41.893620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415077, 32.956173, 41.495697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090160, 33.188877, 41.512341>,  <34.895210, 33.328499, 41.522327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090160, 33.188877, 41.512341>,  <35.415077, 32.956173, 41.495697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090160, 33.188877, 41.512341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096703, -0.063989, -0.993254,
		-0.575178, -0.810836, 0.108236,
		-0.812292, 0.581765, 0.041605,
		34.846474, 33.363407, 41.524822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859283, 32.730774, 40.968884>,  <35.415077, 32.956173, 41.495697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859283, 32.730774, 40.968884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744465, 33.106098, 41.046009>,  <34.675575, 33.331291, 41.092285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744465, 33.106098, 41.046009>,  <34.859283, 32.730774, 40.968884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744465, 33.106098, 41.046009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002508, 0.202018, -0.979378,
		-0.957913, -0.280643, -0.060342,
		-0.287046, 0.938311, 0.192812,
		34.658352, 33.387592, 41.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255993, 32.794559, 40.615021>,  <34.859283, 32.730774, 40.968884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255993, 32.794559, 40.615021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408787, 33.161556, 40.659363>,  <34.500462, 33.381756, 40.685970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408787, 33.161556, 40.659363>,  <34.255993, 32.794559, 40.615021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408787, 33.161556, 40.659363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211132, 0.203418, -0.956057,
		-0.899728, 0.341794, 0.271416,
		0.381985, 0.917496, 0.110857,
		34.523384, 33.436806, 40.692619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703114, 33.142223, 40.275330>,  <34.255993, 32.794559, 40.615021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703114, 33.142223, 40.275330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018764, 33.386204, 40.304283>,  <34.208157, 33.532593, 40.321655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018764, 33.386204, 40.304283>,  <33.703114, 33.142223, 40.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018764, 33.386204, 40.304283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161535, 0.319779, -0.933621,
		-0.592605, 0.725056, 0.350875,
		0.789130, 0.609947, 0.072380,
		34.255505, 33.569187, 40.325996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419147, 33.839909, 40.107616>,  <33.703114, 33.142223, 40.275330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419147, 33.839909, 40.107616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808304, 33.805450, 40.021774>,  <34.041798, 33.784775, 39.970268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808304, 33.805450, 40.021774>,  <33.419147, 33.839909, 40.107616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808304, 33.805450, 40.021774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202938, 0.126888, -0.970935,
		0.110876, 0.988169, 0.105966,
		0.972894, -0.086149, -0.214606,
		34.100174, 33.779606, 39.957394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664005, 34.503262, 39.694561>,  <33.419147, 33.839909, 40.107616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664005, 34.503262, 39.694561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961033, 34.240482, 39.642395>,  <34.139252, 34.082817, 39.611095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961033, 34.240482, 39.642395>,  <33.664005, 34.503262, 39.694561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961033, 34.240482, 39.642395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097935, 0.299127, -0.949174,
		0.662567, 0.692059, 0.286462,
		0.742573, -0.656946, -0.130415,
		34.183804, 34.043400, 39.603271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052792, 34.894890, 39.233864>,  <33.664005, 34.503262, 39.694561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052792, 34.894890, 39.233864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176781, 34.514641, 39.227688>,  <34.251175, 34.286491, 39.223984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176781, 34.514641, 39.227688>,  <34.052792, 34.894890, 39.233864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176781, 34.514641, 39.227688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131959, 0.059095, -0.989492,
		0.941544, 0.304677, 0.143761,
		0.309971, -0.950621, -0.015436,
		34.269772, 34.229454, 39.223057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597401, 34.904640, 38.771049>,  <34.052792, 34.894890, 39.233864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597401, 34.904640, 38.771049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511566, 34.513977, 38.774948>,  <34.460068, 34.279579, 38.777287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511566, 34.513977, 38.774948>,  <34.597401, 34.904640, 38.771049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511566, 34.513977, 38.774948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009456, -0.012051, -0.999883,
		0.976660, -0.214467, 0.011821,
		-0.214584, -0.976657, 0.009742,
		34.447189, 34.220982, 38.777870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175472, 34.630295, 38.391865>,  <34.597401, 34.904640, 38.771049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175472, 34.630295, 38.391865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837677, 34.418060, 38.362717>,  <34.634998, 34.290718, 38.345226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837677, 34.418060, 38.362717>,  <35.175472, 34.630295, 38.391865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837677, 34.418060, 38.362717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116085, -0.048511, -0.992054,
		0.522837, -0.846241, 0.102560,
		-0.844492, -0.530588, -0.072872,
		34.584328, 34.258884, 38.340855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625816, 34.233387, 37.997395>,  <35.175472, 34.630295, 38.391865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625816, 34.233387, 37.997395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903004, 33.977642, 37.864124>,  <36.069317, 33.824196, 37.784161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903004, 33.977642, 37.864124>,  <35.625816, 34.233387, 37.997395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903004, 33.977642, 37.864124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351679, -0.103658, 0.930364,
		-0.629375, -0.761887, 0.153018,
		0.692971, -0.639361, -0.333180,
		36.110893, 33.785835, 37.764172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581059, 33.577160, 38.448524>,  <35.625816, 34.233387, 37.997395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581059, 33.577160, 38.448524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940308, 33.617970, 38.277428>,  <36.155857, 33.642456, 38.174770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940308, 33.617970, 38.277428>,  <35.581059, 33.577160, 38.448524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940308, 33.617970, 38.277428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438522, -0.280263, 0.853904,
		-0.032759, -0.954486, -0.296452,
		0.898123, 0.102027, -0.427744,
		36.209743, 33.648579, 38.149105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002769, 33.025837, 38.674595>,  <35.581059, 33.577160, 38.448524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002769, 33.025837, 38.674595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275940, 33.287148, 38.543842>,  <36.439842, 33.443932, 38.465389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275940, 33.287148, 38.543842>,  <36.002769, 33.025837, 38.674595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275940, 33.287148, 38.543842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527807, -0.131916, 0.839058,
		0.505013, -0.745542, -0.434890,
		0.682922, 0.653273, -0.326883,
		36.480816, 33.483128, 38.445778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647694, 32.585419, 38.620174>,  <36.002769, 33.025837, 38.674595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647694, 32.585419, 38.620174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759548, 32.968189, 38.651421>,  <36.826660, 33.197849, 38.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759548, 32.968189, 38.651421>,  <36.647694, 32.585419, 38.620174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759548, 32.968189, 38.651421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538138, -0.223595, 0.812658,
		0.795117, -0.185212, -0.577482,
		0.279636, 0.956923, 0.078115,
		36.843437, 33.255264, 38.674854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344307, 32.603035, 39.009682>,  <36.647694, 32.585419, 38.620174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344307, 32.603035, 39.009682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262196, 32.993999, 39.029797>,  <37.212929, 33.228577, 39.041866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262196, 32.993999, 39.029797>,  <37.344307, 32.603035, 39.009682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262196, 32.993999, 39.029797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574915, 0.078850, 0.814405,
		0.792043, 0.196091, -0.578115,
		-0.205282, 0.977410, 0.050283,
		37.200611, 33.287224, 39.044880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999363, 32.969036, 39.176033>,  <37.344307, 32.603035, 39.009682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999363, 32.969036, 39.176033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692303, 33.197216, 39.292858>,  <37.508068, 33.334126, 39.362953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692303, 33.197216, 39.292858>,  <37.999363, 32.969036, 39.176033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692303, 33.197216, 39.292858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410366, 0.087480, 0.907715,
		0.492256, 0.816660, -0.301247,
		-0.767648, 0.570450, 0.292067,
		37.462009, 33.368351, 39.380478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344475, 33.480366, 39.513004>,  <37.999363, 32.969036, 39.176033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344475, 33.480366, 39.513004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966255, 33.522602, 39.636150>,  <37.739323, 33.547943, 39.710037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966255, 33.522602, 39.636150>,  <38.344475, 33.480366, 39.513004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966255, 33.522602, 39.636150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324317, 0.226100, 0.918530,
		0.027379, 0.968364, -0.248034,
		-0.945552, 0.105590, 0.307866,
		37.682590, 33.554279, 39.728512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202995, 34.183109, 39.776260>,  <38.344475, 33.480366, 39.513004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202995, 34.183109, 39.776260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962013, 33.911392, 39.943882>,  <37.817425, 33.748360, 40.044456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962013, 33.911392, 39.943882>,  <38.202995, 34.183109, 39.776260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962013, 33.911392, 39.943882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281321, 0.310615, 0.907952,
		-0.746933, 0.664888, 0.003969,
		-0.602454, -0.679296, 0.419055,
		37.781277, 33.707603, 40.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125320, 34.452255, 40.421913>,  <38.202995, 34.183109, 39.776260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125320, 34.452255, 40.421913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967850, 34.085575, 40.449287>,  <37.873367, 33.865566, 40.465714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967850, 34.085575, 40.449287>,  <38.125320, 34.452255, 40.421913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967850, 34.085575, 40.449287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151158, 0.008878, 0.988470,
		-0.906734, 0.399487, 0.135071,
		-0.393681, -0.916696, 0.068435,
		37.849747, 33.810566, 40.469818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649460, 34.508495, 41.012451>,  <38.125320, 34.452255, 40.421913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649460, 34.508495, 41.012451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713566, 34.116272, 40.967171>,  <37.752029, 33.880936, 40.940002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713566, 34.116272, 40.967171>,  <37.649460, 34.508495, 41.012451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713566, 34.116272, 40.967171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139857, -0.090969, 0.985984,
		-0.977116, -0.173848, 0.122560,
		0.160263, -0.980562, -0.113201,
		37.761646, 33.822102, 40.933208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211838, 34.208179, 41.516171>,  <37.649460, 34.508495, 41.012451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211838, 34.208179, 41.516171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480808, 33.927429, 41.422173>,  <37.642189, 33.758980, 41.365776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480808, 33.927429, 41.422173>,  <37.211838, 34.208179, 41.516171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480808, 33.927429, 41.422173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145366, -0.186074, 0.971723,
		-0.725751, -0.687569, -0.023092,
		0.672424, -0.701872, -0.234993,
		37.682537, 33.716869, 41.351673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107334, 33.614388, 42.010578>,  <37.211838, 34.208179, 41.516171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107334, 33.614388, 42.010578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473663, 33.570354, 41.856094>,  <37.693459, 33.543934, 41.763405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473663, 33.570354, 41.856094>,  <37.107334, 33.614388, 42.010578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473663, 33.570354, 41.856094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339949, -0.299476, 0.891487,
		-0.213796, -0.947732, -0.236844,
		0.915820, -0.110081, -0.386207,
		37.748409, 33.537331, 41.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378521, 32.887341, 42.193531>,  <37.107334, 33.614388, 42.010578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378521, 32.887341, 42.193531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685955, 33.128956, 42.109238>,  <37.870415, 33.273926, 42.058662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685955, 33.128956, 42.109238>,  <37.378521, 32.887341, 42.193531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685955, 33.128956, 42.109238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388486, -0.178961, 0.903909,
		0.508286, -0.776599, -0.372209,
		0.768586, 0.604042, -0.210735,
		37.916531, 33.310169, 42.046017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015240, 32.480759, 42.281158>,  <37.378521, 32.887341, 42.193531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015240, 32.480759, 42.281158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074600, 32.873222, 42.330639>,  <38.110218, 33.108700, 42.360325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074600, 32.873222, 42.330639>,  <38.015240, 32.480759, 42.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074600, 32.873222, 42.330639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485488, -0.181255, 0.855247,
		0.861555, -0.066869, -0.503241,
		0.148405, 0.981160, 0.123697,
		38.119122, 33.167572, 42.367748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618382, 32.522350, 42.572289>,  <38.015240, 32.480759, 42.281158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618382, 32.522350, 42.572289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455723, 32.880291, 42.645924>,  <38.358128, 33.095055, 42.690105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455723, 32.880291, 42.645924>,  <38.618382, 32.522350, 42.572289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455723, 32.880291, 42.645924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368047, -0.023965, 0.929498,
		0.836172, 0.445726, -0.319601,
		-0.406643, 0.894849, 0.184087,
		38.333729, 33.148746, 42.701149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156658, 32.987606, 42.906181>,  <38.618382, 32.522350, 42.572289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156658, 32.987606, 42.906181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809803, 33.171364, 42.983158>,  <38.601692, 33.281620, 43.029346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809803, 33.171364, 42.983158>,  <39.156658, 32.987606, 42.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809803, 33.171364, 42.983158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251993, 0.071366, 0.965094,
		0.429625, 0.885361, -0.177648,
		-0.867134, 0.459394, 0.192444,
		38.549664, 33.309181, 43.040890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370644, 33.564632, 43.393700>,  <39.156658, 32.987606, 42.906181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370644, 33.564632, 43.393700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976562, 33.513668, 43.439568>,  <38.740116, 33.483089, 43.467087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976562, 33.513668, 43.439568>,  <39.370644, 33.564632, 43.393700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976562, 33.513668, 43.439568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111194, 0.034062, 0.993215,
		-0.130452, 0.991265, -0.019390,
		-0.985200, -0.127411, 0.114666,
		38.681004, 33.475445, 43.473969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181286, 34.152649, 43.807285>,  <39.370644, 33.564632, 43.393700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181286, 34.152649, 43.807285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899521, 33.873890, 43.861141>,  <38.730461, 33.706635, 43.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899521, 33.873890, 43.861141>,  <39.181286, 34.152649, 43.807285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899521, 33.873890, 43.861141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005587, 0.184243, 0.982865,
		-0.709765, 0.693098, -0.125890,
		-0.704416, -0.696900, 0.134642,
		38.688194, 33.664822, 43.901535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659191, 34.564682, 44.124981>,  <39.181286, 34.152649, 43.807285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659191, 34.564682, 44.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598942, 34.177258, 44.204170>,  <38.562794, 33.944801, 44.251686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598942, 34.177258, 44.204170>,  <38.659191, 34.564682, 44.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598942, 34.177258, 44.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070956, 0.189152, 0.979381,
		-0.986041, 0.161566, 0.040235,
		-0.150624, -0.968565, 0.197976,
		38.553753, 33.886688, 44.263561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279320, 34.537029, 44.740974>,  <38.659191, 34.564682, 44.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279320, 34.537029, 44.740974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411594, 34.159916, 44.723995>,  <38.490959, 33.933647, 44.713806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411594, 34.159916, 44.723995>,  <38.279320, 34.537029, 44.740974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411594, 34.159916, 44.723995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018832, -0.051563, 0.998492,
		-0.943552, -0.329391, -0.034806,
		0.330689, -0.942785, -0.042449,
		38.510799, 33.877079, 44.711262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921066, 34.235340, 45.185913>,  <38.279320, 34.537029, 44.740974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921066, 34.235340, 45.185913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235359, 33.988670, 45.166542>,  <38.423935, 33.840668, 45.154919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235359, 33.988670, 45.166542>,  <37.921066, 34.235340, 45.185913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235359, 33.988670, 45.166542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097222, 0.045795, 0.994209,
		-0.610881, -0.785888, 0.095936,
		0.785730, -0.616670, -0.048431,
		38.471077, 33.803669, 45.152012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797245, 33.647785, 45.655228>,  <37.921066, 34.235340, 45.185913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797245, 33.647785, 45.655228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190128, 33.685638, 45.590355>,  <38.425858, 33.708351, 45.551430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190128, 33.685638, 45.590355>,  <37.797245, 33.647785, 45.655228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190128, 33.685638, 45.590355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150751, 0.117564, 0.981556,
		0.111913, -0.988550, 0.101214,
		0.982217, 0.094591, -0.162182,
		38.484791, 33.714027, 45.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147156, 33.101109, 46.081062>,  <37.797245, 33.647785, 45.655228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147156, 33.101109, 46.081062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417316, 33.382454, 45.992416>,  <38.579411, 33.551262, 45.939228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417316, 33.382454, 45.992416>,  <38.147156, 33.101109, 46.081062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417316, 33.382454, 45.992416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229747, 0.084866, 0.969543,
		0.700751, -0.705743, -0.104278,
		0.675399, 0.703366, -0.221612,
		38.619938, 33.593464, 45.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738422, 32.840469, 46.462444>,  <38.147156, 33.101109, 46.081062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738422, 32.840469, 46.462444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812084, 33.222614, 46.370037>,  <38.856281, 33.451900, 46.314594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812084, 33.222614, 46.370037>,  <38.738422, 32.840469, 46.462444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812084, 33.222614, 46.370037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216145, 0.189922, 0.957712,
		0.958837, -0.226302, -0.171521,
		0.184156, 0.955363, -0.231018,
		38.867332, 33.509224, 46.300732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367867, 32.997864, 46.790840>,  <38.738422, 32.840469, 46.462444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367867, 32.997864, 46.790840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188522, 33.352650, 46.746532>,  <39.080917, 33.565521, 46.719948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188522, 33.352650, 46.746532>,  <39.367867, 32.997864, 46.790840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188522, 33.352650, 46.746532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066401, 0.156630, 0.985423,
		0.891383, 0.434470, -0.129122,
		-0.448361, 0.886963, -0.110768,
		39.054012, 33.618740, 46.713303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723415, 33.403687, 47.353359>,  <39.367867, 32.997864, 46.790840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723415, 33.403687, 47.353359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385612, 33.588737, 47.245453>,  <39.182930, 33.699768, 47.180710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385612, 33.588737, 47.245453>,  <39.723415, 33.403687, 47.353359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385612, 33.588737, 47.245453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097225, 0.362907, 0.926739,
		0.526638, 0.808870, -0.261500,
		-0.844511, 0.462632, -0.269763,
		39.132259, 33.727528, 47.164524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762646, 34.071621, 47.473804>,  <39.723415, 33.403687, 47.353359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762646, 34.071621, 47.473804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366302, 34.017715, 47.476250>,  <39.128498, 33.985374, 47.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366302, 34.017715, 47.476250>,  <39.762646, 34.071621, 47.473804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366302, 34.017715, 47.476250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043748, 0.363848, 0.930430,
		-0.127608, 0.921658, -0.366418,
		-0.990859, -0.134761, 0.006110,
		39.069046, 33.977287, 47.478081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566296, 34.683964, 47.600063>,  <39.762646, 34.071621, 47.473804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566296, 34.683964, 47.600063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246784, 34.459225, 47.686108>,  <39.055077, 34.324379, 47.737732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246784, 34.459225, 47.686108>,  <39.566296, 34.683964, 47.600063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246784, 34.459225, 47.686108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085717, 0.460183, 0.883677,
		-0.595485, 0.687425, -0.415745,
		-0.798781, -0.561852, 0.215108,
		39.007149, 34.290668, 47.750641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157486, 35.183537, 47.862957>,  <39.566296, 34.683964, 47.600063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157486, 35.183537, 47.862957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990650, 34.846951, 48.000347>,  <38.890549, 34.645000, 48.082779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990650, 34.846951, 48.000347>,  <39.157486, 35.183537, 47.862957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990650, 34.846951, 48.000347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019062, 0.385929, 0.922332,
		-0.908665, 0.378148, -0.177007,
		-0.417090, -0.841465, 0.343472,
		38.865524, 34.594513, 48.103390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665771, 35.422367, 48.359161>,  <39.157486, 35.183537, 47.862957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665771, 35.422367, 48.359161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738487, 35.038006, 48.442703>,  <38.782116, 34.807388, 48.492828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738487, 35.038006, 48.442703>,  <38.665771, 35.422367, 48.359161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738487, 35.038006, 48.442703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267386, 0.156087, 0.950864,
		-0.946286, -0.228704, -0.228556,
		0.181792, -0.960901, 0.208855,
		38.793026, 34.749737, 48.505360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163471, 35.175133, 48.876656>,  <38.665771, 35.422367, 48.359161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163471, 35.175133, 48.876656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472416, 34.921257, 48.886703>,  <38.657784, 34.768932, 48.892731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472416, 34.921257, 48.886703>,  <38.163471, 35.175133, 48.876656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472416, 34.921257, 48.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193952, -0.197995, 0.960823,
		-0.604851, -0.746972, -0.276023,
		0.772359, -0.634690, 0.025119,
		38.704124, 34.730850, 48.894238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890560, 34.668617, 49.327148>,  <38.163471, 35.175133, 48.876656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890560, 34.668617, 49.327148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286259, 34.612892, 49.309299>,  <38.523678, 34.579456, 49.298588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286259, 34.612892, 49.309299>,  <37.890560, 34.668617, 49.327148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286259, 34.612892, 49.309299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032629, -0.087231, 0.995654,
		-0.142601, -0.986399, -0.081747,
		0.989242, -0.139314, -0.044625,
		38.583031, 34.571098, 49.295914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996559, 34.198013, 49.807404>,  <37.890560, 34.668617, 49.327148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996559, 34.198013, 49.807404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369526, 34.340042, 49.780525>,  <38.593307, 34.425259, 49.764397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369526, 34.340042, 49.780525>,  <37.996559, 34.198013, 49.807404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369526, 34.340042, 49.780525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085935, -0.037251, 0.995604,
		0.351010, -0.934096, -0.065247,
		0.932420, 0.355074, -0.067196,
		38.649254, 34.446564, 49.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264927, 33.946999, 50.444592>,  <37.996559, 34.198013, 49.807404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264927, 33.946999, 50.444592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502594, 34.246941, 50.328186>,  <38.645195, 34.426907, 50.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502594, 34.246941, 50.328186>,  <38.264927, 33.946999, 50.444592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502594, 34.246941, 50.328186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189316, 0.221264, 0.956662,
		0.781746, -0.623509, -0.010492,
		0.594165, 0.749853, -0.291012,
		38.680843, 34.471897, 50.240883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700371, 33.909775, 50.936485>,  <38.264927, 33.946999, 50.444592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700371, 33.909775, 50.936485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739395, 34.281212, 50.793270>,  <38.762810, 34.504074, 50.707340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739395, 34.281212, 50.793270>,  <38.700371, 33.909775, 50.936485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739395, 34.281212, 50.793270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001794, 0.359918, 0.932982,
		0.995228, -0.090380, 0.036780,
		0.097561, 0.928596, -0.358038,
		38.768665, 34.559792, 50.685860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229095, 34.168789, 51.268806>,  <38.700371, 33.909775, 50.936485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229095, 34.168789, 51.268806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041859, 34.503300, 51.154594>,  <38.929516, 34.704006, 51.086067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041859, 34.503300, 51.154594>,  <39.229095, 34.168789, 51.268806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041859, 34.503300, 51.154594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181807, 0.407338, 0.894998,
		0.864774, 0.367033, -0.342714,
		-0.468094, 0.836279, -0.285527,
		38.901432, 34.754185, 51.068935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569145, 34.785179, 51.650551>,  <39.229095, 34.168789, 51.268806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569145, 34.785179, 51.650551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208267, 34.903095, 51.524609>,  <38.991741, 34.973843, 51.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208267, 34.903095, 51.524609>,  <39.569145, 34.785179, 51.650551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208267, 34.903095, 51.524609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069530, 0.621043, 0.780687,
		0.425678, 0.726227, -0.539808,
		-0.902199, 0.294788, -0.314858,
		38.937607, 34.991531, 51.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530296, 35.504307, 51.689880>,  <39.569145, 34.785179, 51.650551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530296, 35.504307, 51.689880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154682, 35.369873, 51.718910>,  <38.929314, 35.289215, 51.736328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154682, 35.369873, 51.718910>,  <39.530296, 35.504307, 51.689880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154682, 35.369873, 51.718910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194288, 0.692814, 0.694450,
		-0.283671, 0.638011, -0.715871,
		-0.939033, -0.336081, 0.072573,
		38.872971, 35.269051, 51.740681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267082, 36.189236, 51.913418>,  <39.530296, 35.504307, 51.689880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267082, 36.189236, 51.913418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989014, 35.915382, 52.001060>,  <38.822170, 35.751068, 52.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989014, 35.915382, 52.001060>,  <39.267082, 36.189236, 51.913418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989014, 35.915382, 52.001060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328608, 0.573755, 0.750215,
		-0.639335, 0.449531, -0.623837,
		-0.695174, -0.684636, 0.219102,
		38.780460, 35.709991, 52.066792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988087, 36.485340, 51.211224>,  <39.267082, 36.189236, 51.913418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988087, 36.485340, 51.211224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959919, 36.883987, 51.194275>,  <38.943016, 37.123177, 51.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959919, 36.883987, 51.194275>,  <38.988087, 36.485340, 51.211224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959919, 36.883987, 51.194275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513723, -0.072649, -0.854875,
		-0.855061, -0.038432, 0.517101,
		-0.070422, 0.996617, -0.042376,
		38.938793, 37.182972, 51.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242741, 36.607193, 50.872795>,  <38.988087, 36.485340, 51.211224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242741, 36.607193, 50.872795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473141, 36.932217, 50.837101>,  <38.611382, 37.127232, 50.815685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473141, 36.932217, 50.837101>,  <38.242741, 36.607193, 50.872795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473141, 36.932217, 50.837101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342021, 0.140406, -0.929144,
		-0.742457, 0.565711, 0.358787,
		0.576003, 0.812562, -0.089240,
		38.645943, 37.175983, 50.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827229, 37.154476, 50.639927>,  <38.242741, 36.607193, 50.872795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827229, 37.154476, 50.639927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194374, 37.279709, 50.542355>,  <38.414661, 37.354851, 50.483810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194374, 37.279709, 50.542355>,  <37.827229, 37.154476, 50.639927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194374, 37.279709, 50.542355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281249, 0.079421, -0.956343,
		-0.280042, 0.946399, 0.160952,
		0.917865, 0.313084, -0.243932,
		38.469734, 37.373634, 50.469173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725395, 37.744877, 50.114792>,  <37.827229, 37.154476, 50.639927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725395, 37.744877, 50.114792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111198, 37.647068, 50.074936>,  <38.342682, 37.588383, 50.051022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111198, 37.647068, 50.074936>,  <37.725395, 37.744877, 50.114792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111198, 37.647068, 50.074936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127613, -0.101337, -0.986634,
		0.231159, 0.964333, -0.128945,
		0.964510, -0.244524, -0.099637,
		38.400551, 37.573711, 50.045044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060287, 38.167152, 49.720112>,  <37.725395, 37.744877, 50.114792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060287, 38.167152, 49.720112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261845, 37.822678, 49.693420>,  <38.382778, 37.615993, 49.677406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261845, 37.822678, 49.693420>,  <38.060287, 38.167152, 49.720112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261845, 37.822678, 49.693420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078045, 0.122326, -0.989417,
		0.860233, 0.493352, 0.128850,
		0.503892, -0.861185, -0.066725,
		38.413013, 37.564323, 49.673401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443890, 38.297382, 49.110836>,  <38.060287, 38.167152, 49.720112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443890, 38.297382, 49.110836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438969, 37.900410, 49.159698>,  <38.436016, 37.662224, 49.189014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438969, 37.900410, 49.159698>,  <38.443890, 38.297382, 49.110836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438969, 37.900410, 49.159698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053692, -0.122640, -0.990998,
		0.998482, -0.005633, 0.054795,
		-0.012302, -0.992435, 0.122152,
		38.435276, 37.602680, 49.196342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897495, 38.054268, 48.661583>,  <38.443890, 38.297382, 49.110836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897495, 38.054268, 48.661583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683899, 37.731720, 48.763271>,  <38.555740, 37.538193, 48.824284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683899, 37.731720, 48.763271>,  <38.897495, 38.054268, 48.661583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683899, 37.731720, 48.763271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189217, -0.407029, -0.893602,
		0.824048, -0.429068, 0.369926,
		-0.533986, -0.806367, 0.254224,
		38.523705, 37.489811, 48.839539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309731, 37.476963, 48.397552>,  <38.897495, 38.054268, 48.661583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309731, 37.476963, 48.397552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933926, 37.353954, 48.457878>,  <38.708443, 37.280148, 48.494072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933926, 37.353954, 48.457878>,  <39.309731, 37.476963, 48.397552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933926, 37.353954, 48.457878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012652, -0.471178, -0.881948,
		0.342278, -0.826694, 0.446569,
		-0.939514, -0.307521, 0.150815,
		38.652073, 37.261700, 48.503124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356476, 36.849659, 48.274647>,  <39.309731, 37.476963, 48.397552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356476, 36.849659, 48.274647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975094, 36.953644, 48.213524>,  <38.746265, 37.016037, 48.176849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975094, 36.953644, 48.213524>,  <39.356476, 36.849659, 48.274647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975094, 36.953644, 48.213524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079320, -0.272692, -0.958826,
		-0.290942, -0.926311, 0.239376,
		-0.953447, 0.259975, -0.152812,
		38.689060, 37.031631, 48.167683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077877, 36.392380, 47.802353>,  <39.356476, 36.849659, 48.274647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077877, 36.392380, 47.802353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809013, 36.686558, 47.768131>,  <38.647694, 36.863064, 47.747597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809013, 36.686558, 47.768131>,  <39.077877, 36.392380, 47.802353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809013, 36.686558, 47.768131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171433, -0.267004, -0.948325,
		-0.720284, -0.622761, 0.305549,
		-0.672162, 0.735444, -0.085557,
		38.607365, 36.907192, 47.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485107, 36.062977, 47.444561>,  <39.077877, 36.392380, 47.802353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485107, 36.062977, 47.444561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511658, 36.457684, 47.385387>,  <38.527588, 36.694508, 47.349884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511658, 36.457684, 47.385387>,  <38.485107, 36.062977, 47.444561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511658, 36.457684, 47.385387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148696, -0.136823, -0.979372,
		-0.986653, 0.087007, 0.137646,
		0.066380, 0.986767, -0.147934,
		38.531570, 36.753716, 47.341007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001606, 36.050846, 46.985771>,  <38.485107, 36.062977, 47.444561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001606, 36.050846, 46.985771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178497, 36.407459, 46.946571>,  <38.284630, 36.621426, 46.923054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178497, 36.407459, 46.946571>,  <38.001606, 36.050846, 46.985771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178497, 36.407459, 46.946571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178730, -0.019473, -0.983705,
		-0.878915, 0.452535, 0.150733,
		0.442226, 0.891534, -0.097997,
		38.311165, 36.674919, 46.917171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564312, 36.522572, 46.630005>,  <38.001606, 36.050846, 46.985771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564312, 36.522572, 46.630005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932411, 36.653130, 46.543644>,  <38.153271, 36.731464, 46.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932411, 36.653130, 46.543644>,  <37.564312, 36.522572, 46.630005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932411, 36.653130, 46.543644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233777, 0.016071, -0.972158,
		-0.313835, 0.945098, 0.091092,
		0.920248, 0.326393, -0.215898,
		38.208485, 36.751049, 46.478874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468960, 37.158504, 46.172791>,  <37.564312, 36.522572, 46.630005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468960, 37.158504, 46.172791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845894, 37.032562, 46.127399>,  <38.072052, 36.956997, 46.100166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845894, 37.032562, 46.127399>,  <37.468960, 37.158504, 46.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845894, 37.032562, 46.127399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077482, 0.124615, -0.989175,
		0.325591, 0.940923, 0.093033,
		0.942331, -0.314858, -0.113478,
		38.128593, 36.938107, 46.093357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720345, 37.632984, 45.656506>,  <37.468960, 37.158504, 46.172791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720345, 37.632984, 45.656506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947994, 37.304119, 45.661179>,  <38.084583, 37.106800, 45.663982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947994, 37.304119, 45.661179>,  <37.720345, 37.632984, 45.656506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947994, 37.304119, 45.661179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066907, -0.060471, -0.995925,
		0.819522, 0.566027, -0.089425,
		0.569128, -0.822166, 0.011686,
		38.118732, 37.057468, 45.664684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225441, 37.699623, 45.178131>,  <37.720345, 37.632984, 45.656506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225441, 37.699623, 45.178131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214046, 37.302734, 45.226601>,  <38.207211, 37.064602, 45.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214046, 37.302734, 45.226601>,  <38.225441, 37.699623, 45.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214046, 37.302734, 45.226601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047036, -0.122416, -0.991364,
		0.998487, -0.022540, 0.050157,
		-0.028485, -0.992223, 0.121170,
		38.205502, 37.005066, 45.262951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605751, 37.550175, 44.705185>,  <38.225441, 37.699623, 45.178131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605751, 37.550175, 44.705185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437279, 37.198853, 44.795685>,  <38.336197, 36.988060, 44.849983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437279, 37.198853, 44.795685>,  <38.605751, 37.550175, 44.705185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437279, 37.198853, 44.795685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024924, -0.260567, -0.965134,
		0.906636, -0.400854, 0.131636,
		-0.421177, -0.878306, 0.226248,
		38.310925, 36.935360, 44.863560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032955, 36.973396, 44.538742>,  <38.605751, 37.550175, 44.705185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032955, 36.973396, 44.538742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655285, 36.841633, 44.537064>,  <38.428680, 36.762577, 44.536057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655285, 36.841633, 44.537064>,  <39.032955, 36.973396, 44.538742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655285, 36.841633, 44.537064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065152, -0.174237, -0.982546,
		0.322924, -0.927973, 0.185973,
		-0.944180, -0.329405, -0.004194,
		38.372032, 36.742813, 44.535805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163670, 36.457272, 44.248604>,  <39.032955, 36.973396, 44.538742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163670, 36.457272, 44.248604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765701, 36.480938, 44.216049>,  <38.526920, 36.495140, 44.196514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765701, 36.480938, 44.216049>,  <39.163670, 36.457272, 44.248604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765701, 36.480938, 44.216049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047173, -0.440182, -0.896669,
		-0.088881, -0.895957, 0.435156,
		-0.994925, 0.059169, -0.081389,
		38.467224, 36.498688, 44.191631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005905, 35.735958, 43.977325>,  <39.163670, 36.457272, 44.248604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005905, 35.735958, 43.977325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705585, 35.988132, 43.898483>,  <38.525394, 36.139439, 43.851177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705585, 35.988132, 43.898483>,  <39.005905, 35.735958, 43.977325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705585, 35.988132, 43.898483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036493, -0.337532, -0.940606,
		-0.659525, -0.699011, 0.276425,
		-0.750796, 0.630440, -0.197102,
		38.480347, 36.177265, 43.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589474, 35.275787, 43.690826>,  <39.005905, 35.735958, 43.977325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589474, 35.275787, 43.690826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484531, 35.649063, 43.592579>,  <38.421566, 35.873028, 43.533630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484531, 35.649063, 43.592579>,  <38.589474, 35.275787, 43.690826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484531, 35.649063, 43.592579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140337, -0.288724, -0.947071,
		-0.954711, -0.214003, 0.206711,
		-0.262359, 0.933189, -0.245616,
		38.405823, 35.929020, 43.518894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998863, 35.237709, 43.361240>,  <38.589474, 35.275787, 43.690826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998863, 35.237709, 43.361240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143181, 35.593769, 43.249912>,  <38.229771, 35.807404, 43.183117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143181, 35.593769, 43.249912>,  <37.998863, 35.237709, 43.361240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143181, 35.593769, 43.249912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042678, -0.282346, -0.958363,
		-0.931668, 0.357652, -0.063879,
		0.360796, 0.890149, -0.278317,
		38.251419, 35.860813, 43.166416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627468, 35.505726, 42.671299>,  <37.998863, 35.237709, 43.361240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627468, 35.505726, 42.671299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967491, 35.715942, 42.685230>,  <38.171505, 35.842072, 42.693588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967491, 35.715942, 42.685230>,  <37.627468, 35.505726, 42.671299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967491, 35.715942, 42.685230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082722, -0.067905, -0.994257,
		-0.520156, 0.848055, -0.101197,
		0.850056, 0.525540, 0.034832,
		38.222507, 35.873604, 42.695679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568958, 35.936497, 42.052166>,  <37.627468, 35.505726, 42.671299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568958, 35.936497, 42.052166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940029, 35.900723, 42.197166>,  <38.162674, 35.879257, 42.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940029, 35.900723, 42.197166>,  <37.568958, 35.936497, 42.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940029, 35.900723, 42.197166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342988, -0.179500, -0.922030,
		0.147534, 0.979684, -0.135842,
		0.927682, -0.089438, 0.362502,
		38.218334, 35.873890, 42.305916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917137, 36.141373, 41.423412>,  <37.568958, 35.936497, 42.052166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917137, 36.141373, 41.423412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195580, 35.983204, 41.663105>,  <38.362644, 35.888302, 41.806919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195580, 35.983204, 41.663105>,  <37.917137, 36.141373, 41.423412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195580, 35.983204, 41.663105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534390, -0.272001, -0.800277,
		0.479441, 0.877299, 0.021970,
		0.696106, -0.395426, 0.599228,
		38.404411, 35.864574, 41.842873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586239, 36.494492, 41.230049>,  <37.917137, 36.141373, 41.423412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586239, 36.494492, 41.230049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674950, 36.162464, 41.434715>,  <38.728176, 35.963245, 41.557514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674950, 36.162464, 41.434715>,  <38.586239, 36.494492, 41.230049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674950, 36.162464, 41.434715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712939, -0.219949, -0.665838,
		0.665233, 0.512449, 0.543012,
		0.221773, -0.830071, 0.511662,
		38.741482, 35.913445, 41.588215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311195, 36.554062, 41.379059>,  <38.586239, 36.494492, 41.230049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311195, 36.554062, 41.379059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206646, 36.169163, 41.409447>,  <39.143917, 35.938225, 41.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206646, 36.169163, 41.409447>,  <39.311195, 36.554062, 41.379059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206646, 36.169163, 41.409447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612047, -0.226081, -0.757817,
		0.746380, -0.151575, 0.648029,
		-0.261373, -0.962243, 0.075971,
		39.128235, 35.880489, 41.432240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983948, 36.193638, 41.590801>,  <39.311195, 36.554062, 41.379059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983948, 36.193638, 41.590801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717186, 35.950676, 41.418152>,  <39.557129, 35.804897, 41.314564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717186, 35.950676, 41.418152>,  <39.983948, 36.193638, 41.590801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717186, 35.950676, 41.418152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686540, -0.275698, -0.672795,
		0.289663, -0.745014, 0.600873,
		-0.666902, -0.607408, -0.431623,
		39.517117, 35.768456, 41.288666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355309, 35.530804, 41.494793>,  <39.983948, 36.193638, 41.590801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355309, 35.530804, 41.494793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036312, 35.509262, 41.254425>,  <39.844913, 35.496338, 41.110203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036312, 35.509262, 41.254425>,  <40.355309, 35.530804, 41.494793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036312, 35.509262, 41.254425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579061, -0.347987, -0.737288,
		-0.169408, -0.935951, 0.308701,
		-0.797490, -0.053855, -0.600924,
		39.797066, 35.493107, 41.074146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390945, 34.908566, 41.155842>,  <40.355309, 35.530804, 41.494793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390945, 34.908566, 41.155842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122856, 35.081543, 40.914581>,  <39.962002, 35.185329, 40.769825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122856, 35.081543, 40.914581>,  <40.390945, 34.908566, 41.155842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122856, 35.081543, 40.914581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619462, -0.121615, -0.775549,
		-0.408733, -0.893422, -0.186372,
		-0.670227, 0.432443, -0.603149,
		39.921787, 35.211277, 40.733635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341251, 34.551792, 40.603050>,  <40.390945, 34.908566, 41.155842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341251, 34.551792, 40.603050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211433, 34.902817, 40.461880>,  <40.133541, 35.113430, 40.377178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211433, 34.902817, 40.461880>,  <40.341251, 34.551792, 40.603050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211433, 34.902817, 40.461880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552592, -0.126915, -0.823732,
		-0.767666, -0.462365, -0.443743,
		-0.324547, 0.877559, -0.352928,
		40.114071, 35.166084, 40.356003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371063, 34.521618, 39.856396>,  <40.341251, 34.551792, 40.603050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371063, 34.521618, 39.856396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361736, 34.918625, 39.904331>,  <40.356140, 35.156830, 39.933094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361736, 34.918625, 39.904331>,  <40.371063, 34.521618, 39.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361736, 34.918625, 39.904331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636692, 0.107163, -0.763635,
		-0.770765, 0.058495, -0.634428,
		-0.023319, 0.992519, 0.119841,
		40.354740, 35.216381, 39.940285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245968, 34.851875, 39.106083>,  <40.371063, 34.521618, 39.856396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245968, 34.851875, 39.106083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431496, 35.104317, 39.354786>,  <40.542812, 35.255783, 39.504009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431496, 35.104317, 39.354786>,  <40.245968, 34.851875, 39.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431496, 35.104317, 39.354786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792376, 0.018381, -0.609756,
		-0.396247, 0.775482, -0.491544,
		0.463820, 0.631102, 0.621757,
		40.570641, 35.293648, 39.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602894, 35.428303, 38.685482>,  <40.245968, 34.851875, 39.106083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602894, 35.428303, 38.685482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772388, 35.452999, 39.046955>,  <40.874084, 35.467815, 39.263840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772388, 35.452999, 39.046955>,  <40.602894, 35.428303, 38.685482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772388, 35.452999, 39.046955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894062, 0.131496, -0.428209,
		-0.145267, 0.989392, 0.000522,
		0.423735, 0.061738, 0.903680,
		40.899509, 35.471519, 39.318058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960426, 36.171265, 38.801785>,  <40.602894, 35.428303, 38.685482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960426, 36.171265, 38.801785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108585, 35.877808, 39.029675>,  <41.197479, 35.701733, 39.166409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108585, 35.877808, 39.029675>,  <40.960426, 36.171265, 38.801785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108585, 35.877808, 39.029675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920951, 0.210103, -0.328185,
		0.121069, 0.646243, 0.753467,
		0.370393, -0.733639, 0.569721,
		41.219704, 35.657715, 39.200592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664234, 36.335064, 38.866074>,  <40.960426, 36.171265, 38.801785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664234, 36.335064, 38.866074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664246, 35.978031, 39.046429>,  <41.664253, 35.763813, 39.154640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664246, 35.978031, 39.046429>,  <41.664234, 36.335064, 38.866074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664246, 35.978031, 39.046429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964143, -0.119634, -0.236887,
		0.265382, 0.434723, 0.860575,
		0.000026, -0.892583, 0.450884,
		41.664253, 35.710255, 39.181694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302101, 36.252140, 39.216255>,  <41.664234, 36.335064, 38.866074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302101, 36.252140, 39.216255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160347, 35.896091, 39.101650>,  <42.075294, 35.682461, 39.032887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160347, 35.896091, 39.101650>,  <42.302101, 36.252140, 39.216255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160347, 35.896091, 39.101650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841928, -0.170403, -0.511977,
		0.406901, -0.422659, 0.809809,
		-0.354386, -0.890125, -0.286511,
		42.054031, 35.629055, 39.015697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931629, 35.815842, 39.105469>,  <42.302101, 36.252140, 39.216255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931629, 35.815842, 39.105469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626915, 35.627895, 38.927074>,  <42.444084, 35.515125, 38.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626915, 35.627895, 38.927074>,  <42.931629, 35.815842, 39.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626915, 35.627895, 38.927074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600032, -0.252244, -0.759167,
		0.244214, -0.845928, 0.474094,
		-0.761788, -0.469871, -0.445983,
		42.398380, 35.486935, 38.793278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158947, 35.155235, 38.845833>,  <42.931629, 35.815842, 39.105469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158947, 35.155235, 38.845833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838436, 35.187153, 38.608654>,  <42.646130, 35.206303, 38.466347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838436, 35.187153, 38.608654>,  <43.158947, 35.155235, 38.845833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838436, 35.187153, 38.608654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579552, -0.142558, -0.802369,
		-0.148576, -0.986562, 0.067967,
		-0.801277, 0.079823, -0.592945,
		42.598053, 35.211090, 38.430771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991280, 34.467884, 38.513714>,  <43.158947, 35.155235, 38.845833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991280, 34.467884, 38.513714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869576, 34.775234, 38.288494>,  <42.796555, 34.959644, 38.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869576, 34.775234, 38.288494>,  <42.991280, 34.467884, 38.513714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869576, 34.775234, 38.288494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443006, -0.409136, -0.797717,
		-0.843310, -0.492150, -0.215910,
		-0.304260, 0.768372, -0.563054,
		42.778297, 35.005745, 38.119579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741230, 34.222599, 37.861233>,  <42.991280, 34.467884, 38.513714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741230, 34.222599, 37.861233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840382, 34.602409, 37.784340>,  <42.899872, 34.830296, 37.738205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840382, 34.602409, 37.784340>,  <42.741230, 34.222599, 37.861233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840382, 34.602409, 37.784340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548679, -0.301133, -0.779917,
		-0.798441, 0.087848, -0.595630,
		0.247878, 0.949527, -0.192237,
		42.914745, 34.887268, 37.726669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649330, 34.425095, 37.136154>,  <42.741230, 34.222599, 37.861233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649330, 34.425095, 37.136154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937077, 34.644207, 37.307011>,  <43.109726, 34.775673, 37.409523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937077, 34.644207, 37.307011>,  <42.649330, 34.425095, 37.136154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937077, 34.644207, 37.307011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642790, -0.291860, -0.708264,
		-0.263308, 0.784064, -0.562062,
		0.719368, 0.547779, 0.427140,
		43.152885, 34.808540, 37.435154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714745, 35.075794, 36.841049>,  <42.649330, 34.425095, 37.136154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714745, 35.075794, 36.841049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082287, 34.963406, 36.951878>,  <43.302811, 34.895973, 37.018375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082287, 34.963406, 36.951878>,  <42.714745, 35.075794, 36.841049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082287, 34.963406, 36.951878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343562, 0.224239, -0.911966,
		0.194103, 0.933153, 0.302572,
		0.918852, -0.280967, 0.277070,
		43.357941, 34.879116, 37.035000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265041, 35.633656, 36.709606>,  <42.714745, 35.075794, 36.841049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265041, 35.633656, 36.709606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412601, 35.263371, 36.676208>,  <43.501137, 35.041199, 36.656170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412601, 35.263371, 36.676208>,  <43.265041, 35.633656, 36.709606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412601, 35.263371, 36.676208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384762, 0.233861, -0.892898,
		0.846093, 0.297264, 0.442450,
		0.368898, -0.925713, -0.083492,
		43.523270, 34.985657, 36.651161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006584, 35.523846, 36.578537>,  <43.265041, 35.633656, 36.709606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006584, 35.523846, 36.578537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845806, 35.208847, 36.391655>,  <43.749340, 35.019848, 36.279526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845806, 35.208847, 36.391655>,  <44.006584, 35.523846, 36.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845806, 35.208847, 36.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446707, 0.276758, -0.850799,
		0.799306, -0.550683, 0.240539,
		-0.401949, -0.787498, -0.467208,
		43.725220, 34.972599, 36.251492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492706, 35.465851, 36.014603>,  <44.006584, 35.523846, 36.578537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492706, 35.465851, 36.014603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529377, 35.794315, 36.239914>,  <44.551380, 35.991394, 36.375103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529377, 35.794315, 36.239914>,  <44.492706, 35.465851, 36.014603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529377, 35.794315, 36.239914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002716, 0.565867, -0.824492,
		-0.995785, 0.074061, 0.054109,
		0.091681, 0.821163, 0.563281,
		44.556881, 36.040665, 36.408897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995274, 35.606647, 35.494251>,  <44.492706, 35.465851, 36.014603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995274, 35.606647, 35.494251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311909, 35.532017, 35.261501>,  <45.501892, 35.487240, 35.121853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.311909, 35.532017, 35.261501>,  <44.995274, 35.606647, 35.494251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311909, 35.532017, 35.261501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571229, 0.112194, -0.813086,
		0.216983, 0.976014, -0.017764,
		0.791590, -0.186574, -0.581872,
		45.549385, 35.476044, 35.086941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900753, 36.043236, 35.043095>,  <44.995274, 35.606647, 35.494251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900753, 36.043236, 35.043095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165539, 35.794529, 34.875668>,  <45.324409, 35.645306, 34.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165539, 35.794529, 34.875668>,  <44.900753, 36.043236, 35.043095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165539, 35.794529, 34.875668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467664, 0.093779, -0.878917,
		0.585738, 0.777565, -0.228702,
		0.661968, -0.621771, -0.418569,
		45.364128, 35.607998, 34.750095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127293, 36.373344, 34.495079>,  <44.900753, 36.043236, 35.043095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127293, 36.373344, 34.495079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206314, 35.987926, 34.422905>,  <45.253727, 35.756676, 34.379601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.206314, 35.987926, 34.422905>,  <45.127293, 36.373344, 34.495079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206314, 35.987926, 34.422905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648032, 0.009742, -0.761551,
		0.735545, 0.267375, -0.622482,
		0.197555, -0.963543, -0.180433,
		45.265579, 35.698864, 34.368774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250671, 36.412514, 33.829514>,  <45.127293, 36.373344, 34.495079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250671, 36.412514, 33.829514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167961, 36.037285, 33.940693>,  <45.118336, 35.812145, 34.007401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167961, 36.037285, 33.940693>,  <45.250671, 36.412514, 33.829514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167961, 36.037285, 33.940693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533700, -0.129951, -0.835630,
		0.820005, -0.321130, -0.473780,
		-0.206777, -0.938077, 0.277948,
		45.105927, 35.755863, 34.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246094, 36.034008, 33.151501>,  <45.250671, 36.412514, 33.829514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246094, 36.034008, 33.151501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052387, 35.817955, 33.426815>,  <44.936161, 35.688324, 33.592003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052387, 35.817955, 33.426815>,  <45.246094, 36.034008, 33.151501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052387, 35.817955, 33.426815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714286, -0.210224, -0.667534,
		0.505252, -0.814900, -0.284005,
		-0.484269, -0.540134, 0.688287,
		44.907108, 35.655914, 33.633301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996433, 35.650131, 32.708797>,  <45.246094, 36.034008, 33.151501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996433, 35.650131, 32.708797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788979, 35.608131, 33.048206>,  <44.664505, 35.582932, 33.251854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788979, 35.608131, 33.048206>,  <44.996433, 35.650131, 32.708797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788979, 35.608131, 33.048206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760110, -0.397775, -0.513817,
		0.391475, -0.911454, 0.126485,
		-0.518633, -0.105004, 0.848524,
		44.633389, 35.576630, 33.302765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875957, 34.960426, 32.710339>,  <44.996433, 35.650131, 32.708797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875957, 34.960426, 32.710339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593277, 35.130024, 32.936897>,  <44.423668, 35.231781, 33.072834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593277, 35.130024, 32.936897>,  <44.875957, 34.960426, 32.710339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593277, 35.130024, 32.936897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703315, -0.508077, -0.497197,
		0.076964, -0.749724, 0.657260,
		-0.706699, 0.423995, 0.566396,
		44.381268, 35.257221, 33.106815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462193, 34.380505, 32.917641>,  <44.875957, 34.960426, 32.710339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462193, 34.380505, 32.917641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253254, 34.720119, 32.949352>,  <44.127892, 34.923889, 32.968380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253254, 34.720119, 32.949352>,  <44.462193, 34.380505, 32.917641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253254, 34.720119, 32.949352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772477, -0.431754, -0.465691,
		-0.361161, -0.304493, 0.881389,
		-0.522343, 0.849042, 0.079281,
		44.096550, 34.974831, 32.973137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824482, 34.161877, 33.110146>,  <44.462193, 34.380505, 32.917641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824482, 34.161877, 33.110146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761749, 34.529770, 32.966202>,  <43.724110, 34.750504, 32.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761749, 34.529770, 32.966202>,  <43.824482, 34.161877, 33.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761749, 34.529770, 32.966202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713870, -0.357360, -0.602232,
		-0.682491, 0.162446, 0.712613,
		-0.156829, 0.919731, -0.359860,
		43.714699, 34.805691, 32.858242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140804, 34.202816, 33.073826>,  <43.824482, 34.161877, 33.110146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140804, 34.202816, 33.073826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268745, 34.504074, 32.843880>,  <43.345512, 34.684830, 32.705914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268745, 34.504074, 32.843880>,  <43.140804, 34.202816, 33.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268745, 34.504074, 32.843880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731179, -0.189649, -0.655294,
		-0.602553, 0.629927, 0.490022,
		0.319856, 0.753143, -0.574863,
		43.364700, 34.730019, 32.671421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530281, 34.533417, 32.779373>,  <43.140804, 34.202816, 33.073826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530281, 34.533417, 32.779373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822773, 34.646519, 32.531067>,  <42.998268, 34.714382, 32.382084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822773, 34.646519, 32.531067>,  <42.530281, 34.533417, 32.779373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822773, 34.646519, 32.531067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548740, -0.296751, -0.781552,
		-0.405204, 0.912133, -0.061832,
		0.731228, 0.282758, -0.620769,
		43.042141, 34.731346, 32.344837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169701, 34.775269, 32.246880>,  <42.530281, 34.533417, 32.779373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169701, 34.775269, 32.246880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530888, 34.705242, 32.089909>,  <42.747601, 34.663227, 31.995726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530888, 34.705242, 32.089909>,  <42.169701, 34.775269, 32.246880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530888, 34.705242, 32.089909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429674, -0.356707, -0.829542,
		0.005241, 0.917667, -0.397316,
		0.902969, -0.175064, -0.392428,
		42.801777, 34.652721, 31.972179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072571, 34.869308, 31.526583>,  <42.169701, 34.775269, 32.246880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072571, 34.869308, 31.526583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407528, 34.652344, 31.553612>,  <42.608501, 34.522167, 31.569830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407528, 34.652344, 31.553612>,  <42.072571, 34.869308, 31.526583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407528, 34.652344, 31.553612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305699, -0.567217, -0.764731,
		0.453125, 0.619723, -0.640797,
		0.837392, -0.542410, 0.067572,
		42.658745, 34.489620, 31.573883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257267, 34.678024, 30.845329>,  <42.072571, 34.869308, 31.526583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257267, 34.678024, 30.845329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443001, 34.414471, 31.082060>,  <42.554440, 34.256336, 31.224098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443001, 34.414471, 31.082060>,  <42.257267, 34.678024, 30.845329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443001, 34.414471, 31.082060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310953, -0.746978, -0.587650,
		0.829278, 0.088835, -0.551730,
		0.464334, -0.658887, 0.591829,
		42.582302, 34.216805, 31.259609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632980, 34.210545, 30.437143>,  <42.257267, 34.678024, 30.845329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632980, 34.210545, 30.437143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620937, 34.009296, 30.782621>,  <42.613712, 33.888550, 30.989908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620937, 34.009296, 30.782621>,  <42.632980, 34.210545, 30.437143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620937, 34.009296, 30.782621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171016, -0.848751, -0.500375,
		0.984808, -0.162772, -0.060483,
		-0.030112, -0.503117, 0.863694,
		42.611904, 33.858360, 31.041729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057915, 33.673363, 30.256533>,  <42.632980, 34.210545, 30.437143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057915, 33.673363, 30.256533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816456, 33.588928, 30.564053>,  <42.671581, 33.538269, 30.748566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816456, 33.588928, 30.564053>,  <43.057915, 33.673363, 30.256533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816456, 33.588928, 30.564053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053625, -0.951379, -0.303320,
		0.795447, -0.224325, 0.562976,
		-0.603645, -0.211085, 0.768801,
		42.635361, 33.525604, 30.794693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354759, 33.037960, 30.407564>,  <43.057915, 33.673363, 30.256533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354759, 33.037960, 30.407564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006413, 33.058346, 30.603109>,  <42.797405, 33.070580, 30.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006413, 33.058346, 30.603109>,  <43.354759, 33.037960, 30.407564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006413, 33.058346, 30.603109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193948, -0.949536, -0.246505,
		0.451631, -0.309488, 0.836807,
		-0.870870, 0.050968, 0.488865,
		42.745152, 33.073635, 30.749769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410942, 32.527557, 30.899649>,  <43.354759, 33.037960, 30.407564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410942, 32.527557, 30.899649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022144, 32.612690, 30.859776>,  <42.788868, 32.663769, 30.835852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022144, 32.612690, 30.859776>,  <43.410942, 32.527557, 30.899649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022144, 32.612690, 30.859776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164258, -0.918559, -0.359539,
		-0.168087, -0.333095, 0.927790,
		-0.971991, 0.212831, -0.099684,
		42.730549, 32.676540, 30.829870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070148, 32.069244, 31.369009>,  <43.410942, 32.527557, 30.899649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070148, 32.069244, 31.369009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798691, 32.165203, 31.091335>,  <42.635815, 32.222778, 30.924732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798691, 32.165203, 31.091335>,  <43.070148, 32.069244, 31.369009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798691, 32.165203, 31.091335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189106, -0.970360, -0.150471,
		-0.709705, 0.029158, 0.703895,
		-0.678644, 0.239901, -0.694183,
		42.595097, 32.237175, 30.883080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453312, 31.628057, 31.540222>,  <43.070148, 32.069244, 31.369009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453312, 31.628057, 31.540222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442009, 31.778992, 31.169964>,  <42.435226, 31.869553, 30.947809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442009, 31.778992, 31.169964>,  <42.453312, 31.628057, 31.540222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442009, 31.778992, 31.169964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318103, -0.881271, -0.349532,
		-0.947635, 0.284573, 0.144935,
		-0.028260, 0.377333, -0.925646,
		42.433533, 31.892191, 30.892269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821445, 31.395605, 31.244116>,  <42.453312, 31.628057, 31.540222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821445, 31.395605, 31.244116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067909, 31.497974, 30.946163>,  <42.215790, 31.559395, 30.767391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067909, 31.497974, 30.946163>,  <41.821445, 31.395605, 31.244116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067909, 31.497974, 30.946163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232492, -0.844499, -0.482462,
		-0.752524, 0.470454, -0.460848,
		0.616162, 0.255921, -0.744882,
		42.252758, 31.574751, 30.722698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479980, 31.379002, 30.532990>,  <41.821445, 31.395605, 31.244116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479980, 31.379002, 30.532990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870949, 31.318027, 30.474468>,  <42.105530, 31.281443, 30.439356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870949, 31.318027, 30.474468>,  <41.479980, 31.379002, 30.532990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870949, 31.318027, 30.474468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211256, -0.716373, -0.664966,
		-0.003442, 0.680861, -0.732404,
		0.977425, -0.152437, -0.146302,
		42.164177, 31.272297, 30.430578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738804, 31.467916, 29.843521>,  <41.479980, 31.379002, 30.532990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738804, 31.467916, 29.843521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937397, 31.207617, 30.073315>,  <42.056553, 31.051437, 30.211191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937397, 31.207617, 30.073315>,  <41.738804, 31.467916, 29.843521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937397, 31.207617, 30.073315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437425, -0.759197, -0.481954,
		0.749777, -0.012012, -0.661582,
		0.496481, -0.650751, 0.574483,
		42.086342, 31.012392, 30.245659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082664, 30.884447, 29.619703>,  <41.738804, 31.467916, 29.843521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082664, 30.884447, 29.619703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105976, 30.495678, 29.528513>,  <42.119965, 30.262417, 29.473799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105976, 30.495678, 29.528513>,  <42.082664, 30.884447, 29.619703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105976, 30.495678, 29.528513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926158, -0.032596, 0.375724,
		-0.372606, -0.233039, 0.898253,
		0.058279, -0.971921, -0.227977,
		42.123459, 30.204102, 29.460119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502548, 30.522789, 29.964067>,  <42.082664, 30.884447, 29.619703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502548, 30.522789, 29.964067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350571, 30.855757, 29.802713>,  <41.259384, 31.055538, 29.705900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350571, 30.855757, 29.802713>,  <41.502548, 30.522789, 29.964067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350571, 30.855757, 29.802713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305400, -0.298750, -0.904145,
		-0.873140, -0.466718, -0.140714,
		-0.379943, 0.832420, -0.403386,
		41.236588, 31.105482, 29.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050205, 30.370291, 29.420809>,  <41.502548, 30.522789, 29.964067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050205, 30.370291, 29.420809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206165, 30.732338, 29.352999>,  <41.299744, 30.949566, 29.312313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206165, 30.732338, 29.352999>,  <41.050205, 30.370291, 29.420809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206165, 30.732338, 29.352999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572045, -0.382337, -0.725661,
		-0.721623, 0.185963, -0.666842,
		0.389904, 0.905117, -0.169524,
		41.323135, 31.003874, 29.302141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959755, 30.625326, 28.624132>,  <41.050205, 30.370291, 29.420809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959755, 30.625326, 28.624132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270382, 30.813206, 28.792095>,  <41.456757, 30.925934, 28.892874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270382, 30.813206, 28.792095>,  <40.959755, 30.625326, 28.624132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270382, 30.813206, 28.792095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615706, -0.424444, -0.663893,
		-0.133603, 0.774098, -0.618807,
		0.776567, 0.469701, 0.419910,
		41.503353, 30.954117, 28.918068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197254, 31.100883, 28.238680>,  <40.959755, 30.625326, 28.624132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197254, 31.100883, 28.238680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519939, 31.016203, 28.459368>,  <41.713551, 30.965395, 28.591780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519939, 31.016203, 28.459368>,  <41.197254, 31.100883, 28.238680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519939, 31.016203, 28.459368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496252, -0.264221, -0.826995,
		0.320852, 0.940941, -0.108093,
		0.806714, -0.211702, 0.551720,
		41.761955, 30.952692, 28.624884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864231, 31.167128, 27.821106>,  <41.197254, 31.100883, 28.238680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864231, 31.167128, 27.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980473, 30.941647, 28.130373>,  <42.050217, 30.806358, 28.315933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980473, 30.941647, 28.130373>,  <41.864231, 31.167128, 27.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980473, 30.941647, 28.130373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688727, -0.437703, -0.577989,
		0.664231, 0.700469, 0.261036,
		0.290608, -0.563701, 0.773168,
		42.067654, 30.772537, 28.362324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579159, 31.214767, 27.824089>,  <41.864231, 31.167128, 27.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579159, 31.214767, 27.824089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445774, 30.884989, 28.006996>,  <42.365742, 30.687122, 28.116741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445774, 30.884989, 28.006996>,  <42.579159, 31.214767, 27.824089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445774, 30.884989, 28.006996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504721, -0.565784, -0.652031,
		0.796278, 0.013365, 0.604783,
		-0.333462, -0.824445, 0.457267,
		42.345734, 30.637655, 28.144176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174526, 30.813070, 27.975267>,  <42.579159, 31.214767, 27.824089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174526, 30.813070, 27.975267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840256, 30.594572, 27.952440>,  <42.639694, 30.463472, 27.938744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840256, 30.594572, 27.952440>,  <43.174526, 30.813070, 27.975267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840256, 30.594572, 27.952440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509895, -0.733030, -0.450193,
		0.204084, -0.405315, 0.891106,
		-0.835677, -0.546248, -0.057068,
		42.589554, 30.430698, 27.935320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247887, 31.211649, 27.280310>,  <43.174526, 30.813070, 27.975267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247887, 31.211649, 27.280310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430557, 31.495127, 27.065201>,  <43.540161, 31.665213, 26.936136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.430557, 31.495127, 27.065201>,  <43.247887, 31.211649, 27.280310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430557, 31.495127, 27.065201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816183, -0.093249, 0.570219,
		0.353964, -0.699327, -0.621008,
		0.456678, 0.708693, -0.537772,
		43.567562, 31.707735, 26.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019253, 30.992481, 27.312914>,  <43.247887, 31.211649, 27.280310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019253, 30.992481, 27.312914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950359, 31.380259, 27.243042>,  <43.909023, 31.612925, 27.201118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950359, 31.380259, 27.243042>,  <44.019253, 30.992481, 27.312914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950359, 31.380259, 27.243042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581054, 0.243175, 0.776686,
		0.795432, 0.032271, -0.605183,
		-0.172230, 0.969445, -0.174678,
		43.898689, 31.671093, 27.190639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719872, 31.402931, 27.373896>,  <44.019253, 30.992481, 27.312914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719872, 31.402931, 27.373896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429310, 31.667326, 27.449192>,  <44.254974, 31.825964, 27.494370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429310, 31.667326, 27.449192>,  <44.719872, 31.402931, 27.373896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429310, 31.667326, 27.449192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390657, 0.171762, 0.904370,
		0.565444, 0.730474, -0.382988,
		-0.726402, 0.660988, 0.188243,
		44.211388, 31.865622, 27.505665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044510, 32.017597, 27.590504>,  <44.719872, 31.402931, 27.373896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044510, 32.017597, 27.590504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668041, 32.050621, 27.721582>,  <44.442162, 32.070435, 27.800230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668041, 32.050621, 27.721582>,  <45.044510, 32.017597, 27.590504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668041, 32.050621, 27.721582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337526, 0.277483, 0.899489,
		-0.016672, 0.957177, -0.289023,
		-0.941169, 0.082557, 0.327698,
		44.385689, 32.075390, 27.819891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061642, 32.733250, 27.857008>,  <45.044510, 32.017597, 27.590504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061642, 32.733250, 27.857008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744118, 32.550934, 28.018063>,  <44.553604, 32.441544, 28.114697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744118, 32.550934, 28.018063>,  <45.061642, 32.733250, 27.857008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744118, 32.550934, 28.018063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316383, 0.255918, 0.913459,
		-0.519385, 0.852505, -0.058949,
		-0.793814, -0.455787, 0.402638,
		44.505974, 32.414196, 28.138853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784847, 33.235935, 28.371782>,  <45.061642, 32.733250, 27.857008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784847, 33.235935, 28.371782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682999, 32.858555, 28.456692>,  <44.621887, 32.632126, 28.507637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682999, 32.858555, 28.456692>,  <44.784847, 33.235935, 28.371782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682999, 32.858555, 28.456692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227041, 0.155052, 0.961463,
		-0.940010, 0.293008, 0.174723,
		-0.254625, -0.943454, 0.212275,
		44.606609, 32.575520, 28.520374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331299, 33.383987, 28.898397>,  <44.784847, 33.235935, 28.371782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331299, 33.383987, 28.898397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442871, 32.999866, 28.896568>,  <44.509815, 32.769394, 28.895470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442871, 32.999866, 28.896568>,  <44.331299, 33.383987, 28.898397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442871, 32.999866, 28.896568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202157, 0.054062, 0.977860,
		-0.938791, -0.273683, 0.209211,
		0.278934, -0.960299, -0.004574,
		44.526550, 32.711777, 28.895197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073883, 33.099857, 29.492069>,  <44.331299, 33.383987, 28.898397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073883, 33.099857, 29.492069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356365, 32.825195, 29.423050>,  <44.525856, 32.660397, 29.381638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356365, 32.825195, 29.423050>,  <44.073883, 33.099857, 29.492069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356365, 32.825195, 29.423050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405166, 0.192093, 0.893835,
		-0.580613, -0.701144, 0.413867,
		0.706208, -0.686657, -0.172548,
		44.568226, 32.619198, 29.371286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141273, 32.678471, 30.157017>,  <44.073883, 33.099857, 29.492069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141273, 32.678471, 30.157017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466743, 32.585205, 29.944014>,  <44.662025, 32.529247, 29.816212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466743, 32.585205, 29.944014>,  <44.141273, 32.678471, 30.157017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466743, 32.585205, 29.944014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522586, -0.107845, 0.845739,
		-0.254627, -0.966438, 0.034099,
		0.813677, -0.233168, -0.532507,
		44.710846, 32.515255, 29.784262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354229, 31.939808, 30.343803>,  <44.141273, 32.678471, 30.157017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354229, 31.939808, 30.343803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661343, 32.147266, 30.193327>,  <44.845612, 32.271740, 30.103041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661343, 32.147266, 30.193327>,  <44.354229, 31.939808, 30.343803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661343, 32.147266, 30.193327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499193, -0.116164, 0.858669,
		0.401645, -0.847061, -0.348092,
		0.767781, 0.518645, -0.376190,
		44.891678, 32.302860, 30.080469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916683, 31.635965, 30.590641>,  <44.354229, 31.939808, 30.343803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916683, 31.635965, 30.590641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067738, 31.997063, 30.508232>,  <45.158371, 32.213722, 30.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.067738, 31.997063, 30.508232>,  <44.916683, 31.635965, 30.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067738, 31.997063, 30.508232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511998, -0.018188, 0.858794,
		0.771523, -0.429797, -0.469071,
		0.377638, 0.902742, -0.206023,
		45.181030, 32.267887, 30.446424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607986, 31.610966, 30.829874>,  <44.916683, 31.635965, 30.590641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607986, 31.610966, 30.829874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524902, 32.001007, 30.798809>,  <45.475052, 32.235031, 30.780170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.524902, 32.001007, 30.798809>,  <45.607986, 31.610966, 30.829874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524902, 32.001007, 30.798809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521154, 0.177499, 0.834801,
		0.827802, 0.132919, -0.545047,
		-0.207706, 0.975103, -0.077663,
		45.462589, 32.293537, 30.775511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184235, 31.920162, 31.125847>,  <45.607986, 31.610966, 30.829874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184235, 31.920162, 31.125847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915920, 32.216400, 31.110043>,  <45.754929, 32.394142, 31.100561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915920, 32.216400, 31.110043>,  <46.184235, 31.920162, 31.125847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915920, 32.216400, 31.110043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, 0.364842, 0.861951,
		0.652770, 0.564280, -0.505450,
		-0.670791, 0.740594, -0.039509,
		45.714684, 32.438580, 31.098190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549591, 32.472542, 31.222460>,  <46.184235, 31.920162, 31.125847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549591, 32.472542, 31.222460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165371, 32.538166, 31.312275>,  <45.934837, 32.577541, 31.366165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165371, 32.538166, 31.312275>,  <46.549591, 32.472542, 31.222460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165371, 32.538166, 31.312275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264440, 0.289002, 0.920081,
		0.086057, 0.943166, -0.320986,
		-0.960555, 0.164061, 0.224540,
		45.877205, 32.587383, 31.379637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490280, 33.200512, 31.359476>,  <46.549591, 32.472542, 31.222460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490280, 33.200512, 31.359476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177814, 33.038925, 31.549885>,  <45.990337, 32.941975, 31.664131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.177814, 33.038925, 31.549885>,  <46.490280, 33.200512, 31.359476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177814, 33.038925, 31.549885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288987, 0.441900, 0.849241,
		-0.553419, 0.800960, -0.228454,
		-0.781162, -0.403966, 0.476023,
		45.943466, 32.917736, 31.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220394, 33.714539, 31.798668>,  <46.490280, 33.200512, 31.359476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220394, 33.714539, 31.798668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083565, 33.372311, 31.954094>,  <46.001469, 33.166973, 32.047348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083565, 33.372311, 31.954094>,  <46.220394, 33.714539, 31.798668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083565, 33.372311, 31.954094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180442, 0.346008, 0.920717,
		-0.922187, 0.385063, 0.036023,
		-0.342070, -0.855573, 0.388566,
		45.980946, 33.115639, 32.070663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725574, 33.959187, 32.235863>,  <46.220394, 33.714539, 31.798668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725574, 33.959187, 32.235863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846008, 33.597157, 32.355991>,  <45.918266, 33.379940, 32.428066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846008, 33.597157, 32.355991>,  <45.725574, 33.959187, 32.235863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846008, 33.597157, 32.355991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240656, 0.376855, 0.894464,
		-0.922732, -0.197033, 0.331275,
		0.301081, -0.905074, 0.300319,
		45.936333, 33.325634, 32.446087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546448, 33.902733, 32.974293>,  <45.725574, 33.959187, 32.235863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546448, 33.902733, 32.974293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789177, 33.587029, 32.936687>,  <45.934814, 33.397606, 32.914124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789177, 33.587029, 32.936687>,  <45.546448, 33.902733, 32.974293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789177, 33.587029, 32.936687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513582, 0.299072, 0.804233,
		-0.606632, -0.536308, 0.586832,
		0.606821, -0.789259, -0.094011,
		45.971222, 33.350250, 32.908485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546677, 33.481842, 33.577705>,  <45.546448, 33.902733, 32.974293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546677, 33.481842, 33.577705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899300, 33.430710, 33.395931>,  <46.110874, 33.400032, 33.286869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.899300, 33.430710, 33.395931>,  <45.546677, 33.481842, 33.577705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.899300, 33.430710, 33.395931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466481, 0.383549, 0.797048,
		0.072412, -0.914631, 0.397751,
		0.881562, -0.127828, -0.454432,
		46.163769, 33.392361, 33.259602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987396, 33.263962, 34.077053>,  <45.546677, 33.481842, 33.577705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987396, 33.263962, 34.077053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237694, 33.395023, 33.793903>,  <46.387871, 33.473660, 33.624012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237694, 33.395023, 33.793903>,  <45.987396, 33.263962, 34.077053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237694, 33.395023, 33.793903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631057, 0.320770, 0.706310,
		0.458488, -0.888680, -0.006045,
		0.625745, 0.327650, -0.707877,
		46.425419, 33.493317, 33.581539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722679, 32.955894, 34.187389>,  <45.987396, 33.263962, 34.077053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722679, 32.955894, 34.187389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754856, 33.289837, 33.969566>,  <46.774162, 33.490204, 33.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754856, 33.289837, 33.969566>,  <46.722679, 32.955894, 34.187389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754856, 33.289837, 33.969566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714386, 0.332704, 0.615598,
		0.695113, -0.438541, -0.569649,
		0.080440, 0.834859, -0.544554,
		46.778988, 33.540295, 33.806198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.425182, 32.959030, 34.231178>,  <46.722679, 32.955894, 34.187389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.425182, 32.959030, 34.231178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286747, 33.326717, 34.156071>,  <47.203686, 33.547329, 34.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286747, 33.326717, 34.156071>,  <47.425182, 32.959030, 34.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.286747, 33.326717, 34.156071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688716, 0.384822, 0.614478,
		0.637100, 0.083339, -0.766263,
		-0.346084, 0.919221, -0.187773,
		47.182922, 33.602482, 34.099739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949768, 33.497726, 33.985256>,  <47.425182, 32.959030, 34.231178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949768, 33.497726, 33.985256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668354, 33.688812, 34.195713>,  <47.499504, 33.803463, 34.321987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668354, 33.688812, 34.195713>,  <47.949768, 33.497726, 33.985256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668354, 33.688812, 34.195713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671028, 0.202782, 0.713162,
		0.233998, 0.854791, -0.463226,
		-0.703538, 0.477716, 0.526138,
		47.457291, 33.832127, 34.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.063969, 34.220810, 34.048904>,  <47.949768, 33.497726, 33.985256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.063969, 34.220810, 34.048904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834389, 34.132683, 34.364380>,  <47.696640, 34.079807, 34.553665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834389, 34.132683, 34.364380>,  <48.063969, 34.220810, 34.048904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834389, 34.132683, 34.364380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437142, 0.731981, 0.522600,
		-0.692448, 0.644719, -0.323811,
		-0.573954, -0.220322, 0.788692,
		47.662201, 34.066586, 34.600986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.628849, 34.748062, 34.146149>,  <48.063969, 34.220810, 34.048904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.628849, 34.748062, 34.146149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744461, 34.557156, 34.478096>,  <47.813828, 34.442612, 34.677265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.744461, 34.557156, 34.478096>,  <47.628849, 34.748062, 34.146149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744461, 34.557156, 34.478096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342645, 0.861011, 0.375839,
		-0.893900, 0.175723, 0.412388,
		0.289027, -0.477265, 0.829868,
		47.831169, 34.413975, 34.727055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492744, 35.094513, 34.660332>,  <47.628849, 34.748062, 34.146149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492744, 35.094513, 34.660332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783115, 34.866127, 34.813709>,  <47.957340, 34.729095, 34.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783115, 34.866127, 34.813709>,  <47.492744, 35.094513, 34.660332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.783115, 34.866127, 34.813709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335786, 0.780781, 0.526905,
		-0.600227, -0.253742, 0.758514,
		0.725931, -0.570961, 0.383443,
		48.000896, 34.694839, 34.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.831036, 39.969421, 44.690994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432022, 39.996918, 44.696762>,  <37.192616, 40.013416, 44.700222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432022, 39.996918, 44.696762>,  <37.831036, 39.969421, 44.690994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432022, 39.996918, 44.696762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042724, -0.430906, -0.901385,
		-0.055751, -0.899775, 0.432778,
		-0.997530, 0.068743, 0.014419,
		37.132763, 40.017540, 44.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531071, 39.301014, 44.390343>,  <37.831036, 39.969421, 44.690994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531071, 39.301014, 44.390343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248356, 39.583591, 44.375450>,  <37.078728, 39.753139, 44.366512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248356, 39.583591, 44.375450>,  <37.531071, 39.301014, 44.390343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248356, 39.583591, 44.375450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249388, -0.298074, -0.921389,
		-0.662009, -0.641941, 0.386854,
		-0.706789, 0.706444, -0.037235,
		37.036320, 39.795525, 44.364281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986828, 38.899593, 44.134731>,  <37.531071, 39.301014, 44.390343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986828, 38.899593, 44.134731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920460, 39.288364, 44.068016>,  <36.880638, 39.521629, 44.027988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920460, 39.288364, 44.068016>,  <36.986828, 38.899593, 44.134731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920460, 39.288364, 44.068016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232036, -0.202861, -0.951318,
		-0.958451, -0.119145, 0.259182,
		-0.165923, 0.971932, -0.166787,
		36.870682, 39.579945, 44.017979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387264, 38.837845, 43.793175>,  <36.986828, 38.899593, 44.134731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387264, 38.837845, 43.793175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516674, 39.207329, 43.711109>,  <36.594318, 39.429020, 43.661869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516674, 39.207329, 43.711109>,  <36.387264, 38.837845, 43.793175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516674, 39.207329, 43.711109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381347, -0.071155, -0.921689,
		-0.865972, 0.376429, 0.329233,
		0.323524, 0.923709, -0.205169,
		36.613731, 39.484440, 43.649559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878582, 39.112495, 43.383141>,  <36.387264, 38.837845, 43.793175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878582, 39.112495, 43.383141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218609, 39.311836, 43.314991>,  <36.422626, 39.431438, 43.274101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218609, 39.311836, 43.314991>,  <35.878582, 39.112495, 43.383141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218609, 39.311836, 43.314991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111472, -0.145915, -0.982997,
		-0.514736, 0.854609, -0.068486,
		0.850071, 0.498349, -0.170373,
		36.473629, 39.461342, 43.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679806, 39.387699, 42.730099>,  <35.878582, 39.112495, 43.383141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679806, 39.387699, 42.730099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076122, 39.426456, 42.767941>,  <36.313911, 39.449711, 42.790646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076122, 39.426456, 42.767941>,  <35.679806, 39.387699, 42.730099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076122, 39.426456, 42.767941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114497, -0.226306, -0.967304,
		-0.072315, 0.969225, -0.235315,
		0.990788, 0.096893, 0.094608,
		36.373360, 39.455524, 42.796322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840466, 39.884766, 42.218853>,  <35.679806, 39.387699, 42.730099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840466, 39.884766, 42.218853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138721, 39.625957, 42.282585>,  <36.317673, 39.470673, 42.320824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138721, 39.625957, 42.282585>,  <35.840466, 39.884766, 42.218853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138721, 39.625957, 42.282585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024122, -0.212743, -0.976810,
		0.665916, 0.732189, -0.143021,
		0.745637, -0.647023, 0.159331,
		36.362411, 39.431850, 42.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194889, 39.958584, 41.584755>,  <35.840466, 39.884766, 42.218853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194889, 39.958584, 41.584755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392315, 39.659805, 41.762951>,  <36.510769, 39.480537, 41.869869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.392315, 39.659805, 41.762951>,  <36.194889, 39.958584, 41.584755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392315, 39.659805, 41.762951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338892, -0.306570, -0.889476,
		0.800966, 0.589988, 0.101822,
		0.493564, -0.746947, 0.445494,
		36.540382, 39.435722, 41.896599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851017, 40.105679, 41.325745>,  <36.194889, 39.958584, 41.584755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851017, 40.105679, 41.325745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787159, 39.727116, 41.438046>,  <36.748844, 39.499977, 41.505424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.787159, 39.727116, 41.438046>,  <36.851017, 40.105679, 41.325745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787159, 39.727116, 41.438046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264759, -0.315025, -0.911407,
		0.951008, -0.071173, 0.300863,
		-0.159647, -0.946411, 0.280748,
		36.739265, 39.443192, 41.522270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397953, 39.710373, 41.041088>,  <36.851017, 40.105679, 41.325745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397953, 39.710373, 41.041088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121998, 39.426365, 41.097534>,  <36.956425, 39.255959, 41.131401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121998, 39.426365, 41.097534>,  <37.397953, 39.710373, 41.041088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121998, 39.426365, 41.097534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259115, -0.424222, -0.867695,
		0.675949, -0.562051, 0.476646,
		-0.689892, -0.710024, 0.141116,
		36.915031, 39.213356, 41.139870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692966, 39.091160, 40.846188>,  <37.397953, 39.710373, 41.041088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692966, 39.091160, 40.846188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302349, 39.005077, 40.849064>,  <37.067978, 38.953430, 40.850788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302349, 39.005077, 40.849064>,  <37.692966, 39.091160, 40.846188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302349, 39.005077, 40.849064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129930, -0.615565, -0.777301,
		0.171702, -0.758134, 0.629087,
		-0.976543, -0.215202, 0.007190,
		37.009388, 38.940517, 40.851219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587818, 38.329006, 40.878235>,  <37.692966, 39.091160, 40.846188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587818, 38.329006, 40.878235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263153, 38.475395, 40.696125>,  <37.068356, 38.563229, 40.586861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263153, 38.475395, 40.696125>,  <37.587818, 38.329006, 40.878235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263153, 38.475395, 40.696125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266881, -0.460960, -0.846339,
		-0.519601, -0.808442, 0.276471,
		-0.811658, 0.365974, -0.455273,
		37.019653, 38.585186, 40.559544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224274, 37.739166, 40.625469>,  <37.587818, 38.329006, 40.878235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224274, 37.739166, 40.625469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060280, 38.042889, 40.423332>,  <36.961884, 38.225121, 40.302052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060280, 38.042889, 40.423332>,  <37.224274, 37.739166, 40.625469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060280, 38.042889, 40.423332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061969, -0.529580, -0.845993,
		-0.909985, -0.378160, 0.170066,
		-0.409984, 0.759302, -0.505344,
		36.937283, 38.270679, 40.271729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794491, 37.471626, 40.105293>,  <37.224274, 37.739166, 40.625469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794491, 37.471626, 40.105293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866909, 37.841942, 39.972549>,  <36.910362, 38.064133, 39.892902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866909, 37.841942, 39.972549>,  <36.794491, 37.471626, 40.105293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866909, 37.841942, 39.972549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172568, -0.362109, -0.916022,
		-0.968215, 0.108576, -0.225322,
		0.181049, 0.925791, -0.331863,
		36.921223, 38.119678, 39.872990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513786, 37.449612, 39.514015>,  <36.794491, 37.471626, 40.105293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513786, 37.449612, 39.514015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777912, 37.748913, 39.488380>,  <36.936386, 37.928493, 39.473000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777912, 37.748913, 39.488380>,  <36.513786, 37.449612, 39.514015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777912, 37.748913, 39.488380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336457, -0.371044, -0.865519,
		-0.671403, 0.549953, -0.496760,
		0.660314, 0.748250, -0.064085,
		36.976006, 37.973389, 39.469154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687859, 37.575348, 38.751572>,  <36.513786, 37.449612, 39.514015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687859, 37.575348, 38.751572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981674, 37.758335, 38.952042>,  <37.157963, 37.868130, 39.072323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981674, 37.758335, 38.952042>,  <36.687859, 37.575348, 38.751572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981674, 37.758335, 38.952042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596085, -0.082090, -0.798714,
		-0.324248, 0.885427, -0.332990,
		0.734538, 0.457472, 0.501172,
		37.202034, 37.895576, 39.102394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961231, 38.109722, 38.338905>,  <36.687859, 37.575348, 38.751572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961231, 38.109722, 38.338905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253414, 38.022446, 38.597771>,  <37.428722, 37.970081, 38.753090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253414, 38.022446, 38.597771>,  <36.961231, 38.109722, 38.338905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253414, 38.022446, 38.597771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641705, -0.105080, -0.759719,
		0.233768, 0.970232, 0.063258,
		0.730457, -0.218191, 0.647167,
		37.472549, 37.956989, 38.791920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476437, 38.380322, 38.064487>,  <36.961231, 38.109722, 38.338905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476437, 38.380322, 38.064487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670288, 38.148254, 38.326340>,  <37.786598, 38.009014, 38.483452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670288, 38.148254, 38.326340>,  <37.476437, 38.380322, 38.064487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670288, 38.148254, 38.326340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717495, -0.164412, -0.676882,
		0.500333, 0.797731, 0.336588,
		0.484631, -0.580167, 0.654629,
		37.815678, 37.974205, 38.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113663, 38.631805, 38.076015>,  <37.476437, 38.380322, 38.064487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113663, 38.631805, 38.076015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114082, 38.249432, 38.193447>,  <38.114334, 38.020008, 38.263905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114082, 38.249432, 38.193447>,  <38.113663, 38.631805, 38.076015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114082, 38.249432, 38.193447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714437, -0.204698, -0.669088,
		0.699699, 0.210443, 0.682741,
		0.001049, -0.955935, 0.293575,
		38.114399, 37.962650, 38.281521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828926, 38.382145, 38.137791>,  <38.113663, 38.631805, 38.076015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828926, 38.382145, 38.137791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667881, 38.016060, 38.131035>,  <38.571255, 37.796410, 38.126980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667881, 38.016060, 38.131035>,  <38.828926, 38.382145, 38.137791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667881, 38.016060, 38.131035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774013, -0.330531, -0.540049,
		0.488676, -0.230508, 0.841464,
		-0.402616, -0.915213, -0.016894,
		38.547096, 37.741497, 38.125965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456554, 37.990597, 38.002815>,  <38.828926, 38.382145, 38.137791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456554, 37.990597, 38.002815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160007, 37.725639, 37.959728>,  <38.982079, 37.566666, 37.933876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160007, 37.725639, 37.959728>,  <39.456554, 37.990597, 38.002815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160007, 37.725639, 37.959728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629417, -0.630619, -0.454042,
		0.232827, -0.404412, 0.884445,
		-0.741368, -0.662398, -0.107719,
		38.937595, 37.526920, 37.927414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623009, 37.291996, 38.326012>,  <39.456554, 37.990597, 38.002815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623009, 37.291996, 38.326012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378632, 37.246124, 38.012680>,  <39.232006, 37.218601, 37.824680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378632, 37.246124, 38.012680>,  <39.623009, 37.291996, 38.326012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378632, 37.246124, 38.012680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630798, -0.668397, -0.394131,
		-0.478374, -0.734911, 0.480691,
		-0.610944, -0.114677, -0.783324,
		39.195347, 37.211720, 37.777683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145084, 37.112572, 37.646103>,  <39.623009, 37.291996, 38.326012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145084, 37.112572, 37.646103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539513, 37.172852, 37.674274>,  <40.776169, 37.209019, 37.691177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.539513, 37.172852, 37.674274>,  <40.145084, 37.112572, 37.646103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539513, 37.172852, 37.674274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145728, 0.578418, 0.802618,
		0.080219, -0.801699, 0.592320,
		0.986067, 0.150703, 0.070430,
		40.835331, 37.218063, 37.695404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424206, 36.777836, 38.215996>,  <40.145084, 37.112572, 37.646103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424206, 36.777836, 38.215996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681614, 37.076649, 38.149261>,  <40.836060, 37.255936, 38.109222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681614, 37.076649, 38.149261>,  <40.424206, 36.777836, 38.215996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681614, 37.076649, 38.149261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126359, 0.318647, 0.939413,
		0.754929, -0.583449, 0.299449,
		0.643519, 0.747028, -0.166832,
		40.874668, 37.300758, 38.099213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648399, 36.994633, 38.902294>,  <40.424206, 36.777836, 38.215996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648399, 36.994633, 38.902294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.807915, 37.292355, 38.688011>,  <40.903625, 37.470989, 38.559441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.807915, 37.292355, 38.688011>,  <40.648399, 36.994633, 38.902294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807915, 37.292355, 38.688011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024825, 0.575188, 0.817644,
		0.916707, -0.339365, 0.210901,
		0.398788, 0.744305, -0.535704,
		40.927551, 37.515648, 38.527298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225201, 37.155128, 39.165024>,  <40.648399, 36.994633, 38.902294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225201, 37.155128, 39.165024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137436, 37.501171, 38.984604>,  <41.084778, 37.708797, 38.876354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.137436, 37.501171, 38.984604>,  <41.225201, 37.155128, 39.165024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137436, 37.501171, 38.984604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256369, 0.497191, 0.828900,
		0.941346, 0.066239, -0.330879,
		-0.219416, 0.865109, -0.451047,
		41.071609, 37.760704, 38.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704647, 37.648376, 39.459843>,  <41.225201, 37.155128, 39.165024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704647, 37.648376, 39.459843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434433, 37.884815, 39.283546>,  <41.272305, 38.026680, 39.177769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.434433, 37.884815, 39.283546>,  <41.704647, 37.648376, 39.459843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434433, 37.884815, 39.283546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249101, 0.745574, 0.618117,
		0.693976, 0.307770, -0.650904,
		-0.675534, 0.591099, -0.440744,
		41.231773, 38.062145, 39.151321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944046, 38.373081, 39.251255>,  <41.704647, 37.648376, 39.459843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944046, 38.373081, 39.251255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552975, 38.389965, 39.333591>,  <41.318333, 38.400093, 39.382996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552975, 38.389965, 39.333591>,  <41.944046, 38.373081, 39.251255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552975, 38.389965, 39.333591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171012, 0.729047, 0.662756,
		-0.122096, 0.683161, -0.719988,
		-0.977674, 0.042207, 0.205843,
		41.259674, 38.402626, 39.395344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789089, 39.166241, 39.310040>,  <41.944046, 38.373081, 39.251255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789089, 39.166241, 39.310040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.523396, 38.917747, 39.476353>,  <41.363979, 38.768654, 39.576141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.523396, 38.917747, 39.476353>,  <41.789089, 39.166241, 39.310040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523396, 38.917747, 39.476353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075568, 0.609158, 0.789440,
		-0.743698, 0.492951, -0.451567,
		-0.664231, -0.621229, 0.415778,
		41.324127, 38.731380, 39.601086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368755, 39.617664, 39.770035>,  <41.789089, 39.166241, 39.310040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368755, 39.617664, 39.770035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.215168, 39.260590, 39.864414>,  <41.123016, 39.046345, 39.921040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.215168, 39.260590, 39.864414>,  <41.368755, 39.617664, 39.770035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215168, 39.260590, 39.864414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357419, 0.379311, 0.853449,
		-0.851362, 0.243369, -0.464710,
		-0.383972, -0.892689, 0.235946,
		41.099976, 38.992783, 39.935200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675430, 39.742737, 39.947643>,  <41.368755, 39.617664, 39.770035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675430, 39.742737, 39.947643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777325, 39.391590, 40.109856>,  <40.838463, 39.180901, 40.207184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777325, 39.391590, 40.109856>,  <40.675430, 39.742737, 39.947643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777325, 39.391590, 40.109856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412629, 0.280587, 0.866607,
		-0.874554, -0.388091, -0.290759,
		0.254739, -0.877870, 0.405526,
		40.853745, 39.128227, 40.231514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154072, 39.280693, 40.229023>,  <40.675430, 39.742737, 39.947643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154072, 39.280693, 40.229023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473667, 39.162838, 40.438709>,  <40.665424, 39.092125, 40.564522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.473667, 39.162838, 40.438709>,  <40.154072, 39.280693, 40.229023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473667, 39.162838, 40.438709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508381, 0.134665, 0.850538,
		-0.321195, -0.946073, -0.042192,
		0.798989, -0.294638, 0.524219,
		40.713364, 39.074448, 40.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854401, 38.886581, 40.723537>,  <40.154072, 39.280693, 40.229023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854401, 38.886581, 40.723537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220776, 38.944344, 40.873310>,  <40.440601, 38.979000, 40.963173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220776, 38.944344, 40.873310>,  <39.854401, 38.886581, 40.723537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220776, 38.944344, 40.873310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393639, 0.141668, 0.908283,
		0.078108, -0.979326, 0.186600,
		0.915941, 0.144398, 0.374436,
		40.495556, 38.987667, 40.985641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890800, 38.401253, 41.355629>,  <39.854401, 38.886581, 40.723537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890800, 38.401253, 41.355629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163002, 38.690804, 41.401093>,  <40.326324, 38.864532, 41.428371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163002, 38.690804, 41.401093>,  <39.890800, 38.401253, 41.355629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163002, 38.690804, 41.401093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283892, 0.117465, 0.951634,
		0.675513, -0.679859, 0.285438,
		0.680505, 0.723874, 0.113657,
		40.367153, 38.907967, 41.435188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223858, 38.296883, 42.005291>,  <39.890800, 38.401253, 41.355629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223858, 38.296883, 42.005291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305759, 38.678570, 41.918079>,  <40.354900, 38.907581, 41.865753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305759, 38.678570, 41.918079>,  <40.223858, 38.296883, 42.005291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305759, 38.678570, 41.918079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144793, 0.249824, 0.957404,
		0.968046, -0.164460, 0.189317,
		0.204751, 0.954223, -0.218029,
		40.367184, 38.964836, 41.852673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756355, 38.521339, 42.385731>,  <40.223858, 38.296883, 42.005291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756355, 38.521339, 42.385731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541634, 38.848114, 42.301399>,  <40.412800, 39.044178, 42.250801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541634, 38.848114, 42.301399>,  <40.756355, 38.521339, 42.385731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541634, 38.848114, 42.301399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169730, 0.140217, 0.975465,
		0.826458, 0.559419, 0.063390,
		-0.536805, 0.816939, -0.210833,
		40.380592, 39.093197, 42.238148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022614, 38.981224, 42.867729>,  <40.756355, 38.521339, 42.385731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022614, 38.981224, 42.867729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.709339, 39.178001, 42.715618>,  <40.521374, 39.296066, 42.624352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.709339, 39.178001, 42.715618>,  <41.022614, 38.981224, 42.867729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709339, 39.178001, 42.715618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164827, 0.425451, 0.889845,
		0.599540, 0.759596, -0.252123,
		-0.783189, 0.491940, -0.380277,
		40.474384, 39.325584, 42.601536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103279, 39.756073, 43.020363>,  <41.022614, 38.981224, 42.867729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103279, 39.756073, 43.020363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.717342, 39.660812, 42.975891>,  <40.485779, 39.603657, 42.949207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.717342, 39.660812, 42.975891>,  <41.103279, 39.756073, 43.020363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717342, 39.660812, 42.975891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194002, 0.359953, 0.912577,
		-0.177313, 0.902063, -0.393500,
		-0.964844, -0.238152, -0.111177,
		40.427891, 39.589367, 42.942539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649635, 40.460419, 43.015972>,  <41.103279, 39.756073, 43.020363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649635, 40.460419, 43.015972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.439308, 40.132866, 43.108013>,  <40.313110, 39.936337, 43.163239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.439308, 40.132866, 43.108013>,  <40.649635, 40.460419, 43.015972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439308, 40.132866, 43.108013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275028, 0.419665, 0.865009,
		-0.804904, 0.391556, -0.445884,
		-0.525822, -0.818880, 0.230101,
		40.281563, 39.887203, 43.177044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068100, 40.864361, 43.168411>,  <40.649635, 40.460419, 43.015972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068100, 40.864361, 43.168411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013577, 40.495716, 43.313763>,  <39.980862, 40.274529, 43.400974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.013577, 40.495716, 43.313763>,  <40.068100, 40.864361, 43.168411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013577, 40.495716, 43.313763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332354, 0.388088, 0.859610,
		-0.933253, -0.003596, -0.359203,
		-0.136311, -0.921615, 0.363379,
		39.972683, 40.219231, 43.422775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.400398, 40.892929, 43.440483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580448, 40.578339, 43.609646>,  <39.688477, 40.389584, 43.711143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580448, 40.578339, 43.609646>,  <39.400398, 40.892929, 43.440483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580448, 40.578339, 43.609646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486671, 0.181015, 0.854626,
		-0.748694, -0.590500, -0.301276,
		0.450122, -0.786475, 0.422904,
		39.715485, 40.342396, 43.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970242, 40.582623, 43.800964>,  <39.400398, 40.892929, 43.440483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970242, 40.582623, 43.800964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291058, 40.410156, 43.966286>,  <39.483547, 40.306675, 44.065479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291058, 40.410156, 43.966286>,  <38.970242, 40.582623, 43.800964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291058, 40.410156, 43.966286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339000, 0.241104, 0.909367,
		-0.491742, -0.869461, 0.047208,
		0.802041, -0.431170, 0.413308,
		39.531670, 40.280804, 44.090279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674564, 40.047039, 44.341827>,  <38.970242, 40.582623, 43.800964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674564, 40.047039, 44.341827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.052948, 40.149208, 44.421745>,  <39.279980, 40.210510, 44.469696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.052948, 40.149208, 44.421745>,  <38.674564, 40.047039, 44.341827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052948, 40.149208, 44.421745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157198, -0.177680, 0.971452,
		0.283626, -0.950363, -0.127928,
		0.945962, 0.255419, 0.199790,
		39.336739, 40.225834, 44.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893932, 39.725376, 44.925827>,  <38.674564, 40.047039, 44.341827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893932, 39.725376, 44.925827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189419, 39.993610, 44.952984>,  <39.366711, 40.154552, 44.969276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189419, 39.993610, 44.952984>,  <38.893932, 39.725376, 44.925827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189419, 39.993610, 44.952984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024029, -0.074461, 0.996934,
		0.673590, -0.738082, -0.038892,
		0.738715, 0.670590, 0.067892,
		39.411034, 40.194786, 44.973351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317852, 39.414936, 45.357754>,  <38.893932, 39.725376, 44.925827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317852, 39.414936, 45.357754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433563, 39.795902, 45.396183>,  <39.502991, 40.024483, 45.419239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.433563, 39.795902, 45.396183>,  <39.317852, 39.414936, 45.357754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433563, 39.795902, 45.396183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233920, -0.026986, 0.971881,
		0.928224, -0.303618, 0.214981,
		0.289279, 0.952412, 0.096071,
		39.520348, 40.081627, 45.425003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746555, 39.440281, 45.976727>,  <39.317852, 39.414936, 45.357754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746555, 39.440281, 45.976727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625118, 39.817806, 45.924515>,  <39.552254, 40.044323, 45.893188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625118, 39.817806, 45.924515>,  <39.746555, 39.440281, 45.976727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625118, 39.817806, 45.924515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223836, 0.062512, 0.972620,
		0.926136, 0.324500, 0.192282,
		-0.303595, 0.943818, -0.130529,
		39.534039, 40.100952, 45.885357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124275, 39.823357, 46.473667>,  <39.746555, 39.440281, 45.976727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124275, 39.823357, 46.473667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788414, 40.019962, 46.381233>,  <39.586899, 40.137924, 46.325771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788414, 40.019962, 46.381233>,  <40.124275, 39.823357, 46.473667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788414, 40.019962, 46.381233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142209, 0.211675, 0.966939,
		0.524176, 0.844755, -0.107836,
		-0.839653, 0.491510, -0.231086,
		39.536518, 40.167416, 46.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109119, 40.498325, 46.804630>,  <40.124275, 39.823357, 46.473667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109119, 40.498325, 46.804630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721268, 40.451809, 46.718567>,  <39.488556, 40.423901, 46.666927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.721268, 40.451809, 46.718567>,  <40.109119, 40.498325, 46.804630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721268, 40.451809, 46.718567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243595, 0.380512, 0.892117,
		-0.021873, 0.917435, -0.397283,
		-0.969630, -0.116290, -0.215159,
		39.430378, 40.416924, 46.654018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791233, 41.128448, 46.794209>,  <40.109119, 40.498325, 46.804630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791233, 41.128448, 46.794209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501034, 40.859940, 46.854931>,  <39.326912, 40.698833, 46.891365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501034, 40.859940, 46.854931>,  <39.791233, 41.128448, 46.794209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501034, 40.859940, 46.854931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275240, 0.485165, 0.829974,
		-0.630787, 0.560365, -0.536748,
		-0.725500, -0.671272, 0.151801,
		39.283382, 40.658558, 46.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193192, 41.409317, 47.065372>,  <39.791233, 41.128448, 46.794209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193192, 41.409317, 47.065372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131733, 41.028923, 47.172714>,  <39.094856, 40.800686, 47.237122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131733, 41.028923, 47.172714>,  <39.193192, 41.409317, 47.065372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131733, 41.028923, 47.172714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237455, 0.299158, 0.924186,
		-0.959170, 0.078276, -0.271782,
		-0.153647, -0.950987, 0.268357,
		39.085640, 40.743626, 47.253220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632339, 41.360413, 47.499332>,  <39.193192, 41.409317, 47.065372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632339, 41.360413, 47.499332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817142, 41.020180, 47.599785>,  <38.928024, 40.816040, 47.660057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817142, 41.020180, 47.599785>,  <38.632339, 41.360413, 47.499332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817142, 41.020180, 47.599785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221385, 0.163588, 0.961368,
		-0.858802, -0.499751, -0.112727,
		0.462004, -0.850581, 0.251127,
		38.955742, 40.765007, 47.675121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234829, 41.078129, 48.056995>,  <38.632339, 41.360413, 47.499332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234829, 41.078129, 48.056995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564407, 40.853287, 48.085701>,  <38.762154, 40.718384, 48.102924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564407, 40.853287, 48.085701>,  <38.234829, 41.078129, 48.056995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564407, 40.853287, 48.085701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136488, -0.073944, 0.987878,
		-0.549983, -0.823755, -0.137647,
		0.823948, -0.562103, 0.071765,
		38.811592, 40.684654, 48.107231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043980, 40.442696, 48.479359>,  <38.234829, 41.078129, 48.056995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043980, 40.442696, 48.479359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440166, 40.484966, 48.514717>,  <38.677879, 40.510330, 48.535931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440166, 40.484966, 48.514717>,  <38.043980, 40.442696, 48.479359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440166, 40.484966, 48.514717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089240, 0.003319, 0.996005,
		0.104965, -0.994395, 0.012718,
		0.990464, 0.105681, 0.088392,
		38.737305, 40.516670, 48.541233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215374, 39.752285, 48.685669>,  <38.043980, 40.442696, 48.479359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215374, 39.752285, 48.685669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479412, 40.041977, 48.765434>,  <38.637836, 40.215790, 48.813293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479412, 40.041977, 48.765434>,  <38.215374, 39.752285, 48.685669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479412, 40.041977, 48.765434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024851, -0.244269, 0.969389,
		0.750768, -0.644847, -0.143244,
		0.660098, 0.724227, 0.199414,
		38.677441, 40.259247, 48.825260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694084, 39.395119, 49.002346>,  <38.215374, 39.752285, 48.685669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694084, 39.395119, 49.002346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723244, 39.780136, 49.106800>,  <38.740738, 40.011147, 49.169472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.723244, 39.780136, 49.106800>,  <38.694084, 39.395119, 49.002346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723244, 39.780136, 49.106800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017850, -0.263045, 0.964619,
		0.997180, -0.065656, -0.036356,
		0.072896, 0.962547, 0.261131,
		38.745113, 40.068901, 49.185139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121243, 39.368687, 49.570778>,  <38.694084, 39.395119, 49.002346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121243, 39.368687, 49.570778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949680, 39.725555, 49.627438>,  <38.846741, 39.939678, 49.661434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949680, 39.725555, 49.627438>,  <39.121243, 39.368687, 49.570778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949680, 39.725555, 49.627438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064472, -0.186638, 0.980311,
		0.901045, 0.411331, 0.137570,
		-0.428908, 0.892173, 0.141650,
		38.821007, 39.993206, 49.669933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462593, 39.527187, 50.182590>,  <39.121243, 39.368687, 49.570778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462593, 39.527187, 50.182590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164814, 39.793434, 50.161644>,  <38.986145, 39.953182, 50.149078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164814, 39.793434, 50.161644>,  <39.462593, 39.527187, 50.182590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164814, 39.793434, 50.161644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072155, -0.002237, 0.997391,
		0.663766, 0.746288, 0.049693,
		-0.744452, 0.665620, -0.052364,
		38.941479, 39.993118, 50.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565563, 40.113369, 50.550594>,  <39.462593, 39.527187, 50.182590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565563, 40.113369, 50.550594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166363, 40.095001, 50.533203>,  <38.926842, 40.083981, 50.522766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166363, 40.095001, 50.533203>,  <39.565563, 40.113369, 50.550594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166363, 40.095001, 50.533203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048542, 0.115544, 0.992116,
		-0.040535, 0.992240, -0.117542,
		-0.997998, -0.045921, -0.043482,
		38.866962, 40.081226, 50.520157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454182, 40.624916, 50.970551>,  <39.565563, 40.113369, 50.550594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454182, 40.624916, 50.970551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.104954, 40.430233, 50.958824>,  <38.895416, 40.313423, 50.951786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.104954, 40.430233, 50.958824>,  <39.454182, 40.624916, 50.970551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104954, 40.430233, 50.958824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118755, 0.153938, 0.980918,
		-0.472906, 0.859895, -0.192198,
		-0.873073, -0.486707, -0.029319,
		38.843033, 40.284222, 50.950027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054741, 40.933647, 51.432461>,  <39.454182, 40.624916, 50.970551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054741, 40.933647, 51.432461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846123, 40.593922, 51.399849>,  <38.720951, 40.390087, 51.380283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.846123, 40.593922, 51.399849>,  <39.054741, 40.933647, 51.432461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846123, 40.593922, 51.399849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090974, -0.039656, 0.995063,
		-0.848359, 0.526390, -0.056584,
		-0.521547, -0.849318, -0.081530,
		38.689659, 40.339127, 51.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483219, 41.073517, 51.862274>,  <39.054741, 40.933647, 51.432461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483219, 41.073517, 51.862274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531837, 40.680656, 51.804859>,  <38.561008, 40.444939, 51.770412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531837, 40.680656, 51.804859>,  <38.483219, 41.073517, 51.862274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531837, 40.680656, 51.804859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251615, -0.170370, 0.952714,
		-0.960164, -0.079686, -0.267833,
		0.121548, -0.982153, -0.143533,
		38.568302, 40.386009, 51.761799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787746, 40.604073, 52.090942>,  <38.483219, 41.073517, 51.862274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787746, 40.604073, 52.090942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147160, 40.428776, 52.100597>,  <38.362808, 40.323597, 52.106388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147160, 40.428776, 52.100597>,  <37.787746, 40.604073, 52.090942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147160, 40.428776, 52.100597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146866, -0.248388, 0.957462,
		-0.413607, -0.863855, -0.287547,
		0.898532, -0.438244, 0.024136,
		38.416718, 40.297302, 52.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677135, 39.911583, 52.218887>,  <37.787746, 40.604073, 52.090942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677135, 39.911583, 52.218887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039223, 40.018448, 52.351074>,  <38.256474, 40.082565, 52.430386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.039223, 40.018448, 52.351074>,  <37.677135, 39.911583, 52.218887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039223, 40.018448, 52.351074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238545, -0.324116, 0.915448,
		0.351683, -0.907509, -0.229664,
		0.905215, 0.267162, 0.330468,
		38.310787, 40.098595, 52.450214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497417, 39.850662, 52.917080>,  <37.677135, 39.911583, 52.218887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497417, 39.850662, 52.917080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130756, 39.711666, 52.996075>,  <36.910759, 39.628269, 53.043472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.130756, 39.711666, 52.996075>,  <37.497417, 39.850662, 52.917080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130756, 39.711666, 52.996075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128796, -0.210947, -0.968975,
		0.378374, -0.913646, 0.148608,
		-0.916649, -0.347495, 0.197491,
		36.855762, 39.607418, 53.055321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354580, 39.287407, 52.596611>,  <37.497417, 39.850662, 52.917080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354580, 39.287407, 52.596611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981430, 39.413616, 52.666115>,  <36.757542, 39.489342, 52.707817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981430, 39.413616, 52.666115>,  <37.354580, 39.287407, 52.596611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981430, 39.413616, 52.666115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247317, -0.210343, -0.945828,
		-0.261882, -0.925311, 0.274257,
		-0.932873, 0.315523, 0.173761,
		36.701569, 39.508274, 52.718243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913521, 38.761898, 52.285290>,  <37.354580, 39.287407, 52.596611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913521, 38.761898, 52.285290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686966, 39.086983, 52.340012>,  <36.551033, 39.282032, 52.372845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686966, 39.086983, 52.340012>,  <36.913521, 38.761898, 52.285290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686966, 39.086983, 52.340012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373617, -0.105243, -0.921594,
		-0.734589, -0.573087, 0.363249,
		-0.566383, 0.812709, 0.136804,
		36.517052, 39.330795, 52.381054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107891, 38.614822, 52.245476>,  <36.913521, 38.761898, 52.285290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107891, 38.614822, 52.245476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161392, 38.995659, 52.135471>,  <36.193493, 39.224159, 52.069469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161392, 38.995659, 52.135471>,  <36.107891, 38.614822, 52.245476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161392, 38.995659, 52.135471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283566, -0.229131, -0.931176,
		-0.949579, 0.202532, 0.239334,
		0.133754, 0.952092, -0.275009,
		36.201519, 39.281288, 52.052967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601540, 38.686222, 51.754986>,  <36.107891, 38.614822, 52.245476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601540, 38.686222, 51.754986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819778, 39.016094, 51.695358>,  <35.950722, 39.214020, 51.659580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819778, 39.016094, 51.695358>,  <35.601540, 38.686222, 51.754986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819778, 39.016094, 51.695358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116091, -0.101790, -0.988009,
		-0.829970, 0.556357, 0.040202,
		0.545594, 0.824685, -0.149071,
		35.983456, 39.263500, 51.650639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160461, 39.105618, 51.210293>,  <35.601540, 38.686222, 51.754986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160461, 39.105618, 51.210293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543102, 39.222179, 51.210815>,  <35.772686, 39.292118, 51.211128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.543102, 39.222179, 51.210815>,  <35.160461, 39.105618, 51.210293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543102, 39.222179, 51.210815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081159, 0.270731, -0.959228,
		-0.279882, 0.917489, 0.282631,
		0.956598, 0.291408, 0.001311,
		35.830082, 39.309601, 51.211208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147190, 39.757626, 50.847313>,  <35.160461, 39.105618, 51.210293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147190, 39.757626, 50.847313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518486, 39.611683, 50.818352>,  <35.741264, 39.524117, 50.800976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518486, 39.611683, 50.818352>,  <35.147190, 39.757626, 50.847313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518486, 39.611683, 50.818352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005402, 0.207848, -0.978146,
		0.371933, 0.907567, 0.194904,
		0.928244, -0.364858, -0.072403,
		35.796959, 39.502224, 50.796631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470989, 40.244522, 50.357197>,  <35.147190, 39.757626, 50.847313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470989, 40.244522, 50.357197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703213, 39.919449, 50.337223>,  <35.842548, 39.724403, 50.325237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703213, 39.919449, 50.337223>,  <35.470989, 40.244522, 50.357197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703213, 39.919449, 50.337223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133208, 0.155304, -0.978844,
		0.803248, 0.561625, 0.198419,
		0.580559, -0.812686, -0.049934,
		35.877380, 39.675644, 50.322243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989521, 40.471329, 49.953915>,  <35.470989, 40.244522, 50.357197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989521, 40.471329, 49.953915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976963, 40.072365, 49.928040>,  <35.969429, 39.832985, 49.912514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.976963, 40.072365, 49.928040>,  <35.989521, 40.471329, 49.953915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976963, 40.072365, 49.928040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151394, 0.059225, -0.986698,
		0.987975, -0.040767, 0.149143,
		-0.031391, -0.997412, -0.064684,
		35.967545, 39.773140, 49.908634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366570, 40.456501, 49.404320>,  <35.989521, 40.471329, 49.953915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366570, 40.456501, 49.404320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233887, 40.080059, 49.430550>,  <36.154278, 39.854195, 49.446289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233887, 40.080059, 49.430550>,  <36.366570, 40.456501, 49.404320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233887, 40.080059, 49.430550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191465, -0.135225, -0.972139,
		0.923749, -0.309909, 0.225043,
		-0.331706, -0.941101, 0.065577,
		36.134377, 39.797729, 49.450222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939117, 40.046173, 49.130112>,  <36.366570, 40.456501, 49.404320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939117, 40.046173, 49.130112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601921, 39.834717, 49.090294>,  <36.399605, 39.707844, 49.066402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.601921, 39.834717, 49.090294>,  <36.939117, 40.046173, 49.130112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601921, 39.834717, 49.090294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177130, -0.098058, -0.979290,
		0.507935, -0.843161, 0.176301,
		-0.842987, -0.528644, -0.099542,
		36.349026, 39.676125, 49.060432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131077, 39.487782, 48.787945>,  <36.939117, 40.046173, 49.130112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131077, 39.487782, 48.787945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742092, 39.546547, 48.715572>,  <36.508701, 39.581806, 48.672150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.742092, 39.546547, 48.715572>,  <37.131077, 39.487782, 48.787945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742092, 39.546547, 48.715572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183350, 0.002979, -0.983043,
		-0.143883, -0.989145, -0.029833,
		-0.972462, 0.146914, -0.180931,
		36.450356, 39.590622, 48.661293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064056, 39.034126, 48.216785>,  <37.131077, 39.487782, 48.787945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064056, 39.034126, 48.216785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768135, 39.303249, 48.214931>,  <36.590584, 39.464722, 48.213818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768135, 39.303249, 48.214931>,  <37.064056, 39.034126, 48.216785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768135, 39.303249, 48.214931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164538, 0.174234, -0.970860,
		-0.652395, -0.719008, -0.239601,
		-0.739803, 0.672808, -0.004635,
		36.546196, 39.505093, 48.213543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847248, 38.895435, 47.521713>,  <37.064056, 39.034126, 48.216785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847248, 38.895435, 47.521713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676823, 39.246407, 47.609886>,  <36.574566, 39.456989, 47.662792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676823, 39.246407, 47.609886>,  <36.847248, 38.895435, 47.521713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676823, 39.246407, 47.609886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093122, 0.199831, -0.975395,
		-0.899886, -0.436111, -0.003433,
		-0.426066, 0.877425, 0.220437,
		36.549004, 39.509636, 47.676018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138355, 38.950626, 47.293224>,  <36.847248, 38.895435, 47.521713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138355, 38.950626, 47.293224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261486, 39.330250, 47.320164>,  <36.335365, 39.558022, 47.336327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261486, 39.330250, 47.320164>,  <36.138355, 38.950626, 47.293224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261486, 39.330250, 47.320164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123733, 0.110113, -0.986187,
		-0.943362, 0.295244, 0.151326,
		0.307829, 0.949055, 0.067345,
		36.353836, 39.614967, 47.340366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859146, 39.420666, 46.768715>,  <36.138355, 38.950626, 47.293224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859146, 39.420666, 46.768715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164768, 39.656063, 46.874462>,  <36.348141, 39.797302, 46.937912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164768, 39.656063, 46.874462>,  <35.859146, 39.420666, 46.768715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164768, 39.656063, 46.874462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177967, 0.201619, -0.963160,
		-0.620116, 0.782959, 0.049316,
		0.764057, 0.588494, 0.264368,
		36.393986, 39.832611, 46.953773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738010, 40.144817, 46.468826>,  <35.859146, 39.420666, 46.768715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738010, 40.144817, 46.468826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125675, 40.050354, 46.496979>,  <36.358276, 39.993675, 46.513870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125675, 40.050354, 46.496979>,  <35.738010, 40.144817, 46.468826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125675, 40.050354, 46.496979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146951, 0.324628, -0.934357,
		0.197805, 0.915887, 0.349321,
		0.969164, -0.236154, 0.070378,
		36.416424, 39.979507, 46.518093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069515, 40.700359, 46.048710>,  <35.738010, 40.144817, 46.468826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069515, 40.700359, 46.048710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389946, 40.469444, 46.111984>,  <36.582203, 40.330894, 46.149948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389946, 40.469444, 46.111984>,  <36.069515, 40.700359, 46.048710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389946, 40.469444, 46.111984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361511, 0.255981, -0.896540,
		0.477064, 0.775382, 0.413754,
		0.801074, -0.577283, 0.158189,
		36.630268, 40.296261, 46.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587898, 41.132168, 45.808128>,  <36.069515, 40.700359, 46.048710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587898, 41.132168, 45.808128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699364, 40.748028, 45.804760>,  <36.766243, 40.517544, 45.802738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699364, 40.748028, 45.804760>,  <36.587898, 41.132168, 45.808128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699364, 40.748028, 45.804760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225940, 0.074078, -0.971321,
		0.933434, 0.268766, 0.237625,
		0.278660, -0.960353, -0.008422,
		36.782963, 40.459923, 45.802235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095547, 41.192661, 45.287125>,  <36.587898, 41.132168, 45.808128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095547, 41.192661, 45.287125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994461, 40.807846, 45.328362>,  <36.933811, 40.576958, 45.353104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994461, 40.807846, 45.328362>,  <37.095547, 41.192661, 45.287125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994461, 40.807846, 45.328362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184158, -0.152430, -0.971005,
		0.949855, -0.226396, 0.215687,
		-0.252709, -0.962034, 0.103094,
		36.918648, 40.519238, 45.359291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641380, 40.735313, 44.957977>,  <37.095547, 41.192661, 45.287125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641380, 40.735313, 44.957977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319176, 40.502850, 45.004280>,  <37.125851, 40.363373, 45.032063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319176, 40.502850, 45.004280>,  <37.641380, 40.735313, 44.957977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319176, 40.502850, 45.004280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140747, -0.377390, -0.915296,
		0.575617, -0.720993, 0.385790,
		-0.805516, -0.581159, 0.115755,
		37.077522, 40.328503, 45.039005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.421318, 31.287743, 30.104687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031071, 31.275339, 30.191597>,  <42.796921, 31.267897, 30.243744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.031071, 31.275339, 30.191597>,  <43.421318, 31.287743, 30.104687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031071, 31.275339, 30.191597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056677, 0.920795, 0.385908,
		-0.212035, 0.388813, -0.896585,
		-0.975617, -0.031010, 0.217278,
		42.738384, 31.266037, 30.256781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981079, 31.894588, 29.714935>,  <43.421318, 31.287743, 30.104687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981079, 31.894588, 29.714935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.781120, 31.776491, 30.040619>,  <42.661144, 31.705633, 30.236029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.781120, 31.776491, 30.040619>,  <42.981079, 31.894588, 29.714935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781120, 31.776491, 30.040619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129947, 0.955028, 0.266526,
		-0.856281, 0.027432, -0.515782,
		-0.499897, -0.295245, 0.814207,
		42.631149, 31.687918, 30.284882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384327, 32.347488, 29.644407>,  <42.981079, 31.894588, 29.714935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384327, 32.347488, 29.644407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397888, 32.209435, 30.019583>,  <42.406025, 32.126602, 30.244688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397888, 32.209435, 30.019583>,  <42.384327, 32.347488, 29.644407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397888, 32.209435, 30.019583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199459, 0.917263, 0.344737,
		-0.979319, -0.198770, -0.037738,
		0.033908, -0.345135, 0.937940,
		42.408062, 32.105892, 30.300964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793484, 32.668236, 29.949810>,  <42.384327, 32.347488, 29.644407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793484, 32.668236, 29.949810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046440, 32.541096, 30.232386>,  <42.198212, 32.464809, 30.401930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046440, 32.541096, 30.232386>,  <41.793484, 32.668236, 29.949810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046440, 32.541096, 30.232386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173532, 0.830640, 0.529078,
		-0.754965, -0.457172, 0.470130,
		0.632388, -0.317852, 0.706438,
		42.236156, 32.445740, 30.444317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486351, 32.891602, 30.524000>,  <41.793484, 32.668236, 29.949810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486351, 32.891602, 30.524000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858746, 32.821636, 30.652170>,  <42.082180, 32.779659, 30.729073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858746, 32.821636, 30.652170>,  <41.486351, 32.891602, 30.524000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858746, 32.821636, 30.652170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029970, 0.838158, 0.544603,
		-0.363826, -0.516620, 0.775070,
		0.930985, -0.174912, 0.320427,
		42.138042, 32.769161, 30.748299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503956, 33.176262, 31.292082>,  <41.486351, 32.891602, 30.524000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503956, 33.176262, 31.292082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878136, 33.143581, 31.154526>,  <42.102642, 33.123974, 31.071993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.878136, 33.143581, 31.154526>,  <41.503956, 33.176262, 31.292082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878136, 33.143581, 31.154526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266687, 0.801666, 0.534986,
		0.231975, -0.592162, 0.771707,
		0.935449, -0.081701, -0.343889,
		42.158772, 33.119072, 31.051359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949074, 33.220127, 31.840246>,  <41.503956, 33.176262, 31.292082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949074, 33.220127, 31.840246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178467, 33.310677, 31.525320>,  <42.316105, 33.365005, 31.336365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178467, 33.310677, 31.525320>,  <41.949074, 33.220127, 31.840246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178467, 33.310677, 31.525320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389270, 0.770328, 0.505038,
		0.720821, -0.596111, 0.353650,
		0.573485, 0.226377, -0.787317,
		42.350513, 33.378590, 31.289125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586758, 33.161812, 32.083374>,  <41.949074, 33.220127, 31.840246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586758, 33.161812, 32.083374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587288, 33.391315, 31.755764>,  <42.587605, 33.529018, 31.559198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587288, 33.391315, 31.755764>,  <42.586758, 33.161812, 32.083374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587288, 33.391315, 31.755764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400833, 0.750044, 0.526086,
		0.916150, -0.328989, -0.228987,
		0.001326, 0.573760, -0.819023,
		42.587685, 33.563442, 31.510057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223461, 33.341328, 31.911392>,  <42.586758, 33.161812, 32.083374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223461, 33.341328, 31.911392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032619, 33.635311, 31.718639>,  <42.918114, 33.811699, 31.602987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.032619, 33.635311, 31.718639>,  <43.223461, 33.341328, 31.911392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032619, 33.635311, 31.718639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582699, 0.675006, 0.452580,
		0.657900, -0.064865, -0.750306,
		-0.477105, 0.734955, -0.481884,
		42.889488, 33.855797, 31.574074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679714, 33.748215, 31.598925>,  <43.223461, 33.341328, 31.911392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679714, 33.748215, 31.598925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355389, 33.981014, 31.623795>,  <43.160793, 34.120693, 31.638718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355389, 33.981014, 31.623795>,  <43.679714, 33.748215, 31.598925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355389, 33.981014, 31.623795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555237, 0.731192, 0.396322,
		0.185195, 0.355864, -0.916004,
		-0.810811, 0.581996, 0.062176,
		43.112144, 34.155613, 31.642447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962215, 34.354027, 31.492437>,  <43.679714, 33.748215, 31.598925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962215, 34.354027, 31.492437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605682, 34.440552, 31.651804>,  <43.391762, 34.492466, 31.747425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605682, 34.440552, 31.651804>,  <43.962215, 34.354027, 31.492437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605682, 34.440552, 31.651804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432743, 0.667929, 0.605478,
		-0.135141, 0.712094, -0.688955,
		-0.891330, 0.216316, 0.398419,
		43.338284, 34.505447, 31.771330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867683, 35.037872, 31.445761>,  <43.962215, 34.354027, 31.492437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867683, 35.037872, 31.445761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626045, 34.936268, 31.747900>,  <43.481064, 34.875305, 31.929184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.626045, 34.936268, 31.747900>,  <43.867683, 35.037872, 31.445761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626045, 34.936268, 31.747900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597923, 0.482146, 0.640331,
		-0.526841, 0.838458, -0.139379,
		-0.604092, -0.254014, 0.755347,
		43.444817, 34.860062, 31.974504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858776, 35.668304, 31.808922>,  <43.867683, 35.037872, 31.445761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858776, 35.668304, 31.808922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716312, 35.393002, 32.061729>,  <43.630833, 35.227818, 32.213413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716312, 35.393002, 32.061729>,  <43.858776, 35.668304, 31.808922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716312, 35.393002, 32.061729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467443, 0.454427, 0.758283,
		-0.809102, 0.565505, 0.159872,
		-0.356163, -0.688259, 0.632018,
		43.609463, 35.186523, 32.251335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659447, 35.991558, 32.397385>,  <43.858776, 35.668304, 31.808922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659447, 35.991558, 32.397385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662605, 35.621742, 32.549789>,  <43.664501, 35.399853, 32.641232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662605, 35.621742, 32.549789>,  <43.659447, 35.991558, 32.397385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662605, 35.621742, 32.549789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257351, 0.370068, 0.892648,
		-0.966286, 0.091007, 0.240851,
		0.007894, -0.924537, 0.381012,
		43.664974, 35.344379, 32.664093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352093, 36.036045, 33.145325>,  <43.659447, 35.991558, 32.397385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352093, 36.036045, 33.145325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591667, 35.721905, 33.082722>,  <43.735413, 35.533421, 33.045162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591667, 35.721905, 33.082722>,  <43.352093, 36.036045, 33.145325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591667, 35.721905, 33.082722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425385, 0.146442, 0.893086,
		-0.678469, -0.601477, 0.421787,
		0.598938, -0.785353, -0.156503,
		43.771347, 35.486298, 33.035770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427818, 35.761433, 33.813278>,  <43.352093, 36.036045, 33.145325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427818, 35.761433, 33.813278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722023, 35.592003, 33.601765>,  <43.898544, 35.490345, 33.474857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722023, 35.592003, 33.601765>,  <43.427818, 35.761433, 33.813278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722023, 35.592003, 33.601765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651608, 0.228487, 0.723326,
		-0.185565, -0.876571, 0.444060,
		0.735509, -0.423577, -0.528781,
		43.942677, 35.464931, 33.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791363, 35.382355, 34.254704>,  <43.427818, 35.761433, 33.813278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791363, 35.382355, 34.254704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047642, 35.441078, 33.953251>,  <44.201408, 35.476315, 33.772381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047642, 35.441078, 33.953251>,  <43.791363, 35.382355, 34.254704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047642, 35.441078, 33.953251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750497, 0.087433, 0.655064,
		0.162063, -0.985293, -0.054163,
		0.640694, 0.146811, -0.753629,
		44.239849, 35.485123, 33.727161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204464, 34.936001, 34.469494>,  <43.791363, 35.382355, 34.254704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204464, 34.936001, 34.469494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413345, 35.140179, 34.196220>,  <44.538673, 35.262688, 34.032257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413345, 35.140179, 34.196220>,  <44.204464, 34.936001, 34.469494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413345, 35.140179, 34.196220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822272, -0.088879, 0.562112,
		0.226208, -0.855303, -0.466140,
		0.522206, 0.510448, -0.683186,
		44.570007, 35.293312, 33.991264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810066, 34.516457, 34.334641>,  <44.204464, 34.936001, 34.469494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810066, 34.516457, 34.334641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899712, 34.895119, 34.242023>,  <44.953499, 35.122318, 34.186451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899712, 34.895119, 34.242023>,  <44.810066, 34.516457, 34.334641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899712, 34.895119, 34.242023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829092, -0.060323, 0.555848,
		0.512231, -0.316544, -0.798386,
		0.224112, 0.946658, -0.231544,
		44.966946, 35.179115, 34.172562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567207, 34.454365, 34.336807>,  <44.810066, 34.516457, 34.334641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567207, 34.454365, 34.336807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477695, 34.844170, 34.330551>,  <45.423988, 35.078053, 34.326797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477695, 34.844170, 34.330551>,  <45.567207, 34.454365, 34.336807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477695, 34.844170, 34.330551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783812, 0.189484, 0.591384,
		0.579275, 0.120079, -0.806239,
		-0.223782, 0.974514, -0.015643,
		45.410561, 35.136524, 34.325859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257545, 34.781025, 34.245644>,  <45.567207, 34.454365, 34.336807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257545, 34.781025, 34.245644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003040, 35.041969, 34.410370>,  <45.850338, 35.198536, 34.509205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003040, 35.041969, 34.410370>,  <46.257545, 34.781025, 34.245644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003040, 35.041969, 34.410370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557987, 0.020517, 0.829596,
		0.532749, 0.757628, -0.377064,
		-0.636262, 0.652364, 0.411816,
		45.812160, 35.237679, 34.533916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761364, 34.739822, 33.722012>,  <46.257545, 34.781025, 34.245644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761364, 34.739822, 33.722012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.931934, 34.392200, 33.822334>,  <47.034275, 34.183628, 33.882530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.931934, 34.392200, 33.822334>,  <46.761364, 34.739822, 33.722012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931934, 34.392200, 33.822334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383922, -0.424965, -0.819762,
		0.819004, 0.253274, -0.514864,
		0.426423, -0.869055, 0.250810,
		47.059860, 34.131485, 33.897579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064972, 34.533054, 33.109821>,  <46.761364, 34.739822, 33.722012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064972, 34.533054, 33.109821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.973934, 34.217808, 33.338581>,  <46.919312, 34.028660, 33.475838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.973934, 34.217808, 33.338581>,  <47.064972, 34.533054, 33.109821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973934, 34.217808, 33.338581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433045, -0.444120, -0.784365,
		0.872165, -0.426179, -0.240209,
		-0.227598, -0.788117, 0.571900,
		46.905655, 33.981373, 33.510151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.208153, 33.918846, 32.610378>,  <47.064972, 34.533054, 33.109821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.208153, 33.918846, 32.610378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.988426, 33.786926, 32.917488>,  <46.856590, 33.707775, 33.101753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.988426, 33.786926, 32.917488>,  <47.208153, 33.918846, 32.610378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988426, 33.786926, 32.917488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428457, -0.677679, -0.597642,
		0.717411, -0.657254, 0.230953,
		-0.549315, -0.329801, 0.767779,
		46.823631, 33.687984, 33.147823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263939, 33.163448, 32.623737>,  <47.208153, 33.918846, 32.610378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263939, 33.163448, 32.623737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930614, 33.216961, 32.838287>,  <46.730621, 33.249069, 32.967018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.930614, 33.216961, 32.838287>,  <47.263939, 33.163448, 32.623737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.930614, 33.216961, 32.838287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482839, -0.648606, -0.588368,
		0.269181, -0.749275, 0.605086,
		-0.833312, 0.133782, 0.536372,
		46.680622, 33.257095, 32.999199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894451, 32.473427, 32.714745>,  <47.263939, 33.163448, 32.623737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894451, 32.473427, 32.714745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612930, 32.752213, 32.769741>,  <46.444016, 32.919483, 32.802738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612930, 32.752213, 32.769741>,  <46.894451, 32.473427, 32.714745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612930, 32.752213, 32.769741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606035, -0.488080, -0.628092,
		-0.370648, -0.525380, 0.765895,
		-0.703805, 0.696960, 0.137492,
		46.401791, 32.961300, 32.810989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292751, 32.146767, 32.875626>,  <46.894451, 32.473427, 32.714745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292751, 32.146767, 32.875626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163872, 32.499096, 32.736862>,  <46.086544, 32.710491, 32.653603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163872, 32.499096, 32.736862>,  <46.292751, 32.146767, 32.875626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163872, 32.499096, 32.736862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483358, -0.468148, -0.739731,
		-0.813974, -0.070658, 0.576588,
		-0.322196, 0.880821, -0.346908,
		46.067211, 32.763344, 32.632790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472092, 32.085148, 32.670795>,  <46.292751, 32.146767, 32.875626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472092, 32.085148, 32.670795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654526, 32.387054, 32.482197>,  <45.763985, 32.568199, 32.369038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654526, 32.387054, 32.482197>,  <45.472092, 32.085148, 32.670795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654526, 32.387054, 32.482197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513803, -0.209263, -0.831995,
		-0.726632, 0.621716, 0.292362,
		0.456084, 0.754770, -0.471496,
		45.791351, 32.613487, 32.340748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968601, 32.544239, 32.399693>,  <45.472092, 32.085148, 32.670795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968601, 32.544239, 32.399693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270168, 32.640099, 32.155010>,  <45.451107, 32.697617, 32.008202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270168, 32.640099, 32.155010>,  <44.968601, 32.544239, 32.399693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270168, 32.640099, 32.155010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614199, -0.073364, -0.785734,
		-0.233179, 0.968083, 0.091883,
		0.753915, 0.239651, -0.611702,
		45.496342, 32.711994, 31.971500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671783, 32.858250, 31.774193>,  <44.968601, 32.544239, 32.399693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671783, 32.858250, 31.774193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040764, 32.756142, 31.658314>,  <45.262150, 32.694878, 31.588787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040764, 32.756142, 31.658314>,  <44.671783, 32.858250, 31.774193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040764, 32.756142, 31.658314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296229, 0.013370, -0.955024,
		0.247663, 0.966777, -0.063286,
		0.922449, -0.255271, -0.289698,
		45.317497, 32.679562, 31.571404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833210, 33.361881, 31.144079>,  <44.671783, 32.858250, 31.774193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833210, 33.361881, 31.144079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092236, 33.057644, 31.125511>,  <45.247650, 32.875099, 31.114370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092236, 33.057644, 31.125511>,  <44.833210, 33.361881, 31.144079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092236, 33.057644, 31.125511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131952, -0.051926, -0.989895,
		0.750499, 0.647146, -0.133987,
		0.647564, -0.760596, -0.046421,
		45.286507, 32.829464, 31.111586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178551, 33.559467, 30.611870>,  <44.833210, 33.361881, 31.144079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178551, 33.559467, 30.611870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270702, 33.171040, 30.636997>,  <45.325993, 32.937981, 30.652075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.270702, 33.171040, 30.636997>,  <45.178551, 33.559467, 30.611870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270702, 33.171040, 30.636997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138825, -0.096693, -0.985585,
		0.963148, 0.218335, -0.157085,
		0.230377, -0.971072, 0.062820,
		45.339817, 32.879719, 30.655844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436996, 33.423698, 29.992605>,  <45.178551, 33.559467, 30.611870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436996, 33.423698, 29.992605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377106, 33.053913, 30.132864>,  <45.341171, 32.832043, 30.217020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.377106, 33.053913, 30.132864>,  <45.436996, 33.423698, 29.992605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377106, 33.053913, 30.132864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219352, -0.314748, -0.923482,
		0.964088, -0.215186, -0.155656,
		-0.149728, -0.924461, 0.350646,
		45.332188, 32.776573, 30.238058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978264, 32.901535, 29.618891>,  <45.436996, 33.423698, 29.992605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978264, 32.901535, 29.618891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639694, 32.737709, 29.755020>,  <45.436550, 32.639416, 29.836697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639694, 32.737709, 29.755020>,  <45.978264, 32.901535, 29.618891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639694, 32.737709, 29.755020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265954, -0.228540, -0.936503,
		0.461331, -0.883193, 0.084518,
		-0.846429, -0.409560, 0.340322,
		45.385765, 32.614841, 29.857117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886616, 32.279430, 29.248281>,  <45.978264, 32.901535, 29.618891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886616, 32.279430, 29.248281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524525, 32.384235, 29.382097>,  <45.307270, 32.447117, 29.462387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524525, 32.384235, 29.382097>,  <45.886616, 32.279430, 29.248281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524525, 32.384235, 29.382097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413619, -0.362838, -0.835026,
		-0.097401, -0.894259, 0.436823,
		-0.905225, 0.262010, 0.334541,
		45.252956, 32.462837, 29.482460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427052, 31.762806, 28.942936>,  <45.886616, 32.279430, 29.248281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427052, 31.762806, 28.942936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156693, 32.014896, 29.095764>,  <44.994476, 32.166149, 29.187462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156693, 32.014896, 29.095764>,  <45.427052, 31.762806, 28.942936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156693, 32.014896, 29.095764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601828, -0.172743, -0.779720,
		-0.425400, -0.756951, 0.496045,
		-0.675898, 0.630226, 0.382070,
		44.953922, 32.203964, 29.210384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697952, 31.421875, 28.962074>,  <45.427052, 31.762806, 28.942936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697952, 31.421875, 28.962074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653851, 31.819309, 28.951981>,  <44.627392, 32.057770, 28.945925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653851, 31.819309, 28.951981>,  <44.697952, 31.421875, 28.962074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653851, 31.819309, 28.951981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595367, -0.086351, -0.798800,
		-0.795853, -0.073047, 0.601067,
		-0.110252, 0.993583, -0.025233,
		44.620773, 32.117386, 28.944410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982540, 31.458214, 28.950798>,  <44.697952, 31.421875, 28.962074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982540, 31.458214, 28.950798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168827, 31.787706, 28.821447>,  <44.280598, 31.985403, 28.743837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.168827, 31.787706, 28.821447>,  <43.982540, 31.458214, 28.950798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168827, 31.787706, 28.821447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591525, 0.017981, -0.806086,
		-0.658184, 0.566694, 0.495633,
		0.465716, 0.823732, -0.323379,
		44.308540, 32.034824, 28.724434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504913, 31.743694, 28.624269>,  <43.982540, 31.458214, 28.950798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504913, 31.743694, 28.624269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.804359, 31.977144, 28.498438>,  <43.984028, 32.117214, 28.422939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.804359, 31.977144, 28.498438>,  <43.504913, 31.743694, 28.624269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804359, 31.977144, 28.498438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430935, 0.067742, -0.899837,
		-0.503855, 0.809194, 0.302216,
		0.748616, 0.583623, -0.314578,
		44.028946, 32.152229, 28.404064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205730, 32.387676, 28.231703>,  <43.504913, 31.743694, 28.624269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205730, 32.387676, 28.231703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566742, 32.282005, 28.095673>,  <43.783348, 32.218605, 28.014053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566742, 32.282005, 28.095673>,  <43.205730, 32.387676, 28.231703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566742, 32.282005, 28.095673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345045, 0.028873, -0.938142,
		0.257653, 0.964042, -0.065094,
		0.902529, -0.264176, -0.340077,
		43.837502, 32.202751, 27.993650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327515, 32.822433, 27.618309>,  <43.205730, 32.387676, 28.231703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327515, 32.822433, 27.618309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587734, 32.519306, 27.598358>,  <43.743866, 32.337429, 27.586388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.587734, 32.519306, 27.598358>,  <43.327515, 32.822433, 27.618309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587734, 32.519306, 27.598358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186752, -0.095968, -0.977709,
		0.736142, 0.645366, -0.203957,
		0.650553, -0.757821, -0.049877,
		43.782902, 32.291958, 27.583395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481773, 32.868549, 26.941000>,  <43.327515, 32.822433, 27.618309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481773, 32.868549, 26.941000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624352, 32.505791, 27.030884>,  <43.709896, 32.288136, 27.084814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624352, 32.505791, 27.030884>,  <43.481773, 32.868549, 26.941000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624352, 32.505791, 27.030884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098871, -0.275768, -0.956126,
		0.929072, 0.318585, -0.187960,
		0.356441, -0.906893, 0.224709,
		43.731285, 32.233723, 27.098297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.282806, 39.806149, 41.589046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996548, 39.536560, 41.515713>,  <40.824791, 39.374805, 41.471714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996548, 39.536560, 41.515713>,  <41.282806, 39.806149, 41.589046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996548, 39.536560, 41.515713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545608, -0.375550, -0.749182,
		0.436077, -0.636178, 0.636486,
		-0.715646, -0.673973, -0.183335,
		40.781853, 39.334370, 41.460712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679420, 39.169285, 41.456776>,  <41.282806, 39.806149, 41.589046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679420, 39.169285, 41.456776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314938, 39.141808, 41.294308>,  <41.096249, 39.125320, 41.196827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314938, 39.141808, 41.294308>,  <41.679420, 39.169285, 41.456776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314938, 39.141808, 41.294308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382479, -0.507254, -0.772271,
		-0.152985, -0.859054, 0.488488,
		-0.911211, -0.068691, -0.406172,
		41.041573, 39.121201, 41.172455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708473, 38.500381, 41.224606>,  <41.679420, 39.169285, 41.456776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708473, 38.500381, 41.224606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409264, 38.688496, 41.037292>,  <41.229736, 38.801365, 40.924904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409264, 38.688496, 41.037292>,  <41.708473, 38.500381, 41.224606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409264, 38.688496, 41.037292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151266, -0.566215, -0.810259,
		-0.646203, -0.676929, 0.352405,
		-0.748025, 0.470285, -0.468286,
		41.184856, 38.829582, 40.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379894, 38.048347, 40.782692>,  <41.708473, 38.500381, 41.224606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379894, 38.048347, 40.782692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237740, 38.377628, 40.605587>,  <41.152447, 38.575195, 40.499325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237740, 38.377628, 40.605587>,  <41.379894, 38.048347, 40.782692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237740, 38.377628, 40.605587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108674, -0.506865, -0.855148,
		-0.928381, -0.255789, 0.269592,
		-0.355384, 0.823201, -0.442766,
		41.131123, 38.624588, 40.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906250, 37.788437, 40.433266>,  <41.379894, 38.048347, 40.782692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906250, 37.788437, 40.433266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947037, 38.152878, 40.273518>,  <40.971508, 38.371540, 40.177670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947037, 38.152878, 40.273518>,  <40.906250, 37.788437, 40.433266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947037, 38.152878, 40.273518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063551, -0.394680, -0.916618,
		-0.992756, 0.118845, 0.017657,
		0.101966, 0.911100, -0.399374,
		40.977627, 38.426208, 40.153706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342304, 37.886089, 39.924694>,  <40.906250, 37.788437, 40.433266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342304, 37.886089, 39.924694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627224, 38.153339, 39.838673>,  <40.798176, 38.313690, 39.787060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627224, 38.153339, 39.838673>,  <40.342304, 37.886089, 39.924694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627224, 38.153339, 39.838673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108821, -0.197568, -0.974230,
		-0.693393, 0.717342, -0.068020,
		0.712295, 0.668123, -0.215054,
		40.840912, 38.353775, 39.774155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010902, 38.334705, 39.405720>,  <40.342304, 37.886089, 39.924694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010902, 38.334705, 39.405720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410454, 38.335194, 39.386745>,  <40.650185, 38.335487, 39.375362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410454, 38.335194, 39.386745>,  <40.010902, 38.334705, 39.405720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410454, 38.335194, 39.386745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046507, -0.172922, -0.983837,
		-0.009400, 0.984935, -0.172671,
		0.998874, 0.001217, -0.047432,
		40.710117, 38.335560, 39.372517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210770, 38.732765, 38.762512>,  <40.010902, 38.334705, 39.405720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210770, 38.732765, 38.762512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534786, 38.523720, 38.868874>,  <40.729198, 38.398293, 38.932690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534786, 38.523720, 38.868874>,  <40.210770, 38.732765, 38.762512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534786, 38.523720, 38.868874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150613, -0.252818, -0.955719,
		0.566695, 0.814224, -0.126082,
		0.810045, -0.522611, 0.265903,
		40.777802, 38.366936, 38.948643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650475, 38.794743, 38.263329>,  <40.210770, 38.732765, 38.762512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650475, 38.794743, 38.263329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812187, 38.477066, 38.444794>,  <40.909214, 38.286461, 38.553673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812187, 38.477066, 38.444794>,  <40.650475, 38.794743, 38.263329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812187, 38.477066, 38.444794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241382, -0.385774, -0.890456,
		0.882208, 0.469501, 0.035743,
		0.404282, -0.794196, 0.453662,
		40.933472, 38.238808, 38.580891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260773, 38.592258, 37.924179>,  <40.650475, 38.794743, 38.263329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260773, 38.592258, 37.924179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174255, 38.249550, 38.111435>,  <41.122345, 38.043926, 38.223789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174255, 38.249550, 38.111435>,  <41.260773, 38.592258, 37.924179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174255, 38.249550, 38.111435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291703, -0.514303, -0.806475,
		0.931733, -0.037879, 0.361164,
		-0.216296, -0.856772, 0.468143,
		41.109367, 37.992519, 38.251877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772869, 38.228657, 37.845161>,  <41.260773, 38.592258, 37.924179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772869, 38.228657, 37.845161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489960, 37.955959, 37.919983>,  <41.320213, 37.792339, 37.964878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489960, 37.955959, 37.919983>,  <41.772869, 38.228657, 37.845161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489960, 37.955959, 37.919983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260131, -0.497009, -0.827837,
		0.657344, -0.536845, 0.528863,
		-0.707270, -0.681747, 0.187056,
		41.277779, 37.751434, 37.976101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061123, 37.635841, 37.672207>,  <41.772869, 38.228657, 37.845161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061123, 37.635841, 37.672207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684383, 37.501617, 37.664951>,  <41.458340, 37.421085, 37.660599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684383, 37.501617, 37.664951>,  <42.061123, 37.635841, 37.672207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684383, 37.501617, 37.664951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202835, -0.524618, -0.826821,
		0.267929, -0.782417, 0.562172,
		-0.941845, -0.335557, -0.018141,
		41.401829, 37.400951, 37.659508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064148, 36.817081, 37.570892>,  <42.061123, 37.635841, 37.672207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064148, 36.817081, 37.570892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713657, 36.972202, 37.456463>,  <41.503365, 37.065273, 37.387806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713657, 36.972202, 37.456463>,  <42.064148, 36.817081, 37.570892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713657, 36.972202, 37.456463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053289, -0.667972, -0.742276,
		-0.478947, -0.635155, 0.605960,
		-0.876225, 0.387802, -0.286076,
		41.450790, 37.088543, 37.370640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571194, 36.272827, 37.555050>,  <42.064148, 36.817081, 37.570892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571194, 36.272827, 37.555050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503841, 36.578754, 37.306313>,  <41.463432, 36.762310, 37.157070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503841, 36.578754, 37.306313>,  <41.571194, 36.272827, 37.555050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503841, 36.578754, 37.306313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118341, -0.610608, -0.783041,
		-0.978593, -0.205437, 0.012303,
		-0.168378, 0.764823, -0.621848,
		41.453327, 36.808201, 37.119759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194832, 35.854481, 37.335110>,  <41.571194, 36.272827, 37.555050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194832, 35.854481, 37.335110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371689, 35.589809, 37.577328>,  <42.477802, 35.431007, 37.722660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371689, 35.589809, 37.577328>,  <42.194832, 35.854481, 37.335110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371689, 35.589809, 37.577328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748728, 0.099472, 0.655371,
		-0.493883, -0.743157, -0.451440,
		0.442138, -0.661682, 0.605549,
		42.504330, 35.391304, 37.758991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623692, 35.512226, 37.689217>,  <42.194832, 35.854481, 37.335110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623692, 35.512226, 37.689217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921989, 35.403137, 37.932358>,  <42.100967, 35.337685, 38.078243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921989, 35.403137, 37.932358>,  <41.623692, 35.512226, 37.689217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921989, 35.403137, 37.932358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647003, -0.078852, 0.758399,
		-0.158901, -0.958856, -0.235255,
		0.745746, -0.272721, 0.607853,
		42.145714, 35.321320, 38.114716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417458, 34.924072, 38.114025>,  <41.623692, 35.512226, 37.689217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417458, 34.924072, 38.114025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721489, 35.056049, 38.337959>,  <41.903908, 35.135235, 38.472321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721489, 35.056049, 38.337959>,  <41.417458, 34.924072, 38.114025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721489, 35.056049, 38.337959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599238, 0.022614, 0.800252,
		0.251380, -0.943729, 0.214905,
		0.760080, 0.329946, 0.559833,
		41.949512, 35.155033, 38.505909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484661, 34.502411, 38.725201>,  <41.417458, 34.924072, 38.114025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484661, 34.502411, 38.725201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662708, 34.847462, 38.821316>,  <41.769539, 35.054493, 38.878986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662708, 34.847462, 38.821316>,  <41.484661, 34.502411, 38.725201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662708, 34.847462, 38.821316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679696, 0.150773, 0.717831,
		0.582993, -0.482845, 0.653438,
		0.445122, 0.862629, 0.240288,
		41.796246, 35.106251, 38.893402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720303, 34.487179, 39.481403>,  <41.484661, 34.502411, 38.725201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720303, 34.487179, 39.481403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675720, 34.872009, 39.381809>,  <41.648972, 35.102905, 39.322052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675720, 34.872009, 39.381809>,  <41.720303, 34.487179, 39.481403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675720, 34.872009, 39.381809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608710, 0.131954, 0.782343,
		0.785526, 0.238754, 0.570917,
		-0.111452, 0.962073, -0.248985,
		41.642284, 35.160633, 39.307114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639404, 34.844437, 40.115528>,  <41.720303, 34.487179, 39.481403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639404, 34.844437, 40.115528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533207, 35.111053, 39.836891>,  <41.469490, 35.271023, 39.669708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533207, 35.111053, 39.836891>,  <41.639404, 34.844437, 40.115528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533207, 35.111053, 39.836891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764440, 0.294739, 0.573376,
		0.587490, 0.684728, 0.431280,
		-0.265492, 0.666540, -0.696590,
		41.453560, 35.311016, 39.627914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527328, 35.506577, 40.468700>,  <41.639404, 34.844437, 40.115528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527328, 35.506577, 40.468700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323910, 35.485588, 40.124928>,  <41.201859, 35.472996, 39.918663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323910, 35.485588, 40.124928>,  <41.527328, 35.506577, 40.468700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323910, 35.485588, 40.124928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847869, 0.204414, 0.489217,
		0.150009, 0.977477, -0.148445,
		-0.508543, -0.052475, -0.859436,
		41.171349, 35.469845, 39.867096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122910, 36.106972, 40.414284>,  <41.527328, 35.506577, 40.468700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122910, 36.106972, 40.414284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949451, 35.848568, 40.163006>,  <40.845379, 35.693527, 40.012238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949451, 35.848568, 40.163006>,  <41.122910, 36.106972, 40.414284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949451, 35.848568, 40.163006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872739, 0.127618, 0.471211,
		-0.224236, 0.752588, -0.619136,
		-0.433641, -0.646007, -0.628197,
		40.819359, 35.654766, 39.974548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461735, 36.454876, 40.176552>,  <41.122910, 36.106972, 40.414284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461735, 36.454876, 40.176552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422180, 36.059788, 40.128174>,  <40.398449, 35.822735, 40.099148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422180, 36.059788, 40.128174>,  <40.461735, 36.454876, 40.176552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422180, 36.059788, 40.128174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958400, 0.061828, 0.278653,
		-0.267754, 0.143469, -0.952746,
		-0.098884, -0.987722, -0.120945,
		40.392513, 35.763470, 40.091888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763123, 36.320778, 39.948666>,  <40.461735, 36.454876, 40.176552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763123, 36.320778, 39.948666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890121, 35.967457, 40.086639>,  <39.966320, 35.755466, 40.169426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890121, 35.967457, 40.086639>,  <39.763123, 36.320778, 39.948666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890121, 35.967457, 40.086639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823432, -0.076414, 0.562246,
		-0.470273, -0.462543, -0.751597,
		0.317495, -0.883298, 0.344937,
		39.985371, 35.702469, 40.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167217, 35.898289, 39.942745>,  <39.763123, 36.320778, 39.948666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167217, 35.898289, 39.942745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408062, 35.701191, 40.194035>,  <39.552570, 35.582932, 40.344807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408062, 35.701191, 40.194035>,  <39.167217, 35.898289, 39.942745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408062, 35.701191, 40.194035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741912, -0.054570, 0.668273,
		-0.295009, -0.868459, -0.398433,
		0.602110, -0.492749, 0.628221,
		39.588696, 35.553368, 40.382500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708908, 35.406693, 40.270958>,  <39.167217, 35.898289, 39.942745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708908, 35.406693, 40.270958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034130, 35.457310, 40.498264>,  <39.229263, 35.487682, 40.634647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034130, 35.457310, 40.498264>,  <38.708908, 35.406693, 40.270958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034130, 35.457310, 40.498264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576828, 0.043036, 0.815731,
		0.078777, -0.991026, 0.107990,
		0.813058, 0.126553, 0.568261,
		39.278049, 35.495274, 40.668743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743244, 34.904507, 40.739243>,  <38.708908, 35.406693, 40.270958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743244, 34.904507, 40.739243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971714, 35.187649, 40.905476>,  <39.108795, 35.357533, 41.005215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971714, 35.187649, 40.905476>,  <38.743244, 34.904507, 40.739243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971714, 35.187649, 40.905476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535629, -0.062226, 0.842158,
		0.621984, -0.703613, 0.343605,
		0.571172, 0.707854, 0.415579,
		39.143066, 35.400005, 41.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779297, 34.620190, 41.433208>,  <38.743244, 34.904507, 40.739243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779297, 34.620190, 41.433208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884220, 35.006016, 41.421810>,  <38.947174, 35.237511, 41.414970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884220, 35.006016, 41.421810>,  <38.779297, 34.620190, 41.433208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884220, 35.006016, 41.421810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724572, 0.216376, 0.654352,
		0.637332, -0.150990, 0.755652,
		0.262305, 0.964564, -0.028501,
		38.962914, 35.295383, 41.413261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990292, 34.003700, 41.776360>,  <38.779297, 34.620190, 41.433208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990292, 34.003700, 41.776360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653217, 33.801956, 41.851727>,  <38.450974, 33.680908, 41.896946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653217, 33.801956, 41.851727>,  <38.990292, 34.003700, 41.776360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653217, 33.801956, 41.851727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165858, -0.089761, -0.982056,
		0.512223, -0.858815, -0.008012,
		-0.842685, -0.504361, 0.188419,
		38.400414, 33.650646, 41.908253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927319, 33.446911, 41.183407>,  <38.990292, 34.003700, 41.776360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927319, 33.446911, 41.183407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569561, 33.472340, 41.360504>,  <38.354908, 33.487598, 41.466763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569561, 33.472340, 41.360504>,  <38.927319, 33.446911, 41.183407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569561, 33.472340, 41.360504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447197, -0.147020, -0.882270,
		0.009005, -0.987089, 0.159923,
		-0.894390, 0.063572, 0.442747,
		38.301243, 33.491413, 41.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631927, 32.863235, 41.032619>,  <38.927319, 33.446911, 41.183407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631927, 32.863235, 41.032619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333893, 33.113464, 41.125145>,  <38.155071, 33.263599, 41.180660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333893, 33.113464, 41.125145>,  <38.631927, 32.863235, 41.032619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333893, 33.113464, 41.125145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416468, -0.165477, -0.893964,
		-0.520958, -0.762419, 0.383824,
		-0.745089, 0.625568, 0.231317,
		38.110367, 33.301136, 41.194538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018959, 32.572212, 40.834934>,  <38.631927, 32.863235, 41.032619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018959, 32.572212, 40.834934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934307, 32.961742, 40.868122>,  <37.883518, 33.195461, 40.888035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934307, 32.961742, 40.868122>,  <38.018959, 32.572212, 40.834934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934307, 32.961742, 40.868122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324532, 0.010058, -0.945821,
		-0.921896, -0.227087, 0.313908,
		-0.211627, 0.973822, 0.082970,
		37.870819, 33.253891, 40.893013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286137, 32.662594, 40.701210>,  <38.018959, 32.572212, 40.834934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286137, 32.662594, 40.701210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451412, 33.020718, 40.634640>,  <37.550579, 33.235592, 40.594696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451412, 33.020718, 40.634640>,  <37.286137, 32.662594, 40.701210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451412, 33.020718, 40.634640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430375, 0.030925, -0.902121,
		-0.802529, 0.444373, 0.398096,
		0.413189, 0.895308, -0.166429,
		37.575371, 33.289310, 40.584713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764812, 33.071297, 40.493618>,  <37.286137, 32.662594, 40.701210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764812, 33.071297, 40.493618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102058, 33.249191, 40.372715>,  <37.304405, 33.355927, 40.300171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102058, 33.249191, 40.372715>,  <36.764812, 33.071297, 40.493618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102058, 33.249191, 40.372715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432557, 0.227000, -0.872563,
		-0.319446, 0.866419, 0.383761,
		0.843118, 0.444736, -0.302261,
		37.354996, 33.382610, 40.282036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444893, 33.534420, 40.090736>,  <36.764812, 33.071297, 40.493618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444893, 33.534420, 40.090736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832138, 33.555103, 39.992691>,  <37.064487, 33.567513, 39.933865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832138, 33.555103, 39.992691>,  <36.444893, 33.534420, 40.090736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832138, 33.555103, 39.992691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250476, 0.214524, -0.944056,
		0.003769, 0.975349, 0.220635,
		0.968115, 0.051705, -0.245110,
		37.122574, 33.570614, 39.919159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532166, 34.162735, 39.754559>,  <36.444893, 33.534420, 40.090736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532166, 34.162735, 39.754559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808964, 33.899200, 39.636524>,  <36.975044, 33.741081, 39.565704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808964, 33.899200, 39.636524>,  <36.532166, 34.162735, 39.754559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808964, 33.899200, 39.636524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214042, 0.203131, -0.955471,
		0.689439, 0.724344, -0.000453,
		0.691997, -0.658836, -0.295086,
		37.016563, 33.701550, 39.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720467, 34.451736, 39.234421>,  <36.532166, 34.162735, 39.754559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720467, 34.451736, 39.234421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880753, 34.091362, 39.167789>,  <36.976925, 33.875137, 39.127811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880753, 34.091362, 39.167789>,  <36.720467, 34.451736, 39.234421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880753, 34.091362, 39.167789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172193, 0.104514, -0.979503,
		0.899875, 0.421187, -0.113254,
		0.400718, -0.900932, -0.166575,
		37.000969, 33.821083, 39.117817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224400, 34.544727, 38.751354>,  <36.720467, 34.451736, 39.234421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224400, 34.544727, 38.751354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096741, 34.165901, 38.737442>,  <37.020145, 33.938606, 38.729095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096741, 34.165901, 38.737442>,  <37.224400, 34.544727, 38.751354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096741, 34.165901, 38.737442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070783, 0.060420, -0.995660,
		0.945060, -0.315296, -0.086319,
		-0.319143, -0.947068, -0.034783,
		37.000999, 33.881783, 38.727009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471233, 34.221272, 38.172108>,  <37.224400, 34.544727, 38.751354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471233, 34.221272, 38.172108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162262, 33.979885, 38.251286>,  <36.976879, 33.835052, 38.298794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162262, 33.979885, 38.251286>,  <37.471233, 34.221272, 38.172108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162262, 33.979885, 38.251286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278900, 0.042289, -0.959389,
		0.570591, -0.796263, -0.200973,
		-0.772425, -0.603470, 0.197949,
		36.930534, 33.798843, 38.310669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410164, 33.689369, 37.642963>,  <37.471233, 34.221272, 38.172108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410164, 33.689369, 37.642963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043915, 33.718319, 37.801151>,  <36.824165, 33.735687, 37.896065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043915, 33.718319, 37.801151>,  <37.410164, 33.689369, 37.642963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043915, 33.718319, 37.801151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396166, 0.005014, -0.918165,
		-0.068431, -0.997365, 0.024080,
		-0.915625, 0.072370, 0.395466,
		36.769226, 33.740028, 37.919792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.742821, 33.747208, 45.281586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355556, 33.710232, 45.374634>,  <39.123196, 33.688046, 45.430462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355556, 33.710232, 45.374634>,  <39.742821, 33.747208, 45.281586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355556, 33.710232, 45.374634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169465, -0.441922, -0.880901,
		0.184228, -0.892279, 0.412188,
		-0.968164, -0.092435, 0.232624,
		39.065105, 33.682503, 45.444420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570873, 33.093491, 45.043812>,  <39.742821, 33.747208, 45.281586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570873, 33.093491, 45.043812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238033, 33.311615, 45.084293>,  <39.038330, 33.442490, 45.108582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238033, 33.311615, 45.084293>,  <39.570873, 33.093491, 45.043812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238033, 33.311615, 45.084293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280788, -0.256831, -0.924768,
		-0.478296, -0.797916, 0.366827,
		-0.832100, 0.545314, 0.101204,
		38.988403, 33.475208, 45.114655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116932, 32.764256, 44.554958>,  <39.570873, 33.093491, 45.043812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116932, 32.764256, 44.554958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948666, 33.120800, 44.622505>,  <38.847706, 33.334724, 44.663033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948666, 33.120800, 44.622505>,  <39.116932, 32.764256, 44.554958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948666, 33.120800, 44.622505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278818, 0.050107, -0.959036,
		-0.863307, -0.450521, 0.227449,
		-0.420668, 0.891359, 0.168871,
		38.822464, 33.388206, 44.673168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499340, 32.588085, 44.301064>,  <39.116932, 32.764256, 44.554958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499340, 32.588085, 44.301064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530891, 32.986439, 44.318893>,  <38.549824, 33.225452, 44.329590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530891, 32.986439, 44.318893>,  <38.499340, 32.588085, 44.301064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530891, 32.986439, 44.318893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434970, 0.074614, -0.897348,
		-0.896983, 0.051399, 0.439067,
		0.078883, 0.995887, 0.044570,
		38.554558, 33.285206, 44.332264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744797, 32.899292, 44.192913>,  <38.499340, 32.588085, 44.301064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744797, 32.899292, 44.192913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026188, 33.165726, 44.093758>,  <38.195023, 33.325584, 44.034264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026188, 33.165726, 44.093758>,  <37.744797, 32.899292, 44.192913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026188, 33.165726, 44.093758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370370, 0.045892, -0.927750,
		-0.606580, 0.744466, 0.278981,
		0.703481, 0.666081, -0.247891,
		38.237232, 33.365551, 44.019390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401985, 33.392242, 43.751694>,  <37.744797, 32.899292, 44.192913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401985, 33.392242, 43.751694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794891, 33.419582, 43.681858>,  <38.030636, 33.435986, 43.639957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794891, 33.419582, 43.681858>,  <37.401985, 33.392242, 43.751694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794891, 33.419582, 43.681858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186308, 0.251406, -0.949781,
		-0.021027, 0.965465, 0.259682,
		0.982266, 0.068352, -0.174587,
		38.089573, 33.440086, 43.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519382, 34.037109, 43.353718>,  <37.401985, 33.392242, 43.751694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519382, 34.037109, 43.353718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816624, 33.778214, 43.285755>,  <37.994968, 33.622875, 43.244976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816624, 33.778214, 43.285755>,  <37.519382, 34.037109, 43.353718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816624, 33.778214, 43.285755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047083, 0.202702, -0.978108,
		0.667515, 0.734838, 0.120155,
		0.743106, -0.647244, -0.169906,
		38.039555, 33.584042, 43.234783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858452, 34.399887, 42.885857>,  <37.519382, 34.037109, 43.353718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858452, 34.399887, 42.885857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982746, 34.023880, 42.829548>,  <38.057323, 33.798275, 42.795765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982746, 34.023880, 42.829548>,  <37.858452, 34.399887, 42.885857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982746, 34.023880, 42.829548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088939, 0.176207, -0.980327,
		0.946325, 0.292106, 0.138358,
		0.310739, -0.940014, -0.140770,
		38.075966, 33.741875, 42.787315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376995, 34.463253, 42.292252>,  <37.858452, 34.399887, 42.885857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376995, 34.463253, 42.292252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321075, 34.070782, 42.345539>,  <38.287525, 33.835300, 42.377510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321075, 34.070782, 42.345539>,  <38.376995, 34.463253, 42.292252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321075, 34.070782, 42.345539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011286, -0.136108, -0.990630,
		0.990116, -0.136985, 0.030101,
		-0.139799, -0.981178, 0.133217,
		38.279137, 33.776428, 42.385506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046783, 34.727394, 42.087650>,  <38.376995, 34.463253, 42.292252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046783, 34.727394, 42.087650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945202, 35.080856, 41.930340>,  <38.884251, 35.292934, 41.835953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945202, 35.080856, 41.930340>,  <39.046783, 34.727394, 42.087650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945202, 35.080856, 41.930340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290758, 0.318049, 0.902388,
		0.922477, 0.343516, 0.176158,
		-0.253958, 0.883652, -0.393274,
		38.869015, 35.345951, 41.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340305, 35.240520, 42.528324>,  <39.046783, 34.727394, 42.087650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340305, 35.240520, 42.528324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057793, 35.432888, 42.320522>,  <38.888287, 35.548309, 42.195843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.057793, 35.432888, 42.320522>,  <39.340305, 35.240520, 42.528324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057793, 35.432888, 42.320522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212874, 0.555597, 0.803739,
		0.675167, 0.678256, -0.290033,
		-0.706282, 0.480918, -0.519503,
		38.845909, 35.577164, 42.164673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472309, 35.918758, 42.741089>,  <39.340305, 35.240520, 42.528324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472309, 35.918758, 42.741089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095570, 35.893795, 42.609013>,  <38.869526, 35.878819, 42.529766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.095570, 35.893795, 42.609013>,  <39.472309, 35.918758, 42.741089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095570, 35.893795, 42.609013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312121, 0.526527, 0.790790,
		0.124501, 0.847864, -0.515388,
		-0.941849, -0.062409, -0.330190,
		38.813015, 35.875072, 42.509956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245735, 36.595612, 42.816940>,  <39.472309, 35.918758, 42.741089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245735, 36.595612, 42.816940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924145, 36.360588, 42.780262>,  <38.731190, 36.219574, 42.758255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924145, 36.360588, 42.780262>,  <39.245735, 36.595612, 42.816940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924145, 36.360588, 42.780262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357599, 0.354478, 0.863984,
		-0.475133, 0.727410, -0.495100,
		-0.803972, -0.587555, -0.091697,
		38.682953, 36.184322, 42.752754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675400, 37.092979, 42.895409>,  <39.245735, 36.595612, 42.816940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675400, 37.092979, 42.895409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568966, 36.711960, 42.954521>,  <38.505104, 36.483349, 42.989990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568966, 36.711960, 42.954521>,  <38.675400, 37.092979, 42.895409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568966, 36.711960, 42.954521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376578, 0.243846, 0.893716,
		-0.887348, 0.182157, -0.423595,
		-0.266089, -0.952553, 0.147780,
		38.489140, 36.426193, 42.998856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033710, 37.200367, 43.132095>,  <38.675400, 37.092979, 42.895409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033710, 37.200367, 43.132095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127316, 36.837589, 43.272202>,  <38.183479, 36.619923, 43.356266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.127316, 36.837589, 43.272202>,  <38.033710, 37.200367, 43.132095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127316, 36.837589, 43.272202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336118, 0.262581, 0.904475,
		-0.912284, -0.329390, -0.243394,
		0.234014, -0.906947, 0.350262,
		38.197521, 36.565506, 43.377281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490009, 37.015579, 43.642136>,  <38.033710, 37.200367, 43.132095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490009, 37.015579, 43.642136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797264, 36.769573, 43.713387>,  <37.981617, 36.621971, 43.756138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797264, 36.769573, 43.713387>,  <37.490009, 37.015579, 43.642136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797264, 36.769573, 43.713387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215719, 0.013359, 0.976364,
		-0.602856, -0.788404, -0.122409,
		0.768134, -0.615013, 0.178128,
		38.027706, 36.585068, 43.766827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175350, 36.539654, 44.044895>,  <37.490009, 37.015579, 43.642136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175350, 36.539654, 44.044895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571175, 36.517677, 44.098202>,  <37.808670, 36.504490, 44.130184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571175, 36.517677, 44.098202>,  <37.175350, 36.539654, 44.044895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571175, 36.517677, 44.098202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134945, -0.028123, 0.990454,
		-0.050672, -0.998093, -0.035244,
		0.989556, -0.054944, 0.133262,
		37.868042, 36.501194, 44.138180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267712, 36.107086, 44.617794>,  <37.175350, 36.539654, 44.044895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267712, 36.107086, 44.617794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618107, 36.297348, 44.585800>,  <37.828342, 36.411507, 44.566605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618107, 36.297348, 44.585800>,  <37.267712, 36.107086, 44.617794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618107, 36.297348, 44.585800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052929, 0.070040, 0.996139,
		0.479420, -0.876839, 0.036178,
		0.875988, 0.475654, -0.079989,
		37.880905, 36.440044, 44.561802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752644, 35.763847, 45.001202>,  <37.267712, 36.107086, 44.617794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752644, 35.763847, 45.001202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910679, 36.130348, 44.974705>,  <38.005501, 36.350250, 44.958805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.910679, 36.130348, 44.974705>,  <37.752644, 35.763847, 45.001202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910679, 36.130348, 44.974705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293710, -0.057666, 0.954154,
		0.870426, -0.396429, -0.291895,
		0.395086, 0.916253, -0.066241,
		38.029205, 36.405224, 44.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323151, 35.729382, 45.331524>,  <37.752644, 35.763847, 45.001202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323151, 35.729382, 45.331524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268852, 36.125355, 45.315475>,  <38.236275, 36.362938, 45.305847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268852, 36.125355, 45.315475>,  <38.323151, 35.729382, 45.331524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268852, 36.125355, 45.315475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400081, 0.091814, 0.911869,
		0.906371, 0.107729, -0.408516,
		-0.135742, 0.989932, -0.040117,
		38.228130, 36.422333, 45.303440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889843, 35.911278, 45.762138>,  <38.323151, 35.729382, 45.331524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889843, 35.911278, 45.762138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659264, 36.233166, 45.705387>,  <38.520916, 36.426300, 45.671337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.659264, 36.233166, 45.705387>,  <38.889843, 35.911278, 45.762138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659264, 36.233166, 45.705387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258622, 0.344375, 0.902508,
		0.775127, 0.483557, -0.406634,
		-0.576449, 0.804722, -0.141876,
		38.486328, 36.474583, 45.662823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359772, 36.475716, 45.900116>,  <38.889843, 35.911278, 45.762138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359772, 36.475716, 45.900116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993767, 36.628445, 45.952221>,  <38.774166, 36.720081, 45.983482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993767, 36.628445, 45.952221>,  <39.359772, 36.475716, 45.900116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993767, 36.628445, 45.952221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249882, 0.282896, 0.926029,
		0.316731, 0.879874, -0.354264,
		-0.915008, 0.381826, 0.130262,
		38.719265, 36.742992, 45.991299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356262, 37.245422, 46.135895>,  <39.359772, 36.475716, 45.900116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356262, 37.245422, 46.135895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013306, 37.092426, 46.273640>,  <38.807533, 37.000629, 46.356285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013306, 37.092426, 46.273640>,  <39.356262, 37.245422, 46.135895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013306, 37.092426, 46.273640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230098, 0.313623, 0.921247,
		-0.460365, 0.869105, -0.180888,
		-0.857391, -0.382488, 0.344360,
		38.756088, 36.977680, 46.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.408741, 39.789783, 46.635498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558849, 39.424274, 46.573292>,  <33.648914, 39.204967, 46.535969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.558849, 39.424274, 46.573292>,  <33.408741, 39.789783, 46.635498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558849, 39.424274, 46.573292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159597, 0.228974, -0.960260,
		0.913070, 0.335542, 0.231764,
		0.375275, -0.913774, -0.155518,
		33.671432, 39.150143, 46.526638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024319, 39.968849, 46.282032>,  <33.408741, 39.789783, 46.635498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024319, 39.968849, 46.282032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953354, 39.584164, 46.198483>,  <33.910774, 39.353352, 46.148354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953354, 39.584164, 46.198483>,  <34.024319, 39.968849, 46.282032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953354, 39.584164, 46.198483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396969, 0.124278, -0.909379,
		0.900522, -0.244253, 0.359723,
		-0.177413, -0.961715, -0.208876,
		33.900131, 39.295650, 46.135818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635048, 39.648331, 46.051022>,  <34.024319, 39.968849, 46.282032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635048, 39.648331, 46.051022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337616, 39.438225, 45.885529>,  <34.159157, 39.312160, 45.786232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337616, 39.438225, 45.885529>,  <34.635048, 39.648331, 46.051022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337616, 39.438225, 45.885529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335217, 0.242536, -0.910388,
		0.578543, -0.815640, -0.004268,
		-0.743584, -0.525268, -0.413734,
		34.114540, 39.280643, 45.761410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976116, 39.400047, 45.476456>,  <34.635048, 39.648331, 46.051022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976116, 39.400047, 45.476456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587322, 39.377140, 45.385277>,  <34.354046, 39.363396, 45.330570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.587322, 39.377140, 45.385277>,  <34.976116, 39.400047, 45.476456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587322, 39.377140, 45.385277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222456, 0.088802, -0.970890,
		0.075823, -0.994403, -0.073580,
		-0.971990, -0.057248, -0.227944,
		34.295727, 39.359959, 45.316895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854939, 38.893497, 44.977016>,  <34.976116, 39.400047, 45.476456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854939, 38.893497, 44.977016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517754, 39.100845, 44.919445>,  <34.315445, 39.225254, 44.884903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517754, 39.100845, 44.919445>,  <34.854939, 38.893497, 44.977016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517754, 39.100845, 44.919445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124562, -0.072202, -0.989581,
		-0.523357, -0.852106, -0.003705,
		-0.842960, 0.518366, -0.143928,
		34.264866, 39.256355, 44.876266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451229, 38.499569, 44.433342>,  <34.854939, 38.893497, 44.977016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451229, 38.499569, 44.433342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281406, 38.861656, 44.426048>,  <34.179512, 39.078911, 44.421673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281406, 38.861656, 44.426048>,  <34.451229, 38.499569, 44.433342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281406, 38.861656, 44.426048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032123, -0.005068, -0.999471,
		-0.904833, -0.424914, -0.026927,
		-0.424553, 0.905220, -0.018235,
		34.154041, 39.133221, 44.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799080, 38.486565, 43.976982>,  <34.451229, 38.499569, 44.433342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799080, 38.486565, 43.976982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878010, 38.878338, 43.993855>,  <33.925365, 39.113400, 44.003979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.878010, 38.878338, 43.993855>,  <33.799080, 38.486565, 43.976982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878010, 38.878338, 43.993855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069830, 0.028876, -0.997141,
		-0.977849, 0.199704, -0.062696,
		0.197323, 0.979431, 0.042181,
		33.937206, 39.172169, 44.006508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364094, 38.757111, 43.485359>,  <33.799080, 38.486565, 43.976982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364094, 38.757111, 43.485359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648323, 39.032295, 43.544415>,  <33.818859, 39.197407, 43.579849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648323, 39.032295, 43.544415>,  <33.364094, 38.757111, 43.485359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648323, 39.032295, 43.544415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088389, 0.120890, -0.988723,
		-0.698050, 0.715609, 0.025093,
		0.710573, 0.687960, 0.147639,
		33.861496, 39.238682, 43.588707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174679, 39.246101, 43.021973>,  <33.364094, 38.757111, 43.485359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174679, 39.246101, 43.021973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554882, 39.321648, 43.120659>,  <33.783005, 39.366974, 43.179871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554882, 39.321648, 43.120659>,  <33.174679, 39.246101, 43.021973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554882, 39.321648, 43.120659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251195, 0.000245, -0.967936,
		-0.182871, 0.982003, -0.047210,
		0.950505, 0.188866, 0.246719,
		33.840034, 39.378307, 43.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423019, 39.912773, 42.638393>,  <33.174679, 39.246101, 43.021973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423019, 39.912773, 42.638393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744953, 39.697006, 42.737396>,  <33.938114, 39.567547, 42.796799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744953, 39.697006, 42.737396>,  <33.423019, 39.912773, 42.638393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744953, 39.697006, 42.737396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259314, -0.055499, -0.964197,
		0.533845, 0.840205, 0.095212,
		0.804839, -0.539422, 0.247505,
		33.986404, 39.535179, 42.811649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899403, 40.125027, 42.178341>,  <33.423019, 39.912773, 42.638393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899403, 40.125027, 42.178341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038731, 39.771309, 42.302723>,  <34.122326, 39.559078, 42.377350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.038731, 39.771309, 42.302723>,  <33.899403, 40.125027, 42.178341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038731, 39.771309, 42.302723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472356, -0.120947, -0.873070,
		0.809663, 0.450988, 0.375575,
		0.348319, -0.884298, 0.310953,
		34.143227, 39.506020, 42.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493679, 39.989628, 41.760048>,  <33.899403, 40.125027, 42.178341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493679, 39.989628, 41.760048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450962, 39.615627, 41.895325>,  <34.425331, 39.391228, 41.976490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450962, 39.615627, 41.895325>,  <34.493679, 39.989628, 41.760048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450962, 39.615627, 41.895325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317594, -0.354399, -0.879509,
		0.942194, 0.013482, 0.334797,
		-0.106794, -0.934997, 0.338194,
		34.418922, 39.335129, 41.996784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122257, 39.566662, 41.611851>,  <34.493679, 39.989628, 41.760048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122257, 39.566662, 41.611851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828205, 39.300140, 41.661850>,  <34.651772, 39.140228, 41.691849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.828205, 39.300140, 41.661850>,  <35.122257, 39.566662, 41.611851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828205, 39.300140, 41.661850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256295, -0.443862, -0.858661,
		0.627609, -0.599193, 0.497067,
		-0.735133, -0.666299, 0.125002,
		34.607666, 39.100250, 41.699352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407597, 38.866310, 41.351070>,  <35.122257, 39.566662, 41.611851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407597, 38.866310, 41.351070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007988, 38.857868, 41.335567>,  <34.768223, 38.852802, 41.326267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007988, 38.857868, 41.335567>,  <35.407597, 38.866310, 41.351070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007988, 38.857868, 41.335567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044119, -0.499930, -0.864942,
		-0.001119, -0.865809, 0.500374,
		-0.999026, -0.021108, -0.038758,
		34.708279, 38.851536, 41.323940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937668, 38.399147, 41.429756>,  <35.407597, 38.866310, 41.351070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937668, 38.399147, 41.429756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249153, 38.635632, 41.345772>,  <36.436043, 38.777523, 41.295383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249153, 38.635632, 41.345772>,  <35.937668, 38.399147, 41.429756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249153, 38.635632, 41.345772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101842, 0.211098, 0.972145,
		0.619064, -0.778401, 0.104174,
		0.778709, 0.591211, -0.209957,
		36.482765, 38.812996, 41.282784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651653, 38.167667, 41.769661>,  <35.937668, 38.399147, 41.429756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651653, 38.167667, 41.769661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.638168, 38.561657, 41.701916>,  <36.630077, 38.798050, 41.661266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.638168, 38.561657, 41.701916>,  <36.651653, 38.167667, 41.769661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638168, 38.561657, 41.701916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091261, 0.171788, 0.980897,
		0.995256, 0.017610, -0.095681,
		-0.033711, 0.984976, -0.169366,
		36.628056, 38.857151, 41.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093365, 38.402599, 42.360447>,  <36.651653, 38.167667, 41.769661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093365, 38.402599, 42.360447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955574, 38.754364, 42.229012>,  <36.872902, 38.965424, 42.150150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955574, 38.754364, 42.229012>,  <37.093365, 38.402599, 42.360447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955574, 38.754364, 42.229012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040969, 0.363757, 0.930593,
		0.937902, 0.307102, -0.161333,
		-0.344473, 0.879414, -0.328587,
		36.852234, 39.018188, 42.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552166, 38.961708, 42.523682>,  <37.093365, 38.402599, 42.360447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552166, 38.961708, 42.523682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198650, 39.145309, 42.487411>,  <36.986542, 39.255470, 42.465649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.198650, 39.145309, 42.487411>,  <37.552166, 38.961708, 42.523682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198650, 39.145309, 42.487411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106715, 0.386454, 0.916114,
		0.455545, 0.799979, -0.390528,
		-0.883793, 0.459007, -0.090678,
		36.933514, 39.283012, 42.460209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681450, 39.521942, 42.861950>,  <37.552166, 38.961708, 42.523682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681450, 39.521942, 42.861950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282307, 39.514957, 42.836712>,  <37.042820, 39.510765, 42.821571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282307, 39.514957, 42.836712>,  <37.681450, 39.521942, 42.861950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282307, 39.514957, 42.836712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062305, 0.549097, 0.833433,
		0.020090, 0.835576, -0.549008,
		-0.997855, -0.017463, -0.063092,
		36.982948, 39.509720, 42.817783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519901, 40.177574, 42.962200>,  <37.681450, 39.521942, 42.861950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519901, 40.177574, 42.962200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204262, 39.947647, 43.048824>,  <37.014877, 39.809689, 43.100800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.204262, 39.947647, 43.048824>,  <37.519901, 40.177574, 42.962200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204262, 39.947647, 43.048824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008244, 0.362426, 0.931976,
		-0.614206, 0.733640, -0.290730,
		-0.789103, -0.574822, 0.216556,
		36.967529, 39.775200, 43.113792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173759, 40.604298, 43.361294>,  <37.519901, 40.177574, 42.962200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173759, 40.604298, 43.361294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993896, 40.258671, 43.451801>,  <36.885979, 40.051296, 43.506107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.993896, 40.258671, 43.451801>,  <37.173759, 40.604298, 43.361294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993896, 40.258671, 43.451801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089294, 0.208567, 0.973923,
		-0.888725, 0.458139, -0.016628,
		-0.449660, -0.864065, 0.226267,
		36.858997, 39.999451, 43.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622681, 40.826992, 43.849094>,  <37.173759, 40.604298, 43.361294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622681, 40.826992, 43.849094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682522, 40.434124, 43.894630>,  <36.718426, 40.198402, 43.921951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.682522, 40.434124, 43.894630>,  <36.622681, 40.826992, 43.849094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682522, 40.434124, 43.894630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036946, 0.109506, 0.993299,
		-0.988056, -0.152807, -0.019905,
		0.149604, -0.982170, 0.113844,
		36.727402, 40.139473, 43.928783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071754, 40.695972, 44.196777>,  <36.622681, 40.826992, 43.849094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071754, 40.695972, 44.196777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340683, 40.404057, 44.246403>,  <36.502041, 40.228909, 44.276176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340683, 40.404057, 44.246403>,  <36.071754, 40.695972, 44.196777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340683, 40.404057, 44.246403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065728, 0.108075, 0.991968,
		-0.737336, -0.675075, 0.024694,
		0.672321, -0.729790, 0.124059,
		36.542377, 40.185120, 44.283619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845856, 40.297421, 44.719158>,  <36.071754, 40.695972, 44.196777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845856, 40.297421, 44.719158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234177, 40.202801, 44.703236>,  <36.467171, 40.146027, 44.693680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234177, 40.202801, 44.703236>,  <35.845856, 40.297421, 44.719158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234177, 40.202801, 44.703236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055684, 0.060810, 0.996595,
		-0.233326, -0.969714, 0.072206,
		0.970803, -0.236552, -0.039809,
		36.525417, 40.131836, 44.691292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038147, 39.602390, 45.032803>,  <35.845856, 40.297421, 44.719158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038147, 39.602390, 45.032803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375298, 39.817444, 45.041859>,  <36.577587, 39.946476, 45.047295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.375298, 39.817444, 45.041859>,  <36.038147, 39.602390, 45.032803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375298, 39.817444, 45.041859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030136, -0.089172, 0.995560,
		0.537266, -0.838450, -0.091363,
		0.842875, 0.537634, 0.022642,
		36.628159, 39.978733, 45.048653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589764, 39.278599, 45.429592>,  <36.038147, 39.602390, 45.032803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589764, 39.278599, 45.429592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.721275, 39.656300, 45.422764>,  <36.800182, 39.882919, 45.418667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.721275, 39.656300, 45.422764>,  <36.589764, 39.278599, 45.429592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721275, 39.656300, 45.422764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003242, 0.016945, 0.999851,
		0.944400, -0.328789, 0.002510,
		0.328782, 0.944252, -0.017068,
		36.819908, 39.939575, 45.417645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305698, 39.281593, 45.787544>,  <36.589764, 39.278599, 45.429592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305698, 39.281593, 45.787544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160816, 39.654343, 45.795834>,  <37.073887, 39.877991, 45.800808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160816, 39.654343, 45.795834>,  <37.305698, 39.281593, 45.787544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160816, 39.654343, 45.795834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087401, 0.011817, 0.996103,
		0.927992, 0.362603, -0.085727,
		-0.362203, 0.931869, 0.020726,
		37.052155, 39.933903, 45.802052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715767, 39.605045, 46.218807>,  <37.305698, 39.281593, 45.787544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715767, 39.605045, 46.218807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370640, 39.806736, 46.204388>,  <37.163563, 39.927750, 46.195736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370640, 39.806736, 46.204388>,  <37.715767, 39.605045, 46.218807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370640, 39.806736, 46.204388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067158, -0.043664, 0.996787,
		0.501033, 0.862467, 0.071537,
		-0.862818, 0.504227, -0.036044,
		37.111794, 39.958004, 46.193573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198849, 40.274220, 46.243454>,  <37.715767, 39.605045, 46.218807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198849, 40.274220, 46.243454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572430, 40.311905, 46.381355>,  <38.796577, 40.334515, 46.464096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572430, 40.311905, 46.381355>,  <38.198849, 40.274220, 46.243454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572430, 40.311905, 46.381355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342884, 0.035850, -0.938694,
		-0.100793, 0.994907, 0.001179,
		0.933955, 0.094209, 0.344751,
		38.852615, 40.340168, 46.484779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486786, 40.923885, 45.952900>,  <38.198849, 40.274220, 46.243454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486786, 40.923885, 45.952900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788734, 40.684845, 46.061005>,  <38.969906, 40.541420, 46.125866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788734, 40.684845, 46.061005>,  <38.486786, 40.923885, 45.952900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788734, 40.684845, 46.061005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413171, 0.113271, -0.903581,
		0.509366, 0.793754, 0.332416,
		0.754875, -0.597599, 0.270259,
		39.015198, 40.505566, 46.142082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130108, 41.281063, 45.700829>,  <38.486786, 40.923885, 45.952900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130108, 41.281063, 45.700829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.256672, 40.905888, 45.757610>,  <39.332611, 40.680782, 45.791679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.256672, 40.905888, 45.757610>,  <39.130108, 41.281063, 45.700829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256672, 40.905888, 45.757610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331251, -0.030977, -0.943034,
		0.888909, 0.345405, 0.300894,
		0.316408, -0.937942, 0.141951,
		39.351593, 40.624504, 45.800194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858906, 41.377949, 45.505997>,  <39.130108, 41.281063, 45.700829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858906, 41.377949, 45.505997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753525, 40.993141, 45.477375>,  <39.690296, 40.762257, 45.460201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.753525, 40.993141, 45.477375>,  <39.858906, 41.377949, 45.505997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753525, 40.993141, 45.477375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404438, -0.042808, -0.913563,
		0.875799, -0.269617, 0.400353,
		-0.263451, -0.962015, -0.071552,
		39.674488, 40.704536, 45.455910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293407, 41.123432, 45.115498>,  <39.858906, 41.377949, 45.505997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293407, 41.123432, 45.115498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027878, 40.827881, 45.069202>,  <39.868561, 40.650551, 45.041428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027878, 40.827881, 45.069202>,  <40.293407, 41.123432, 45.115498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027878, 40.827881, 45.069202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364394, -0.184397, -0.912806,
		0.653115, -0.648113, 0.391651,
		-0.663821, -0.738883, -0.115736,
		39.828732, 40.606216, 45.034481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556892, 40.530926, 44.835590>,  <40.293407, 41.123432, 45.115498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556892, 40.530926, 44.835590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.185360, 40.451012, 44.710781>,  <39.962440, 40.403061, 44.635895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.185360, 40.451012, 44.710781>,  <40.556892, 40.530926, 44.835590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185360, 40.451012, 44.710781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354086, -0.230733, -0.906303,
		0.109076, -0.952285, 0.285054,
		-0.928830, -0.199789, -0.312023,
		39.906712, 40.391075, 44.617176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599541, 39.792995, 44.621872>,  <40.556892, 40.530926, 44.835590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599541, 39.792995, 44.621872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269779, 39.943390, 44.452641>,  <40.071922, 40.033627, 44.351101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269779, 39.943390, 44.452641>,  <40.599541, 39.792995, 44.621872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269779, 39.943390, 44.452641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252109, -0.425311, -0.869225,
		-0.506759, -0.823252, 0.255836,
		-0.824401, 0.375989, -0.423079,
		40.022457, 40.056187, 44.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226368, 39.278996, 44.245880>,  <40.599541, 39.792995, 44.621872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226368, 39.278996, 44.245880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046333, 39.601189, 44.091675>,  <39.938313, 39.794502, 43.999153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.046333, 39.601189, 44.091675>,  <40.226368, 39.278996, 44.245880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046333, 39.601189, 44.091675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184012, -0.338787, -0.922693,
		-0.873818, -0.486234, 0.004267,
		-0.450091, 0.805481, -0.385511,
		39.911304, 39.842834, 43.976021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746880, 39.021023, 43.876881>,  <40.226368, 39.278996, 44.245880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746880, 39.021023, 43.876881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816891, 39.386436, 43.730011>,  <39.858898, 39.605686, 43.641888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.816891, 39.386436, 43.730011>,  <39.746880, 39.021023, 43.876881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816891, 39.386436, 43.730011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125620, -0.390604, -0.911947,
		-0.976516, 0.113494, -0.183126,
		0.175031, 0.913536, -0.367174,
		39.869400, 39.660496, 43.619858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230648, 39.082455, 43.293964>,  <39.746880, 39.021023, 43.876881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230648, 39.082455, 43.293964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551777, 39.319481, 43.267605>,  <39.744453, 39.461697, 43.251789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551777, 39.319481, 43.267605>,  <39.230648, 39.082455, 43.293964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551777, 39.319481, 43.267605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144794, -0.300992, -0.942570,
		-0.578371, 0.747174, -0.327443,
		0.802821, 0.592567, -0.065898,
		39.792622, 39.497250, 43.247837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192326, 39.317898, 42.649414>,  <39.230648, 39.082455, 43.293964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192326, 39.317898, 42.649414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570202, 39.407909, 42.744846>,  <39.796928, 39.461914, 42.802105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570202, 39.407909, 42.744846>,  <39.192326, 39.317898, 42.649414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570202, 39.407909, 42.744846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299277, -0.294008, -0.907740,
		-0.134121, 0.928936, -0.345092,
		0.944693, 0.225025, 0.238577,
		39.853611, 39.475418, 42.816418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377594, 39.798634, 42.156776>,  <39.192326, 39.317898, 42.649414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377594, 39.798634, 42.156776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718880, 39.636715, 42.288330>,  <39.923653, 39.539566, 42.367264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.718880, 39.636715, 42.288330>,  <39.377594, 39.798634, 42.156776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718880, 39.636715, 42.288330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235422, -0.263779, -0.935413,
		0.465401, 0.875536, -0.129763,
		0.853216, -0.404793, 0.328884,
		39.974846, 39.515278, 42.386993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947174, 40.147717, 41.726768>,  <39.377594, 39.798634, 42.156776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947174, 40.147717, 41.726768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102455, 39.831387, 41.916035>,  <40.195625, 39.641586, 42.029594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102455, 39.831387, 41.916035>,  <39.947174, 40.147717, 41.726768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102455, 39.831387, 41.916035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295893, -0.379288, -0.876691,
		0.872779, 0.480343, 0.086759,
		0.388206, -0.790829, 0.473165,
		40.218918, 39.594139, 42.057983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666698, 40.182182, 41.610561>,  <39.947174, 40.147717, 41.726768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666698, 40.182182, 41.610561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.562977, 39.800739, 41.671741>,  <40.500744, 39.571873, 41.708450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.562977, 39.800739, 41.671741>,  <40.666698, 40.182182, 41.610561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562977, 39.800739, 41.671741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412434, -0.252539, -0.875284,
		0.873304, -0.163882, 0.458784,
		-0.259304, -0.953607, 0.152953,
		40.485184, 39.514656, 41.717628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.631416, 27.724970, 31.826714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324884, 27.475618, 31.764568>,  <27.140966, 27.326008, 31.727282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.324884, 27.475618, 31.764568>,  <27.631416, 27.724970, 31.826714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324884, 27.475618, 31.764568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641952, 0.733501, 0.223326,
		-0.025257, 0.270877, -0.962282,
		-0.766329, -0.623379, -0.155364,
		27.094986, 27.288605, 31.717958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067923, 28.119638, 31.334480>,  <27.631416, 27.724970, 31.826714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067923, 28.119638, 31.334480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908340, 27.835033, 31.565855>,  <26.812592, 27.664270, 31.704679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908340, 27.835033, 31.565855>,  <27.067923, 28.119638, 31.334480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908340, 27.835033, 31.565855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680182, 0.652680, 0.333708,
		-0.614970, -0.260307, -0.744346,
		-0.398953, -0.711512, 0.578435,
		26.788654, 27.621580, 31.739386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330513, 28.265369, 31.177120>,  <27.067923, 28.119638, 31.334480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330513, 28.265369, 31.177120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383242, 28.074623, 31.524734>,  <26.414879, 27.960175, 31.733303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383242, 28.074623, 31.524734>,  <26.330513, 28.265369, 31.177120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383242, 28.074623, 31.524734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484992, 0.733563, 0.476097,
		-0.864527, -0.484233, -0.134579,
		0.131820, -0.476868, 0.869034,
		26.422787, 27.931562, 31.785444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705410, 28.390392, 31.515669>,  <26.330513, 28.265369, 31.177120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705410, 28.390392, 31.515669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950401, 28.271229, 31.808550>,  <26.097397, 28.199730, 31.984278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950401, 28.271229, 31.808550>,  <25.705410, 28.390392, 31.515669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950401, 28.271229, 31.808550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300815, 0.768738, 0.564404,
		-0.731012, -0.565944, 0.381221,
		0.612480, -0.297909, 0.732201,
		26.134146, 28.181856, 32.028210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295433, 28.326725, 32.134056>,  <25.705410, 28.390392, 31.515669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295433, 28.326725, 32.134056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.668570, 28.401815, 32.257065>,  <25.892452, 28.446869, 32.330868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.668570, 28.401815, 32.257065>,  <25.295433, 28.326725, 32.134056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668570, 28.401815, 32.257065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359148, 0.552368, 0.752265,
		-0.028645, -0.812188, 0.582692,
		0.932841, 0.187724, 0.307518,
		25.948421, 28.458132, 32.349319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236849, 28.480209, 32.836559>,  <25.295433, 28.326725, 32.134056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236849, 28.480209, 32.836559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.608545, 28.597429, 32.746555>,  <25.831564, 28.667761, 32.692554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.608545, 28.597429, 32.746555>,  <25.236849, 28.480209, 32.836559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608545, 28.597429, 32.746555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093578, 0.775822, 0.623974,
		0.357422, -0.558768, 0.748350,
		0.929243, 0.293051, -0.225008,
		25.887318, 28.685345, 32.679054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587681, 28.584333, 33.458244>,  <25.236849, 28.480209, 32.836559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587681, 28.584333, 33.458244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796183, 28.811724, 33.203644>,  <25.921284, 28.948158, 33.050884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.796183, 28.811724, 33.203644>,  <25.587681, 28.584333, 33.458244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796183, 28.811724, 33.203644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046528, 0.763660, 0.643939,
		0.852133, -0.306040, 0.424510,
		0.521253, 0.568474, -0.636500,
		25.952559, 28.982265, 33.012695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020172, 28.996073, 33.928616>,  <25.587681, 28.584333, 33.458244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020172, 28.996073, 33.928616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048897, 29.179726, 33.574432>,  <26.066132, 29.289917, 33.361923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048897, 29.179726, 33.574432>,  <26.020172, 28.996073, 33.928616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048897, 29.179726, 33.574432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111142, 0.878541, 0.464557,
		0.991207, -0.131772, 0.012060,
		0.071811, 0.459131, -0.885461,
		26.070440, 29.317465, 33.308792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527208, 29.517197, 34.051830>,  <26.020172, 28.996073, 33.928616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527208, 29.517197, 34.051830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335300, 29.657640, 33.730198>,  <26.220156, 29.741907, 33.537220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335300, 29.657640, 33.730198>,  <26.527208, 29.517197, 34.051830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335300, 29.657640, 33.730198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164479, 0.936184, 0.310655,
		0.861839, 0.016789, -0.506904,
		-0.479771, 0.351109, -0.804078,
		26.191370, 29.762974, 33.488976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872272, 30.064930, 33.752247>,  <26.527208, 29.517197, 34.051830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872272, 30.064930, 33.752247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512772, 30.133400, 33.590782>,  <26.297071, 30.174482, 33.493904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.512772, 30.133400, 33.590782>,  <26.872272, 30.064930, 33.752247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512772, 30.133400, 33.590782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106706, 0.978356, 0.177297,
		0.425278, 0.116272, -0.897563,
		-0.898751, 0.171176, -0.403666,
		26.243147, 30.184753, 33.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990877, 30.600113, 33.256821>,  <26.872272, 30.064930, 33.752247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990877, 30.600113, 33.256821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605110, 30.603189, 33.362530>,  <26.373650, 30.605036, 33.425957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605110, 30.603189, 33.362530>,  <26.990877, 30.600113, 33.256821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605110, 30.603189, 33.362530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044534, 0.990020, 0.133704,
		-0.260610, 0.140716, -0.955134,
		-0.964416, 0.007692, 0.264276,
		26.315784, 30.605497, 33.441814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767406, 31.098089, 32.894676>,  <26.990877, 30.600113, 33.256821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767406, 31.098089, 32.894676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469137, 31.050491, 33.156918>,  <26.290176, 31.021933, 33.314262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469137, 31.050491, 33.156918>,  <26.767406, 31.098089, 32.894676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469137, 31.050491, 33.156918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050545, 0.991191, 0.122413,
		-0.664393, 0.058143, -0.745118,
		-0.745672, -0.118993, 0.655602,
		26.245436, 31.014793, 33.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579327, 31.714972, 32.935299>,  <26.767406, 31.098089, 32.894676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579327, 31.714972, 32.935299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411814, 31.542398, 33.254921>,  <26.311306, 31.438854, 33.446693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411814, 31.542398, 33.254921>,  <26.579327, 31.714972, 32.935299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411814, 31.542398, 33.254921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092952, 0.895676, 0.434884,
		-0.903316, 0.107849, -0.415197,
		-0.418784, -0.431431, 0.799054,
		26.286179, 31.412970, 33.494637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959799, 32.191582, 33.076077>,  <26.579327, 31.714972, 32.935299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959799, 32.191582, 33.076077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121281, 31.985056, 33.378189>,  <26.218170, 31.861141, 33.559456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121281, 31.985056, 33.378189>,  <25.959799, 32.191582, 33.076077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121281, 31.985056, 33.378189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290758, 0.855145, 0.429170,
		-0.867458, 0.046346, 0.495346,
		0.403702, -0.516313, 0.755278,
		26.242392, 31.830162, 33.604771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918985, 32.635551, 33.633682>,  <25.959799, 32.191582, 33.076077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918985, 32.635551, 33.633682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185534, 32.374630, 33.778160>,  <26.345463, 32.218079, 33.864845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185534, 32.374630, 33.778160>,  <25.918985, 32.635551, 33.633682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185534, 32.374630, 33.778160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507673, 0.751711, 0.420950,
		-0.546096, -0.097141, 0.832071,
		0.666368, -0.652300, 0.361190,
		26.385445, 32.178940, 33.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916073, 32.677441, 34.369595>,  <25.918985, 32.635551, 33.633682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916073, 32.677441, 34.369595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.281149, 32.554398, 34.261982>,  <26.500195, 32.480572, 34.197414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.281149, 32.554398, 34.261982>,  <25.916073, 32.677441, 34.369595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281149, 32.554398, 34.261982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406423, 0.751973, 0.518996,
		0.042662, -0.583024, 0.811334,
		0.912688, -0.307603, -0.269034,
		26.554956, 32.462116, 34.181271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236940, 32.887302, 34.905235>,  <25.916073, 32.677441, 34.369595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236940, 32.887302, 34.905235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541475, 32.808147, 34.658268>,  <26.724195, 32.760654, 34.510086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541475, 32.808147, 34.658268>,  <26.236940, 32.887302, 34.905235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541475, 32.808147, 34.658268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521432, 0.752837, 0.401678,
		0.385327, -0.627754, 0.676349,
		0.761336, -0.197892, -0.617419,
		26.769876, 32.748779, 34.473042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840780, 32.724571, 35.261169>,  <26.236940, 32.887302, 34.905235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840780, 32.724571, 35.261169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985662, 32.849239, 34.909790>,  <27.072592, 32.924042, 34.698963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985662, 32.849239, 34.909790>,  <26.840780, 32.724571, 35.261169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985662, 32.849239, 34.909790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547203, 0.691841, 0.471091,
		0.754570, -0.651320, 0.080040,
		0.362205, 0.311673, -0.878446,
		27.094324, 32.942741, 34.646255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571613, 32.780407, 35.307934>,  <26.840780, 32.724571, 35.261169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571613, 32.780407, 35.307934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504284, 33.000957, 34.981094>,  <27.463886, 33.133289, 34.784992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504284, 33.000957, 34.981094>,  <27.571613, 32.780407, 35.307934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504284, 33.000957, 34.981094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771232, 0.589904, 0.239194,
		0.613896, -0.589912, -0.524535,
		-0.168322, 0.551378, -0.817098,
		27.453787, 33.166370, 34.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308733, 32.910633, 34.976761>,  <27.571613, 32.780407, 35.307934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308733, 32.910633, 34.976761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034321, 33.185280, 34.880497>,  <27.869673, 33.350067, 34.822739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.034321, 33.185280, 34.880497>,  <28.308733, 32.910633, 34.976761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034321, 33.185280, 34.880497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603593, 0.721785, 0.338677,
		0.406245, 0.087084, -0.909605,
		-0.686032, 0.686617, -0.240658,
		27.828510, 33.391266, 34.808300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502541, 33.433094, 34.470707>,  <28.308733, 32.910633, 34.976761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502541, 33.433094, 34.470707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245422, 33.585358, 34.736614>,  <28.091152, 33.676716, 34.896156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245422, 33.585358, 34.736614>,  <28.502541, 33.433094, 34.470707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245422, 33.585358, 34.736614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669361, 0.701109, 0.245768,
		-0.372517, 0.602946, -0.705469,
		-0.642796, 0.380661, 0.664764,
		28.052584, 33.699554, 34.936043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473776, 34.199051, 34.520256>,  <28.502541, 33.433094, 34.470707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473776, 34.199051, 34.520256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857510, 34.310837, 34.536140>,  <29.087749, 34.377911, 34.545670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857510, 34.310837, 34.536140>,  <28.473776, 34.199051, 34.520256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857510, 34.310837, 34.536140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221395, -0.657673, -0.720035,
		-0.175111, 0.699546, -0.692800,
		0.959333, 0.279468, 0.039710,
		29.145309, 34.394676, 34.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629311, 34.284439, 33.752552>,  <28.473776, 34.199051, 34.520256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629311, 34.284439, 33.752552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954723, 34.204540, 33.971008>,  <29.149971, 34.156601, 34.102081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954723, 34.204540, 33.971008>,  <28.629311, 34.284439, 33.752552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954723, 34.204540, 33.971008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195553, -0.790494, -0.580412,
		0.547652, 0.578983, -0.604032,
		0.813533, -0.199744, 0.546138,
		29.198784, 34.144619, 34.134850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111542, 34.016159, 33.205147>,  <28.629311, 34.284439, 33.752552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111542, 34.016159, 33.205147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272230, 33.910416, 33.555859>,  <29.368643, 33.846970, 33.766285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272230, 33.910416, 33.555859>,  <29.111542, 34.016159, 33.205147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272230, 33.910416, 33.555859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265241, -0.882800, -0.387700,
		0.876509, 0.388304, -0.284521,
		0.401721, -0.264356, 0.876776,
		29.392746, 33.831108, 33.818890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639637, 33.681995, 32.945953>,  <29.111542, 34.016159, 33.205147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639637, 33.681995, 32.945953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.590351, 33.553486, 33.321529>,  <29.560780, 33.476379, 33.546875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.590351, 33.553486, 33.321529>,  <29.639637, 33.681995, 32.945953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590351, 33.553486, 33.321529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121901, -0.943880, -0.306970,
		0.984864, 0.076635, 0.155463,
		-0.123214, -0.321275, 0.938936,
		29.553387, 33.457104, 33.603210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020216, 33.211052, 32.932289>,  <29.639637, 33.681995, 32.945953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020216, 33.211052, 32.932289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810957, 33.115631, 33.259560>,  <29.685402, 33.058380, 33.455921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810957, 33.115631, 33.259560>,  <30.020216, 33.211052, 32.932289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810957, 33.115631, 33.259560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129627, -0.971128, -0.200265,
		0.842326, 0.001289, 0.538967,
		-0.523148, -0.238554, 0.818174,
		29.654013, 33.044064, 33.505013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425125, 32.681095, 33.291080>,  <30.020216, 33.211052, 32.932289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425125, 32.681095, 33.291080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046438, 32.633148, 33.410652>,  <29.819225, 32.604382, 33.482395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046438, 32.633148, 33.410652>,  <30.425125, 32.681095, 33.291080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046438, 32.633148, 33.410652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045052, -0.968324, -0.245599,
		0.318897, -0.219046, 0.922130,
		-0.946718, -0.119864, 0.298927,
		29.762423, 32.597187, 33.500332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448332, 32.220154, 33.720036>,  <30.425125, 32.681095, 33.291080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448332, 32.220154, 33.720036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064098, 32.225498, 33.608967>,  <29.833559, 32.228706, 33.542324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064098, 32.225498, 33.608967>,  <30.448332, 32.220154, 33.720036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064098, 32.225498, 33.608967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046151, -0.977320, -0.206678,
		-0.274135, -0.211346, 0.938181,
		-0.960583, 0.013360, -0.277672,
		29.775923, 32.229507, 33.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212290, 31.621044, 33.945492>,  <30.448332, 32.220154, 33.720036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212290, 31.621044, 33.945492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918364, 31.711067, 33.689556>,  <29.742008, 31.765081, 33.535995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.918364, 31.711067, 33.689556>,  <30.212290, 31.621044, 33.945492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918364, 31.711067, 33.689556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157074, -0.974165, -0.162266,
		-0.659831, -0.018732, 0.751181,
		-0.734814, 0.225059, -0.639841,
		29.697920, 31.778585, 33.497604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492086, 31.380360, 34.206150>,  <30.212290, 31.621044, 33.945492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492086, 31.380360, 34.206150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485762, 31.387360, 33.806263>,  <29.481968, 31.391560, 33.566330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485762, 31.387360, 33.806263>,  <29.492086, 31.380360, 34.206150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485762, 31.387360, 33.806263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196752, -0.980353, -0.014049,
		-0.980326, 0.196475, 0.018933,
		-0.015800, 0.017498, -0.999722,
		29.481018, 31.392611, 33.506348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966108, 30.924572, 34.019085>,  <29.492086, 31.380360, 34.206150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966108, 30.924572, 34.019085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147934, 30.938404, 33.663067>,  <29.257029, 30.946703, 33.449455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147934, 30.938404, 33.663067>,  <28.966108, 30.924572, 34.019085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147934, 30.938404, 33.663067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094908, -0.991677, -0.087003,
		-0.885643, 0.124021, -0.447499,
		0.454565, 0.034582, -0.890042,
		29.284304, 30.948778, 33.396053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538954, 30.595743, 33.634274>,  <28.966108, 30.924572, 34.019085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538954, 30.595743, 33.634274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883665, 30.590504, 33.431427>,  <29.090492, 30.587360, 33.309719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.883665, 30.590504, 33.431427>,  <28.538954, 30.595743, 33.634274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883665, 30.590504, 33.431427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103509, -0.983176, -0.150506,
		-0.496616, 0.182194, -0.848633,
		0.861776, -0.013097, -0.507119,
		29.142199, 30.586575, 33.279293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273697, 30.368217, 33.062859>,  <28.538954, 30.595743, 33.634274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273697, 30.368217, 33.062859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664459, 30.297184, 33.015327>,  <28.898916, 30.254564, 32.986809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664459, 30.297184, 33.015327>,  <28.273697, 30.368217, 33.062859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664459, 30.297184, 33.015327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186088, -0.980400, -0.064707,
		-0.105005, 0.085324, -0.990805,
		0.976906, -0.177582, -0.118825,
		28.957531, 30.243910, 32.979679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458094, 29.836905, 32.380737>,  <28.273697, 30.368217, 33.062859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458094, 29.836905, 32.380737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712952, 29.792744, 32.685856>,  <28.865866, 29.766247, 32.868927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.712952, 29.792744, 32.685856>,  <28.458094, 29.836905, 32.380737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712952, 29.792744, 32.685856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173606, -0.984812, 0.002474,
		0.750937, -0.134002, -0.646635,
		0.637146, -0.110402, 0.762795,
		28.904095, 29.759623, 32.914696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832191, 29.336515, 32.196503>,  <28.458094, 29.836905, 32.380737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832191, 29.336515, 32.196503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957798, 29.348614, 32.576077>,  <29.033163, 29.355873, 32.803822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.957798, 29.348614, 32.576077>,  <28.832191, 29.336515, 32.196503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957798, 29.348614, 32.576077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132498, -0.988315, 0.075349,
		0.940126, -0.149393, -0.306340,
		0.314017, 0.030248, 0.948935,
		29.052004, 29.357689, 32.860756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376982, 28.801491, 32.281792>,  <28.832191, 29.336515, 32.196503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376982, 28.801491, 32.281792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211851, 28.874384, 32.638748>,  <29.112774, 28.918119, 32.852924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211851, 28.874384, 32.638748>,  <29.376982, 28.801491, 32.281792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211851, 28.874384, 32.638748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205501, -0.973152, 0.103658,
		0.887324, -0.140595, 0.439191,
		-0.412825, 0.182233, 0.892394,
		29.088003, 28.929054, 32.906467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661718, 28.387032, 32.641659>,  <29.376982, 28.801491, 32.281792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661718, 28.387032, 32.641659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346039, 28.454044, 32.877998>,  <29.156631, 28.494251, 33.019802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346039, 28.454044, 32.877998>,  <29.661718, 28.387032, 32.641659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346039, 28.454044, 32.877998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059768, -0.978458, 0.197606,
		0.611222, 0.120637, 0.782211,
		-0.789199, 0.167533, 0.590844,
		29.109280, 28.504305, 33.055252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707333, 27.863997, 33.084476>,  <29.661718, 28.387032, 32.641659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707333, 27.863997, 33.084476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328377, 27.984449, 33.127872>,  <29.101004, 28.056721, 33.153908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328377, 27.984449, 33.127872>,  <29.707333, 27.863997, 33.084476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328377, 27.984449, 33.127872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266516, -0.929861, 0.253629,
		0.177255, 0.211372, 0.961198,
		-0.947391, 0.301132, 0.108488,
		29.044159, 28.074789, 33.160419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499413, 27.628536, 33.837410>,  <29.707333, 27.863997, 33.084476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499413, 27.628536, 33.837410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189365, 27.678209, 33.589615>,  <29.003336, 27.708014, 33.440937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.189365, 27.678209, 33.589615>,  <29.499413, 27.628536, 33.837410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189365, 27.678209, 33.589615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289760, -0.941171, 0.173884,
		-0.561453, 0.314285, 0.765503,
		-0.775119, 0.124184, -0.619491,
		28.956829, 27.715466, 33.403767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024054, 27.258532, 34.245789>,  <29.499413, 27.628536, 33.837410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024054, 27.258532, 34.245789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841463, 27.308788, 33.893459>,  <28.731909, 27.338942, 33.682064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841463, 27.308788, 33.893459>,  <29.024054, 27.258532, 34.245789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841463, 27.308788, 33.893459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318837, -0.947331, 0.030106,
		-0.830646, 0.294581, 0.472494,
		-0.456477, 0.125641, -0.880819,
		28.704519, 27.346481, 33.629215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362183, 27.032961, 34.333057>,  <29.024054, 27.258532, 34.245789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362183, 27.032961, 34.333057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439617, 26.988075, 33.943199>,  <28.486078, 26.961143, 33.709286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439617, 26.988075, 33.943199>,  <28.362183, 27.032961, 34.333057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439617, 26.988075, 33.943199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140972, -0.986309, 0.085559,
		-0.970902, 0.120835, -0.206755,
		0.193586, -0.112216, -0.974645,
		28.497694, 26.954411, 33.650806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841579, 26.672073, 34.088543>,  <28.362183, 27.032961, 34.333057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841579, 26.672073, 34.088543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.127073, 26.607216, 33.815987>,  <28.298370, 26.568300, 33.652454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.127073, 26.607216, 33.815987>,  <27.841579, 26.672073, 34.088543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127073, 26.607216, 33.815987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203061, -0.978957, 0.020255,
		-0.670333, 0.123907, -0.731642,
		0.713736, -0.162146, -0.681387,
		28.341194, 26.558573, 33.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.923153, 37.823177, 46.812119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761345, 37.458218, 46.837036>,  <38.664261, 37.239243, 46.851986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761345, 37.458218, 46.837036>,  <38.923153, 37.823177, 46.812119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761345, 37.458218, 46.837036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251066, 0.176291, 0.951781,
		-0.879390, 0.369379, -0.300387,
		-0.404523, -0.912404, 0.062290,
		38.639988, 37.184498, 46.855724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189751, 37.949436, 46.963837>,  <38.923153, 37.823177, 46.812119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189751, 37.949436, 46.963837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303707, 37.590000, 47.097328>,  <38.372082, 37.374340, 47.177422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.303707, 37.590000, 47.097328>,  <38.189751, 37.949436, 46.963837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303707, 37.590000, 47.097328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426224, 0.193093, 0.883769,
		-0.858585, -0.394025, -0.327989,
		0.284895, -0.898588, 0.333729,
		38.389175, 37.320423, 47.197449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659824, 37.740295, 47.483593>,  <38.189751, 37.949436, 46.963837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659824, 37.740295, 47.483593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938869, 37.471470, 47.582920>,  <38.106297, 37.310173, 47.642517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938869, 37.471470, 47.582920>,  <37.659824, 37.740295, 47.483593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938869, 37.471470, 47.582920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216365, 0.132793, 0.967240,
		-0.683025, -0.728486, -0.052773,
		0.697613, -0.672067, 0.248319,
		38.148155, 37.269852, 47.657417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391438, 37.350872, 48.009129>,  <37.659824, 37.740295, 47.483593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391438, 37.350872, 48.009129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.783077, 37.283367, 48.054543>,  <38.018059, 37.242863, 48.081791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.783077, 37.283367, 48.054543>,  <37.391438, 37.350872, 48.009129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783077, 37.283367, 48.054543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089263, 0.145070, 0.985387,
		-0.182770, -0.974922, 0.126973,
		0.979095, -0.168765, 0.113539,
		38.076805, 37.232738, 48.088604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398609, 36.966751, 48.535530>,  <37.391438, 37.350872, 48.009129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398609, 36.966751, 48.535530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782375, 37.078262, 48.518505>,  <38.012634, 37.145168, 48.508289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782375, 37.078262, 48.518505>,  <37.398609, 36.966751, 48.535530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782375, 37.078262, 48.518505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069769, -0.088422, 0.993637,
		0.273244, -0.956275, -0.104284,
		0.959412, 0.278781, -0.042558,
		38.070198, 37.161896, 48.505737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695179, 36.522079, 49.100674>,  <37.398609, 36.966751, 48.535530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695179, 36.522079, 49.100674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968204, 36.804802, 49.026344>,  <38.132019, 36.974434, 48.981747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968204, 36.804802, 49.026344>,  <37.695179, 36.522079, 49.100674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968204, 36.804802, 49.026344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283458, -0.021677, 0.958740,
		0.673613, -0.707077, -0.215145,
		0.682567, 0.706804, -0.185824,
		38.172974, 37.016842, 48.970596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401665, 36.271950, 49.382435>,  <37.695179, 36.522079, 49.100674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401665, 36.271950, 49.382435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392502, 36.669956, 49.343628>,  <38.387005, 36.908760, 49.320343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392502, 36.669956, 49.343628>,  <38.401665, 36.271950, 49.382435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392502, 36.669956, 49.343628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275667, 0.099566, 0.956083,
		0.960981, -0.004847, -0.276574,
		-0.022903, 0.995019, -0.097017,
		38.385632, 36.968460, 49.314522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970921, 36.443760, 49.745541>,  <38.401665, 36.271950, 49.382435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970921, 36.443760, 49.745541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802998, 36.805332, 49.712845>,  <38.702244, 37.022274, 49.693226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802998, 36.805332, 49.712845>,  <38.970921, 36.443760, 49.745541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802998, 36.805332, 49.712845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227125, 0.191822, 0.954787,
		0.878738, 0.382257, -0.285832,
		-0.419803, 0.903927, -0.081741,
		38.677055, 37.076511, 49.688324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518890, 36.914604, 49.922371>,  <38.970921, 36.443760, 49.745541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518890, 36.914604, 49.922371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.189388, 37.140266, 49.944881>,  <38.991688, 37.275661, 49.958389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.189388, 37.140266, 49.944881>,  <39.518890, 36.914604, 49.922371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189388, 37.140266, 49.944881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233571, 0.247236, 0.940382,
		0.516604, 0.787786, -0.335430,
		-0.823751, 0.564152, 0.056281,
		38.942265, 37.309513, 49.961765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682613, 37.576488, 50.148632>,  <39.518890, 36.914604, 49.922371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682613, 37.576488, 50.148632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292789, 37.532898, 50.226967>,  <39.058895, 37.506744, 50.273968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.292789, 37.532898, 50.226967>,  <39.682613, 37.576488, 50.148632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292789, 37.532898, 50.226967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163649, 0.250984, 0.954058,
		-0.153119, 0.961838, -0.226766,
		-0.974563, -0.108975, 0.195835,
		39.000420, 37.500206, 50.285717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400352, 38.185009, 50.540596>,  <39.682613, 37.576488, 50.148632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400352, 38.185009, 50.540596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185024, 37.861008, 50.633640>,  <39.055828, 37.666607, 50.689468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185024, 37.861008, 50.633640>,  <39.400352, 38.185009, 50.540596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185024, 37.861008, 50.633640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051335, 0.243989, 0.968418,
		-0.841173, 0.533265, -0.089764,
		-0.538325, -0.809999, 0.232612,
		39.023525, 37.618008, 50.703423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982178, 38.439594, 50.988293>,  <39.400352, 38.185009, 50.540596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982178, 38.439594, 50.988293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.987995, 38.044296, 51.049179>,  <38.991486, 37.807117, 51.085712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.987995, 38.044296, 51.049179>,  <38.982178, 38.439594, 50.988293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987995, 38.044296, 51.049179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034947, 0.151636, 0.987818,
		-0.999283, -0.019682, -0.032331,
		0.014540, -0.988241, 0.152215,
		38.992355, 37.747826, 51.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594612, 38.313320, 51.646103>,  <38.982178, 38.439594, 50.988293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594612, 38.313320, 51.646103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878735, 38.044548, 51.562218>,  <39.049206, 37.883286, 51.511887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878735, 38.044548, 51.562218>,  <38.594612, 38.313320, 51.646103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878735, 38.044548, 51.562218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139113, -0.158050, 0.977583,
		-0.690012, -0.723554, -0.018789,
		0.710303, -0.671930, -0.209712,
		39.091827, 37.842968, 51.499306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774700, 38.733902, 52.248508>,  <38.594612, 38.313320, 51.646103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774700, 38.733902, 52.248508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931580, 38.616276, 51.899864>,  <39.025707, 38.545700, 51.690678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931580, 38.616276, 51.899864>,  <38.774700, 38.733902, 52.248508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931580, 38.616276, 51.899864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130710, 0.955727, -0.263629,
		0.910547, -0.010534, 0.413271,
		0.392198, -0.294065, -0.871611,
		39.049240, 38.528057, 51.638382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123978, 39.311283, 51.957886>,  <38.774700, 38.733902, 52.248508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123978, 39.311283, 51.957886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816010, 39.559956, 52.015484>,  <38.631229, 39.709160, 52.050041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816010, 39.559956, 52.015484>,  <39.123978, 39.311283, 51.957886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816010, 39.559956, 52.015484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099935, 0.105397, -0.989396,
		-0.630262, -0.776149, -0.019021,
		-0.769924, 0.621678, 0.143992,
		38.585033, 39.746460, 52.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539116, 39.146149, 51.556698>,  <39.123978, 39.311283, 51.957886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539116, 39.146149, 51.556698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552010, 39.541660, 51.615040>,  <38.559746, 39.778969, 51.650047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552010, 39.541660, 51.615040>,  <38.539116, 39.146149, 51.556698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552010, 39.541660, 51.615040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052765, 0.147413, -0.987667,
		-0.998087, 0.024145, 0.056925,
		0.032239, 0.988780, 0.145857,
		38.561680, 39.838295, 51.658798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952896, 39.285587, 51.205742>,  <38.539116, 39.146149, 51.556698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952896, 39.285587, 51.205742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182648, 39.611012, 51.241974>,  <38.320499, 39.806267, 51.263714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182648, 39.611012, 51.241974>,  <37.952896, 39.285587, 51.205742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182648, 39.611012, 51.241974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142507, 0.208345, -0.967618,
		-0.806090, 0.542870, 0.235608,
		0.574379, 0.813563, 0.090582,
		38.354961, 39.855080, 51.269150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678864, 39.749073, 50.754372>,  <37.952896, 39.285587, 51.205742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678864, 39.749073, 50.754372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032127, 39.916073, 50.839909>,  <38.244083, 40.016273, 50.891232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032127, 39.916073, 50.839909>,  <37.678864, 39.749073, 50.754372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032127, 39.916073, 50.839909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105016, 0.268336, -0.957584,
		-0.457169, 0.868155, 0.193139,
		0.883158, 0.417495, 0.213845,
		38.297073, 40.041321, 50.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672318, 40.412373, 50.490585>,  <37.678864, 39.749073, 50.754372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672318, 40.412373, 50.490585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055679, 40.300034, 50.510883>,  <38.285698, 40.232628, 50.523064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055679, 40.300034, 50.510883>,  <37.672318, 40.412373, 50.490585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055679, 40.300034, 50.510883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103238, 0.175395, -0.979070,
		0.266070, 0.943589, 0.197094,
		0.958409, -0.280849, 0.050747,
		38.343201, 40.215778, 50.526108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872444, 40.706528, 49.906120>,  <37.672318, 40.412373, 50.490585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872444, 40.706528, 49.906120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217918, 40.538738, 50.017895>,  <38.425205, 40.438065, 50.084957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217918, 40.538738, 50.017895>,  <37.872444, 40.706528, 49.906120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217918, 40.538738, 50.017895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330073, 0.051740, -0.942536,
		0.380911, 0.906292, 0.183144,
		0.863689, -0.419473, 0.279434,
		38.477024, 40.412895, 50.101727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293732, 41.115345, 49.671623>,  <37.872444, 40.706528, 49.906120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293732, 41.115345, 49.671623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506454, 40.778282, 49.705334>,  <38.634090, 40.576042, 49.725559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506454, 40.778282, 49.705334>,  <38.293732, 41.115345, 49.671623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506454, 40.778282, 49.705334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367031, 0.139657, -0.919665,
		0.763195, 0.520020, 0.383553,
		0.531810, -0.842660, 0.084278,
		38.665997, 40.525486, 49.730618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006241, 41.246929, 49.589149>,  <38.293732, 41.115345, 49.671623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006241, 41.246929, 49.589149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908916, 40.883820, 49.452473>,  <38.850521, 40.665955, 49.370468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908916, 40.883820, 49.452473>,  <39.006241, 41.246929, 49.589149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908916, 40.883820, 49.452473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316512, 0.258688, -0.912634,
		0.916853, -0.330204, 0.224379,
		-0.243311, -0.907770, -0.341693,
		38.835922, 40.611488, 49.349964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584885, 41.148285, 49.091591>,  <39.006241, 41.246929, 49.589149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584885, 41.148285, 49.091591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298019, 40.877903, 49.023758>,  <39.125900, 40.715672, 48.983059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298019, 40.877903, 49.023758>,  <39.584885, 41.148285, 49.091591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298019, 40.877903, 49.023758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357270, -0.147681, -0.922252,
		0.598359, -0.721992, 0.347411,
		-0.717164, -0.675957, -0.169580,
		39.082870, 40.675117, 48.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012806, 40.799065, 48.611023>,  <39.584885, 41.148285, 49.091591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012806, 40.799065, 48.611023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635120, 40.671394, 48.578541>,  <39.408508, 40.594791, 48.559052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635120, 40.671394, 48.578541>,  <40.012806, 40.799065, 48.611023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635120, 40.671394, 48.578541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149095, -0.194408, -0.969524,
		0.293659, -0.927542, 0.231149,
		-0.944212, -0.319173, -0.081202,
		39.351856, 40.575642, 48.554180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986134, 40.158585, 48.253761>,  <40.012806, 40.799065, 48.611023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986134, 40.158585, 48.253761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619125, 40.311680, 48.210564>,  <39.398918, 40.403538, 48.184647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.619125, 40.311680, 48.210564>,  <39.986134, 40.158585, 48.253761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619125, 40.311680, 48.210564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012195, -0.244344, -0.969612,
		-0.397496, -0.890958, 0.219523,
		-0.917523, 0.382740, -0.107991,
		39.343868, 40.426502, 48.178165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625164, 39.614735, 47.868771>,  <39.986134, 40.158585, 48.253761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625164, 39.614735, 47.868771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.403725, 39.944019, 47.818413>,  <39.270863, 40.141590, 47.788197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.403725, 39.944019, 47.818413>,  <39.625164, 39.614735, 47.868771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403725, 39.944019, 47.818413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134688, -0.237691, -0.961957,
		-0.821822, -0.515578, 0.242462,
		-0.553595, 0.823214, -0.125898,
		39.237644, 40.190983, 47.780643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917221, 39.421764, 47.449203>,  <39.625164, 39.614735, 47.868771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917221, 39.421764, 47.449203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992374, 39.810654, 47.393368>,  <39.037468, 40.043987, 47.359867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.992374, 39.810654, 47.393368>,  <38.917221, 39.421764, 47.449203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992374, 39.810654, 47.393368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243541, -0.091569, -0.965558,
		-0.951519, 0.215408, 0.219571,
		0.187883, 0.972221, -0.139591,
		39.048740, 40.102322, 47.351490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287060, 39.715996, 46.943005>,  <38.917221, 39.421764, 47.449203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287060, 39.715996, 46.943005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590374, 39.976753, 46.945488>,  <38.772362, 40.133209, 46.946980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.590374, 39.976753, 46.945488>,  <38.287060, 39.715996, 46.943005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590374, 39.976753, 46.945488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061690, -0.062265, -0.996151,
		-0.648999, 0.755749, -0.087430,
		0.758284, 0.651895, 0.006212,
		38.817860, 40.172321, 46.947353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651100, 39.960278, 46.858753>,  <38.287060, 39.715996, 46.943005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651100, 39.960278, 46.858753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271015, 39.988216, 46.737286>,  <37.042965, 40.004978, 46.664406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271015, 39.988216, 46.737286>,  <37.651100, 39.960278, 46.858753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271015, 39.988216, 46.737286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309583, -0.101003, 0.945493,
		0.035369, 0.992431, 0.117598,
		-0.950214, 0.069847, -0.303668,
		36.985950, 40.009171, 46.646187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382118, 40.590244, 47.204987>,  <37.651100, 39.960278, 46.858753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382118, 40.590244, 47.204987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089470, 40.329765, 47.124321>,  <36.913879, 40.173477, 47.075920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089470, 40.329765, 47.124321>,  <37.382118, 40.590244, 47.204987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089470, 40.329765, 47.124321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253964, -0.014168, 0.967110,
		-0.632640, 0.758774, -0.155015,
		-0.731621, -0.651200, -0.201664,
		36.869984, 40.134407, 47.063820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688587, 40.865082, 47.492764>,  <37.382118, 40.590244, 47.204987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688587, 40.865082, 47.492764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600903, 40.477264, 47.449055>,  <36.548290, 40.244576, 47.422829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600903, 40.477264, 47.449055>,  <36.688587, 40.865082, 47.492764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600903, 40.477264, 47.449055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361111, -0.023423, 0.932229,
		-0.906391, 0.243816, -0.344977,
		-0.219212, -0.969539, -0.109275,
		36.535141, 40.186401, 47.416271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018867, 40.693264, 47.906071>,  <36.688587, 40.865082, 47.492764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018867, 40.693264, 47.906071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182484, 40.333038, 47.847179>,  <36.280655, 40.116905, 47.811844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182484, 40.333038, 47.847179>,  <36.018867, 40.693264, 47.906071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182484, 40.333038, 47.847179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316894, -0.291491, 0.902558,
		-0.855724, -0.322528, -0.404614,
		0.409042, -0.900560, -0.147229,
		36.305195, 40.062870, 47.803009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488060, 40.217060, 48.136147>,  <36.018867, 40.693264, 47.906071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488060, 40.217060, 48.136147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829304, 40.009594, 48.158741>,  <36.034050, 39.885113, 48.172298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829304, 40.009594, 48.158741>,  <35.488060, 40.217060, 48.136147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829304, 40.009594, 48.158741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253629, -0.317665, 0.913652,
		-0.455940, -0.793770, -0.402552,
		0.853107, -0.518669, 0.056487,
		36.085236, 39.853992, 48.175686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242359, 39.583775, 48.356552>,  <35.488060, 40.217060, 48.136147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242359, 39.583775, 48.356552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625076, 39.626949, 48.464550>,  <35.854706, 39.652855, 48.529350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625076, 39.626949, 48.464550>,  <35.242359, 39.583775, 48.356552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625076, 39.626949, 48.464550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228502, -0.295140, 0.927728,
		0.179820, -0.949338, -0.257725,
		0.956792, 0.107933, 0.269997,
		35.912113, 39.659328, 48.545547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171124, 39.070480, 48.849762>,  <35.242359, 39.583775, 48.356552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171124, 39.070480, 48.849762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518768, 39.253677, 48.924469>,  <35.727356, 39.363594, 48.969292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518768, 39.253677, 48.924469>,  <35.171124, 39.070480, 48.849762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518768, 39.253677, 48.924469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061261, -0.275013, 0.959487,
		0.490800, -0.845346, -0.210961,
		0.869116, 0.457993, 0.186763,
		35.779503, 39.391075, 48.980499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943581, 38.279797, 48.833725>,  <35.171124, 39.070480, 48.849762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943581, 38.279797, 48.833725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563393, 38.192287, 48.922031>,  <34.335278, 38.139782, 48.975018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563393, 38.192287, 48.922031>,  <34.943581, 38.279797, 48.833725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563393, 38.192287, 48.922031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235426, 0.043017, -0.970940,
		0.202923, -0.974826, -0.092393,
		-0.950472, -0.218777, 0.220770,
		34.278252, 38.126656, 48.988262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706551, 37.647171, 48.397820>,  <34.943581, 38.279797, 48.833725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706551, 37.647171, 48.397820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388348, 37.870655, 48.491631>,  <34.197426, 38.004745, 48.547916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388348, 37.870655, 48.491631>,  <34.706551, 37.647171, 48.397820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388348, 37.870655, 48.491631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276087, 0.010332, -0.961077,
		-0.539388, -0.829298, 0.146033,
		-0.795511, 0.558711, 0.234532,
		34.149693, 38.038269, 48.561989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025333, 37.269882, 48.117939>,  <34.706551, 37.647171, 48.397820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025333, 37.269882, 48.117939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943359, 37.655258, 48.186974>,  <33.894176, 37.886482, 48.228394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943359, 37.655258, 48.186974>,  <34.025333, 37.269882, 48.117939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943359, 37.655258, 48.186974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419517, 0.072845, -0.904820,
		-0.884311, -0.257831, 0.389251,
		-0.204935, 0.963440, 0.172582,
		33.881878, 37.944290, 48.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406940, 37.489319, 47.696884>,  <34.025333, 37.269882, 48.117939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406940, 37.489319, 47.696884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547421, 37.849144, 47.800766>,  <33.631710, 38.065037, 47.863094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.547421, 37.849144, 47.800766>,  <33.406940, 37.489319, 47.696884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547421, 37.849144, 47.800766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378674, 0.390144, -0.839281,
		-0.856307, 0.196415, 0.477661,
		0.351204, 0.899560, 0.259706,
		33.652782, 38.119011, 47.878677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901245, 37.901764, 47.416561>,  <33.406940, 37.489319, 47.696884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901245, 37.901764, 47.416561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199078, 38.158245, 47.490807>,  <33.377777, 38.312134, 47.535355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199078, 38.158245, 47.490807>,  <32.901245, 37.901764, 47.416561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199078, 38.158245, 47.490807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151089, 0.432730, -0.888773,
		-0.650206, 0.633721, 0.419082,
		0.744583, 0.641204, 0.185615,
		33.422451, 38.350605, 47.546490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701767, 38.528294, 47.298828>,  <32.901245, 37.901764, 47.416561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701767, 38.528294, 47.298828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095940, 38.585953, 47.262718>,  <33.332443, 38.620548, 47.241055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095940, 38.585953, 47.262718>,  <32.701767, 38.528294, 47.298828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095940, 38.585953, 47.262718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153027, 0.519794, -0.840474,
		-0.074229, 0.842043, 0.534279,
		0.985430, 0.144146, -0.090272,
		33.391567, 38.629196, 47.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767918, 39.161484, 47.012856>,  <32.701767, 38.528294, 47.298828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767918, 39.161484, 47.012856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126469, 38.994812, 46.952332>,  <33.341599, 38.894810, 46.916019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126469, 38.994812, 46.952332>,  <32.767918, 39.161484, 47.012856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126469, 38.994812, 46.952332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002008, 0.337500, -0.941323,
		0.443294, 0.844081, 0.301689,
		0.896374, -0.416678, -0.151306,
		33.395382, 38.869808, 46.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.854237, 34.769165, 52.205959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136871, 35.049553, 52.167221>,  <38.306450, 35.217785, 52.143978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.136871, 35.049553, 52.167221>,  <37.854237, 34.769165, 52.205959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136871, 35.049553, 52.167221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110469, -0.244452, -0.963348,
		-0.698955, 0.669986, -0.250161,
		0.706583, 0.700972, -0.096848,
		38.348846, 35.259846, 52.138168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676533, 35.143501, 51.540474>,  <37.854237, 34.769165, 52.205959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676533, 35.143501, 51.540474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.063431, 35.209660, 51.617500>,  <38.295570, 35.249355, 51.663715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.063431, 35.209660, 51.617500>,  <37.676533, 35.143501, 51.540474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063431, 35.209660, 51.617500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229203, -0.243009, -0.942556,
		-0.109100, 0.955819, -0.272958,
		0.967245, 0.165395, 0.192564,
		38.353603, 35.259277, 51.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836994, 35.556343, 51.030205>,  <37.676533, 35.143501, 51.540474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836994, 35.556343, 51.030205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.173981, 35.377522, 51.150463>,  <38.376175, 35.270229, 51.222618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.173981, 35.377522, 51.150463>,  <37.836994, 35.556343, 51.030205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173981, 35.377522, 51.150463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260278, -0.150860, -0.953675,
		0.471700, 0.881694, -0.010737,
		0.842469, -0.447054, 0.300646,
		38.426720, 35.243404, 51.240658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333645, 35.926720, 50.688435>,  <37.836994, 35.556343, 51.030205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333645, 35.926720, 50.688435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.495518, 35.574360, 50.786621>,  <38.592640, 35.362946, 50.845531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.495518, 35.574360, 50.786621>,  <38.333645, 35.926720, 50.688435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495518, 35.574360, 50.786621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204092, -0.174651, -0.963246,
		0.891392, 0.439904, 0.109106,
		0.404681, -0.880898, 0.245464,
		38.616920, 35.310089, 50.860260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962009, 35.773907, 50.193565>,  <38.333645, 35.926720, 50.688435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962009, 35.773907, 50.193565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895435, 35.412868, 50.352375>,  <38.855492, 35.196247, 50.447659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.895435, 35.412868, 50.352375>,  <38.962009, 35.773907, 50.193565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895435, 35.412868, 50.352375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002062, -0.402956, -0.915217,
		0.986051, -0.151504, 0.068926,
		-0.166434, -0.902593, 0.397022,
		38.845505, 35.142090, 50.471481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531929, 35.406452, 49.974548>,  <38.962009, 35.773907, 50.193565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531929, 35.406452, 49.974548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.243309, 35.138931, 50.046177>,  <39.070137, 34.978416, 50.089153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.243309, 35.138931, 50.046177>,  <39.531929, 35.406452, 49.974548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243309, 35.138931, 50.046177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107872, -0.364069, -0.925104,
		0.683909, -0.648190, 0.334839,
		-0.721548, -0.668807, 0.179069,
		39.026844, 34.938290, 50.099899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815842, 34.924942, 49.569622>,  <39.531929, 35.406452, 49.974548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815842, 34.924942, 49.569622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.451981, 34.769760, 49.628979>,  <39.233662, 34.676651, 49.664593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.451981, 34.769760, 49.628979>,  <39.815842, 34.924942, 49.569622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451981, 34.769760, 49.628979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061185, -0.228202, -0.971689,
		0.410832, -0.892982, 0.183848,
		-0.909655, -0.387952, 0.148390,
		39.179085, 34.653374, 49.673496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876938, 34.293255, 49.309071>,  <39.815842, 34.924942, 49.569622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876938, 34.293255, 49.309071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486126, 34.378494, 49.308643>,  <39.251640, 34.429638, 49.308388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.486126, 34.378494, 49.308643>,  <39.876938, 34.293255, 49.309071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486126, 34.378494, 49.308643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055876, -0.261025, -0.963714,
		-0.205637, -0.941519, 0.266936,
		-0.977032, 0.213091, -0.001068,
		39.193016, 34.442421, 49.308323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590309, 33.726810, 49.046940>,  <39.876938, 34.293255, 49.309071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590309, 33.726810, 49.046940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336369, 34.031113, 48.992958>,  <39.184002, 34.213696, 48.960571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336369, 34.031113, 48.992958>,  <39.590309, 33.726810, 49.046940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336369, 34.031113, 48.992958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151282, -0.293678, -0.943858,
		-0.757678, -0.578795, 0.301531,
		-0.634853, 0.760756, -0.134953,
		39.145912, 34.259338, 48.952473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062794, 33.436954, 48.658653>,  <39.590309, 33.726810, 49.046940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062794, 33.436954, 48.658653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968342, 33.823921, 48.622097>,  <38.911671, 34.056099, 48.600163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.968342, 33.823921, 48.622097>,  <39.062794, 33.436954, 48.658653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968342, 33.823921, 48.622097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208100, -0.142211, -0.967714,
		-0.949176, -0.209492, 0.234900,
		-0.236134, 0.967414, -0.091388,
		38.897503, 34.114147, 48.594681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303425, 33.503754, 48.453266>,  <39.062794, 33.436954, 48.658653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303425, 33.503754, 48.453266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.488266, 33.839462, 48.338665>,  <38.599171, 34.040890, 48.269905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.488266, 33.839462, 48.338665>,  <38.303425, 33.503754, 48.453266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488266, 33.839462, 48.338665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206517, -0.212344, -0.955123,
		-0.862447, 0.500529, 0.075200,
		0.462099, 0.839274, -0.286504,
		38.626896, 34.091244, 48.252712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859097, 33.856018, 48.107445>,  <38.303425, 33.503754, 48.453266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859097, 33.856018, 48.107445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216549, 33.990974, 47.989059>,  <38.431019, 34.071949, 47.918030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216549, 33.990974, 47.989059>,  <37.859097, 33.856018, 48.107445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216549, 33.990974, 47.989059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276301, -0.106082, -0.955198,
		-0.353673, 0.935368, -0.001576,
		0.893629, 0.337393, -0.295962,
		38.484638, 34.092194, 47.900272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538113, 34.434643, 47.965202>,  <37.859097, 33.856018, 48.107445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538113, 34.434643, 47.965202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140011, 34.470940, 47.979221>,  <36.901150, 34.492718, 47.987633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140011, 34.470940, 47.979221>,  <37.538113, 34.434643, 47.965202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140011, 34.470940, 47.979221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051438, 0.185177, 0.981358,
		0.082562, 0.978507, -0.188966,
		-0.995258, 0.090743, 0.035044,
		36.841434, 34.498161, 47.989735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391254, 35.059834, 48.361038>,  <37.538113, 34.434643, 47.965202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391254, 35.059834, 48.361038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.059544, 34.836430, 48.368702>,  <36.860519, 34.702385, 48.373299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.059544, 34.836430, 48.368702>,  <37.391254, 35.059834, 48.361038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059544, 34.836430, 48.368702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141039, 0.242341, 0.959885,
		-0.540753, 0.793305, -0.279739,
		-0.829274, -0.558514, 0.019159,
		36.810760, 34.668877, 48.374451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917679, 35.471794, 48.828354>,  <37.391254, 35.059834, 48.361038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917679, 35.471794, 48.828354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751560, 35.108299, 48.811729>,  <36.651890, 34.890202, 48.801754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751560, 35.108299, 48.811729>,  <36.917679, 35.471794, 48.828354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751560, 35.108299, 48.811729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318233, 0.102331, 0.942473,
		-0.852205, 0.404635, -0.331688,
		-0.415300, -0.908735, -0.041561,
		36.626968, 34.835678, 48.799259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246841, 35.571995, 49.005901>,  <36.917679, 35.471794, 48.828354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246841, 35.571995, 49.005901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291309, 35.179798, 49.070744>,  <36.317989, 34.944481, 49.109650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.291309, 35.179798, 49.070744>,  <36.246841, 35.571995, 49.005901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291309, 35.179798, 49.070744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274734, 0.126437, 0.953171,
		-0.955072, -0.150502, -0.255318,
		0.111172, -0.980491, 0.162104,
		36.324661, 34.885651, 49.119373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545223, 35.354546, 49.255333>,  <36.246841, 35.571995, 49.005901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545223, 35.354546, 49.255333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817982, 35.089069, 49.378315>,  <35.981636, 34.929783, 49.452103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817982, 35.089069, 49.378315>,  <35.545223, 35.354546, 49.255333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817982, 35.089069, 49.378315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402999, 0.009888, 0.915147,
		-0.610419, -0.747938, -0.260726,
		0.681895, -0.663695, 0.307454,
		36.022549, 34.889961, 49.470551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145733, 34.798187, 49.554958>,  <35.545223, 35.354546, 49.255333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145733, 34.798187, 49.554958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521450, 34.812744, 49.691429>,  <35.746880, 34.821480, 49.773312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521450, 34.812744, 49.691429>,  <35.145733, 34.798187, 49.554958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521450, 34.812744, 49.691429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338537, -0.063476, 0.938810,
		0.055829, -0.997319, -0.047300,
		0.939296, 0.036400, 0.341173,
		35.803238, 34.823662, 49.793781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192345, 34.313885, 50.152733>,  <35.145733, 34.798187, 49.554958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192345, 34.313885, 50.152733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511879, 34.545921, 50.216415>,  <35.703602, 34.685143, 50.254623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.511879, 34.545921, 50.216415>,  <35.192345, 34.313885, 50.152733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511879, 34.545921, 50.216415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336771, 0.211978, 0.917415,
		0.498438, -0.786484, 0.364695,
		0.798840, 0.580093, 0.159207,
		35.751530, 34.719948, 50.264179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479870, 34.031841, 50.741444>,  <35.192345, 34.313885, 50.152733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479870, 34.031841, 50.741444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602337, 34.411369, 50.710449>,  <35.675819, 34.639084, 50.691853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602337, 34.411369, 50.710449>,  <35.479870, 34.031841, 50.741444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602337, 34.411369, 50.710449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158298, 0.131003, 0.978662,
		0.938723, -0.287372, 0.190305,
		0.306170, 0.948818, -0.077485,
		35.694187, 34.696014, 50.687202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718845, 34.183918, 51.405361>,  <35.479870, 34.031841, 50.741444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718845, 34.183918, 51.405361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669968, 34.539955, 51.229725>,  <35.640640, 34.753578, 51.124344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669968, 34.539955, 51.229725>,  <35.718845, 34.183918, 51.405361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669968, 34.539955, 51.229725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347215, 0.376113, 0.859058,
		0.929790, 0.257435, 0.263094,
		-0.122199, 0.890093, -0.439091,
		35.633308, 34.806984, 51.097996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015167, 34.653202, 51.951286>,  <35.718845, 34.183918, 51.405361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015167, 34.653202, 51.951286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766571, 34.860294, 51.716099>,  <35.617413, 34.984550, 51.574986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766571, 34.860294, 51.716099>,  <36.015167, 34.653202, 51.951286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766571, 34.860294, 51.716099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334889, 0.502912, 0.796824,
		0.708235, 0.692123, -0.139174,
		-0.621492, 0.517731, -0.587964,
		35.580124, 35.015614, 51.539711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992249, 35.271233, 52.292999>,  <36.015167, 34.653202, 51.951286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992249, 35.271233, 52.292999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691605, 35.276485, 52.029209>,  <35.511219, 35.279636, 51.870934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691605, 35.276485, 52.029209>,  <35.992249, 35.271233, 52.292999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691605, 35.276485, 52.029209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545120, 0.550562, 0.632239,
		0.371390, 0.834691, -0.406645,
		-0.751607, 0.013137, -0.659480,
		35.466122, 35.280426, 51.831364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928623, 36.070160, 52.069298>,  <35.992249, 35.271233, 52.292999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928623, 36.070160, 52.069298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604233, 35.840496, 52.024311>,  <35.409599, 35.702698, 51.997318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604233, 35.840496, 52.024311>,  <35.928623, 36.070160, 52.069298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604233, 35.840496, 52.024311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505289, 0.590427, 0.629348,
		-0.294948, 0.567215, -0.768943,
		-0.810980, -0.574163, -0.112463,
		35.360939, 35.668247, 51.990574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383945, 36.530941, 51.936100>,  <35.928623, 36.070160, 52.069298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383945, 36.530941, 51.936100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232990, 36.187805, 52.075634>,  <35.142418, 35.981922, 52.159355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.232990, 36.187805, 52.075634>,  <35.383945, 36.530941, 51.936100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232990, 36.187805, 52.075634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575231, 0.512359, 0.637650,
		-0.725731, 0.039982, -0.686816,
		-0.377391, -0.857841, 0.348835,
		35.119774, 35.930454, 52.180286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616520, 36.617542, 51.911072>,  <35.383945, 36.530941, 51.936100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616520, 36.617542, 51.911072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677853, 36.318577, 52.169640>,  <34.714653, 36.139198, 52.324780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.677853, 36.318577, 52.169640>,  <34.616520, 36.617542, 51.911072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677853, 36.318577, 52.169640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528924, 0.490485, 0.692578,
		-0.834703, -0.448101, -0.320120,
		0.153330, -0.747416, 0.646421,
		34.723850, 36.094353, 52.363567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907692, 36.396046, 51.522263>,  <34.616520, 36.617542, 51.911072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907692, 36.396046, 51.522263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012375, 36.772823, 51.606400>,  <34.075184, 36.998890, 51.656879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.012375, 36.772823, 51.606400>,  <33.907692, 36.396046, 51.522263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012375, 36.772823, 51.606400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344675, 0.294779, -0.891238,
		-0.901503, 0.160747, 0.401812,
		0.261710, 0.941948, 0.210338,
		34.090889, 37.055408, 51.669502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511223, 36.779793, 51.205044>,  <33.907692, 36.396046, 51.522263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511223, 36.779793, 51.205044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803726, 37.044743, 51.270176>,  <33.979229, 37.203712, 51.309254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803726, 37.044743, 51.270176>,  <33.511223, 36.779793, 51.205044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803726, 37.044743, 51.270176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087741, 0.328082, -0.940565,
		-0.676431, 0.673512, 0.298031,
		0.731261, 0.662377, 0.162830,
		34.023106, 37.243454, 51.319023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226585, 37.504391, 51.047352>,  <33.511223, 36.779793, 51.205044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226585, 37.504391, 51.047352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621426, 37.540257, 50.994305>,  <33.858330, 37.561775, 50.962475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621426, 37.540257, 50.994305>,  <33.226585, 37.504391, 51.047352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621426, 37.540257, 50.994305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153565, 0.296288, -0.942672,
		-0.045229, 0.950881, 0.306236,
		0.987103, 0.089663, -0.132621,
		33.917557, 37.567154, 50.954517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431782, 38.178192, 50.725559>,  <33.226585, 37.504391, 51.047352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431782, 38.178192, 50.725559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759556, 37.958122, 50.661270>,  <33.956223, 37.826080, 50.622696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759556, 37.958122, 50.661270>,  <33.431782, 38.178192, 50.725559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759556, 37.958122, 50.661270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003288, 0.275891, -0.961183,
		0.573160, 0.788158, 0.224266,
		0.819437, -0.550174, -0.160721,
		34.005386, 37.793072, 50.613052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857910, 38.673397, 50.380013>,  <33.431782, 38.178192, 50.725559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857910, 38.673397, 50.380013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990364, 38.300465, 50.321899>,  <34.069836, 38.076706, 50.287033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.990364, 38.300465, 50.321899>,  <33.857910, 38.673397, 50.380013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990364, 38.300465, 50.321899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073426, 0.178961, -0.981113,
		0.940723, 0.314212, 0.127718,
		0.331134, -0.932332, -0.145281,
		34.089703, 38.020763, 50.278316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429794, 38.768764, 50.046680>,  <33.857910, 38.673397, 50.380013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429794, 38.768764, 50.046680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289371, 38.402119, 49.970188>,  <34.205116, 38.182129, 49.924294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289371, 38.402119, 49.970188>,  <34.429794, 38.768764, 50.046680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289371, 38.402119, 49.970188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228612, 0.114142, -0.966803,
		0.908016, -0.383123, 0.169479,
		-0.351060, -0.916618, -0.191229,
		34.184052, 38.127132, 49.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893051, 38.559341, 49.496433>,  <34.429794, 38.768764, 50.046680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893051, 38.559341, 49.496433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573257, 38.319874, 49.476742>,  <34.381382, 38.176193, 49.464928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573257, 38.319874, 49.476742>,  <34.893051, 38.559341, 49.496433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573257, 38.319874, 49.476742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071771, -0.013832, -0.997325,
		0.596385, -0.800878, 0.054025,
		-0.799484, -0.598667, -0.049231,
		34.333412, 38.140274, 49.461971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639931, 38.536747, 49.378014>,  <34.893051, 38.559341, 49.496433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639931, 38.536747, 49.378014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784168, 38.908756, 49.406372>,  <35.870708, 39.131962, 49.423386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784168, 38.908756, 49.406372>,  <35.639931, 38.536747, 49.378014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784168, 38.908756, 49.406372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061118, -0.099403, 0.993169,
		0.930719, -0.353795, -0.092685,
		0.360591, 0.930026, 0.070893,
		35.892345, 39.187763, 49.427639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148586, 38.476124, 49.841290>,  <35.639931, 38.536747, 49.378014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148586, 38.476124, 49.841290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108559, 38.873947, 49.852852>,  <36.084541, 39.112640, 49.859787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108559, 38.873947, 49.852852>,  <36.148586, 38.476124, 49.841290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108559, 38.873947, 49.852852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389097, 0.012381, 0.921114,
		0.915745, 0.103422, -0.388220,
		-0.100070, 0.994561, 0.028903,
		36.078537, 39.172314, 49.861523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742401, 38.700844, 50.263805>,  <36.148586, 38.476124, 49.841290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742401, 38.700844, 50.263805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.474125, 38.996422, 50.289536>,  <36.313160, 39.173767, 50.304974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.474125, 38.996422, 50.289536>,  <36.742401, 38.700844, 50.263805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474125, 38.996422, 50.289536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293675, 0.184908, 0.937851,
		0.681122, 0.647900, -0.341025,
		-0.670692, 0.738941, 0.064327,
		36.272919, 39.218105, 50.308834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035568, 39.238033, 50.574394>,  <36.742401, 38.700844, 50.263805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035568, 39.238033, 50.574394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.654659, 39.318054, 50.666622>,  <36.426113, 39.366066, 50.721958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.654659, 39.318054, 50.666622>,  <37.035568, 39.238033, 50.574394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654659, 39.318054, 50.666622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250129, 0.078420, 0.965031,
		0.174974, 0.976642, -0.124716,
		-0.952271, 0.200051, 0.230565,
		36.368977, 39.378071, 50.735790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085079, 39.684460, 51.147438>,  <37.035568, 39.238033, 50.574394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085079, 39.684460, 51.147438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700790, 39.575829, 51.170261>,  <36.470219, 39.510651, 51.183956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700790, 39.575829, 51.170261>,  <37.085079, 39.684460, 51.147438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700790, 39.575829, 51.170261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046867, 0.043863, 0.997938,
		-0.273523, 0.961416, -0.029412,
		-0.960723, -0.271580, 0.057056,
		36.412575, 39.494354, 51.187378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719971, 40.289257, 51.419735>,  <37.085079, 39.684460, 51.147438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719971, 40.289257, 51.419735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532459, 39.942207, 51.486034>,  <36.419952, 39.733978, 51.525814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532459, 39.942207, 51.486034>,  <36.719971, 40.289257, 51.419735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532459, 39.942207, 51.486034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009137, 0.182872, 0.983094,
		-0.883270, 0.462366, -0.077798,
		-0.468776, -0.867626, 0.165750,
		36.391827, 39.681919, 51.535759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268875, 40.515755, 51.833855>,  <36.719971, 40.289257, 51.419735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268875, 40.515755, 51.833855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240658, 40.122604, 51.901943>,  <36.223728, 39.886715, 51.942795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.240658, 40.122604, 51.901943>,  <36.268875, 40.515755, 51.833855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240658, 40.122604, 51.901943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010500, 0.169901, 0.985405,
		-0.997454, 0.071301, -0.001666,
		-0.070544, -0.982878, 0.170217,
		36.219494, 39.827740, 51.953007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786800, 40.422344, 52.454205>,  <36.268875, 40.515755, 51.833855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786800, 40.422344, 52.454205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.021702, 40.100048, 52.423450>,  <36.162643, 39.906670, 52.404999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.021702, 40.100048, 52.423450>,  <35.786800, 40.422344, 52.454205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021702, 40.100048, 52.423450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097696, -0.023728, 0.994933,
		-0.803482, -0.591793, 0.064783,
		0.587258, -0.805740, -0.076881,
		36.197880, 39.858326, 52.400387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575909, 40.065430, 52.991222>,  <35.786800, 40.422344, 52.454205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575909, 40.065430, 52.991222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.934631, 39.906132, 52.914131>,  <36.149864, 39.810551, 52.867878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.934631, 39.906132, 52.914131>,  <35.575909, 40.065430, 52.991222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934631, 39.906132, 52.914131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215908, 0.013721, 0.976317,
		-0.386172, -0.917175, 0.098290,
		0.896802, -0.398248, -0.192727,
		36.203671, 39.786659, 52.856312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.245682, 37.174927, 36.915295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552708, 37.187225, 37.171387>,  <38.736923, 37.194603, 37.325043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552708, 37.187225, 37.171387>,  <38.245682, 37.174927, 36.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552708, 37.187225, 37.171387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602339, 0.376107, 0.704082,
		-0.219147, -0.926066, 0.307207,
		0.767569, 0.030745, 0.640229,
		38.782978, 37.196449, 37.363457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911564, 36.853554, 37.442581>,  <38.245682, 37.174927, 36.915295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911564, 36.853554, 37.442581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221916, 37.059715, 37.588112>,  <38.408127, 37.183411, 37.675430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221916, 37.059715, 37.588112>,  <37.911564, 36.853554, 37.442581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221916, 37.059715, 37.588112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549715, 0.269351, 0.790736,
		0.309550, -0.813517, 0.492309,
		0.775881, 0.515402, 0.363825,
		38.454681, 37.214336, 37.697258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979992, 36.616940, 38.072357>,  <37.911564, 36.853554, 37.442581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979992, 36.616940, 38.072357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140442, 36.982597, 38.048916>,  <38.236710, 37.201992, 38.034851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140442, 36.982597, 38.048916>,  <37.979992, 36.616940, 38.072357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140442, 36.982597, 38.048916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477478, 0.263252, 0.838280,
		0.781740, -0.308270, 0.542081,
		0.401120, 0.914149, -0.058603,
		38.260777, 37.256844, 38.031334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164135, 36.688503, 38.702232>,  <37.979992, 36.616940, 38.072357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164135, 36.688503, 38.702232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128437, 37.067600, 38.579716>,  <38.107018, 37.295059, 38.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128437, 37.067600, 38.579716>,  <38.164135, 36.688503, 38.702232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128437, 37.067600, 38.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564814, 0.205136, 0.799315,
		0.820378, 0.244338, 0.516991,
		-0.089249, 0.947744, -0.306294,
		38.101662, 37.351925, 38.487827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424553, 37.141300, 39.255692>,  <38.164135, 36.688503, 38.702232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424553, 37.141300, 39.255692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206913, 37.394672, 39.035610>,  <38.076328, 37.546696, 38.903561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206913, 37.394672, 39.035610>,  <38.424553, 37.141300, 39.255692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206913, 37.394672, 39.035610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315238, 0.453380, 0.833710,
		0.777547, 0.627065, -0.047003,
		-0.544100, 0.633432, -0.550199,
		38.043682, 37.584702, 38.870552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452251, 37.787476, 39.600140>,  <38.424553, 37.141300, 39.255692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452251, 37.787476, 39.600140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150299, 37.819447, 39.339752>,  <37.969128, 37.838631, 39.183521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150299, 37.819447, 39.339752>,  <38.452251, 37.787476, 39.600140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150299, 37.819447, 39.339752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476375, 0.615389, 0.627984,
		0.450794, 0.784161, -0.426471,
		-0.754885, 0.079932, -0.650968,
		37.923832, 37.843426, 39.144463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226200, 38.483437, 39.506538>,  <38.452251, 37.787476, 39.600140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226200, 38.483437, 39.506538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902302, 38.278042, 39.392941>,  <37.707962, 38.154804, 39.324783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902302, 38.278042, 39.392941>,  <38.226200, 38.483437, 39.506538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902302, 38.278042, 39.392941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566310, 0.557137, 0.607365,
		-0.153650, 0.652636, -0.741928,
		-0.809744, -0.513483, -0.283990,
		37.659378, 38.123997, 39.307743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810844, 38.975994, 39.431805>,  <38.226200, 38.483437, 39.506538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810844, 38.975994, 39.431805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552284, 38.670795, 39.433018>,  <37.397148, 38.487679, 39.433746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552284, 38.670795, 39.433018>,  <37.810844, 38.975994, 39.431805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552284, 38.670795, 39.433018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579191, 0.493266, 0.649019,
		-0.496696, 0.417766, -0.760766,
		-0.646399, -0.762994, 0.003037,
		37.358364, 38.441898, 39.433929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142574, 39.303867, 39.440376>,  <37.810844, 38.975994, 39.431805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142574, 39.303867, 39.440376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088974, 38.931541, 39.576389>,  <37.056812, 38.708145, 39.657997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088974, 38.931541, 39.576389>,  <37.142574, 39.303867, 39.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088974, 38.931541, 39.576389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369852, 0.365309, 0.854259,
		-0.919376, -0.011286, -0.393218,
		-0.134005, -0.930818, 0.340030,
		37.048771, 38.652294, 39.678398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438629, 39.403942, 39.694599>,  <37.142574, 39.303867, 39.440376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438629, 39.403942, 39.694599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590927, 39.072887, 39.859550>,  <36.682304, 38.874256, 39.958519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590927, 39.072887, 39.859550>,  <36.438629, 39.403942, 39.694599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590927, 39.072887, 39.859550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525316, 0.173405, 0.833051,
		-0.760970, -0.533807, -0.368747,
		0.380746, -0.827635, 0.412374,
		36.705151, 38.824596, 39.983261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863003, 38.959644, 40.002537>,  <36.438629, 39.403942, 39.694599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863003, 38.959644, 40.002537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195118, 38.858517, 40.201210>,  <36.394386, 38.797840, 40.320415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195118, 38.858517, 40.201210>,  <35.863003, 38.959644, 40.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195118, 38.858517, 40.201210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395402, 0.360847, 0.844658,
		-0.392775, -0.897703, 0.199642,
		0.830292, -0.252821, 0.496685,
		36.444206, 38.782669, 40.350216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731441, 38.882256, 40.716343>,  <35.863003, 38.959644, 40.002537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731441, 38.882256, 40.716343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129215, 38.865494, 40.755028>,  <36.367878, 38.855438, 40.778236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129215, 38.865494, 40.755028>,  <35.731441, 38.882256, 40.716343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129215, 38.865494, 40.755028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083610, 0.245029, 0.965904,
		-0.064169, -0.968610, 0.240161,
		0.994430, -0.041901, 0.096709,
		36.427544, 38.852924, 40.784039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225060, 38.246037, 40.984760>,  <35.731441, 38.882256, 40.716343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225060, 38.246037, 40.984760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867287, 38.423229, 40.960232>,  <34.652622, 38.529545, 40.945515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867287, 38.423229, 40.960232>,  <35.225060, 38.246037, 40.984760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867287, 38.423229, 40.960232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166895, -0.457859, -0.873219,
		-0.414892, -0.770802, 0.483455,
		-0.894433, 0.442978, -0.061319,
		34.598957, 38.556122, 40.941837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773262, 37.714378, 40.703743>,  <35.225060, 38.246037, 40.984760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773262, 37.714378, 40.703743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577320, 38.059238, 40.651989>,  <34.459755, 38.266155, 40.620937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577320, 38.059238, 40.651989>,  <34.773262, 37.714378, 40.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577320, 38.059238, 40.651989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510799, -0.404097, -0.758808,
		-0.706490, -0.305616, 0.638334,
		-0.489853, 0.862151, -0.129382,
		34.430363, 38.317883, 40.613174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077625, 37.590195, 40.705395>,  <34.773262, 37.714378, 40.703743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077625, 37.590195, 40.705395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117908, 37.934795, 40.506332>,  <34.142078, 38.141556, 40.386894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117908, 37.934795, 40.506332>,  <34.077625, 37.590195, 40.705395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117908, 37.934795, 40.506332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528033, -0.377662, -0.760626,
		-0.843232, 0.339379, 0.416872,
		0.100704, 0.861507, -0.497660,
		34.148121, 38.193249, 40.357033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392262, 37.839195, 40.481956>,  <34.077625, 37.590195, 40.705395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392262, 37.839195, 40.481956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655346, 37.990776, 40.221554>,  <33.813198, 38.081726, 40.065311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655346, 37.990776, 40.221554>,  <33.392262, 37.839195, 40.481956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655346, 37.990776, 40.221554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431576, -0.518761, -0.737990,
		-0.617380, 0.766343, -0.177648,
		0.657710, 0.378952, -0.651009,
		33.852657, 38.104462, 40.026253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918121, 38.016243, 39.990650>,  <33.392262, 37.839195, 40.481956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918121, 38.016243, 39.990650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274620, 38.040382, 39.810856>,  <33.488518, 38.054867, 39.702980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274620, 38.040382, 39.810856>,  <32.918121, 38.016243, 39.990650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274620, 38.040382, 39.810856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370301, -0.475364, -0.798064,
		-0.261833, 0.877717, -0.401319,
		0.891247, 0.060350, -0.449485,
		33.541992, 38.058487, 39.676010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827923, 38.174870, 39.237778>,  <32.918121, 38.016243, 39.990650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827923, 38.174870, 39.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208183, 38.059479, 39.192089>,  <33.436340, 37.990242, 39.164677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208183, 38.059479, 39.192089>,  <32.827923, 38.174870, 39.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208183, 38.059479, 39.192089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239139, -0.446687, -0.862139,
		0.197689, 0.846906, -0.493629,
		0.950648, -0.288481, -0.114223,
		33.493378, 37.972935, 39.157822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929535, 38.099213, 38.473167>,  <32.827923, 38.174870, 39.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929535, 38.099213, 38.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207047, 37.869167, 38.646564>,  <33.373554, 37.731140, 38.750603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207047, 37.869167, 38.646564>,  <32.929535, 38.099213, 38.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207047, 37.869167, 38.646564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103691, -0.675411, -0.730115,
		0.712682, 0.461591, -0.528222,
		0.693781, -0.575112, 0.433490,
		33.415180, 37.696632, 38.776611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311573, 37.921669, 37.953335>,  <32.929535, 38.099213, 38.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311573, 37.921669, 37.953335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409271, 37.638340, 38.218250>,  <33.467892, 37.468342, 38.377201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409271, 37.638340, 38.218250>,  <33.311573, 37.921669, 37.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409271, 37.638340, 38.218250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101623, -0.697910, -0.708939,
		0.964373, 0.105854, -0.242445,
		0.244249, -0.708319, 0.662289,
		33.482548, 37.425846, 38.416939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788605, 37.532753, 37.535183>,  <33.311573, 37.921669, 37.953335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788605, 37.532753, 37.535183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662544, 37.327854, 37.854752>,  <33.586906, 37.204914, 38.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662544, 37.327854, 37.854752>,  <33.788605, 37.532753, 37.535183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662544, 37.327854, 37.854752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151070, -0.804012, -0.575102,
		0.936941, -0.301937, 0.176000,
		-0.315150, -0.512248, 0.798926,
		33.568001, 37.174179, 38.094429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041817, 36.823448, 37.473434>,  <33.788605, 37.532753, 37.535183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041817, 36.823448, 37.473434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744019, 36.799000, 37.739365>,  <33.565338, 36.784328, 37.898922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744019, 36.799000, 37.739365>,  <34.041817, 36.823448, 37.473434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744019, 36.799000, 37.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318530, -0.842632, -0.434178,
		0.586740, -0.535010, 0.607866,
		-0.744496, -0.061126, 0.664822,
		33.520668, 36.780663, 37.938812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043335, 36.079796, 37.853626>,  <34.041817, 36.823448, 37.473434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043335, 36.079796, 37.853626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678841, 36.244122, 37.841778>,  <33.460144, 36.342716, 37.834667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678841, 36.244122, 37.841778>,  <34.043335, 36.079796, 37.853626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678841, 36.244122, 37.841778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319937, -0.751294, -0.577232,
		-0.259390, -0.516519, 0.816043,
		-0.911239, 0.410811, -0.029625,
		33.405468, 36.367363, 37.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712162, 35.451649, 37.756432>,  <34.043335, 36.079796, 37.853626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712162, 35.451649, 37.756432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440628, 35.739910, 37.700089>,  <33.277706, 35.912868, 37.666283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440628, 35.739910, 37.700089>,  <33.712162, 35.451649, 37.756432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440628, 35.739910, 37.700089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449100, -0.559238, -0.696823,
		-0.580947, -0.409763, 0.703275,
		-0.678830, 0.720657, -0.140863,
		33.236977, 35.956108, 37.657829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020672, 35.165401, 37.748806>,  <33.712162, 35.451649, 37.756432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020672, 35.165401, 37.748806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000107, 35.504047, 37.536919>,  <32.987766, 35.707233, 37.409786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000107, 35.504047, 37.536919>,  <33.020672, 35.165401, 37.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000107, 35.504047, 37.536919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574992, -0.458777, -0.677428,
		-0.816542, 0.269757, 0.510382,
		-0.051411, 0.846614, -0.529719,
		32.984684, 35.758030, 37.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300575, 35.227737, 37.670364>,  <33.020672, 35.165401, 37.748806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300575, 35.227737, 37.670364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443798, 35.453781, 37.373058>,  <32.529732, 35.589409, 37.194675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443798, 35.453781, 37.373058>,  <32.300575, 35.227737, 37.670364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443798, 35.453781, 37.373058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547928, -0.517386, -0.657333,
		-0.756021, 0.642621, 0.124385,
		0.358061, 0.565111, -0.743264,
		32.551216, 35.623314, 37.150078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413456, 34.485329, 37.803562>,  <32.300575, 35.227737, 37.670364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413456, 34.485329, 37.803562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292694, 34.109840, 37.870090>,  <32.220238, 33.884548, 37.910007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292694, 34.109840, 37.870090>,  <32.413456, 34.485329, 37.803562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292694, 34.109840, 37.870090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953277, -0.295293, 0.063764,
		-0.010743, 0.177800, 0.984008,
		-0.301908, -0.938717, 0.166320,
		32.202122, 33.828224, 37.919987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836208, 34.179901, 38.298489>,  <32.413456, 34.485329, 37.803562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836208, 34.179901, 38.298489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664890, 33.874229, 38.105576>,  <32.562099, 33.690826, 37.989826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664890, 33.874229, 38.105576>,  <32.836208, 34.179901, 38.298489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664890, 33.874229, 38.105576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870318, -0.492434, 0.007376,
		-0.243129, -0.416579, 0.875985,
		-0.428293, -0.764179, -0.482281,
		32.536404, 33.644974, 37.960892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542988, 34.225262, 38.113968>,  <32.836208, 34.179901, 38.298489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542988, 34.225262, 38.113968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873707, 34.022015, 38.017456>,  <34.072140, 33.900066, 37.959549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873707, 34.022015, 38.017456>,  <33.542988, 34.225262, 38.113968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873707, 34.022015, 38.017456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179682, -0.167898, 0.969291,
		-0.533029, -0.844761, -0.047517,
		0.826798, -0.508122, -0.241283,
		34.121746, 33.869579, 37.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557945, 33.489937, 38.461952>,  <33.542988, 34.225262, 38.113968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557945, 33.489937, 38.461952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921291, 33.645275, 38.399921>,  <34.139301, 33.738480, 38.362701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921291, 33.645275, 38.399921>,  <33.557945, 33.489937, 38.461952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921291, 33.645275, 38.399921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189082, -0.050662, 0.980653,
		0.372981, -0.920118, -0.119450,
		0.908368, 0.388351, -0.155082,
		34.193802, 33.761780, 38.353397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063152, 32.981606, 38.741066>,  <33.557945, 33.489937, 38.461952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063152, 32.981606, 38.741066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182323, 33.362103, 38.773014>,  <34.253826, 33.590401, 38.792183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182323, 33.362103, 38.773014>,  <34.063152, 32.981606, 38.741066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182323, 33.362103, 38.773014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269411, -0.164051, 0.948949,
		0.915784, -0.261197, -0.305150,
		0.297923, 0.951243, 0.079866,
		34.271702, 33.647476, 38.796974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602646, 32.962505, 39.168049>,  <34.063152, 32.981606, 38.741066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602646, 32.962505, 39.168049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527538, 33.355301, 39.176373>,  <34.482475, 33.590981, 39.181366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527538, 33.355301, 39.176373>,  <34.602646, 32.962505, 39.168049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527538, 33.355301, 39.176373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269246, 0.031089, 0.962569,
		0.944590, 0.186339, -0.270235,
		-0.187765, 0.981994, 0.020805,
		34.471210, 33.649899, 39.182613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161072, 33.201199, 39.521812>,  <34.602646, 32.962505, 39.168049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161072, 33.201199, 39.521812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866898, 33.472076, 39.531147>,  <34.690395, 33.634602, 39.536747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866898, 33.472076, 39.531147>,  <35.161072, 33.201199, 39.521812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866898, 33.472076, 39.531147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202712, 0.187015, 0.961215,
		0.646565, 0.711641, -0.274812,
		-0.735433, 0.677195, 0.023341,
		34.646267, 33.675236, 39.538151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446705, 33.828518, 39.769596>,  <35.161072, 33.201199, 39.521812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446705, 33.828518, 39.769596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053173, 33.810040, 39.838821>,  <34.817055, 33.798950, 39.880356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053173, 33.810040, 39.838821>,  <35.446705, 33.828518, 39.769596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053173, 33.810040, 39.838821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161516, 0.188914, 0.968620,
		-0.077444, 0.980906, -0.178396,
		-0.983827, -0.046200, 0.173062,
		34.758026, 33.796181, 39.890739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262630, 34.377239, 40.314945>,  <35.446705, 33.828518, 39.769596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262630, 34.377239, 40.314945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952660, 34.124779, 40.328415>,  <34.766678, 33.973301, 40.336498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952660, 34.124779, 40.328415>,  <35.262630, 34.377239, 40.314945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952660, 34.124779, 40.328415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028967, 0.088685, 0.995638,
		-0.631386, 0.770573, -0.087007,
		-0.774928, -0.631152, 0.033673,
		34.720181, 33.935432, 40.338516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882721, 34.705730, 40.822392>,  <35.262630, 34.377239, 40.314945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882721, 34.705730, 40.822392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777912, 34.320675, 40.795033>,  <34.715027, 34.089642, 40.778618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777912, 34.320675, 40.795033>,  <34.882721, 34.705730, 40.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777912, 34.320675, 40.795033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098687, -0.043777, 0.994155,
		-0.960004, 0.267237, -0.083529,
		-0.262019, -0.962636, -0.068399,
		34.699306, 34.031883, 40.774513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404930, 34.631901, 41.420597>,  <34.882721, 34.705730, 40.822392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404930, 34.631901, 41.420597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456966, 34.251408, 41.308716>,  <34.488190, 34.023113, 41.241589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456966, 34.251408, 41.308716>,  <34.404930, 34.631901, 41.420597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456966, 34.251408, 41.308716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046016, -0.287585, 0.956649,
		-0.990434, -0.111581, -0.081184,
		0.130091, -0.951233, -0.279700,
		34.495995, 33.966038, 41.224808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812008, 34.205967, 41.547089>,  <34.404930, 34.631901, 41.420597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812008, 34.205967, 41.547089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125099, 33.957085, 41.541569>,  <34.312954, 33.807755, 41.538258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125099, 33.957085, 41.541569>,  <33.812008, 34.205967, 41.547089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125099, 33.957085, 41.541569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216062, -0.292472, 0.931546,
		-0.583649, -0.726169, -0.363362,
		0.782733, -0.622205, -0.013804,
		34.359921, 33.770424, 41.537426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591877, 33.700977, 42.039841>,  <33.812008, 34.205967, 41.547089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591877, 33.700977, 42.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989902, 33.681370, 42.005314>,  <34.228718, 33.669605, 41.984600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989902, 33.681370, 42.005314>,  <33.591877, 33.700977, 42.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989902, 33.681370, 42.005314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070069, -0.269072, 0.960568,
		-0.070305, -0.961872, -0.264309,
		0.995062, -0.049013, -0.086315,
		34.288422, 33.666664, 41.979420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732613, 33.194073, 42.454174>,  <33.591877, 33.700977, 42.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732613, 33.194073, 42.454174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083363, 33.380539, 42.407204>,  <34.293812, 33.492420, 42.379021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083363, 33.380539, 42.407204>,  <33.732613, 33.194073, 42.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083363, 33.380539, 42.407204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189840, -0.111379, 0.975477,
		0.441654, -0.877659, -0.186162,
		0.876871, 0.466164, -0.117423,
		34.346424, 33.520390, 42.371975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239574, 32.759949, 42.950134>,  <33.732613, 33.194073, 42.454174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239574, 32.759949, 42.950134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392231, 33.119896, 42.865681>,  <34.483826, 33.335865, 42.815006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392231, 33.119896, 42.865681>,  <34.239574, 32.759949, 42.950134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392231, 33.119896, 42.865681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267122, 0.111302, 0.957213,
		0.884869, -0.421714, -0.197898,
		0.381644, 0.899871, -0.211137,
		34.506725, 33.389858, 42.802338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934799, 32.739429, 43.100101>,  <34.239574, 32.759949, 42.950134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934799, 32.739429, 43.100101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807892, 33.118256, 43.119717>,  <34.731747, 33.345551, 43.131485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807892, 33.118256, 43.119717>,  <34.934799, 32.739429, 43.100101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807892, 33.118256, 43.119717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352853, 0.069893, 0.933065,
		0.880249, 0.313330, -0.356351,
		-0.317264, 0.947069, 0.049036,
		34.712711, 33.402378, 43.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519848, 33.090370, 43.414196>,  <34.934799, 32.739429, 43.100101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519848, 33.090370, 43.414196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220158, 33.351562, 43.458527>,  <35.040344, 33.508278, 43.485126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220158, 33.351562, 43.458527>,  <35.519848, 33.090370, 43.414196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220158, 33.351562, 43.458527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273655, 0.152814, 0.949611,
		0.603140, 0.741799, -0.293183,
		-0.749223, 0.652980, 0.110829,
		34.995392, 33.547455, 43.491776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771626, 33.807720, 43.554554>,  <35.519848, 33.090370, 43.414196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771626, 33.807720, 43.554554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402859, 33.820122, 43.709007>,  <35.181599, 33.827560, 43.801682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402859, 33.820122, 43.709007>,  <35.771626, 33.807720, 43.554554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402859, 33.820122, 43.709007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386264, 0.149115, 0.910256,
		-0.029360, 0.988334, -0.149447,
		-0.921921, 0.031001, 0.386135,
		35.126282, 33.829422, 43.824848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785278, 34.394405, 43.924946>,  <35.771626, 33.807720, 43.554554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785278, 34.394405, 43.924946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479210, 34.188065, 44.079044>,  <35.295570, 34.064262, 44.171505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479210, 34.188065, 44.079044>,  <35.785278, 34.394405, 43.924946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479210, 34.188065, 44.079044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352532, 0.165010, 0.921137,
		-0.538738, 0.840637, 0.055593,
		-0.765168, -0.515850, 0.385249,
		35.249660, 34.033310, 44.194618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463955, 34.869946, 44.412083>,  <35.785278, 34.394405, 43.924946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463955, 34.869946, 44.412083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296154, 34.521133, 44.512939>,  <35.195473, 34.311848, 44.573452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296154, 34.521133, 44.512939>,  <35.463955, 34.869946, 44.412083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296154, 34.521133, 44.512939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130502, 0.216945, 0.967421,
		-0.898323, 0.438743, 0.022792,
		-0.419505, -0.872032, 0.252143,
		35.170303, 34.259525, 44.588581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966824, 35.070412, 44.954865>,  <35.463955, 34.869946, 44.412083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966824, 35.070412, 44.954865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067669, 34.684055, 44.978493>,  <35.128178, 34.452240, 44.992668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067669, 34.684055, 44.978493>,  <34.966824, 35.070412, 44.954865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067669, 34.684055, 44.978493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021018, 0.066489, 0.997566,
		-0.967470, -0.250258, 0.037064,
		0.252113, -0.965893, 0.059066,
		35.143303, 34.394287, 44.996212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623421, 34.756920, 45.538265>,  <34.966824, 35.070412, 44.954865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623421, 34.756920, 45.538265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937836, 34.519123, 45.470478>,  <35.126484, 34.376446, 45.429806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937836, 34.519123, 45.470478>,  <34.623421, 34.756920, 45.538265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937836, 34.519123, 45.470478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232984, 0.030981, 0.971987,
		-0.572591, -0.803503, 0.162860,
		0.786040, -0.594494, -0.169464,
		35.173649, 34.340775, 45.419640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789165, 34.535969, 46.249092>,  <34.623421, 34.756920, 45.538265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789165, 34.535969, 46.249092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101650, 34.392654, 46.044605>,  <35.289139, 34.306667, 45.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101650, 34.392654, 46.044605>,  <34.789165, 34.535969, 46.249092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101650, 34.392654, 46.044605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559327, 0.038021, 0.828074,
		-0.277248, -0.932839, 0.230099,
		0.781208, -0.358283, -0.511221,
		35.336014, 34.285168, 45.891239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006817, 33.956234, 46.576252>,  <34.789165, 34.535969, 46.249092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006817, 33.956234, 46.576252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325024, 34.092548, 46.375847>,  <35.515949, 34.174335, 46.255604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325024, 34.092548, 46.375847>,  <35.006817, 33.956234, 46.576252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325024, 34.092548, 46.375847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564033, -0.114353, 0.817796,
		0.221401, -0.933161, -0.283184,
		0.795518, 0.340786, -0.501015,
		35.563679, 34.194786, 46.225544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485054, 33.546696, 46.729660>,  <35.006817, 33.956234, 46.576252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485054, 33.546696, 46.729660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657333, 33.891304, 46.622120>,  <35.760700, 34.098068, 46.557598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657333, 33.891304, 46.622120>,  <35.485054, 33.546696, 46.729660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657333, 33.891304, 46.622120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428616, 0.066893, 0.901007,
		0.794222, -0.503293, -0.340452,
		0.430696, 0.861523, -0.268847,
		35.786541, 34.149761, 46.541466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138622, 33.549824, 47.166500>,  <35.485054, 33.546696, 46.729660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138622, 33.549824, 47.166500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125378, 33.930489, 47.044361>,  <36.117432, 34.158890, 46.971077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125378, 33.930489, 47.044361>,  <36.138622, 33.549824, 47.166500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125378, 33.930489, 47.044361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288198, 0.301626, 0.908825,
		0.956998, -0.057905, -0.284256,
		-0.033114, 0.951666, -0.305344,
		36.115444, 34.215988, 46.952759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866459, 33.774082, 47.237427>,  <36.138622, 33.549824, 47.166500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866459, 33.774082, 47.237427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640533, 34.103786, 47.221516>,  <36.504978, 34.301609, 47.211971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640533, 34.103786, 47.221516>,  <36.866459, 33.774082, 47.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640533, 34.103786, 47.221516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249926, 0.216797, 0.943682,
		0.786463, 0.523063, -0.328454,
		-0.564813, 0.824260, -0.039776,
		36.471088, 34.351063, 47.209583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272972, 34.358242, 47.286114>,  <36.866459, 33.774082, 47.237427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272972, 34.358242, 47.286114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906998, 34.425053, 47.433079>,  <36.687412, 34.465137, 47.521259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906998, 34.425053, 47.433079>,  <37.272972, 34.358242, 47.286114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906998, 34.425053, 47.433079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391070, 0.141848, 0.909364,
		0.099771, 0.975695, -0.195101,
		-0.914937, 0.167026, 0.367413,
		36.632515, 34.475159, 47.543304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829845, 33.936249, 47.357777>,  <37.272972, 34.358242, 47.286114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829845, 33.936249, 47.357777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227173, 33.959007, 47.397945>,  <38.465569, 33.972664, 47.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227173, 33.959007, 47.397945>,  <37.829845, 33.936249, 47.357777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227173, 33.959007, 47.397945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103364, -0.051360, -0.993317,
		-0.051360, 0.997058, -0.056898,
		0.993317, 0.056898, 0.100422,
		38.525169, 33.976078, 47.428074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046028, 34.378426, 46.836178>,  <37.829845, 33.936249, 47.357777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046028, 34.378426, 46.836178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387493, 34.199108, 46.942230>,  <38.592373, 34.091518, 47.005863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387493, 34.199108, 46.942230>,  <38.046028, 34.378426, 46.836178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387493, 34.199108, 46.942230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272176, -0.050039, -0.960945,
		0.444053, 0.892485, 0.079298,
		0.853661, -0.448294, 0.265133,
		38.643593, 34.064621, 47.021770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564983, 34.737663, 46.493767>,  <38.046028, 34.378426, 46.836178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564983, 34.737663, 46.493767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709618, 34.374451, 46.578365>,  <38.796398, 34.156521, 46.629124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709618, 34.374451, 46.578365>,  <38.564983, 34.737663, 46.493767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709618, 34.374451, 46.578365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287459, -0.107213, -0.951773,
		0.886919, 0.404940, 0.222257,
		0.361582, -0.908036, 0.211493,
		38.818092, 34.102039, 46.641815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164234, 34.734249, 46.047146>,  <38.564983, 34.737663, 46.493767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164234, 34.734249, 46.047146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046383, 34.365376, 46.147362>,  <38.975670, 34.144051, 46.207493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046383, 34.365376, 46.147362>,  <39.164234, 34.734249, 46.047146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046383, 34.365376, 46.147362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099144, -0.290265, -0.951796,
		0.950454, -0.255590, 0.176951,
		-0.294632, -0.922182, 0.250544,
		38.957993, 34.088722, 46.222527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670761, 34.318604, 45.805779>,  <39.164234, 34.734249, 46.047146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670761, 34.318604, 45.805779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318615, 34.130470, 45.830288>,  <39.107327, 34.017590, 45.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318615, 34.130470, 45.830288>,  <39.670761, 34.318604, 45.805779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318615, 34.130470, 45.830288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131634, -0.366383, -0.921106,
		0.455671, -0.802841, 0.384461,
		-0.880361, -0.470329, 0.061269,
		39.054508, 33.989372, 45.848667>
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
