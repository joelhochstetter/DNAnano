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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.782700, 0.765379, 3.629395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.707245, 0.831848, 3.242241>,  <4.661972, 0.871729, 3.009948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.707245, 0.831848, 3.242241>,  <4.782700, 0.765379, 3.629395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.707245, 0.831848, 3.242241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524076, 0.850540, 0.043885,
		0.830518, -0.498967, -0.247531,
		-0.188638, 0.166172, -0.967885,
		4.650653, 0.881700, 2.951875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.005339, 0.888905, 3.865290>,  <4.782700, 0.765379, 3.629395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.005339, 0.888905, 3.865290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834351, 1.144440, 3.609428>,  <3.731757, 1.297760, 3.455912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.834351, 1.144440, 3.609428>,  <4.005339, 0.888905, 3.865290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.834351, 1.144440, 3.609428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805396, -0.590495, -0.051505,
		-0.410615, 0.493157, 0.766936,
		-0.427472, 0.638836, -0.639653,
		3.706109, 1.336091, 3.417532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.462850, 1.355682, 4.210976>,  <4.005339, 0.888905, 3.865290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.462850, 1.355682, 4.210976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396523, 1.264191, 3.827271>,  <3.356726, 1.209296, 3.597047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396523, 1.264191, 3.827271>,  <3.462850, 1.355682, 4.210976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396523, 1.264191, 3.827271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788370, -0.553621, 0.268283,
		-0.592432, 0.800742, -0.088522,
		-0.165818, -0.228727, -0.959264,
		3.346777, 1.195572, 3.539491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.778867, 1.421815, 4.394653>,  <3.462850, 1.355682, 4.210976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.778867, 1.421815, 4.394653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801590, 1.256454, 4.031143>,  <2.815223, 1.157238, 3.813037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801590, 1.256454, 4.031143>,  <2.778867, 1.421815, 4.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801590, 1.256454, 4.031143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858233, -0.485292, 0.167113,
		-0.510106, 0.770448, -0.382362,
		0.056806, -0.413401, -0.908775,
		2.818632, 1.132434, 3.758511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.171353, 1.354588, 4.155150>,  <2.778867, 1.421815, 4.394653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.171353, 1.354588, 4.155150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338539, 1.080902, 3.916100>,  <2.438851, 0.916691, 3.772669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338539, 1.080902, 3.916100>,  <2.171353, 1.354588, 4.155150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.338539, 1.080902, 3.916100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884413, -0.456826, -0.095522,
		-0.207653, 0.568473, -0.796065,
		0.417965, -0.684214, -0.597625,
		2.463928, 0.875638, 3.736812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.766785, 1.316607, 3.534846>,  <2.171353, 1.354588, 4.155150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.766785, 1.316607, 3.534846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.950676, 0.965469, 3.588570>,  <2.061011, 0.754787, 3.620804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.950676, 0.965469, 3.588570>,  <1.766785, 1.316607, 3.534846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.950676, 0.965469, 3.588570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867024, -0.476398, -0.145997,
		0.192148, -0.049331, -0.980125,
		0.459728, -0.877845, 0.134310,
		2.088594, 0.702116, 3.628863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.465950, 0.756971, 3.032325>,  <1.766785, 1.316607, 3.534846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.465950, 0.756971, 3.032325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.634720, 0.522400, 3.308899>,  <1.735982, 0.381657, 3.474843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.634720, 0.522400, 3.308899>,  <1.465950, 0.756971, 3.032325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.634720, 0.522400, 3.308899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788231, -0.614088, -0.039835,
		0.447962, -0.528203, -0.721340,
		0.421926, -0.586428, 0.691434,
		1.761297, 0.346472, 3.516329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.227495, 0.098235, 2.831776>,  <1.465950, 0.756971, 3.032325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.227495, 0.098235, 2.831776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.355408, 0.051605, 3.207893>,  <1.432155, 0.023627, 3.433563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.355408, 0.051605, 3.207893>,  <1.227495, 0.098235, 2.831776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.355408, 0.051605, 3.207893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736206, -0.655282, 0.169135,
		0.596440, -0.746335, -0.295370,
		0.319782, -0.116574, 0.940292,
		1.451342, 0.016633, 3.489981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.620890, 3.863604, 3.203605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.630470, 3.737747, 3.583168>,  <0.636218, 3.662233, 3.810906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.630470, 3.737747, 3.583168>,  <0.620890, 3.863604, 3.203605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.630470, 3.737747, 3.583168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349668, 0.891863, 0.286901,
		-0.936568, 0.324932, 0.131380,
		0.023949, -0.314642, 0.948908,
		0.637655, 3.643355, 3.867841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.287648, 4.345955, 3.701048>,  <0.620890, 3.863604, 3.203605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.287648, 4.345955, 3.701048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.591846, 4.124756, 3.837189>,  <0.774366, 3.992036, 3.918873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.591846, 4.124756, 3.837189>,  <0.287648, 4.345955, 3.701048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.591846, 4.124756, 3.837189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603223, 0.795668, -0.055079,
		-0.240348, 0.247196, 0.938684,
		0.760496, -0.552997, 0.340352,
		0.819995, 3.958857, 3.939294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595359, 4.675000, 4.223372>,  <0.287648, 4.345955, 3.701048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595359, 4.675000, 4.223372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869110, 4.429718, 4.065582>,  <1.033360, 4.282549, 3.970909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.869110, 4.429718, 4.065582>,  <0.595359, 4.675000, 4.223372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.869110, 4.429718, 4.065582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625318, 0.771855, -0.114967,
		0.374974, -0.167991, 0.911687,
		0.684377, -0.613204, -0.394473,
		1.074423, 4.245757, 3.947240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.126884, 4.826436, 4.655691>,  <0.595359, 4.675000, 4.223372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.126884, 4.826436, 4.655691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245312, 4.688599, 4.299355>,  <1.316368, 4.605896, 4.085553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245312, 4.688599, 4.299355>,  <1.126884, 4.826436, 4.655691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.245312, 4.688599, 4.299355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592393, 0.797862, -0.111747,
		0.749275, -0.494644, 0.440357,
		0.296069, -0.344593, -0.890842,
		1.334132, 4.585221, 4.032102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.799844, 4.816350, 4.736759>,  <1.126884, 4.826436, 4.655691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.799844, 4.816350, 4.736759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.727516, 4.832809, 4.343697>,  <1.684119, 4.842685, 4.107860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.727516, 4.832809, 4.343697>,  <1.799844, 4.816350, 4.736759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.727516, 4.832809, 4.343697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853478, 0.503074, -0.135983,
		0.488752, -0.863263, -0.126087,
		-0.180820, 0.041150, -0.982655,
		1.673270, 4.845154, 4.048900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.391878, 4.688941, 4.459753>,  <1.799844, 4.816350, 4.736759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.391878, 4.688941, 4.459753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201580, 4.874115, 4.160591>,  <2.087401, 4.985219, 3.981094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201580, 4.874115, 4.160591>,  <2.391878, 4.688941, 4.459753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.201580, 4.874115, 4.160591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867028, 0.389972, -0.310136,
		0.148088, -0.795999, -0.586904,
		-0.475744, 0.462934, -0.747903,
		2.058857, 5.012995, 3.936220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.790725, 4.620395, 3.851399>,  <2.391878, 4.688941, 4.459753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.790725, 4.620395, 3.851399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.560558, 4.942230, 3.792702>,  <2.422458, 5.135331, 3.757483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.560558, 4.942230, 3.792702>,  <2.790725, 4.620395, 3.851399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560558, 4.942230, 3.792702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813848, 0.545552, -0.200062,
		-0.080912, -0.234546, -0.968732,
		-0.575417, 0.804588, -0.146743,
		2.387933, 5.183607, 3.748679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.973528, 4.823140, 3.233726>,  <2.790725, 4.620395, 3.851399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.973528, 4.823140, 3.233726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826691, 5.147949, 3.415215>,  <2.738588, 5.342834, 3.524107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.826691, 5.147949, 3.415215>,  <2.973528, 4.823140, 3.233726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826691, 5.147949, 3.415215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868956, 0.473411, -0.144213,
		-0.331901, 0.341324, -0.879397,
		-0.367093, 0.812022, 0.453721,
		2.716563, 5.391556, 3.551331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
