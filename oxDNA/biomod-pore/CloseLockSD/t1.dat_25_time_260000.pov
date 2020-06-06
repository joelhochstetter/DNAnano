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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.164534, 14.965074, 15.558739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.153970, 14.888235, 15.166330>,  <4.147632, 14.842132, 14.930885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.153970, 14.888235, 15.166330>,  <4.164534, 14.965074, 15.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.153970, 14.888235, 15.166330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540734, 0.822652, -0.175642,
		0.840779, -0.535109, 0.082148,
		-0.026408, -0.192096, -0.981021,
		4.146048, 14.830606, 14.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.844083, 14.764489, 15.262341>,  <4.164534, 14.965074, 15.558739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.844083, 14.764489, 15.262341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627734, 14.948804, 14.980879>,  <4.497924, 15.059393, 14.812001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627734, 14.948804, 14.980879>,  <4.844083, 14.764489, 15.262341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.627734, 14.948804, 14.980879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796815, 0.548597, -0.253234,
		0.269336, -0.697651, -0.663883,
		-0.540873, 0.460787, -0.703656,
		4.465472, 15.087040, 14.769782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.198223, 15.227966, 14.796600>,  <4.844083, 14.764489, 15.262341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.198223, 15.227966, 14.796600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518181, 15.178669, 14.561661>,  <5.710156, 15.149091, 14.420697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.518181, 15.178669, 14.561661>,  <5.198223, 15.227966, 14.796600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.518181, 15.178669, 14.561661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487763, -0.436692, 0.755902,
		-0.349649, -0.891129, -0.289196,
		0.799896, -0.123242, -0.587349,
		5.758150, 15.141696, 14.385456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.481407, 14.650515, 14.955730>,  <5.198223, 15.227966, 14.796600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.481407, 14.650515, 14.955730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779016, 14.866585, 14.798433>,  <5.957582, 14.996227, 14.704055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.779016, 14.866585, 14.798433>,  <5.481407, 14.650515, 14.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779016, 14.866585, 14.798433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636872, -0.395374, 0.661871,
		0.202049, -0.742892, -0.638191,
		0.744023, 0.540176, -0.393243,
		6.002223, 15.028638, 14.680461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.073493, 14.240547, 14.675094>,  <5.481407, 14.650515, 14.955730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.073493, 14.240547, 14.675094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177726, 14.587882, 14.843896>,  <6.240265, 14.796283, 14.945177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.177726, 14.587882, 14.843896>,  <6.073493, 14.240547, 14.675094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.177726, 14.587882, 14.843896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589107, -0.489310, 0.643062,
		0.764887, 0.081037, -0.639047,
		0.260580, 0.868337, 0.422006,
		6.255900, 14.848383, 14.970498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.755001, 14.324086, 14.631593>,  <6.073493, 14.240547, 14.675094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.755001, 14.324086, 14.631593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.643805, 14.560090, 14.934805>,  <6.577087, 14.701693, 15.116733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.643805, 14.560090, 14.934805>,  <6.755001, 14.324086, 14.631593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.643805, 14.560090, 14.934805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761693, -0.345419, 0.548187,
		0.585274, 0.729777, -0.353383,
		-0.277990, 0.590009, 0.758031,
		6.560408, 14.737093, 15.162214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.452725, 14.633392, 14.923111>,  <6.755001, 14.324086, 14.631593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.452725, 14.633392, 14.923111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.177816, 14.670602, 15.211278>,  <7.012870, 14.692927, 15.384178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.177816, 14.670602, 15.211278>,  <7.452725, 14.633392, 14.923111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.177816, 14.670602, 15.211278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673504, -0.289922, 0.679954,
		0.272117, 0.952519, 0.136604,
		-0.687274, 0.093024, 0.720418,
		6.971634, 14.698509, 15.427403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.806132, 14.843132, 15.481339>,  <7.452725, 14.633392, 14.923111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.806132, 14.843132, 15.481339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462875, 14.743717, 15.661036>,  <7.256921, 14.684068, 15.768855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.462875, 14.743717, 15.661036>,  <7.806132, 14.843132, 15.481339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.462875, 14.743717, 15.661036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511821, -0.345270, 0.786656,
		-0.040402, 0.904996, 0.423497,
		-0.858141, -0.248538, 0.449246,
		7.205433, 14.669156, 15.795811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.809747, 15.092584, 16.156914>,  <7.806132, 14.843132, 15.481339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.809747, 15.092584, 16.156914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.527869, 14.809033, 16.168911>,  <7.358742, 14.638903, 16.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.527869, 14.809033, 16.168911>,  <7.809747, 15.092584, 16.156914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.527869, 14.809033, 16.168911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445088, -0.408753, 0.796754,
		-0.552541, 0.574817, 0.603559,
		-0.704694, -0.708877, 0.029991,
		7.316461, 14.596371, 16.177908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.605494, 14.967574, 16.916336>,  <7.809747, 15.092584, 16.156914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.605494, 14.967574, 16.916336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.503491, 14.632265, 16.723558>,  <7.442289, 14.431080, 16.607891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.503491, 14.632265, 16.723558>,  <7.605494, 14.967574, 16.916336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.503491, 14.632265, 16.723558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693897, -0.505765, 0.512551,
		-0.673408, -0.203716, 0.710648,
		-0.255006, -0.838273, -0.481944,
		7.426989, 14.380783, 16.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.480512, 14.401846, 17.405088>,  <7.605494, 14.967574, 16.916336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.480512, 14.401846, 17.405088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.569023, 14.219985, 17.059990>,  <7.622129, 14.110868, 16.852932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.569023, 14.219985, 17.059990>,  <7.480512, 14.401846, 17.405088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.569023, 14.219985, 17.059990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732194, -0.506894, 0.454917,
		-0.644149, -0.732359, 0.220729,
		0.221277, -0.454651, -0.862745,
		7.635406, 14.083590, 16.801167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.390862, 13.641085, 17.523016>,  <7.480512, 14.401846, 17.405088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.390862, 13.641085, 17.523016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642233, 13.707725, 17.219090>,  <7.793056, 13.747708, 17.036734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.642233, 13.707725, 17.219090>,  <7.390862, 13.641085, 17.523016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.642233, 13.707725, 17.219090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643172, -0.660674, 0.387091,
		-0.437502, -0.731952, -0.522339,
		0.628428, 0.166600, -0.759817,
		7.830761, 13.757705, 16.991144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.622694, 13.007693, 17.453533>,  <7.390862, 13.641085, 17.523016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.622694, 13.007693, 17.453533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878153, 13.241645, 17.253517>,  <8.031429, 13.382016, 17.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878153, 13.241645, 17.253517>,  <7.622694, 13.007693, 17.453533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.878153, 13.241645, 17.253517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767663, -0.529114, 0.361569,
		-0.053105, -0.614780, -0.786909,
		0.638650, 0.584880, -0.500042,
		8.069748, 13.417109, 17.103504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.006909, 12.565308, 16.951616>,  <7.622694, 13.007693, 17.453533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.006909, 12.565308, 16.951616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.254236, 12.874213, 17.009983>,  <8.402633, 13.059556, 17.045004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.254236, 12.874213, 17.009983>,  <8.006909, 12.565308, 16.951616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.254236, 12.874213, 17.009983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738414, -0.634413, 0.228615,
		0.269124, -0.033608, -0.962519,
		0.618318, 0.772263, 0.145919,
		8.439732, 13.105892, 17.053759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.648021, 12.361204, 16.637161>,  <8.006909, 12.565308, 16.951616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.648021, 12.361204, 16.637161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.742906, 12.680052, 16.859272>,  <8.799837, 12.871361, 16.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.742906, 12.680052, 16.859272>,  <8.648021, 12.361204, 16.637161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.742906, 12.680052, 16.859272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827336, -0.465349, 0.314589,
		0.509161, 0.384775, -0.769872,
		0.237213, 0.797119, 0.555275,
		8.814070, 12.919188, 17.025854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357961, 12.671635, 16.422148>,  <8.648021, 12.361204, 16.637161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357961, 12.671635, 16.422148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.279988, 12.747737, 16.807022>,  <9.233205, 12.793398, 17.037947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.279988, 12.747737, 16.807022>,  <9.357961, 12.671635, 16.422148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.279988, 12.747737, 16.807022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917934, -0.310220, 0.247307,
		0.345541, 0.931432, -0.114169,
		-0.194932, 0.190255, 0.962187,
		9.221509, 12.804813, 17.095678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.859138, 13.083059, 16.618843>,  <9.357961, 12.671635, 16.422148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.859138, 13.083059, 16.618843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730899, 12.939110, 16.969318>,  <9.653955, 12.852740, 17.179604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730899, 12.939110, 16.969318>,  <9.859138, 13.083059, 16.618843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730899, 12.939110, 16.969318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931811, -0.285966, 0.223497,
		0.170130, 0.888096, 0.427014,
		-0.320599, -0.359873, 0.876189,
		9.634719, 12.831148, 17.232176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409236, 13.228851, 17.239481>,  <9.859138, 13.083059, 16.618843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409236, 13.228851, 17.239481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.182633, 12.917450, 17.347557>,  <10.046672, 12.730609, 17.412403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.182633, 12.917450, 17.347557>,  <10.409236, 13.228851, 17.239481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.182633, 12.917450, 17.347557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787366, -0.414611, 0.456237,
		-0.243158, 0.471199, 0.847848,
		-0.566506, -0.778504, 0.270190,
		10.012682, 12.683899, 17.428614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626112, 13.085420, 17.849407>,  <10.409236, 13.228851, 17.239481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626112, 13.085420, 17.849407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.438255, 12.744097, 17.758806>,  <10.325541, 12.539303, 17.704445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.438255, 12.744097, 17.758806>,  <10.626112, 13.085420, 17.849407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.438255, 12.744097, 17.758806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818548, -0.516982, 0.250419,
		-0.330783, -0.067796, 0.941269,
		-0.469641, -0.853307, -0.226503,
		10.297363, 12.488105, 17.690855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.614778, 12.660188, 18.500168>,  <10.626112, 13.085420, 17.849407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.614778, 12.660188, 18.500168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550915, 12.394890, 18.207699>,  <10.512597, 12.235711, 18.032217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.550915, 12.394890, 18.207699>,  <10.614778, 12.660188, 18.500168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.550915, 12.394890, 18.207699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696086, -0.600834, 0.393017,
		-0.699981, -0.446212, 0.557603,
		-0.159658, -0.663244, -0.731175,
		10.503017, 12.195916, 17.988346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.458653, 11.989894, 18.810656>,  <10.614778, 12.660188, 18.500168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.458653, 11.989894, 18.810656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.592048, 11.940382, 18.436817>,  <10.672085, 11.910675, 18.212515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.592048, 11.940382, 18.436817>,  <10.458653, 11.989894, 18.810656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.592048, 11.940382, 18.436817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622173, -0.715908, 0.316823,
		-0.708300, -0.687135, -0.161732,
		0.333485, -0.123780, -0.934594,
		10.692094, 11.903248, 18.156439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.538024, 11.354373, 18.833492>,  <10.458653, 11.989894, 18.810656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.538024, 11.354373, 18.833492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758430, 11.462224, 18.517597>,  <10.890675, 11.526935, 18.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758430, 11.462224, 18.517597>,  <10.538024, 11.354373, 18.833492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758430, 11.462224, 18.517597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703544, -0.659043, 0.265872,
		-0.448783, -0.702113, -0.552839,
		0.551016, 0.269628, -0.789735,
		10.923736, 11.543112, 18.280676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708731, 10.752293, 18.487427>,  <10.538024, 11.354373, 18.833492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708731, 10.752293, 18.487427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.985068, 11.015388, 18.367353>,  <11.150871, 11.173246, 18.295309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.985068, 11.015388, 18.367353>,  <10.708731, 10.752293, 18.487427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.985068, 11.015388, 18.367353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720967, -0.657849, 0.217810,
		-0.054213, -0.366896, -0.928681,
		0.690845, 0.657740, -0.300184,
		11.192322, 11.212710, 18.277298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137293, 10.356105, 18.193691>,  <10.708731, 10.752293, 18.487427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137293, 10.356105, 18.193691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350257, 10.692605, 18.231297>,  <11.478035, 10.894505, 18.253859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350257, 10.692605, 18.231297>,  <11.137293, 10.356105, 18.193691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350257, 10.692605, 18.231297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816161, -0.539621, 0.206617,
		0.224547, -0.033276, -0.973895,
		0.532410, 0.841250, 0.094012,
		11.509980, 10.944980, 18.259501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.794382, 10.341947, 17.778925>,  <11.137293, 10.356105, 18.193691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.794382, 10.341947, 17.778925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849781, 10.574986, 18.099274>,  <11.883020, 10.714810, 18.291483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849781, 10.574986, 18.099274>,  <11.794382, 10.341947, 17.778925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849781, 10.574986, 18.099274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816347, -0.524998, 0.240738,
		0.560710, 0.620448, -0.548314,
		0.138498, 0.582599, 0.800873,
		11.891331, 10.749766, 18.339535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.508498, 10.518070, 17.822376>,  <11.794382, 10.341947, 17.778925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.508498, 10.518070, 17.822376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.343274, 10.564507, 18.183685>,  <12.244140, 10.592368, 18.400471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.343274, 10.564507, 18.183685>,  <12.508498, 10.518070, 17.822376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.343274, 10.564507, 18.183685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759076, -0.504117, 0.411910,
		0.503175, 0.855797, 0.120109,
		-0.413060, 0.116090, 0.903274,
		12.219356, 10.599334, 18.454668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.831752, 11.010731, 18.368584>,  <12.508498, 10.518070, 17.822376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.831752, 11.010731, 18.368584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666873, 10.683797, 18.529610>,  <12.567945, 10.487637, 18.626225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.666873, 10.683797, 18.529610>,  <12.831752, 11.010731, 18.368584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.666873, 10.683797, 18.529610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898314, -0.290839, 0.329310,
		-0.152075, 0.497370, 0.854106,
		-0.412196, -0.817335, 0.402565,
		12.543214, 10.438597, 18.650379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.660549, 10.854548, 18.538118>,  <12.831752, 11.010731, 18.368584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.660549, 10.854548, 18.538118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008409, 10.745802, 18.702946>,  <14.217124, 10.680553, 18.801842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008409, 10.745802, 18.702946>,  <13.660549, 10.854548, 18.538118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008409, 10.745802, 18.702946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457550, 0.757292, -0.466001,
		-0.185366, 0.593798, 0.782971,
		0.869648, -0.271867, 0.412068,
		14.269303, 10.664242, 18.826567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.958339, 11.512107, 18.641573>,  <13.660549, 10.854548, 18.538118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.958339, 11.512107, 18.641573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276884, 11.278230, 18.703465>,  <14.468011, 11.137903, 18.740599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.276884, 11.278230, 18.703465>,  <13.958339, 11.512107, 18.641573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.276884, 11.278230, 18.703465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602213, 0.742823, -0.292496,
		0.056085, 0.326112, 0.943666,
		0.796363, -0.584692, 0.154727,
		14.515793, 11.102822, 18.749884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718505, 12.181679, 18.754770>,  <13.958339, 11.512107, 18.641573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718505, 12.181679, 18.754770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376471, 12.281960, 18.936310>,  <13.171250, 12.342128, 19.045233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.376471, 12.281960, 18.936310>,  <13.718505, 12.181679, 18.754770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.376471, 12.281960, 18.936310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295651, -0.483318, 0.824011,
		0.425933, 0.838781, 0.339158,
		-0.855086, 0.250701, 0.453848,
		13.119945, 12.357170, 19.072464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.829108, 12.526411, 19.464823>,  <13.718505, 12.181679, 18.754770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.829108, 12.526411, 19.464823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505784, 12.295285, 19.419628>,  <13.311790, 12.156610, 19.392511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505784, 12.295285, 19.419628>,  <13.829108, 12.526411, 19.464823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505784, 12.295285, 19.419628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358625, -0.635405, 0.683848,
		-0.466930, 0.512241, 0.720823,
		-0.808310, -0.577814, -0.112987,
		13.263291, 12.121941, 19.385733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203180, 13.100521, 19.445631>,  <13.829108, 12.526411, 19.464823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203180, 13.100521, 19.445631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532601, 13.258654, 19.282917>,  <14.730254, 13.353534, 19.185289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.532601, 13.258654, 19.282917>,  <14.203180, 13.100521, 19.445631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532601, 13.258654, 19.282917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559079, 0.444506, -0.699889,
		-0.095871, 0.803820, 0.587096,
		0.823553, 0.395332, -0.406783,
		14.779667, 13.377254, 19.160881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262402, 13.929788, 19.577223>,  <14.203180, 13.100521, 19.445631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262402, 13.929788, 19.577223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.408554, 13.763207, 19.244221>,  <14.496245, 13.663260, 19.044418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.408554, 13.763207, 19.244221>,  <14.262402, 13.929788, 19.577223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.408554, 13.763207, 19.244221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552839, 0.622449, -0.554009,
		0.748909, 0.662667, -0.002798,
		0.365381, -0.416449, -0.832506,
		14.518168, 13.638272, 18.994469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706017, 14.368629, 19.115917>,  <14.262402, 13.929788, 19.577223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706017, 14.368629, 19.115917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477202, 14.104777, 18.920916>,  <14.339913, 13.946465, 18.803915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477202, 14.104777, 18.920916>,  <14.706017, 14.368629, 19.115917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477202, 14.104777, 18.920916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615004, 0.738197, -0.277192,
		0.542717, 0.141252, -0.827953,
		-0.572038, -0.659631, -0.487503,
		14.305591, 13.906888, 18.774664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159007, 14.813334, 18.749067>,  <14.706017, 14.368629, 19.115917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159007, 14.813334, 18.749067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995239, 14.448668, 18.763182>,  <13.896978, 14.229869, 18.771650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995239, 14.448668, 18.763182>,  <14.159007, 14.813334, 18.749067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995239, 14.448668, 18.763182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758472, 0.318618, -0.568510,
		0.507047, -0.259523, -0.821920,
		-0.409419, -0.911664, 0.035287,
		13.872414, 14.175169, 18.773767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902323, 14.488155, 18.037241>,  <14.159007, 14.813334, 18.749067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902323, 14.488155, 18.037241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698195, 14.311736, 18.332552>,  <13.575718, 14.205885, 18.509739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.698195, 14.311736, 18.332552>,  <13.902323, 14.488155, 18.037241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.698195, 14.311736, 18.332552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858947, 0.219252, -0.462751,
		0.042225, -0.870292, -0.490723,
		-0.510320, -0.441045, 0.738277,
		13.545098, 14.179422, 18.554035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358923, 14.218287, 17.699438>,  <13.902323, 14.488155, 18.037241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358923, 14.218287, 17.699438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.241192, 14.201183, 18.081337>,  <13.170553, 14.190921, 18.310476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.241192, 14.201183, 18.081337>,  <13.358923, 14.218287, 17.699438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.241192, 14.201183, 18.081337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948224, 0.137816, -0.286144,
		-0.119344, -0.989535, -0.081108,
		-0.294327, -0.042759, 0.954748,
		13.152894, 14.188355, 18.367762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693500, 13.845895, 17.699245>,  <13.358923, 14.218287, 17.699438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693500, 13.845895, 17.699245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715784, 14.069216, 18.030352>,  <12.729155, 14.203208, 18.229015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715784, 14.069216, 18.030352>,  <12.693500, 13.845895, 17.699245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715784, 14.069216, 18.030352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838865, 0.475788, -0.264446,
		-0.541481, -0.679650, 0.494848,
		0.055712, 0.558303, 0.827764,
		12.732498, 14.236707, 18.278681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.055479, 13.813829, 17.882759>,  <12.693500, 13.845895, 17.699245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.055479, 13.813829, 17.882759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.213319, 14.122568, 18.082176>,  <12.308022, 14.307811, 18.201826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.213319, 14.122568, 18.082176>,  <12.055479, 13.813829, 17.882759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213319, 14.122568, 18.082176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777699, 0.569509, -0.266164,
		-0.489363, -0.282689, 0.824992,
		0.394599, 0.771846, 0.498543,
		12.331698, 14.354122, 18.231739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.595827, 14.122556, 18.492083>,  <12.055479, 13.813829, 17.882759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.595827, 14.122556, 18.492083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839467, 14.390938, 18.322937>,  <11.985651, 14.551968, 18.221449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839467, 14.390938, 18.322937>,  <11.595827, 14.122556, 18.492083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.839467, 14.390938, 18.322937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792339, 0.538059, -0.287561,
		0.034586, 0.510206, 0.859356,
		0.609100, 0.670956, -0.422865,
		12.022197, 14.592225, 18.196077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.165943, 14.627228, 18.601553>,  <11.595827, 14.122556, 18.492083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.165943, 14.627228, 18.601553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457880, 14.766521, 18.366243>,  <11.633042, 14.850096, 18.225058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457880, 14.766521, 18.366243>,  <11.165943, 14.627228, 18.601553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457880, 14.766521, 18.366243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626817, 0.684315, -0.372578,
		0.272821, 0.640663, 0.717719,
		0.729843, 0.348231, -0.588273,
		11.676833, 14.870990, 18.189762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.155659, 15.354838, 18.716227>,  <11.165943, 14.627228, 18.601553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.155659, 15.354838, 18.716227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.322179, 15.312810, 18.354973>,  <11.422091, 15.287593, 18.138220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.322179, 15.312810, 18.354973>,  <11.155659, 15.354838, 18.716227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.322179, 15.312810, 18.354973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672449, 0.632977, -0.383605,
		0.611970, 0.767008, 0.192853,
		0.416300, -0.105071, -0.903136,
		11.447069, 15.281289, 18.084032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228863, 16.103510, 18.535151>,  <11.155659, 15.354838, 18.716227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228863, 16.103510, 18.535151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260564, 15.847854, 18.229151>,  <11.279585, 15.694460, 18.045551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260564, 15.847854, 18.229151>,  <11.228863, 16.103510, 18.535151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260564, 15.847854, 18.229151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573176, 0.598651, -0.559540,
		0.815590, 0.482823, -0.318895,
		0.079253, -0.639139, -0.764997,
		11.284340, 15.656112, 17.999651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.136429, 16.567015, 17.945206>,  <11.228863, 16.103510, 18.535151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.136429, 16.567015, 17.945206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.079339, 16.191790, 17.818926>,  <11.045085, 15.966655, 17.743158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.079339, 16.191790, 17.818926>,  <11.136429, 16.567015, 17.945206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.079339, 16.191790, 17.818926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700190, 0.321133, -0.637658,
		0.699546, 0.130041, -0.702656,
		-0.142724, -0.938063, -0.315701,
		11.036522, 15.910371, 17.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.197223, 16.684441, 17.237991>,  <11.136429, 16.567015, 17.945206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.197223, 16.684441, 17.237991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009672, 16.337559, 17.305054>,  <10.897142, 16.129429, 17.345291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009672, 16.337559, 17.305054>,  <11.197223, 16.684441, 17.237991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.009672, 16.337559, 17.305054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685729, 0.237760, -0.687929,
		0.556715, -0.437519, -0.706148,
		-0.468876, -0.867207, 0.167655,
		10.869009, 16.077396, 17.355350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159069, 16.310688, 16.574120>,  <11.197223, 16.684441, 17.237991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159069, 16.310688, 16.574120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880595, 16.195246, 16.837036>,  <10.713511, 16.125980, 16.994787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880595, 16.195246, 16.837036>,  <11.159069, 16.310688, 16.574120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880595, 16.195246, 16.837036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698571, 0.061525, -0.712891,
		0.165308, -0.955468, -0.244447,
		-0.696184, -0.288610, 0.657291,
		10.671740, 16.108664, 17.034224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740026, 15.919602, 16.205341>,  <11.159069, 16.310688, 16.574120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740026, 15.919602, 16.205341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514072, 16.020851, 16.519497>,  <10.378501, 16.081600, 16.707991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514072, 16.020851, 16.519497>,  <10.740026, 15.919602, 16.205341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514072, 16.020851, 16.519497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779572, 0.148317, -0.608498,
		-0.270511, -0.955998, 0.113546,
		-0.564882, 0.253122, 0.785390,
		10.344607, 16.096786, 16.755114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204633, 15.520579, 16.089041>,  <10.740026, 15.919602, 16.205341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204633, 15.520579, 16.089041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069544, 15.774870, 16.366688>,  <9.988490, 15.927444, 16.533276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069544, 15.774870, 16.366688>,  <10.204633, 15.520579, 16.089041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.069544, 15.774870, 16.366688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909732, -0.031239, -0.414020,
		-0.241520, -0.771282, 0.588891,
		-0.337722, 0.635727, 0.694115,
		9.968227, 15.965588, 16.574923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471647, 15.259974, 16.346260>,  <10.204633, 15.520579, 16.089041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471647, 15.259974, 16.346260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512671, 15.651223, 16.418659>,  <9.537285, 15.885972, 16.462099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512671, 15.651223, 16.418659>,  <9.471647, 15.259974, 16.346260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.512671, 15.651223, 16.418659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919713, 0.162560, -0.357354,
		-0.378958, -0.129816, 0.916263,
		0.102558, 0.978122, 0.180997,
		9.543438, 15.944659, 16.472958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991174, 15.476308, 16.773840>,  <9.471647, 15.259974, 16.346260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991174, 15.476308, 16.773840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073289, 15.835063, 16.617149>,  <9.122558, 16.050316, 16.523136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073289, 15.835063, 16.617149>,  <8.991174, 15.476308, 16.773840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.073289, 15.835063, 16.617149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931937, 0.056894, -0.358129,
		-0.298915, 0.438583, 0.847522,
		0.205288, 0.896888, -0.391725,
		9.134875, 16.104130, 16.499632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.497296, 15.935724, 17.085361>,  <8.991174, 15.476308, 16.773840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.497296, 15.935724, 17.085361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.642412, 16.111046, 16.756418>,  <8.729482, 16.216240, 16.559052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.642412, 16.111046, 16.756418>,  <8.497296, 15.935724, 17.085361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.642412, 16.111046, 16.756418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931841, 0.177709, -0.316372,
		0.007473, 0.881084, 0.472901,
		0.362788, 0.438305, -0.822358,
		8.751248, 16.242537, 16.509710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.055247, 16.591341, 16.999371>,  <8.497296, 15.935724, 17.085361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.055247, 16.591341, 16.999371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.224325, 16.509878, 16.646133>,  <8.325772, 16.461000, 16.434191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.224325, 16.509878, 16.646133>,  <8.055247, 16.591341, 16.999371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.224325, 16.509878, 16.646133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773425, 0.426837, -0.468640,
		0.472379, 0.881098, 0.022908,
		0.422695, -0.203658, -0.883092,
		8.351133, 16.448780, 16.381207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949545, 17.129391, 16.692095>,  <8.055247, 16.591341, 16.999371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949545, 17.129391, 16.692095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036267, 16.867811, 16.402172>,  <8.088301, 16.710863, 16.228218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.036267, 16.867811, 16.402172>,  <7.949545, 17.129391, 16.692095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.036267, 16.867811, 16.402172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795317, 0.312229, -0.519600,
		0.566098, 0.689104, -0.452403,
		0.216805, -0.653948, -0.724808,
		8.101309, 16.671627, 16.184731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.912422, 17.485744, 15.991308>,  <7.949545, 17.129391, 16.692095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.912422, 17.485744, 15.991308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.875365, 17.097031, 15.904545>,  <7.853130, 16.863802, 15.852487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.875365, 17.097031, 15.904545>,  <7.912422, 17.485744, 15.991308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.875365, 17.097031, 15.904545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845797, 0.191756, -0.497851,
		0.525399, 0.137338, -0.839699,
		-0.092644, -0.971786, -0.216909,
		7.847572, 16.805494, 15.839472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.882847, 17.424200, 15.359474>,  <7.912422, 17.485744, 15.991308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.882847, 17.424200, 15.359474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.689650, 17.093876, 15.475924>,  <7.573732, 16.895681, 15.545794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.689650, 17.093876, 15.475924>,  <7.882847, 17.424200, 15.359474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.689650, 17.093876, 15.475924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796199, 0.275834, -0.538500,
		0.364398, -0.491884, -0.790736,
		-0.482992, -0.825812, 0.291125,
		7.544753, 16.846132, 15.563262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.507762, 17.293217, 14.802785>,  <7.882847, 17.424200, 15.359474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.507762, 17.293217, 14.802785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323420, 17.060061, 15.070472>,  <7.212814, 16.920168, 15.231084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323420, 17.060061, 15.070472>,  <7.507762, 17.293217, 14.802785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.323420, 17.060061, 15.070472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856005, 0.092927, -0.508547,
		0.234238, -0.807221, -0.541782,
		-0.460857, -0.582889, 0.669218,
		7.185163, 16.885195, 15.271237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.549668, 18.023945, 14.583564>,  <7.507762, 17.293217, 14.802785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.549668, 18.023945, 14.583564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.408230, 18.360596, 14.420279>,  <7.323367, 18.562586, 14.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.408230, 18.360596, 14.420279>,  <7.549668, 18.023945, 14.583564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.408230, 18.360596, 14.420279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863379, -0.125731, 0.488640,
		0.359926, 0.525223, 0.771099,
		-0.353596, 0.841625, -0.408213,
		7.302152, 18.613083, 14.297814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.339349, 18.468821, 15.190642>,  <7.549668, 18.023945, 14.583564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.339349, 18.468821, 15.190642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.151327, 18.525812, 14.842218>,  <7.038513, 18.560007, 14.633163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.151327, 18.525812, 14.842218>,  <7.339349, 18.468821, 15.190642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.151327, 18.525812, 14.842218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877605, 0.029785, 0.478459,
		0.094115, 0.989349, 0.111042,
		-0.470055, 0.142481, -0.871061,
		7.010310, 18.568556, 14.580900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.909478, 18.505985, 15.687298>,  <7.339349, 18.468821, 15.190642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.909478, 18.505985, 15.687298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864708, 18.607536, 15.303002>,  <7.837846, 18.668467, 15.072425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864708, 18.607536, 15.303002>,  <7.909478, 18.505985, 15.687298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864708, 18.607536, 15.303002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526995, 0.804493, 0.273985,
		0.842466, 0.536970, 0.043750,
		-0.111925, 0.253879, -0.960739,
		7.831131, 18.683701, 15.014781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.084311, 18.284184, 16.395128>,  <7.909478, 18.505985, 15.687298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.084311, 18.284184, 16.395128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.128778, 18.662075, 16.271757>,  <8.155458, 18.888809, 16.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.128778, 18.662075, 16.271757>,  <8.084311, 18.284184, 16.395128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.128778, 18.662075, 16.271757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341510, 0.255138, 0.904586,
		0.933281, -0.205893, -0.294271,
		0.111168, 0.944729, -0.308430,
		8.162128, 18.945494, 16.179228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.752767, 18.568752, 16.613644>,  <8.084311, 18.284184, 16.395128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.752767, 18.568752, 16.613644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.545768, 18.903265, 16.541168>,  <8.421569, 19.103973, 16.497683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.545768, 18.903265, 16.541168>,  <8.752767, 18.568752, 16.613644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.545768, 18.903265, 16.541168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404090, 0.425491, 0.809734,
		0.754260, 0.345817, -0.558124,
		-0.517497, 0.836282, -0.181189,
		8.390519, 19.154150, 16.486811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253865, 19.239496, 16.576874>,  <8.752767, 18.568752, 16.613644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253865, 19.239496, 16.576874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.872212, 19.307295, 16.675587>,  <8.643221, 19.347975, 16.734814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.872212, 19.307295, 16.675587>,  <9.253865, 19.239496, 16.576874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.872212, 19.307295, 16.675587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298575, 0.599307, 0.742755,
		-0.022003, 0.782369, -0.622426,
		-0.954132, 0.169498, 0.246783,
		8.585973, 19.358145, 16.749622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478447, 19.808411, 16.306696>,  <9.253865, 19.239496, 16.576874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478447, 19.808411, 16.306696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144578, 19.817728, 16.526798>,  <8.944257, 19.823318, 16.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.144578, 19.817728, 16.526798>,  <9.478447, 19.808411, 16.306696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.144578, 19.817728, 16.526798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368906, 0.765497, 0.527184,
		-0.408940, 0.643018, -0.647530,
		-0.834671, 0.023291, 0.550255,
		8.894176, 19.824715, 16.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.018952, 20.449781, 16.266319>,  <9.478447, 19.808411, 16.306696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.018952, 20.449781, 16.266319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003047, 20.267736, 16.622137>,  <8.993504, 20.158508, 16.835629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003047, 20.267736, 16.622137>,  <9.018952, 20.449781, 16.266319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.003047, 20.267736, 16.622137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298591, 0.844159, 0.445240,
		-0.953552, 0.283314, 0.102327,
		-0.039763, -0.455113, 0.889545,
		8.991118, 20.131203, 16.889000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.634722, 20.950064, 16.692232>,  <9.018952, 20.449781, 16.266319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.634722, 20.950064, 16.692232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820182, 20.698315, 16.941685>,  <8.931458, 20.547266, 17.091356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820182, 20.698315, 16.941685>,  <8.634722, 20.950064, 16.692232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.820182, 20.698315, 16.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432614, 0.775065, 0.460565,
		-0.773223, 0.056252, 0.631634,
		0.463650, -0.629373, 0.623634,
		8.959277, 20.509502, 17.128775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.515176, 21.176958, 17.388191>,  <8.634722, 20.950064, 16.692232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.515176, 21.176958, 17.388191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.850422, 20.962315, 17.427416>,  <9.051569, 20.833529, 17.450951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.850422, 20.962315, 17.427416>,  <8.515176, 21.176958, 17.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.850422, 20.962315, 17.427416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387948, 0.712722, 0.584400,
		-0.383485, -0.451751, 0.805519,
		0.838115, -0.536608, 0.098062,
		9.101856, 20.801332, 17.456835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.502744, 20.834328, 18.142529>,  <8.515176, 21.176958, 17.388191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.502744, 20.834328, 18.142529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.849336, 20.893711, 17.951878>,  <9.057291, 20.929340, 17.837486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.849336, 20.893711, 17.951878>,  <8.502744, 20.834328, 18.142529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.849336, 20.893711, 17.951878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266493, 0.669786, 0.693086,
		0.422133, -0.727562, 0.540793,
		0.866479, 0.148457, -0.476629,
		9.109280, 20.938248, 17.808889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.054916, 20.771759, 18.685085>,  <8.502744, 20.834328, 18.142529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.054916, 20.771759, 18.685085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.277884, 20.921755, 18.388798>,  <9.411664, 21.011753, 18.211025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.277884, 20.921755, 18.388798>,  <9.054916, 20.771759, 18.685085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.277884, 20.921755, 18.388798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493418, 0.567896, 0.658812,
		0.667700, -0.732719, 0.131529,
		0.557419, 0.374991, -0.740720,
		9.445109, 21.034252, 18.166582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786127, 20.755144, 18.899097>,  <9.054916, 20.771759, 18.685085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786127, 20.755144, 18.899097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744736, 21.046036, 18.627678>,  <9.719901, 21.220572, 18.464827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.744736, 21.046036, 18.627678>,  <9.786127, 20.755144, 18.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.744736, 21.046036, 18.627678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521534, 0.620578, 0.585564,
		0.846932, -0.293294, -0.443491,
		-0.103478, 0.727229, -0.678550,
		9.713693, 21.264204, 18.424112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.431857, 20.968533, 18.828087>,  <9.786127, 20.755144, 18.899097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.431857, 20.968533, 18.828087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.189298, 21.262085, 18.705645>,  <10.043762, 21.438217, 18.632179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.189298, 21.262085, 18.705645>,  <10.431857, 20.968533, 18.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.189298, 21.262085, 18.705645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470065, 0.641342, 0.606399,
		0.641342, 0.223830, -0.733881,
		-0.606399, 0.733881, -0.306105,
		10.007378, 21.482248, 18.613813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873572, 21.653994, 18.756065>,  <10.431857, 20.968533, 18.828087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873572, 21.653994, 18.756065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489504, 21.765711, 18.759268>,  <10.259063, 21.832741, 18.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.489504, 21.765711, 18.759268>,  <10.873572, 21.653994, 18.756065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.489504, 21.765711, 18.759268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197915, 0.659618, 0.725075,
		0.197228, 0.697781, -0.688624,
		-0.960172, 0.279294, 0.008007,
		10.201452, 21.849499, 18.761669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.896347, 22.349295, 18.646593>,  <10.873572, 21.653994, 18.756065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.896347, 22.349295, 18.646593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530214, 22.299374, 18.799742>,  <10.310534, 22.269421, 18.891630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530214, 22.299374, 18.799742>,  <10.896347, 22.349295, 18.646593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.530214, 22.299374, 18.799742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277895, 0.492334, 0.824852,
		-0.291445, 0.861412, -0.415967,
		-0.915333, -0.124803, 0.382871,
		10.255614, 22.261932, 18.914602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.782327, 22.989973, 18.859379>,  <10.896347, 22.349295, 18.646593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.782327, 22.989973, 18.859379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552732, 22.731110, 19.060068>,  <10.414974, 22.575792, 19.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552732, 22.731110, 19.060068>,  <10.782327, 22.989973, 18.859379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552732, 22.731110, 19.060068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164833, 0.508851, 0.844926,
		-0.802102, 0.567678, -0.185401,
		-0.573988, -0.647157, 0.501722,
		10.380535, 22.536963, 19.210585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290939, 23.380962, 19.297974>,  <10.782327, 22.989973, 18.859379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290939, 23.380962, 19.297974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312381, 23.010704, 19.447803>,  <10.325246, 22.788549, 19.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312381, 23.010704, 19.447803>,  <10.290939, 23.380962, 19.297974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312381, 23.010704, 19.447803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214878, 0.377017, 0.900936,
		-0.975169, 0.032193, 0.219111,
		0.053604, -0.925646, 0.374573,
		10.328462, 22.733009, 19.560175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.025895, 23.507063, 19.942879>,  <10.290939, 23.380962, 19.297974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.025895, 23.507063, 19.942879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224652, 23.162699, 19.986568>,  <10.343906, 22.956079, 20.012783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224652, 23.162699, 19.986568>,  <10.025895, 23.507063, 19.942879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224652, 23.162699, 19.986568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185566, 0.228357, 0.955729,
		-0.847740, -0.454626, 0.273225,
		0.496892, -0.860911, 0.109224,
		10.373720, 22.904425, 20.019335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.900093, 23.309784, 20.653347>,  <10.025895, 23.507063, 19.942879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.900093, 23.309784, 20.653347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224429, 23.113621, 20.525572>,  <10.419030, 22.995924, 20.448906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224429, 23.113621, 20.525572>,  <9.900093, 23.309784, 20.653347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224429, 23.113621, 20.525572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476893, 0.237204, 0.846349,
		-0.339283, -0.838591, 0.426206,
		0.810839, -0.490407, -0.319439,
		10.467681, 22.966499, 20.429741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.996594, 22.996651, 21.258268>,  <9.900093, 23.309784, 20.653347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.996594, 22.996651, 21.258268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333364, 22.993624, 21.042452>,  <10.535426, 22.991808, 20.912962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.333364, 22.993624, 21.042452>,  <9.996594, 22.996651, 21.258268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.333364, 22.993624, 21.042452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536412, 0.120158, 0.835359,
		0.058505, -0.992726, 0.105225,
		0.841926, -0.007571, -0.539540,
		10.585942, 22.991354, 20.880590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402255, 22.497755, 21.592503>,  <9.996594, 22.996651, 21.258268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402255, 22.497755, 21.592503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657025, 22.727564, 21.386881>,  <10.809887, 22.865450, 21.263508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.657025, 22.727564, 21.386881>,  <10.402255, 22.497755, 21.592503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657025, 22.727564, 21.386881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508556, 0.188019, 0.840250,
		0.579395, -0.796600, -0.172423,
		0.636924, 0.574523, -0.514053,
		10.848103, 22.899921, 21.232664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.985155, 22.218042, 21.691807>,  <10.402255, 22.497755, 21.592503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.985155, 22.218042, 21.691807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063055, 22.601665, 21.609560>,  <11.109796, 22.831841, 21.560213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063055, 22.601665, 21.609560>,  <10.985155, 22.218042, 21.691807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063055, 22.601665, 21.609560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433266, 0.103954, 0.895251,
		0.879973, -0.263437, -0.395283,
		0.194751, 0.959059, -0.205615,
		11.121480, 22.889383, 21.547876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660501, 22.365999, 21.997744>,  <10.985155, 22.218042, 21.691807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660501, 22.365999, 21.997744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.471433, 22.714380, 21.944040>,  <11.357992, 22.923409, 21.911818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.471433, 22.714380, 21.944040>,  <11.660501, 22.365999, 21.997744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.471433, 22.714380, 21.944040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293863, 0.299410, 0.907744,
		0.830800, 0.389609, -0.397462,
		-0.472669, 0.870953, -0.134258,
		11.329632, 22.975666, 21.903763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078885, 22.952486, 22.189362>,  <11.660501, 22.365999, 21.997744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078885, 22.952486, 22.189362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708211, 23.101089, 22.212105>,  <11.485806, 23.190252, 22.225750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708211, 23.101089, 22.212105>,  <12.078885, 22.952486, 22.189362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.708211, 23.101089, 22.212105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158780, 0.249874, 0.955171,
		0.340649, 0.894171, -0.290544,
		-0.926686, 0.371511, 0.056857,
		11.430205, 23.212543, 22.229162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159143, 23.518862, 22.679171>,  <12.078885, 22.952486, 22.189362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159143, 23.518862, 22.679171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762810, 23.464933, 22.682596>,  <11.525010, 23.432577, 22.684652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762810, 23.464933, 22.682596>,  <12.159143, 23.518862, 22.679171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762810, 23.464933, 22.682596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033876, 0.309344, 0.950347,
		-0.130775, 0.941345, -0.311076,
		-0.990833, -0.134820, 0.008565,
		11.465560, 23.424488, 22.685165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.866979, 24.103680, 23.042622>,  <12.159143, 23.518862, 22.679171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.866979, 24.103680, 23.042622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590281, 23.814829, 23.044529>,  <11.424261, 23.641520, 23.045673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.590281, 23.814829, 23.044529>,  <11.866979, 24.103680, 23.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590281, 23.814829, 23.044529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212684, 0.210041, 0.954279,
		-0.690111, 0.659104, -0.298880,
		-0.691746, -0.722125, 0.004770,
		11.382756, 23.598192, 23.045959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.223953, 24.437101, 23.316084>,  <11.866979, 24.103680, 23.042622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.223953, 24.437101, 23.316084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.165021, 24.044210, 23.362606>,  <11.129662, 23.808475, 23.390520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.165021, 24.044210, 23.362606>,  <11.223953, 24.437101, 23.316084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.165021, 24.044210, 23.362606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167006, 0.140604, 0.975879,
		-0.974886, 0.124354, -0.184752,
		-0.147331, -0.982225, 0.116305,
		11.120822, 23.749542, 23.397497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.555743, 24.407187, 23.734554>,  <11.223953, 24.437101, 23.316084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.555743, 24.407187, 23.734554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696545, 24.034903, 23.774302>,  <10.781026, 23.811533, 23.798151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.696545, 24.034903, 23.774302>,  <10.555743, 24.407187, 23.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.696545, 24.034903, 23.774302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023842, 0.097214, 0.994978,
		-0.935695, -0.352605, 0.012029,
		0.352004, -0.930709, 0.099369,
		10.802146, 23.755690, 23.804111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106374, 24.076471, 24.242060>,  <10.555743, 24.407187, 23.734554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106374, 24.076471, 24.242060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456205, 23.882826, 24.252975>,  <10.666104, 23.766640, 24.259525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.456205, 23.882826, 24.252975>,  <10.106374, 24.076471, 24.242060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.456205, 23.882826, 24.252975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067267, 0.176873, 0.981932,
		-0.480192, -0.856943, 0.187255,
		0.874580, -0.484113, 0.027289,
		10.718579, 23.737593, 24.261162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.099229, 23.749195, 24.891966>,  <10.106374, 24.076471, 24.242060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.099229, 23.749195, 24.891966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485923, 23.717583, 24.794661>,  <10.717939, 23.698614, 24.736279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485923, 23.717583, 24.794661>,  <10.099229, 23.749195, 24.891966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.485923, 23.717583, 24.794661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253605, 0.172462, 0.951810,
		-0.033272, -0.981840, 0.186769,
		0.966735, -0.079034, -0.243261,
		10.775944, 23.693872, 24.721682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426255, 23.238783, 25.431189>,  <10.099229, 23.749195, 24.891966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426255, 23.238783, 25.431189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687387, 23.504807, 25.286131>,  <10.844065, 23.664421, 25.199097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.687387, 23.504807, 25.286131>,  <10.426255, 23.238783, 25.431189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687387, 23.504807, 25.286131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237429, 0.274965, 0.931677,
		0.719335, -0.694327, 0.021600,
		0.652828, 0.665060, -0.362645,
		10.883235, 23.704325, 25.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077919, 23.206533, 25.934994>,  <10.426255, 23.238783, 25.431189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077919, 23.206533, 25.934994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132442, 23.545414, 25.729599>,  <11.165156, 23.748743, 25.606361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.132442, 23.545414, 25.729599>,  <11.077919, 23.206533, 25.934994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.132442, 23.545414, 25.729599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455851, 0.406555, 0.791778,
		0.879557, -0.342000, -0.330781,
		0.136307, 0.847201, -0.513489,
		11.173335, 23.799574, 25.575552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735908, 23.334175, 25.904366>,  <11.077919, 23.206533, 25.934994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735908, 23.334175, 25.904366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556346, 23.690321, 25.874069>,  <11.448609, 23.904009, 25.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.556346, 23.690321, 25.874069>,  <11.735908, 23.334175, 25.904366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.556346, 23.690321, 25.874069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668208, 0.390752, 0.633096,
		0.593282, 0.233588, -0.770359,
		-0.448903, 0.890365, -0.075741,
		11.421675, 23.957430, 25.851347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299070, 23.837238, 25.811516>,  <11.735908, 23.334175, 25.904366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299070, 23.837238, 25.811516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974912, 24.020998, 25.956957>,  <11.780416, 24.131254, 26.044222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974912, 24.020998, 25.956957>,  <12.299070, 23.837238, 25.811516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.974912, 24.020998, 25.956957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561060, 0.429804, 0.707446,
		0.168721, 0.777317, -0.606063,
		-0.810398, 0.459399, 0.363604,
		11.731792, 24.158817, 26.066038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.574279, 24.403500, 25.962078>,  <12.299070, 23.837238, 25.811516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.574279, 24.403500, 25.962078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231523, 24.408577, 26.168215>,  <12.025868, 24.411623, 26.291897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231523, 24.408577, 26.168215>,  <12.574279, 24.403500, 25.962078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231523, 24.408577, 26.168215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470196, 0.429049, 0.771254,
		-0.211317, 0.903192, -0.373616,
		-0.856891, 0.012694, 0.515342,
		11.974456, 24.412386, 26.322817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.496340, 25.121170, 26.203880>,  <12.574279, 24.403500, 25.962078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.496340, 25.121170, 26.203880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244365, 24.931318, 26.449776>,  <12.093180, 24.817408, 26.597313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244365, 24.931318, 26.449776>,  <12.496340, 25.121170, 26.203880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.244365, 24.931318, 26.449776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400867, 0.479240, 0.780791,
		-0.665195, 0.738278, -0.111628,
		-0.629938, -0.474630, 0.614740,
		12.055384, 24.788929, 26.634197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.353539, 25.604431, 26.734394>,  <12.496340, 25.121170, 26.203880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.353539, 25.604431, 26.734394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225948, 25.261879, 26.896809>,  <12.149394, 25.056347, 26.994257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225948, 25.261879, 26.896809>,  <12.353539, 25.604431, 26.734394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225948, 25.261879, 26.896809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281088, 0.323658, 0.903458,
		-0.905121, 0.402314, 0.137479,
		-0.318977, -0.856381, 0.406035,
		12.130255, 25.004965, 27.018620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.209981, 25.761091, 27.489935>,  <12.353539, 25.604431, 26.734394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.209981, 25.761091, 27.489935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289325, 25.370062, 27.461641>,  <12.336931, 25.135445, 27.444666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.289325, 25.370062, 27.461641>,  <12.209981, 25.761091, 27.489935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289325, 25.370062, 27.461641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637578, 0.073887, 0.766834,
		-0.744411, -0.197206, 0.637936,
		0.198359, -0.977574, -0.070732,
		12.348832, 25.076790, 27.440422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237938, 25.483274, 28.131029>,  <12.209981, 25.761091, 27.489935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237938, 25.483274, 28.131029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419325, 25.193275, 27.923666>,  <12.528157, 25.019276, 27.799248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419325, 25.193275, 27.923666>,  <12.237938, 25.483274, 28.131029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419325, 25.193275, 27.923666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702693, -0.066975, 0.708334,
		-0.548261, -0.685486, 0.479080,
		0.453467, -0.724999, -0.518406,
		12.555365, 24.975777, 27.768145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.491328, 25.117569, 28.642702>,  <12.237938, 25.483274, 28.131029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.491328, 25.117569, 28.642702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637326, 24.904709, 28.337128>,  <12.724925, 24.776993, 28.153784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637326, 24.904709, 28.337128>,  <12.491328, 25.117569, 28.642702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637326, 24.904709, 28.337128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738752, -0.333820, 0.585499,
		-0.566590, -0.778063, 0.271284,
		0.364995, -0.532149, -0.763934,
		12.746824, 24.745064, 28.107946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523458, 24.485540, 28.845032>,  <12.491328, 25.117569, 28.642702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523458, 24.485540, 28.845032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808947, 24.540943, 28.570393>,  <12.980240, 24.574184, 28.405609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.808947, 24.540943, 28.570393>,  <12.523458, 24.485540, 28.845032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808947, 24.540943, 28.570393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690245, -0.305640, 0.655855,
		-0.119010, -0.942019, -0.313747,
		0.713722, 0.138508, -0.686598,
		13.023063, 24.582495, 28.364412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969660, 23.847170, 28.773308>,  <12.523458, 24.485540, 28.845032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969660, 23.847170, 28.773308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187132, 24.168913, 28.677458>,  <13.317616, 24.361959, 28.619947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187132, 24.168913, 28.677458>,  <12.969660, 23.847170, 28.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187132, 24.168913, 28.677458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609913, -0.182515, 0.771164,
		0.576556, -0.565418, -0.589818,
		0.543681, 0.804357, -0.239625,
		13.350236, 24.410219, 28.605570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673890, 23.659018, 28.722452>,  <12.969660, 23.847170, 28.773308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673890, 23.659018, 28.722452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673838, 24.051966, 28.797235>,  <13.673806, 24.287735, 28.842106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673838, 24.051966, 28.797235>,  <13.673890, 23.659018, 28.722452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673838, 24.051966, 28.797235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747659, -0.124059, 0.652392,
		0.664083, 0.139865, -0.734460,
		-0.000130, 0.982368, 0.186957,
		13.673799, 24.346676, 28.853323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349129, 23.844009, 28.776386>,  <13.673890, 23.659018, 28.722452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349129, 23.844009, 28.776386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.181721, 24.164742, 28.946989>,  <14.081276, 24.357182, 29.049351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.181721, 24.164742, 28.946989>,  <14.349129, 23.844009, 28.776386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181721, 24.164742, 28.946989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726719, 0.014001, 0.686792,
		0.544720, 0.597386, -0.588566,
		-0.418521, 0.801831, 0.426506,
		14.056165, 24.405291, 29.074940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901630, 24.277729, 28.795923>,  <14.349129, 23.844009, 28.776386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.901630, 24.277729, 28.795923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625348, 24.379827, 29.066559>,  <14.459579, 24.441088, 29.228941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.625348, 24.379827, 29.066559>,  <14.901630, 24.277729, 28.795923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.625348, 24.379827, 29.066559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694509, -0.026495, 0.718996,
		0.201449, 0.966512, -0.158972,
		-0.690707, 0.255248, 0.676589,
		14.418136, 24.456402, 29.269535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214602, 24.511553, 29.354942>,  <14.901630, 24.277729, 28.795923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.214602, 24.511553, 29.354942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864917, 24.533556, 29.547911>,  <14.655106, 24.546757, 29.663691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864917, 24.533556, 29.547911>,  <15.214602, 24.511553, 29.354942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864917, 24.533556, 29.547911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481739, -0.025912, 0.875932,
		0.060682, 0.998150, -0.003846,
		-0.874211, 0.055006, 0.482420,
		14.602654, 24.550058, 29.692636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274889, 25.057613, 29.800575>,  <15.214602, 24.511553, 29.354942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274889, 25.057613, 29.800575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014495, 24.776852, 29.916195>,  <14.858258, 24.608395, 29.985567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.014495, 24.776852, 29.916195>,  <15.274889, 25.057613, 29.800575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014495, 24.776852, 29.916195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655364, -0.327544, 0.680598,
		-0.383038, 0.632492, 0.673228,
		-0.650984, -0.701904, 0.289051,
		14.819200, 24.566280, 30.002911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208896, 25.115969, 30.553486>,  <15.274889, 25.057613, 29.800575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208896, 25.115969, 30.553486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140291, 24.743498, 30.424807>,  <15.099129, 24.520016, 30.347599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140291, 24.743498, 30.424807>,  <15.208896, 25.115969, 30.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140291, 24.743498, 30.424807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651663, -0.352125, 0.671820,
		-0.738863, -0.094416, 0.667208,
		-0.171510, -0.931179, -0.321699,
		15.088839, 24.464144, 30.328297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731541, 25.766125, 30.486284>,  <15.208896, 25.115969, 30.553486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731541, 25.766125, 30.486284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003874, 25.634975, 30.748266>,  <16.167274, 25.556286, 30.905455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003874, 25.634975, 30.748266>,  <15.731541, 25.766125, 30.486284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003874, 25.634975, 30.748266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014865, 0.900213, 0.435196,
		-0.732287, -0.286561, 0.617769,
		0.680834, -0.327872, 0.654955,
		16.208124, 25.536613, 30.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579393, 25.858049, 31.216692>,  <15.731541, 25.766125, 30.486284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579393, 25.858049, 31.216692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976270, 25.855743, 31.166855>,  <16.214396, 25.854361, 31.136951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976270, 25.855743, 31.166855>,  <15.579393, 25.858049, 31.216692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976270, 25.855743, 31.166855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074038, 0.831125, 0.551135,
		0.100376, -0.556056, 0.825061,
		0.992191, -0.005765, -0.124595,
		16.273928, 25.854013, 31.129477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794147, 26.160585, 31.825863>,  <15.579393, 25.858049, 31.216692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794147, 26.160585, 31.825863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.115025, 26.189682, 31.588818>,  <16.307552, 26.207140, 31.446590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.115025, 26.189682, 31.588818>,  <15.794147, 26.160585, 31.825863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115025, 26.189682, 31.588818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155904, 0.932595, 0.325515,
		0.576348, -0.353517, 0.736783,
		0.802195, 0.072743, -0.592614,
		16.355682, 26.211504, 31.411034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788997, 25.718874, 32.514122>,  <15.794147, 26.160585, 31.825863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788997, 25.718874, 32.514122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105881, 25.509014, 32.638794>,  <16.296011, 25.383099, 32.713596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105881, 25.509014, 32.638794>,  <15.788997, 25.718874, 32.514122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105881, 25.509014, 32.638794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377383, -0.822566, -0.425403,
		0.479568, 0.219384, -0.849638,
		0.792210, -0.524648, 0.311684,
		16.343544, 25.351620, 32.732300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077749, 25.371571, 31.910522>,  <15.788997, 25.718874, 32.514122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077749, 25.371571, 31.910522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092796, 25.196480, 32.269852>,  <16.101824, 25.091425, 32.485447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.092796, 25.196480, 32.269852>,  <16.077749, 25.371571, 31.910522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092796, 25.196480, 32.269852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659790, -0.686031, -0.306656,
		0.750508, -0.581168, -0.314614,
		0.037616, -0.437726, 0.898321,
		16.104080, 25.065163, 32.539349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099249, 24.535273, 31.790174>,  <16.077749, 25.371571, 31.910522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099249, 24.535273, 31.790174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941311, 24.678108, 32.128780>,  <15.846548, 24.763809, 32.331944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941311, 24.678108, 32.128780>,  <16.099249, 24.535273, 31.790174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941311, 24.678108, 32.128780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863714, -0.458368, -0.209513,
		0.313200, -0.813871, 0.489408,
		-0.394845, 0.357089, 0.846513,
		15.822857, 24.785234, 32.382732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647582, 23.849184, 31.962116>,  <16.099249, 24.535273, 31.790174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647582, 23.849184, 31.962116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685927, 23.725756, 32.340660>,  <15.708935, 23.651699, 32.567787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685927, 23.725756, 32.340660>,  <15.647582, 23.849184, 31.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685927, 23.725756, 32.340660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084657, -0.949820, -0.301122,
		0.991788, -0.051250, -0.117175,
		0.095863, -0.308569, 0.946359,
		15.714686, 23.633184, 32.624569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201296, 23.325363, 31.896414>,  <15.647582, 23.849184, 31.962116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201296, 23.325363, 31.896414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905026, 23.290730, 32.162918>,  <15.727264, 23.269949, 32.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.905026, 23.290730, 32.162918>,  <16.201296, 23.325363, 31.896414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.905026, 23.290730, 32.162918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276568, -0.864454, -0.419797,
		0.612301, -0.495200, 0.616332,
		-0.740674, -0.086584, 0.666262,
		15.682824, 23.264755, 32.362797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032103, 22.649412, 31.975863>,  <16.201296, 23.325363, 31.896414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032103, 22.649412, 31.975863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701002, 22.801126, 32.141254>,  <15.502341, 22.892155, 32.240490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.701002, 22.801126, 32.141254>,  <16.032103, 22.649412, 31.975863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701002, 22.801126, 32.141254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560131, -0.601721, -0.569373,
		0.032844, -0.702903, 0.710527,
		-0.827753, 0.379287, 0.413481,
		15.452676, 22.914913, 32.265297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609977, 21.996767, 32.292919>,  <16.032103, 22.649412, 31.975863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609977, 21.996767, 32.292919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427406, 22.330441, 32.169106>,  <15.317864, 22.530645, 32.094818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427406, 22.330441, 32.169106>,  <15.609977, 21.996767, 32.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427406, 22.330441, 32.169106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603033, -0.545818, -0.581751,
		-0.654238, -0.078865, 0.752165,
		-0.456425, 0.834184, -0.309537,
		15.290479, 22.580696, 32.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.901837, 22.045385, 32.555412>,  <15.609977, 21.996767, 32.292919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.901837, 22.045385, 32.555412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926165, 22.240915, 32.207310>,  <14.940761, 22.358232, 31.998447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926165, 22.240915, 32.207310>,  <14.901837, 22.045385, 32.555412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926165, 22.240915, 32.207310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650968, -0.641516, -0.405830,
		-0.756665, 0.591193, 0.279193,
		0.060817, 0.488823, -0.870260,
		14.944409, 22.387562, 31.946232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303912, 22.279091, 32.440605>,  <14.901837, 22.045385, 32.555412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303912, 22.279091, 32.440605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495683, 22.220598, 32.094479>,  <14.610744, 22.185503, 31.886803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.495683, 22.220598, 32.094479>,  <14.303912, 22.279091, 32.440605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.495683, 22.220598, 32.094479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782841, -0.516895, -0.346381,
		-0.396625, 0.843467, -0.362288,
		0.479426, -0.146230, -0.865314,
		14.639510, 22.176729, 31.834885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816675, 22.209787, 32.037613>,  <14.303912, 22.279091, 32.440605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816675, 22.209787, 32.037613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110296, 22.057405, 31.812744>,  <14.286469, 21.965977, 31.677822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110296, 22.057405, 31.812744>,  <13.816675, 22.209787, 32.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110296, 22.057405, 31.812744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675695, -0.492419, -0.548598,
		-0.067834, 0.782557, -0.618871,
		0.734054, -0.380955, -0.562173,
		14.330512, 21.943119, 31.644093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636488, 22.313702, 31.282087>,  <13.816675, 22.209787, 32.037613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636488, 22.313702, 31.282087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902485, 22.015831, 31.304861>,  <14.062083, 21.837109, 31.318525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.902485, 22.015831, 31.304861>,  <13.636488, 22.313702, 31.282087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.902485, 22.015831, 31.304861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460758, -0.469059, -0.753449,
		0.587782, 0.474805, -0.655036,
		0.664992, -0.744677, 0.056934,
		14.101983, 21.792427, 31.321941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736375, 22.169390, 30.642233>,  <13.636488, 22.313702, 31.282087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736375, 22.169390, 30.642233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863778, 21.829779, 30.810854>,  <13.940220, 21.626013, 30.912027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863778, 21.829779, 30.810854>,  <13.736375, 22.169390, 30.642233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863778, 21.829779, 30.810854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559362, -0.527376, -0.639522,
		0.765288, -0.032108, -0.642886,
		0.318509, -0.849025, 0.421554,
		13.959331, 21.575071, 30.937321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114231, 21.733067, 30.103184>,  <13.736375, 22.169390, 30.642233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114231, 21.733067, 30.103184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007043, 21.464458, 30.379519>,  <13.942730, 21.303293, 30.545319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007043, 21.464458, 30.379519>,  <14.114231, 21.733067, 30.103184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007043, 21.464458, 30.379519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398883, -0.575384, -0.714020,
		0.876974, -0.466899, -0.113672,
		-0.267971, -0.671519, 0.690836,
		13.926652, 21.263002, 30.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317668, 21.146706, 29.782486>,  <14.114231, 21.733067, 30.103184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317668, 21.146706, 29.782486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045287, 21.034616, 30.053123>,  <13.881859, 20.967363, 30.215506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045287, 21.034616, 30.053123>,  <14.317668, 21.146706, 29.782486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045287, 21.034616, 30.053123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419041, -0.608600, -0.673803,
		0.600590, -0.742348, 0.297003,
		-0.680953, -0.280223, 0.676594,
		13.841002, 20.950550, 30.256102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.213077, 20.468004, 29.725388>,  <14.317668, 21.146706, 29.782486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.213077, 20.468004, 29.725388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878752, 20.603947, 29.897860>,  <13.678157, 20.685513, 30.001343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.878752, 20.603947, 29.897860>,  <14.213077, 20.468004, 29.725388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878752, 20.603947, 29.897860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547922, -0.565937, -0.616033,
		0.034659, -0.751141, 0.659232,
		-0.835811, 0.339856, 0.431181,
		13.628008, 20.705904, 30.027214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893406, 19.834074, 29.961811>,  <14.213077, 20.468004, 29.725388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893406, 19.834074, 29.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.609429, 20.115730, 29.967068>,  <13.439044, 20.284723, 29.970222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.609429, 20.115730, 29.967068>,  <13.893406, 19.834074, 29.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.609429, 20.115730, 29.967068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560557, -0.553681, -0.615803,
		-0.426333, -0.444552, 0.787790,
		-0.709941, 0.704138, 0.013144,
		13.396447, 20.326971, 29.971010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264416, 19.445414, 29.922077>,  <13.893406, 19.834074, 29.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.264416, 19.445414, 29.922077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.174653, 19.817064, 29.804525>,  <13.120795, 20.040054, 29.733994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.174653, 19.817064, 29.804525>,  <13.264416, 19.445414, 29.922077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.174653, 19.817064, 29.804525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518240, -0.369176, -0.771451,
		-0.825270, -0.020817, 0.564355,
		-0.224406, 0.929126, -0.293882,
		13.107331, 20.095802, 29.716360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624534, 19.372934, 29.835716>,  <13.264416, 19.445414, 29.922077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624534, 19.372934, 29.835716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722154, 19.706066, 29.636986>,  <12.780725, 19.905945, 29.517748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.722154, 19.706066, 29.636986>,  <12.624534, 19.372934, 29.835716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.722154, 19.706066, 29.636986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439292, -0.361796, -0.822269,
		-0.864559, 0.418926, 0.277559,
		0.244050, 0.832830, -0.496825,
		12.795368, 19.955915, 29.487938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.035736, 19.648384, 29.651949>,  <12.624534, 19.372934, 29.835716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.035736, 19.648384, 29.651949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319465, 19.787529, 29.406721>,  <12.489702, 19.871016, 29.259584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319465, 19.787529, 29.406721>,  <12.035736, 19.648384, 29.651949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.319465, 19.787529, 29.406721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472596, -0.410608, -0.779779,
		-0.522987, 0.842848, -0.126855,
		0.709323, 0.347863, -0.613069,
		12.532262, 19.891888, 29.222801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660509, 19.934048, 29.069654>,  <12.035736, 19.648384, 29.651949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660509, 19.934048, 29.069654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034610, 19.868158, 28.944324>,  <12.259070, 19.828625, 28.869127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.034610, 19.868158, 28.944324>,  <11.660509, 19.934048, 29.069654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034610, 19.868158, 28.944324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353324, -0.380279, -0.854722,
		0.021644, 0.910084, -0.413858,
		0.935251, -0.164725, -0.313323,
		12.315185, 19.818741, 28.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746548, 20.219376, 28.360222>,  <11.660509, 19.934048, 29.069654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746548, 20.219376, 28.360222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024498, 19.934280, 28.398485>,  <12.191268, 19.763224, 28.421444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024498, 19.934280, 28.398485>,  <11.746548, 20.219376, 28.360222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024498, 19.934280, 28.398485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313612, -0.420047, -0.851592,
		0.647145, 0.561750, -0.515404,
		0.694875, -0.712740, 0.095660,
		12.232961, 19.720459, 28.427183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.871115, 20.068941, 27.701084>,  <11.746548, 20.219376, 28.360222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.871115, 20.068941, 27.701084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055339, 19.755644, 27.868134>,  <12.165874, 19.567665, 27.968363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055339, 19.755644, 27.868134>,  <11.871115, 20.068941, 27.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.055339, 19.755644, 27.868134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135455, -0.527003, -0.838999,
		0.877231, 0.329841, -0.348812,
		0.460562, -0.783245, 0.417625,
		12.193507, 19.520670, 27.993422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370361, 19.814041, 27.127121>,  <11.871115, 20.068941, 27.701084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370361, 19.814041, 27.127121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262899, 19.528923, 27.386272>,  <12.198422, 19.357853, 27.541763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262899, 19.528923, 27.386272>,  <12.370361, 19.814041, 27.127121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262899, 19.528923, 27.386272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137940, -0.637203, -0.758251,
		0.953308, -0.293077, 0.072865,
		-0.268655, -0.712796, 0.647878,
		12.182302, 19.315084, 27.580635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.759142, 19.257521, 26.905817>,  <12.370361, 19.814041, 27.127121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.759142, 19.257521, 26.905817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445145, 19.109013, 27.104189>,  <12.256746, 19.019907, 27.223211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.445145, 19.109013, 27.104189>,  <12.759142, 19.257521, 26.905817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445145, 19.109013, 27.104189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238885, -0.557207, -0.795270,
		0.571595, -0.742750, 0.348713,
		-0.784992, -0.371270, 0.495929,
		12.209647, 18.997631, 27.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.671389, 18.701071, 26.584036>,  <12.759142, 19.257521, 26.905817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.671389, 18.701071, 26.584036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336507, 18.677919, 26.801563>,  <12.135577, 18.664028, 26.932079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.336507, 18.677919, 26.801563>,  <12.671389, 18.701071, 26.584036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336507, 18.677919, 26.801563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401973, -0.609117, -0.683663,
		0.370818, -0.790966, 0.486690,
		-0.837205, -0.057879, 0.543818,
		12.085345, 18.660555, 26.964708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.455639, 18.028681, 26.466417>,  <12.671389, 18.701071, 26.584036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.455639, 18.028681, 26.466417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.118460, 18.192762, 26.605656>,  <11.916152, 18.291212, 26.689199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.118460, 18.192762, 26.605656>,  <12.455639, 18.028681, 26.466417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.118460, 18.192762, 26.605656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535379, -0.575871, -0.617853,
		-0.052987, -0.707182, 0.705044,
		-0.842948, 0.410204, 0.348097,
		11.865575, 18.315823, 26.710085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.004757, 17.438547, 26.542700>,  <12.455639, 18.028681, 26.466417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.004757, 17.438547, 26.542700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763458, 17.757561, 26.540392>,  <11.618679, 17.948969, 26.539007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.763458, 17.757561, 26.540392>,  <12.004757, 17.438547, 26.542700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.763458, 17.757561, 26.540392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670209, -0.510836, -0.538392,
		-0.432331, -0.320919, 0.842675,
		-0.603249, 0.797532, -0.005767,
		11.582484, 17.996820, 26.538662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.352327, 17.175962, 26.584866>,  <12.004757, 17.438547, 26.542700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.352327, 17.175962, 26.584866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302458, 17.539547, 26.425747>,  <11.272536, 17.757698, 26.330275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302458, 17.539547, 26.425747>,  <11.352327, 17.175962, 26.584866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302458, 17.539547, 26.425747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549730, -0.397045, -0.734950,
		-0.825986, 0.127052, 0.549185,
		-0.124674, 0.908963, -0.397798,
		11.265056, 17.812235, 26.306408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.661308, 17.164007, 26.308077>,  <11.352327, 17.175962, 26.584866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.661308, 17.164007, 26.308077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800340, 17.494659, 26.131048>,  <10.883759, 17.693050, 26.024830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.800340, 17.494659, 26.131048>,  <10.661308, 17.164007, 26.308077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.800340, 17.494659, 26.131048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644279, -0.132380, -0.753246,
		-0.681244, 0.546953, 0.486568,
		0.347578, 0.826630, -0.442573,
		10.904613, 17.742649, 25.998276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.079872, 17.504114, 26.088097>,  <10.661308, 17.164007, 26.308077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.079872, 17.504114, 26.088097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378057, 17.651075, 25.865637>,  <10.556967, 17.739252, 25.732161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378057, 17.651075, 25.865637>,  <10.079872, 17.504114, 26.088097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.378057, 17.651075, 25.865637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535144, -0.167538, -0.827980,
		-0.397379, 0.914848, 0.071720,
		0.745460, 0.367402, -0.556152,
		10.601694, 17.761295, 25.698792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.734838, 17.775650, 25.596588>,  <10.079872, 17.504114, 26.088097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.734838, 17.775650, 25.596588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.099630, 17.761290, 25.433123>,  <10.318505, 17.752674, 25.335043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.099630, 17.761290, 25.433123>,  <9.734838, 17.775650, 25.596588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.099630, 17.761290, 25.433123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407960, 0.025405, -0.912646,
		0.043146, 0.999032, 0.008523,
		0.911980, -0.035900, -0.408661,
		10.373224, 17.750519, 25.310524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.903769, 18.412434, 25.088383>,  <9.734838, 17.775650, 25.596588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.903769, 18.412434, 25.088383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.156971, 18.123987, 24.975744>,  <10.308892, 17.950920, 24.908161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.156971, 18.123987, 24.975744>,  <9.903769, 18.412434, 25.088383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156971, 18.123987, 24.975744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311200, 0.096036, -0.945480,
		0.708842, 0.686128, -0.163620,
		0.633006, -0.721114, -0.281597,
		10.346873, 17.907652, 24.891266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.249350, 18.655514, 24.589539>,  <9.903769, 18.412434, 25.088383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.249350, 18.655514, 24.589539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.264379, 18.259352, 24.536350>,  <10.273396, 18.021654, 24.504436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.264379, 18.259352, 24.536350>,  <10.249350, 18.655514, 24.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.264379, 18.259352, 24.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444279, 0.102635, -0.889990,
		0.895100, 0.092515, -0.436161,
		0.037572, -0.990408, -0.132971,
		10.275650, 17.962229, 24.496458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.457913, 18.680281, 23.907286>,  <10.249350, 18.655514, 24.589539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.457913, 18.680281, 23.907286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336308, 18.311646, 24.003826>,  <10.263346, 18.090464, 24.061750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336308, 18.311646, 24.003826>,  <10.457913, 18.680281, 23.907286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.336308, 18.311646, 24.003826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604005, -0.009456, -0.796925,
		0.736718, -0.388054, -0.553769,
		-0.304013, -0.921588, 0.241352,
		10.245105, 18.035170, 24.076231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.602661, 18.204546, 23.332949>,  <10.457913, 18.680281, 23.907286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.602661, 18.204546, 23.332949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.301863, 18.032791, 23.532999>,  <10.121384, 17.929739, 23.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.301863, 18.032791, 23.532999>,  <10.602661, 18.204546, 23.332949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.301863, 18.032791, 23.532999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442705, -0.233148, -0.865826,
		0.488378, -0.872507, -0.014765,
		-0.751997, -0.429386, 0.500128,
		10.076263, 17.903975, 23.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.550039, 17.533487, 23.082026>,  <10.602661, 18.204546, 23.332949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.550039, 17.533487, 23.082026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192537, 17.666918, 23.201981>,  <9.978036, 17.746975, 23.273952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192537, 17.666918, 23.201981>,  <10.550039, 17.533487, 23.082026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192537, 17.666918, 23.201981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381203, -0.212491, -0.899740,
		-0.236411, -0.918462, 0.317076,
		-0.893753, 0.333579, 0.299885,
		9.924411, 17.766991, 23.291946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.131100, 17.113926, 22.773170>,  <10.550039, 17.533487, 23.082026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.131100, 17.113926, 22.773170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.869720, 17.391706, 22.893663>,  <9.712893, 17.558374, 22.965960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.869720, 17.391706, 22.893663>,  <10.131100, 17.113926, 22.773170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.869720, 17.391706, 22.893663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498058, -0.094761, -0.861951,
		-0.570037, -0.713273, 0.407798,
		-0.653449, 0.694451, 0.301234,
		9.673686, 17.600042, 22.984034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496024, 16.792788, 22.553888>,  <10.131100, 17.113926, 22.773170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496024, 16.792788, 22.553888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.431607, 17.180605, 22.627705>,  <9.392957, 17.413296, 22.671993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.431607, 17.180605, 22.627705>,  <9.496024, 16.792788, 22.553888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.431607, 17.180605, 22.627705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094196, 0.171026, -0.980753,
		-0.982442, -0.175326, 0.063785,
		-0.161043, 0.969541, 0.184539,
		9.383294, 17.471468, 22.683065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860295, 16.990955, 22.146227>,  <9.496024, 16.792788, 22.553888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860295, 16.990955, 22.146227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.048013, 17.340069, 22.199911>,  <9.160644, 17.549538, 22.232122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.048013, 17.340069, 22.199911>,  <8.860295, 16.990955, 22.146227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.048013, 17.340069, 22.199911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077850, 0.192289, -0.978246,
		-0.879604, 0.448636, 0.158186,
		0.469294, 0.872783, 0.134212,
		9.188801, 17.601904, 22.240175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.512177, 17.422335, 21.753532>,  <8.860295, 16.990955, 22.146227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.512177, 17.422335, 21.753532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854553, 17.621698, 21.808607>,  <9.059978, 17.741316, 21.841652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.854553, 17.621698, 21.808607>,  <8.512177, 17.422335, 21.753532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854553, 17.621698, 21.808607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018466, 0.236647, -0.971420,
		-0.516747, 0.834019, 0.193352,
		0.855939, 0.498408, 0.137688,
		9.111335, 17.771221, 21.849913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444370, 18.109985, 21.458822>,  <8.512177, 17.422335, 21.753532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444370, 18.109985, 21.458822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.839835, 18.050451, 21.466763>,  <9.077114, 18.014730, 21.471527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.839835, 18.050451, 21.466763>,  <8.444370, 18.109985, 21.458822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.839835, 18.050451, 21.466763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054225, 0.230634, -0.971529,
		0.140018, 0.961591, 0.236090,
		0.988663, -0.148834, 0.019849,
		9.136435, 18.005800, 21.472717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.669683, 18.575026, 21.004951>,  <8.444370, 18.109985, 21.458822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.669683, 18.575026, 21.004951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.973831, 18.315247, 21.001940>,  <9.156320, 18.159380, 21.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.973831, 18.315247, 21.001940>,  <8.669683, 18.575026, 21.004951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.973831, 18.315247, 21.001940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190355, 0.233920, -0.953439,
		0.620970, 0.723533, 0.301491,
		0.760369, -0.649447, -0.007529,
		9.201941, 18.120413, 20.999681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.340927, 18.951344, 20.851543>,  <8.669683, 18.575026, 21.004951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.340927, 18.951344, 20.851543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386280, 18.568466, 20.745014>,  <9.413492, 18.338739, 20.681097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386280, 18.568466, 20.745014>,  <9.340927, 18.951344, 20.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.386280, 18.568466, 20.745014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226590, 0.285898, -0.931085,
		0.967368, 0.045224, 0.249307,
		0.113384, -0.957192, -0.266322,
		9.420295, 18.281309, 20.665117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.895113, 19.014416, 20.422058>,  <9.340927, 18.951344, 20.851543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.895113, 19.014416, 20.422058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.737343, 18.653448, 20.352695>,  <9.642681, 18.436867, 20.311079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.737343, 18.653448, 20.352695>,  <9.895113, 19.014416, 20.422058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737343, 18.653448, 20.352695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132973, 0.130668, -0.982468,
		0.909256, -0.410569, 0.068458,
		-0.394425, -0.902418, -0.173405,
		9.619015, 18.382723, 20.300674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188051, 18.816612, 19.812424>,  <9.895113, 19.014416, 20.422058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188051, 18.816612, 19.812424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.898687, 18.543415, 19.852825>,  <9.725069, 18.379498, 19.877066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.898687, 18.543415, 19.852825>,  <10.188051, 18.816612, 19.812424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.898687, 18.543415, 19.852825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030622, -0.114409, -0.992962,
		0.689741, -0.721410, 0.061850,
		-0.723409, -0.682992, 0.101003,
		9.681664, 18.338518, 19.883125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.322599, 18.193190, 19.288786>,  <10.188051, 18.816612, 19.812424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.322599, 18.193190, 19.288786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932353, 18.192450, 19.376575>,  <9.698205, 18.192005, 19.429249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.932353, 18.192450, 19.376575>,  <10.322599, 18.193190, 19.288786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.932353, 18.192450, 19.376575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217923, -0.110768, -0.969660,
		0.026102, -0.993845, 0.107664,
		-0.975617, -0.001848, 0.219473,
		9.639668, 18.191895, 19.442417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.169289, 17.657795, 18.892593>,  <10.322599, 18.193190, 19.288786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.169289, 17.657795, 18.892593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825027, 17.847757, 18.966066>,  <9.618470, 17.961735, 19.010149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825027, 17.847757, 18.966066>,  <10.169289, 17.657795, 18.892593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825027, 17.847757, 18.966066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324823, -0.234261, -0.916303,
		-0.392130, -0.848283, 0.355878,
		-0.860653, 0.474908, 0.183681,
		9.566832, 17.990229, 19.021172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.896231, 17.434923, 18.787306>,  <10.169289, 17.657795, 18.892593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.896231, 17.434923, 18.787306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.995495, 17.047529, 18.778809>,  <11.055054, 16.815092, 18.773710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.995495, 17.047529, 18.778809>,  <10.896231, 17.434923, 18.787306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.995495, 17.047529, 18.778809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869735, 0.213094, 0.445142,
		-0.426587, -0.128942, 0.895208,
		0.248161, -0.968486, -0.021242,
		11.069943, 16.756983, 18.772436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.124360, 17.345348, 19.468540>,  <10.896231, 17.434923, 18.787306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.124360, 17.345348, 19.468540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.282634, 17.096359, 19.198441>,  <11.377598, 16.946966, 19.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.282634, 17.096359, 19.198441>,  <11.124360, 17.345348, 19.468540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.282634, 17.096359, 19.198441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918235, 0.254774, 0.303210,
		-0.016704, -0.740013, 0.672386,
		0.395685, -0.622472, -0.675249,
		11.401340, 16.909618, 18.995865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341002, 16.688002, 19.714695>,  <11.124360, 17.345348, 19.468540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341002, 16.688002, 19.714695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578259, 16.845943, 19.434046>,  <11.720612, 16.940708, 19.265656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578259, 16.845943, 19.434046>,  <11.341002, 16.688002, 19.714695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578259, 16.845943, 19.434046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691721, 0.195986, 0.695063,
		0.411956, -0.897597, -0.156881,
		0.593139, 0.394853, -0.701624,
		11.756201, 16.964399, 19.223558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946126, 16.338673, 19.661018>,  <11.341002, 16.688002, 19.714695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946126, 16.338673, 19.661018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016286, 16.715759, 19.547514>,  <12.058382, 16.942011, 19.479412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016286, 16.715759, 19.547514>,  <11.946126, 16.338673, 19.661018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016286, 16.715759, 19.547514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606677, 0.123500, 0.785297,
		0.775357, -0.309891, -0.550263,
		0.175399, 0.942717, -0.283760,
		12.068906, 16.998575, 19.462385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644199, 16.421404, 19.629032>,  <11.946126, 16.338673, 19.661018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644199, 16.421404, 19.629032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523298, 16.801893, 19.653751>,  <12.450758, 17.030186, 19.668583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.523298, 16.801893, 19.653751>,  <12.644199, 16.421404, 19.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.523298, 16.801893, 19.653751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643249, 0.155689, 0.749661,
		0.703473, 0.266339, -0.658930,
		-0.302253, 0.951222, 0.061799,
		12.432623, 17.087259, 19.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217727, 16.765636, 19.589537>,  <12.644199, 16.421404, 19.629032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217727, 16.765636, 19.589537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968900, 17.003613, 19.793137>,  <12.819604, 17.146399, 19.915297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.968900, 17.003613, 19.793137>,  <13.217727, 16.765636, 19.589537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.968900, 17.003613, 19.793137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737345, 0.226474, 0.636422,
		0.263357, 0.771205, -0.579557,
		-0.622066, 0.594939, 0.509000,
		12.782280, 17.182095, 19.945837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544149, 17.434881, 19.562759>,  <13.217727, 16.765636, 19.589537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544149, 17.434881, 19.562759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300892, 17.424109, 19.880108>,  <13.154938, 17.417645, 20.070517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300892, 17.424109, 19.880108>,  <13.544149, 17.434881, 19.562759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300892, 17.424109, 19.880108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788512, 0.094971, 0.607643,
		-0.091712, 0.995116, -0.036520,
		-0.608143, -0.026932, 0.793370,
		13.118449, 17.416029, 20.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.875781, 17.855145, 20.024857>,  <13.544149, 17.434881, 19.562759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.875781, 17.855145, 20.024857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600702, 17.673342, 20.251307>,  <13.435656, 17.564260, 20.387177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600702, 17.673342, 20.251307>,  <13.875781, 17.855145, 20.024857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600702, 17.673342, 20.251307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612077, 0.056387, 0.788786,
		-0.390431, 0.888956, 0.239417,
		-0.687696, -0.454508, 0.566125,
		13.394394, 17.536989, 20.421144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959973, 18.135931, 20.621050>,  <13.875781, 17.855145, 20.024857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959973, 18.135931, 20.621050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758446, 17.810421, 20.736937>,  <13.637529, 17.615114, 20.806469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758446, 17.810421, 20.736937>,  <13.959973, 18.135931, 20.621050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758446, 17.810421, 20.736937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592984, -0.081945, 0.801033,
		-0.628121, 0.575372, 0.523843,
		-0.503818, -0.813776, 0.289715,
		13.607300, 17.566288, 20.823851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804311, 18.238970, 21.254610>,  <13.959973, 18.135931, 20.621050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804311, 18.238970, 21.254610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837581, 17.843382, 21.205580>,  <13.857543, 17.606030, 21.176163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837581, 17.843382, 21.205580>,  <13.804311, 18.238970, 21.254610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837581, 17.843382, 21.205580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499749, -0.065021, 0.863726,
		-0.862167, -0.133097, 0.488828,
		0.083176, -0.988968, -0.122574,
		13.862534, 17.546692, 21.168808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727392, 18.027306, 21.916409>,  <13.804311, 18.238970, 21.254610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727392, 18.027306, 21.916409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.865928, 17.700575, 21.731869>,  <13.949049, 17.504536, 21.621145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.865928, 17.700575, 21.731869>,  <13.727392, 18.027306, 21.916409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865928, 17.700575, 21.731869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483072, -0.266284, 0.834106,
		-0.804171, -0.511749, 0.302361,
		0.346339, -0.816826, -0.461350,
		13.969830, 17.455526, 21.593464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646000, 17.497812, 22.385849>,  <13.727392, 18.027306, 21.916409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646000, 17.497812, 22.385849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943834, 17.390085, 22.141535>,  <14.122535, 17.325449, 21.994946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943834, 17.390085, 22.141535>,  <13.646000, 17.497812, 22.385849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943834, 17.390085, 22.141535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526560, -0.325409, 0.785394,
		-0.410277, -0.906408, -0.100482,
		0.744586, -0.269319, -0.610786,
		14.167211, 17.309290, 21.958300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765520, 16.751547, 22.268311>,  <13.646000, 17.497812, 22.385849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765520, 16.751547, 22.268311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113168, 16.948357, 22.248138>,  <14.321756, 17.066442, 22.236034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113168, 16.948357, 22.248138>,  <13.765520, 16.751547, 22.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113168, 16.948357, 22.248138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295356, -0.434508, 0.850863,
		0.396734, -0.754396, -0.522962,
		0.869118, 0.492027, -0.050431,
		14.373903, 17.095964, 22.233009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203616, 16.332134, 22.567577>,  <13.765520, 16.751547, 22.268311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203616, 16.332134, 22.567577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385224, 16.688189, 22.583202>,  <14.494189, 16.901821, 22.592577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.385224, 16.688189, 22.583202>,  <14.203616, 16.332134, 22.567577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.385224, 16.688189, 22.583202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202685, -0.145875, 0.968318,
		0.867632, -0.431718, -0.246647,
		0.454020, 0.890135, 0.039063,
		14.521430, 16.955229, 22.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809527, 16.157358, 22.885117>,  <14.203616, 16.332134, 22.567577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809527, 16.157358, 22.885117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722086, 16.544397, 22.935659>,  <14.669621, 16.776621, 22.965984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722086, 16.544397, 22.935659>,  <14.809527, 16.157358, 22.885117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722086, 16.544397, 22.935659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140241, -0.096992, 0.985355,
		0.965684, 0.233122, -0.114494,
		-0.218603, 0.967598, 0.126357,
		14.656505, 16.834677, 22.973566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277662, 16.483713, 23.355068>,  <14.809527, 16.157358, 22.885117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277662, 16.483713, 23.355068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962010, 16.724737, 23.402725>,  <14.772619, 16.869352, 23.431320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962010, 16.724737, 23.402725>,  <15.277662, 16.483713, 23.355068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.962010, 16.724737, 23.402725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180312, 0.041832, 0.982719,
		0.587164, 0.796976, -0.141660,
		-0.789130, 0.602560, 0.119142,
		14.725271, 16.905506, 23.438467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437905, 16.849825, 23.856066>,  <15.277662, 16.483713, 23.355068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437905, 16.849825, 23.856066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.049543, 16.944496, 23.841503>,  <14.816526, 17.001299, 23.832766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.049543, 16.944496, 23.841503>,  <15.437905, 16.849825, 23.856066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049543, 16.944496, 23.841503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006166, 0.176690, 0.984247,
		0.239383, 0.955387, -0.173009,
		-0.970905, 0.236679, -0.036406,
		14.758272, 17.015499, 23.830582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369137, 17.500679, 24.154800>,  <15.437905, 16.849825, 23.856066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.369137, 17.500679, 24.154800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996919, 17.354780, 24.167732>,  <14.773587, 17.267241, 24.175491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996919, 17.354780, 24.167732>,  <15.369137, 17.500679, 24.154800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996919, 17.354780, 24.167732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097387, 0.331634, 0.938368,
		-0.352987, 0.870046, -0.344122,
		-0.930546, -0.364745, 0.032332,
		14.717755, 17.245358, 24.177431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955693, 17.998997, 24.425995>,  <15.369137, 17.500679, 24.154800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955693, 17.998997, 24.425995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755135, 17.660965, 24.500227>,  <14.634800, 17.458145, 24.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.755135, 17.660965, 24.500227>,  <14.955693, 17.998997, 24.425995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755135, 17.660965, 24.500227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257079, 0.350314, 0.900661,
		-0.826143, 0.403879, -0.392898,
		-0.501396, -0.845081, 0.185580,
		14.604715, 17.407440, 24.555901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340528, 18.126616, 24.725281>,  <14.955693, 17.998997, 24.425995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340528, 18.126616, 24.725281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365775, 17.749315, 24.855694>,  <14.380924, 17.522936, 24.933941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.365775, 17.749315, 24.855694>,  <14.340528, 18.126616, 24.725281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.365775, 17.749315, 24.855694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255316, 0.300551, 0.918958,
		-0.964795, -0.141245, -0.221856,
		0.063120, -0.943249, 0.326032,
		14.384711, 17.466341, 24.953503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823460, 18.107122, 25.176931>,  <14.340528, 18.126616, 24.725281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823460, 18.107122, 25.176931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.067134, 17.809797, 25.287477>,  <14.213339, 17.631403, 25.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.067134, 17.809797, 25.287477>,  <13.823460, 18.107122, 25.176931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.067134, 17.809797, 25.287477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107890, 0.267573, 0.957478,
		-0.785654, -0.613100, 0.082806,
		0.609187, -0.743312, 0.276367,
		14.249890, 17.586803, 25.370388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552928, 17.960968, 25.902584>,  <13.823460, 18.107122, 25.176931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552928, 17.960968, 25.902584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.898685, 17.759922, 25.896832>,  <14.106138, 17.639296, 25.893381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.898685, 17.759922, 25.896832>,  <13.552928, 17.960968, 25.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898685, 17.759922, 25.896832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161475, 0.250395, 0.954583,
		-0.476186, -0.827455, 0.297599,
		0.864392, -0.502614, -0.014379,
		14.158002, 17.609138, 25.892517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505478, 17.596846, 26.511877>,  <13.552928, 17.960968, 25.902584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505478, 17.596846, 26.511877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.889387, 17.653671, 26.415001>,  <14.119733, 17.687767, 26.356876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.889387, 17.653671, 26.415001>,  <13.505478, 17.596846, 26.511877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889387, 17.653671, 26.415001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171059, 0.388163, 0.905576,
		0.222657, -0.910576, 0.348247,
		0.959772, 0.142062, -0.242189,
		14.177319, 17.696291, 26.342344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846132, 17.535282, 27.144268>,  <13.505478, 17.596846, 26.511877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846132, 17.535282, 27.144268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141260, 17.680626, 26.916727>,  <14.318337, 17.767832, 26.780203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141260, 17.680626, 26.916727>,  <13.846132, 17.535282, 27.144268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141260, 17.680626, 26.916727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320300, 0.553356, 0.768899,
		0.594167, -0.749510, 0.291890,
		0.737817, 0.363362, -0.568854,
		14.362606, 17.789633, 26.746071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372157, 17.469584, 27.555300>,  <13.846132, 17.535282, 27.144268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.372157, 17.469584, 27.555300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.464506, 17.744360, 27.279675>,  <14.519916, 17.909225, 27.114300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.464506, 17.744360, 27.279675>,  <14.372157, 17.469584, 27.555300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.464506, 17.744360, 27.279675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431040, 0.562702, 0.705388,
		0.872297, -0.459870, -0.166186,
		0.230874, 0.686940, -0.689065,
		14.533768, 17.950441, 27.072954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.104539, 17.577442, 27.543329>,  <14.372157, 17.469584, 27.555300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.104539, 17.577442, 27.543329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.897796, 17.903313, 27.438137>,  <14.773749, 18.098835, 27.375023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.897796, 17.903313, 27.438137>,  <15.104539, 17.577442, 27.543329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.897796, 17.903313, 27.438137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492983, 0.534393, 0.686580,
		0.699875, 0.225220, -0.677828,
		-0.516858, 0.814678, -0.262979,
		14.742739, 18.147717, 27.359243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531638, 18.140465, 27.380177>,  <15.104539, 17.577442, 27.543329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531638, 18.140465, 27.380177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.190106, 18.307976, 27.503855>,  <14.985188, 18.408482, 27.578062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.190106, 18.307976, 27.503855>,  <15.531638, 18.140465, 27.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190106, 18.307976, 27.503855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519477, 0.647303, 0.557802,
		0.033453, 0.636887, -0.770231,
		-0.853829, 0.418777, 0.309194,
		14.933958, 18.433609, 27.596613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684310, 18.878811, 27.487648>,  <15.531638, 18.140465, 27.380177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684310, 18.878811, 27.487648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344104, 18.809805, 27.686390>,  <15.139980, 18.768402, 27.805635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344104, 18.809805, 27.686390>,  <15.684310, 18.878811, 27.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344104, 18.809805, 27.686390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293258, 0.628655, 0.720273,
		-0.436607, 0.758309, -0.484089,
		-0.850514, -0.172513, 0.496855,
		15.088949, 18.758051, 27.835447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376968, 19.521187, 27.592651>,  <15.684310, 18.878811, 27.487648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.376968, 19.521187, 27.592651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221144, 19.280739, 27.871763>,  <15.127648, 19.136471, 28.039230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221144, 19.280739, 27.871763>,  <15.376968, 19.521187, 27.592651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221144, 19.280739, 27.871763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332036, 0.615019, 0.715195,
		-0.859065, 0.510301, -0.039995,
		-0.389562, -0.601120, 0.697780,
		15.104275, 19.100403, 28.081097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998261, 19.941450, 28.105734>,  <15.376968, 19.521187, 27.592651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998261, 19.941450, 28.105734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116629, 19.593292, 28.263136>,  <15.187649, 19.384398, 28.357578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116629, 19.593292, 28.263136>,  <14.998261, 19.941450, 28.105734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116629, 19.593292, 28.263136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469163, 0.491279, 0.733846,
		-0.832057, -0.032540, 0.553735,
		0.295918, -0.870394, 0.393506,
		15.205404, 19.332174, 28.381187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962360, 19.968836, 28.833450>,  <14.998261, 19.941450, 28.105734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962360, 19.968836, 28.833450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220243, 19.667572, 28.781136>,  <15.374973, 19.486814, 28.749746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.220243, 19.667572, 28.781136>,  <14.962360, 19.968836, 28.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220243, 19.667572, 28.781136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564563, 0.353773, 0.745730,
		-0.515384, -0.554615, 0.653285,
		0.644708, -0.753158, -0.130786,
		15.413656, 19.441626, 28.741899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124492, 19.630640, 29.490002>,  <14.962360, 19.968836, 28.833450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124492, 19.630640, 29.490002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426669, 19.587322, 29.231522>,  <15.607976, 19.561333, 29.076433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426669, 19.587322, 29.231522>,  <15.124492, 19.630640, 29.490002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426669, 19.587322, 29.231522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619299, 0.440054, 0.650247,
		0.213947, -0.891417, 0.399502,
		0.755444, -0.108292, -0.646202,
		15.653302, 19.554834, 29.037661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777512, 19.383932, 29.774366>,  <15.124492, 19.630640, 29.490002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777512, 19.383932, 29.774366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856180, 19.667482, 29.503422>,  <15.903381, 19.837612, 29.340855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.856180, 19.667482, 29.503422>,  <15.777512, 19.383932, 29.774366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856180, 19.667482, 29.503422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439393, 0.553873, 0.707219,
		0.876501, -0.436717, -0.202543,
		0.196672, 0.708874, -0.677361,
		15.915182, 19.880144, 29.300213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364670, 19.652094, 29.937361>,  <15.777512, 19.383932, 29.774366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.364670, 19.652094, 29.937361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221775, 19.953920, 29.717175>,  <16.136038, 20.135015, 29.585062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221775, 19.953920, 29.717175>,  <16.364670, 19.652094, 29.937361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221775, 19.953920, 29.717175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527942, 0.649303, 0.547432,
		0.770493, -0.095053, -0.630321,
		-0.357235, 0.754566, -0.550466,
		16.114605, 20.180290, 29.552034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797396, 19.951857, 29.459064>,  <16.364670, 19.652094, 29.937361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.797396, 19.951857, 29.459064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532215, 20.200937, 29.625313>,  <16.373106, 20.350386, 29.725061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.532215, 20.200937, 29.625313>,  <16.797396, 19.951857, 29.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532215, 20.200937, 29.625313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743976, 0.485939, 0.458654,
		0.083638, 0.613277, -0.785428,
		-0.662952, 0.622700, 0.415620,
		16.333330, 20.387747, 29.749998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974085, 20.695969, 29.366291>,  <16.797396, 19.951857, 29.459064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974085, 20.695969, 29.366291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732166, 20.690006, 29.684786>,  <16.587015, 20.686430, 29.875883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.732166, 20.690006, 29.684786>,  <16.974085, 20.695969, 29.366291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732166, 20.690006, 29.684786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708271, 0.447052, 0.546349,
		-0.364103, 0.894384, -0.259820,
		-0.604799, -0.014905, 0.796239,
		16.550726, 20.685535, 29.923658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672955, 21.375446, 29.583517>,  <16.974085, 20.695969, 29.366291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672955, 21.375446, 29.583517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.752485, 21.151285, 29.905117>,  <16.800203, 21.016788, 30.098078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.752485, 21.151285, 29.905117>,  <16.672955, 21.375446, 29.583517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752485, 21.151285, 29.905117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625965, 0.703851, 0.335801,
		-0.754080, 0.436510, 0.490736,
		0.198825, -0.560404, 0.804000,
		16.812132, 20.983164, 30.146317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923271, 21.590675, 30.330408>,  <16.672955, 21.375446, 29.583517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923271, 21.590675, 30.330408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607096, 21.625099, 30.087822>,  <16.417391, 21.645754, 29.942270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607096, 21.625099, 30.087822>,  <16.923271, 21.590675, 30.330408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607096, 21.625099, 30.087822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610170, 0.023549, -0.791921,
		-0.053873, -0.996011, -0.071126,
		-0.790437, 0.086062, -0.606467,
		16.369965, 21.650917, 29.905882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163164, 22.140684, 29.996918>,  <16.923271, 21.590675, 30.330408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163164, 22.140684, 29.996918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.474258, 22.365160, 29.883648>,  <17.660915, 22.499846, 29.815685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.474258, 22.365160, 29.883648>,  <17.163164, 22.140684, 29.996918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.474258, 22.365160, 29.883648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029061, -0.417911, -0.908023,
		-0.627917, 0.714433, -0.308716,
		0.777737, 0.561192, -0.283175,
		17.707581, 22.533518, 29.798695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913019, 22.678978, 29.463314>,  <17.163164, 22.140684, 29.996918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913019, 22.678978, 29.463314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306694, 22.653378, 29.397247>,  <17.542898, 22.638018, 29.357607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306694, 22.653378, 29.397247>,  <16.913019, 22.678978, 29.463314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306694, 22.653378, 29.397247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174340, -0.185079, -0.967135,
		0.031327, 0.980637, -0.193310,
		0.984187, -0.063999, -0.165167,
		17.601950, 22.634178, 29.347698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068150, 23.123087, 29.003136>,  <16.913019, 22.678978, 29.463314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068150, 23.123087, 29.003136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330734, 22.822643, 28.975170>,  <17.488285, 22.642376, 28.958391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330734, 22.822643, 28.975170>,  <17.068150, 23.123087, 29.003136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330734, 22.822643, 28.975170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210640, -0.093520, -0.973080,
		0.724352, 0.653519, -0.219607,
		0.656463, -0.751111, -0.069916,
		17.527674, 22.597309, 28.954195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344690, 23.282684, 28.432856>,  <17.068150, 23.123087, 29.003136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344690, 23.282684, 28.432856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470762, 22.908051, 28.494141>,  <17.546406, 22.683271, 28.530910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470762, 22.908051, 28.494141>,  <17.344690, 23.282684, 28.432856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.470762, 22.908051, 28.494141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123719, -0.200610, -0.971828,
		0.940933, 0.287347, -0.179101,
		0.315182, -0.936583, 0.153210,
		17.565317, 22.627075, 28.540104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757677, 23.186701, 27.897154>,  <17.344690, 23.282684, 28.432856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757677, 23.186701, 27.897154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.708361, 22.803101, 27.999228>,  <17.678770, 22.572941, 28.060472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.708361, 22.803101, 27.999228>,  <17.757677, 23.186701, 27.897154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.708361, 22.803101, 27.999228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047335, -0.251171, -0.966785,
		0.991241, -0.131277, -0.014426,
		-0.123293, -0.958999, 0.255185,
		17.671373, 22.515400, 28.075783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106213, 22.842958, 27.367992>,  <17.757677, 23.186701, 27.897154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106213, 22.842958, 27.367992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848415, 22.603834, 27.558676>,  <17.693737, 22.460360, 27.673086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848415, 22.603834, 27.558676>,  <18.106213, 22.842958, 27.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848415, 22.603834, 27.558676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364227, -0.308146, -0.878854,
		0.672285, -0.740045, -0.019142,
		-0.644493, -0.597813, 0.476706,
		17.655067, 22.424490, 27.701687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250803, 22.209211, 27.219227>,  <18.106213, 22.842958, 27.367992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250803, 22.209211, 27.219227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866602, 22.190983, 27.329031>,  <17.636082, 22.180046, 27.394913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.866602, 22.190983, 27.329031>,  <18.250803, 22.209211, 27.219227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.866602, 22.190983, 27.329031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232121, -0.412843, -0.880727,
		0.153466, -0.909661, 0.385959,
		-0.960504, -0.045572, 0.274508,
		17.578451, 22.177311, 27.411383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042042, 21.652039, 26.939402>,  <18.250803, 22.209211, 27.219227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042042, 21.652039, 26.939402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683203, 21.806322, 27.025604>,  <17.467899, 21.898893, 27.077326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.683203, 21.806322, 27.025604>,  <18.042042, 21.652039, 26.939402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683203, 21.806322, 27.025604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392390, -0.471313, -0.789870,
		-0.203090, -0.793153, 0.574162,
		-0.897098, 0.385710, 0.215507,
		17.414074, 21.922035, 27.090256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623352, 21.031500, 26.938551>,  <18.042042, 21.652039, 26.939402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623352, 21.031500, 26.938551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437920, 21.376549, 26.857584>,  <17.326660, 21.583578, 26.809004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437920, 21.376549, 26.857584>,  <17.623352, 21.031500, 26.938551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437920, 21.376549, 26.857584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403231, -0.408811, -0.818705,
		-0.788986, -0.297913, 0.537353,
		-0.463579, 0.862624, -0.202419,
		17.298845, 21.635336, 26.796858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012993, 20.750370, 26.772108>,  <17.623352, 21.031500, 26.938551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012993, 20.750370, 26.772108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030319, 21.126730, 26.637747>,  <17.040716, 21.352547, 26.557129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030319, 21.126730, 26.637747>,  <17.012993, 20.750370, 26.772108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030319, 21.126730, 26.637747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450144, -0.281777, -0.847332,
		-0.891904, 0.187910, 0.411335,
		0.043317, 0.940899, -0.335905,
		17.043314, 21.409000, 26.536976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253458, 21.063858, 26.718061>,  <17.012993, 20.750370, 26.772108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253458, 21.063858, 26.718061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.504471, 21.209358, 26.442705>,  <16.655079, 21.296659, 26.277491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.504471, 21.209358, 26.442705>,  <16.253458, 21.063858, 26.718061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504471, 21.209358, 26.442705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560207, -0.403076, -0.723669,
		-0.540712, 0.839770, -0.049167,
		0.627534, 0.363753, -0.688393,
		16.692732, 21.318483, 26.236187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892974, 20.870716, 26.077761>,  <16.253458, 21.063858, 26.718061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892974, 20.870716, 26.077761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236614, 21.036816, 25.958086>,  <16.442799, 21.136477, 25.886282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.236614, 21.036816, 25.958086>,  <15.892974, 20.870716, 26.077761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236614, 21.036816, 25.958086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163636, -0.331027, -0.929325,
		-0.484941, 0.847341, -0.216436,
		0.859101, 0.415251, -0.299184,
		16.494345, 21.161390, 25.868330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765852, 21.378496, 25.529209>,  <15.892974, 20.870716, 26.077761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765852, 21.378496, 25.529209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134285, 21.226128, 25.496948>,  <16.355345, 21.134706, 25.477592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134285, 21.226128, 25.496948>,  <15.765852, 21.378496, 25.529209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134285, 21.226128, 25.496948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218038, -0.332994, -0.917374,
		0.322592, 0.862562, -0.389770,
		0.921083, -0.380922, -0.080651,
		16.410610, 21.111851, 25.472754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033466, 21.525644, 24.875057>,  <15.765852, 21.378496, 25.529209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033466, 21.525644, 24.875057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242107, 21.199249, 24.974728>,  <16.367292, 21.003412, 25.034531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242107, 21.199249, 24.974728>,  <16.033466, 21.525644, 24.875057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242107, 21.199249, 24.974728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181263, -0.391373, -0.902203,
		0.833710, 0.425427, -0.352051,
		0.521605, -0.815990, 0.249177,
		16.398588, 20.954453, 25.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338310, 21.461834, 24.291439>,  <16.033466, 21.525644, 24.875057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338310, 21.461834, 24.291439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370872, 21.120287, 24.497072>,  <16.390409, 20.915358, 24.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370872, 21.120287, 24.497072>,  <16.338310, 21.461834, 24.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370872, 21.120287, 24.497072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188296, -0.519682, -0.833352,
		0.978733, -0.028959, -0.203086,
		0.081407, -0.853869, 0.514082,
		16.395294, 20.864126, 24.651297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839663, 20.985924, 23.996431>,  <16.338310, 21.461834, 24.291439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839663, 20.985924, 23.996431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.620796, 20.725248, 24.206541>,  <16.489477, 20.568844, 24.332607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.620796, 20.725248, 24.206541>,  <16.839663, 20.985924, 23.996431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620796, 20.725248, 24.206541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022019, -0.638538, -0.769275,
		0.836735, -0.409355, 0.363736,
		-0.547166, -0.651688, 0.525273,
		16.456646, 20.529741, 24.364122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191114, 20.424257, 23.874001>,  <16.839663, 20.985924, 23.996431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191114, 20.424257, 23.874001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819689, 20.335249, 23.992832>,  <16.596834, 20.281843, 24.064131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819689, 20.335249, 23.992832>,  <17.191114, 20.424257, 23.874001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819689, 20.335249, 23.992832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094893, -0.631454, -0.769585,
		0.358839, -0.742799, 0.565230,
		-0.928563, -0.222521, 0.297077,
		16.541121, 20.268492, 24.081955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103071, 19.723145, 23.719852>,  <17.191114, 20.424257, 23.874001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103071, 19.723145, 23.719852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723846, 19.839529, 23.771267>,  <16.496311, 19.909361, 23.802116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723846, 19.839529, 23.771267>,  <17.103071, 19.723145, 23.719852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723846, 19.839529, 23.771267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298963, -0.677053, -0.672474,
		-0.108637, -0.675974, 0.728874,
		-0.948060, 0.290962, 0.128539,
		16.439428, 19.926817, 23.809828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772400, 19.104000, 23.740799>,  <17.103071, 19.723145, 23.719852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772400, 19.104000, 23.740799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459009, 19.344833, 23.679274>,  <16.270975, 19.489334, 23.642359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459009, 19.344833, 23.679274>,  <16.772400, 19.104000, 23.740799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.459009, 19.344833, 23.679274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231903, -0.512917, -0.826521,
		-0.576529, -0.611890, 0.541484,
		-0.783477, 0.602085, -0.153813,
		16.223967, 19.525459, 23.633131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202436, 18.584198, 23.513008>,  <16.772400, 19.104000, 23.740799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202436, 18.584198, 23.513008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102394, 18.952183, 23.392265>,  <16.042368, 19.172974, 23.319820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102394, 18.952183, 23.392265>,  <16.202436, 18.584198, 23.513008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102394, 18.952183, 23.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571709, -0.391932, -0.720790,
		-0.781406, -0.007700, 0.623975,
		-0.250106, 0.919962, -0.301856,
		16.027363, 19.228172, 23.301708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496738, 18.480211, 23.257956>,  <16.202436, 18.584198, 23.513008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496738, 18.480211, 23.257956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653003, 18.814043, 23.102591>,  <15.746761, 19.014341, 23.009371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653003, 18.814043, 23.102591>,  <15.496738, 18.480211, 23.257956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653003, 18.814043, 23.102591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439534, -0.201623, -0.875305,
		-0.808822, 0.512668, 0.288058,
		0.390662, 0.834577, -0.388412,
		15.770202, 19.064417, 22.986067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828982, 18.841562, 22.979103>,  <15.496738, 18.480211, 23.257956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828982, 18.841562, 22.979103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183799, 18.956533, 22.834579>,  <15.396688, 19.025517, 22.747866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.183799, 18.956533, 22.834579>,  <14.828982, 18.841562, 22.979103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183799, 18.956533, 22.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311766, -0.204302, -0.927935,
		-0.340530, 0.935760, -0.091614,
		0.887041, 0.287428, -0.361309,
		15.449911, 19.042761, 22.726187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720687, 18.967728, 22.302324>,  <14.828982, 18.841562, 22.979103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720687, 18.967728, 22.302324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118891, 18.980089, 22.266535>,  <15.357813, 18.987507, 22.245060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118891, 18.980089, 22.266535>,  <14.720687, 18.967728, 22.302324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118891, 18.980089, 22.266535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066760, -0.440909, -0.895065,
		-0.067111, 0.897019, -0.436866,
		0.995509, 0.030904, -0.089475,
		15.417543, 18.989361, 22.239693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973613, 19.295074, 21.618710>,  <14.720687, 18.967728, 22.302324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973613, 19.295074, 21.618710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278768, 19.066050, 21.738827>,  <15.461861, 18.928635, 21.810898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278768, 19.066050, 21.738827>,  <14.973613, 19.295074, 21.618710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278768, 19.066050, 21.738827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010853, -0.453061, -0.891413,
		0.646441, 0.683307, -0.339420,
		0.762887, -0.572562, 0.300293,
		15.507634, 18.894281, 21.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.534559, 19.362965, 21.138758>,  <14.973613, 19.295074, 21.618710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.534559, 19.362965, 21.138758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597262, 19.005253, 21.306419>,  <15.634884, 18.790625, 21.407017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.597262, 19.005253, 21.306419>,  <15.534559, 19.362965, 21.138758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597262, 19.005253, 21.306419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280021, -0.366740, -0.887181,
		0.947109, 0.256444, 0.192928,
		0.156757, -0.894281, 0.419152,
		15.644290, 18.736969, 21.432165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085567, 19.192738, 20.900517>,  <15.534559, 19.362965, 21.138758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085567, 19.192738, 20.900517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974889, 18.827969, 21.021732>,  <15.908482, 18.609106, 21.094461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.974889, 18.827969, 21.021732>,  <16.085567, 19.192738, 20.900517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.974889, 18.827969, 21.021732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346629, -0.388837, -0.853613,
		0.896264, -0.131148, 0.423688,
		-0.276695, -0.911924, 0.303040,
		15.891880, 18.554392, 21.112644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650444, 18.797215, 20.764463>,  <16.085567, 19.192738, 20.900517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650444, 18.797215, 20.764463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350391, 18.533449, 20.784374>,  <16.170361, 18.375191, 20.796320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350391, 18.533449, 20.784374>,  <16.650444, 18.797215, 20.764463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350391, 18.533449, 20.784374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266869, -0.370732, -0.889572,
		0.605048, -0.654013, 0.454075,
		-0.750132, -0.659413, 0.049775,
		16.125351, 18.335625, 20.799307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946447, 18.192865, 20.622166>,  <16.650444, 18.797215, 20.764463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.946447, 18.192865, 20.622166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556879, 18.142471, 20.546692>,  <16.323137, 18.112234, 20.501408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556879, 18.142471, 20.546692>,  <16.946447, 18.192865, 20.622166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556879, 18.142471, 20.546692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225193, -0.435622, -0.871505,
		0.027604, -0.891269, 0.452634,
		-0.973923, -0.125987, -0.188683,
		16.264702, 18.104675, 20.490088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871769, 17.485397, 20.269159>,  <16.946447, 18.192865, 20.622166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871769, 17.485397, 20.269159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543701, 17.696260, 20.180231>,  <16.346861, 17.822779, 20.126873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.543701, 17.696260, 20.180231>,  <16.871769, 17.485397, 20.269159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543701, 17.696260, 20.180231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089809, -0.265148, -0.960016,
		-0.565027, -0.807343, 0.170123,
		-0.820170, 0.527156, -0.222323,
		16.297649, 17.854408, 20.113535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351128, 17.002920, 19.892206>,  <16.871769, 17.485397, 20.269159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351128, 17.002920, 19.892206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241495, 17.374472, 19.792559>,  <16.175716, 17.597403, 19.732771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241495, 17.374472, 19.792559>,  <16.351128, 17.002920, 19.892206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241495, 17.374472, 19.792559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115967, -0.225224, -0.967381,
		-0.954689, -0.294030, -0.045990,
		-0.274081, 0.928881, -0.249117,
		16.159271, 17.653135, 19.717823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776382, 16.937462, 19.427488>,  <16.351128, 17.002920, 19.892206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776382, 16.937462, 19.427488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926043, 17.305241, 19.379108>,  <16.015839, 17.525908, 19.350080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.926043, 17.305241, 19.379108>,  <15.776382, 16.937462, 19.427488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.926043, 17.305241, 19.379108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071378, -0.101485, -0.992273,
		-0.924617, 0.379892, 0.027658,
		0.374150, 0.919447, -0.120950,
		16.038288, 17.581074, 19.342823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358176, 17.303879, 18.864111>,  <15.776382, 16.937462, 19.427488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358176, 17.303879, 18.864111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713773, 17.485123, 18.890600>,  <15.927131, 17.593868, 18.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713773, 17.485123, 18.890600>,  <15.358176, 17.303879, 18.864111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713773, 17.485123, 18.890600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133682, -0.118481, -0.983916,
		-0.437976, 0.883546, -0.165902,
		0.888991, 0.453110, 0.066223,
		15.980471, 17.621056, 18.910467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346254, 17.724442, 18.301886>,  <15.358176, 17.303879, 18.864111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346254, 17.724442, 18.301886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.731846, 17.714434, 18.407806>,  <15.963201, 17.708429, 18.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.731846, 17.714434, 18.407806>,  <15.346254, 17.724442, 18.301886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731846, 17.714434, 18.407806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263486, -0.046270, -0.963553,
		0.036362, 0.998616, -0.038011,
		0.963978, -0.025021, 0.264803,
		16.021040, 17.706926, 18.487247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675698, 18.166052, 17.919582>,  <15.346254, 17.724442, 18.301886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675698, 18.166052, 17.919582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943709, 17.893036, 18.036341>,  <16.104517, 17.729227, 18.106396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.943709, 17.893036, 18.036341>,  <15.675698, 18.166052, 17.919582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943709, 17.893036, 18.036341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190819, -0.221645, -0.956275,
		0.717391, 0.696431, -0.018267,
		0.670028, -0.682537, 0.291898,
		16.144718, 17.688274, 18.123911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131332, 18.176813, 17.353281>,  <15.675698, 18.166052, 17.919582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131332, 18.176813, 17.353281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212107, 17.836830, 17.547928>,  <16.260572, 17.632841, 17.664715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.212107, 17.836830, 17.547928>,  <16.131332, 18.176813, 17.353281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212107, 17.836830, 17.547928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090506, -0.478531, -0.873394,
		0.975208, 0.220412, -0.019708,
		0.201937, -0.849957, 0.486616,
		16.272688, 17.581842, 17.693913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645638, 17.912930, 16.961763>,  <16.131332, 18.176813, 17.353281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645638, 17.912930, 16.961763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519524, 17.594515, 17.168421>,  <16.443855, 17.403465, 17.292416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519524, 17.594515, 17.168421>,  <16.645638, 17.912930, 16.961763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519524, 17.594515, 17.168421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205664, -0.588787, -0.781686,
		0.926444, -0.140198, 0.349351,
		-0.315284, -0.796037, 0.516645,
		16.424938, 17.355703, 17.323414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155268, 17.417484, 16.893513>,  <16.645638, 17.912930, 16.961763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155268, 17.417484, 16.893513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829454, 17.205809, 16.988588>,  <16.633966, 17.078802, 17.045633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829454, 17.205809, 16.988588>,  <17.155268, 17.417484, 16.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829454, 17.205809, 16.988588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192554, -0.633119, -0.749722,
		0.547231, -0.564904, 0.617594,
		-0.814531, -0.529191, 0.237687,
		16.585094, 17.047050, 17.059895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330204, 16.764107, 16.821030>,  <17.155268, 17.417484, 16.893513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330204, 16.764107, 16.821030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931276, 16.737333, 16.809227>,  <16.691919, 16.721270, 16.802145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.931276, 16.737333, 16.809227>,  <17.330204, 16.764107, 16.821030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931276, 16.737333, 16.809227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064144, -0.606332, -0.792620,
		0.035161, -0.792390, 0.609001,
		-0.997321, -0.066933, -0.029508,
		16.632080, 16.717253, 16.800375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256716, 16.098492, 16.507500>,  <17.330204, 16.764107, 16.821030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256716, 16.098492, 16.507500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906246, 16.284815, 16.457956>,  <16.695965, 16.396608, 16.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906246, 16.284815, 16.457956>,  <17.256716, 16.098492, 16.507500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906246, 16.284815, 16.457956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072396, -0.381243, -0.921636,
		-0.476526, -0.798547, 0.367758,
		-0.876174, 0.465807, -0.123861,
		16.643393, 16.424557, 16.420797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847111, 15.541368, 16.201309>,  <17.256716, 16.098492, 16.507500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847111, 15.541368, 16.201309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689442, 15.898414, 16.113792>,  <16.594839, 16.112640, 16.061281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689442, 15.898414, 16.113792>,  <16.847111, 15.541368, 16.201309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689442, 15.898414, 16.113792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097298, -0.277261, -0.955855,
		-0.913871, -0.355486, 0.196139,
		-0.394175, 0.892612, -0.218793,
		16.571190, 16.166197, 16.048155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120144, 15.524199, 15.867885>,  <16.847111, 15.541368, 16.201309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120144, 15.524199, 15.867885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388502, 15.796967, 15.751346>,  <16.549517, 15.960627, 15.681422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388502, 15.796967, 15.751346>,  <16.120144, 15.524199, 15.867885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388502, 15.796967, 15.751346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004223, -0.396397, -0.918070,
		-0.741538, 0.614700, -0.268822,
		0.670898, 0.681919, -0.291347,
		16.589771, 16.001543, 15.663941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828520, 14.888877, 15.659055>,  <16.120144, 15.524199, 15.867885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.828520, 14.888877, 15.659055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677896, 15.232385, 15.520077>,  <15.587521, 15.438489, 15.436690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.677896, 15.232385, 15.520077>,  <15.828520, 14.888877, 15.659055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677896, 15.232385, 15.520077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300531, 0.468011, 0.831052,
		0.876289, 0.208524, -0.434321,
		-0.376561, 0.858769, -0.347445,
		15.564927, 15.490015, 15.415843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368504, 14.530424, 15.321158>,  <15.828520, 14.888877, 15.659055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368504, 14.530424, 15.321158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726622, 14.355001, 15.352430>,  <16.941492, 14.249748, 15.371194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.726622, 14.355001, 15.352430>,  <16.368504, 14.530424, 15.321158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726622, 14.355001, 15.352430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437454, 0.898684, 0.031632,
		-0.084132, 0.005880, 0.996437,
		0.895297, -0.438557, 0.078180,
		16.995211, 14.223434, 15.375884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806894, 15.070240, 15.634648>,  <16.368504, 14.530424, 15.321158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806894, 15.070240, 15.634648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077791, 14.799257, 15.519827>,  <17.240330, 14.636668, 15.450934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077791, 14.799257, 15.519827>,  <16.806894, 15.070240, 15.634648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077791, 14.799257, 15.519827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696874, 0.715773, -0.045126,
		0.236035, -0.169478, 0.956851,
		0.677240, -0.677456, -0.287052,
		17.280964, 14.596021, 15.433711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349949, 14.988433, 16.144650>,  <16.806894, 15.070240, 15.634648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349949, 14.988433, 16.144650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504658, 14.923435, 15.781551>,  <17.597483, 14.884437, 15.563692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504658, 14.923435, 15.781551>,  <17.349949, 14.988433, 16.144650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504658, 14.923435, 15.781551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765580, 0.605339, 0.217835,
		0.514098, -0.779205, 0.358530,
		0.386770, -0.162495, -0.907747,
		17.620689, 14.874687, 15.509228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947206, 15.420697, 16.103086>,  <17.349949, 14.988433, 16.144650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947206, 15.420697, 16.103086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963781, 15.250932, 15.741279>,  <17.973726, 15.149073, 15.524194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.963781, 15.250932, 15.741279>,  <17.947206, 15.420697, 16.103086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.963781, 15.250932, 15.741279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944093, 0.312978, -0.103602,
		0.327065, -0.849658, 0.413655,
		0.041438, -0.424413, -0.904520,
		17.976213, 15.123608, 15.469923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484798, 14.809802, 16.035873>,  <17.947206, 15.420697, 16.103086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484798, 14.809802, 16.035873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430773, 15.033093, 15.708426>,  <18.398357, 15.167068, 15.511958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.430773, 15.033093, 15.708426>,  <18.484798, 14.809802, 16.035873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430773, 15.033093, 15.708426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942907, 0.326265, 0.066913,
		0.304440, -0.762844, -0.570425,
		-0.135066, 0.558229, -0.818619,
		18.390253, 15.200562, 15.462841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.175192, 14.769149, 15.738310>,  <18.484798, 14.809802, 16.035873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.175192, 14.769149, 15.738310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950506, 15.068731, 15.597716>,  <18.815695, 15.248481, 15.513360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.950506, 15.068731, 15.597716>,  <19.175192, 14.769149, 15.738310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950506, 15.068731, 15.597716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817799, 0.566948, -0.098867,
		0.125226, -0.342979, -0.930959,
		-0.561715, 0.748956, -0.351484,
		18.781992, 15.293418, 15.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581758, 14.143033, 16.160576>,  <19.175192, 14.769149, 15.738310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581758, 14.143033, 16.160576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601274, 13.816550, 15.930297>,  <19.612984, 13.620661, 15.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601274, 13.816550, 15.930297>,  <19.581758, 14.143033, 16.160576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.601274, 13.816550, 15.930297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303849, 0.536934, -0.787005,
		0.951470, 0.213323, -0.221806,
		0.048791, -0.816208, -0.575695,
		19.615911, 13.571688, 15.757588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893272, 14.348813, 15.601910>,  <19.581758, 14.143033, 16.160576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893272, 14.348813, 15.601910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724251, 14.008298, 15.477487>,  <19.622839, 13.803988, 15.402833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724251, 14.008298, 15.477487>,  <19.893272, 14.348813, 15.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724251, 14.008298, 15.477487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444874, 0.493826, -0.747143,
		0.789643, -0.177326, -0.587383,
		-0.422553, -0.851288, -0.311059,
		19.597485, 13.752912, 15.384169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164295, 14.232921, 14.932574>,  <19.893272, 14.348813, 15.601910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164295, 14.232921, 14.932574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807007, 14.058522, 14.976515>,  <19.592634, 13.953883, 15.002879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.807007, 14.058522, 14.976515>,  <20.164295, 14.232921, 14.932574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.807007, 14.058522, 14.976515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354208, 0.531859, -0.769196,
		0.276940, -0.725971, -0.629500,
		-0.893219, -0.435995, 0.109852,
		19.539042, 13.927723, 15.009470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004065, 14.149895, 14.297212>,  <20.164295, 14.232921, 14.932574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004065, 14.149895, 14.297212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658094, 14.125026, 14.496427>,  <19.450512, 14.110105, 14.615955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658094, 14.125026, 14.496427>,  <20.004065, 14.149895, 14.297212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658094, 14.125026, 14.496427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463745, 0.478506, -0.745635,
		-0.191957, -0.875880, -0.442703,
		-0.864924, -0.062172, 0.498038,
		19.398617, 14.106374, 14.645838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530811, 13.905998, 13.822106>,  <20.004065, 14.149895, 14.297212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530811, 13.905998, 13.822106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311075, 14.092099, 14.099745>,  <19.179234, 14.203759, 14.266328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311075, 14.092099, 14.099745>,  <19.530811, 13.905998, 13.822106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311075, 14.092099, 14.099745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455472, 0.529684, -0.715528,
		-0.700552, -0.709207, -0.079067,
		-0.549338, 0.465252, 0.694095,
		19.146275, 14.231675, 14.307974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842819, 13.838481, 13.580606>,  <19.530811, 13.905998, 13.822106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842819, 13.838481, 13.580606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827724, 14.140673, 13.842239>,  <18.818666, 14.321988, 13.999220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.827724, 14.140673, 13.842239>,  <18.842819, 13.838481, 13.580606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827724, 14.140673, 13.842239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593933, 0.509433, -0.622674,
		-0.803629, -0.411981, 0.429479,
		-0.037739, 0.755480, 0.654084,
		18.816402, 14.367316, 14.038465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020699, 14.086273, 13.646030>,  <18.842819, 13.838481, 13.580606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020699, 14.086273, 13.646030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251945, 14.384312, 13.779064>,  <18.390694, 14.563135, 13.858884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.251945, 14.384312, 13.779064>,  <18.020699, 14.086273, 13.646030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251945, 14.384312, 13.779064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401172, 0.614487, -0.679314,
		-0.710523, 0.259299, 0.654157,
		0.578116, 0.745098, 0.332584,
		18.425381, 14.607841, 13.878839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.575493, 14.643284, 13.810400>,  <18.020699, 14.086273, 13.646030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.575493, 14.643284, 13.810400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.933899, 14.814419, 13.762884>,  <18.148943, 14.917100, 13.734375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.933899, 14.814419, 13.762884>,  <17.575493, 14.643284, 13.810400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.933899, 14.814419, 13.762884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392291, 0.637444, -0.663154,
		-0.208001, 0.640797, 0.738996,
		0.896015, 0.427838, -0.118790,
		18.202703, 14.942770, 13.727247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344952, 15.249143, 13.791229>,  <17.575493, 14.643284, 13.810400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344952, 15.249143, 13.791229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719849, 15.245374, 13.651810>,  <17.944786, 15.243113, 13.568158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.719849, 15.245374, 13.651810>,  <17.344952, 15.249143, 13.791229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719849, 15.245374, 13.651810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266125, 0.626546, -0.732542,
		0.225284, 0.779328, 0.584718,
		0.937243, -0.009421, -0.348549,
		18.001022, 15.242547, 13.547245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511087, 15.955446, 13.719451>,  <17.344952, 15.249143, 13.791229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511087, 15.955446, 13.719451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770540, 15.756555, 13.488959>,  <17.926212, 15.637219, 13.350664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770540, 15.756555, 13.488959>,  <17.511087, 15.955446, 13.719451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770540, 15.756555, 13.488959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157131, 0.653304, -0.740610,
		0.744707, 0.570926, 0.345623,
		0.648631, -0.497229, -0.576230,
		17.965130, 15.607386, 13.316091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925621, 16.483078, 13.522535>,  <17.511087, 15.955446, 13.719451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925621, 16.483078, 13.522535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973616, 16.192602, 13.251759>,  <18.002413, 16.018316, 13.089293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973616, 16.192602, 13.251759>,  <17.925621, 16.483078, 13.522535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973616, 16.192602, 13.251759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215448, 0.646570, -0.731798,
		0.969115, 0.233653, -0.078875,
		0.119989, -0.726190, -0.676942,
		18.009613, 15.974745, 13.048676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239426, 16.820187, 12.927398>,  <17.925621, 16.483078, 13.522535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239426, 16.820187, 12.927398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074032, 16.484610, 12.785861>,  <17.974794, 16.283264, 12.700939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074032, 16.484610, 12.785861>,  <18.239426, 16.820187, 12.927398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074032, 16.484610, 12.785861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373479, 0.510698, -0.774404,
		0.830387, -0.188052, -0.524494,
		-0.413485, -0.838942, -0.353843,
		17.949986, 16.232927, 12.679708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428984, 16.758741, 12.175542>,  <18.239426, 16.820187, 12.927398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428984, 16.758741, 12.175542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.119431, 16.505461, 12.180577>,  <17.933699, 16.353493, 12.183599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.119431, 16.505461, 12.180577>,  <18.428984, 16.758741, 12.175542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119431, 16.505461, 12.180577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346999, 0.407298, -0.844808,
		0.529808, -0.658151, -0.534922,
		-0.773883, -0.633203, 0.012588,
		17.887266, 16.315500, 12.184354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311691, 16.663553, 11.566745>,  <18.428984, 16.758741, 12.175542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311691, 16.663553, 11.566745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970699, 16.526655, 11.724808>,  <17.766104, 16.444517, 11.819646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970699, 16.526655, 11.724808>,  <18.311691, 16.663553, 11.566745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970699, 16.526655, 11.724808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483485, 0.228709, -0.844947,
		0.198790, -0.911356, -0.360434,
		-0.852482, -0.342231, 0.395162,
		17.714956, 16.423983, 11.843355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960745, 16.273026, 11.023470>,  <18.311691, 16.663553, 11.566745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960745, 16.273026, 11.023470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678568, 16.380276, 11.285908>,  <17.509262, 16.444626, 11.443371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678568, 16.380276, 11.285908>,  <17.960745, 16.273026, 11.023470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678568, 16.380276, 11.285908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546501, 0.383673, -0.744400,
		-0.451319, -0.883687, -0.124128,
		-0.705442, 0.268126, 0.656096,
		17.466936, 16.460712, 11.482737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295403, 16.163313, 10.706507>,  <17.960745, 16.273026, 11.023470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295403, 16.163313, 10.706507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204960, 16.432745, 10.987979>,  <17.150694, 16.594404, 11.156862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.204960, 16.432745, 10.987979>,  <17.295403, 16.163313, 10.706507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204960, 16.432745, 10.987979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685767, 0.402973, -0.606084,
		-0.691809, -0.619601, 0.370803,
		-0.226106, 0.673579, 0.703682,
		17.137129, 16.634819, 11.199083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708975, 16.131235, 10.587925>,  <17.295403, 16.163313, 10.706507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708975, 16.131235, 10.587925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745991, 16.465347, 10.804717>,  <16.768200, 16.665815, 10.934793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745991, 16.465347, 10.804717>,  <16.708975, 16.131235, 10.587925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745991, 16.465347, 10.804717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742201, 0.420715, -0.521668,
		-0.663758, -0.353984, 0.658879,
		0.092538, 0.835281, 0.541979,
		16.773752, 16.715931, 10.967311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988850, 16.388088, 10.917871>,  <16.708975, 16.131235, 10.587925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988850, 16.388088, 10.917871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224020, 16.711170, 10.900177>,  <16.365122, 16.905020, 10.889561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224020, 16.711170, 10.900177>,  <15.988850, 16.388088, 10.917871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224020, 16.711170, 10.900177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742178, 0.516863, -0.426644,
		-0.321739, 0.283666, 0.903337,
		0.587926, 0.807705, -0.044236,
		16.400398, 16.953482, 10.886907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551370, 16.800875, 11.065945>,  <15.988850, 16.388088, 10.917871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551370, 16.800875, 11.065945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845168, 17.048353, 10.954427>,  <16.021448, 17.196840, 10.887516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.845168, 17.048353, 10.954427>,  <15.551370, 16.800875, 11.065945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845168, 17.048353, 10.954427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674782, 0.622281, -0.396782,
		-0.071999, 0.479562, 0.874549,
		0.734497, 0.618698, -0.278796,
		16.065517, 17.233963, 10.870788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478736, 17.465656, 11.443801>,  <15.551370, 16.800875, 11.065945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478736, 17.465656, 11.443801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660037, 17.541269, 11.095358>,  <15.768818, 17.586637, 10.886292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660037, 17.541269, 11.095358>,  <15.478736, 17.465656, 11.443801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660037, 17.541269, 11.095358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733739, 0.634033, -0.244190,
		0.506150, 0.749845, 0.426079,
		0.453253, 0.189034, -0.871107,
		15.796013, 17.597979, 10.834025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230762, 18.126560, 11.319892>,  <15.478736, 17.465656, 11.443801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230762, 18.126560, 11.319892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374295, 18.007841, 10.965909>,  <15.460415, 17.936609, 10.753519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374295, 18.007841, 10.965909>,  <15.230762, 18.126560, 11.319892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374295, 18.007841, 10.965909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673509, 0.574083, -0.465633,
		0.646239, 0.763111, 0.006103,
		0.358833, -0.296800, -0.884957,
		15.481945, 17.918800, 10.700422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752610, 18.597599, 11.649636>,  <15.230762, 18.126560, 11.319892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.752610, 18.597599, 11.649636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456244, 18.338833, 11.577474>,  <14.278425, 18.183573, 11.534176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456244, 18.338833, 11.577474>,  <14.752610, 18.597599, 11.649636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456244, 18.338833, 11.577474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662058, -0.748663, -0.034401,
		-0.112809, -0.144928, 0.982991,
		-0.740914, -0.646916, -0.180407,
		14.233971, 18.144758, 11.523352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374410, 18.908487, 11.930326>,  <14.752610, 18.597599, 11.649636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374410, 18.908487, 11.930326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365415, 19.155127, 11.615542>,  <15.360018, 19.303110, 11.426672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365415, 19.155127, 11.615542>,  <15.374410, 18.908487, 11.930326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365415, 19.155127, 11.615542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853081, 0.398609, 0.336694,
		0.521293, 0.678911, 0.517043,
		-0.022487, 0.616596, -0.786958,
		15.358668, 19.340105, 11.379455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094999, 18.839529, 11.790044>,  <15.374410, 18.908487, 11.930326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094999, 18.839529, 11.790044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191294, 18.571342, 12.070764>,  <16.249071, 18.410431, 12.239195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191294, 18.571342, 12.070764>,  <16.094999, 18.839529, 11.790044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191294, 18.571342, 12.070764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892273, 0.437430, 0.111823,
		-0.381961, 0.599275, 0.703544,
		0.240738, -0.670466, 0.701798,
		16.263515, 18.370203, 12.281303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.467121, 19.190477, 12.257772>,  <16.094999, 18.839529, 11.790044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.467121, 19.190477, 12.257772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582190, 18.824821, 12.372033>,  <16.651230, 18.605429, 12.440590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582190, 18.824821, 12.372033>,  <16.467121, 19.190477, 12.257772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582190, 18.824821, 12.372033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947009, 0.316005, 0.057576,
		-0.142900, 0.253952, 0.956602,
		0.287670, -0.914138, 0.285652,
		16.668491, 18.550579, 12.457728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053663, 19.322292, 12.293079>,  <16.467121, 19.190477, 12.257772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053663, 19.322292, 12.293079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.067678, 18.931549, 12.377478>,  <17.076088, 18.697104, 12.428117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.067678, 18.931549, 12.377478>,  <17.053663, 19.322292, 12.293079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067678, 18.931549, 12.377478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988294, 0.065235, 0.137908,
		-0.148481, 0.203693, 0.967710,
		0.035037, -0.976859, 0.210995,
		17.078190, 18.638491, 12.440776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446518, 19.212025, 12.938982>,  <17.053663, 19.322292, 12.293079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446518, 19.212025, 12.938982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475231, 18.882879, 12.713508>,  <17.492458, 18.685392, 12.578223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475231, 18.882879, 12.713508>,  <17.446518, 19.212025, 12.938982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475231, 18.882879, 12.713508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968164, -0.078392, 0.237727,
		-0.239805, -0.562805, 0.791040,
		0.071783, -0.822864, -0.563686,
		17.496765, 18.636021, 12.544402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074123, 18.945627, 13.164405>,  <17.446518, 19.212025, 12.938982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074123, 18.945627, 13.164405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966465, 18.747166, 12.834219>,  <17.901871, 18.628088, 12.636107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966465, 18.747166, 12.834219>,  <18.074123, 18.945627, 13.164405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966465, 18.747166, 12.834219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927720, -0.363735, -0.083859,
		-0.258643, -0.788371, 0.558189,
		-0.269145, -0.496153, -0.825465,
		17.885721, 18.598320, 12.586579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408434, 18.273048, 13.213002>,  <18.074123, 18.945627, 13.164405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408434, 18.273048, 13.213002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311199, 18.381378, 12.840429>,  <18.252859, 18.446375, 12.616886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311199, 18.381378, 12.840429>,  <18.408434, 18.273048, 13.213002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311199, 18.381378, 12.840429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953626, -0.108990, -0.280569,
		-0.177501, -0.956439, -0.231769,
		-0.243087, 0.270823, -0.931431,
		18.238274, 18.462626, 12.561000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701447, 18.843548, 13.644288>,  <18.408434, 18.273048, 13.213002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701447, 18.843548, 13.644288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.042532, 19.034143, 13.729930>,  <19.247183, 19.148500, 13.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.042532, 19.034143, 13.729930>,  <18.701447, 18.843548, 13.644288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.042532, 19.034143, 13.729930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251242, -0.733432, 0.631629,
		0.457996, -0.484805, -0.745120,
		0.852711, 0.476489, 0.214105,
		19.298346, 19.177090, 13.794162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466356, 18.497011, 13.516823>,  <18.701447, 18.843548, 13.644288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466356, 18.497011, 13.516823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467804, 18.729088, 13.842611>,  <19.468674, 18.868334, 14.038085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.467804, 18.729088, 13.842611>,  <19.466356, 18.497011, 13.516823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.467804, 18.729088, 13.842611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310096, -0.774979, 0.550680,
		0.950698, 0.250570, -0.182721,
		0.003621, 0.580192, 0.814472,
		19.468891, 18.903145, 14.086953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199631, 18.384247, 13.842914>,  <19.466356, 18.497011, 13.516823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199631, 18.384247, 13.842914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965736, 18.529362, 14.133146>,  <19.825399, 18.616430, 14.307286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965736, 18.529362, 14.133146>,  <20.199631, 18.384247, 13.842914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965736, 18.529362, 14.133146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325107, -0.714662, 0.619325,
		0.743229, 0.598034, 0.299944,
		-0.584736, 0.362786, 0.725583,
		19.790316, 18.638197, 14.350821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.644251, 18.467237, 14.401217>,  <20.199631, 18.384247, 13.842914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.644251, 18.467237, 14.401217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277826, 18.451605, 14.560869>,  <20.057972, 18.442225, 14.656661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.277826, 18.451605, 14.560869>,  <20.644251, 18.467237, 14.401217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277826, 18.451605, 14.560869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356646, -0.534536, 0.766208,
		0.183404, 0.844242, 0.503606,
		-0.916060, -0.039084, 0.399132,
		20.003008, 18.439880, 14.680609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827206, 18.391693, 15.044279>,  <20.644251, 18.467237, 14.401217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827206, 18.391693, 15.044279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440310, 18.293318, 15.069465>,  <20.208172, 18.234293, 15.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440310, 18.293318, 15.069465>,  <20.827206, 18.391693, 15.044279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.440310, 18.293318, 15.069465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211009, -0.640912, 0.738043,
		-0.141159, 0.727149, 0.671809,
		-0.967238, -0.245939, 0.062964,
		20.150139, 18.219536, 15.088354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554564, 18.437157, 15.707116>,  <20.827206, 18.391693, 15.044279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554564, 18.437157, 15.707116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.291279, 18.187582, 15.538613>,  <20.133308, 18.037836, 15.437511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.291279, 18.187582, 15.538613>,  <20.554564, 18.437157, 15.707116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.291279, 18.187582, 15.538613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101595, -0.628063, 0.771502,
		-0.745945, 0.465015, 0.476788,
		-0.658213, -0.623937, -0.421257,
		20.093815, 18.000401, 15.412236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071764, 18.296682, 16.237759>,  <20.554564, 18.437157, 15.707116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071764, 18.296682, 16.237759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.032829, 17.996588, 15.976172>,  <20.009468, 17.816530, 15.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.032829, 17.996588, 15.976172>,  <20.071764, 18.296682, 16.237759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032829, 17.996588, 15.976172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113337, -0.661165, 0.741630,
		-0.988777, -0.001932, 0.149384,
		-0.097335, -0.750238, -0.653964,
		20.003630, 17.771517, 15.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601919, 17.929495, 16.486395>,  <20.071764, 18.296682, 16.237759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601919, 17.929495, 16.486395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777567, 17.668423, 16.239433>,  <19.882956, 17.511780, 16.091257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777567, 17.668423, 16.239433>,  <19.601919, 17.929495, 16.486395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777567, 17.668423, 16.239433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139020, -0.629563, 0.764410,
		-0.887608, -0.421499, -0.185718,
		0.439119, -0.652678, -0.617402,
		19.909304, 17.472620, 16.054213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472618, 17.166800, 16.815630>,  <19.601919, 17.929495, 16.486395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472618, 17.166800, 16.815630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758812, 17.048698, 16.562361>,  <19.930529, 16.977839, 16.410398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758812, 17.048698, 16.562361>,  <19.472618, 17.166800, 16.815630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758812, 17.048698, 16.562361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198956, -0.782671, 0.589782,
		-0.669699, -0.547954, -0.501247,
		0.715485, -0.295250, -0.633173,
		19.973457, 16.960123, 16.372408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261480, 16.478720, 16.551716>,  <19.472618, 17.166800, 16.815630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.261480, 16.478720, 16.551716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656603, 16.508335, 16.496935>,  <19.893677, 16.526104, 16.464067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656603, 16.508335, 16.496935>,  <19.261480, 16.478720, 16.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656603, 16.508335, 16.496935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120069, -0.922256, 0.367461,
		-0.099098, -0.379424, -0.919900,
		0.987807, 0.074037, -0.136951,
		19.952946, 16.530546, 16.455851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373354, 15.912842, 16.148743>,  <19.261480, 16.478720, 16.551716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373354, 15.912842, 16.148743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.709467, 16.056028, 16.311609>,  <19.911135, 16.141939, 16.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.709467, 16.056028, 16.311609>,  <19.373354, 15.912842, 16.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709467, 16.056028, 16.311609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287007, -0.930868, 0.226077,
		0.459947, -0.073109, -0.884932,
		0.840283, 0.357965, 0.407167,
		19.961552, 16.163418, 16.433760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873030, 15.398830, 16.002363>,  <19.373354, 15.912842, 16.148743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873030, 15.398830, 16.002363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027153, 15.590969, 16.317528>,  <20.119627, 15.706252, 16.506626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027153, 15.590969, 16.317528>,  <19.873030, 15.398830, 16.002363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027153, 15.590969, 16.317528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145414, -0.874776, 0.462193,
		0.911259, -0.063513, -0.406907,
		0.385307, 0.480348, 0.787911,
		20.142746, 15.735073, 16.553902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495241, 15.001548, 16.200871>,  <19.873030, 15.398830, 16.002363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495241, 15.001548, 16.200871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427458, 15.229066, 16.522804>,  <20.386787, 15.365577, 16.715963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.427458, 15.229066, 16.522804>,  <20.495241, 15.001548, 16.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.427458, 15.229066, 16.522804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291700, -0.751106, 0.592242,
		0.941379, 0.335130, -0.038637,
		-0.169458, 0.568795, 0.804833,
		20.376621, 15.399704, 16.764254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.044794, 14.970112, 16.623802>,  <20.495241, 15.001548, 16.200871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.044794, 14.970112, 16.623802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758045, 15.071845, 16.883465>,  <20.585995, 15.132885, 17.039263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.758045, 15.071845, 16.883465>,  <21.044794, 14.970112, 16.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.758045, 15.071845, 16.883465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233493, -0.789744, 0.567262,
		0.656942, 0.558229, 0.506762,
		-0.716874, 0.254333, 0.649158,
		20.542982, 15.148145, 17.078213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379370, 15.035656, 17.281549>,  <21.044794, 14.970112, 16.623802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379370, 15.035656, 17.281549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.992985, 14.972830, 17.363766>,  <20.761154, 14.935134, 17.413095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.992985, 14.972830, 17.363766>,  <21.379370, 15.035656, 17.281549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992985, 14.972830, 17.363766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250045, -0.770535, 0.586304,
		0.066290, 0.617743, 0.783581,
		-0.965962, -0.157065, 0.205542,
		20.703196, 14.925711, 17.425428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.146030, 15.088789, 17.371561>,  <21.379370, 15.035656, 17.281549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.146030, 15.088789, 17.371561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278654, 15.163514, 17.741463>,  <22.358229, 15.208349, 17.963404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278654, 15.163514, 17.741463>,  <22.146030, 15.088789, 17.371561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.278654, 15.163514, 17.741463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853901, 0.476206, 0.209955,
		-0.401151, -0.859261, 0.317409,
		0.331558, 0.186812, 0.924755,
		22.378122, 15.219558, 18.018888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936722, 14.457229, 17.030424>,  <22.146030, 15.088789, 17.371561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936722, 14.457229, 17.030424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.209307, 14.322094, 16.770741>,  <22.372858, 14.241013, 16.614931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.209307, 14.322094, 16.770741>,  <21.936722, 14.457229, 17.030424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.209307, 14.322094, 16.770741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084279, -0.917402, 0.388935,
		-0.726982, -0.210330, -0.653650,
		0.681465, -0.337838, -0.649209,
		22.413746, 14.220743, 16.575977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.608156, 14.658654, 16.907167>,  <21.936722, 14.457229, 17.030424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.608156, 14.658654, 16.907167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686707, 14.318766, 16.711449>,  <22.733837, 14.114833, 16.594017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686707, 14.318766, 16.711449>,  <22.608156, 14.658654, 16.907167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686707, 14.318766, 16.711449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871402, 0.380025, -0.310224,
		0.449549, -0.365452, 0.815077,
		0.196377, -0.849721, -0.489296,
		22.745621, 14.063849, 16.564659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.245329, 14.417809, 17.103752>,  <22.608156, 14.658654, 16.907167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.245329, 14.417809, 17.103752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223310, 14.265004, 16.734745>,  <23.210098, 14.173322, 16.513340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.223310, 14.265004, 16.734745>,  <23.245329, 14.417809, 17.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.223310, 14.265004, 16.734745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971569, 0.192580, -0.137721,
		0.230269, -0.903870, 0.360549,
		-0.055048, -0.382011, -0.922517,
		23.206797, 14.150401, 16.457991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818916, 13.894444, 17.051352>,  <23.245329, 14.417809, 17.103752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818916, 13.894444, 17.051352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694519, 14.037221, 16.699017>,  <23.619881, 14.122888, 16.487616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694519, 14.037221, 16.699017>,  <23.818916, 13.894444, 17.051352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694519, 14.037221, 16.699017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932495, 0.293707, -0.210211,
		0.183675, -0.886751, -0.424189,
		-0.310992, 0.356944, -0.880838,
		23.601221, 14.144304, 16.434765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220839, 13.536732, 16.564316>,  <23.818916, 13.894444, 17.051352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220839, 13.536732, 16.564316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106907, 13.878714, 16.390915>,  <24.038548, 14.083902, 16.286875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.106907, 13.878714, 16.390915>,  <24.220839, 13.536732, 16.564316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.106907, 13.878714, 16.390915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945380, 0.175757, -0.274531,
		-0.158521, -0.488018, -0.858318,
		-0.284831, 0.854955, -0.433501,
		24.021458, 14.135201, 16.260864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403910, 13.515867, 15.739491>,  <24.220839, 13.536732, 16.564316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403910, 13.515867, 15.739491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375174, 13.867248, 15.928452>,  <24.357933, 14.078075, 16.041828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.375174, 13.867248, 15.928452>,  <24.403910, 13.515867, 15.739491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375174, 13.867248, 15.928452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961842, 0.186378, -0.200308,
		-0.264006, 0.439988, -0.858319,
		-0.071839, 0.878450, 0.472404,
		24.353622, 14.130782, 16.070173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689228, 14.028221, 15.291255>,  <24.403910, 13.515867, 15.739491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689228, 14.028221, 15.291255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732647, 14.178996, 15.659198>,  <24.758698, 14.269461, 15.879963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732647, 14.178996, 15.659198>,  <24.689228, 14.028221, 15.291255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732647, 14.178996, 15.659198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940135, 0.261782, -0.218212,
		-0.323055, 0.888475, -0.325956,
		0.108547, 0.376937, 0.919856,
		24.765211, 14.292077, 15.935155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872217, 14.853999, 15.378781>,  <24.689228, 14.028221, 15.291255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872217, 14.853999, 15.378781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.022158, 14.591360, 15.640580>,  <25.112122, 14.433777, 15.797659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.022158, 14.591360, 15.640580>,  <24.872217, 14.853999, 15.378781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.022158, 14.591360, 15.640580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926820, 0.248563, -0.281462,
		0.022124, 0.712108, 0.701722,
		0.374854, -0.656597, 0.654496,
		25.134613, 14.394381, 15.836929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571228, 14.759608, 15.406481>,  <24.872217, 14.853999, 15.378781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571228, 14.759608, 15.406481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842760, 14.715115, 15.696810>,  <26.005678, 14.688418, 15.871007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842760, 14.715115, 15.696810>,  <25.571228, 14.759608, 15.406481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842760, 14.715115, 15.696810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734253, 0.113553, -0.669311,
		-0.007968, 0.987285, 0.158758,
		0.678829, -0.111235, 0.725823,
		26.046410, 14.681745, 15.914557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184023, 15.194134, 15.312605>,  <25.571228, 14.759608, 15.406481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184023, 15.194134, 15.312605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419683, 15.040870, 15.028045>,  <26.561079, 14.948911, 14.857308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419683, 15.040870, 15.028045>,  <26.184023, 15.194134, 15.312605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419683, 15.040870, 15.028045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766300, 0.544203, 0.341508,
		0.256293, -0.746345, 0.614234,
		0.589151, -0.383161, -0.711399,
		26.596428, 14.925921, 14.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.882764, 25.064308, 22.895473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.523294, 25.099329, 23.067390>,  <14.307612, 25.120342, 23.170540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.523294, 25.099329, 23.067390>,  <14.882764, 25.064308, 22.895473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523294, 25.099329, 23.067390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437796, -0.119091, -0.891152,
		-0.026838, -0.989016, 0.145354,
		-0.898674, 0.087552, 0.429791,
		14.253693, 25.125595, 23.196327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510427, 24.486486, 22.785818>,  <14.882764, 25.064308, 22.895473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510427, 24.486486, 22.785818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.210156, 24.744057, 22.844936>,  <14.029994, 24.898598, 22.880407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.210156, 24.744057, 22.844936>,  <14.510427, 24.486486, 22.785818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210156, 24.744057, 22.844936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387622, -0.248116, -0.887800,
		-0.535006, -0.723740, 0.435854,
		-0.750678, 0.643925, 0.147794,
		13.984953, 24.937235, 22.889275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842051, 24.133276, 22.697199>,  <14.510427, 24.486486, 22.785818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842051, 24.133276, 22.697199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.779180, 24.524698, 22.643942>,  <13.741457, 24.759552, 22.611988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.779180, 24.524698, 22.643942>,  <13.842051, 24.133276, 22.697199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779180, 24.524698, 22.643942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441103, -0.190186, -0.877073,
		-0.883585, -0.079127, 0.461536,
		-0.157178, 0.978554, -0.133143,
		13.732026, 24.818264, 22.603998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166483, 24.112164, 22.404022>,  <13.842051, 24.133276, 22.697199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166483, 24.112164, 22.404022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.299225, 24.476238, 22.304880>,  <13.378870, 24.694683, 22.245396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.299225, 24.476238, 22.304880>,  <13.166483, 24.112164, 22.404022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299225, 24.476238, 22.304880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432190, -0.086848, -0.897591,
		-0.838501, 0.404991, 0.364553,
		0.331855, 0.910187, -0.247855,
		13.398782, 24.749294, 22.230524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641582, 24.285753, 21.919331>,  <13.166483, 24.112164, 22.404022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641582, 24.285753, 21.919331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.949336, 24.533070, 21.855129>,  <13.133988, 24.681459, 21.816608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.949336, 24.533070, 21.855129>,  <12.641582, 24.285753, 21.919331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.949336, 24.533070, 21.855129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134983, -0.088227, -0.986912,
		-0.624360, 0.780981, 0.015578,
		0.769385, 0.618292, -0.160504,
		13.180152, 24.718557, 21.806978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380559, 24.832764, 21.561695>,  <12.641582, 24.285753, 21.919331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380559, 24.832764, 21.561695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769614, 24.826309, 21.468992>,  <13.003048, 24.822435, 21.413370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.769614, 24.826309, 21.468992>,  <12.380559, 24.832764, 21.561695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769614, 24.826309, 21.468992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231484, -0.151923, -0.960903,
		-0.019703, 0.988261, -0.151502,
		0.972639, -0.016137, -0.231759,
		13.061406, 24.821468, 21.399464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374953, 25.145166, 20.936707>,  <12.380559, 24.832764, 21.561695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374953, 25.145166, 20.936707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.723806, 24.950212, 20.953869>,  <12.933119, 24.833241, 20.964167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.723806, 24.950212, 20.953869>,  <12.374953, 25.145166, 20.936707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723806, 24.950212, 20.953869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118735, -0.295905, -0.947809,
		0.474643, 0.821521, -0.315938,
		0.872133, -0.487384, 0.042905,
		12.985446, 24.803997, 20.966740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747464, 25.309246, 20.329914>,  <12.374953, 25.145166, 20.936707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747464, 25.309246, 20.329914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.881191, 24.965488, 20.484665>,  <12.961428, 24.759233, 20.577515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.881191, 24.965488, 20.484665>,  <12.747464, 25.309246, 20.329914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881191, 24.965488, 20.484665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166342, -0.457858, -0.873325,
		0.927664, 0.227615, -0.296024,
		0.334319, -0.859394, 0.386876,
		12.981487, 24.707670, 20.600727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.154524, 24.951384, 19.859282>,  <12.747464, 25.309246, 20.329914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.154524, 24.951384, 19.859282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.110402, 24.628614, 20.091389>,  <13.083929, 24.434954, 20.230654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.110402, 24.628614, 20.091389>,  <13.154524, 24.951384, 19.859282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110402, 24.628614, 20.091389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149714, -0.590659, -0.792911,
		0.982557, -0.000587, 0.185960,
		-0.110304, -0.806921, 0.580268,
		13.077311, 24.386538, 20.265469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564853, 24.424376, 19.542770>,  <13.154524, 24.951384, 19.859282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564853, 24.424376, 19.542770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.346842, 24.199949, 19.791977>,  <13.216035, 24.065294, 19.941502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.346842, 24.199949, 19.791977>,  <13.564853, 24.424376, 19.542770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346842, 24.199949, 19.791977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062059, -0.714050, -0.697339,
		0.836118, -0.418733, 0.354358,
		-0.545028, -0.561066, 0.623016,
		13.183333, 24.031630, 19.978882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990396, 23.858496, 19.714273>,  <13.564853, 24.424376, 19.542770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990396, 23.858496, 19.714273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.613874, 23.742016, 19.782570>,  <13.387962, 23.672129, 19.823547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.613874, 23.742016, 19.782570>,  <13.990396, 23.858496, 19.714273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613874, 23.742016, 19.782570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098401, -0.720537, -0.686399,
		0.322905, -0.629308, 0.706898,
		-0.941302, -0.291200, 0.170741,
		13.331484, 23.654655, 19.833792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925655, 23.050123, 19.528484>,  <13.990396, 23.858496, 19.714273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925655, 23.050123, 19.528484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.548781, 23.181509, 19.555010>,  <13.322657, 23.260340, 19.570925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.548781, 23.181509, 19.555010>,  <13.925655, 23.050123, 19.528484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548781, 23.181509, 19.555010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297423, -0.728578, -0.617020,
		-0.154353, -0.601071, 0.784149,
		-0.942186, 0.328463, 0.066315,
		13.266126, 23.280048, 19.574903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.439878, 22.501879, 19.781290>,  <13.925655, 23.050123, 19.528484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.439878, 22.501879, 19.781290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.233422, 22.766039, 19.563128>,  <13.109549, 22.924536, 19.432230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.233422, 22.766039, 19.563128>,  <13.439878, 22.501879, 19.781290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.233422, 22.766039, 19.563128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274041, -0.730639, -0.625355,
		-0.811481, -0.173307, 0.558089,
		-0.516140, 0.660403, -0.545406,
		13.078580, 22.964159, 19.399506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911864, 22.059921, 19.600241>,  <13.439878, 22.501879, 19.781290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911864, 22.059921, 19.600241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.896205, 22.369873, 19.347883>,  <12.886809, 22.555843, 19.196468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.896205, 22.369873, 19.347883>,  <12.911864, 22.059921, 19.600241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896205, 22.369873, 19.347883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351900, -0.601622, -0.717089,
		-0.935219, 0.193940, 0.296232,
		-0.039147, 0.774879, -0.630896,
		12.884460, 22.602337, 19.158615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264544, 22.074675, 19.285299>,  <12.911864, 22.059921, 19.600241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264544, 22.074675, 19.285299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.521990, 22.262585, 19.043615>,  <12.676457, 22.375330, 18.898605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.521990, 22.262585, 19.043615>,  <12.264544, 22.074675, 19.285299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.521990, 22.262585, 19.043615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352646, -0.518636, -0.778882,
		-0.679265, 0.714373, -0.168138,
		0.643615, 0.469774, -0.604212,
		12.715075, 22.403517, 18.862352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.904816, 22.246275, 18.764994>,  <12.264544, 22.074675, 19.285299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.904816, 22.246275, 18.764994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.279851, 22.224333, 18.627636>,  <12.504872, 22.211166, 18.545221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.279851, 22.224333, 18.627636>,  <11.904816, 22.246275, 18.764994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279851, 22.224333, 18.627636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311447, -0.571740, -0.759022,
		-0.154695, 0.818599, -0.553141,
		0.937588, -0.054857, -0.343395,
		12.561128, 22.207876, 18.524618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797920, 22.295288, 18.067648>,  <11.904816, 22.246275, 18.764994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797920, 22.295288, 18.067648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.172152, 22.158567, 18.103121>,  <12.396690, 22.076534, 18.124405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.172152, 22.158567, 18.103121>,  <11.797920, 22.295288, 18.067648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172152, 22.158567, 18.103121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144068, -0.598753, -0.787870,
		0.322395, 0.724338, -0.609423,
		0.935578, -0.341803, 0.088681,
		12.452825, 22.056026, 18.129725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.038182, 22.349688, 17.398287>,  <11.797920, 22.295288, 18.067648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.038182, 22.349688, 17.398287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.312134, 22.099861, 17.548412>,  <12.476504, 21.949966, 17.638487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.312134, 22.099861, 17.548412>,  <12.038182, 22.349688, 17.398287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312134, 22.099861, 17.548412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050932, -0.472783, -0.879705,
		0.726875, 0.621607, -0.291989,
		0.684878, -0.624564, 0.375314,
		12.517597, 21.912493, 17.661007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.426727, 22.114086, 16.823633>,  <12.038182, 22.349688, 17.398287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.426727, 22.114086, 16.823633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.556958, 21.850763, 17.095114>,  <12.635097, 21.692770, 17.258001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.556958, 21.850763, 17.095114>,  <12.426727, 22.114086, 16.823633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.556958, 21.850763, 17.095114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171519, -0.664780, -0.727083,
		0.929828, 0.353132, -0.103526,
		0.325578, -0.658306, 0.678700,
		12.654632, 21.653271, 17.298723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.053631, 21.766342, 16.627745>,  <12.426727, 22.114086, 16.823633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.053631, 21.766342, 16.627745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.903094, 21.506870, 16.892344>,  <12.812773, 21.351187, 17.051104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.903094, 21.506870, 16.892344>,  <13.053631, 21.766342, 16.627745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.903094, 21.506870, 16.892344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053264, -0.727959, -0.683548,
		0.924949, -0.222013, 0.308512,
		-0.376341, -0.648680, 0.661500,
		12.790192, 21.312265, 17.090794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528000, 21.313169, 16.749050>,  <13.053631, 21.766342, 16.627745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528000, 21.313169, 16.749050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.195725, 21.116806, 16.854099>,  <12.996361, 20.998987, 16.917128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.195725, 21.116806, 16.854099>,  <13.528000, 21.313169, 16.749050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195725, 21.116806, 16.854099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319543, -0.806677, -0.497157,
		0.455909, -0.329062, 0.826961,
		-0.830686, -0.490908, 0.262622,
		12.946520, 20.969534, 16.932886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789379, 20.653662, 16.889021>,  <13.528000, 21.313169, 16.749050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789379, 20.653662, 16.889021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.401283, 20.587952, 16.817862>,  <13.168426, 20.548525, 16.775166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.401283, 20.587952, 16.817862>,  <13.789379, 20.653662, 16.889021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.401283, 20.587952, 16.817862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233829, -0.826507, -0.512065,
		-0.062912, -0.538423, 0.840323,
		-0.970240, -0.164277, -0.177897,
		13.110211, 20.538670, 16.764492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593774, 19.838270, 17.018230>,  <13.789379, 20.653662, 16.889021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593774, 19.838270, 17.018230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.518734, 20.026810, 16.673525>,  <13.473710, 20.139933, 16.466702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.518734, 20.026810, 16.673525>,  <13.593774, 19.838270, 17.018230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518734, 20.026810, 16.673525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236201, -0.829948, -0.505367,
		-0.953423, -0.298356, 0.044366,
		-0.187600, 0.471349, -0.861763,
		13.462454, 20.168215, 16.414995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.277990, 19.707870, 16.731529>,  <13.593774, 19.838270, 17.018230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.277990, 19.707870, 16.731529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.616636, 19.497576, 16.764616>,  <14.819824, 19.371399, 16.784468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.616636, 19.497576, 16.764616>,  <14.277990, 19.707870, 16.731529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.616636, 19.497576, 16.764616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251149, 0.531691, 0.808845,
		-0.469219, -0.664007, 0.582176,
		0.846616, -0.525738, 0.082715,
		14.870621, 19.339855, 16.789431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285577, 19.445742, 17.358843>,  <14.277990, 19.707870, 16.731529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285577, 19.445742, 17.358843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.669410, 19.460052, 17.247185>,  <14.899710, 19.468639, 17.180191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.669410, 19.460052, 17.247185>,  <14.285577, 19.445742, 17.358843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669410, 19.460052, 17.247185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227520, 0.485166, 0.844304,
		0.165635, -0.873690, 0.457417,
		0.959583, 0.035775, -0.279143,
		14.957285, 19.470785, 17.163443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.669595, 19.333090, 17.966038>,  <14.285577, 19.445742, 17.358843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.669595, 19.333090, 17.966038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.918335, 19.500198, 17.701078>,  <15.067579, 19.600464, 17.542103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.918335, 19.500198, 17.701078>,  <14.669595, 19.333090, 17.966038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918335, 19.500198, 17.701078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405740, 0.551587, 0.728785,
		0.669835, -0.721956, 0.173497,
		0.621848, 0.417771, -0.662398,
		15.104890, 19.625528, 17.502359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268394, 19.470537, 18.383135>,  <14.669595, 19.333090, 17.966038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268394, 19.470537, 18.383135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.309869, 19.698635, 18.057173>,  <15.334753, 19.835495, 17.861595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.309869, 19.698635, 18.057173>,  <15.268394, 19.470537, 18.383135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.309869, 19.698635, 18.057173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438465, 0.709203, 0.552068,
		0.892747, -0.414548, -0.176499,
		0.103685, 0.570246, -0.814904,
		15.340975, 19.869709, 17.812702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031815, 19.659851, 18.319452>,  <15.268394, 19.470537, 18.383135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.031815, 19.659851, 18.319452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.791131, 19.918730, 18.132227>,  <15.646720, 20.074057, 18.019892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.791131, 19.918730, 18.132227>,  <16.031815, 19.659851, 18.319452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791131, 19.918730, 18.132227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402128, 0.751803, 0.522576,
		0.690099, 0.126219, -0.712623,
		-0.601711, 0.647195, -0.468062,
		15.610618, 20.112888, 17.991808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488394, 20.155107, 18.022902>,  <16.031815, 19.659851, 18.319452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488394, 20.155107, 18.022902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.128208, 20.328089, 18.041452>,  <15.912097, 20.431877, 18.052584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.128208, 20.328089, 18.041452>,  <16.488394, 20.155107, 18.022902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128208, 20.328089, 18.041452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409248, 0.806353, 0.426978,
		0.147252, 0.403458, -0.903072,
		-0.900463, 0.432454, 0.046377,
		15.858069, 20.457825, 18.055365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511335, 20.965416, 17.943981>,  <16.488394, 20.155107, 18.022902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511335, 20.965416, 17.943981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154860, 20.925846, 18.121067>,  <15.940974, 20.902103, 18.227318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154860, 20.925846, 18.121067>,  <16.511335, 20.965416, 17.943981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154860, 20.925846, 18.121067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156992, 0.848365, 0.505600,
		-0.425600, 0.520088, -0.740523,
		-0.891189, -0.098927, 0.442713,
		15.887503, 20.896168, 18.253881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173653, 21.617819, 17.879889>,  <16.511335, 20.965416, 17.943981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173653, 21.617819, 17.879889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.982755, 21.424129, 18.173220>,  <15.868217, 21.307917, 18.349218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.982755, 21.424129, 18.173220>,  <16.173653, 21.617819, 17.879889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.982755, 21.424129, 18.173220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182638, 0.761615, 0.621760,
		-0.859582, 0.430664, -0.275039,
		-0.477244, -0.484221, 0.733327,
		15.839581, 21.278864, 18.393217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692142, 22.075377, 18.106943>,  <16.173653, 21.617819, 17.879889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692142, 22.075377, 18.106943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.735225, 21.822750, 18.414064>,  <15.761074, 21.671175, 18.598337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.735225, 21.822750, 18.414064>,  <15.692142, 22.075377, 18.106943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735225, 21.822750, 18.414064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152803, 0.773638, 0.614927,
		-0.982370, 0.051091, 0.179831,
		0.107707, -0.631565, 0.767805,
		15.767537, 21.633280, 18.644405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317895, 22.326424, 18.760139>,  <15.692142, 22.075377, 18.106943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317895, 22.326424, 18.760139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573832, 22.049583, 18.893768>,  <15.727393, 21.883480, 18.973946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573832, 22.049583, 18.893768>,  <15.317895, 22.326424, 18.760139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573832, 22.049583, 18.893768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229290, 0.586823, 0.776572,
		-0.733505, -0.420284, 0.534165,
		0.639842, -0.692098, 0.334070,
		15.765784, 21.841953, 18.993990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086442, 22.069948, 19.407127>,  <15.317895, 22.326424, 18.760139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086442, 22.069948, 19.407127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.482017, 22.020754, 19.373955>,  <15.719361, 21.991238, 19.354052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.482017, 22.020754, 19.373955>,  <15.086442, 22.069948, 19.407127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482017, 22.020754, 19.373955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141640, 0.616903, 0.774189,
		-0.044055, -0.777371, 0.627499,
		0.988938, -0.122986, -0.082929,
		15.778698, 21.983858, 19.349075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.257857, 21.987886, 20.096205>,  <15.086442, 22.069948, 19.407127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.257857, 21.987886, 20.096205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.612725, 22.059496, 19.926085>,  <15.825646, 22.102461, 19.824013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.612725, 22.059496, 19.926085>,  <15.257857, 21.987886, 20.096205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612725, 22.059496, 19.926085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318566, 0.429177, 0.845176,
		0.333833, -0.885301, 0.323724,
		0.887171, 0.179021, -0.425300,
		15.878876, 22.113203, 19.798494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809180, 21.955746, 20.615200>,  <15.257857, 21.987886, 20.096205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809180, 21.955746, 20.615200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.008598, 22.158779, 20.334112>,  <16.128248, 22.280600, 20.165461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.008598, 22.158779, 20.334112>,  <15.809180, 21.955746, 20.615200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.008598, 22.158779, 20.334112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407594, 0.578187, 0.706801,
		0.765063, -0.638795, 0.081364,
		0.498544, 0.507583, -0.702718,
		16.158161, 22.311054, 20.123297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532160, 22.000664, 20.883081>,  <15.809180, 21.955746, 20.615200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532160, 22.000664, 20.883081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449316, 22.310040, 20.643448>,  <16.399611, 22.495665, 20.499668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449316, 22.310040, 20.643448>,  <16.532160, 22.000664, 20.883081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449316, 22.310040, 20.643448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243235, 0.633840, 0.734223,
		0.947598, 0.006348, -0.319402,
		-0.207110, 0.773438, -0.599082,
		16.387182, 22.542070, 20.463724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192614, 22.418180, 20.892481>,  <16.532160, 22.000664, 20.883081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192614, 22.418180, 20.892481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.873713, 22.637957, 20.792477>,  <16.682373, 22.769823, 20.732473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.873713, 22.637957, 20.792477>,  <17.192614, 22.418180, 20.892481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873713, 22.637957, 20.792477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232482, 0.661691, 0.712823,
		0.557085, 0.510176, -0.655269,
		-0.797251, 0.549441, -0.250012,
		16.634537, 22.802790, 20.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.453976, 23.065372, 21.063366>,  <17.192614, 22.418180, 20.892481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.453976, 23.065372, 21.063366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.061264, 23.126810, 21.018610>,  <16.825638, 23.163673, 20.991756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.061264, 23.126810, 21.018610>,  <17.453976, 23.065372, 21.063366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061264, 23.126810, 21.018610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009682, 0.628469, 0.777775,
		0.189782, 0.762519, -0.618504,
		-0.981778, 0.153596, -0.111890,
		16.766731, 23.172890, 20.985043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353523, 23.771606, 21.164331>,  <17.453976, 23.065372, 21.063366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353523, 23.771606, 21.164331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.988262, 23.611431, 21.194799>,  <16.769106, 23.515326, 21.213081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.988262, 23.611431, 21.194799>,  <17.353523, 23.771606, 21.164331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988262, 23.611431, 21.194799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129516, 0.462219, 0.877256,
		-0.386494, 0.791203, -0.473940,
		-0.913153, -0.400438, 0.076171,
		16.714317, 23.491301, 21.217651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.843819, 24.321203, 21.364841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.671082, 23.978342, 21.477127>,  <16.567440, 23.772625, 21.544498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.671082, 23.978342, 21.477127>,  <16.843819, 24.321203, 21.364841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671082, 23.978342, 21.477127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089623, 0.350470, 0.932276,
		-0.897485, 0.377438, -0.228168,
		-0.431843, -0.857153, 0.280715,
		16.541529, 23.721195, 21.561342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181515, 24.495481, 21.760559>,  <16.843819, 24.321203, 21.364841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181515, 24.495481, 21.760559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.295172, 24.127420, 21.868326>,  <16.363365, 23.906584, 21.932985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.295172, 24.127420, 21.868326>,  <16.181515, 24.495481, 21.760559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295172, 24.127420, 21.868326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009690, 0.283739, 0.958853,
		-0.958734, -0.269838, 0.089538,
		0.284141, -0.920152, 0.269416,
		16.380413, 23.851376, 21.949150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.789296, 24.292830, 22.227316>,  <16.181515, 24.495481, 21.760559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.789296, 24.292830, 22.227316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.073584, 24.015377, 22.274235>,  <16.244156, 23.848906, 22.302385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.073584, 24.015377, 22.274235>,  <15.789296, 24.292830, 22.227316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073584, 24.015377, 22.274235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059738, 0.106625, 0.992503,
		-0.700936, -0.712397, 0.034344,
		0.710718, -0.693629, 0.117295,
		16.286798, 23.807289, 22.309423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515169, 23.881889, 22.775747>,  <15.789296, 24.292830, 22.227316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515169, 23.881889, 22.775747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.912437, 23.837652, 22.790606>,  <16.150799, 23.811110, 22.799520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.912437, 23.837652, 22.790606>,  <15.515169, 23.881889, 22.775747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912437, 23.837652, 22.790606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055614, -0.168932, 0.984057,
		-0.102550, -0.979404, -0.173929,
		0.993172, -0.110588, 0.037145,
		16.210388, 23.804474, 22.801748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562499, 23.250303, 23.172491>,  <15.515169, 23.881889, 22.775747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562499, 23.250303, 23.172491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.903321, 23.459684, 23.172270>,  <16.107815, 23.585314, 23.172136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.903321, 23.459684, 23.172270>,  <15.562499, 23.250303, 23.172491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903321, 23.459684, 23.172270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043291, -0.069416, 0.996648,
		0.521660, -0.849222, -0.081807,
		0.852054, 0.523453, -0.000553,
		16.158937, 23.616720, 23.172104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924347, 22.917150, 23.718561>,  <15.562499, 23.250303, 23.172491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924347, 22.917150, 23.718561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.114613, 23.263702, 23.657730>,  <16.228771, 23.471634, 23.621231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.114613, 23.263702, 23.657730>,  <15.924347, 22.917150, 23.718561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114613, 23.263702, 23.657730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080515, 0.129279, 0.988334,
		0.875935, -0.482359, -0.008263,
		0.475664, 0.866381, -0.152077,
		16.257311, 23.523617, 23.612106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385124, 22.911207, 24.229897>,  <15.924347, 22.917150, 23.718561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385124, 22.911207, 24.229897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397739, 23.291706, 24.107170>,  <16.405310, 23.520006, 24.033535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.397739, 23.291706, 24.107170>,  <16.385124, 22.911207, 24.229897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397739, 23.291706, 24.107170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304155, 0.283274, 0.909530,
		0.952100, -0.122005, -0.280392,
		0.031539, 0.951247, -0.306814,
		16.407202, 23.577080, 24.015125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012304, 23.208624, 24.578930>,  <16.385124, 22.911207, 24.229897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012304, 23.208624, 24.578930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.792706, 23.532225, 24.494917>,  <16.660946, 23.726385, 24.444510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.792706, 23.532225, 24.494917>,  <17.012304, 23.208624, 24.578930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792706, 23.532225, 24.494917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290845, 0.420492, 0.859416,
		0.783587, 0.410731, -0.466144,
		-0.548999, 0.809003, -0.210033,
		16.628006, 23.774925, 24.431908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.472254, 23.879265, 24.575977>,  <17.012304, 23.208624, 24.578930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.472254, 23.879265, 24.575977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.098618, 23.983856, 24.673222>,  <16.874435, 24.046612, 24.731567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.098618, 23.983856, 24.673222>,  <17.472254, 23.879265, 24.575977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098618, 23.983856, 24.673222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346317, 0.497984, 0.795033,
		0.086820, 0.826826, -0.555717,
		-0.934092, 0.261479, 0.243108,
		16.818390, 24.062300, 24.746155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488482, 24.533623, 24.615377>,  <17.472254, 23.879265, 24.575977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488482, 24.533623, 24.615377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.159693, 24.433506, 24.820011>,  <16.962420, 24.373436, 24.942791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.159693, 24.433506, 24.820011>,  <17.488482, 24.533623, 24.615377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159693, 24.433506, 24.820011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344314, 0.497126, 0.796438,
		-0.453663, 0.830794, -0.322444,
		-0.821971, -0.250293, 0.511582,
		16.913101, 24.358418, 24.973486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276594, 25.162956, 25.035975>,  <17.488482, 24.533623, 24.615377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276594, 25.162956, 25.035975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.050741, 24.906153, 25.243443>,  <16.915230, 24.752071, 25.367924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.050741, 24.906153, 25.243443>,  <17.276594, 25.162956, 25.035975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050741, 24.906153, 25.243443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448283, 0.289100, 0.845851,
		-0.692989, 0.710105, 0.124566,
		-0.564631, -0.642006, 0.518671,
		16.881351, 24.713551, 25.399044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923246, 25.498816, 25.635105>,  <17.276594, 25.162956, 25.035975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923246, 25.498816, 25.635105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.939184, 25.108217, 25.719830>,  <16.948748, 24.873857, 25.770664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.939184, 25.108217, 25.719830>,  <16.923246, 25.498816, 25.635105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939184, 25.108217, 25.719830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119504, 0.215117, 0.969249,
		-0.992034, -0.013307, 0.125266,
		0.039845, -0.976498, 0.211813,
		16.951138, 24.815268, 25.783373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342682, 25.344395, 26.050953>,  <16.923246, 25.498816, 25.635105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.342682, 25.344395, 26.050953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.655834, 25.100279, 26.099354>,  <16.843725, 24.953810, 26.128395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.655834, 25.100279, 26.099354>,  <16.342682, 25.344395, 26.050953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655834, 25.100279, 26.099354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099031, 0.314239, 0.944164,
		-0.614238, -0.727186, 0.306450,
		0.782882, -0.610290, 0.121004,
		16.890699, 24.917192, 26.135654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294165, 25.151241, 26.760880>,  <16.342682, 25.344395, 26.050953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294165, 25.151241, 26.760880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.656359, 25.012794, 26.662651>,  <16.873674, 24.929728, 26.603714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.656359, 25.012794, 26.662651>,  <16.294165, 25.151241, 26.760880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656359, 25.012794, 26.662651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249559, -0.033756, 0.967771,
		-0.343250, -0.937584, 0.055811,
		0.905483, -0.346116, -0.245570,
		16.928003, 24.908960, 26.588980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448751, 24.665890, 27.331720>,  <16.294165, 25.151241, 26.760880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448751, 24.665890, 27.331720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.791616, 24.783495, 27.162569>,  <16.997335, 24.854057, 27.061077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.791616, 24.783495, 27.162569>,  <16.448751, 24.665890, 27.331720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791616, 24.783495, 27.162569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339501, 0.294889, 0.893185,
		0.387310, -0.909174, 0.152950,
		0.857164, 0.294012, -0.422879,
		17.048765, 24.871698, 27.035706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068531, 24.336575, 27.643126>,  <16.448751, 24.665890, 27.331720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068531, 24.336575, 27.643126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.193291, 24.682034, 27.484716>,  <17.268147, 24.889309, 27.389671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.193291, 24.682034, 27.484716>,  <17.068531, 24.336575, 27.643126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193291, 24.682034, 27.484716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563210, 0.167627, 0.809133,
		0.765189, -0.475411, -0.434132,
		0.311898, 0.863647, -0.396022,
		17.286860, 24.941128, 27.365910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.688240, 24.290756, 28.008659>,  <17.068531, 24.336575, 27.643126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.688240, 24.290756, 28.008659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.644293, 24.655945, 27.851477>,  <17.617924, 24.875057, 27.757168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.644293, 24.655945, 27.851477>,  <17.688240, 24.290756, 28.008659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644293, 24.655945, 27.851477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406023, 0.402085, 0.820654,
		0.907234, -0.069385, -0.414864,
		-0.109869, 0.912969, -0.392957,
		17.611332, 24.929836, 27.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188305, 24.698496, 28.293596>,  <17.688240, 24.290756, 28.008659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188305, 24.698496, 28.293596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.986292, 24.997824, 28.121569>,  <17.865084, 25.177420, 28.018353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.986292, 24.997824, 28.121569>,  <18.188305, 24.698496, 28.293596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986292, 24.997824, 28.121569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348014, 0.632537, 0.691941,
		0.789827, 0.199784, -0.579879,
		-0.505034, 0.748320, -0.430067,
		17.834782, 25.222321, 27.992548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.675625, 25.198355, 28.062475>,  <18.188305, 24.698496, 28.293596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.675625, 25.198355, 28.062475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.319374, 25.375916, 28.101952>,  <18.105623, 25.482452, 28.125637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.319374, 25.375916, 28.101952>,  <18.675625, 25.198355, 28.062475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319374, 25.375916, 28.101952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356383, 0.546556, 0.757804,
		0.282450, 0.710090, -0.644975,
		-0.890625, 0.443900, 0.098689,
		18.052187, 25.509085, 28.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855907, 25.830431, 28.105879>,  <18.675625, 25.198355, 28.062475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855907, 25.830431, 28.105879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.496752, 25.809269, 28.280693>,  <18.281260, 25.796572, 28.385582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.496752, 25.809269, 28.280693>,  <18.855907, 25.830431, 28.105879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496752, 25.809269, 28.280693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392254, 0.354510, 0.848799,
		-0.199839, 0.933554, -0.297558,
		-0.897887, -0.052905, 0.437035,
		18.227386, 25.793398, 28.411804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700220, 26.511696, 28.384192>,  <18.855907, 25.830431, 28.105879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700220, 26.511696, 28.384192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.485441, 26.246658, 28.593060>,  <18.356575, 26.087635, 28.718380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.485441, 26.246658, 28.593060>,  <18.700220, 26.511696, 28.384192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485441, 26.246658, 28.593060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325647, 0.408198, 0.852836,
		-0.778231, 0.627969, -0.003409,
		-0.536946, -0.662593, 0.522168,
		18.324358, 26.047880, 28.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522190, 26.904787, 28.903231>,  <18.700220, 26.511696, 28.384192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522190, 26.904787, 28.903231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.400227, 26.552937, 29.049265>,  <18.327049, 26.341825, 29.136885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.400227, 26.552937, 29.049265>,  <18.522190, 26.904787, 28.903231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400227, 26.552937, 29.049265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153783, 0.332835, 0.930361,
		-0.939884, 0.339819, 0.033788,
		-0.304909, -0.879627, 0.365085,
		18.308754, 26.289049, 29.158791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194368, 27.034615, 29.552483>,  <18.522190, 26.904787, 28.903231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194368, 27.034615, 29.552483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.371965, 26.676256, 29.546207>,  <18.478523, 26.461241, 29.542442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.371965, 26.676256, 29.546207>,  <18.194368, 27.034615, 29.552483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.371965, 26.676256, 29.546207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387171, 0.176025, 0.905049,
		-0.808066, -0.407908, 0.425018,
		0.443991, -0.895894, -0.015690,
		18.505163, 26.407488, 29.541500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858809, 26.751434, 30.114281>,  <18.194368, 27.034615, 29.552483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858809, 26.751434, 30.114281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.991936, 26.436337, 30.321621>,  <18.071812, 26.247278, 30.446026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.991936, 26.436337, 30.321621>,  <17.858809, 26.751434, 30.114281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991936, 26.436337, 30.321621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924177, -0.381734, 0.013260,
		0.187427, -0.483461, -0.855066,
		0.332819, -0.787747, 0.518350,
		18.091782, 26.200012, 30.477125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256172, 26.947802, 29.863724>,  <17.858809, 26.751434, 30.114281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256172, 26.947802, 29.863724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.988962, 27.094402, 30.122774>,  <16.828636, 27.182362, 30.278204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.988962, 27.094402, 30.122774>,  <17.256172, 26.947802, 29.863724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988962, 27.094402, 30.122774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743314, -0.369595, -0.557570,
		0.035010, -0.853860, 0.519323,
		-0.668027, 0.366499, 0.647626,
		16.788555, 27.204351, 30.317062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791519, 26.475157, 29.984093>,  <17.256172, 26.947802, 29.863724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791519, 26.475157, 29.984093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627979, 26.839209, 30.010941>,  <16.529856, 27.057640, 30.027050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627979, 26.839209, 30.010941>,  <16.791519, 26.475157, 29.984093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627979, 26.839209, 30.010941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635093, -0.230936, -0.737106,
		-0.655362, -0.343994, 0.672435,
		-0.408849, 0.910130, 0.067122,
		16.505325, 27.112247, 30.031076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058205, 26.368908, 30.105047>,  <16.791519, 26.475157, 29.984093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058205, 26.368908, 30.105047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.117601, 26.732910, 29.950212>,  <16.153240, 26.951311, 29.857311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.117601, 26.732910, 29.950212>,  <16.058205, 26.368908, 30.105047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117601, 26.732910, 29.950212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737791, -0.158697, -0.656109,
		-0.658494, 0.383018, 0.647830,
		0.148493, 0.910007, -0.387089,
		16.162149, 27.005913, 29.834085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440741, 26.621002, 30.014782>,  <16.058205, 26.368908, 30.105047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440741, 26.621002, 30.014782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.664868, 26.837427, 29.763929>,  <15.799345, 26.967281, 29.613417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.664868, 26.837427, 29.763929>,  <15.440741, 26.621002, 30.014782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664868, 26.837427, 29.763929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609952, -0.242700, -0.754358,
		-0.560359, 0.805202, 0.194032,
		0.560319, 0.541061, -0.627133,
		15.832964, 26.999744, 29.575788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954446, 27.030519, 29.631994>,  <15.440741, 26.621002, 30.014782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954446, 27.030519, 29.631994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.286490, 27.009661, 29.409933>,  <15.485717, 26.997145, 29.276695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.286490, 27.009661, 29.409933>,  <14.954446, 27.030519, 29.631994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.286490, 27.009661, 29.409933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557363, -0.106454, -0.823416,
		-0.016159, 0.992949, -0.117434,
		0.830111, -0.052148, -0.555154,
		15.535523, 26.994017, 29.243387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.713974, 27.423901, 29.045027>,  <14.954446, 27.030519, 29.631994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.713974, 27.423901, 29.045027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.023301, 27.192621, 28.940975>,  <15.208898, 27.053854, 28.878544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.023301, 27.192621, 28.940975>,  <14.713974, 27.423901, 29.045027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023301, 27.192621, 28.940975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482403, -0.270352, -0.833185,
		0.411420, 0.769803, -0.487993,
		0.773318, -0.578198, -0.260127,
		15.255297, 27.019161, 28.862938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573763, 27.381824, 28.285086>,  <14.713974, 27.423901, 29.045027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573763, 27.381824, 28.285086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874849, 27.123802, 28.337727>,  <15.055501, 26.968988, 28.369312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.874849, 27.123802, 28.337727>,  <14.573763, 27.381824, 28.285086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874849, 27.123802, 28.337727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149287, -0.361935, -0.920172,
		0.641197, 0.672981, -0.368732,
		0.752715, -0.645058, 0.131604,
		15.100664, 26.930285, 28.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912257, 27.407198, 27.724470>,  <14.573763, 27.381824, 28.285086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912257, 27.407198, 27.724470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.997482, 27.043911, 27.868553>,  <15.048617, 26.825939, 27.955004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.997482, 27.043911, 27.868553>,  <14.912257, 27.407198, 27.724470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997482, 27.043911, 27.868553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013859, -0.371445, -0.928352,
		0.976940, 0.192805, -0.091728,
		0.213063, -0.908215, 0.360207,
		15.061401, 26.771446, 27.976616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442043, 27.148041, 27.336723>,  <14.912257, 27.407198, 27.724470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442043, 27.148041, 27.336723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.279599, 26.822481, 27.502926>,  <15.182133, 26.627146, 27.602648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.279599, 26.822481, 27.502926>,  <15.442043, 27.148041, 27.336723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279599, 26.822481, 27.502926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068979, -0.480695, -0.874170,
		0.911217, -0.326349, 0.251357,
		-0.406111, -0.813897, 0.415506,
		15.157766, 26.578312, 27.627577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767090, 26.616812, 27.119387>,  <15.442043, 27.148041, 27.336723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767090, 26.616812, 27.119387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.423569, 26.444197, 27.229826>,  <15.217456, 26.340628, 27.296089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.423569, 26.444197, 27.229826>,  <15.767090, 26.616812, 27.119387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423569, 26.444197, 27.229826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035136, -0.488054, -0.872106,
		0.511100, -0.758668, 0.403980,
		-0.858803, -0.431539, 0.276101,
		15.165928, 26.314735, 27.312656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846540, 25.976685, 26.873051>,  <15.767090, 26.616812, 27.119387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846540, 25.976685, 26.873051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.454620, 25.994764, 26.950972>,  <15.219468, 26.005611, 26.997725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.454620, 25.994764, 26.950972>,  <15.846540, 25.976685, 26.873051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454620, 25.994764, 26.950972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187253, -0.549299, -0.814375,
		0.070198, -0.834403, 0.546667,
		-0.979800, 0.045197, 0.194804,
		15.160680, 26.008324, 27.009413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445126, 25.292196, 26.817789>,  <15.846540, 25.976685, 26.873051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445126, 25.292196, 26.817789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.202364, 25.601574, 26.744633>,  <15.056707, 25.787201, 26.700739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.202364, 25.601574, 26.744633>,  <15.445126, 25.292196, 26.817789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202364, 25.601574, 26.744633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276973, -0.421514, -0.863488,
		-0.744952, -0.473399, 0.470042,
		-0.606904, 0.773446, -0.182889,
		15.020292, 25.833609, 26.689766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.784221, 24.961750, 26.615911>,  <15.445126, 25.292196, 26.817789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.784221, 24.961750, 26.615911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.814615, 25.330919, 26.464945>,  <14.832852, 25.552420, 26.374365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.814615, 25.330919, 26.464945>,  <14.784221, 24.961750, 26.615911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.814615, 25.330919, 26.464945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402891, -0.317816, -0.858296,
		-0.912088, 0.217276, 0.347687,
		0.075987, 0.922922, -0.377414,
		14.837411, 25.607796, 26.351721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.209747, 24.932638, 26.274031>,  <14.784221, 24.961750, 26.615911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.209747, 24.932638, 26.274031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367147, 25.274052, 26.137419>,  <14.461587, 25.478899, 26.055452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367147, 25.274052, 26.137419>,  <14.209747, 24.932638, 26.274031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367147, 25.274052, 26.137419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212268, -0.277105, -0.937099,
		-0.894483, 0.441243, 0.072137,
		0.393499, 0.853532, -0.341527,
		14.485197, 25.530111, 26.034960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.739919, 25.336828, 25.941395>,  <14.209747, 24.932638, 26.274031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.739919, 25.336828, 25.941395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.091939, 25.434965, 25.778759>,  <14.303151, 25.493847, 25.681177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.091939, 25.434965, 25.778759>,  <13.739919, 25.336828, 25.941395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091939, 25.434965, 25.778759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372398, -0.174730, -0.911476,
		-0.294667, 0.953560, -0.062406,
		0.880052, 0.245342, -0.406591,
		14.355954, 25.508568, 25.656782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.571555, 25.568533, 25.211557>,  <13.739919, 25.336828, 25.941395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.571555, 25.568533, 25.211557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.969773, 25.545097, 25.182009>,  <14.208704, 25.531036, 25.164280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.969773, 25.545097, 25.182009>,  <13.571555, 25.568533, 25.211557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969773, 25.545097, 25.182009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073575, 0.007216, -0.997264,
		0.058963, 0.998256, 0.002873,
		0.995545, -0.058591, -0.073872,
		14.268436, 25.527521, 25.159847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.876325, 26.183540, 24.887396>,  <13.571555, 25.568533, 25.211557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.876325, 26.183540, 24.887396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.123090, 25.872646, 24.837877>,  <14.271149, 25.686110, 24.808167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.123090, 25.872646, 24.837877>,  <13.876325, 26.183540, 24.887396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123090, 25.872646, 24.837877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172160, 0.020218, -0.984861,
		0.767970, 0.628887, -0.121336,
		0.616913, -0.777234, -0.123796,
		14.308164, 25.639477, 24.800739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290089, 26.378738, 24.323404>,  <13.876325, 26.183540, 24.887396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290089, 26.378738, 24.323404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.303060, 25.979269, 24.339392>,  <14.310843, 25.739588, 24.348984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.303060, 25.979269, 24.339392>,  <14.290089, 26.378738, 24.323404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303060, 25.979269, 24.339392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279266, -0.047449, -0.959041,
		0.959666, 0.019939, -0.280434,
		0.032429, -0.998675, 0.039967,
		14.312788, 25.679667, 24.351381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527034, 26.241013, 23.707699>,  <14.290089, 26.378738, 24.323404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527034, 26.241013, 23.707699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422645, 25.877090, 23.836784>,  <14.360011, 25.658737, 23.914236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.422645, 25.877090, 23.836784>,  <14.527034, 26.241013, 23.707699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.422645, 25.877090, 23.836784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104745, -0.305636, -0.946369,
		0.959647, -0.280779, -0.015535,
		-0.260973, -0.909807, 0.322713,
		14.344353, 25.604149, 23.933598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.920311, 25.731268, 23.317408>,  <14.527034, 26.241013, 23.707699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.920311, 25.731268, 23.317408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.596700, 25.550226, 23.467407>,  <14.402534, 25.441601, 23.557407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.596700, 25.550226, 23.467407>,  <14.920311, 25.731268, 23.317408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596700, 25.550226, 23.467407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334965, -0.169225, -0.926910,
		0.482983, -0.875506, -0.014700,
		-0.809027, -0.452606, 0.374997,
		14.353992, 25.414444, 23.579906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<11.755267, 20.034451, 10.235598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.110065, 20.206551, 10.302682>,  <12.322943, 20.309811, 10.342933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.110065, 20.206551, 10.302682>,  <11.755267, 20.034451, 10.235598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110065, 20.206551, 10.302682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370980, -0.880194, 0.296029,
		0.274986, -0.200358, -0.940340,
		0.886993, 0.430251, 0.167712,
		12.376163, 20.335627, 10.352996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125108, 19.629107, 9.924952>,  <11.755267, 20.034451, 10.235598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125108, 19.629107, 9.924952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.377513, 19.824932, 10.165666>,  <12.528956, 19.942429, 10.310094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.377513, 19.824932, 10.165666>,  <12.125108, 19.629107, 9.924952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.377513, 19.824932, 10.165666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361136, -0.871923, 0.330652,
		0.686588, 0.008680, -0.726996,
		0.631014, 0.489566, 0.601786,
		12.566817, 19.971802, 10.346202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978290, 19.476744, 9.820873>,  <12.125108, 19.629107, 9.924952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978290, 19.476744, 9.820873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.906947, 19.539335, 10.209451>,  <12.864141, 19.576889, 10.442597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.906947, 19.539335, 10.209451>,  <12.978290, 19.476744, 9.820873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906947, 19.539335, 10.209451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718556, -0.653757, 0.237231,
		0.672210, 0.740349, 0.004163,
		-0.178356, 0.156477, 0.971444,
		12.853440, 19.586279, 10.500884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.110358, 18.702505, 10.028706>,  <12.978290, 19.476744, 9.820873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.110358, 18.702505, 10.028706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.161681, 18.338501, 10.186399>,  <13.192474, 18.120098, 10.281014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.161681, 18.338501, 10.186399>,  <13.110358, 18.702505, 10.028706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161681, 18.338501, 10.186399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990379, 0.096797, -0.098890,
		0.051831, 0.403129, 0.913674,
		0.128307, -0.910010, 0.394233,
		13.200173, 18.065498, 10.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767370, 18.754318, 10.373006>,  <13.110358, 18.702505, 10.028706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767370, 18.754318, 10.373006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.662374, 18.373058, 10.312864>,  <13.599378, 18.144302, 10.276779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.662374, 18.373058, 10.312864>,  <13.767370, 18.754318, 10.373006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662374, 18.373058, 10.312864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949982, -0.227939, -0.213492,
		0.169218, -0.198872, 0.965306,
		-0.262489, -0.953149, -0.150354,
		13.583628, 18.087114, 10.267758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132288, 18.299603, 10.887694>,  <13.767370, 18.754318, 10.373006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132288, 18.299603, 10.887694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.054169, 18.179113, 10.514359>,  <14.007298, 18.106819, 10.290357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.054169, 18.179113, 10.514359>,  <14.132288, 18.299603, 10.887694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054169, 18.179113, 10.514359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976484, -0.148327, -0.156454,
		-0.091311, -0.941946, 0.323109,
		-0.195297, -0.301225, -0.933340,
		13.995580, 18.088745, 10.234357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.355364, 17.531868, 10.688352>,  <14.132288, 18.299603, 10.887694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.355364, 17.531868, 10.688352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.338144, 17.791170, 10.384269>,  <14.327812, 17.946751, 10.201819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.338144, 17.791170, 10.384269>,  <14.355364, 17.531868, 10.688352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338144, 17.791170, 10.384269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988519, -0.082670, -0.126474,
		-0.144834, -0.756923, -0.637253,
		-0.043049, 0.648254, -0.760206,
		14.325230, 17.985647, 10.156207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684524, 17.229336, 10.112525>,  <14.355364, 17.531868, 10.688352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684524, 17.229336, 10.112525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.726235, 17.626677, 10.093037>,  <14.751263, 17.865082, 10.081344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.726235, 17.626677, 10.093037>,  <14.684524, 17.229336, 10.112525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726235, 17.626677, 10.093037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993585, -0.101898, 0.049038,
		0.043747, -0.053521, -0.997608,
		0.104279, 0.993354, -0.048720,
		14.757519, 17.924683, 10.078421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210380, 17.294737, 9.613313>,  <14.684524, 17.229336, 10.112525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210380, 17.294737, 9.613313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.213964, 17.621290, 9.844290>,  <15.216115, 17.817223, 9.982876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.213964, 17.621290, 9.844290>,  <15.210380, 17.294737, 9.613313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213964, 17.621290, 9.844290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947131, -0.192144, 0.256951,
		0.320722, 0.544612, -0.774942,
		0.008962, 0.816381, 0.577444,
		15.216653, 17.866205, 10.017523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938358, 17.503241, 9.481278>,  <15.210380, 17.294737, 9.613313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938358, 17.503241, 9.481278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.819862, 17.642475, 9.837049>,  <15.748765, 17.726015, 10.050510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.819862, 17.642475, 9.837049>,  <15.938358, 17.503241, 9.481278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819862, 17.642475, 9.837049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812928, -0.396955, 0.426115,
		0.501387, 0.849272, -0.165375,
		-0.296241, 0.348087, 0.889425,
		15.730990, 17.746901, 10.103876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507078, 17.809969, 9.759481>,  <15.938358, 17.503241, 9.481278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507078, 17.809969, 9.759481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.299608, 17.729197, 10.091794>,  <16.175125, 17.680733, 10.291182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.299608, 17.729197, 10.091794>,  <16.507078, 17.809969, 9.759481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299608, 17.729197, 10.091794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854555, -0.152732, 0.496396,
		0.026649, 0.967417, 0.251781,
		-0.518677, -0.201932, 0.830781,
		16.144005, 17.668617, 10.341028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916178, 18.033024, 10.350938>,  <16.507078, 17.809969, 9.759481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916178, 18.033024, 10.350938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.661375, 17.770662, 10.512931>,  <16.508493, 17.613245, 10.610126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.661375, 17.770662, 10.512931>,  <16.916178, 18.033024, 10.350938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.661375, 17.770662, 10.512931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761575, -0.454207, 0.462277,
		-0.119264, 0.602899, 0.788853,
		-0.637009, -0.655904, 0.404982,
		16.470272, 17.573891, 10.634425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138285, 18.006676, 11.036954>,  <16.916178, 18.033024, 10.350938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138285, 18.006676, 11.036954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.920967, 17.677095, 10.972538>,  <16.790577, 17.479347, 10.933888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.920967, 17.677095, 10.972538>,  <17.138285, 18.006676, 11.036954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920967, 17.677095, 10.972538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503811, -0.473418, 0.722530,
		-0.671568, 0.311414, 0.672323,
		-0.543296, -0.823951, -0.161039,
		16.757978, 17.429911, 10.924227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013926, 17.805685, 11.705415>,  <17.138285, 18.006676, 11.036954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013926, 17.805685, 11.705415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.920732, 17.484526, 11.485933>,  <16.864817, 17.291830, 11.354244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.920732, 17.484526, 11.485933>,  <17.013926, 17.805685, 11.705415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920732, 17.484526, 11.485933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336989, -0.595928, 0.728909,
		-0.912226, -0.015083, 0.409409,
		-0.232984, -0.802896, -0.548704,
		16.850838, 17.243656, 11.321322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690714, 17.467632, 12.119383>,  <17.013926, 17.805685, 11.705415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690714, 17.467632, 12.119383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.831991, 17.210560, 11.847438>,  <16.916758, 17.056316, 11.684271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.831991, 17.210560, 11.847438>,  <16.690714, 17.467632, 12.119383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831991, 17.210560, 11.847438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178792, -0.666935, 0.723347,
		-0.918306, -0.377037, -0.120652,
		0.353195, -0.642683, -0.679862,
		16.937950, 17.017756, 11.643479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364262, 16.783611, 12.072885>,  <16.690714, 17.467632, 12.119383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.364262, 16.783611, 12.072885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.728327, 16.703377, 11.927904>,  <16.946766, 16.655237, 11.840916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.728327, 16.703377, 11.927904>,  <16.364262, 16.783611, 12.072885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728327, 16.703377, 11.927904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166171, -0.624687, 0.762990,
		-0.379462, -0.754673, -0.535236,
		0.910163, -0.200585, -0.362450,
		17.001375, 16.643202, 11.819169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.592916, 16.195866, 12.456193>,  <16.364262, 16.783611, 12.072885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.592916, 16.195866, 12.456193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.932400, 16.252468, 12.252360>,  <17.136089, 16.286430, 12.130061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.932400, 16.252468, 12.252360>,  <16.592916, 16.195866, 12.456193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932400, 16.252468, 12.252360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472051, -0.637151, 0.609268,
		-0.238465, -0.757638, -0.607552,
		0.848706, 0.141506, -0.509582,
		17.187012, 16.294920, 12.099485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869610, 15.529611, 12.415242>,  <16.592916, 16.195866, 12.456193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869610, 15.529611, 12.415242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.184713, 15.769612, 12.359478>,  <17.373775, 15.913613, 12.326019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.184713, 15.769612, 12.359478>,  <16.869610, 15.529611, 12.415242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184713, 15.769612, 12.359478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537415, -0.558838, 0.631574,
		0.301039, -0.572447, -0.762679,
		0.787757, 0.600003, -0.139410,
		17.421040, 15.949614, 12.317655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489740, 15.175552, 12.107250>,  <16.869610, 15.529611, 12.415242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489740, 15.175552, 12.107250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.626463, 15.492336, 12.309624>,  <17.708496, 15.682406, 12.431047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.626463, 15.492336, 12.309624>,  <17.489740, 15.175552, 12.107250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626463, 15.492336, 12.309624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490611, -0.609547, 0.622698,
		0.801542, 0.035376, -0.596890,
		0.341804, 0.791960, 0.505933,
		17.729004, 15.729924, 12.461404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.145147, 15.038006, 12.139075>,  <17.489740, 15.175552, 12.107250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.145147, 15.038006, 12.139075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.100100, 15.313761, 12.425309>,  <18.073071, 15.479214, 12.597050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.100100, 15.313761, 12.425309>,  <18.145147, 15.038006, 12.139075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100100, 15.313761, 12.425309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559182, -0.551331, 0.619152,
		0.821360, 0.469873, -0.323400,
		-0.112622, 0.689386, 0.715586,
		18.066313, 15.520576, 12.639985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797716, 15.055321, 12.480573>,  <18.145147, 15.038006, 12.139075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797716, 15.055321, 12.480573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.546448, 15.224122, 12.742049>,  <18.395687, 15.325403, 12.898935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.546448, 15.224122, 12.742049>,  <18.797716, 15.055321, 12.480573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.546448, 15.224122, 12.742049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448906, -0.489645, 0.747483,
		0.635517, 0.762994, 0.118141,
		-0.628173, 0.422004, 0.653691,
		18.357996, 15.350723, 12.938156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243040, 15.311804, 12.991146>,  <18.797716, 15.055321, 12.480573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243040, 15.311804, 12.991146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.871450, 15.265427, 13.131753>,  <18.648497, 15.237600, 13.216117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.871450, 15.265427, 13.131753>,  <19.243040, 15.311804, 12.991146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871450, 15.265427, 13.131753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366925, -0.413425, 0.833334,
		0.048707, 0.903126, 0.426603,
		-0.928975, -0.115942, 0.351516,
		18.592758, 15.230644, 13.237207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323235, 15.541515, 13.701819>,  <19.243040, 15.311804, 12.991146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323235, 15.541515, 13.701819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.972082, 15.349972, 13.703445>,  <18.761391, 15.235045, 13.704421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.972082, 15.349972, 13.703445>,  <19.323235, 15.541515, 13.701819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972082, 15.349972, 13.703445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266328, -0.481165, 0.835195,
		-0.397985, 0.734285, 0.549940,
		-0.877882, -0.478859, 0.004064,
		18.708717, 15.206314, 13.704664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149950, 15.645959, 14.325346>,  <19.323235, 15.541515, 13.701819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149950, 15.645959, 14.325346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.952343, 15.321651, 14.199744>,  <18.833778, 15.127067, 14.124383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.952343, 15.321651, 14.199744>,  <19.149950, 15.645959, 14.325346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952343, 15.321651, 14.199744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320805, -0.505646, 0.800878,
		-0.808102, 0.294915, 0.509897,
		-0.494019, -0.810769, -0.314004,
		18.804138, 15.078421, 14.105543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.831001, 15.330231, 14.924418>,  <19.149950, 15.645959, 14.325346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.831001, 15.330231, 14.924418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.832613, 15.040263, 14.648890>,  <18.833580, 14.866282, 14.483572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.832613, 15.040263, 14.648890>,  <18.831001, 15.330231, 14.924418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832613, 15.040263, 14.648890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227778, -0.670056, 0.706500,
		-0.973705, -0.159744, 0.162422,
		0.004027, -0.724918, -0.688823,
		18.833820, 14.822787, 14.442243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487223, 14.752585, 15.270432>,  <18.831001, 15.330231, 14.924418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487223, 14.752585, 15.270432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.697767, 14.594582, 14.969258>,  <18.824093, 14.499780, 14.788553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.697767, 14.594582, 14.969258>,  <18.487223, 14.752585, 15.270432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.697767, 14.594582, 14.969258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241970, -0.779329, 0.578012,
		-0.815105, -0.486430, -0.314627,
		0.526360, -0.395010, -0.752936,
		18.855675, 14.476079, 14.743378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195103, 14.014361, 15.133816>,  <18.487223, 14.752585, 15.270432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.195103, 14.014361, 15.133816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.568192, 14.027418, 14.990170>,  <18.792046, 14.035253, 14.903983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.568192, 14.027418, 14.990170>,  <18.195103, 14.014361, 15.133816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568192, 14.027418, 14.990170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295704, -0.639191, 0.709926,
		-0.206368, -0.768355, -0.605841,
		0.932723, 0.032643, -0.359114,
		18.848009, 14.037210, 14.882436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403446, 13.361240, 15.026296>,  <18.195103, 14.014361, 15.133816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403446, 13.361240, 15.026296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.746550, 13.564396, 15.058047>,  <18.952412, 13.686290, 15.077099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.746550, 13.564396, 15.058047>,  <18.403446, 13.361240, 15.026296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746550, 13.564396, 15.058047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332175, -0.665472, 0.668436,
		0.392317, -0.546988, -0.739521,
		0.857757, 0.507890, 0.079380,
		19.003878, 13.716763, 15.081861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804668, 12.736287, 15.148678>,  <18.403446, 13.361240, 15.026296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804668, 12.736287, 15.148678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055458, 13.046019, 15.182891>,  <19.205933, 13.231857, 15.203419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.055458, 13.046019, 15.182891>,  <18.804668, 12.736287, 15.148678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055458, 13.046019, 15.182891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590628, -0.544060, 0.595951,
		0.507997, -0.323128, -0.798453,
		0.626975, 0.774330, 0.085533,
		19.243551, 13.278317, 15.208550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618532, 12.488050, 15.079840>,  <18.804668, 12.736287, 15.148678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618532, 12.488050, 15.079840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.622255, 12.824836, 15.295622>,  <19.624489, 13.026907, 15.425091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.622255, 12.824836, 15.295622>,  <19.618532, 12.488050, 15.079840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622255, 12.824836, 15.295622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459969, -0.482620, 0.745323,
		0.887886, 0.241195, -0.391769,
		0.009307, 0.841963, 0.539454,
		19.625048, 13.077425, 15.457458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308453, 12.437300, 15.442667>,  <19.618532, 12.488050, 15.079840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308453, 12.437300, 15.442667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.070246, 12.700454, 15.627079>,  <19.927322, 12.858346, 15.737726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.070246, 12.700454, 15.627079>,  <20.308453, 12.437300, 15.442667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070246, 12.700454, 15.627079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227734, -0.412095, 0.882221,
		0.770388, 0.630369, 0.095587,
		-0.595516, 0.657884, 0.461030,
		19.891590, 12.897820, 15.765388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.721104, 12.901272, 15.729930>,  <20.308453, 12.437300, 15.442667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.721104, 12.901272, 15.729930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381111, 12.893366, 15.940506>,  <20.177116, 12.888622, 16.066853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381111, 12.893366, 15.940506>,  <20.721104, 12.901272, 15.729930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381111, 12.893366, 15.940506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526310, 0.011757, 0.850212,
		-0.022993, 0.999736, 0.000409,
		-0.849982, -0.019764, 0.526441,
		20.126116, 12.887437, 16.098438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.421755, 12.916660, 15.571517>,  <20.721104, 12.901272, 15.729930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.421755, 12.916660, 15.571517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.783146, 13.088080, 15.568191>,  <21.999981, 13.190932, 15.566195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.783146, 13.088080, 15.568191>,  <21.421755, 12.916660, 15.571517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783146, 13.088080, 15.568191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130316, 0.293112, 0.947155,
		0.408344, -0.854650, 0.320668,
		0.903479, 0.428553, -0.008316,
		22.054190, 13.216645, 15.565696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568630, 12.916460, 16.253422>,  <21.421755, 12.916660, 15.571517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568630, 12.916460, 16.253422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.500250, 13.254677, 16.455742>,  <21.459223, 13.457607, 16.577133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.500250, 13.254677, 16.455742>,  <21.568630, 12.916460, 16.253422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500250, 13.254677, 16.455742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982913, -0.181915, -0.028097,
		0.068256, -0.501961, 0.862193,
		-0.170950, 0.845542, 0.505801,
		21.448965, 13.508340, 16.607483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013865, 12.862046, 16.790394>,  <21.568630, 12.916460, 16.253422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013865, 12.862046, 16.790394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.039656, 13.243588, 16.673090>,  <21.055130, 13.472514, 16.602707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.039656, 13.243588, 16.673090>,  <21.013865, 12.862046, 16.790394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039656, 13.243588, 16.673090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982844, 0.009812, -0.184181,
		-0.172804, 0.300106, 0.938123,
		0.064479, 0.953855, -0.293262,
		21.059000, 13.529745, 16.585112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460222, 13.348683, 17.184187>,  <21.013865, 12.862046, 16.790394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460222, 13.348683, 17.184187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.572102, 13.437313, 16.810518>,  <20.639229, 13.490491, 16.586317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.572102, 13.437313, 16.810518>,  <20.460222, 13.348683, 17.184187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572102, 13.437313, 16.810518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942924, -0.119763, -0.310725,
		-0.180728, 0.967761, 0.175429,
		0.279698, 0.221573, -0.934170,
		20.656012, 13.503785, 16.530268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476580, 14.066394, 17.337658>,  <20.460222, 13.348683, 17.184187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476580, 14.066394, 17.337658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.403076, 14.170677, 17.716764>,  <20.358974, 14.233247, 17.944229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.403076, 14.170677, 17.716764>,  <20.476580, 14.066394, 17.337658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403076, 14.170677, 17.716764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493175, 0.809599, -0.318321,
		-0.850300, -0.525910, -0.020198,
		-0.183760, 0.260707, 0.947768,
		20.347948, 14.248889, 18.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770735, 14.129771, 17.689804>,  <20.476580, 14.066394, 17.337658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770735, 14.129771, 17.689804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046585, 14.401390, 17.790449>,  <20.212095, 14.564362, 17.850836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.046585, 14.401390, 17.790449>,  <19.770735, 14.129771, 17.689804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046585, 14.401390, 17.790449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473608, 0.685764, -0.552652,
		-0.547823, 0.261959, 0.794523,
		0.689627, 0.679047, 0.251611,
		20.253473, 14.605104, 17.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577232, 14.834896, 17.906490>,  <19.770735, 14.129771, 17.689804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577232, 14.834896, 17.906490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.923662, 14.917883, 17.724558>,  <20.131519, 14.967675, 17.615398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.923662, 14.917883, 17.724558>,  <19.577232, 14.834896, 17.906490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923662, 14.917883, 17.724558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423706, 0.787477, -0.447608,
		0.265305, 0.580377, 0.769920,
		0.866075, 0.207467, -0.454831,
		20.183485, 14.980124, 17.588108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576527, 15.484267, 17.858780>,  <19.577232, 14.834896, 17.906490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576527, 15.484267, 17.858780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.886763, 15.394100, 17.622932>,  <20.072905, 15.340000, 17.481424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.886763, 15.394100, 17.622932>,  <19.576527, 15.484267, 17.858780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886763, 15.394100, 17.622932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124990, 0.860730, -0.493480,
		0.618740, 0.456434, 0.639397,
		0.775589, -0.225418, -0.589618,
		20.119440, 15.326475, 17.446047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.037983, 16.102446, 17.818359>,  <19.576527, 15.484267, 17.858780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.037983, 16.102446, 17.818359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.143040, 15.876189, 17.505676>,  <20.206074, 15.740436, 17.318066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.143040, 15.876189, 17.505676>,  <20.037983, 16.102446, 17.818359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143040, 15.876189, 17.505676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052117, 0.817284, -0.573873,
		0.963485, 0.109982, 0.244132,
		0.262640, -0.565642, -0.781709,
		20.221832, 15.706497, 17.271164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724482, 16.362978, 17.488991>,  <20.037983, 16.102446, 17.818359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724482, 16.362978, 17.488991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.517906, 16.167835, 17.207483>,  <20.393961, 16.050749, 17.038580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.517906, 16.167835, 17.207483>,  <20.724482, 16.362978, 17.488991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517906, 16.167835, 17.207483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177756, 0.742870, -0.645405,
		0.837673, -0.458410, -0.296926,
		-0.516437, -0.487857, -0.703767,
		20.362976, 16.021479, 16.996353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112764, 16.532215, 16.969488>,  <20.724482, 16.362978, 17.488991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112764, 16.532215, 16.969488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.757544, 16.429094, 16.817225>,  <20.544411, 16.367222, 16.725866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.757544, 16.429094, 16.817225>,  <21.112764, 16.532215, 16.969488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757544, 16.429094, 16.817225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091355, 0.712514, -0.695685,
		0.450574, -0.652580, -0.609198,
		-0.888053, -0.257804, -0.380657,
		20.491127, 16.351753, 16.703028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251698, 16.608761, 16.229454>,  <21.112764, 16.532215, 16.969488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251698, 16.608761, 16.229454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859751, 16.588951, 16.306822>,  <20.624582, 16.577065, 16.353243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859751, 16.588951, 16.306822>,  <21.251698, 16.608761, 16.229454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859751, 16.588951, 16.306822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173361, 0.691614, -0.701154,
		-0.099047, -0.720567, -0.686274,
		-0.979865, -0.049526, 0.193421,
		20.565792, 16.574093, 16.364847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981060, 16.729712, 15.556975>,  <21.251698, 16.608761, 16.229454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981060, 16.729712, 15.556975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675388, 16.806273, 15.803355>,  <20.491985, 16.852209, 15.951183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.675388, 16.806273, 15.803355>,  <20.981060, 16.729712, 15.556975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675388, 16.806273, 15.803355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379407, 0.638880, -0.669240,
		-0.521613, -0.745115, -0.415599,
		-0.764179, 0.191403, 0.615951,
		20.446135, 16.863693, 15.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.430143, 16.661385, 15.134072>,  <20.981060, 16.729712, 15.556975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.430143, 16.661385, 15.134072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259043, 16.888153, 15.415675>,  <20.156382, 17.024214, 15.584637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259043, 16.888153, 15.415675>,  <20.430143, 16.661385, 15.134072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259043, 16.888153, 15.415675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454536, 0.538307, -0.709663,
		-0.781296, -0.623558, 0.027425,
		-0.427753, 0.566923, 0.704007,
		20.130716, 17.058229, 15.626877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678394, 16.815552, 14.903663>,  <20.430143, 16.661385, 15.134072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678394, 16.815552, 14.903663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.805239, 17.103802, 15.150284>,  <19.881346, 17.276752, 15.298257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.805239, 17.103802, 15.150284>,  <19.678394, 16.815552, 14.903663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805239, 17.103802, 15.150284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448237, 0.686796, -0.572184,
		-0.835777, -0.094915, 0.540803,
		0.317113, 0.720626, 0.616553,
		19.900372, 17.319990, 15.335250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209993, 17.219353, 14.867991>,  <19.678394, 16.815552, 14.903663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209993, 17.219353, 14.867991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480379, 17.471731, 15.020295>,  <19.642611, 17.623158, 15.111677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.480379, 17.471731, 15.020295>,  <19.209993, 17.219353, 14.867991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480379, 17.471731, 15.020295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375203, 0.739362, -0.559076,
		-0.634265, 0.235055, 0.736517,
		0.675966, 0.630946, 0.380758,
		19.683168, 17.661015, 15.134522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887094, 17.810587, 14.975635>,  <19.209993, 17.219353, 14.867991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887094, 17.810587, 14.975635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.266516, 17.932346, 15.010473>,  <19.494169, 18.005402, 15.031377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.266516, 17.932346, 15.010473>,  <18.887094, 17.810587, 14.975635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266516, 17.932346, 15.010473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210383, 0.811557, -0.545082,
		-0.236605, 0.498716, 0.833847,
		0.948555, 0.304397, 0.087097,
		19.551083, 18.023664, 15.036602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.757727, 18.517344, 15.003908>,  <18.887094, 17.810587, 14.975635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.757727, 18.517344, 15.003908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.153978, 18.496483, 14.953414>,  <19.391729, 18.483967, 14.923118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.153978, 18.496483, 14.953414>,  <18.757727, 18.517344, 15.003908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153978, 18.496483, 14.953414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015714, 0.874588, -0.484612,
		0.135677, 0.482055, 0.865572,
		0.990629, -0.052149, -0.126236,
		19.451166, 18.480839, 14.915544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074482, 19.149103, 15.322495>,  <18.757727, 18.517344, 15.003908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074482, 19.149103, 15.322495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.293772, 18.986141, 15.030337>,  <19.425344, 18.888365, 14.855043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.293772, 18.986141, 15.030337>,  <19.074482, 19.149103, 15.322495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293772, 18.986141, 15.030337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028502, 0.881922, -0.470532,
		0.835846, 0.237139, 0.495102,
		0.548223, -0.407404, -0.730393,
		19.458239, 18.863920, 14.811219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.579395, 19.619072, 15.170094>,  <19.074482, 19.149103, 15.322495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.579395, 19.619072, 15.170094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.552090, 19.406841, 14.832140>,  <19.535706, 19.279503, 14.629368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.552090, 19.406841, 14.832140>,  <19.579395, 19.619072, 15.170094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552090, 19.406841, 14.832140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235558, 0.831487, -0.503132,
		0.969460, 0.164674, -0.181742,
		-0.068264, -0.530577, -0.844884,
		19.531610, 19.247667, 14.578675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.042915, 21.640694, 19.253839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663977, 21.760447, 19.299284>,  <16.436613, 21.832298, 19.326550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663977, 21.760447, 19.299284>,  <17.042915, 21.640694, 19.253839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.663977, 21.760447, 19.299284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310335, -0.770932, -0.556197,
		-0.078930, -0.562168, 0.823248,
		-0.947345, 0.299384, 0.113611,
		16.379774, 21.850262, 19.333366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619640, 20.996647, 19.459982>,  <17.042915, 21.640694, 19.253839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619640, 20.996647, 19.459982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336889, 21.251760, 19.337635>,  <16.167238, 21.404829, 19.264227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336889, 21.251760, 19.337635>,  <16.619640, 20.996647, 19.459982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.336889, 21.251760, 19.337635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478161, -0.749515, -0.457809,
		-0.521235, -0.177361, 0.834780,
		-0.706877, 0.637785, -0.305866,
		16.124826, 21.443096, 19.245874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894765, 20.703775, 19.500935>,  <16.619640, 20.996647, 19.459982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894765, 20.703775, 19.500935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833289, 21.013947, 19.255955>,  <15.796404, 21.200048, 19.108967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833289, 21.013947, 19.255955>,  <15.894765, 20.703775, 19.500935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833289, 21.013947, 19.255955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538953, -0.585282, -0.605785,
		-0.828197, 0.236979, 0.507869,
		-0.153689, 0.775426, -0.612449,
		15.787183, 21.246574, 19.072220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.210630, 20.737656, 19.325600>,  <15.894765, 20.703775, 19.500935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.210630, 20.737656, 19.325600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424158, 20.895515, 19.026459>,  <15.552275, 20.990232, 18.846973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424158, 20.895515, 19.026459>,  <15.210630, 20.737656, 19.325600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424158, 20.895515, 19.026459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593023, -0.455736, -0.663799,
		-0.602793, 0.797844, -0.009244,
		0.533820, 0.394652, -0.747854,
		15.584304, 21.013910, 18.802103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739557, 20.762562, 18.802574>,  <15.210630, 20.737656, 19.325600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739557, 20.762562, 18.802574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101194, 20.803429, 18.636597>,  <15.318176, 20.827950, 18.537010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101194, 20.803429, 18.636597>,  <14.739557, 20.762562, 18.802574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101194, 20.803429, 18.636597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263750, -0.630586, -0.729930,
		-0.336234, 0.769365, -0.543160,
		0.904092, 0.102169, -0.414945,
		15.372422, 20.834080, 18.512114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573214, 20.930649, 18.139256>,  <14.739557, 20.762562, 18.802574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573214, 20.930649, 18.139256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946408, 20.787207, 18.127001>,  <15.170325, 20.701141, 18.119648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946408, 20.787207, 18.127001>,  <14.573214, 20.930649, 18.139256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946408, 20.787207, 18.127001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273250, -0.650371, -0.708767,
		0.234243, 0.669642, -0.704777,
		0.932987, -0.358604, -0.030635,
		15.226304, 20.679625, 18.117811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923020, 21.070015, 17.434763>,  <14.573214, 20.930649, 18.139256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923020, 21.070015, 17.434763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096786, 20.756987, 17.613140>,  <15.201044, 20.569170, 17.720167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096786, 20.756987, 17.613140>,  <14.923020, 21.070015, 17.434763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096786, 20.756987, 17.613140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164351, -0.555658, -0.815005,
		0.885593, 0.280756, -0.370002,
		0.434412, -0.782573, 0.445944,
		15.227109, 20.522215, 17.746923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322527, 20.776701, 16.943840>,  <14.923020, 21.070015, 17.434763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322527, 20.776701, 16.943840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301607, 20.480181, 17.211493>,  <15.289056, 20.302269, 17.372084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301607, 20.480181, 17.211493>,  <15.322527, 20.776701, 16.943840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301607, 20.480181, 17.211493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144187, -0.657424, -0.739597,
		0.988168, -0.135160, -0.072503,
		-0.052299, -0.741300, 0.669133,
		15.285917, 20.257792, 17.412233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890215, 20.340662, 16.781498>,  <15.322527, 20.776701, 16.943840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890215, 20.340662, 16.781498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630963, 20.114365, 16.985405>,  <15.475412, 19.978586, 17.107750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.630963, 20.114365, 16.985405>,  <15.890215, 20.340662, 16.781498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630963, 20.114365, 16.985405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044202, -0.640324, -0.766832,
		0.760248, -0.519539, 0.390005,
		-0.648128, -0.565743, 0.509769,
		15.436524, 19.944641, 17.138336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136559, 19.684223, 16.701813>,  <15.890215, 20.340662, 16.781498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136559, 19.684223, 16.701813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760266, 19.621265, 16.821981>,  <15.534491, 19.583490, 16.894083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760266, 19.621265, 16.821981>,  <16.136559, 19.684223, 16.701813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760266, 19.621265, 16.821981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092874, -0.732387, -0.674524,
		0.326191, -0.662447, 0.674361,
		-0.940730, -0.157393, 0.300423,
		15.478047, 19.574047, 16.912107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134222, 18.948082, 16.649479>,  <16.136559, 19.684223, 16.701813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134222, 18.948082, 16.649479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745003, 19.038418, 16.668127>,  <15.511472, 19.092619, 16.679316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745003, 19.038418, 16.668127>,  <16.134222, 18.948082, 16.649479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745003, 19.038418, 16.668127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205734, -0.758857, -0.617908,
		-0.104170, -0.610845, 0.784867,
		-0.973048, 0.225842, 0.046621,
		15.453089, 19.106171, 16.682114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801707, 18.300209, 16.713640>,  <16.134222, 18.948082, 16.649479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801707, 18.300209, 16.713640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575865, 18.563362, 16.514277>,  <15.440359, 18.721254, 16.394659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575865, 18.563362, 16.514277>,  <15.801707, 18.300209, 16.713640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575865, 18.563362, 16.514277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246013, -0.710559, -0.659229,
		-0.787843, -0.249590, 0.563034,
		-0.564606, 0.657883, -0.498407,
		15.406483, 18.760727, 16.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983168, 18.103283, 16.031908>,  <15.801707, 18.300209, 16.713640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.983168, 18.103283, 16.031908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333139, 18.289434, 15.978357>,  <16.543123, 18.401125, 15.946227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333139, 18.289434, 15.978357>,  <15.983168, 18.103283, 16.031908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333139, 18.289434, 15.978357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484249, -0.839951, 0.244917,
		0.001529, -0.279115, -0.960256,
		0.874929, 0.465377, -0.133877,
		16.595617, 18.429049, 15.938194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390682, 17.704386, 15.625879>,  <15.983168, 18.103283, 16.031908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390682, 17.704386, 15.625879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628508, 17.924519, 15.860359>,  <16.771202, 18.056599, 16.001047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628508, 17.924519, 15.860359>,  <16.390682, 17.704386, 15.625879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628508, 17.924519, 15.860359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499921, -0.824030, 0.266558,
		0.629742, 0.134569, -0.765060,
		0.594562, 0.550332, 0.586200,
		16.806877, 18.089619, 16.036219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846388, 17.249115, 15.789643>,  <16.390682, 17.704386, 15.625879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846388, 17.249115, 15.789643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.037493, 16.908714, 15.876859>,  <16.152155, 16.704473, 15.929188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.037493, 16.908714, 15.876859>,  <15.846388, 17.249115, 15.789643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037493, 16.908714, 15.876859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208707, 0.131140, 0.969146,
		-0.853337, -0.508528, -0.114956,
		0.477763, -0.851001, 0.218040,
		16.180822, 16.653414, 15.942270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.476497, 16.853745, 16.186964>,  <15.846388, 17.249115, 15.789643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.476497, 16.853745, 16.186964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852197, 16.747370, 16.273764>,  <16.077618, 16.683546, 16.325844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852197, 16.747370, 16.273764>,  <15.476497, 16.853745, 16.186964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852197, 16.747370, 16.273764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150254, 0.249849, 0.956556,
		-0.308599, -0.931050, 0.194713,
		0.939250, -0.265936, 0.216997,
		16.133972, 16.667589, 16.338863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379301, 16.525003, 16.805473>,  <15.476497, 16.853745, 16.186964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379301, 16.525003, 16.805473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767466, 16.620562, 16.791451>,  <16.000364, 16.677896, 16.783037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767466, 16.620562, 16.791451>,  <15.379301, 16.525003, 16.805473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767466, 16.620562, 16.791451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024088, 0.240249, 0.970412,
		0.240249, -0.940856, 0.238895,
		-0.970412, -0.238895, 0.035056,
		16.058590, 16.692230, 16.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527679, 16.356730, 17.401592>,  <15.379301, 16.525003, 16.805473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527679, 16.356730, 17.401592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836638, 16.580509, 17.281315>,  <16.022015, 16.714777, 17.209148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836638, 16.580509, 17.281315>,  <15.527679, 16.356730, 17.401592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.836638, 16.580509, 17.281315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057295, 0.410124, 0.910228,
		0.632549, -0.720286, 0.284726,
		0.772398, 0.559451, -0.300693,
		16.068357, 16.748344, 17.191107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972622, 16.307020, 17.970179>,  <15.527679, 16.356730, 17.401592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972622, 16.307020, 17.970179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141945, 16.602062, 17.759752>,  <16.243538, 16.779087, 17.633495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141945, 16.602062, 17.759752>,  <15.972622, 16.307020, 17.970179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141945, 16.602062, 17.759752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282509, 0.444240, 0.850200,
		0.860813, -0.508515, -0.020331,
		0.423307, 0.737607, -0.526068,
		16.268936, 16.823345, 17.601933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575741, 16.523508, 18.433203>,  <15.972622, 16.307020, 17.970179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575741, 16.523508, 18.433203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542063, 16.808128, 18.154175>,  <16.521856, 16.978901, 17.986757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542063, 16.808128, 18.154175>,  <16.575741, 16.523508, 18.433203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542063, 16.808128, 18.154175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297503, 0.686077, 0.663921,
		0.951001, -0.151630, -0.269453,
		-0.084196, 0.711552, -0.697570,
		16.516804, 17.021593, 17.944904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105227, 16.968468, 18.571957>,  <16.575741, 16.523508, 18.433203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105227, 16.968468, 18.571957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817007, 17.192259, 18.408106>,  <16.644075, 17.326534, 18.309795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817007, 17.192259, 18.408106>,  <17.105227, 16.968468, 18.571957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817007, 17.192259, 18.408106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022856, 0.571263, 0.820449,
		0.693030, 0.600534, -0.398834,
		-0.720547, 0.559480, -0.409628,
		16.600843, 17.360104, 18.285217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284702, 17.566784, 18.836910>,  <17.105227, 16.968468, 18.571957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284702, 17.566784, 18.836910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901184, 17.590958, 18.725874>,  <16.671072, 17.605461, 18.659252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901184, 17.590958, 18.725874>,  <17.284702, 17.566784, 18.836910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901184, 17.590958, 18.725874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210071, 0.506983, 0.835966,
		0.191254, 0.859835, -0.473398,
		-0.958797, 0.060434, -0.277589,
		16.613544, 17.609087, 18.642597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083504, 18.295076, 18.917686>,  <17.284702, 17.566784, 18.836910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083504, 18.295076, 18.917686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740688, 18.088980, 18.918915>,  <16.535000, 17.965321, 18.919653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740688, 18.088980, 18.918915>,  <17.083504, 18.295076, 18.917686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740688, 18.088980, 18.918915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199139, 0.336728, 0.920303,
		-0.475215, 0.788123, -0.391194,
		-0.857038, -0.515244, 0.003072,
		16.483578, 17.934406, 18.919836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599648, 18.734755, 19.209341>,  <17.083504, 18.295076, 18.917686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599648, 18.734755, 19.209341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401562, 18.388819, 19.242363>,  <16.282711, 18.181257, 19.262177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401562, 18.388819, 19.242363>,  <16.599648, 18.734755, 19.209341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.401562, 18.388819, 19.242363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319818, 0.269828, 0.908245,
		-0.807763, 0.423373, -0.410214,
		-0.495214, -0.864840, 0.082555,
		16.252998, 18.129366, 19.267130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873657, 18.913040, 19.474075>,  <16.599648, 18.734755, 19.209341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873657, 18.913040, 19.474075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965439, 18.531158, 19.549854>,  <16.020508, 18.302029, 19.595322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965439, 18.531158, 19.549854>,  <15.873657, 18.913040, 19.474075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965439, 18.531158, 19.549854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123616, 0.164481, 0.978604,
		-0.965438, -0.247963, -0.080276,
		0.229454, -0.954704, 0.189448,
		16.034275, 18.244747, 19.606689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281442, 18.585758, 19.868870>,  <15.873657, 18.913040, 19.474075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281442, 18.585758, 19.868870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621799, 18.388075, 19.940132>,  <15.826013, 18.269464, 19.982889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621799, 18.388075, 19.940132>,  <15.281442, 18.585758, 19.868870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621799, 18.388075, 19.940132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222736, -0.032257, 0.974345,
		-0.475784, -0.868744, -0.137525,
		0.850893, -0.494209, 0.178154,
		15.877067, 18.239813, 19.993578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957654, 18.070761, 20.254482>,  <15.281442, 18.585758, 19.868870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.957654, 18.070761, 20.254482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353656, 18.073574, 20.310825>,  <15.591257, 18.075262, 20.344631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353656, 18.073574, 20.310825>,  <14.957654, 18.070761, 20.254482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.353656, 18.073574, 20.310825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140241, -0.056671, 0.988494,
		0.014935, -0.998368, -0.055119,
		0.990005, 0.007033, 0.140859,
		15.650658, 18.075684, 20.353083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.025429, 17.554592, 20.801821>,  <14.957654, 18.070761, 20.254482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.025429, 17.554592, 20.801821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364937, 17.766064, 20.798038>,  <15.568642, 17.892946, 20.795769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364937, 17.766064, 20.798038>,  <15.025429, 17.554592, 20.801821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364937, 17.766064, 20.798038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050341, 0.098593, 0.993854,
		0.526361, -0.843077, 0.110297,
		0.848770, 0.528679, -0.009454,
		15.619568, 17.924667, 20.795202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992473, 16.775042, 21.102160>,  <15.025429, 17.554592, 20.801821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992473, 16.775042, 21.102160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728703, 16.903982, 21.373821>,  <14.570440, 16.981346, 21.536818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728703, 16.903982, 21.373821>,  <14.992473, 16.775042, 21.102160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728703, 16.903982, 21.373821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701578, 0.060688, -0.710004,
		-0.270087, -0.944673, 0.186136,
		-0.659425, 0.322352, 0.679152,
		14.530875, 17.000689, 21.577566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390168, 16.290312, 21.221167>,  <14.992473, 16.775042, 21.102160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390168, 16.290312, 21.221167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247493, 16.649868, 21.322969>,  <14.161887, 16.865601, 21.384050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247493, 16.649868, 21.322969>,  <14.390168, 16.290312, 21.221167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247493, 16.649868, 21.322969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687119, -0.067845, -0.723370,
		-0.632962, -0.432893, 0.641843,
		-0.356688, 0.898888, 0.254505,
		14.140487, 16.919535, 21.399321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703287, 16.206928, 21.223852>,  <14.390168, 16.290312, 21.221167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703287, 16.206928, 21.223852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745021, 16.603912, 21.198114>,  <13.770061, 16.842102, 21.182671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745021, 16.603912, 21.198114>,  <13.703287, 16.206928, 21.223852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.745021, 16.603912, 21.198114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770917, 0.039829, -0.635690,
		-0.628333, 0.115930, 0.769258,
		0.104334, 0.992459, -0.064347,
		13.776321, 16.901649, 21.178810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022703, 16.462700, 21.203663>,  <13.703287, 16.206928, 21.223852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022703, 16.462700, 21.203663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199944, 16.797546, 21.075356>,  <13.306290, 16.998455, 20.998371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199944, 16.797546, 21.075356>,  <13.022703, 16.462700, 21.203663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199944, 16.797546, 21.075356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760744, 0.161826, -0.628555,
		-0.474265, 0.522539, 0.708538,
		0.443104, 0.837118, -0.320770,
		13.332875, 17.048681, 20.979124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.520920, 16.940899, 21.179071>,  <13.022703, 16.462700, 21.203663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.520920, 16.940899, 21.179071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.792765, 17.112148, 20.940798>,  <12.955872, 17.214899, 20.797834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.792765, 17.112148, 20.940798>,  <12.520920, 16.940899, 21.179071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792765, 17.112148, 20.940798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732106, 0.344536, -0.587635,
		-0.046347, 0.835466, 0.547584,
		0.679612, 0.428124, -0.595682,
		12.996648, 17.240585, 20.762093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153856, 17.435175, 21.020906>,  <12.520920, 16.940899, 21.179071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153856, 17.435175, 21.020906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451429, 17.415796, 20.754309>,  <12.629973, 17.404169, 20.594349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.451429, 17.415796, 20.754309>,  <12.153856, 17.435175, 21.020906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451429, 17.415796, 20.754309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662784, 0.073868, -0.745158,
		0.085335, 0.996090, 0.022841,
		0.743932, -0.048449, -0.666496,
		12.674609, 17.401262, 20.554359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.061342, 18.006657, 20.613392>,  <12.153856, 17.435175, 21.020906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.061342, 18.006657, 20.613392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.265414, 17.737617, 20.398979>,  <12.387857, 17.576195, 20.270332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.265414, 17.737617, 20.398979>,  <12.061342, 18.006657, 20.613392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.265414, 17.737617, 20.398979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779650, -0.098531, -0.618415,
		0.363128, 0.733421, -0.574658,
		0.510180, -0.672596, -0.536032,
		12.418468, 17.535839, 20.238169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082884, 18.287148, 19.932644>,  <12.061342, 18.006657, 20.613392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082884, 18.287148, 19.932644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.203947, 17.924849, 19.813974>,  <12.276586, 17.707468, 19.742773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.203947, 17.924849, 19.813974>,  <12.082884, 18.287148, 19.932644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203947, 17.924849, 19.813974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667525, 0.020738, -0.744299,
		0.680301, 0.423307, -0.598333,
		0.302659, -0.905749, -0.296675,
		12.294744, 17.653124, 19.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.314260, 18.213793, 19.167068>,  <12.082884, 18.287148, 19.932644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.314260, 18.213793, 19.167068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192931, 17.850965, 19.283840>,  <12.120133, 17.633268, 19.353903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192931, 17.850965, 19.283840>,  <12.314260, 18.213793, 19.167068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192931, 17.850965, 19.283840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501619, -0.108479, -0.858260,
		0.810169, -0.406768, -0.422098,
		-0.303324, -0.907068, 0.291929,
		12.101934, 17.578846, 19.371418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682944, 17.642126, 18.941727>,  <12.314260, 18.213793, 19.167068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682944, 17.642126, 18.941727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288163, 17.626554, 19.004221>,  <12.051294, 17.617212, 19.041718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288163, 17.626554, 19.004221>,  <12.682944, 17.642126, 18.941727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288163, 17.626554, 19.004221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159015, 0.083347, -0.983752,
		0.025269, -0.995760, -0.088449,
		-0.986952, -0.038923, 0.156234,
		11.992078, 17.614876, 19.051090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144678, 18.109219, 19.257519>,  <12.682944, 17.642126, 18.941727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144678, 18.109219, 19.257519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151278, 18.494370, 19.149746>,  <13.155237, 18.725460, 19.085081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151278, 18.494370, 19.149746>,  <13.144678, 18.109219, 19.257519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151278, 18.494370, 19.149746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925146, 0.087510, 0.369387,
		0.379252, -0.255360, -0.889359,
		0.016499, 0.962878, -0.269433,
		13.156227, 18.783234, 19.068916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909278, 18.239197, 19.924107>,  <13.144678, 18.109219, 19.257519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909278, 18.239197, 19.924107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011368, 18.536341, 20.171661>,  <13.072621, 18.714626, 20.320194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011368, 18.536341, 20.171661>,  <12.909278, 18.239197, 19.924107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011368, 18.536341, 20.171661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790437, 0.528939, -0.308923,
		-0.556839, -0.410345, 0.722182,
		0.255225, 0.742859, 0.618886,
		13.087935, 18.759199, 20.357327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.041147, 19.134029, 26.796299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.269431, 18.849335, 26.960114>,  <14.406402, 18.678518, 27.058403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.269431, 18.849335, 26.960114>,  <14.041147, 19.134029, 26.796299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.269431, 18.849335, 26.960114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080313, -0.544726, -0.834760,
		0.817215, 0.443514, -0.368042,
		0.570709, -0.711737, 0.409538,
		14.440644, 18.635813, 27.082975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583860, 19.019234, 26.312647>,  <14.041147, 19.134029, 26.796299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583860, 19.019234, 26.312647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.597267, 18.693573, 26.544521>,  <14.605311, 18.498177, 26.683645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.597267, 18.693573, 26.544521>,  <14.583860, 19.019234, 26.312647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597267, 18.693573, 26.544521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091450, -0.575081, -0.812970,
		0.995246, 0.080261, 0.055179,
		0.033517, -0.814150, 0.579686,
		14.607323, 18.449327, 26.718428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137513, 18.586954, 26.089308>,  <14.583860, 19.019234, 26.312647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137513, 18.586954, 26.089308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903810, 18.318764, 26.272219>,  <14.763588, 18.157848, 26.381966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.903810, 18.318764, 26.272219>,  <15.137513, 18.586954, 26.089308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903810, 18.318764, 26.272219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057794, -0.596391, -0.800610,
		0.809507, -0.441335, 0.387196,
		-0.584258, -0.670478, 0.457277,
		14.728532, 18.117620, 26.409401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462849, 17.826057, 26.079857>,  <15.137513, 18.586954, 26.089308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462849, 17.826057, 26.079857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.068354, 17.783272, 26.130283>,  <14.831656, 17.757601, 26.160540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.068354, 17.783272, 26.130283>,  <15.462849, 17.826057, 26.079857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068354, 17.783272, 26.130283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018890, -0.684619, -0.728656,
		0.164246, -0.721010, 0.673177,
		-0.986238, -0.106962, 0.126066,
		14.772482, 17.751183, 26.168102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418954, 17.168192, 25.748028>,  <15.462849, 17.826057, 26.079857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418954, 17.168192, 25.748028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.053234, 17.318279, 25.809046>,  <14.833802, 17.408331, 25.845657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.053234, 17.318279, 25.809046>,  <15.418954, 17.168192, 25.748028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053234, 17.318279, 25.809046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332291, -0.479504, -0.812193,
		-0.231602, -0.793277, 0.563092,
		-0.914299, 0.375216, 0.152545,
		14.778944, 17.430843, 25.854809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983055, 16.619673, 25.736444>,  <15.418954, 17.168192, 25.748028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983055, 16.619673, 25.736444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.750931, 16.924894, 25.622612>,  <14.611656, 17.108028, 25.554314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.750931, 16.924894, 25.622612>,  <14.983055, 16.619673, 25.736444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750931, 16.924894, 25.622612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137917, -0.436469, -0.889086,
		-0.802633, -0.476697, 0.358525,
		-0.580310, 0.763056, -0.284580,
		14.576838, 17.153811, 25.537239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458876, 16.250610, 25.401052>,  <14.983055, 16.619673, 25.736444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458876, 16.250610, 25.401052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.441751, 16.633047, 25.285086>,  <14.431476, 16.862511, 25.215506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.441751, 16.633047, 25.285086>,  <14.458876, 16.250610, 25.401052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.441751, 16.633047, 25.285086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136095, -0.293057, -0.946359,
		-0.989770, -0.001060, 0.142666,
		-0.042812, 0.956094, -0.289915,
		14.428906, 16.919876, 25.198111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925880, 16.259388, 24.761124>,  <14.458876, 16.250610, 25.401052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925880, 16.259388, 24.761124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.120152, 16.605106, 24.708811>,  <14.236715, 16.812538, 24.677423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.120152, 16.605106, 24.708811>,  <13.925880, 16.259388, 24.761124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120152, 16.605106, 24.708811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019678, -0.160388, -0.986858,
		-0.873916, 0.476723, -0.094905,
		0.485679, 0.864298, -0.130784,
		14.265856, 16.864395, 24.669575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548512, 16.661287, 24.267218>,  <13.925880, 16.259388, 24.761124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548512, 16.661287, 24.267218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.907688, 16.836016, 24.245718>,  <14.123194, 16.940853, 24.232819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.907688, 16.836016, 24.245718>,  <13.548512, 16.661287, 24.267218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907688, 16.836016, 24.245718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050071, -0.019942, -0.998547,
		-0.437256, 0.899328, 0.003965,
		0.897942, 0.436819, -0.053750,
		14.177071, 16.967062, 24.229593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458344, 17.269297, 23.800653>,  <13.548512, 16.661287, 24.267218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458344, 17.269297, 23.800653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.848024, 17.179058, 23.798115>,  <14.081833, 17.124914, 23.796593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.848024, 17.179058, 23.798115>,  <13.458344, 17.269297, 23.800653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848024, 17.179058, 23.798115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020211, 0.115215, -0.993135,
		0.224778, 0.967384, 0.116803,
		0.974200, -0.225596, -0.006346,
		14.140285, 17.111380, 23.796211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855613, 17.827744, 23.410515>,  <13.458344, 17.269297, 23.800653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855613, 17.827744, 23.410515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.135437, 17.542101, 23.420860>,  <14.303331, 17.370716, 23.427069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.135437, 17.542101, 23.420860>,  <13.855613, 17.827744, 23.410515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135437, 17.542101, 23.420860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194986, 0.155941, -0.968330,
		0.687455, 0.682449, 0.248331,
		0.699561, -0.714104, 0.025865,
		14.345305, 17.327869, 23.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481256, 18.123835, 23.156509>,  <13.855613, 17.827744, 23.410515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.481256, 18.123835, 23.156509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.523973, 17.730518, 23.097538>,  <14.549604, 17.494528, 23.062155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.523973, 17.730518, 23.097538>,  <14.481256, 18.123835, 23.156509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523973, 17.730518, 23.097538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283818, 0.172257, -0.943279,
		0.952912, 0.058895, 0.297472,
		0.106796, -0.983290, -0.147430,
		14.556012, 17.435532, 23.053308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020875, 18.126543, 22.701056>,  <14.481256, 18.123835, 23.156509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020875, 18.126543, 22.701056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.862563, 17.760397, 22.671486>,  <14.767576, 17.540709, 22.653744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.862563, 17.760397, 22.671486>,  <15.020875, 18.126543, 22.701056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862563, 17.760397, 22.671486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238164, -0.024564, -0.970914,
		0.886926, -0.401873, 0.227729,
		-0.395779, -0.915366, -0.073925,
		14.743830, 17.485786, 22.649309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491639, 17.807707, 22.241787>,  <15.020875, 18.126543, 22.701056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491639, 17.807707, 22.241787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.131654, 17.633650, 22.231054>,  <14.915663, 17.529217, 22.224615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.131654, 17.633650, 22.231054>,  <15.491639, 17.807707, 22.241787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131654, 17.633650, 22.231054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076404, 0.218009, -0.972952,
		0.429221, -0.873570, -0.229446,
		-0.899962, -0.435142, -0.026830,
		14.861665, 17.503107, 22.223005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556267, 17.398285, 21.611965>,  <15.491639, 17.807707, 22.241787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.556267, 17.398285, 21.611965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.666897, 17.733263, 21.423416>,  <15.733275, 17.934250, 21.310287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.666897, 17.733263, 21.423416>,  <15.556267, 17.398285, 21.611965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666897, 17.733263, 21.423416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136633, 0.451253, 0.881874,
		0.951230, -0.308309, 0.010383,
		0.276576, 0.837446, -0.471370,
		15.749869, 17.984497, 21.282005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189234, 17.689968, 21.770035>,  <15.556267, 17.398285, 21.611965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189234, 17.689968, 21.770035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.937734, 17.997908, 21.726210>,  <15.786834, 18.182673, 21.699915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.937734, 17.997908, 21.726210>,  <16.189234, 17.689968, 21.770035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.937734, 17.997908, 21.726210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362136, 0.414577, 0.834855,
		0.688135, 0.485239, -0.539456,
		-0.628751, 0.769850, -0.109562,
		15.749108, 18.228863, 21.693340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427332, 18.184845, 22.324486>,  <16.189234, 17.689968, 21.770035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427332, 18.184845, 22.324486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137022, 18.407644, 22.162991>,  <15.962836, 18.541325, 22.066093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137022, 18.407644, 22.162991>,  <16.427332, 18.184845, 22.324486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137022, 18.407644, 22.162991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089103, 0.658053, 0.747681,
		0.682139, 0.506673, -0.527228,
		-0.725774, 0.557000, -0.403737,
		15.919290, 18.574745, 22.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682901, 18.867527, 22.213488>,  <16.427332, 18.184845, 22.324486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682901, 18.867527, 22.213488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.285549, 18.907360, 22.236387>,  <16.047138, 18.931259, 22.250128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.285549, 18.907360, 22.236387>,  <16.682901, 18.867527, 22.213488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285549, 18.907360, 22.236387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113115, 0.761352, 0.638395,
		0.019985, 0.640645, -0.767577,
		-0.993381, 0.099583, 0.057251,
		15.987535, 18.937235, 22.253563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496471, 19.556360, 22.122065>,  <16.682901, 18.867527, 22.213488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496471, 19.556360, 22.122065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.182896, 19.395420, 22.311190>,  <15.994750, 19.298857, 22.424665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.182896, 19.395420, 22.311190>,  <16.496471, 19.556360, 22.122065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182896, 19.395420, 22.311190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067343, 0.701974, 0.709012,
		-0.617173, 0.587664, -0.523210,
		-0.783940, -0.402348, 0.472814,
		15.947714, 19.274715, 22.453033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243078, 20.149977, 22.412346>,  <16.496471, 19.556360, 22.122065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243078, 20.149977, 22.412346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.085798, 19.826994, 22.588259>,  <15.991431, 19.633204, 22.693806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.085798, 19.826994, 22.588259>,  <16.243078, 20.149977, 22.412346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085798, 19.826994, 22.588259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075631, 0.448284, 0.890686,
		-0.916338, 0.383477, -0.115195,
		-0.393198, -0.807457, 0.439783,
		15.967839, 19.584757, 22.720194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739714, 20.425606, 22.754108>,  <16.243078, 20.149977, 22.412346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739714, 20.425606, 22.754108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.829519, 20.070452, 22.914734>,  <15.883403, 19.857359, 23.011108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.829519, 20.070452, 22.914734>,  <15.739714, 20.425606, 22.754108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.829519, 20.070452, 22.914734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065309, 0.424867, 0.902897,
		-0.972280, -0.176488, 0.153376,
		0.224515, -0.887885, 0.401563,
		15.896873, 19.804087, 23.035202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322742, 20.389557, 23.337936>,  <15.739714, 20.425606, 22.754108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322742, 20.389557, 23.337936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.605539, 20.127451, 23.444365>,  <15.775217, 19.970188, 23.508221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.605539, 20.127451, 23.444365>,  <15.322742, 20.389557, 23.337936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605539, 20.127451, 23.444365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033364, 0.406701, 0.912952,
		-0.706434, -0.636573, 0.309396,
		0.706992, -0.655263, 0.266069,
		15.817637, 19.930872, 23.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183847, 20.243500, 24.060024>,  <15.322742, 20.389557, 23.337936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183847, 20.243500, 24.060024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.564226, 20.153507, 23.975092>,  <15.792453, 20.099512, 23.924131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.564226, 20.153507, 23.975092>,  <15.183847, 20.243500, 24.060024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564226, 20.153507, 23.975092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293386, 0.438195, 0.849653,
		-0.098115, -0.870269, 0.482706,
		0.950946, -0.224983, -0.212332,
		15.849510, 20.086012, 23.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393162, 19.893431, 24.584492>,  <15.183847, 20.243500, 24.060024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393162, 19.893431, 24.584492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.729014, 20.038860, 24.423080>,  <15.930526, 20.126118, 24.326233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.729014, 20.038860, 24.423080>,  <15.393162, 19.893431, 24.584492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729014, 20.038860, 24.423080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292054, 0.324195, 0.899779,
		0.457959, -0.873333, 0.166021,
		0.839630, 0.363575, -0.403528,
		15.980904, 20.147932, 24.302023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823875, 19.790588, 25.179680>,  <15.393162, 19.893431, 24.584492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823875, 19.790588, 25.179680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.038509, 19.997770, 24.913206>,  <16.167290, 20.122080, 24.753323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.038509, 19.997770, 24.913206>,  <15.823875, 19.790588, 25.179680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038509, 19.997770, 24.913206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498282, 0.442648, 0.745504,
		0.681022, -0.731973, -0.020569,
		0.536585, 0.517954, -0.666183,
		16.199486, 20.153156, 24.713350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578571, 19.791037, 25.415037>,  <15.823875, 19.790588, 25.179680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578571, 19.791037, 25.415037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500572, 20.103508, 25.177809>,  <16.453772, 20.290991, 25.035471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500572, 20.103508, 25.177809>,  <16.578571, 19.791037, 25.415037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500572, 20.103508, 25.177809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346112, 0.620585, 0.703619,
		0.917705, -0.068063, -0.391389,
		-0.195000, 0.781179, -0.593072,
		16.442072, 20.337862, 24.999887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219246, 20.083727, 25.416912>,  <16.578571, 19.791037, 25.415037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219246, 20.083727, 25.416912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.954815, 20.353376, 25.285133>,  <16.796156, 20.515165, 25.206066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.954815, 20.353376, 25.285133>,  <17.219246, 20.083727, 25.416912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954815, 20.353376, 25.285133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316646, 0.648715, 0.692029,
		0.680229, 0.353167, -0.642309,
		-0.661077, 0.674123, -0.329446,
		16.756493, 20.555613, 25.186300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.606703, 20.716814, 25.379538>,  <17.219246, 20.083727, 25.416912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.606703, 20.716814, 25.379538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.223629, 20.827648, 25.410685>,  <16.993784, 20.894148, 25.429373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.223629, 20.827648, 25.410685>,  <17.606703, 20.716814, 25.379538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.223629, 20.827648, 25.410685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252179, 0.677419, 0.691020,
		0.138722, 0.681416, -0.718629,
		-0.957686, 0.277083, 0.077866,
		16.936323, 20.910772, 25.434044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.745236, 24.886480, 26.453434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.059887, 24.681139, 26.316212>,  <11.248677, 24.557934, 26.233879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.059887, 24.681139, 26.316212>,  <10.745236, 24.886480, 26.453434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.059887, 24.681139, 26.316212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423797, -0.044853, -0.904646,
		0.449015, 0.857005, -0.252840,
		0.786627, -0.513352, -0.343056,
		11.295875, 24.527134, 26.213295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.926694, 25.134430, 25.732580>,  <10.745236, 24.886480, 26.453434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.926694, 25.134430, 25.732580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073588, 24.766434, 25.787367>,  <11.161725, 24.545637, 25.820238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073588, 24.766434, 25.787367>,  <10.926694, 25.134430, 25.732580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073588, 24.766434, 25.787367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308256, -0.259311, -0.915279,
		0.877563, 0.293903, -0.378820,
		0.367236, -0.919989, 0.136965,
		11.183759, 24.490437, 25.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173948, 24.944460, 25.020378>,  <10.926694, 25.134430, 25.732580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173948, 24.944460, 25.020378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.178455, 24.577961, 25.180561>,  <11.181160, 24.358063, 25.276670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.178455, 24.577961, 25.180561>,  <11.173948, 24.944460, 25.020378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.178455, 24.577961, 25.180561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100808, -0.399482, -0.911182,
		0.994842, -0.030102, -0.096866,
		0.011268, -0.916247, 0.400457,
		11.181836, 24.303087, 25.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674956, 24.564669, 24.619049>,  <11.173948, 24.944460, 25.020378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674956, 24.564669, 24.619049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.461407, 24.275637, 24.794712>,  <11.333277, 24.102217, 24.900110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.461407, 24.275637, 24.794712>,  <11.674956, 24.564669, 24.619049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461407, 24.275637, 24.794712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020409, -0.508201, -0.860996,
		0.845318, -0.468626, 0.256568,
		-0.533873, -0.722580, 0.439156,
		11.301245, 24.058863, 24.926458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.008490, 23.912096, 24.430630>,  <11.674956, 24.564669, 24.619049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.008490, 23.912096, 24.430630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630774, 23.823360, 24.527876>,  <11.404144, 23.770119, 24.586224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630774, 23.823360, 24.527876>,  <12.008490, 23.912096, 24.430630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630774, 23.823360, 24.527876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132034, -0.421293, -0.897262,
		0.301469, -0.879375, 0.368533,
		-0.944290, -0.221838, 0.243114,
		11.347486, 23.756809, 24.600811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942665, 23.287666, 24.282774>,  <12.008490, 23.912096, 24.430630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942665, 23.287666, 24.282774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.563979, 23.416178, 24.273712>,  <11.336768, 23.493284, 24.268274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.563979, 23.416178, 24.273712>,  <11.942665, 23.287666, 24.282774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.563979, 23.416178, 24.273712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089846, -0.330993, -0.939346,
		-0.309282, -0.887259, 0.342221,
		-0.946717, 0.321271, -0.022653,
		11.279964, 23.512562, 24.266916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574669, 22.723610, 23.914215>,  <11.942665, 23.287666, 24.282774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574669, 22.723610, 23.914215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.341307, 23.047987, 23.896294>,  <11.201289, 23.242613, 23.885540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.341307, 23.047987, 23.896294>,  <11.574669, 22.723610, 23.914215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341307, 23.047987, 23.896294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337853, -0.292482, -0.894600,
		-0.738576, -0.506777, 0.444615,
		-0.583404, 0.810945, -0.044804,
		11.166286, 23.291271, 23.882853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.964355, 22.466410, 23.543039>,  <11.574669, 22.723610, 23.914215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.964355, 22.466410, 23.543039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.981067, 22.862606, 23.490614>,  <10.991094, 23.100325, 23.459158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.981067, 22.862606, 23.490614>,  <10.964355, 22.466410, 23.543039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.981067, 22.862606, 23.490614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159757, -0.122869, -0.979480,
		-0.986272, 0.061860, 0.153105,
		0.041779, 0.990493, -0.131065,
		10.993601, 23.159754, 23.451294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.360441, 22.743883, 23.048260>,  <10.964355, 22.466410, 23.543039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.360441, 22.743883, 23.048260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.653354, 23.015850, 23.032894>,  <10.829102, 23.179029, 23.023674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.653354, 23.015850, 23.032894>,  <10.360441, 22.743883, 23.048260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.653354, 23.015850, 23.032894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140576, 0.095725, -0.985431,
		-0.666335, 0.727013, 0.165678,
		0.732281, 0.679918, -0.038416,
		10.873038, 23.219826, 23.021370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166439, 23.366085, 22.566521>,  <10.360441, 22.743883, 23.048260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166439, 23.366085, 22.566521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.563458, 23.385445, 22.611254>,  <10.801670, 23.397060, 22.638094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.563458, 23.385445, 22.611254>,  <10.166439, 23.366085, 22.566521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.563458, 23.385445, 22.611254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104940, 0.127030, -0.986332,
		-0.061941, 0.990718, 0.121004,
		0.992548, 0.048397, 0.111834,
		10.861223, 23.399963, 22.644804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411201, 23.935207, 22.207708>,  <10.166439, 23.366085, 22.566521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411201, 23.935207, 22.207708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.734168, 23.700266, 22.229937>,  <10.927949, 23.559301, 22.243275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.734168, 23.700266, 22.229937>,  <10.411201, 23.935207, 22.207708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.734168, 23.700266, 22.229937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081051, 0.017129, -0.996563,
		0.584384, 0.809149, 0.061435,
		0.807420, -0.587354, 0.055573,
		10.976394, 23.524059, 22.246609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.819601, 24.160921, 21.746000>,  <10.411201, 23.935207, 22.207708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.819601, 24.160921, 21.746000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.961019, 23.788647, 21.783583>,  <11.045869, 23.565281, 21.806131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.961019, 23.788647, 21.783583>,  <10.819601, 24.160921, 21.746000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961019, 23.788647, 21.783583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011024, -0.104579, -0.994456,
		0.935353, 0.350548, -0.047233,
		0.353544, -0.930687, 0.093954,
		11.067081, 23.509441, 21.811769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320086, 24.100256, 21.182184>,  <10.819601, 24.160921, 21.746000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320086, 24.100256, 21.182184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270395, 23.723608, 21.307354>,  <11.240582, 23.497620, 21.382456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270395, 23.723608, 21.307354>,  <11.320086, 24.100256, 21.182184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.270395, 23.723608, 21.307354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291276, -0.266868, -0.918662,
		0.948539, -0.205268, -0.241119,
		-0.124225, -0.941619, 0.312925,
		11.233128, 23.441122, 21.401232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.678832, 23.715071, 20.711128>,  <11.320086, 24.100256, 21.182184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.678832, 23.715071, 20.711128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.416374, 23.458681, 20.870440>,  <11.258900, 23.304848, 20.966026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.416374, 23.458681, 20.870440>,  <11.678832, 23.715071, 20.711128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.416374, 23.458681, 20.870440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246043, -0.317229, -0.915876,
		0.713399, -0.698940, 0.050440,
		-0.656144, -0.640975, 0.398280,
		11.219531, 23.266388, 20.989923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283724, 23.405266, 20.630371>,  <11.678832, 23.715071, 20.711128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.283724, 23.405266, 20.630371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.581850, 23.592997, 20.440958>,  <12.760726, 23.705635, 20.327311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.581850, 23.592997, 20.440958>,  <12.283724, 23.405266, 20.630371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581850, 23.592997, 20.440958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245165, 0.467560, 0.849283,
		0.619999, -0.749078, 0.233417,
		0.745315, 0.469329, -0.473534,
		12.805445, 23.733795, 20.298899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769053, 23.551985, 21.185444>,  <12.283724, 23.405266, 20.630371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769053, 23.551985, 21.185444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.888123, 23.783842, 20.882023>,  <12.959564, 23.922956, 20.699970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.888123, 23.783842, 20.882023>,  <12.769053, 23.551985, 21.185444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.888123, 23.783842, 20.882023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273524, 0.709480, 0.649479,
		0.914645, -0.400815, 0.052646,
		0.297673, 0.579643, -0.758555,
		12.977425, 23.957735, 20.654457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532295, 23.657253, 21.143377>,  <12.769053, 23.551985, 21.185444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532295, 23.657253, 21.143377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.357075, 23.970154, 20.966202>,  <13.251943, 24.157894, 20.859896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.357075, 23.970154, 20.966202>,  <13.532295, 23.657253, 21.143377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357075, 23.970154, 20.966202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302545, 0.592275, 0.746778,
		0.846509, 0.193118, -0.496113,
		-0.438052, 0.782251, -0.442939,
		13.225659, 24.204828, 20.833321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040071, 24.113588, 20.879118>,  <13.532295, 23.657253, 21.143377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040071, 24.113588, 20.879118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.699384, 24.295355, 20.983490>,  <13.494972, 24.404415, 21.046114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.699384, 24.295355, 20.983490>,  <14.040071, 24.113588, 20.879118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699384, 24.295355, 20.983490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481288, 0.481478, 0.732490,
		0.207222, 0.749457, -0.628788,
		-0.851716, 0.454416, 0.260931,
		13.443869, 24.431679, 21.061769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374315, 24.784159, 21.331921>,  <14.040071, 24.113588, 20.879118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374315, 24.784159, 21.331921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.976532, 24.825808, 21.326084>,  <13.737863, 24.850796, 21.322582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.976532, 24.825808, 21.326084>,  <14.374315, 24.784159, 21.331921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976532, 24.825808, 21.326084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016108, 0.288016, 0.957490,
		0.103897, 0.951948, -0.288097,
		-0.994458, 0.104121, -0.014590,
		13.678195, 24.857044, 21.321707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230884, 25.499197, 21.536243>,  <14.374315, 24.784159, 21.331921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230884, 25.499197, 21.536243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926539, 25.254915, 21.623999>,  <13.743933, 25.108345, 21.676651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926539, 25.254915, 21.623999>,  <14.230884, 25.499197, 21.536243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926539, 25.254915, 21.623999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098136, 0.225905, 0.969194,
		-0.641452, 0.758950, -0.111950,
		-0.760860, -0.610705, 0.219387,
		13.698281, 25.071703, 21.689816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849675, 25.927877, 21.911497>,  <14.230884, 25.499197, 21.536243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849675, 25.927877, 21.911497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.689899, 25.574358, 22.008942>,  <13.594034, 25.362246, 22.067408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.689899, 25.574358, 22.008942>,  <13.849675, 25.927877, 21.911497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689899, 25.574358, 22.008942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180397, 0.184761, 0.966085,
		-0.898835, 0.429840, 0.085633,
		-0.399440, -0.883799, 0.243611,
		13.570067, 25.309217, 22.082026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339387, 26.081007, 22.459684>,  <13.849675, 25.927877, 21.911497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339387, 26.081007, 22.459684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.462077, 25.701954, 22.495270>,  <13.535691, 25.474522, 22.516621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.462077, 25.701954, 22.495270>,  <13.339387, 26.081007, 22.459684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462077, 25.701954, 22.495270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115974, 0.129984, 0.984710,
		-0.944706, -0.291718, 0.149770,
		0.306726, -0.947631, 0.088965,
		13.554095, 25.417665, 22.521959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.180085, 25.882225, 23.147858>,  <13.339387, 26.081007, 22.459684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.180085, 25.882225, 23.147858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.430408, 25.584541, 23.054459>,  <13.580601, 25.405931, 22.998419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.430408, 25.584541, 23.054459>,  <13.180085, 25.882225, 23.147858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.430408, 25.584541, 23.054459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381004, 0.030455, 0.924071,
		-0.680590, -0.667254, 0.302605,
		0.625806, -0.744207, -0.233499,
		13.618150, 25.361279, 22.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109918, 25.420662, 23.699175>,  <13.180085, 25.882225, 23.147858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109918, 25.420662, 23.699175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.470806, 25.336851, 23.548393>,  <13.687339, 25.286566, 23.457924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.470806, 25.336851, 23.548393>,  <13.109918, 25.420662, 23.699175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470806, 25.336851, 23.548393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385756, 0.001226, 0.922600,
		-0.192847, -0.977802, 0.081932,
		0.902220, -0.209526, -0.376956,
		13.741472, 25.273993, 23.435307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320910, 24.813314, 24.058958>,  <13.109918, 25.420662, 23.699175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320910, 24.813314, 24.058958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.652790, 24.968851, 23.898758>,  <13.851918, 25.062172, 23.802639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.652790, 24.968851, 23.898758>,  <13.320910, 24.813314, 24.058958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652790, 24.968851, 23.898758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366881, 0.160876, 0.916251,
		0.420707, -0.907150, -0.009179,
		0.829701, 0.388841, -0.400498,
		13.901700, 25.085503, 23.778608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853333, 24.457951, 24.415724>,  <13.320910, 24.813314, 24.058958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853333, 24.457951, 24.415724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986166, 24.800432, 24.257416>,  <14.065866, 25.005922, 24.162430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986166, 24.800432, 24.257416>,  <13.853333, 24.457951, 24.415724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986166, 24.800432, 24.257416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571188, 0.151369, 0.806741,
		0.750643, -0.493964, -0.438787,
		0.332082, 0.856205, -0.395771,
		14.085791, 25.057293, 24.138685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.567476, 24.439075, 24.536074>,  <13.853333, 24.457951, 24.415724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.567476, 24.439075, 24.536074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.463687, 24.818787, 24.465029>,  <14.401413, 25.046614, 24.422401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.463687, 24.818787, 24.465029>,  <14.567476, 24.439075, 24.536074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.463687, 24.818787, 24.465029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410011, 0.274793, 0.869701,
		0.874393, 0.152843, -0.460516,
		-0.259474, 0.949277, -0.177610,
		14.385844, 25.103569, 24.411745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233612, 24.822388, 24.529612>,  <14.567476, 24.439075, 24.536074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233612, 24.822388, 24.529612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.946015, 25.081875, 24.629381>,  <14.773458, 25.237568, 24.689243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.946015, 25.081875, 24.629381>,  <15.233612, 24.822388, 24.529612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946015, 25.081875, 24.629381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472019, 0.192356, 0.860347,
		0.510145, 0.736316, -0.444511,
		-0.718992, 0.648720, 0.249426,
		14.730318, 25.276491, 24.704208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879357, 24.789532, 24.243662>,  <15.233612, 24.822388, 24.529612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879357, 24.789532, 24.243662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.121098, 24.478697, 24.313972>,  <16.266142, 24.292196, 24.356159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.121098, 24.478697, 24.313972>,  <15.879357, 24.789532, 24.243662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121098, 24.478697, 24.313972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207102, -0.366269, -0.907169,
		0.769330, 0.511845, -0.382291,
		0.604351, -0.777086, 0.175777,
		16.302402, 24.245571, 24.366705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079115, 24.821127, 23.674141>,  <15.879357, 24.789532, 24.243662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079115, 24.821127, 23.674141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229496, 24.467846, 23.786291>,  <16.319725, 24.255877, 23.853580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229496, 24.467846, 23.786291>,  <16.079115, 24.821127, 23.674141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229496, 24.467846, 23.786291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264454, -0.187724, -0.945951,
		0.888102, 0.429778, 0.162992,
		0.375951, -0.883205, 0.280375,
		16.342281, 24.202885, 23.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817068, 24.728939, 23.449465>,  <16.079115, 24.821127, 23.674141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817068, 24.728939, 23.449465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667494, 24.362282, 23.505938>,  <16.577749, 24.142286, 23.539822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667494, 24.362282, 23.505938>,  <16.817068, 24.728939, 23.449465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667494, 24.362282, 23.505938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239835, -0.242618, -0.940009,
		0.895907, -0.317644, 0.310567,
		-0.373937, -0.916646, 0.141181,
		16.555313, 24.087288, 23.548292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336374, 24.224251, 23.305208>,  <16.817068, 24.728939, 23.449465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336374, 24.224251, 23.305208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.974194, 24.066109, 23.243429>,  <16.756886, 23.971224, 23.206362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.974194, 24.066109, 23.243429>,  <17.336374, 24.224251, 23.305208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974194, 24.066109, 23.243429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351845, -0.495585, -0.794104,
		0.237411, -0.773363, 0.587831,
		-0.905451, -0.395355, -0.154446,
		16.702559, 23.947502, 23.197096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499334, 23.538654, 22.960308>,  <17.336374, 24.224251, 23.305208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499334, 23.538654, 22.960308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.109291, 23.601290, 22.897512>,  <16.875265, 23.638870, 22.859835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.109291, 23.601290, 22.897512>,  <17.499334, 23.538654, 22.960308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109291, 23.601290, 22.897512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091205, -0.362102, -0.927666,
		-0.202106, -0.918892, 0.338807,
		-0.975108, 0.156586, -0.156990,
		16.816759, 23.648266, 22.850416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205484, 22.967485, 22.683372>,  <17.499334, 23.538654, 22.960308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205484, 22.967485, 22.683372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.932508, 23.227644, 22.549950>,  <16.768723, 23.383739, 22.469896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.932508, 23.227644, 22.549950>,  <17.205484, 22.967485, 22.683372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.932508, 23.227644, 22.549950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063096, -0.507054, -0.859602,
		-0.728213, -0.565581, 0.387071,
		-0.682440, 0.650396, -0.333557,
		16.727776, 23.422762, 22.449883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636677, 22.615057, 22.318953>,  <17.205484, 22.967485, 22.683372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636677, 22.615057, 22.318953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.558884, 22.992218, 22.210800>,  <16.512207, 23.218515, 22.145908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.558884, 22.992218, 22.210800>,  <16.636677, 22.615057, 22.318953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.558884, 22.992218, 22.210800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141886, -0.299788, -0.943396,
		-0.970590, -0.145113, 0.192089,
		-0.194485, 0.942905, -0.270381,
		16.500538, 23.275089, 22.129686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119169, 22.541492, 21.751728>,  <16.636677, 22.615057, 22.318953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.119169, 22.541492, 21.751728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.242342, 22.918020, 21.696457>,  <16.316246, 23.143938, 21.663294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.242342, 22.918020, 21.696457>,  <16.119169, 22.541492, 21.751728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242342, 22.918020, 21.696457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165587, -0.089993, -0.982080,
		-0.936887, 0.325295, 0.128159,
		0.307933, 0.941320, -0.138178,
		16.334723, 23.200417, 21.655005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580652, 22.912382, 21.410475>,  <16.119169, 22.541492, 21.751728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580652, 22.912382, 21.410475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933541, 23.089392, 21.346157>,  <16.145275, 23.195597, 21.307568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933541, 23.089392, 21.346157>,  <15.580652, 22.912382, 21.410475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933541, 23.089392, 21.346157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106452, -0.145193, -0.983660,
		-0.458638, 0.884925, -0.080985,
		0.882224, 0.442523, -0.160793,
		16.198208, 23.222149, 21.297918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467525, 23.342165, 20.838993>,  <15.580652, 22.912382, 21.410475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467525, 23.342165, 20.838993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.864642, 23.301762, 20.864790>,  <16.102913, 23.277519, 20.880268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.864642, 23.301762, 20.864790>,  <15.467525, 23.342165, 20.838993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.864642, 23.301762, 20.864790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029229, -0.317826, -0.947699,
		0.116223, 0.942753, -0.312583,
		0.992793, -0.101008, 0.064495,
		16.162479, 23.271460, 20.884138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791760, 23.716301, 20.300436>,  <15.467525, 23.342165, 20.838993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791760, 23.716301, 20.300436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.028870, 23.420311, 20.427595>,  <16.171135, 23.242718, 20.503891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.028870, 23.420311, 20.427595>,  <15.791760, 23.716301, 20.300436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028870, 23.420311, 20.427595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091922, -0.329980, -0.939502,
		0.800107, 0.586133, -0.127583,
		0.592772, -0.739974, 0.317898,
		16.206701, 23.198318, 20.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177017, 23.606859, 19.723848>,  <15.791760, 23.716301, 20.300436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177017, 23.606859, 19.723848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.242298, 23.274952, 19.937334>,  <16.281467, 23.075808, 20.065426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.242298, 23.274952, 19.937334>,  <16.177017, 23.606859, 19.723848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242298, 23.274952, 19.937334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067005, -0.530397, -0.845097,
		0.984315, 0.173684, -0.030964,
		0.163203, -0.829767, 0.533715,
		16.291260, 23.026022, 20.097448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.730556, 23.200413, 19.387764>,  <16.177017, 23.606859, 19.723848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.730556, 23.200413, 19.387764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.545103, 22.912872, 19.594954>,  <16.433830, 22.740349, 19.719267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.545103, 22.912872, 19.594954>,  <16.730556, 23.200413, 19.387764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545103, 22.912872, 19.594954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157785, -0.642247, -0.750082,
		0.871864, -0.266036, 0.411192,
		-0.463635, -0.718849, 0.517975,
		16.406013, 22.697218, 19.750345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027353, 22.539379, 19.191069>,  <16.730556, 23.200413, 19.387764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027353, 22.539379, 19.191069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.682394, 22.417074, 19.352451>,  <16.475418, 22.343691, 19.449280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.682394, 22.417074, 19.352451>,  <17.027353, 22.539379, 19.191069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682394, 22.417074, 19.352451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040517, -0.752735, -0.657076,
		0.504604, -0.583008, 0.636770,
		-0.862400, -0.305763, 0.403455,
		16.423674, 22.325346, 19.473488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.702831, 8.915929, 19.885561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.948479, 9.059159, 19.604239>,  <15.095867, 9.145098, 19.435446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.948479, 9.059159, 19.604239>,  <14.702831, 8.915929, 19.885561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948479, 9.059159, 19.604239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113746, -0.922003, -0.370099,
		-0.780973, 0.147287, -0.606950,
		0.614120, 0.358076, -0.703306,
		15.132714, 9.166582, 19.393248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139084, 8.691717, 19.311256>,  <14.702831, 8.915929, 19.885561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139084, 8.691717, 19.311256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.370002, 8.993426, 19.186163>,  <14.508553, 9.174452, 19.111107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.370002, 8.993426, 19.186163>,  <14.139084, 8.691717, 19.311256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370002, 8.993426, 19.186163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104218, 0.447932, 0.887973,
		0.809857, -0.480030, 0.337198,
		0.577295, 0.754273, -0.312733,
		14.543191, 9.219708, 19.092342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593764, 8.294368, 18.966280>,  <14.139084, 8.691717, 19.311256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593764, 8.294368, 18.966280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.325047, 8.323069, 19.261183>,  <13.163817, 8.340289, 19.438124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.325047, 8.323069, 19.261183>,  <13.593764, 8.294368, 18.966280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.325047, 8.323069, 19.261183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, 0.969082, -0.210943,
		-0.729598, -0.236074, -0.641838,
		-0.671792, 0.071753, 0.737256,
		13.123510, 8.344594, 19.482359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072721, 8.679935, 18.663929>,  <13.593764, 8.294368, 18.966280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072721, 8.679935, 18.663929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.154520, 8.713916, 19.053999>,  <13.203600, 8.734304, 19.288040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.154520, 8.713916, 19.053999>,  <13.072721, 8.679935, 18.663929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154520, 8.713916, 19.053999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033618, 0.996249, -0.079738,
		-0.978289, -0.016477, 0.206587,
		0.204498, 0.084952, 0.975174,
		13.215870, 8.739402, 19.346552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589349, 9.150965, 18.999289>,  <13.072721, 8.679935, 18.663929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589349, 9.150965, 18.999289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.943099, 9.160936, 19.185732>,  <13.155350, 9.166920, 19.297598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.943099, 9.160936, 19.185732>,  <12.589349, 9.150965, 18.999289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943099, 9.160936, 19.185732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071613, 0.979504, -0.188263,
		-0.461248, 0.199875, 0.864465,
		0.884376, 0.024929, 0.466108,
		13.208412, 9.168415, 19.325563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629873, 9.575063, 19.576193>,  <12.589349, 9.150965, 18.999289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629873, 9.575063, 19.576193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.000588, 9.577701, 19.425983>,  <13.223018, 9.579284, 19.335857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.000588, 9.577701, 19.425983>,  <12.629873, 9.575063, 19.576193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000588, 9.577701, 19.425983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035048, 0.997002, -0.068988,
		0.373944, 0.077098, 0.924241,
		0.926789, 0.006595, -0.375525,
		13.278625, 9.579679, 19.313326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995584, 10.124824, 19.801846>,  <12.629873, 9.575063, 19.576193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995584, 10.124824, 19.801846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.898724, 10.497070, 19.911617>,  <12.840607, 10.720419, 19.977480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.898724, 10.497070, 19.911617>,  <12.995584, 10.124824, 19.801846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898724, 10.497070, 19.911617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622305, 0.068033, -0.779813,
		-0.744379, -0.359613, 0.562653,
		-0.242153, 0.930618, 0.274431,
		12.826077, 10.776256, 19.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.174676, 10.127719, 19.731945>,  <12.995584, 10.124824, 19.801846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.174676, 10.127719, 19.731945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.379580, 10.467599, 19.681986>,  <12.502523, 10.671527, 19.652010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.379580, 10.467599, 19.681986>,  <12.174676, 10.127719, 19.731945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.379580, 10.467599, 19.681986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509025, 0.183256, -0.841018,
		-0.691724, 0.494396, 0.526393,
		0.512261, 0.849700, -0.124898,
		12.533258, 10.722508, 19.644516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.677026, 10.410018, 19.355013>,  <12.174676, 10.127719, 19.731945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.677026, 10.410018, 19.355013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.032214, 10.588385, 19.309996>,  <12.245327, 10.695405, 19.282986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.032214, 10.588385, 19.309996>,  <11.677026, 10.410018, 19.355013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032214, 10.588385, 19.309996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280852, 0.331992, -0.900502,
		-0.364185, 0.831227, 0.420036,
		0.887970, 0.445918, -0.112545,
		12.298605, 10.722160, 19.276232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.688396, 11.149553, 19.429943>,  <11.677026, 10.410018, 19.355013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.688396, 11.149553, 19.429943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.947903, 11.009713, 19.159571>,  <12.103606, 10.925809, 18.997347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.947903, 11.009713, 19.159571>,  <11.688396, 11.149553, 19.429943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947903, 11.009713, 19.159571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572520, 0.360913, -0.736181,
		0.501321, 0.864594, 0.033995,
		0.648767, -0.349600, -0.675930,
		12.142532, 10.904833, 18.956791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.023381, 11.710697, 19.195732>,  <11.688396, 11.149553, 19.429943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.023381, 11.710697, 19.195732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.014577, 11.424336, 18.916590>,  <12.009295, 11.252520, 18.749105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.014577, 11.424336, 18.916590>,  <12.023381, 11.710697, 19.195732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.014577, 11.424336, 18.916590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590772, 0.572433, -0.568602,
		0.806538, 0.399757, -0.435535,
		-0.022012, -0.715901, -0.697854,
		12.007974, 11.209566, 18.707233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.141335, 12.034031, 18.571976>,  <12.023381, 11.710697, 19.195732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.141335, 12.034031, 18.571976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.964963, 11.693158, 18.459290>,  <11.859139, 11.488634, 18.391678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.964963, 11.693158, 18.459290>,  <12.141335, 12.034031, 18.571976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.964963, 11.693158, 18.459290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592417, 0.512118, -0.621915,
		0.674257, -0.107329, -0.730656,
		-0.440931, -0.852183, -0.281716,
		11.832684, 11.437503, 18.374775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.130019, 11.983781, 17.801113>,  <12.141335, 12.034031, 18.571976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.130019, 11.983781, 17.801113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.832073, 11.755555, 17.939465>,  <11.653306, 11.618620, 18.022476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.832073, 11.755555, 17.939465>,  <12.130019, 11.983781, 17.801113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832073, 11.755555, 17.939465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664974, 0.592368, -0.454874,
		0.054646, -0.568821, -0.820644,
		-0.744865, -0.570564, 0.345880,
		11.608614, 11.584386, 18.043228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.658384, 11.956361, 17.191658>,  <12.130019, 11.983781, 17.801113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.658384, 11.956361, 17.191658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.445841, 11.813748, 17.499044>,  <11.318315, 11.728181, 17.683477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.445841, 11.813748, 17.499044>,  <11.658384, 11.956361, 17.191658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.445841, 11.813748, 17.499044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800197, 0.509028, -0.317135,
		-0.278103, -0.783439, -0.555772,
		-0.531359, -0.356531, 0.768468,
		11.286433, 11.706789, 17.729586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.998251, 11.667494, 16.902916>,  <11.658384, 11.956361, 17.191658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.998251, 11.667494, 16.902916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.934609, 11.712728, 17.295221>,  <10.896424, 11.739868, 17.530605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.934609, 11.712728, 17.295221>,  <10.998251, 11.667494, 16.902916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.934609, 11.712728, 17.295221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874223, 0.445438, -0.193180,
		-0.458716, -0.888142, 0.027993,
		-0.159102, 0.113087, 0.980764,
		10.886878, 11.746654, 17.589451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.252553, 11.491504, 16.963963>,  <10.998251, 11.667494, 16.902916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.252553, 11.491504, 16.963963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.339585, 11.704783, 17.290976>,  <10.391805, 11.832751, 17.487183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.339585, 11.704783, 17.290976>,  <10.252553, 11.491504, 16.963963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.339585, 11.704783, 17.290976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852279, 0.512005, -0.107106,
		-0.475688, -0.673460, 0.565838,
		0.217580, 0.533200, 0.817531,
		10.404860, 11.864743, 17.536234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.587616, 11.499395, 17.320320>,  <10.252553, 11.491504, 16.963963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.587616, 11.499395, 17.320320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.799204, 11.815576, 17.443855>,  <9.926157, 12.005283, 17.517977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.799204, 11.815576, 17.443855>,  <9.587616, 11.499395, 17.320320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799204, 11.815576, 17.443855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813702, 0.575760, -0.079932,
		-0.240999, -0.209020, 0.947750,
		0.528969, 0.790450, 0.308837,
		9.957894, 12.052711, 17.536507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.180404, 11.821270, 17.898575>,  <9.587616, 11.499395, 17.320320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.180404, 11.821270, 17.898575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.434041, 12.086379, 17.739248>,  <9.586224, 12.245444, 17.643652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.434041, 12.086379, 17.739248>,  <9.180404, 11.821270, 17.898575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.434041, 12.086379, 17.739248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737145, 0.673691, -0.052507,
		0.233543, 0.326913, 0.915743,
		0.634094, 0.662773, -0.398318,
		9.624269, 12.285211, 17.619753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.972595, 12.427794, 18.244162>,  <9.180404, 11.821270, 17.898575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.972595, 12.427794, 18.244162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.197023, 12.552256, 17.937336>,  <9.331680, 12.626932, 17.753241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.197023, 12.552256, 17.937336>,  <8.972595, 12.427794, 18.244162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197023, 12.552256, 17.937336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649935, 0.739463, -0.175440,
		0.512625, 0.596975, 0.617120,
		0.561071, 0.311153, -0.767062,
		9.365345, 12.645601, 17.707218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.076035, 13.144432, 18.335363>,  <8.972595, 12.427794, 18.244162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.076035, 13.144432, 18.335363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.098343, 13.024393, 17.954453>,  <9.111728, 12.952370, 17.725906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.098343, 13.024393, 17.954453>,  <9.076035, 13.144432, 18.335363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.098343, 13.024393, 17.954453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712854, 0.655839, -0.248426,
		0.699092, 0.692689, -0.177350,
		0.055769, -0.300097, -0.952277,
		9.115073, 12.934364, 17.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085268, 13.839734, 17.880205>,  <9.076035, 13.144432, 18.335363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085268, 13.839734, 17.880205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.997391, 13.527136, 17.646624>,  <8.944665, 13.339577, 17.506475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.997391, 13.527136, 17.646624>,  <9.085268, 13.839734, 17.880205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.997391, 13.527136, 17.646624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535859, 0.596861, -0.597171,
		0.815225, 0.181723, -0.549896,
		-0.219692, -0.781495, -0.583953,
		8.931483, 13.292687, 17.471437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.252372, 14.047370, 17.179243>,  <9.085268, 13.839734, 17.880205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.252372, 14.047370, 17.179243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974153, 13.760015, 17.174650>,  <8.807221, 13.587602, 17.171894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974153, 13.760015, 17.174650>,  <9.252372, 14.047370, 17.179243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.974153, 13.760015, 17.174650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586526, 0.576966, -0.568417,
		0.414970, -0.388626, -0.822660,
		-0.695548, -0.718388, -0.011484,
		8.765488, 13.544498, 17.171206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029009, 14.073993, 16.489017>,  <9.252372, 14.047370, 17.179243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029009, 14.073993, 16.489017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.729987, 13.886154, 16.676907>,  <8.550573, 13.773451, 16.789640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.729987, 13.886154, 16.676907>,  <9.029009, 14.073993, 16.489017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.729987, 13.886154, 16.676907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661062, 0.457374, -0.594817,
		0.064485, -0.755175, -0.652344,
		-0.747556, -0.469597, 0.469723,
		8.505720, 13.745275, 16.817823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.604845, 13.706551, 15.930947>,  <9.029009, 14.073993, 16.489017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.604845, 13.706551, 15.930947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.363556, 13.739159, 16.248306>,  <8.218782, 13.758723, 16.438721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.363556, 13.739159, 16.248306>,  <8.604845, 13.706551, 15.930947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.363556, 13.739159, 16.248306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730671, 0.342328, -0.590705,
		-0.319756, -0.936038, -0.146935,
		-0.603222, 0.081520, 0.793396,
		8.182590, 13.763615, 16.486324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.896686, 13.453348, 15.730544>,  <8.604845, 13.706551, 15.930947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.896686, 13.453348, 15.730544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.822265, 13.685318, 16.047800>,  <7.777613, 13.824500, 16.238153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.822265, 13.685318, 16.047800>,  <7.896686, 13.453348, 15.730544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.822265, 13.685318, 16.047800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847705, 0.313393, -0.427996,
		-0.496770, -0.751979, 0.433298,
		-0.186051, 0.579924, 0.793141,
		7.766450, 13.859295, 16.285742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.159054, 13.381051, 15.789854>,  <7.896686, 13.453348, 15.730544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.159054, 13.381051, 15.789854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.227489, 13.673075, 16.054502>,  <7.268551, 13.848289, 16.213291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.227489, 13.673075, 16.054502>,  <7.159054, 13.381051, 15.789854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.227489, 13.673075, 16.054502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763354, 0.522781, -0.379461,
		-0.622912, -0.440130, 0.646735,
		0.171088, 0.730059, 0.661622,
		7.278816, 13.892093, 16.252989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.545792, 13.592999, 15.954881>,  <7.159054, 13.381051, 15.789854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.545792, 13.592999, 15.954881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.792977, 13.883648, 16.074976>,  <6.941288, 14.058037, 16.147034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.792977, 13.883648, 16.074976>,  <6.545792, 13.592999, 15.954881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.792977, 13.883648, 16.074976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614769, 0.684635, -0.391579,
		-0.490083, 0.057405, 0.869784,
		0.617963, 0.726622, 0.300237,
		6.978366, 14.101634, 16.165047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218430, 14.119759, 16.403133>,  <6.545792, 13.592999, 15.954881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218430, 14.119759, 16.403133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.520295, 14.294075, 16.206942>,  <6.701414, 14.398664, 16.089226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.520295, 14.294075, 16.206942>,  <6.218430, 14.119759, 16.403133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.520295, 14.294075, 16.206942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636819, 0.666464, -0.387668,
		0.157946, 0.604906, 0.780475,
		0.754662, 0.435791, -0.490481,
		6.746693, 14.424812, 16.059797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.073913, 14.861938, 16.300859>,  <6.218430, 14.119759, 16.403133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.073913, 14.861938, 16.300859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365177, 14.820525, 16.029842>,  <6.539936, 14.795677, 15.867232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.365177, 14.820525, 16.029842>,  <6.073913, 14.861938, 16.300859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.365177, 14.820525, 16.029842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536732, 0.528646, -0.657610,
		0.426265, 0.842504, 0.329369,
		0.728160, -0.103533, -0.677543,
		6.583625, 14.789465, 15.826579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.158135, 15.528319, 16.079966>,  <6.073913, 14.861938, 16.300859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.158135, 15.528319, 16.079966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.300433, 15.291238, 15.790926>,  <6.385811, 15.148989, 15.617502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.300433, 15.291238, 15.790926>,  <6.158135, 15.528319, 16.079966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.300433, 15.291238, 15.790926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516708, 0.519527, -0.680517,
		0.778755, 0.615463, -0.121436,
		0.355744, -0.592703, -0.722599,
		6.407156, 15.113427, 15.574146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.377086, 15.978637, 15.548914>,  <6.158135, 15.528319, 16.079966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.377086, 15.978637, 15.548914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.324106, 15.623383, 15.372882>,  <6.292318, 15.410230, 15.267262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.324106, 15.623383, 15.372882>,  <6.377086, 15.978637, 15.548914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.324106, 15.623383, 15.372882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330741, 0.458147, -0.825053,
		0.934381, 0.036275, -0.354424,
		-0.132449, -0.888136, -0.440082,
		6.284371, 15.356942, 15.240857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.685184, 16.185114, 16.258595>,  <6.377086, 15.978637, 15.548914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.685184, 16.185114, 16.258595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.835902, 16.353523, 15.928560>,  <6.926333, 16.454569, 15.730540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.835902, 16.353523, 15.928560>,  <6.685184, 16.185114, 16.258595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.835902, 16.353523, 15.928560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876124, -0.451160, 0.169887,
		-0.300719, -0.786888, -0.538865,
		0.376797, 0.421024, -0.825084,
		6.948941, 16.479830, 15.681035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093546, 15.658052, 15.816998>,  <6.685184, 16.185114, 16.258595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093546, 15.658052, 15.816998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219081, 16.030298, 15.741672>,  <7.294403, 16.253645, 15.696476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.219081, 16.030298, 15.741672>,  <7.093546, 15.658052, 15.816998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.219081, 16.030298, 15.741672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931697, -0.263643, 0.249866,
		0.182881, -0.253869, -0.949792,
		0.313839, 0.930614, -0.188314,
		7.313233, 16.309483, 15.685177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691296, 15.613257, 15.452197>,  <7.093546, 15.658052, 15.816998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691296, 15.613257, 15.452197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.734701, 15.985723, 15.591427>,  <7.760744, 16.209204, 15.674965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.734701, 15.985723, 15.591427>,  <7.691296, 15.613257, 15.452197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.734701, 15.985723, 15.591427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943761, -0.206501, 0.258211,
		0.312315, 0.300480, -0.901206,
		0.108512, 0.931165, 0.348074,
		7.767255, 16.265074, 15.695849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.364192, 15.852520, 15.197348>,  <7.691296, 15.613257, 15.452197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.364192, 15.852520, 15.197348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279183, 16.094421, 15.504361>,  <8.228178, 16.239563, 15.688569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279183, 16.094421, 15.504361>,  <8.364192, 15.852520, 15.197348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.279183, 16.094421, 15.504361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969986, 0.035583, 0.240542,
		0.118157, 0.795617, -0.594165,
		-0.212522, 0.604753, 0.767534,
		8.215426, 16.275848, 15.734621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.941062, 16.263025, 15.245724>,  <8.364192, 15.852520, 15.197348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.941062, 16.263025, 15.245724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748490, 16.335331, 15.588780>,  <8.632947, 16.378716, 15.794615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748490, 16.335331, 15.588780>,  <8.941062, 16.263025, 15.245724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.748490, 16.335331, 15.588780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876457, 0.107097, 0.469419,
		-0.006996, 0.977678, -0.209993,
		-0.481430, 0.180765, 0.857641,
		8.604061, 16.389561, 15.846073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.152079, 16.854977, 15.492386>,  <8.941062, 16.263025, 15.245724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.152079, 16.854977, 15.492386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011334, 16.675596, 15.821040>,  <8.926888, 16.567968, 16.018232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.011334, 16.675596, 15.821040>,  <9.152079, 16.854977, 15.492386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.011334, 16.675596, 15.821040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916657, 0.012677, 0.399473,
		-0.189560, 0.893717, 0.406616,
		-0.351861, -0.448451, 0.821636,
		8.905776, 16.541061, 16.067532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.629259, 17.193048, 16.019310>,  <9.152079, 16.854977, 15.492386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.629259, 17.193048, 16.019310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.455834, 16.862745, 16.163612>,  <9.351780, 16.664562, 16.250195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.455834, 16.862745, 16.163612>,  <9.629259, 17.193048, 16.019310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.455834, 16.862745, 16.163612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745465, -0.103752, 0.658420,
		-0.506267, 0.554398, 0.660558,
		-0.433561, -0.825759, 0.360758,
		9.325767, 16.615017, 16.271839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.804170, 17.186733, 16.793024>,  <9.629259, 17.193048, 16.019310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.804170, 17.186733, 16.793024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.685901, 16.811441, 16.721130>,  <9.614940, 16.586266, 16.677994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.685901, 16.811441, 16.721130>,  <9.804170, 17.186733, 16.793024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.685901, 16.811441, 16.721130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565704, -0.323573, 0.758472,
		-0.769777, 0.122583, 0.626431,
		-0.295672, -0.938229, -0.179733,
		9.597199, 16.529972, 16.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.606023, 16.881821, 17.394707>,  <9.804170, 17.186733, 16.793024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.606023, 16.881821, 17.394707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.701354, 16.586479, 17.142345>,  <9.758553, 16.409275, 16.990929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.701354, 16.586479, 17.142345>,  <9.606023, 16.881821, 17.394707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.701354, 16.586479, 17.142345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642957, -0.366919, 0.672292,
		-0.727878, -0.565868, 0.387282,
		0.238327, -0.738352, -0.630901,
		9.772852, 16.364973, 16.953075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.519859, 16.156372, 17.741909>,  <9.606023, 16.881821, 17.394707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.519859, 16.156372, 17.741909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.780752, 16.128202, 17.440012>,  <9.937287, 16.111300, 17.258875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.780752, 16.128202, 17.440012>,  <9.519859, 16.156372, 17.741909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780752, 16.128202, 17.440012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643922, -0.473865, 0.600680,
		-0.399948, -0.877777, -0.263722,
		0.652232, -0.070425, -0.754741,
		9.976421, 16.107075, 17.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.697410, 15.474674, 17.794395>,  <9.519859, 16.156372, 17.741909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.697410, 15.474674, 17.794395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.976447, 15.646815, 17.565256>,  <10.143869, 15.750100, 17.427773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.976447, 15.646815, 17.565256>,  <9.697410, 15.474674, 17.794395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976447, 15.646815, 17.565256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714937, -0.470753, 0.516969,
		-0.047191, -0.770187, -0.636070,
		0.697595, 0.430354, -0.572850,
		10.185725, 15.775922, 17.393400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.173127, 14.995405, 17.580748>,  <9.697410, 15.474674, 17.794395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.173127, 14.995405, 17.580748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.392687, 15.318735, 17.495594>,  <10.524423, 15.512733, 17.444502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.392687, 15.318735, 17.495594>,  <10.173127, 14.995405, 17.580748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.392687, 15.318735, 17.495594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821326, -0.474222, 0.317077,
		0.155348, -0.348889, -0.924199,
		0.548900, 0.808326, -0.212882,
		10.557357, 15.561233, 17.431730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.665232, 14.794099, 17.236570>,  <10.173127, 14.995405, 17.580748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.665232, 14.794099, 17.236570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.814307, 15.134520, 17.384523>,  <10.903752, 15.338772, 17.473295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.814307, 15.134520, 17.384523>,  <10.665232, 14.794099, 17.236570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814307, 15.134520, 17.384523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792011, -0.499436, 0.351116,
		0.483551, 0.162095, -0.860176,
		0.372689, 0.851051, 0.369884,
		10.926114, 15.389835, 17.495489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.372490, 14.937435, 16.923084>,  <10.665232, 14.794099, 17.236570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.372490, 14.937435, 16.923084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.349315, 15.135613, 17.269766>,  <11.335409, 15.254520, 17.477776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.349315, 15.135613, 17.269766>,  <11.372490, 14.937435, 16.923084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.349315, 15.135613, 17.269766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771207, -0.529079, 0.354000,
		0.633943, 0.688918, -0.351437,
		-0.057939, 0.495446, 0.866704,
		11.331933, 15.284247, 17.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.117558, 14.931732, 17.035854>,  <11.372490, 14.937435, 16.923084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.117558, 14.931732, 17.035854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.914135, 15.051404, 17.358805>,  <11.792081, 15.123207, 17.552576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.914135, 15.051404, 17.358805>,  <12.117558, 14.931732, 17.035854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914135, 15.051404, 17.358805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690477, -0.418496, 0.590002,
		0.514401, 0.857527, 0.006254,
		-0.508560, 0.299179, 0.807378,
		11.761567, 15.141158, 17.601019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562244, 15.386739, 17.412128>,  <12.117558, 14.931732, 17.035854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562244, 15.386739, 17.412128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.292368, 15.213614, 17.651281>,  <12.130442, 15.109739, 17.794773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.292368, 15.213614, 17.651281>,  <12.562244, 15.386739, 17.412128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292368, 15.213614, 17.651281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737837, -0.417118, 0.530669,
		0.019708, 0.799179, 0.600770,
		-0.674692, -0.432812, 0.597884,
		12.089960, 15.083771, 17.830647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667181, 15.682108, 18.063793>,  <12.562244, 15.386739, 17.412128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667181, 15.682108, 18.063793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.493482, 15.324990, 18.111708>,  <12.389262, 15.110720, 18.140457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.493482, 15.324990, 18.111708>,  <12.667181, 15.682108, 18.063793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493482, 15.324990, 18.111708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819481, -0.336328, 0.464040,
		-0.374005, 0.299672, 0.877678,
		-0.434247, -0.892794, 0.119787,
		12.363208, 15.057152, 18.147644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.933671, 15.455796, 18.708311>,  <12.667181, 15.682108, 18.063793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.933671, 15.455796, 18.708311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.758908, 15.123075, 18.571367>,  <12.654051, 14.923441, 18.489201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.758908, 15.123075, 18.571367>,  <12.933671, 15.455796, 18.708311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.758908, 15.123075, 18.571367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578676, -0.551311, 0.600991,
		-0.688655, 0.064461, 0.722218,
		-0.436908, -0.831805, -0.342361,
		12.627836, 14.873533, 18.468658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780667, 15.088123, 19.321814>,  <12.933671, 15.455796, 18.708311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780667, 15.088123, 19.321814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.782965, 14.850598, 18.999981>,  <12.784343, 14.708083, 18.806881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.782965, 14.850598, 18.999981>,  <12.780667, 15.088123, 19.321814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.782965, 14.850598, 18.999981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704182, -0.568869, 0.424871,
		-0.709996, -0.569014, 0.414885,
		0.005743, -0.593811, -0.804584,
		12.784687, 14.672455, 18.758606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685056, 14.377011, 19.570930>,  <12.780667, 15.088123, 19.321814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685056, 14.377011, 19.570930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.849800, 14.378222, 19.206434>,  <12.948647, 14.378949, 18.987736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.849800, 14.378222, 19.206434>,  <12.685056, 14.377011, 19.570930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849800, 14.378222, 19.206434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681743, -0.664558, 0.305924,
		-0.604647, -0.747231, -0.275770,
		0.411861, 0.003029, -0.911242,
		12.973358, 14.379131, 18.933062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.882648, 13.636134, 19.540655>,  <12.685056, 14.377011, 19.570930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.882648, 13.636134, 19.540655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.059946, 13.834357, 19.241869>,  <13.166326, 13.953291, 19.062597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.059946, 13.834357, 19.241869>,  <12.882648, 13.636134, 19.540655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059946, 13.834357, 19.241869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848187, -0.501462, 0.170628,
		-0.290018, -0.709195, -0.642597,
		0.443247, 0.495558, -0.746964,
		13.192920, 13.983025, 19.017780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.645166, 21.476072, 25.409893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.281933, 21.397001, 25.557573>,  <17.063993, 21.349558, 25.646181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.281933, 21.397001, 25.557573>,  <17.645166, 21.476072, 25.409893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281933, 21.397001, 25.557573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124357, 0.714544, 0.688449,
		-0.399902, 0.671082, -0.624282,
		-0.908082, -0.197678, 0.369201,
		17.009508, 21.337698, 25.668333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177176, 22.061136, 25.402544>,  <17.645166, 21.476072, 25.409893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177176, 22.061136, 25.402544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.080999, 21.810280, 25.698891>,  <17.023293, 21.659767, 25.876699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.080999, 21.810280, 25.698891>,  <17.177176, 22.061136, 25.402544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080999, 21.810280, 25.698891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089504, 0.745682, 0.660264,
		-0.966528, 0.225065, -0.123161,
		-0.240441, -0.627140, 0.740867,
		17.008867, 21.622137, 25.921150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902683, 22.554214, 26.007320>,  <17.177176, 22.061136, 25.402544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902683, 22.554214, 26.007320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.936924, 22.194376, 26.178623>,  <16.957468, 21.978474, 26.281404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.936924, 22.194376, 26.178623>,  <16.902683, 22.554214, 26.007320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.936924, 22.194376, 26.178623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016190, 0.431032, 0.902191,
		-0.996198, -0.070294, 0.051461,
		0.085600, -0.899594, 0.428256,
		16.962605, 21.924498, 26.307100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447901, 22.492422, 26.477381>,  <16.902683, 22.554214, 26.007320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447901, 22.492422, 26.477381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.735872, 22.242496, 26.598253>,  <16.908655, 22.092541, 26.670776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.735872, 22.242496, 26.598253>,  <16.447901, 22.492422, 26.477381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735872, 22.242496, 26.598253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035946, 0.401241, 0.915267,
		-0.693119, -0.669787, 0.266405,
		0.719927, -0.624813, 0.302183,
		16.951851, 22.055054, 26.688908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189188, 22.343388, 27.130974>,  <16.447901, 22.492422, 26.477381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189188, 22.343388, 27.130974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.565636, 22.208323, 27.137636>,  <16.791504, 22.127283, 27.141634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.565636, 22.208323, 27.137636>,  <16.189188, 22.343388, 27.130974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565636, 22.208323, 27.137636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040575, 0.161727, 0.986001,
		-0.335630, -0.927269, 0.165905,
		0.941120, -0.337663, 0.016656,
		16.847971, 22.107023, 27.142633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368231, 22.074060, 27.783957>,  <16.189188, 22.343388, 27.130974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368231, 22.074060, 27.783957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.745134, 22.109037, 27.654648>,  <16.971277, 22.130024, 27.577063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.745134, 22.109037, 27.654648>,  <16.368231, 22.074060, 27.783957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745134, 22.109037, 27.654648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318678, 0.062564, 0.945796,
		0.102930, -0.994203, 0.031084,
		0.942258, 0.087445, -0.323270,
		17.027811, 22.135271, 27.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719530, 21.650576, 28.221027>,  <16.368231, 22.074060, 27.783957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719530, 21.650576, 28.221027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008211, 21.878214, 28.063410>,  <17.181419, 22.014797, 27.968840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.008211, 21.878214, 28.063410>,  <16.719530, 21.650576, 28.221027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008211, 21.878214, 28.063410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335452, 0.210402, 0.918261,
		0.605487, -0.794896, -0.039056,
		0.721704, 0.569096, -0.394045,
		17.224722, 22.048943, 27.945196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321802, 21.392920, 28.554348>,  <16.719530, 21.650576, 28.221027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321802, 21.392920, 28.554348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.441504, 21.732948, 28.380995>,  <17.513325, 21.936966, 28.276983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.441504, 21.732948, 28.380995>,  <17.321802, 21.392920, 28.554348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441504, 21.732948, 28.380995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370961, 0.314817, 0.873658,
		0.879111, -0.422214, -0.221134,
		0.299253, 0.850074, -0.433384,
		17.531279, 21.987970, 28.250980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064404, 21.409893, 28.593370>,  <17.321802, 21.392920, 28.554348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064404, 21.409893, 28.593370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.911800, 21.778887, 28.569780>,  <17.820238, 22.000282, 28.555626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.911800, 21.778887, 28.569780>,  <18.064404, 21.409893, 28.593370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911800, 21.778887, 28.569780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462372, 0.245686, 0.851969,
		0.800416, 0.297764, -0.520261,
		-0.381506, 0.922483, -0.058973,
		17.797348, 22.055632, 28.552088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637274, 21.927500, 28.801996>,  <18.064404, 21.409893, 28.593370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637274, 21.927500, 28.801996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.278234, 22.094175, 28.859526>,  <18.062811, 22.194181, 28.894043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.278234, 22.094175, 28.859526>,  <18.637274, 21.927500, 28.801996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278234, 22.094175, 28.859526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333172, 0.427654, 0.840303,
		0.288639, 0.802173, -0.522691,
		-0.897599, 0.416690, 0.143824,
		18.008955, 22.219183, 28.902674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875616, 22.522663, 29.279785>,  <18.637274, 21.927500, 28.801996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875616, 22.522663, 29.279785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.477236, 22.556087, 29.293045>,  <18.238207, 22.576141, 29.301001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.477236, 22.556087, 29.293045>,  <18.875616, 22.522663, 29.279785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477236, 22.556087, 29.293045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068370, 0.464645, 0.882854,
		0.058369, 0.881546, -0.468477,
		-0.995951, 0.083561, 0.033150,
		18.178450, 22.581156, 29.302990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.784880, 23.179527, 29.434259>,  <18.875616, 22.522663, 29.279785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.784880, 23.179527, 29.434259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.441885, 22.999880, 29.534666>,  <18.236088, 22.892092, 29.594910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.441885, 22.999880, 29.534666>,  <18.784880, 23.179527, 29.434259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441885, 22.999880, 29.534666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103904, 0.326665, 0.939412,
		-0.503904, 0.831615, -0.233446,
		-0.857487, -0.449117, 0.251016,
		18.184639, 22.865145, 29.609970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239759, 23.653915, 29.617952>,  <18.784880, 23.179527, 29.434259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239759, 23.653915, 29.617952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174019, 23.314589, 29.819286>,  <18.134575, 23.110992, 29.940086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174019, 23.314589, 29.819286>,  <18.239759, 23.653915, 29.617952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174019, 23.314589, 29.819286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003747, 0.509735, 0.860323,
		-0.986395, 0.143281, -0.080596,
		-0.164351, -0.848316, 0.503337,
		18.124714, 23.060093, 29.970287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869802, 24.378246, 29.767294>,  <18.239759, 23.653915, 29.617952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869802, 24.378246, 29.767294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.900810, 24.725979, 29.962538>,  <17.919415, 24.934618, 30.079683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.900810, 24.725979, 29.962538>,  <17.869802, 24.378246, 29.767294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900810, 24.725979, 29.962538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223285, 0.462007, -0.858308,
		-0.971666, 0.175524, -0.158294,
		0.077521, 0.869334, 0.488109,
		17.924067, 24.986778, 30.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209084, 25.052256, 29.549196>,  <17.869802, 24.378246, 29.767294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209084, 25.052256, 29.549196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.236528, 25.434057, 29.433119>,  <18.252996, 25.663137, 29.363472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.236528, 25.434057, 29.433119>,  <18.209084, 25.052256, 29.549196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236528, 25.434057, 29.433119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513440, -0.215616, -0.830596,
		-0.855378, 0.205989, 0.475286,
		0.068614, 0.954505, -0.290196,
		18.257113, 25.720409, 29.346060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518492, 25.234890, 29.357672>,  <18.209084, 25.052256, 29.549196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518492, 25.234890, 29.357672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.741867, 25.510239, 29.172504>,  <17.875893, 25.675447, 29.061405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.741867, 25.510239, 29.172504>,  <17.518492, 25.234890, 29.357672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.741867, 25.510239, 29.172504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495716, -0.170524, -0.851579,
		-0.665143, 0.705028, 0.246011,
		0.558436, 0.688373, -0.462916,
		17.909397, 25.716751, 29.033630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096199, 25.681343, 29.006697>,  <17.518492, 25.234890, 29.357672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096199, 25.681343, 29.006697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445456, 25.721622, 28.815914>,  <17.655008, 25.745790, 28.701445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.445456, 25.721622, 28.815914>,  <17.096199, 25.681343, 29.006697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445456, 25.721622, 28.815914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476034, -0.034558, -0.878748,
		-0.104969, 0.994317, 0.017761,
		0.873140, 0.100697, -0.476956,
		17.707397, 25.751831, 28.672827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819464, 25.871107, 28.409512>,  <17.096199, 25.681343, 29.006697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819464, 25.871107, 28.409512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.196651, 25.769531, 28.323420>,  <17.422964, 25.708586, 28.271765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.196651, 25.769531, 28.323420>,  <16.819464, 25.871107, 28.409512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196651, 25.769531, 28.323420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256615, -0.142697, -0.955922,
		0.212034, 0.956636, -0.199724,
		0.942969, -0.253940, -0.215231,
		17.479542, 25.693350, 28.258850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963900, 26.208164, 27.744249>,  <16.819464, 25.871107, 28.409512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963900, 26.208164, 27.744249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.228132, 25.913157, 27.800385>,  <17.386673, 25.736153, 27.834066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.228132, 25.913157, 27.800385>,  <16.963900, 26.208164, 27.744249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228132, 25.913157, 27.800385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073933, -0.249928, -0.965438,
		0.747103, 0.627377, -0.219625,
		0.660584, -0.737519, 0.140338,
		17.426308, 25.691900, 27.842485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554190, 26.210552, 27.172169>,  <16.963900, 26.208164, 27.744249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554190, 26.210552, 27.172169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.570213, 25.835527, 27.310369>,  <17.579828, 25.610512, 27.393290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.570213, 25.835527, 27.310369>,  <17.554190, 26.210552, 27.172169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570213, 25.835527, 27.310369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150633, -0.336160, -0.929681,
		0.987778, 0.089286, 0.127762,
		0.040059, -0.937563, 0.345501,
		17.582232, 25.554258, 27.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976377, 25.877087, 26.702614>,  <17.554190, 26.210552, 27.172169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976377, 25.877087, 26.702614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.773417, 25.591496, 26.895601>,  <17.651640, 25.420141, 27.011395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.773417, 25.591496, 26.895601>,  <17.976377, 25.877087, 26.702614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773417, 25.591496, 26.895601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150685, -0.477756, -0.865473,
		0.848433, -0.511842, 0.134827,
		-0.507400, -0.713980, 0.482471,
		17.621197, 25.377302, 27.040342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144091, 25.281666, 26.373917>,  <17.976377, 25.877087, 26.702614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144091, 25.281666, 26.373917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812050, 25.165771, 26.564487>,  <17.612825, 25.096235, 26.678829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.812050, 25.165771, 26.564487>,  <18.144091, 25.281666, 26.373917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812050, 25.165771, 26.564487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272353, -0.534886, -0.799826,
		0.486572, -0.793694, 0.365099,
		-0.830103, -0.289737, 0.476425,
		17.563019, 25.078850, 26.707415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122534, 24.481174, 26.327045>,  <18.144091, 25.281666, 26.373917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122534, 24.481174, 26.327045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.755865, 24.618971, 26.408073>,  <17.535864, 24.701649, 26.456690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.755865, 24.618971, 26.408073>,  <18.122534, 24.481174, 26.327045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755865, 24.618971, 26.408073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355309, -0.470513, -0.807696,
		-0.182933, -0.812369, 0.553708,
		-0.916674, 0.344492, 0.202570,
		17.480864, 24.722319, 26.468845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672308, 23.941690, 26.352909>,  <18.122534, 24.481174, 26.327045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672308, 23.941690, 26.352909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.435753, 24.257113, 26.285456>,  <17.293819, 24.446365, 26.244984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.435753, 24.257113, 26.285456>,  <17.672308, 23.941690, 26.352909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435753, 24.257113, 26.285456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562004, -0.553016, -0.615081,
		-0.578286, -0.268976, 0.770219,
		-0.591386, 0.788559, -0.168635,
		17.258337, 24.493679, 26.234865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039141, 23.596498, 26.061794>,  <17.672308, 23.941690, 26.352909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039141, 23.596498, 26.061794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.979610, 23.986982, 25.998724>,  <16.943892, 24.221273, 25.960882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.979610, 23.986982, 25.998724>,  <17.039141, 23.596498, 26.061794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979610, 23.986982, 25.998724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662514, -0.216809, -0.716986,
		-0.734116, -0.002242, 0.679021,
		-0.148825, 0.976211, -0.157678,
		16.934963, 24.279846, 25.951420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293531, 23.680147, 25.978876>,  <17.039141, 23.596498, 26.061794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293531, 23.680147, 25.978876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.477160, 23.982271, 25.791790>,  <16.587336, 24.163546, 25.679539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.477160, 23.982271, 25.791790>,  <16.293531, 23.680147, 25.978876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477160, 23.982271, 25.791790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599751, -0.124907, -0.790378,
		-0.655403, 0.643352, 0.395658,
		0.459071, 0.755312, -0.467715,
		16.614882, 24.208864, 25.651476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753267, 24.159395, 25.628344>,  <16.293531, 23.680147, 25.978876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753267, 24.159395, 25.628344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.100891, 24.211777, 25.437519>,  <16.309465, 24.243206, 25.323025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.100891, 24.211777, 25.437519>,  <15.753267, 24.159395, 25.628344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100891, 24.211777, 25.437519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461797, -0.131104, -0.877243,
		-0.177424, 0.982681, -0.053462,
		0.869059, 0.130956, -0.477060,
		16.361609, 24.251064, 25.294401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606484, 24.415533, 25.019764>,  <15.753267, 24.159395, 25.628344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.606484, 24.415533, 25.019764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.983742, 24.320278, 24.927010>,  <16.210096, 24.263126, 24.871357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.983742, 24.320278, 24.927010>,  <15.606484, 24.415533, 25.019764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983742, 24.320278, 24.927010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274198, -0.163109, -0.947740,
		0.187868, 0.957438, -0.219132,
		0.943144, -0.238136, -0.231885,
		16.266685, 24.248837, 24.857445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536355, 25.199184, 25.073280>,  <15.606484, 24.415533, 25.019764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536355, 25.199184, 25.073280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.156017, 25.321629, 25.092020>,  <14.927814, 25.395094, 25.103264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.156017, 25.321629, 25.092020>,  <15.536355, 25.199184, 25.073280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156017, 25.321629, 25.092020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127422, 0.248857, 0.960122,
		0.282242, 0.918895, -0.275628,
		-0.950843, 0.306108, 0.046849,
		14.870765, 25.413462, 25.106075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527425, 25.911638, 25.242134>,  <15.536355, 25.199184, 25.073280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527425, 25.911638, 25.242134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.159776, 25.799807, 25.353165>,  <14.939186, 25.732708, 25.419783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.159776, 25.799807, 25.353165>,  <15.527425, 25.911638, 25.242134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159776, 25.799807, 25.353165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152646, 0.396810, 0.905119,
		-0.363200, 0.874286, -0.322040,
		-0.919122, -0.279581, 0.277578,
		14.884039, 25.715933, 25.436438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119006, 26.478842, 25.445395>,  <15.527425, 25.911638, 25.242134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119006, 26.478842, 25.445395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.938625, 26.188248, 25.652802>,  <14.830397, 26.013891, 25.777245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.938625, 26.188248, 25.652802>,  <15.119006, 26.478842, 25.445395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938625, 26.188248, 25.652802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098015, 0.537117, 0.837794,
		-0.887149, 0.428628, -0.171008,
		-0.450953, -0.726487, 0.518515,
		14.803339, 25.970301, 25.808355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573352, 26.767004, 25.998266>,  <15.119006, 26.478842, 25.445395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573352, 26.767004, 25.998266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.673563, 26.393236, 26.099533>,  <14.733689, 26.168976, 26.160294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.673563, 26.393236, 26.099533>,  <14.573352, 26.767004, 25.998266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673563, 26.393236, 26.099533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055027, 0.247339, 0.967365,
		-0.966544, -0.256282, 0.010546,
		0.250527, -0.934421, 0.253167,
		14.748721, 26.112909, 26.175484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105303, 26.661234, 26.477238>,  <14.573352, 26.767004, 25.998266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105303, 26.661234, 26.477238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.404058, 26.403543, 26.543119>,  <14.583312, 26.248928, 26.582647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.404058, 26.403543, 26.543119>,  <14.105303, 26.661234, 26.477238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.404058, 26.403543, 26.543119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008796, 0.238098, 0.971201,
		-0.664890, -0.726829, 0.172166,
		0.746890, -0.644228, 0.164702,
		14.628125, 26.210276, 26.592529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842023, 26.318485, 27.193956>,  <14.105303, 26.661234, 26.477238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842023, 26.318485, 27.193956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230001, 26.237610, 27.139812>,  <14.462789, 26.189085, 27.107327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.230001, 26.237610, 27.139812>,  <13.842023, 26.318485, 27.193956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230001, 26.237610, 27.139812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156961, 0.094849, 0.983040,
		-0.185922, -0.974743, 0.123735,
		0.969947, -0.202190, -0.135362,
		14.520986, 26.176952, 27.099203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.002389, 25.869493, 27.693447>,  <13.842023, 26.318485, 27.193956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.002389, 25.869493, 27.693447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367414, 25.994051, 27.587418>,  <14.586430, 26.068785, 27.523800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367414, 25.994051, 27.587418>,  <14.002389, 25.869493, 27.693447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367414, 25.994051, 27.587418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183647, 0.267099, 0.946009,
		0.365382, -0.911971, 0.186558,
		0.912562, 0.311394, -0.265073,
		14.641183, 26.087469, 27.507896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812784, 25.248917, 27.740828>,  <14.002389, 25.869493, 27.693447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812784, 25.248917, 27.740828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.536514, 25.083851, 27.978373>,  <13.370752, 24.984812, 28.120899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.536514, 25.083851, 27.978373>,  <13.812784, 25.248917, 27.740828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536514, 25.083851, 27.978373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549987, -0.233468, -0.801877,
		0.469557, -0.880454, -0.065711,
		-0.690674, -0.412667, 0.593864,
		13.329312, 24.960051, 28.156532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708965, 24.585381, 27.493168>,  <13.812784, 25.248917, 27.740828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708965, 24.585381, 27.493168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.381674, 24.739290, 27.664026>,  <13.185299, 24.831636, 27.766541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.381674, 24.739290, 27.664026>,  <13.708965, 24.585381, 27.493168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.381674, 24.739290, 27.664026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553774, -0.327975, -0.765354,
		-0.154396, -0.862775, 0.481436,
		-0.818228, 0.384774, 0.427145,
		13.136206, 24.854723, 27.792170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303795, 24.284689, 27.075016>,  <13.708965, 24.585381, 27.493168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303795, 24.284689, 27.075016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.054784, 24.474485, 27.323956>,  <12.905377, 24.588364, 27.473320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.054784, 24.474485, 27.323956>,  <13.303795, 24.284689, 27.075016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054784, 24.474485, 27.323956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731882, -0.071362, -0.677684,
		-0.277144, -0.877362, 0.391698,
		-0.622527, 0.474493, 0.622348,
		12.868026, 24.616833, 27.510660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686008, 23.884911, 27.196400>,  <13.303795, 24.284689, 27.075016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686008, 23.884911, 27.196400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.557658, 24.238974, 27.331179>,  <12.480648, 24.451412, 27.412046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.557658, 24.238974, 27.331179>,  <12.686008, 23.884911, 27.196400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.557658, 24.238974, 27.331179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845465, -0.107352, -0.523129,
		-0.426880, -0.452737, 0.782817,
		-0.320877, 0.885158, 0.336947,
		12.461395, 24.504520, 27.432262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.963045, 23.813139, 27.565502>,  <12.686008, 23.884911, 27.196400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.963045, 23.813139, 27.565502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.004497, 24.170542, 27.390732>,  <12.029367, 24.384983, 27.285870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.004497, 24.170542, 27.390732>,  <11.963045, 23.813139, 27.565502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004497, 24.170542, 27.390732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711118, -0.240576, -0.660632,
		-0.695394, 0.379167, 0.610458,
		0.103629, 0.893508, -0.436928,
		12.035585, 24.438595, 27.259653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.242681, 23.936749, 27.328548>,  <11.963045, 23.813139, 27.565502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.242681, 23.936749, 27.328548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.489864, 24.172316, 27.120203>,  <11.638175, 24.313656, 26.995195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.489864, 24.172316, 27.120203>,  <11.242681, 23.936749, 27.328548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.489864, 24.172316, 27.120203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570641, -0.119759, -0.812420,
		-0.540828, 0.799270, 0.262055,
		0.617959, 0.588919, -0.520865,
		11.675252, 24.348991, 26.963943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.798183, 24.403107, 26.988415>,  <11.242681, 23.936749, 27.328548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.798183, 24.403107, 26.988415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.149563, 24.408859, 26.797367>,  <11.360391, 24.412310, 26.682739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.149563, 24.408859, 26.797367>,  <10.798183, 24.403107, 26.988415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149563, 24.408859, 26.797367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475520, 0.124585, -0.870838,
		0.046982, 0.992105, 0.116279,
		0.878449, 0.014379, -0.477619,
		11.413097, 24.413174, 26.654081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.627125, 18.470617, 31.444921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.254055, 18.346804, 31.519016>,  <17.030214, 18.272516, 31.563473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.254055, 18.346804, 31.519016>,  <17.627125, 18.470617, 31.444921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254055, 18.346804, 31.519016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010103, -0.490894, -0.871161,
		0.360583, -0.814379, 0.454716,
		-0.932672, -0.309532, 0.185236,
		16.974253, 18.253944, 31.574587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571894, 17.748789, 31.525305>,  <17.627125, 18.470617, 31.444921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571894, 17.748789, 31.525305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.293417, 17.967222, 31.338926>,  <17.126331, 18.098282, 31.227098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.293417, 17.967222, 31.338926>,  <17.571894, 17.748789, 31.525305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293417, 17.967222, 31.338926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140959, -0.532451, -0.834642,
		-0.703879, -0.646751, 0.293713,
		-0.696193, 0.546086, -0.465946,
		17.084558, 18.131048, 31.199142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.419914, 17.403643, 30.926067>,  <17.571894, 17.748789, 31.525305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.419914, 17.403643, 30.926067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.227083, 17.749855, 30.871723>,  <17.111383, 17.957582, 30.839117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.227083, 17.749855, 30.871723>,  <17.419914, 17.403643, 30.926067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227083, 17.749855, 30.871723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084028, -0.200032, -0.976179,
		-0.872089, -0.459180, 0.169160,
		-0.482079, 0.865529, -0.135862,
		17.082458, 18.009514, 30.830965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898643, 17.202988, 30.512119>,  <17.419914, 17.403643, 30.926067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898643, 17.202988, 30.512119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906355, 17.602369, 30.491268>,  <16.910982, 17.841999, 30.478758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.906355, 17.602369, 30.491268>,  <16.898643, 17.202988, 30.512119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906355, 17.602369, 30.491268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095906, -0.050052, -0.994132,
		-0.995204, 0.024163, 0.094793,
		0.019277, 0.998455, -0.052129,
		16.912138, 17.901905, 30.475630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181372, 17.407463, 30.309872>,  <16.898643, 17.202988, 30.512119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181372, 17.407463, 30.309872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.492994, 17.641661, 30.220186>,  <16.679968, 17.782179, 30.166374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.492994, 17.641661, 30.220186>,  <16.181372, 17.407463, 30.309872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492994, 17.641661, 30.220186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182317, -0.130603, -0.974527,
		-0.599861, 0.800089, 0.004999,
		0.779055, 0.585492, -0.224213,
		16.726711, 17.817308, 30.152922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961285, 18.042521, 29.938381>,  <16.181372, 17.407463, 30.309872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961285, 18.042521, 29.938381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.302713, 17.866585, 29.826698>,  <16.507570, 17.761024, 29.759689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.302713, 17.866585, 29.826698>,  <15.961285, 18.042521, 29.938381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302713, 17.866585, 29.826698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290054, 0.043965, -0.956000,
		0.432761, 0.897000, -0.090050,
		0.853573, -0.439838, -0.279205,
		16.558784, 17.734632, 29.742937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227032, 18.419708, 29.306393>,  <15.961285, 18.042521, 29.938381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227032, 18.419708, 29.306393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.329111, 18.034023, 29.335150>,  <16.390358, 17.802612, 29.352404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.329111, 18.034023, 29.335150>,  <16.227032, 18.419708, 29.306393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329111, 18.034023, 29.335150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296948, -0.148920, -0.943210,
		0.920160, 0.219358, -0.324325,
		0.255199, -0.964212, 0.071893,
		16.405670, 17.744761, 29.356718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120811, 18.403618, 28.513432>,  <16.227032, 18.419708, 29.306393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120811, 18.403618, 28.513432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.901714, 18.721579, 28.617825>,  <15.770256, 18.912355, 28.680460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.901714, 18.721579, 28.617825>,  <16.120811, 18.403618, 28.513432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901714, 18.721579, 28.617825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779283, -0.371210, -0.504897,
		-0.304461, -0.479935, 0.822779,
		-0.547742, 0.794899, 0.260986,
		15.737392, 18.960049, 28.696119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595025, 18.133625, 28.869711>,  <16.120811, 18.403618, 28.513432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595025, 18.133625, 28.869711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.496971, 18.495632, 28.730654>,  <15.438139, 18.712835, 28.647221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.496971, 18.495632, 28.730654>,  <15.595025, 18.133625, 28.869711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496971, 18.495632, 28.730654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712803, -0.411297, -0.568107,
		-0.657130, 0.108537, 0.745922,
		-0.245135, 0.905016, -0.347641,
		15.423430, 18.767138, 28.626362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785391, 18.274231, 28.997219>,  <15.595025, 18.133625, 28.869711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785391, 18.274231, 28.997219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.918343, 18.510210, 28.702875>,  <14.998114, 18.651796, 28.526270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.918343, 18.510210, 28.702875>,  <14.785391, 18.274231, 28.997219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918343, 18.510210, 28.702875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682057, -0.388518, -0.619557,
		-0.651400, 0.707826, 0.273241,
		0.332380, 0.589946, -0.735859,
		15.018057, 18.687193, 28.482117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184273, 18.640169, 28.712286>,  <14.785391, 18.274231, 28.997219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184273, 18.640169, 28.712286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.484045, 18.644522, 28.447489>,  <14.663908, 18.647133, 28.288610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.484045, 18.644522, 28.447489>,  <14.184273, 18.640169, 28.712286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484045, 18.644522, 28.447489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613121, -0.365950, -0.700117,
		-0.249874, 0.930571, -0.267583,
		0.749430, 0.010880, -0.661994,
		14.708874, 18.647785, 28.248890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798930, 18.832621, 28.094608>,  <14.184273, 18.640169, 28.712286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798930, 18.832621, 28.094608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.140182, 18.682714, 27.949434>,  <14.344933, 18.592772, 27.862329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.140182, 18.682714, 27.949434>,  <13.798930, 18.832621, 28.094608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140182, 18.682714, 27.949434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485415, -0.315314, -0.815444,
		0.191161, 0.871854, -0.450920,
		0.853129, -0.374764, -0.362935,
		14.396120, 18.570286, 27.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.259335, 18.961256, 28.706499>,  <13.798930, 18.832621, 28.094608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.259335, 18.961256, 28.706499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946086, 19.183706, 28.595184>,  <12.758137, 19.317177, 28.528397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946086, 19.183706, 28.595184>,  <13.259335, 18.961256, 28.706499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946086, 19.183706, 28.595184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362190, 0.771655, 0.522844,
		0.505508, 0.308659, -0.805724,
		-0.783122, 0.556128, -0.278285,
		12.711149, 19.350544, 28.511700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542351, 19.622267, 28.436943>,  <13.259335, 18.961256, 28.706499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542351, 19.622267, 28.436943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.175726, 19.658144, 28.592825>,  <12.955751, 19.679670, 28.686354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.175726, 19.658144, 28.592825>,  <13.542351, 19.622267, 28.436943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.175726, 19.658144, 28.592825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346087, 0.666158, 0.660649,
		-0.200349, 0.740397, -0.641616,
		-0.916561, 0.089694, 0.389706,
		12.900758, 19.685053, 28.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500964, 20.413898, 28.504175>,  <13.542351, 19.622267, 28.436943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500964, 20.413898, 28.504175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.201097, 20.245855, 28.708725>,  <13.021176, 20.145029, 28.831455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.201097, 20.245855, 28.708725>,  <13.500964, 20.413898, 28.504175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.201097, 20.245855, 28.708725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151039, 0.643691, 0.750233,
		-0.644348, 0.639663, -0.419102,
		-0.749669, -0.420110, 0.511375,
		12.976196, 20.119822, 28.862137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135015, 21.038891, 28.783194>,  <13.500964, 20.413898, 28.504175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135015, 21.038891, 28.783194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.049353, 20.711998, 28.997210>,  <12.997955, 20.515862, 29.125618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.049353, 20.711998, 28.997210>,  <13.135015, 21.038891, 28.783194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049353, 20.711998, 28.997210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218987, 0.493636, 0.841646,
		-0.951936, 0.297411, 0.073248,
		-0.214157, -0.817233, 0.535039,
		12.985106, 20.466827, 29.157721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753345, 21.291891, 29.382578>,  <13.135015, 21.038891, 28.783194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.753345, 21.291891, 29.382578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.870512, 20.926476, 29.495462>,  <12.940813, 20.707226, 29.563192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.870512, 20.926476, 29.495462>,  <12.753345, 21.291891, 29.382578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870512, 20.926476, 29.495462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138841, 0.332669, 0.932767,
		-0.946003, -0.234043, 0.224282,
		0.292920, -0.913540, 0.282211,
		12.958388, 20.652414, 29.580126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.389072, 21.138781, 29.972610>,  <12.753345, 21.291891, 29.382578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.389072, 21.138781, 29.972610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.712325, 20.903223, 29.977160>,  <12.906277, 20.761889, 29.979889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.712325, 20.903223, 29.977160>,  <12.389072, 21.138781, 29.972610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712325, 20.903223, 29.977160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284337, 0.406955, 0.868067,
		-0.515825, -0.698280, 0.496317,
		0.808132, -0.588892, 0.011371,
		12.954764, 20.726555, 29.980572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.532894, 20.966385, 30.659103>,  <12.389072, 21.138781, 29.972610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.532894, 20.966385, 30.659103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.871326, 20.878706, 30.464743>,  <13.074386, 20.826097, 30.348127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.871326, 20.878706, 30.464743>,  <12.532894, 20.966385, 30.659103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.871326, 20.878706, 30.464743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530640, 0.259677, 0.806839,
		-0.050681, -0.940489, 0.336023,
		0.846081, -0.219198, -0.485901,
		13.125151, 20.812946, 30.318972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.027607, 20.689451, 31.214411>,  <12.532894, 20.966385, 30.659103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.027607, 20.689451, 31.214411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.296685, 20.737017, 30.922291>,  <13.458132, 20.765556, 30.747019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.296685, 20.737017, 30.922291>,  <13.027607, 20.689451, 31.214411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296685, 20.737017, 30.922291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557516, 0.567463, 0.605938,
		0.486472, -0.814767, 0.315435,
		0.672696, 0.118912, -0.730301,
		13.498494, 20.772690, 30.703199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671771, 20.355082, 31.492241>,  <13.027607, 20.689451, 31.214411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671771, 20.355082, 31.492241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.743189, 20.631067, 31.211651>,  <13.786039, 20.796659, 31.043297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.743189, 20.631067, 31.211651>,  <13.671771, 20.355082, 31.492241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.743189, 20.631067, 31.211651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521296, 0.538317, 0.662167,
		0.834489, -0.483903, -0.263562,
		0.178545, 0.689966, -0.701476,
		13.796752, 20.838057, 31.001207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330019, 20.373577, 31.424097>,  <13.671771, 20.355082, 31.492241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330019, 20.373577, 31.424097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.230345, 20.739092, 31.295784>,  <14.170541, 20.958401, 31.218796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.230345, 20.739092, 31.295784>,  <14.330019, 20.373577, 31.424097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230345, 20.739092, 31.295784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750198, 0.391606, 0.532774,
		0.612462, -0.107892, -0.783102,
		-0.249185, 0.913786, -0.320784,
		14.155589, 21.013227, 31.199549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905528, 20.811626, 31.303288>,  <14.330019, 20.373577, 31.424097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905528, 20.811626, 31.303288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.667220, 21.131804, 31.276903>,  <14.524236, 21.323910, 31.261072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.667220, 21.131804, 31.276903>,  <14.905528, 20.811626, 31.303288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667220, 21.131804, 31.276903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719668, 0.568498, 0.398608,
		0.356562, 0.190008, -0.914746,
		-0.595770, 0.800442, -0.065962,
		14.488489, 21.371937, 31.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241416, 21.377499, 30.958399>,  <14.905528, 20.811626, 31.303288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241416, 21.377499, 30.958399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.946235, 21.569811, 31.147829>,  <14.769126, 21.685198, 31.261488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.946235, 21.569811, 31.147829>,  <15.241416, 21.377499, 30.958399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946235, 21.569811, 31.147829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669921, 0.606571, 0.428109,
		-0.081430, 0.633183, -0.769707,
		-0.737953, 0.480781, 0.473576,
		14.724849, 21.714045, 31.289902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108065, 22.087183, 30.698553>,  <15.241416, 21.377499, 30.958399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108065, 22.087183, 30.698553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.997252, 22.058168, 31.081800>,  <14.930765, 22.040760, 31.311749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.997252, 22.058168, 31.081800>,  <15.108065, 22.087183, 30.698553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997252, 22.058168, 31.081800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533443, 0.817752, 0.216148,
		-0.799183, 0.570982, -0.187849,
		-0.277030, -0.072535, 0.958119,
		14.914144, 22.036407, 31.369236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125158, 22.845495, 30.764645>,  <15.108065, 22.087183, 30.698553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125158, 22.845495, 30.764645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.071308, 22.708599, 31.136612>,  <15.038999, 22.626461, 31.359793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.071308, 22.708599, 31.136612>,  <15.125158, 22.845495, 30.764645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071308, 22.708599, 31.136612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484793, 0.795726, 0.363038,
		-0.864206, 0.499691, 0.058793,
		-0.134624, -0.342242, 0.929918,
		15.030921, 22.605927, 31.415586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739895, 23.324913, 30.336330>,  <15.125158, 22.845495, 30.764645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739895, 23.324913, 30.336330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.743633, 23.716105, 30.419725>,  <14.745876, 23.950819, 30.469763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.743633, 23.716105, 30.419725>,  <14.739895, 23.324913, 30.336330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.743633, 23.716105, 30.419725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709823, 0.153343, -0.687487,
		-0.704318, -0.141562, 0.695626,
		0.009347, 0.977981, 0.208486,
		14.746437, 24.009499, 30.482271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083932, 23.512354, 30.330421>,  <14.739895, 23.324913, 30.336330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083932, 23.512354, 30.330421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.295043, 23.847275, 30.273319>,  <14.421709, 24.048227, 30.239058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.295043, 23.847275, 30.273319>,  <14.083932, 23.512354, 30.330421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295043, 23.847275, 30.273319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693777, 0.327993, -0.641166,
		-0.490025, 0.437434, 0.754007,
		0.527777, 0.837300, -0.142757,
		14.453376, 24.098465, 30.230492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.682571, 24.176205, 30.464617>,  <14.083932, 23.512354, 30.330421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.682571, 24.176205, 30.464617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.954518, 24.294064, 30.196001>,  <14.117686, 24.364779, 30.034832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.954518, 24.294064, 30.196001>,  <13.682571, 24.176205, 30.464617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954518, 24.294064, 30.196001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727778, 0.383619, -0.568485,
		0.090113, 0.875226, 0.475247,
		0.679867, 0.294646, -0.671539,
		14.158479, 24.382458, 29.994539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604860, 24.891642, 30.314756>,  <13.682571, 24.176205, 30.464617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604860, 24.891642, 30.314756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.801934, 24.744474, 29.999313>,  <13.920178, 24.656174, 29.810047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.801934, 24.744474, 29.999313>,  <13.604860, 24.891642, 30.314756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801934, 24.744474, 29.999313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702670, 0.366389, -0.609929,
		0.513340, 0.854633, -0.078009,
		0.492684, -0.367916, -0.788607,
		13.949739, 24.634100, 29.762732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.256624, 25.137094, 29.770802>,  <13.604860, 24.891642, 30.314756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.256624, 25.137094, 29.770802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.533055, 24.959375, 29.542763>,  <13.698914, 24.852743, 29.405939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.533055, 24.959375, 29.542763>,  <13.256624, 25.137094, 29.770802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533055, 24.959375, 29.542763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507722, 0.262970, -0.820405,
		0.514423, 0.856415, -0.043847,
		0.691077, -0.444297, -0.570099,
		13.740378, 24.826086, 29.371733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515978, 25.569656, 29.095404>,  <13.256624, 25.137094, 29.770802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515978, 25.569656, 29.095404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.591871, 25.182772, 29.027878>,  <13.637407, 24.950640, 28.987362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.591871, 25.182772, 29.027878>,  <13.515978, 25.569656, 29.095404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591871, 25.182772, 29.027878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538909, 0.041134, -0.841359,
		0.820718, 0.250610, -0.513435,
		0.189734, -0.967214, -0.168815,
		13.648791, 24.892607, 28.977234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913372, 25.580748, 28.449474>,  <13.515978, 25.569656, 29.095404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913372, 25.580748, 28.449474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.713147, 25.241037, 28.516611>,  <13.593012, 25.037212, 28.556892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.713147, 25.241037, 28.516611>,  <13.913372, 25.580748, 28.449474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713147, 25.241037, 28.516611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432854, 0.077631, -0.898115,
		0.749716, -0.522214, -0.406471,
		-0.500563, -0.849274, 0.167841,
		13.562979, 24.986256, 28.566963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.583369, 25.547546, 28.206327>,  <13.913372, 25.580748, 28.449474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.583369, 25.547546, 28.206327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.748586, 25.869713, 28.036289>,  <14.847715, 26.063013, 27.934267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.748586, 25.869713, 28.036289>,  <14.583369, 25.547546, 28.206327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.748586, 25.869713, 28.036289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430334, 0.238767, 0.870519,
		0.802627, -0.542492, -0.247977,
		0.413041, 0.805415, -0.425093,
		14.872498, 26.111338, 27.908762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168521, 25.598608, 28.576126>,  <14.583369, 25.547546, 28.206327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168521, 25.598608, 28.576126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.135386, 25.961914, 28.412083>,  <15.115506, 26.179897, 28.313656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.135386, 25.961914, 28.412083>,  <15.168521, 25.598608, 28.576126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135386, 25.961914, 28.412083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439214, 0.402674, 0.803084,
		0.894555, -0.113602, -0.432280,
		-0.082836, 0.908266, -0.410110,
		15.110536, 26.234394, 28.289049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803778, 25.911755, 28.673326>,  <15.168521, 25.598608, 28.576126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803778, 25.911755, 28.673326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.603221, 26.243925, 28.576170>,  <15.482887, 26.443228, 28.517876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.603221, 26.243925, 28.576170>,  <15.803778, 25.911755, 28.673326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603221, 26.243925, 28.576170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553684, 0.523676, 0.647455,
		0.664862, 0.190142, -0.722361,
		-0.501391, 0.830428, -0.242893,
		15.452804, 26.493053, 28.503302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268646, 26.382641, 28.419340>,  <15.803778, 25.911755, 28.673326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268646, 26.382641, 28.419340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.963720, 26.588024, 28.576942>,  <15.780766, 26.711254, 28.671505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.963720, 26.588024, 28.576942>,  <16.268646, 26.382641, 28.419340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963720, 26.588024, 28.576942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583129, 0.280784, 0.762313,
		0.280784, 0.810878, -0.513456,
		-0.762313, 0.513456, 0.394007,
		15.735026, 26.742062, 28.695145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605221, 27.019751, 28.489149>,  <16.268646, 26.382641, 28.419340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605221, 27.019751, 28.489149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.277527, 27.003342, 28.717945>,  <16.080910, 26.993496, 28.855223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.277527, 27.003342, 28.717945>,  <16.605221, 27.019751, 28.489149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.277527, 27.003342, 28.717945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506113, 0.417266, 0.754810,
		-0.269637, 0.907858, -0.321076,
		-0.819234, -0.041024, 0.571989,
		16.031757, 26.991035, 28.889542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617048, 27.667585, 28.762293>,  <16.605221, 27.019751, 28.489149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617048, 27.667585, 28.762293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.390570, 27.450399, 29.010359>,  <16.254683, 27.320087, 29.159199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.390570, 27.450399, 29.010359>,  <16.617048, 27.667585, 28.762293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390570, 27.450399, 29.010359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453891, 0.422660, 0.784437,
		-0.688043, 0.725635, 0.007138,
		-0.566198, -0.542966, 0.620167,
		16.220711, 27.287510, 29.196409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385355, 28.158998, 29.331818>,  <16.617048, 27.667585, 28.762293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385355, 28.158998, 29.331818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.295322, 27.811043, 29.507378>,  <16.241302, 27.602270, 29.612715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.295322, 27.811043, 29.507378>,  <16.385355, 28.158998, 29.331818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295322, 27.811043, 29.507378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481287, 0.292406, 0.826354,
		-0.847173, 0.397235, 0.352850,
		-0.225081, -0.869887, 0.438902,
		16.227798, 27.550077, 29.639048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209581, 28.392080, 30.019320>,  <16.385355, 28.158998, 29.331818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209581, 28.392080, 30.019320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.283245, 27.999018, 30.028040>,  <16.327444, 27.763180, 30.033272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.283245, 27.999018, 30.028040>,  <16.209581, 28.392080, 30.019320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283245, 27.999018, 30.028040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454602, 0.104820, 0.884505,
		-0.871448, -0.152981, 0.466021,
		0.184161, -0.982654, 0.021800,
		16.338493, 27.704222, 30.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946527, 28.134752, 30.682009>,  <16.209581, 28.392080, 30.019320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946527, 28.134752, 30.682009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.220024, 27.872477, 30.553904>,  <16.384123, 27.715111, 30.477041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.220024, 27.872477, 30.553904>,  <15.946527, 28.134752, 30.682009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220024, 27.872477, 30.553904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427175, 0.003827, 0.904161,
		-0.591625, -0.755019, 0.282712,
		0.683740, -0.655692, -0.320261,
		16.425146, 27.675770, 30.457825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.853300, 20.220810, 16.662436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238469, 20.313339, 16.717960>,  <12.469571, 20.368856, 16.751276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238469, 20.313339, 16.717960>,  <11.853300, 20.220810, 16.662436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238469, 20.313339, 16.717960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266052, 0.729071, 0.630612,
		0.044671, -0.644163, 0.763583,
		0.962923, 0.231322, 0.138813,
		12.527346, 20.382736, 16.759604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883898, 20.355106, 17.361429>,  <11.853300, 20.220810, 16.662436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883898, 20.355106, 17.361429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215387, 20.538925, 17.233660>,  <12.414282, 20.649216, 17.156998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215387, 20.538925, 17.233660>,  <11.883898, 20.355106, 17.361429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215387, 20.538925, 17.233660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038167, 0.615827, 0.786956,
		0.558352, -0.639979, 0.527891,
		0.828726, 0.459546, -0.319423,
		12.464005, 20.676790, 17.137833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171654, 20.554558, 17.907993>,  <11.883898, 20.355106, 17.361429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171654, 20.554558, 17.907993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372061, 20.798119, 17.661993>,  <12.492305, 20.944254, 17.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372061, 20.798119, 17.661993>,  <12.171654, 20.554558, 17.907993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372061, 20.798119, 17.661993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185840, 0.618350, 0.763614,
		0.845249, -0.496874, 0.196646,
		0.501016, 0.608900, -0.614999,
		12.522366, 20.980789, 17.477493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633110, 20.797626, 18.284311>,  <12.171654, 20.554558, 17.907993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633110, 20.797626, 18.284311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662260, 21.054176, 17.978807>,  <12.679750, 21.208107, 17.795506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662260, 21.054176, 17.978807>,  <12.633110, 20.797626, 18.284311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662260, 21.054176, 17.978807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420528, 0.674631, 0.606655,
		0.904348, -0.365392, -0.220552,
		0.072876, 0.641375, -0.763759,
		12.684123, 21.246590, 17.749680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221868, 21.030916, 18.335815>,  <12.633110, 20.797626, 18.284311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221868, 21.030916, 18.335815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029634, 21.310886, 18.124479>,  <12.914295, 21.478868, 17.997677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029634, 21.310886, 18.124479>,  <13.221868, 21.030916, 18.335815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029634, 21.310886, 18.124479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252711, 0.687451, 0.680844,
		0.839749, 0.193684, -0.507256,
		-0.480582, 0.699927, -0.528340,
		12.885460, 21.520864, 17.965977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644042, 21.615435, 18.236067>,  <13.221868, 21.030916, 18.335815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644042, 21.615435, 18.236067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275600, 21.763319, 18.187273>,  <13.054536, 21.852051, 18.157997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275600, 21.763319, 18.187273>,  <13.644042, 21.615435, 18.236067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275600, 21.763319, 18.187273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246459, 0.796299, 0.552418,
		0.301374, 0.478770, -0.824593,
		-0.921104, 0.369713, -0.121986,
		12.999269, 21.874233, 18.150677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709353, 22.219557, 17.966846>,  <13.644042, 21.615435, 18.236067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709353, 22.219557, 17.966846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357670, 22.218742, 18.157419>,  <13.146660, 22.218254, 18.271763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357670, 22.218742, 18.157419>,  <13.709353, 22.219557, 17.966846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357670, 22.218742, 18.157419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331805, 0.715005, 0.615364,
		-0.341904, 0.699116, -0.627963,
		-0.879208, -0.002034, 0.476434,
		13.093907, 22.218132, 18.300350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.432276, 23.001892, 17.990112>,  <13.709353, 22.219557, 17.966846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.432276, 23.001892, 17.990112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.233967, 22.790087, 18.265451>,  <13.114982, 22.663004, 18.430655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.233967, 22.790087, 18.265451>,  <13.432276, 23.001892, 17.990112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.233967, 22.790087, 18.265451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185601, 0.709702, 0.679614,
		-0.848387, 0.464693, -0.253574,
		-0.495773, -0.529513, 0.688350,
		13.085235, 22.631233, 18.471956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.915787, 23.519440, 18.241432>,  <13.432276, 23.001892, 17.990112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.915787, 23.519440, 18.241432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.878131, 23.255409, 18.539543>,  <12.855537, 23.096991, 18.718409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.878131, 23.255409, 18.539543>,  <12.915787, 23.519440, 18.241432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.878131, 23.255409, 18.539543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001817, 0.748484, 0.663150,
		-0.995557, 0.063783, -0.069262,
		-0.094140, -0.660078, 0.745275,
		12.849889, 23.057386, 18.763126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.428759, 23.769779, 18.661034>,  <12.915787, 23.519440, 18.241432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.428759, 23.769779, 18.661034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652160, 23.528801, 18.889114>,  <12.786201, 23.384214, 19.025963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652160, 23.528801, 18.889114>,  <12.428759, 23.769779, 18.661034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652160, 23.528801, 18.889114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034031, 0.703467, 0.709913,
		-0.828805, -0.377083, 0.413390,
		0.558502, -0.602447, 0.570204,
		12.819711, 23.348066, 19.060175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202849, 23.985817, 19.385019>,  <12.428759, 23.769779, 18.661034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202849, 23.985817, 19.385019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515795, 23.743250, 19.441828>,  <12.703562, 23.597710, 19.475912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.515795, 23.743250, 19.441828>,  <12.202849, 23.985817, 19.385019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515795, 23.743250, 19.441828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107198, 0.355733, 0.928419,
		-0.613529, -0.711136, 0.343318,
		0.782362, -0.606416, 0.142020,
		12.750504, 23.561325, 19.484434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.025701, 23.546488, 19.917772>,  <12.202849, 23.985817, 19.385019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.025701, 23.546488, 19.917772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423644, 23.584982, 19.905159>,  <12.662411, 23.608078, 19.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.423644, 23.584982, 19.905159>,  <12.025701, 23.546488, 19.917772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.423644, 23.584982, 19.905159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011051, 0.412690, 0.910804,
		0.100662, -0.905774, 0.411633,
		0.994859, 0.096233, -0.031533,
		12.722102, 23.613852, 19.895699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.798476, 22.972982, 20.251650>,  <12.025701, 23.546488, 19.917772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.798476, 22.972982, 20.251650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441820, 22.965683, 20.432600>,  <11.227826, 22.961304, 20.541170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441820, 22.965683, 20.432600>,  <11.798476, 22.972982, 20.251650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.441820, 22.965683, 20.432600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404715, -0.415742, -0.814472,
		0.202935, -0.909299, 0.363307,
		-0.891641, -0.018250, 0.452376,
		11.174328, 22.960209, 20.568314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552462, 22.380392, 20.199368>,  <11.798476, 22.972982, 20.251650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552462, 22.380392, 20.199368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190120, 22.526829, 20.284601>,  <10.972714, 22.614691, 20.335741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190120, 22.526829, 20.284601>,  <11.552462, 22.380392, 20.199368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.190120, 22.526829, 20.284601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357921, -0.392487, -0.847259,
		-0.226541, -0.843760, 0.486568,
		-0.905854, 0.366092, 0.213085,
		10.918364, 22.636656, 20.348526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048376, 21.786169, 20.087772>,  <11.552462, 22.380392, 20.199368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048376, 21.786169, 20.087772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.840281, 22.126842, 20.062517>,  <10.715424, 22.331247, 20.047363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.840281, 22.126842, 20.062517>,  <11.048376, 21.786169, 20.087772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.840281, 22.126842, 20.062517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598016, -0.416073, -0.685026,
		-0.609696, -0.318619, 0.725777,
		-0.520238, 0.851684, -0.063139,
		10.684209, 22.382347, 20.043575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.338212, 21.564730, 20.049845>,  <11.048376, 21.786169, 20.087772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.338212, 21.564730, 20.049845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346910, 21.942722, 19.919285>,  <10.352130, 22.169518, 19.840950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346910, 21.942722, 19.919285>,  <10.338212, 21.564730, 20.049845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346910, 21.942722, 19.919285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698651, -0.219164, -0.681068,
		-0.715132, 0.242849, 0.655447,
		0.021746, 0.944982, -0.326398,
		10.353435, 22.226217, 19.821365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.615656, 21.721069, 19.933317>,  <10.338212, 21.564730, 20.049845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.615656, 21.721069, 19.933317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.841790, 21.965437, 19.711622>,  <9.977470, 22.112057, 19.578606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.841790, 21.965437, 19.711622>,  <9.615656, 21.721069, 19.933317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.841790, 21.965437, 19.711622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621910, -0.125711, -0.772932,
		-0.541870, 0.781651, 0.308867,
		0.565335, 0.610917, -0.554235,
		10.011391, 22.148712, 19.545351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095192, 22.011034, 19.486179>,  <9.615656, 21.721069, 19.933317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095192, 22.011034, 19.486179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.440294, 22.078798, 19.295620>,  <9.647355, 22.119457, 19.181284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.440294, 22.078798, 19.295620>,  <9.095192, 22.011034, 19.486179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.440294, 22.078798, 19.295620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391563, -0.372245, -0.841494,
		-0.319895, 0.912543, -0.254822,
		0.862755, 0.169411, -0.476397,
		9.699121, 22.129622, 19.152700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.987384, 22.337683, 18.756039>,  <9.095192, 22.011034, 19.486179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.987384, 22.337683, 18.756039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.361472, 22.196144, 18.751059>,  <9.585925, 22.111221, 18.748072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.361472, 22.196144, 18.751059>,  <8.987384, 22.337683, 18.756039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.361472, 22.196144, 18.751059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181810, -0.449766, -0.874446,
		0.303820, 0.820063, -0.484963,
		0.935221, -0.353846, -0.012448,
		9.642038, 22.089991, 18.747324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.295733, 22.455381, 18.046112>,  <8.987384, 22.337683, 18.756039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.295733, 22.455381, 18.046112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.494980, 22.157089, 18.223095>,  <9.614528, 21.978113, 18.329285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.494980, 22.157089, 18.223095>,  <9.295733, 22.455381, 18.046112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.494980, 22.157089, 18.223095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150564, -0.576897, -0.802820,
		0.853938, 0.333280, -0.399642,
		0.498116, -0.745730, 0.442455,
		9.644415, 21.933371, 18.355831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.634543, 22.131758, 17.495474>,  <9.295733, 22.455381, 18.046112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.634543, 22.131758, 17.495474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.682403, 21.851788, 17.777122>,  <9.711118, 21.683805, 17.946112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.682403, 21.851788, 17.777122>,  <9.634543, 22.131758, 17.495474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.682403, 21.851788, 17.777122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202527, -0.711512, -0.672855,
		0.971940, -0.062098, -0.226885,
		0.119648, -0.699925, 0.704123,
		9.718297, 21.641809, 17.988359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.104359, 21.573820, 17.197645>,  <9.634543, 22.131758, 17.495474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.104359, 21.573820, 17.197645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886266, 21.420424, 17.495813>,  <9.755410, 21.328384, 17.674715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886266, 21.420424, 17.495813>,  <10.104359, 21.573820, 17.197645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.886266, 21.420424, 17.495813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184197, -0.812684, -0.552826,
		0.817797, -0.438724, 0.372464,
		-0.545233, -0.383493, 0.745422,
		9.722695, 21.305376, 17.719440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.313321, 20.866634, 17.308743>,  <10.104359, 21.573820, 17.197645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.313321, 20.866634, 17.308743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.938807, 20.903770, 17.444244>,  <9.714099, 20.926052, 17.525545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.938807, 20.903770, 17.444244>,  <10.313321, 20.866634, 17.308743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.938807, 20.903770, 17.444244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241746, -0.869994, -0.429731,
		0.254817, -0.484243, 0.837005,
		-0.936284, 0.092840, 0.338753,
		9.657923, 20.931622, 17.545870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188293, 20.188894, 17.527464>,  <10.313321, 20.866634, 17.308743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188293, 20.188894, 17.527464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.838568, 20.377256, 17.480438>,  <9.628733, 20.490274, 17.452223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.838568, 20.377256, 17.480438>,  <10.188293, 20.188894, 17.527464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.838568, 20.377256, 17.480438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417498, -0.853202, -0.312636,
		-0.247527, -0.224260, 0.942570,
		-0.874314, 0.470907, -0.117563,
		9.576273, 20.518528, 17.445169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.784427, 19.822721, 17.903873>,  <10.188293, 20.188894, 17.527464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.784427, 19.822721, 17.903873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.536766, 20.023161, 17.662029>,  <9.388169, 20.143425, 17.516924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.536766, 20.023161, 17.662029>,  <9.784427, 19.822721, 17.903873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.536766, 20.023161, 17.662029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506959, -0.843058, -0.179572,
		-0.599703, 0.195330, 0.776017,
		-0.619152, 0.501099, -0.604609,
		9.351021, 20.173491, 17.480646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.120107, 19.552111, 18.016315>,  <9.784427, 19.822721, 17.903873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.120107, 19.552111, 18.016315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114908, 19.721481, 17.653980>,  <9.111790, 19.823103, 17.436579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114908, 19.721481, 17.653980>,  <9.120107, 19.552111, 18.016315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114908, 19.721481, 17.653980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658702, -0.685193, -0.310839,
		-0.752291, 0.592638, 0.287816,
		-0.012995, 0.423427, -0.905837,
		9.111010, 19.848509, 17.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.483155, 18.985218, 18.151758>,  <9.120107, 19.552111, 18.016315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.483155, 18.985218, 18.151758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.385539, 18.620832, 18.284779>,  <9.326969, 18.402201, 18.364592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.385539, 18.620832, 18.284779>,  <9.483155, 18.985218, 18.151758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.385539, 18.620832, 18.284779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372528, 0.404670, 0.835144,
		-0.895359, 0.079924, -0.438115,
		-0.244040, -0.910963, 0.332551,
		9.312327, 18.347544, 18.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.791101, 19.028084, 18.486284>,  <9.483155, 18.985218, 18.151758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.791101, 19.028084, 18.486284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976804, 18.701155, 18.622780>,  <9.088225, 18.504997, 18.704678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976804, 18.701155, 18.622780>,  <8.791101, 19.028084, 18.486284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.976804, 18.701155, 18.622780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294098, 0.221161, 0.929836,
		-0.835447, -0.532041, -0.137698,
		0.464257, -0.817325, 0.341240,
		9.116081, 18.455957, 18.725151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.499181, 18.784405, 19.120232>,  <8.791101, 19.028084, 18.486284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.499181, 18.784405, 19.120232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.815769, 18.540014, 19.113482>,  <9.005722, 18.393381, 19.109432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.815769, 18.540014, 19.113482>,  <8.499181, 18.784405, 19.120232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.815769, 18.540014, 19.113482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065370, -0.112066, 0.991548,
		-0.607702, -0.783678, -0.128637,
		0.791470, -0.610975, -0.016874,
		9.053210, 18.356722, 19.108419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368981, 18.276079, 19.708899>,  <8.499181, 18.784405, 19.120232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368981, 18.276079, 19.708899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756501, 18.246248, 19.614357>,  <8.989014, 18.228350, 19.557632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756501, 18.246248, 19.614357>,  <8.368981, 18.276079, 19.708899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756501, 18.246248, 19.614357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206432, -0.284941, 0.936053,
		-0.137154, -0.955640, -0.260656,
		0.968800, -0.074576, -0.236355,
		9.047141, 18.223875, 19.543449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.752128, 17.559196, 19.803211>,  <8.368981, 18.276079, 19.708899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.752128, 17.559196, 19.803211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028870, 17.843750, 19.852634>,  <9.194915, 18.014482, 19.882288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.028870, 17.843750, 19.852634>,  <8.752128, 17.559196, 19.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.028870, 17.843750, 19.852634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318893, -0.454587, 0.831660,
		0.647799, -0.535986, -0.541364,
		0.691855, 0.711385, 0.123559,
		9.236426, 18.057165, 19.889702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.279296, 17.123001, 20.082577>,  <8.752128, 17.559196, 19.803211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.279296, 17.123001, 20.082577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.342377, 17.508747, 20.167557>,  <9.380225, 17.740194, 20.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.342377, 17.508747, 20.167557>,  <9.279296, 17.123001, 20.082577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.342377, 17.508747, 20.167557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265281, -0.248606, 0.931569,
		0.951187, -0.090552, -0.295033,
		0.157703, 0.964363, 0.212449,
		9.389688, 17.798056, 20.231291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.770297, 17.017538, 20.600630>,  <9.279296, 17.123001, 20.082577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.770297, 17.017538, 20.600630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663075, 17.402779, 20.610256>,  <9.598742, 17.633923, 20.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663075, 17.402779, 20.610256>,  <9.770297, 17.017538, 20.600630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663075, 17.402779, 20.610256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031527, -0.033738, 0.998933,
		0.962888, 0.267009, 0.039408,
		-0.268054, 0.963103, 0.024068,
		9.582659, 17.691710, 20.617476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.215434, 17.303007, 21.010962>,  <9.770297, 17.017538, 20.600630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.215434, 17.303007, 21.010962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.894897, 17.542048, 21.021738>,  <9.702576, 17.685471, 21.028204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.894897, 17.542048, 21.021738>,  <10.215434, 17.303007, 21.010962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.894897, 17.542048, 21.021738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012367, -0.061579, 0.998026,
		0.598079, 0.799426, 0.056736,
		-0.801342, 0.597600, 0.026942,
		9.654495, 17.721327, 21.029821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.421227, 17.760517, 21.601311>,  <10.215434, 17.303007, 21.010962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.421227, 17.760517, 21.601311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.031258, 17.829374, 21.544891>,  <9.797276, 17.870689, 21.511040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.031258, 17.829374, 21.544891>,  <10.421227, 17.760517, 21.601311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.031258, 17.829374, 21.544891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115387, 0.150957, 0.981783,
		0.190299, 0.973437, -0.127309,
		-0.974922, 0.172143, -0.141049,
		9.738781, 17.881018, 21.502577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.261514, 18.316660, 22.051886>,  <10.421227, 17.760517, 21.601311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.261514, 18.316660, 22.051886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911480, 18.131498, 21.995394>,  <9.701460, 18.020401, 21.961498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.911480, 18.131498, 21.995394>,  <10.261514, 18.316660, 22.051886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.911480, 18.131498, 21.995394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170135, 0.021045, 0.985196,
		-0.453080, 0.886158, -0.097173,
		-0.875084, -0.462906, -0.141232,
		9.648954, 17.992626, 21.953024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.788791, 18.723331, 22.370817>,  <10.261514, 18.316660, 22.051886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.788791, 18.723331, 22.370817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641874, 18.351952, 22.348616>,  <9.553724, 18.129124, 22.335295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.641874, 18.351952, 22.348616>,  <9.788791, 18.723331, 22.370817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641874, 18.351952, 22.348616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087214, -0.025034, 0.995875,
		-0.926008, 0.370617, -0.071779,
		-0.367291, -0.928448, -0.055504,
		9.531687, 18.073418, 22.331964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.143481, 18.753733, 22.752689>,  <9.788791, 18.723331, 22.370817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.143481, 18.753733, 22.752689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.249298, 18.367996, 22.755877>,  <9.312788, 18.136555, 22.757790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.249298, 18.367996, 22.755877>,  <9.143481, 18.753733, 22.752689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.249298, 18.367996, 22.755877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111733, -0.022442, 0.993485,
		-0.957879, -0.263710, -0.113685,
		0.264543, -0.964341, 0.007969,
		9.328661, 18.078693, 22.758266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.722499, 18.415585, 23.424263>,  <9.143481, 18.753733, 22.752689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.722499, 18.415585, 23.424263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.021473, 18.180910, 23.299595>,  <9.200857, 18.040106, 23.224794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.021473, 18.180910, 23.299595>,  <8.722499, 18.415585, 23.424263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.021473, 18.180910, 23.299595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297375, -0.124052, 0.946667,
		-0.594061, -0.800256, 0.081745,
		0.747435, -0.586687, -0.311671,
		9.245704, 18.004904, 23.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.862635, 17.790663, 23.984798>,  <8.722499, 18.415585, 23.424263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.862635, 17.790663, 23.984798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194581, 17.858604, 23.772205>,  <9.393748, 17.899370, 23.644650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194581, 17.858604, 23.772205>,  <8.862635, 17.790663, 23.984798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194581, 17.858604, 23.772205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556625, -0.186068, 0.809659,
		0.038632, -0.967744, -0.248956,
		0.829865, 0.169854, -0.531482,
		9.443541, 17.909561, 23.612761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.238364, 17.374905, 24.417053>,  <8.862635, 17.790663, 23.984798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.238364, 17.374905, 24.417053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.513353, 17.494116, 24.152159>,  <9.678347, 17.565643, 23.993221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.513353, 17.494116, 24.152159>,  <9.238364, 17.374905, 24.417053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.513353, 17.494116, 24.152159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725623, -0.245252, 0.642902,
		0.029189, -0.922513, -0.384862,
		0.687474, 0.298030, -0.662237,
		9.719595, 17.583525, 23.953487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.858054, 16.794903, 24.290785>,  <9.238364, 17.374905, 24.417053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.858054, 16.794903, 24.290785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985268, 17.168152, 24.223686>,  <10.061596, 17.392101, 24.183426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985268, 17.168152, 24.223686>,  <9.858054, 16.794903, 24.290785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.985268, 17.168152, 24.223686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691270, -0.107138, 0.714611,
		0.648846, -0.343230, -0.679111,
		0.318034, 0.933121, -0.167748,
		10.080678, 17.448088, 24.173361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.583515, 16.670536, 24.415546>,  <9.858054, 16.794903, 24.290785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.583515, 16.670536, 24.415546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.466300, 17.051832, 24.445097>,  <10.395970, 17.280611, 24.462828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.466300, 17.051832, 24.445097>,  <10.583515, 16.670536, 24.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.466300, 17.051832, 24.445097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412931, 0.056492, 0.909008,
		0.862332, 0.296881, -0.410178,
		-0.293039, 0.953242, 0.073876,
		10.378388, 17.337805, 24.467260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.211622, 16.969242, 24.603914>,  <10.583515, 16.670536, 24.415546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.211622, 16.969242, 24.603914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929807, 17.234856, 24.704062>,  <10.760717, 17.394224, 24.764151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929807, 17.234856, 24.704062>,  <11.211622, 16.969242, 24.603914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.929807, 17.234856, 24.704062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487043, 0.195837, 0.851139,
		0.516153, 0.721601, -0.461387,
		-0.704539, 0.664033, 0.250369,
		10.718445, 17.434065, 24.779173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563752, 17.505817, 24.832113>,  <11.211622, 16.969242, 24.603914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563752, 17.505817, 24.832113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194857, 17.570831, 24.972433>,  <10.973519, 17.609840, 25.056625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194857, 17.570831, 24.972433>,  <11.563752, 17.505817, 24.832113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.194857, 17.570831, 24.972433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385049, 0.467917, 0.795482,
		-0.034850, 0.868698, -0.494115,
		-0.922238, 0.162536, 0.350798,
		10.918185, 17.619593, 25.077673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.611869, 18.226057, 24.965115>,  <11.563752, 17.505817, 24.832113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.611869, 18.226057, 24.965115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292773, 18.094423, 25.167231>,  <11.101315, 18.015444, 25.288500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292773, 18.094423, 25.167231>,  <11.611869, 18.226057, 24.965115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292773, 18.094423, 25.167231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397823, 0.342496, 0.851137,
		-0.453155, 0.880000, -0.142305,
		-0.797739, -0.329085, 0.505288,
		11.053452, 17.995697, 25.318817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.425385, 18.784740, 25.383383>,  <11.611869, 18.226057, 24.965115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.425385, 18.784740, 25.383383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233332, 18.482048, 25.560846>,  <11.118100, 18.300432, 25.667324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233332, 18.482048, 25.560846>,  <11.425385, 18.784740, 25.383383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233332, 18.482048, 25.560846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358925, 0.292013, 0.886511,
		-0.800404, 0.584881, 0.131405,
		-0.480131, -0.756731, 0.443657,
		11.089293, 18.255028, 25.693943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.023894, 19.017170, 25.819757>,  <11.425385, 18.784740, 25.383383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.023894, 19.017170, 25.819757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092719, 18.658558, 25.983040>,  <11.134014, 18.443392, 26.081009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.092719, 18.658558, 25.983040>,  <11.023894, 19.017170, 25.819757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.092719, 18.658558, 25.983040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397135, 0.442348, 0.804122,
		-0.901487, 0.023753, 0.432154,
		0.172062, -0.896529, 0.408204,
		11.144338, 18.389599, 26.105501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.813120, 19.127125, 26.450041>,  <11.023894, 19.017170, 25.819757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.813120, 19.127125, 26.450041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021104, 18.786863, 26.481098>,  <11.145894, 18.582706, 26.499733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.021104, 18.786863, 26.481098>,  <10.813120, 19.127125, 26.450041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.021104, 18.786863, 26.481098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384362, 0.314175, 0.868078,
		-0.762828, -0.421523, 0.490318,
		0.519961, -0.850654, 0.077644,
		11.177093, 18.531668, 26.504391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.890605, 19.037775, 27.174379>,  <10.813120, 19.127125, 26.450041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.890605, 19.037775, 27.174379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183190, 18.798794, 27.042919>,  <11.358742, 18.655405, 26.964043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183190, 18.798794, 27.042919>,  <10.890605, 19.037775, 27.174379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.183190, 18.798794, 27.042919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604361, 0.344838, 0.718216,
		-0.315771, -0.723972, 0.613314,
		0.731462, -0.597455, -0.328650,
		11.402629, 18.619558, 26.944324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007806, 18.611261, 27.654509>,  <10.890605, 19.037775, 27.174379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007806, 18.611261, 27.654509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336700, 18.637653, 27.428385>,  <11.534038, 18.653488, 27.292711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.336700, 18.637653, 27.428385>,  <11.007806, 18.611261, 27.654509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336700, 18.637653, 27.428385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496839, 0.401299, 0.769487,
		0.277627, -0.913568, 0.297183,
		0.822237, 0.065978, -0.565308,
		11.583371, 18.657446, 27.258793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397444, 18.563166, 28.180771>,  <11.007806, 18.611261, 27.654509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397444, 18.563166, 28.180771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642300, 18.685797, 27.889210>,  <11.789213, 18.759375, 27.714273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642300, 18.685797, 27.889210>,  <11.397444, 18.563166, 28.180771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642300, 18.685797, 27.889210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568068, 0.470734, 0.675062,
		0.550077, -0.827297, 0.113998,
		0.612139, 0.306577, -0.728901,
		11.825942, 18.777769, 27.670540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.084429, 18.305521, 28.364349>,  <11.397444, 18.563166, 28.180771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.084429, 18.305521, 28.364349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.079789, 18.637205, 28.140823>,  <12.077005, 18.836216, 28.006708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.079789, 18.637205, 28.140823>,  <12.084429, 18.305521, 28.364349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.079789, 18.637205, 28.140823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532815, 0.478030, 0.698280,
		0.846152, -0.289645, -0.447362,
		-0.011599, 0.829212, -0.558813,
		12.076309, 18.885969, 27.973179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732028, 18.458227, 28.471081>,  <12.084429, 18.305521, 28.364349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732028, 18.458227, 28.471081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558941, 18.794901, 28.341885>,  <12.455089, 18.996904, 28.264366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.558941, 18.794901, 28.341885>,  <12.732028, 18.458227, 28.471081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558941, 18.794901, 28.341885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396326, 0.499394, 0.770409,
		0.809741, 0.205360, -0.549678,
		-0.432717, 0.841684, -0.322991,
		12.429126, 19.047407, 28.244987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
