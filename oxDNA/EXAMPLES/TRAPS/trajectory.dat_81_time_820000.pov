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
	<36.716969, 53.782848, 48.718632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743378, 53.449272, 48.937790>,  <36.759224, 53.249126, 49.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743378, 53.449272, 48.937790>,  <36.716969, 53.782848, 48.718632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743378, 53.449272, 48.937790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908375, 0.277451, 0.312850,
		-0.412911, 0.477038, 0.775848,
		0.066019, -0.833940, 0.547892,
		36.763184, 53.199089, 49.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391903, 53.849613, 49.085621>,  <36.716969, 53.782848, 48.718632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391903, 53.849613, 49.085621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306744, 53.468189, 49.170845>,  <37.255650, 53.239334, 49.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306744, 53.468189, 49.170845>,  <37.391903, 53.849613, 49.085621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306744, 53.468189, 49.170845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896840, -0.104173, 0.429913,
		-0.387754, 0.282608, 0.877371,
		-0.212895, -0.953562, 0.213061,
		37.242874, 53.182121, 49.234764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652298, 53.579346, 49.660931>,  <37.391903, 53.849613, 49.085621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652298, 53.579346, 49.660931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658604, 53.233253, 49.460480>,  <37.662388, 53.025597, 49.340210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658604, 53.233253, 49.460480>,  <37.652298, 53.579346, 49.660931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658604, 53.233253, 49.460480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918858, -0.185092, 0.348483,
		-0.394273, -0.465954, 0.792108,
		0.015764, -0.865233, -0.501123,
		37.663334, 52.973682, 49.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928883, 53.194080, 50.184013>,  <37.652298, 53.579346, 49.660931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928883, 53.194080, 50.184013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985859, 53.087399, 49.802734>,  <38.020046, 53.023388, 49.573967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985859, 53.087399, 49.802734>,  <37.928883, 53.194080, 50.184013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985859, 53.087399, 49.802734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970352, -0.152347, 0.187632,
		-0.195260, -0.951660, 0.237101,
		0.142441, -0.266708, -0.953193,
		38.028591, 53.007385, 49.516777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522469, 52.602154, 50.176067>,  <37.928883, 53.194080, 50.184013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522469, 52.602154, 50.176067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405792, 52.385544, 50.491451>,  <38.335789, 52.255577, 50.680683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405792, 52.385544, 50.491451>,  <38.522469, 52.602154, 50.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405792, 52.385544, 50.491451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954072, -0.223578, 0.199400,
		0.068303, 0.810412, 0.581865,
		-0.291688, -0.541521, 0.788463,
		38.318287, 52.223087, 50.727989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836857, 52.789944, 50.830238>,  <38.522469, 52.602154, 50.176067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836857, 52.789944, 50.830238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744061, 52.401321, 50.849262>,  <38.688381, 52.168148, 50.860676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744061, 52.401321, 50.849262>,  <38.836857, 52.789944, 50.830238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744061, 52.401321, 50.849262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956585, -0.219006, 0.192307,
		-0.176422, 0.090105, 0.980182,
		-0.231994, -0.971554, 0.047555,
		38.674461, 52.109856, 50.863529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965298, 52.454056, 51.456352>,  <38.836857, 52.789944, 50.830238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965298, 52.454056, 51.456352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 52.206097, 51.145817>,  <39.038319, 52.057320, 50.959496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 52.206097, 51.145817>,  <38.965298, 52.454056, 51.456352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010937, 52.206097, 51.145817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976094, -0.075566, 0.203788,
		-0.184993, -0.781035, 0.596458,
		0.114093, -0.619899, -0.776343,
		39.045166, 52.020126, 50.912914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201359, 51.912151, 51.734783>,  <38.965298, 52.454056, 51.456352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201359, 51.912151, 51.734783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321045, 51.976250, 51.358528>,  <39.392857, 52.014709, 51.132774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321045, 51.976250, 51.358528>,  <39.201359, 51.912151, 51.734783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321045, 51.976250, 51.358528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954140, -0.040563, 0.296601,
		0.009375, -0.986243, -0.165037,
		0.299215, 0.160249, -0.940633,
		39.410809, 52.024323, 51.076340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530205, 51.405853, 51.304871>,  <39.201359, 51.912151, 51.734783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530205, 51.405853, 51.304871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691818, 51.765835, 51.239342>,  <39.788788, 51.981823, 51.200024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691818, 51.765835, 51.239342>,  <39.530205, 51.405853, 51.304871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691818, 51.765835, 51.239342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831430, -0.286625, 0.475994,
		0.381415, -0.328530, -0.864055,
		0.404038, 0.899952, -0.163827,
		39.813030, 52.035820, 51.190193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147675, 51.362064, 51.029362>,  <39.530205, 51.405853, 51.304871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147675, 51.362064, 51.029362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132504, 51.706505, 51.232170>,  <40.123402, 51.913170, 51.353855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132504, 51.706505, 51.232170>,  <40.147675, 51.362064, 51.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132504, 51.706505, 51.232170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776648, -0.293873, 0.557186,
		0.628792, 0.414909, -0.657625,
		-0.037923, 0.861098, 0.507023,
		40.121128, 51.964832, 51.384277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841606, 51.683529, 51.217487>,  <40.147675, 51.362064, 51.029362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841606, 51.683529, 51.217487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589180, 51.765659, 51.516716>,  <40.437725, 51.814938, 51.696251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589180, 51.765659, 51.516716>,  <40.841606, 51.683529, 51.217487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589180, 51.765659, 51.516716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718319, -0.209423, 0.663446,
		0.292884, 0.956025, -0.015329,
		-0.631061, 0.205324, 0.748067,
		40.399860, 51.827255, 51.741135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097145, 52.172558, 51.861515>,  <40.841606, 51.683529, 51.217487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097145, 52.172558, 51.861515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854206, 51.896927, 52.019657>,  <40.708443, 51.731548, 52.114544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854206, 51.896927, 52.019657>,  <41.097145, 52.172558, 51.861515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854206, 51.896927, 52.019657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564485, -0.024139, 0.825090,
		-0.559004, 0.724290, 0.403632,
		-0.607348, -0.689073, 0.395357,
		40.672001, 51.690205, 52.138264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745937, 52.427193, 52.380344>,  <41.097145, 52.172558, 51.861515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745937, 52.427193, 52.380344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788536, 52.037647, 52.460594>,  <40.814095, 51.803921, 52.508743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788536, 52.037647, 52.460594>,  <40.745937, 52.427193, 52.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788536, 52.037647, 52.460594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469706, 0.227113, 0.853110,
		-0.876376, 0.003383, 0.481616,
		0.106495, -0.973862, 0.200626,
		40.820484, 51.745487, 52.520782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400326, 52.126003, 53.045464>,  <40.745937, 52.427193, 52.380344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400326, 52.126003, 53.045464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739269, 51.943432, 52.936905>,  <40.942635, 51.833889, 52.871769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739269, 51.943432, 52.936905>,  <40.400326, 52.126003, 53.045464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739269, 51.943432, 52.936905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422718, 0.270475, 0.864958,
		-0.321385, -0.847655, 0.422130,
		0.847361, -0.456426, -0.271392,
		40.993477, 51.806503, 52.855488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587433, 51.590412, 53.558903>,  <40.400326, 52.126003, 53.045464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587433, 51.590412, 53.558903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922115, 51.680618, 53.359276>,  <41.122925, 51.734741, 53.239498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922115, 51.680618, 53.359276>,  <40.587433, 51.590412, 53.558903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922115, 51.680618, 53.359276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489838, 0.099367, 0.866132,
		0.244919, -0.969158, -0.027326,
		0.836704, 0.225518, -0.499068,
		41.173126, 51.748272, 53.209557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079830, 51.703030, 54.017883>,  <40.587433, 51.590412, 53.558903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079830, 51.703030, 54.017883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316055, 51.701530, 53.695091>,  <41.457790, 51.700630, 53.501415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316055, 51.701530, 53.695091>,  <41.079830, 51.703030, 54.017883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316055, 51.701530, 53.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803343, -0.092230, 0.588332,
		-0.076632, -0.995731, -0.051459,
		0.590566, -0.003746, -0.806981,
		41.493225, 51.700405, 53.452995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480965, 51.010056, 53.932407>,  <41.079830, 51.703030, 54.017883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480965, 51.010056, 53.932407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659683, 51.331844, 53.775848>,  <41.766914, 51.524918, 53.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659683, 51.331844, 53.775848>,  <41.480965, 51.010056, 53.932407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659683, 51.331844, 53.775848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849551, -0.244388, 0.467480,
		0.280424, -0.541380, -0.792635,
		0.446795, 0.804476, -0.391397,
		41.793720, 51.573189, 53.658428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059856, 50.788956, 53.556908>,  <41.480965, 51.010056, 53.932407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059856, 50.788956, 53.556908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073341, 51.134022, 53.758766>,  <42.081432, 51.341061, 53.879883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073341, 51.134022, 53.758766>,  <42.059856, 50.788956, 53.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073341, 51.134022, 53.758766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747609, -0.356870, 0.560111,
		0.663283, 0.358396, -0.656969,
		0.033711, 0.862668, 0.504646,
		42.083454, 51.392822, 53.910160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768162, 51.118137, 53.485313>,  <42.059856, 50.788956, 53.556908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768162, 51.118137, 53.485313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575638, 51.253548, 53.808727>,  <42.460121, 51.334793, 54.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575638, 51.253548, 53.808727>,  <42.768162, 51.118137, 53.485313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575638, 51.253548, 53.808727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826692, -0.131341, 0.547111,
		0.291408, 0.931744, -0.216643,
		-0.481313, 0.338530, 0.808539,
		42.431244, 51.355106, 54.051289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108505, 51.708294, 53.868252>,  <42.768162, 51.118137, 53.485313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108505, 51.708294, 53.868252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886917, 51.512276, 54.137466>,  <42.753963, 51.394665, 54.298996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886917, 51.512276, 54.137466>,  <43.108505, 51.708294, 53.868252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886917, 51.512276, 54.137466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812339, -0.141167, 0.565842,
		-0.182278, 0.860190, 0.476285,
		-0.553968, -0.490046, 0.673034,
		42.720726, 51.365261, 54.339378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689861, 51.713852, 54.409996>,  <43.108505, 51.708294, 53.868252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689861, 51.713852, 54.409996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706932, 52.083122, 54.562794>,  <43.717175, 52.304684, 54.654472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706932, 52.083122, 54.562794>,  <43.689861, 51.713852, 54.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706932, 52.083122, 54.562794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991257, 0.008660, -0.131662,
		-0.124856, 0.384273, -0.914738,
		0.042672, 0.923179, 0.381995,
		43.719734, 52.360077, 54.677391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030296, 52.098892, 53.941006>,  <43.689861, 51.713852, 54.409996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030296, 52.098892, 53.941006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084816, 52.306862, 54.278313>,  <44.117527, 52.431644, 54.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084816, 52.306862, 54.278313>,  <44.030296, 52.098892, 53.941006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084816, 52.306862, 54.278313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971574, 0.096162, -0.216323,
		-0.193562, 0.848782, -0.492038,
		0.136296, 0.519924, 0.843269,
		44.125706, 52.462837, 54.531292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467747, 52.660912, 53.910751>,  <44.030296, 52.098892, 53.941006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467747, 52.660912, 53.910751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500015, 52.619137, 54.307251>,  <44.519379, 52.594070, 54.545151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500015, 52.619137, 54.307251>,  <44.467747, 52.660912, 53.910751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500015, 52.619137, 54.307251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945919, 0.321525, -0.043109,
		-0.314211, 0.941124, 0.124730,
		0.080675, -0.104439, 0.991254,
		44.524220, 52.587807, 54.604626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523464, 53.309818, 54.325432>,  <44.467747, 52.660912, 53.910751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523464, 53.309818, 54.325432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746563, 53.023037, 54.492714>,  <44.880421, 52.850967, 54.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746563, 53.023037, 54.492714>,  <44.523464, 53.309818, 54.325432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746563, 53.023037, 54.492714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829508, 0.499045, -0.250739,
		-0.028936, 0.486755, 0.873059,
		0.557745, -0.716954, 0.418208,
		44.913887, 52.807949, 54.618176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885284, 53.701454, 54.760887>,  <44.523464, 53.309818, 54.325432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885284, 53.701454, 54.760887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064320, 53.366768, 54.634666>,  <45.171741, 53.165955, 54.558933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064320, 53.366768, 54.634666>,  <44.885284, 53.701454, 54.760887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064320, 53.366768, 54.634666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790025, 0.535309, -0.298839,
		0.418963, -0.115540, 0.900622,
		0.447584, -0.836717, -0.315554,
		45.198593, 53.115753, 54.540001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565109, 53.623688, 55.062084>,  <44.885284, 53.701454, 54.760887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565109, 53.623688, 55.062084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557846, 53.440750, 54.706444>,  <45.553490, 53.330986, 54.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557846, 53.440750, 54.706444>,  <45.565109, 53.623688, 55.062084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557846, 53.440750, 54.706444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898360, 0.382882, -0.215294,
		0.438885, -0.802644, 0.403908,
		-0.018155, -0.457344, -0.889104,
		45.552399, 53.303547, 54.439713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098030, 52.988327, 54.927872>,  <45.565109, 53.623688, 55.062084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098030, 52.988327, 54.927872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988136, 53.208496, 54.612518>,  <45.922199, 53.340599, 54.423306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988136, 53.208496, 54.612518>,  <46.098030, 52.988327, 54.927872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988136, 53.208496, 54.612518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902345, 0.430798, -0.013682,
		0.332103, -0.715153, -0.615031,
		-0.274739, 0.550427, -0.788384,
		45.905716, 53.373623, 54.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626003, 52.909004, 54.389046>,  <46.098030, 52.988327, 54.927872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626003, 52.909004, 54.389046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431862, 53.257370, 54.419865>,  <46.315376, 53.466389, 54.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431862, 53.257370, 54.419865>,  <46.626003, 52.909004, 54.389046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431862, 53.257370, 54.419865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859170, 0.458761, 0.226637,
		0.162037, 0.176195, -0.970927,
		-0.485356, 0.870915, 0.077045,
		46.286255, 53.518646, 54.442978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868000, 53.307880, 53.889759>,  <46.626003, 52.909004, 54.389046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868000, 53.307880, 53.889759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769550, 53.516357, 54.216629>,  <46.710480, 53.641445, 54.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769550, 53.516357, 54.216629>,  <46.868000, 53.307880, 53.889759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.769550, 53.516357, 54.216629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864111, 0.499882, -0.058565,
		-0.439016, 0.691718, -0.573403,
		-0.246124, 0.521195, 0.817178,
		46.695713, 53.672714, 54.461781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538700, 53.565403, 54.010105>,  <46.868000, 53.307880, 53.889759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538700, 53.565403, 54.010105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853592, 53.810757, 54.035500>,  <48.042526, 53.957970, 54.050735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853592, 53.810757, 54.035500>,  <47.538700, 53.565403, 54.010105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853592, 53.810757, 54.035500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580514, 0.771879, -0.259242,
		-0.208018, 0.167229, 0.963724,
		0.787231, 0.613382, 0.063486,
		48.089760, 53.994770, 54.054546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564095, 54.081894, 54.626530>,  <47.538700, 53.565403, 54.010105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564095, 54.081894, 54.626530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731838, 54.209663, 54.286621>,  <47.832485, 54.286324, 54.082676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731838, 54.209663, 54.286621>,  <47.564095, 54.081894, 54.626530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731838, 54.209663, 54.286621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670770, 0.739773, -0.052946,
		0.611726, 0.592204, 0.524486,
		0.419355, 0.319421, -0.849772,
		47.857643, 54.305489, 54.031689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633968, 54.770302, 54.645393>,  <47.564095, 54.081894, 54.626530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633968, 54.770302, 54.645393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593029, 54.679951, 54.257889>,  <47.568466, 54.625740, 54.025387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593029, 54.679951, 54.257889>,  <47.633968, 54.770302, 54.645393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593029, 54.679951, 54.257889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709269, 0.699406, -0.088141,
		0.697469, 0.678094, -0.231787,
		-0.102345, -0.225875, -0.968765,
		47.562325, 54.612190, 53.967258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.572739, 55.375202, 54.315411>,  <47.633968, 54.770302, 54.645393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.572739, 55.375202, 54.315411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392689, 55.107288, 54.079182>,  <47.284660, 54.946541, 53.937443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392689, 55.107288, 54.079182>,  <47.572739, 55.375202, 54.315411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392689, 55.107288, 54.079182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795137, 0.601615, -0.076268,
		0.406379, 0.435254, -0.803374,
		-0.450126, -0.669786, -0.590571,
		47.257652, 54.906353, 53.902012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723331, 56.011490, 54.200424>,  <47.572739, 55.375202, 54.315411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723331, 56.011490, 54.200424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669674, 55.733273, 53.918083>,  <47.637482, 55.566341, 53.748680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669674, 55.733273, 53.918083>,  <47.723331, 56.011490, 54.200424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669674, 55.733273, 53.918083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307334, 0.706365, -0.637647,
		0.942100, 0.131396, -0.308517,
		-0.134141, -0.695545, -0.705849,
		47.629433, 55.524609, 53.706329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.053818, 55.928364, 54.830265>,  <47.723331, 56.011490, 54.200424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.053818, 55.928364, 54.830265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.321087, 55.666039, 54.970810>,  <48.481449, 55.508644, 55.055138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.321087, 55.666039, 54.970810>,  <48.053818, 55.928364, 54.830265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.321087, 55.666039, 54.970810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122082, 0.562491, 0.817740,
		-0.733924, -0.503495, 0.455904,
		0.668171, -0.655817, 0.351358,
		48.521538, 55.469292, 55.076218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.858009, 55.659271, 55.476028>,  <48.053818, 55.928364, 54.830265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.858009, 55.659271, 55.476028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250450, 55.705303, 55.413811>,  <48.485916, 55.732922, 55.376480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.250450, 55.705303, 55.413811>,  <47.858009, 55.659271, 55.476028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.250450, 55.705303, 55.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081049, 0.485543, 0.870447,
		0.175690, -0.866606, 0.467041,
		0.981103, 0.115076, -0.155543,
		48.544781, 55.739826, 55.367149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.145889, 55.977650, 56.094097>,  <47.858009, 55.659271, 55.476028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.145889, 55.977650, 56.094097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505222, 55.943489, 55.921722>,  <48.720821, 55.922993, 55.818298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.505222, 55.943489, 55.921722>,  <48.145889, 55.977650, 56.094097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.505222, 55.943489, 55.921722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364395, 0.692761, 0.622333,
		0.245389, -0.716092, 0.653449,
		0.898332, -0.085400, -0.430936,
		48.774723, 55.917870, 55.792442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.640858, 56.124889, 56.665543>,  <48.145889, 55.977650, 56.094097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.640858, 56.124889, 56.665543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.842220, 56.175865, 56.323700>,  <48.963036, 56.206451, 56.118595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.842220, 56.175865, 56.323700>,  <48.640858, 56.124889, 56.665543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.842220, 56.175865, 56.323700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594144, 0.667069, 0.449457,
		0.627357, -0.734015, 0.260087,
		0.503404, 0.127441, -0.854601,
		48.993240, 56.214100, 56.067318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.348488, 55.970882, 56.640560>,  <48.640858, 56.124889, 56.665543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.348488, 55.970882, 56.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.278343, 56.267921, 56.382011>,  <49.236256, 56.446144, 56.226883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.278343, 56.267921, 56.382011>,  <49.348488, 55.970882, 56.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.278343, 56.267921, 56.382011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506922, 0.630935, 0.587326,
		0.843966, -0.224665, -0.487081,
		-0.175364, 0.742595, -0.646375,
		49.225735, 56.490700, 56.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.963055, 56.332317, 56.319317>,  <49.348488, 55.970882, 56.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.963055, 56.332317, 56.319317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.638557, 56.562489, 56.360809>,  <49.443859, 56.700592, 56.385704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.638557, 56.562489, 56.360809>,  <49.963055, 56.332317, 56.319317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.638557, 56.562489, 56.360809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470087, 0.536378, 0.700939,
		0.347705, 0.617395, -0.705638,
		-0.811245, 0.575431, 0.103728,
		49.395184, 56.735119, 56.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.206684, 57.039532, 56.506733>,  <49.963055, 56.332317, 56.319317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.206684, 57.039532, 56.506733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.846836, 56.972431, 56.667999>,  <49.630928, 56.932171, 56.764759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.846836, 56.972431, 56.667999>,  <50.206684, 57.039532, 56.506733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.846836, 56.972431, 56.667999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314540, 0.391483, 0.864758,
		-0.302896, 0.904766, -0.299422,
		-0.899621, -0.167751, 0.403164,
		49.576950, 56.922108, 56.788948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.988846, 57.680073, 56.784340>,  <50.206684, 57.039532, 56.506733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.988846, 57.680073, 56.784340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.820408, 57.359463, 56.954155>,  <49.719345, 57.167095, 57.056042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.820408, 57.359463, 56.954155>,  <49.988846, 57.680073, 56.784340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.820408, 57.359463, 56.954155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197382, 0.375858, 0.905412,
		-0.885279, 0.465061, -0.000065,
		-0.421096, -0.801529, 0.424534,
		49.694080, 57.119003, 57.081516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.661446, 57.998707, 57.340794>,  <49.988846, 57.680073, 56.784340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.661446, 57.998707, 57.340794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710587, 57.606922, 57.404739>,  <49.740070, 57.371849, 57.443108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710587, 57.606922, 57.404739>,  <49.661446, 57.998707, 57.340794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.710587, 57.606922, 57.404739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027380, 0.164372, 0.986018,
		-0.992047, -0.116757, 0.047012,
		0.122852, -0.979464, 0.159868,
		49.747440, 57.313084, 57.452702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.278412, 57.825657, 57.947945>,  <49.661446, 57.998707, 57.340794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.278412, 57.825657, 57.947945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.561718, 57.546833, 57.903282>,  <49.731701, 57.379539, 57.876484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.561718, 57.546833, 57.903282>,  <49.278412, 57.825657, 57.947945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.561718, 57.546833, 57.903282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197729, 0.044053, 0.979266,
		-0.677690, -0.715657, 0.169031,
		0.708265, -0.697061, -0.111652,
		49.774197, 57.337715, 57.869785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.181316, 57.409733, 58.485668>,  <49.278412, 57.825657, 57.947945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.181316, 57.409733, 58.485668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.556740, 57.412933, 58.347656>,  <49.781994, 57.414852, 58.264847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.556740, 57.412933, 58.347656>,  <49.181316, 57.409733, 58.485668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.556740, 57.412933, 58.347656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340777, 0.136698, 0.930153,
		0.054607, -0.990580, 0.125572,
		0.938557, 0.008001, -0.345032,
		49.838306, 57.415333, 58.244148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.690956, 56.817860, 58.738449>,  <49.181316, 57.409733, 58.485668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.690956, 56.817860, 58.738449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861179, 57.174625, 58.677269>,  <49.963314, 57.388683, 58.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.861179, 57.174625, 58.677269>,  <49.690956, 56.817860, 58.738449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.861179, 57.174625, 58.677269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155388, 0.094482, 0.983325,
		0.891491, -0.442227, -0.098385,
		0.425557, 0.891913, -0.152946,
		49.988846, 57.442200, 58.631386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.429241, 56.800453, 58.954304>,  <49.690956, 56.817860, 58.738449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.429241, 56.800453, 58.954304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.324898, 57.185684, 58.927673>,  <50.262291, 57.416824, 58.911694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.324898, 57.185684, 58.927673>,  <50.429241, 56.800453, 58.954304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.324898, 57.185684, 58.927673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217024, 0.125705, 0.968039,
		0.940667, 0.238071, -0.241803,
		-0.260857, 0.963079, -0.066579,
		50.246639, 57.474609, 58.907700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.947296, 57.090534, 59.287521>,  <50.429241, 56.800453, 58.954304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.947296, 57.090534, 59.287521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624458, 57.326698, 59.289352>,  <50.430756, 57.468395, 59.290451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.624458, 57.326698, 59.289352>,  <50.947296, 57.090534, 59.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.624458, 57.326698, 59.289352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125124, 0.163456, 0.978584,
		0.577015, 0.790380, -0.205798,
		-0.807092, 0.590408, 0.004579,
		50.382332, 57.503822, 59.290726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.591217, 57.222641, 58.876049>,  <50.947296, 57.090534, 59.287521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.591217, 57.222641, 58.876049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.716690, 57.387058, 58.533669>,  <51.791973, 57.485706, 58.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.716690, 57.387058, 58.533669>,  <51.591217, 57.222641, 58.876049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.716690, 57.387058, 58.533669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821363, 0.334828, 0.461794,
		0.476412, -0.847901, -0.232586,
		0.313679, 0.411041, -0.855950,
		51.810795, 57.510372, 58.276882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.317230, 57.087643, 58.793068>,  <51.591217, 57.222641, 58.876049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.317230, 57.087643, 58.793068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.247513, 57.417809, 58.578285>,  <52.205685, 57.615906, 58.449417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.247513, 57.417809, 58.578285>,  <52.317230, 57.087643, 58.793068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.247513, 57.417809, 58.578285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785220, 0.445546, 0.430020,
		0.594181, -0.346679, -0.725784,
		-0.174291, 0.825410, -0.536955,
		52.195225, 57.665432, 58.417198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.802948, 57.224392, 58.279842>,  <52.317230, 57.087643, 58.793068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.802948, 57.224392, 58.279842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.650661, 57.552269, 58.451027>,  <52.559288, 57.748997, 58.553738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.650661, 57.552269, 58.451027>,  <52.802948, 57.224392, 58.279842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.650661, 57.552269, 58.451027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895985, 0.212590, 0.389893,
		0.228611, 0.531891, -0.815370,
		-0.380720, 0.819694, 0.427966,
		52.536446, 57.798176, 58.579418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.189594, 57.907970, 57.941029>,  <52.802948, 57.224392, 58.279842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.189594, 57.907970, 57.941029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.065464, 57.913422, 58.321243>,  <52.990986, 57.916691, 58.549370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.065464, 57.913422, 58.321243>,  <53.189594, 57.907970, 57.941029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.065464, 57.913422, 58.321243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878246, 0.386813, 0.281175,
		-0.363847, 0.922057, -0.132006,
		-0.310321, 0.013629, 0.950534,
		52.972366, 57.917511, 58.606403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.199291, 58.616669, 58.227352>,  <53.189594, 57.907970, 57.941029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.199291, 58.616669, 58.227352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.273304, 58.336441, 58.503021>,  <53.317711, 58.168304, 58.668423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.273304, 58.336441, 58.503021>,  <53.199291, 58.616669, 58.227352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.273304, 58.336441, 58.503021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721159, 0.573202, 0.389062,
		-0.667602, 0.425014, 0.611286,
		0.185034, -0.700573, 0.689173,
		53.328815, 58.126270, 58.709774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.359196, 58.936432, 58.885742>,  <53.199291, 58.616669, 58.227352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.359196, 58.936432, 58.885742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.546993, 58.583302, 58.880028>,  <53.659672, 58.371426, 58.876598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.546993, 58.583302, 58.880028>,  <53.359196, 58.936432, 58.885742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.546993, 58.583302, 58.880028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764086, 0.398131, 0.507606,
		-0.442436, -0.249236, 0.861470,
		0.469492, -0.882821, -0.014290,
		53.687840, 58.318455, 58.875740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.533478, 58.484779, 59.576633>,  <53.359196, 58.936432, 58.885742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.533478, 58.484779, 59.576633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.812088, 58.471916, 59.289909>,  <53.979256, 58.464199, 59.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.812088, 58.471916, 59.289909>,  <53.533478, 58.484779, 59.576633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.812088, 58.471916, 59.289909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701116, 0.242981, 0.670371,
		0.152612, -0.969498, 0.191791,
		0.696525, -0.032161, -0.716812,
		54.021046, 58.462269, 59.074867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.122723, 58.031467, 59.630775>,  <53.533478, 58.484779, 59.576633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.122723, 58.031467, 59.630775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.172127, 58.408077, 59.505379>,  <54.201771, 58.634045, 59.430141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.172127, 58.408077, 59.505379>,  <54.122723, 58.031467, 59.630775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.172127, 58.408077, 59.505379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744368, 0.121015, 0.656713,
		0.656248, -0.314464, -0.685894,
		0.123509, 0.941524, -0.313493,
		54.209179, 58.690533, 59.411331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.835030, 58.259216, 59.427814>,  <54.122723, 58.031467, 59.630775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.835030, 58.259216, 59.427814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.632118, 58.559494, 59.597107>,  <54.510372, 58.739662, 59.698685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.632118, 58.559494, 59.597107>,  <54.835030, 58.259216, 59.427814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.632118, 58.559494, 59.597107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726569, 0.108454, 0.678480,
		0.463429, 0.651688, -0.600447,
		-0.507278, 0.750694, 0.423235,
		54.479935, 58.784702, 59.724079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.386257, 58.749264, 59.379272>,  <54.835030, 58.259216, 59.427814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.386257, 58.749264, 59.379272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.124229, 58.823658, 59.672203>,  <54.967014, 58.868294, 59.847961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.124229, 58.823658, 59.672203>,  <55.386257, 58.749264, 59.379272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.124229, 58.823658, 59.672203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753234, 0.084549, 0.652296,
		0.059400, 0.978908, -0.195476,
		-0.655065, 0.185986, 0.732324,
		54.927711, 58.879456, 59.891899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.586811, 59.356766, 59.795563>,  <55.386257, 58.749264, 59.379272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.586811, 59.356766, 59.795563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893204, 59.205582, 60.003571>,  <56.077038, 59.114872, 60.128376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893204, 59.205582, 60.003571>,  <55.586811, 59.356766, 59.795563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.893204, 59.205582, 60.003571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237592, -0.585193, -0.775306,
		0.597346, 0.717422, -0.358446,
		0.765981, -0.377963, 0.520016,
		56.122997, 59.092194, 60.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.283138, 59.499462, 59.660461>,  <55.586811, 59.356766, 59.795563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.283138, 59.499462, 59.660461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.312500, 59.137756, 59.828705>,  <56.330116, 58.920731, 59.929653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.312500, 59.137756, 59.828705>,  <56.283138, 59.499462, 59.660461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.312500, 59.137756, 59.828705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506225, -0.329592, -0.796935,
		0.859271, 0.271425, 0.433568,
		0.073408, -0.904266, 0.420611,
		56.334522, 58.866478, 59.954887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.959473, 59.225456, 59.773598>,  <56.283138, 59.499462, 59.660461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.959473, 59.225456, 59.773598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.712212, 58.924835, 59.681465>,  <56.563854, 58.744461, 59.626186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.712212, 58.924835, 59.681465>,  <56.959473, 59.225456, 59.773598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.712212, 58.924835, 59.681465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600049, -0.261883, -0.755882,
		0.507768, -0.605460, 0.612853,
		-0.618153, -0.751555, -0.230331,
		56.526764, 58.699368, 59.612366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.265972, 58.521748, 59.739899>,  <56.959473, 59.225456, 59.773598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.265972, 58.521748, 59.739899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.957047, 58.550907, 59.487480>,  <56.771690, 58.568405, 59.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.957047, 58.550907, 59.487480>,  <57.265972, 58.521748, 59.739899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.957047, 58.550907, 59.487480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598913, -0.247581, -0.761582,
		-0.211757, -0.966121, 0.147547,
		-0.772310, 0.072903, -0.631049,
		56.725353, 58.572777, 59.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.585979, 57.814087, 59.977951>,  <57.265972, 58.521748, 59.739899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.585979, 57.814087, 59.977951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.560806, 57.915451, 59.591827>,  <57.545700, 57.976269, 59.360153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.560806, 57.915451, 59.591827>,  <57.585979, 57.814087, 59.977951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.560806, 57.915451, 59.591827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959937, 0.280004, 0.010918,
		0.273057, -0.925950, -0.260878,
		-0.062937, 0.253407, -0.965310,
		57.541924, 57.991474, 59.302235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.140892, 57.451542, 59.580364>,  <57.585979, 57.814087, 59.977951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.140892, 57.451542, 59.580364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.057899, 57.815384, 59.436378>,  <58.008102, 58.033688, 59.349987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.057899, 57.815384, 59.436378>,  <58.140892, 57.451542, 59.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.057899, 57.815384, 59.436378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929462, 0.298049, 0.217409,
		0.305044, -0.289469, -0.907279,
		-0.207481, 0.909601, -0.359968,
		57.995655, 58.088264, 59.328388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.529003, 57.576908, 58.932903>,  <58.140892, 57.451542, 59.580364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.529003, 57.576908, 58.932903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.445274, 57.887833, 59.170212>,  <58.395039, 58.074387, 59.312595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.445274, 57.887833, 59.170212>,  <58.529003, 57.576908, 58.932903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.445274, 57.887833, 59.170212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965660, 0.068833, 0.250524,
		0.153899, 0.625336, -0.765030,
		-0.209320, 0.777314, 0.593269,
		58.382477, 58.121025, 59.348194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.890381, 58.120552, 58.563736>,  <58.529003, 57.576908, 58.932903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.890381, 58.120552, 58.563736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.857765, 58.081722, 58.960510>,  <58.838196, 58.058426, 59.198574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.857765, 58.081722, 58.960510>,  <58.890381, 58.120552, 58.563736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.857765, 58.081722, 58.960510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992185, 0.086405, 0.090016,
		-0.094446, 0.991519, 0.089272,
		-0.081539, -0.097076, 0.991931,
		58.833305, 58.052601, 59.258091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.164333, 58.746014, 58.962467>,  <58.890381, 58.120552, 58.563736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.164333, 58.746014, 58.962467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.215927, 58.422222, 59.191589>,  <59.246883, 58.227947, 59.329063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.215927, 58.422222, 59.191589>,  <59.164333, 58.746014, 58.962467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.215927, 58.422222, 59.191589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977542, 0.200868, 0.063744,
		-0.166658, 0.551721, 0.817208,
		0.128982, -0.809479, 0.572807,
		59.254623, 58.179379, 59.363430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.463657, 58.916138, 59.581718>,  <59.164333, 58.746014, 58.962467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.463657, 58.916138, 59.581718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.548798, 58.530441, 59.518547>,  <59.599884, 58.299023, 59.480644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.548798, 58.530441, 59.518547>,  <59.463657, 58.916138, 59.581718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.548798, 58.530441, 59.518547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969192, 0.187857, 0.159300,
		-0.123936, -0.186966, 0.974517,
		0.212854, -0.964237, -0.157924,
		59.612656, 58.241169, 59.471169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.763515, 58.574688, 60.179695>,  <59.463657, 58.916138, 59.581718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.763515, 58.574688, 60.179695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.913017, 58.407883, 59.848297>,  <60.002720, 58.307800, 59.649456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.913017, 58.407883, 59.848297>,  <59.763515, 58.574688, 60.179695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.913017, 58.407883, 59.848297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923261, 0.252843, 0.289239,
		0.088864, -0.873025, 0.479511,
		0.373754, -0.417011, -0.828499,
		60.025143, 58.282780, 59.599747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.297009, 58.203510, 60.373379>,  <59.763515, 58.574688, 60.179695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.297009, 58.203510, 60.373379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.356323, 58.285500, 59.986389>,  <60.391914, 58.334694, 59.754196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.356323, 58.285500, 59.986389>,  <60.297009, 58.203510, 60.373379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.356323, 58.285500, 59.986389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970365, 0.158581, 0.182330,
		0.190795, -0.965836, -0.175381,
		0.148289, 0.204971, -0.967469,
		60.400810, 58.346992, 59.696148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.826447, 57.815102, 59.966957>,  <60.297009, 58.203510, 60.373379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.826447, 57.815102, 59.966957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.827354, 58.190010, 59.827522>,  <60.827900, 58.414955, 59.743862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.827354, 58.190010, 59.827522>,  <60.826447, 57.815102, 59.966957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.827354, 58.190010, 59.827522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983750, 0.060484, 0.169047,
		0.179527, -0.343308, -0.921906,
		0.002274, 0.937273, -0.348588,
		60.828037, 58.471191, 59.722946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.399609, 58.035519, 59.306866>,  <60.826447, 57.815102, 59.966957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.399609, 58.035519, 59.306866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.284431, 58.297485, 59.586342>,  <61.215324, 58.454666, 59.754028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.284431, 58.297485, 59.586342>,  <61.399609, 58.035519, 59.306866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.284431, 58.297485, 59.586342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934991, 0.034491, 0.352989,
		0.207080, 0.754912, -0.622274,
		-0.287939, 0.654918, 0.698694,
		61.198051, 58.493961, 59.795952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.991268, 58.531857, 59.258083>,  <61.399609, 58.035519, 59.306866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.991268, 58.531857, 59.258083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773705, 58.586952, 59.589188>,  <61.643166, 58.620010, 59.787849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773705, 58.586952, 59.589188>,  <61.991268, 58.531857, 59.258083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.773705, 58.586952, 59.589188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831674, 0.219825, 0.509897,
		-0.111730, 0.965766, -0.234119,
		-0.543907, 0.137740, 0.827764,
		61.610531, 58.628273, 59.837517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.279755, 57.946915, 59.309734>,  <61.991268, 58.531857, 59.258083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.279755, 57.946915, 59.309734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.247330, 57.672554, 59.598999>,  <62.227875, 57.507938, 59.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.247330, 57.672554, 59.598999>,  <62.279755, 57.946915, 59.309734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.247330, 57.672554, 59.598999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921151, -0.328662, -0.208475,
		0.380670, 0.649246, 0.658460,
		-0.081059, -0.685902, 0.723165,
		62.223011, 57.466782, 59.815948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.992416, 57.801540, 59.512199>,  <62.279755, 57.946915, 59.309734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.992416, 57.801540, 59.512199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.766670, 57.491196, 59.625008>,  <62.631222, 57.304989, 59.692692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.766670, 57.491196, 59.625008>,  <62.992416, 57.801540, 59.512199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.766670, 57.491196, 59.625008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820987, -0.563270, 0.093313,
		0.086456, 0.284197, 0.954860,
		-0.564363, -0.775860, 0.282020,
		62.597363, 57.258438, 59.709614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.196125, 57.160999, 59.302498>,  <62.992416, 57.801540, 59.512199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.196125, 57.160999, 59.302498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.253067, 57.045639, 59.681244>,  <63.287231, 56.976421, 59.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.253067, 57.045639, 59.681244>,  <63.196125, 57.160999, 59.302498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.253067, 57.045639, 59.681244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974926, -0.124442, -0.184481,
		0.171035, 0.949388, 0.263457,
		0.142359, -0.288404, 0.946867,
		63.295776, 56.959118, 59.965305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.761467, 57.576138, 59.491364>,  <63.196125, 57.160999, 59.302498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.761467, 57.576138, 59.491364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.730408, 57.232750, 59.694145>,  <63.711773, 57.026718, 59.815815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.730408, 57.232750, 59.694145>,  <63.761467, 57.576138, 59.491364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.730408, 57.232750, 59.694145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942836, -0.228524, -0.242564,
		0.324085, 0.459142, 0.827138,
		-0.077650, -0.858467, 0.506957,
		63.707111, 56.975208, 59.846233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.386703, 57.549210, 59.729507>,  <63.761467, 57.576138, 59.491364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.386703, 57.549210, 59.729507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.217606, 57.187435, 59.752434>,  <64.116150, 56.970371, 59.766190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.217606, 57.187435, 59.752434>,  <64.386703, 57.549210, 59.729507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.217606, 57.187435, 59.752434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899093, -0.410629, 0.151709,
		-0.113675, 0.115668, 0.986762,
		-0.422741, -0.904436, 0.057318,
		64.090782, 56.916103, 59.769630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.671997, 57.323784, 60.422123>,  <64.386703, 57.549210, 59.729507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.671997, 57.323784, 60.422123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.595520, 57.101898, 60.098213>,  <64.549629, 56.968765, 59.903866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.595520, 57.101898, 60.098213>,  <64.671997, 57.323784, 60.422123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.595520, 57.101898, 60.098213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912068, -0.405281, 0.062279,
		-0.362733, -0.726662, 0.583427,
		-0.191196, -0.554716, -0.809774,
		64.538162, 56.935482, 59.855282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.240143, 56.914574, 60.616882>,  <64.671997, 57.323784, 60.422123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.240143, 56.914574, 60.616882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108757, 56.824009, 60.250092>,  <65.029930, 56.769672, 60.030018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108757, 56.824009, 60.250092>,  <65.240143, 56.914574, 60.616882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.108757, 56.824009, 60.250092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919109, -0.300291, -0.255076,
		-0.217609, -0.926587, 0.306728,
		-0.328458, -0.226410, -0.916981,
		65.010216, 56.756084, 59.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.569412, 56.261711, 60.515553>,  <65.240143, 56.914574, 60.616882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.569412, 56.261711, 60.515553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467758, 56.453491, 60.179565>,  <65.406769, 56.568558, 59.977974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.467758, 56.453491, 60.179565>,  <65.569412, 56.261711, 60.515553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.467758, 56.453491, 60.179565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941882, -0.074617, -0.327552,
		-0.219721, -0.874391, -0.432623,
		-0.254127, 0.479449, -0.839969,
		65.391518, 56.597324, 59.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.773582, 55.907818, 59.843563>,  <65.569412, 56.261711, 60.515553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.773582, 55.907818, 59.843563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.828316, 56.303810, 59.857506>,  <65.861153, 56.541405, 59.865871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.828316, 56.303810, 59.857506>,  <65.773582, 55.907818, 59.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.828316, 56.303810, 59.857506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935387, -0.117540, -0.333520,
		-0.326082, 0.078236, -0.942099,
		0.136828, 0.989982, 0.034853,
		65.869362, 56.600803, 59.867962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.123581, 56.085655, 59.239113>,  <65.773582, 55.907818, 59.843563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.123581, 56.085655, 59.239113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.205437, 56.340004, 59.536781>,  <66.254555, 56.492615, 59.715382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.205437, 56.340004, 59.536781>,  <66.123581, 56.085655, 59.239113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.205437, 56.340004, 59.536781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978485, -0.112537, -0.172922,
		-0.026210, 0.763545, -0.645223,
		0.204645, 0.635873, 0.744168,
		66.266830, 56.530766, 59.760033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.802849, 56.555214, 59.090637>,  <66.123581, 56.085655, 59.239113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.802849, 56.555214, 59.090637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.758865, 56.594780, 59.486237>,  <66.732475, 56.618519, 59.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.758865, 56.594780, 59.486237>,  <66.802849, 56.555214, 59.090637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.758865, 56.594780, 59.486237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990504, 0.093531, 0.100768,
		-0.082535, 0.990690, -0.108262,
		-0.109956, 0.098917, 0.989002,
		66.725876, 56.624454, 59.782936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.274323, 57.153061, 59.356289>,  <66.802849, 56.555214, 59.090637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.274323, 57.153061, 59.356289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.187508, 56.852802, 59.605904>,  <67.135422, 56.672646, 59.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.187508, 56.852802, 59.605904>,  <67.274323, 57.153061, 59.356289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.187508, 56.852802, 59.605904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974750, -0.201041, 0.097186,
		0.052504, 0.629372, 0.775328,
		-0.217038, -0.750649, 0.624036,
		67.122398, 56.627609, 59.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.615860, 57.171516, 60.101269>,  <67.274323, 57.153061, 59.356289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.615860, 57.171516, 60.101269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.557777, 56.816353, 59.926666>,  <67.522926, 56.603256, 59.821903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.557777, 56.816353, 59.926666>,  <67.615860, 57.171516, 60.101269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.557777, 56.816353, 59.926666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980659, -0.187682, 0.055530,
		-0.131230, -0.420002, 0.897985,
		-0.145213, -0.887904, -0.436508,
		67.514214, 56.549980, 59.795715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.851662, 56.629616, 60.571903>,  <67.615860, 57.171516, 60.101269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.851662, 56.629616, 60.571903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883171, 56.550793, 60.181015>,  <67.902077, 56.503498, 59.946480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.883171, 56.550793, 60.181015>,  <67.851662, 56.629616, 60.571903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.883171, 56.550793, 60.181015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996232, -0.020132, 0.084366,
		-0.036298, -0.980186, 0.194726,
		0.078774, -0.197055, -0.977223,
		67.906807, 56.491676, 59.887848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.261330, 55.982811, 60.450489>,  <67.851662, 56.629616, 60.571903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.261330, 55.982811, 60.450489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.329735, 56.263947, 60.174294>,  <68.370781, 56.432629, 60.008575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.329735, 56.263947, 60.174294>,  <68.261330, 55.982811, 60.450489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.329735, 56.263947, 60.174294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981376, -0.183740, 0.056038,
		-0.087484, -0.687210, -0.721172,
		0.171018, 0.702839, -0.690486,
		68.381042, 56.474796, 59.967148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.590981, 55.691952, 59.849289>,  <68.261330, 55.982811, 60.450489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.590981, 55.691952, 59.849289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.718803, 56.070312, 59.871750>,  <68.795494, 56.297329, 59.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.718803, 56.070312, 59.871750>,  <68.590981, 55.691952, 59.849289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.718803, 56.070312, 59.871750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937986, -0.324169, 0.122872,
		0.134427, 0.013404, -0.990833,
		0.319550, 0.945904, 0.056150,
		68.814667, 56.354084, 59.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.216721, 55.690063, 59.471416>,  <68.590981, 55.691952, 59.849289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.216721, 55.690063, 59.471416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.220207, 56.045677, 59.654518>,  <69.222298, 56.259045, 59.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.220207, 56.045677, 59.654518>,  <69.216721, 55.690063, 59.471416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.220207, 56.045677, 59.654518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982788, 0.076858, -0.167989,
		-0.184531, 0.451339, -0.873065,
		0.008718, 0.889037, 0.457753,
		69.222824, 56.312389, 59.791843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.701355, 56.153427, 59.126625>,  <69.216721, 55.690063, 59.471416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.701355, 56.153427, 59.126625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.655182, 56.315372, 59.489449>,  <69.627480, 56.412540, 59.707142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.655182, 56.315372, 59.489449>,  <69.701355, 56.153427, 59.126625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.655182, 56.315372, 59.489449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967440, 0.252892, 0.010232,
		-0.225246, 0.878708, -0.420876,
		-0.115427, 0.404868, 0.907060,
		69.620552, 56.436832, 59.761566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.968765, 56.729202, 59.127190>,  <69.701355, 56.153427, 59.126625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.968765, 56.729202, 59.127190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.956985, 56.651978, 59.519485>,  <69.949921, 56.605640, 59.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.956985, 56.651978, 59.519485>,  <69.968765, 56.729202, 59.127190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.956985, 56.651978, 59.519485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977339, 0.200199, 0.068760,
		-0.209619, 0.960545, 0.182794,
		-0.029452, -0.193065, 0.980744,
		69.948151, 56.594059, 59.813709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.190079, 57.336254, 59.676167>,  <69.968765, 56.729202, 59.127190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.190079, 57.336254, 59.676167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.294853, 56.994171, 59.855057>,  <70.357719, 56.788921, 59.962391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.294853, 56.994171, 59.855057>,  <70.190079, 57.336254, 59.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.294853, 56.994171, 59.855057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848494, 0.424867, 0.315510,
		-0.459838, 0.296826, 0.836925,
		0.261930, -0.855209, 0.447225,
		70.373436, 56.737610, 59.989223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.384178, 57.551064, 60.386425>,  <70.190079, 57.336254, 59.676167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.384178, 57.551064, 60.386425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545471, 57.205349, 60.266151>,  <70.642250, 56.997921, 60.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545471, 57.205349, 60.266151>,  <70.384178, 57.551064, 60.386425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.545471, 57.205349, 60.266151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915051, 0.384008, 0.123364,
		0.008842, -0.324884, 0.945713,
		0.403240, -0.864285, -0.300681,
		70.666443, 56.946064, 60.175949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.768944, 57.197071, 60.943886>,  <70.384178, 57.551064, 60.386425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.768944, 57.197071, 60.943886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.901924, 57.097466, 60.580025>,  <70.981712, 57.037704, 60.361706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.901924, 57.097466, 60.580025>,  <70.768944, 57.197071, 60.943886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.901924, 57.097466, 60.580025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922667, 0.285671, 0.258996,
		0.195370, -0.925411, 0.324724,
		0.332442, -0.249012, -0.909657,
		71.001656, 57.022762, 60.307129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.328018, 56.638447, 60.920746>,  <70.768944, 57.197071, 60.943886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.328018, 56.638447, 60.920746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.340286, 56.881268, 60.603119>,  <71.347649, 57.026958, 60.412540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.340286, 56.881268, 60.603119>,  <71.328018, 56.638447, 60.920746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.340286, 56.881268, 60.603119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908931, 0.313558, 0.274821,
		0.415817, -0.730187, -0.542147,
		0.030676, 0.607049, -0.794072,
		71.349487, 57.063381, 60.364899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.743889, 56.408600, 60.352970>,  <71.328018, 56.638447, 60.920746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.743889, 56.408600, 60.352970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.733147, 56.804729, 60.407425>,  <71.726700, 57.042408, 60.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.733147, 56.804729, 60.407425>,  <71.743889, 56.408600, 60.352970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.733147, 56.804729, 60.407425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987085, 0.004754, 0.160128,
		0.157932, 0.138681, -0.977663,
		-0.026854, 0.990326, 0.136139,
		71.725090, 57.101826, 60.448265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.125771, 56.704983, 59.732140>,  <71.743889, 56.408600, 60.352970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.125771, 56.704983, 59.732140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.153244, 56.880375, 60.090584>,  <72.169731, 56.985611, 60.305649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.153244, 56.880375, 60.090584>,  <72.125771, 56.704983, 59.732140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.153244, 56.880375, 60.090584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986027, -0.166481, 0.005878,
		0.151763, 0.883185, -0.443794,
		0.068692, 0.438485, 0.896110,
		72.173851, 57.011921, 60.359417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.669434, 57.182034, 59.770279>,  <72.125771, 56.704983, 59.732140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.669434, 57.182034, 59.770279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605667, 57.037445, 60.137741>,  <72.567406, 56.950691, 60.358219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605667, 57.037445, 60.137741>,  <72.669434, 57.182034, 59.770279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.605667, 57.037445, 60.137741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975114, -0.202891, 0.089380,
		0.154078, 0.910041, 0.384818,
		-0.159416, -0.361470, 0.918655,
		72.557846, 56.929005, 60.413338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.034157, 57.644886, 60.249081>,  <72.669434, 57.182034, 59.770279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.034157, 57.644886, 60.249081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.989822, 57.265144, 60.366684>,  <72.963219, 57.037300, 60.437244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.989822, 57.265144, 60.366684>,  <73.034157, 57.644886, 60.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.989822, 57.265144, 60.366684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993659, -0.111474, 0.014649,
		0.018867, 0.293767, 0.955691,
		-0.110838, -0.949355, 0.294008,
		72.956573, 56.980339, 60.454887>
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
