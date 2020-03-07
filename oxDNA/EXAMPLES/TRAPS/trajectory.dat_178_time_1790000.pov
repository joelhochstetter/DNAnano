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
	<36.549438, 52.998508, 50.139282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797523, 53.286324, 50.014317>,  <36.946377, 53.459011, 49.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797523, 53.286324, 50.014317>,  <36.549438, 52.998508, 50.139282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797523, 53.286324, 50.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643238, 0.694454, 0.322457,
		0.448975, 0.000963, 0.893544,
		0.620215, 0.719536, -0.312412,
		36.983589, 53.502186, 49.920593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496887, 53.546120, 50.621792>,  <36.549438, 52.998508, 50.139282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496887, 53.546120, 50.621792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692635, 53.734455, 50.328171>,  <36.810081, 53.847458, 50.152000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692635, 53.734455, 50.328171>,  <36.496887, 53.546120, 50.621792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692635, 53.734455, 50.328171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377907, 0.873081, 0.308084,
		0.785945, 0.126638, 0.605189,
		0.489364, 0.470842, -0.734051,
		36.839443, 53.875710, 50.107956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986160, 54.111469, 50.854198>,  <36.496887, 53.546120, 50.621792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986160, 54.111469, 50.854198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857117, 54.180267, 50.481888>,  <36.779690, 54.221546, 50.258503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857117, 54.180267, 50.481888>,  <36.986160, 54.111469, 50.854198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857117, 54.180267, 50.481888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496982, 0.806122, 0.321212,
		0.805564, 0.566204, -0.174585,
		-0.322609, 0.171991, -0.930775,
		36.760334, 54.231865, 50.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245529, 54.717503, 50.650330>,  <36.986160, 54.111469, 50.854198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245529, 54.717503, 50.650330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889767, 54.631886, 50.488766>,  <36.676308, 54.580517, 50.391827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889767, 54.631886, 50.488766>,  <37.245529, 54.717503, 50.650330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889767, 54.631886, 50.488766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348398, 0.889439, 0.295834,
		0.295933, 0.403839, -0.865643,
		-0.889406, -0.214041, -0.403911,
		36.622944, 54.567673, 50.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995579, 54.587296, 50.669514>,  <37.245529, 54.717503, 50.650330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995579, 54.587296, 50.669514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393711, 54.585106, 50.630978>,  <38.632591, 54.583794, 50.607857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393711, 54.585106, 50.630978>,  <37.995579, 54.587296, 50.669514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393711, 54.585106, 50.630978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084118, -0.538448, -0.838450,
		-0.047286, 0.842641, -0.536396,
		0.995333, -0.005473, -0.096343,
		38.692310, 54.583466, 50.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592690, 54.334332, 51.026825>,  <37.995579, 54.587296, 50.669514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592690, 54.334332, 51.026825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669758, 53.950165, 50.946346>,  <38.716000, 53.719666, 50.898060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669758, 53.950165, 50.946346>,  <38.592690, 54.334332, 51.026825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669758, 53.950165, 50.946346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845859, 0.058622, 0.530176,
		-0.497395, -0.272332, 0.823671,
		0.192669, -0.960416, -0.201196,
		38.727558, 53.662041, 50.885986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575928, 53.817818, 51.625477>,  <38.592690, 54.334332, 51.026825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575928, 53.817818, 51.625477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829403, 53.733841, 51.327652>,  <38.981487, 53.683456, 51.148956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829403, 53.733841, 51.327652>,  <38.575928, 53.817818, 51.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829403, 53.733841, 51.327652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765958, 0.305129, 0.565866,
		0.108388, -0.928882, 0.354161,
		0.633687, -0.209940, -0.744557,
		39.019508, 53.670860, 51.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219719, 53.486279, 51.858322>,  <38.575928, 53.817818, 51.625477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219719, 53.486279, 51.858322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262028, 53.709713, 51.529251>,  <39.287411, 53.843773, 51.331810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262028, 53.709713, 51.529251>,  <39.219719, 53.486279, 51.858322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262028, 53.709713, 51.529251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744382, 0.504069, 0.437960,
		0.659324, -0.658706, -0.362488,
		0.105768, 0.558588, -0.822674,
		39.293758, 53.877289, 51.282448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119381, 52.839203, 51.616642>,  <39.219719, 53.486279, 51.858322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119381, 52.839203, 51.616642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937656, 52.659641, 51.308853>,  <38.828621, 52.551903, 51.124180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937656, 52.659641, 51.308853>,  <39.119381, 52.839203, 51.616642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937656, 52.659641, 51.308853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889758, 0.186066, 0.416785,
		-0.043925, 0.873992, -0.483951,
		-0.454314, -0.448907, -0.769469,
		38.801361, 52.524971, 51.078014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839596, 52.626801, 51.746387>,  <39.119381, 52.839203, 51.616642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839596, 52.626801, 51.746387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920208, 52.661995, 52.136597>,  <39.968575, 52.683109, 52.370724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920208, 52.661995, 52.136597>,  <39.839596, 52.626801, 51.746387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920208, 52.661995, 52.136597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771949, -0.627301, -0.102900,
		0.602893, 0.773791, -0.194341,
		0.201533, 0.087984, 0.975522,
		39.980667, 52.688389, 52.429253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374401, 52.086464, 52.024082>,  <39.839596, 52.626801, 51.746387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374401, 52.086464, 52.024082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661556, 52.326923, 51.883652>,  <40.833851, 52.471199, 51.799393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661556, 52.326923, 51.883652>,  <40.374401, 52.086464, 52.024082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661556, 52.326923, 51.883652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661992, -0.433456, 0.611460,
		0.215404, -0.671369, -0.709130,
		0.717892, 0.601149, -0.351072,
		40.876923, 52.507267, 51.778332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023308, 51.722332, 52.127571>,  <40.374401, 52.086464, 52.024082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023308, 51.722332, 52.127571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162811, 52.071995, 51.992390>,  <41.246513, 52.281792, 51.911282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162811, 52.071995, 51.992390>,  <41.023308, 51.722332, 52.127571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162811, 52.071995, 51.992390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908484, -0.226731, 0.351068,
		0.230265, -0.429465, -0.873234,
		0.348761, 0.874159, -0.337954,
		41.267441, 52.334244, 51.891003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695118, 51.693329, 51.868385>,  <41.023308, 51.722332, 52.127571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695118, 51.693329, 51.868385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905319, 51.628475, 51.534306>,  <42.031441, 51.589561, 51.333858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905319, 51.628475, 51.534306>,  <41.695118, 51.693329, 51.868385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905319, 51.628475, 51.534306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052692, 0.973586, -0.222157,
		0.849159, 0.160752, 0.503078,
		0.525502, -0.162139, -0.835200,
		42.062969, 51.579834, 51.283745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276485, 52.105927, 51.758728>,  <41.695118, 51.693329, 51.868385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276485, 52.105927, 51.758728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111717, 52.002514, 51.409218>,  <42.012856, 51.940464, 51.199512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111717, 52.002514, 51.409218>,  <42.276485, 52.105927, 51.758728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111717, 52.002514, 51.409218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187501, 0.962434, -0.196375,
		0.891721, 0.082944, -0.444919,
		-0.411918, -0.258535, -0.873776,
		41.988140, 51.924953, 51.147083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038898, 52.328941, 51.593987>,  <42.276485, 52.105927, 51.758728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038898, 52.328941, 51.593987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310768, 52.469296, 51.851643>,  <43.473892, 52.553509, 52.006237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310768, 52.469296, 51.851643>,  <43.038898, 52.328941, 51.593987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310768, 52.469296, 51.851643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730696, -0.400748, -0.552706,
		0.064199, 0.846332, -0.528773,
		0.679678, 0.350889, 0.644139,
		43.514671, 52.574562, 52.044884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696110, 52.842064, 51.250675>,  <43.038898, 52.328941, 51.593987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696110, 52.842064, 51.250675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787411, 52.635780, 51.580994>,  <43.842194, 52.512009, 51.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787411, 52.635780, 51.580994>,  <43.696110, 52.842064, 51.250675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787411, 52.635780, 51.580994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645124, -0.555145, -0.525005,
		0.729188, 0.652576, 0.205984,
		0.228255, -0.515712, 0.825797,
		43.855888, 52.481068, 51.828732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386612, 52.870323, 51.373798>,  <43.696110, 52.842064, 51.250675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386612, 52.870323, 51.373798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255047, 52.525696, 51.528465>,  <44.176105, 52.318920, 51.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255047, 52.525696, 51.528465>,  <44.386612, 52.870323, 51.373798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255047, 52.525696, 51.528465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625000, -0.505549, -0.594807,
		0.707948, 0.046026, 0.704764,
		-0.328916, -0.861569, 0.386669,
		44.156372, 52.267223, 51.644466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014473, 52.555382, 51.688221>,  <44.386612, 52.870323, 51.373798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014473, 52.555382, 51.688221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715755, 52.308414, 51.589355>,  <44.536526, 52.160233, 51.530037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715755, 52.308414, 51.589355>,  <45.014473, 52.555382, 51.688221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715755, 52.308414, 51.589355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657978, -0.631862, -0.409653,
		0.096758, -0.468552, 0.878121,
		-0.746795, -0.617422, -0.247159,
		44.491718, 52.123188, 51.515209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315117, 51.888630, 51.461460>,  <45.014473, 52.555382, 51.688221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315117, 51.888630, 51.461460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476311, 51.899181, 51.095528>,  <45.573025, 51.905514, 50.875969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476311, 51.899181, 51.095528>,  <45.315117, 51.888630, 51.461460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476311, 51.899181, 51.095528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151453, 0.983881, 0.095083,
		0.902590, -0.176870, 0.392490,
		0.402981, 0.026377, -0.914828,
		45.597206, 51.907093, 50.821079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044498, 52.031662, 51.377209>,  <45.315117, 51.888630, 51.461460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044498, 52.031662, 51.377209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843884, 52.205830, 51.078178>,  <45.723515, 52.310329, 50.898758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843884, 52.205830, 51.078178>,  <46.044498, 52.031662, 51.377209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843884, 52.205830, 51.078178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226297, 0.900056, 0.372410,
		0.835016, 0.017602, -0.549943,
		-0.501535, 0.435419, -0.747578,
		45.693424, 52.336456, 50.853905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586964, 52.598450, 51.236279>,  <46.044498, 52.031662, 51.377209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586964, 52.598450, 51.236279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192711, 52.655533, 51.200119>,  <45.956161, 52.689781, 51.178421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192711, 52.655533, 51.200119>,  <46.586964, 52.598450, 51.236279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192711, 52.655533, 51.200119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110546, 0.949509, 0.293618,
		0.127740, 0.279405, -0.951639,
		-0.985628, 0.142707, -0.090403,
		45.897022, 52.698345, 51.172997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249641, 52.561192, 51.211658>,  <46.586964, 52.598450, 51.236279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249641, 52.561192, 51.211658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549030, 52.297981, 51.178688>,  <47.728664, 52.140057, 51.158905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549030, 52.297981, 51.178688>,  <47.249641, 52.561192, 51.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549030, 52.297981, 51.178688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221152, 0.130490, 0.966470,
		-0.625205, -0.741604, 0.243192,
		0.748472, -0.658024, -0.082424,
		47.773571, 52.100574, 51.153961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.826263, 53.076244, 51.259666>,  <47.249641, 52.561192, 51.211658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.826263, 53.076244, 51.259666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.065311, 53.362999, 51.116047>,  <48.208740, 53.535053, 51.029873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.065311, 53.362999, 51.116047>,  <47.826263, 53.076244, 51.259666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.065311, 53.362999, 51.116047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443242, 0.077765, 0.893022,
		0.668118, -0.692839, -0.271281,
		0.597624, 0.716887, -0.359051,
		48.244598, 53.578064, 51.008331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.643784, 52.942410, 51.173595>,  <47.826263, 53.076244, 51.259666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.643784, 52.942410, 51.173595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570023, 53.332623, 51.221474>,  <48.525764, 53.566750, 51.250202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570023, 53.332623, 51.221474>,  <48.643784, 52.942410, 51.173595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.570023, 53.332623, 51.221474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514236, -0.008021, 0.857611,
		0.837589, 0.219701, -0.500176,
		-0.184406, 0.975534, 0.119697,
		48.514702, 53.625282, 51.257381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.249783, 53.374336, 51.219738>,  <48.643784, 52.942410, 51.173595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.249783, 53.374336, 51.219738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.960350, 53.529655, 51.448002>,  <48.786690, 53.622849, 51.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.960350, 53.529655, 51.448002>,  <49.249783, 53.374336, 51.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.960350, 53.529655, 51.448002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619148, -0.000301, 0.785274,
		0.305091, 0.921534, -0.240195,
		-0.723585, 0.388296, 0.570658,
		48.743275, 53.646145, 51.619198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.378777, 54.135727, 51.384544>,  <49.249783, 53.374336, 51.219738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.378777, 54.135727, 51.384544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.167358, 53.896320, 51.625351>,  <49.040508, 53.752674, 51.769833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.167358, 53.896320, 51.625351>,  <49.378777, 54.135727, 51.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.167358, 53.896320, 51.625351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758425, -0.014344, 0.651603,
		-0.381361, 0.800980, 0.461513,
		-0.528541, -0.598519, 0.602013,
		49.008797, 53.716766, 51.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.344269, 54.388481, 52.092239>,  <49.378777, 54.135727, 51.384544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.344269, 54.388481, 52.092239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.332100, 53.989555, 52.065563>,  <49.324799, 53.750202, 52.049557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.332100, 53.989555, 52.065563>,  <49.344269, 54.388481, 52.092239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.332100, 53.989555, 52.065563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644046, -0.070585, 0.761723,
		-0.764381, -0.019777, 0.644461,
		-0.030425, -0.997310, -0.066691,
		49.322971, 53.690361, 52.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.894283, 53.813129, 52.621109>,  <49.344269, 54.388481, 52.092239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.894283, 53.813129, 52.621109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.249695, 53.745258, 52.450588>,  <49.462940, 53.704536, 52.348278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.249695, 53.745258, 52.450588>,  <48.894283, 53.813129, 52.621109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.249695, 53.745258, 52.450588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451206, 0.154486, 0.878947,
		-0.083281, -0.973316, 0.213825,
		0.888525, -0.169679, -0.426300,
		49.516251, 53.694355, 52.322697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.234528, 53.239731, 52.929413>,  <48.894283, 53.813129, 52.621109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.234528, 53.239731, 52.929413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.478264, 53.526463, 52.793842>,  <49.624504, 53.698502, 52.712502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.478264, 53.526463, 52.793842>,  <49.234528, 53.239731, 52.929413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.478264, 53.526463, 52.793842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321121, 0.167722, 0.932068,
		0.724975, -0.676780, -0.127989,
		0.609338, 0.716825, -0.338923,
		49.661064, 53.741508, 52.692165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.024231, 53.265453, 53.158600>,  <49.234528, 53.239731, 52.929413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.024231, 53.265453, 53.158600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886738, 53.625740, 53.052353>,  <49.804241, 53.841911, 52.988605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.886738, 53.625740, 53.052353>,  <50.024231, 53.265453, 53.158600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.886738, 53.625740, 53.052353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297794, 0.372809, 0.878824,
		0.890597, 0.222984, -0.396376,
		-0.343737, 0.900717, -0.265620,
		49.783615, 53.895954, 52.972668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.489544, 53.706848, 53.446430>,  <50.024231, 53.265453, 53.158600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.489544, 53.706848, 53.446430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.182594, 53.951141, 53.368309>,  <49.998425, 54.097717, 53.321438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.182594, 53.951141, 53.368309>,  <50.489544, 53.706848, 53.446430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.182594, 53.951141, 53.368309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258468, 0.573377, 0.777453,
		0.586800, 0.546116, -0.597849,
		-0.767373, 0.610734, -0.195304,
		49.952381, 54.134361, 53.309719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.705212, 54.466274, 53.204361>,  <50.489544, 53.706848, 53.446430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.705212, 54.466274, 53.204361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.351421, 54.449238, 53.390221>,  <50.139149, 54.439014, 53.501736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.351421, 54.449238, 53.390221>,  <50.705212, 54.466274, 53.204361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.351421, 54.449238, 53.390221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384394, 0.497951, 0.777358,
		-0.264482, 0.866158, -0.424051,
		-0.884472, -0.042595, 0.464645,
		50.086079, 54.436459, 53.529613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.430786, 54.570824, 53.291756>,  <50.705212, 54.466274, 53.204361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.430786, 54.570824, 53.291756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.370056, 54.736500, 52.932781>,  <51.333618, 54.835907, 52.717396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.370056, 54.736500, 52.932781>,  <51.430786, 54.570824, 53.291756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.370056, 54.736500, 52.932781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865332, 0.494475, 0.081824,
		0.477652, -0.764160, -0.433485,
		-0.151820, 0.414192, -0.897438,
		51.324509, 54.860756, 52.663551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.072922, 54.507740, 52.967953>,  <51.430786, 54.570824, 53.291756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.072922, 54.507740, 52.967953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.866764, 54.839355, 52.881168>,  <51.743069, 55.038322, 52.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.866764, 54.839355, 52.881168>,  <52.072922, 54.507740, 52.967953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.866764, 54.839355, 52.881168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845031, 0.533750, 0.032151,
		0.142458, -0.166769, -0.975650,
		-0.515392, 0.829035, -0.216962,
		51.712147, 55.088066, 52.816078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.372459, 54.856815, 52.398300>,  <52.072922, 54.507740, 52.967953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.372459, 54.856815, 52.398300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.184689, 55.117523, 52.636574>,  <52.072025, 55.273949, 52.779537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.184689, 55.117523, 52.636574>,  <52.372459, 54.856815, 52.398300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.184689, 55.117523, 52.636574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834635, 0.547691, 0.058469,
		-0.288141, 0.524622, -0.801091,
		-0.469424, 0.651771, 0.595680,
		52.043861, 55.313053, 52.815277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.338959, 55.534504, 52.011776>,  <52.372459, 54.856815, 52.398300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.338959, 55.534504, 52.011776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.363617, 55.575180, 52.408939>,  <52.378410, 55.599586, 52.647236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.363617, 55.575180, 52.408939>,  <52.338959, 55.534504, 52.011776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.363617, 55.575180, 52.408939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904741, 0.414392, -0.098609,
		-0.421479, 0.904400, -0.066455,
		0.061644, 0.101686, 0.992905,
		52.382111, 55.605686, 52.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.258209, 56.118534, 52.254230>,  <52.338959, 55.534504, 52.011776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.258209, 56.118534, 52.254230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.508953, 55.888985, 52.465027>,  <52.659401, 55.751255, 52.591503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.508953, 55.888985, 52.465027>,  <52.258209, 56.118534, 52.254230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.508953, 55.888985, 52.465027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774616, 0.386325, -0.500723,
		0.083764, 0.722096, 0.686703,
		0.626860, -0.573874, 0.526987,
		52.697010, 55.716824, 52.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.778744, 56.453377, 52.598709>,  <52.258209, 56.118534, 52.254230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.778744, 56.453377, 52.598709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958916, 56.109901, 52.500919>,  <53.067020, 55.903816, 52.442245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.958916, 56.109901, 52.500919>,  <52.778744, 56.453377, 52.598709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.958916, 56.109901, 52.500919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763453, 0.512409, -0.393162,
		0.462873, -0.009551, 0.886373,
		0.450431, -0.858688, -0.244472,
		53.094044, 55.852295, 52.427578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.511364, 56.363934, 52.774075>,  <52.778744, 56.453377, 52.598709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.511364, 56.363934, 52.774075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.458248, 56.108570, 52.470810>,  <53.426380, 55.955353, 52.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.458248, 56.108570, 52.470810>,  <53.511364, 56.363934, 52.774075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.458248, 56.108570, 52.470810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796865, 0.386101, -0.464684,
		0.589383, -0.665857, 0.457452,
		-0.132791, -0.638404, -0.758160,
		53.418411, 55.917049, 52.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.113850, 55.984856, 52.780186>,  <53.511364, 56.363934, 52.774075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.113850, 55.984856, 52.780186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.948120, 55.989712, 52.416164>,  <53.848682, 55.992626, 52.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.948120, 55.989712, 52.416164>,  <54.113850, 55.984856, 52.780186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.948120, 55.989712, 52.416164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877139, 0.272111, -0.395706,
		0.242830, -0.962189, -0.123392,
		-0.414320, 0.012142, -0.910051,
		53.823826, 55.993355, 52.143150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.352127, 55.432400, 52.433792>,  <54.113850, 55.984856, 52.780186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.352127, 55.432400, 52.433792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.271774, 55.749630, 52.203777>,  <54.223564, 55.939968, 52.065769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.271774, 55.749630, 52.203777>,  <54.352127, 55.432400, 52.433792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.271774, 55.749630, 52.203777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918849, -0.050982, -0.391302,
		-0.339650, -0.606981, -0.718479,
		-0.200883, 0.793079, -0.575040,
		54.211510, 55.987553, 52.031265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.402390, 55.389973, 51.702587>,  <54.352127, 55.432400, 52.433792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.402390, 55.389973, 51.702587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.490509, 55.773609, 51.773712>,  <54.543381, 56.003792, 51.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.490509, 55.773609, 51.773712>,  <54.402390, 55.389973, 51.702587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.490509, 55.773609, 51.773712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970011, -0.196205, -0.143465,
		-0.102709, 0.204084, -0.973551,
		0.220295, 0.959090, 0.177811,
		54.556599, 56.061337, 51.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.895657, 55.742661, 51.198109>,  <54.402390, 55.389973, 51.702587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.895657, 55.742661, 51.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.922554, 55.988731, 51.512314>,  <54.938694, 56.136375, 51.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.922554, 55.988731, 51.512314>,  <54.895657, 55.742661, 51.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.922554, 55.988731, 51.512314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996486, -0.002012, -0.083733,
		-0.049931, 0.788385, -0.613153,
		0.067247, 0.615179, 0.785514,
		54.942730, 56.173286, 51.747967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.381836, 56.273651, 50.917759>,  <54.895657, 55.742661, 51.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.381836, 56.273651, 50.917759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.387398, 56.246437, 51.316795>,  <55.390736, 56.230110, 51.556217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.387398, 56.246437, 51.316795>,  <55.381836, 56.273651, 50.917759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.387398, 56.246437, 51.316795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965519, 0.260297, 0.004294,
		-0.259961, 0.963129, 0.069304,
		0.013904, -0.068030, 0.997586,
		55.391567, 56.226028, 51.616070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.641071, 56.853508, 51.328457>,  <55.381836, 56.273651, 50.917759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.641071, 56.853508, 51.328457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.732048, 56.556107, 51.580002>,  <55.786633, 56.377666, 51.730930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.732048, 56.556107, 51.580002>,  <55.641071, 56.853508, 51.328457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.732048, 56.556107, 51.580002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900165, 0.406858, 0.155468,
		-0.371450, 0.530724, 0.761812,
		0.227439, -0.743505, 0.628866,
		55.800282, 56.333054, 51.768661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.742950, 57.141109, 52.022503>,  <55.641071, 56.853508, 51.328457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.742950, 57.141109, 52.022503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.950729, 56.806938, 51.950684>,  <56.075397, 56.606434, 51.907593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.950729, 56.806938, 51.950684>,  <55.742950, 57.141109, 52.022503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.950729, 56.806938, 51.950684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853438, 0.517704, 0.060214,
		0.042647, -0.184508, 0.981905,
		0.519447, -0.835427, -0.179544,
		56.106564, 56.556309, 51.896820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.261269, 57.188255, 52.480408>,  <55.742950, 57.141109, 52.022503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.261269, 57.188255, 52.480408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.643272, 57.303288, 52.509407>,  <56.872475, 57.372307, 52.526806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.643272, 57.303288, 52.509407>,  <56.261269, 57.188255, 52.480408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.643272, 57.303288, 52.509407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096897, -0.533578, 0.840182,
		0.280305, -0.795356, -0.537437,
		0.955008, 0.287583, 0.072497,
		56.929775, 57.389561, 52.531155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.740383, 56.621552, 52.469643>,  <56.261269, 57.188255, 52.480408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.740383, 56.621552, 52.469643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.891418, 56.926262, 52.680214>,  <56.982040, 57.109089, 52.806557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.891418, 56.926262, 52.680214>,  <56.740383, 56.621552, 52.469643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.891418, 56.926262, 52.680214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064372, -0.545540, 0.835609,
		0.923734, -0.349402, -0.156951,
		0.377586, 0.761778, 0.526426,
		57.004696, 57.154797, 52.838142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.287292, 56.447811, 52.914303>,  <56.740383, 56.621552, 52.469643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.287292, 56.447811, 52.914303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.079819, 56.744362, 53.084633>,  <56.955334, 56.922291, 53.186832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.079819, 56.744362, 53.084633>,  <57.287292, 56.447811, 52.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.079819, 56.744362, 53.084633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155625, -0.571612, 0.805631,
		0.840682, 0.351600, 0.411864,
		-0.518686, 0.741375, 0.425826,
		56.924213, 56.966774, 53.212379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.657516, 56.198353, 53.456615>,  <57.287292, 56.447811, 52.914303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.657516, 56.198353, 53.456615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.902359, 56.100498, 53.155823>,  <58.049267, 56.041786, 52.975349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.902359, 56.100498, 53.155823>,  <57.657516, 56.198353, 53.456615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.902359, 56.100498, 53.155823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519883, 0.841042, 0.149567,
		0.595856, -0.482492, 0.641994,
		0.612109, -0.244641, -0.751980,
		58.085991, 56.027107, 52.930229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.165535, 56.651398, 53.536957>,  <57.657516, 56.198353, 53.456615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.165535, 56.651398, 53.536957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246689, 56.496166, 53.177349>,  <58.295380, 56.403027, 52.961586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.246689, 56.496166, 53.177349>,  <58.165535, 56.651398, 53.536957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.246689, 56.496166, 53.177349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655064, 0.736208, -0.169968,
		0.727826, -0.554431, 0.403580,
		0.202883, -0.388078, -0.899018,
		58.307552, 56.379742, 52.907642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.680374, 56.094727, 53.327229>,  <58.165535, 56.651398, 53.536957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.680374, 56.094727, 53.327229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.857124, 56.350105, 53.579304>,  <58.963173, 56.503330, 53.730549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.857124, 56.350105, 53.579304>,  <58.680374, 56.094727, 53.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.857124, 56.350105, 53.579304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344988, 0.769405, -0.537587,
		-0.828088, 0.020139, 0.560236,
		0.441874, 0.638444, 0.630188,
		58.989685, 56.541637, 53.768360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.215847, 55.963650, 53.808369>,  <58.680374, 56.094727, 53.327229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.215847, 55.963650, 53.808369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.460182, 56.274033, 53.745415>,  <59.606785, 56.460262, 53.707642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.460182, 56.274033, 53.745415>,  <59.215847, 55.963650, 53.808369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.460182, 56.274033, 53.745415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786614, -0.617378, 0.009111,
		-0.090094, -0.129363, -0.987496,
		0.610837, 0.775957, -0.157381,
		59.643433, 56.506821, 53.698200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.683979, 55.864765, 53.157883>,  <59.215847, 55.963650, 53.808369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.683979, 55.864765, 53.157883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.848541, 56.098545, 53.437645>,  <59.947277, 56.238811, 53.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.848541, 56.098545, 53.437645>,  <59.683979, 55.864765, 53.157883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.848541, 56.098545, 53.437645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749814, -0.653288, 0.104853,
		0.518193, 0.481285, -0.706994,
		0.411407, 0.584448, 0.699403,
		59.971962, 56.273880, 53.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.363319, 55.981506, 52.980003>,  <59.683979, 55.864765, 53.157883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.363319, 55.981506, 52.980003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.285263, 55.946487, 53.370747>,  <60.238430, 55.925476, 53.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.285263, 55.946487, 53.370747>,  <60.363319, 55.981506, 52.980003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.285263, 55.946487, 53.370747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568843, -0.821472, 0.040013,
		0.798960, 0.563488, 0.210104,
		-0.195142, -0.087547, 0.976860,
		60.226719, 55.920223, 53.663803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.952557, 55.751461, 53.263531>,  <60.363319, 55.981506, 52.980003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.952557, 55.751461, 53.263531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.699905, 55.670551, 53.562901>,  <60.548317, 55.622005, 53.742523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.699905, 55.670551, 53.562901>,  <60.952557, 55.751461, 53.263531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.699905, 55.670551, 53.562901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589257, -0.752595, 0.293900,
		0.503812, 0.626647, 0.594547,
		-0.631625, -0.202271, 0.748423,
		60.510418, 55.609871, 53.787426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.261719, 55.721634, 54.023632>,  <60.952557, 55.751461, 53.263531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.261719, 55.721634, 54.023632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.953896, 55.478905, 53.944077>,  <60.769203, 55.333267, 53.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.953896, 55.478905, 53.944077>,  <61.261719, 55.721634, 54.023632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.953896, 55.478905, 53.944077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526809, -0.779308, 0.339340,
		-0.360913, 0.156364, 0.919398,
		-0.769555, -0.606819, -0.198888,
		60.723030, 55.296860, 53.884411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.493919, 56.066067, 54.651546>,  <61.261719, 55.721634, 54.023632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.493919, 56.066067, 54.651546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.754707, 55.905655, 54.394138>,  <61.911179, 55.809406, 54.239693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.754707, 55.905655, 54.394138>,  <61.493919, 56.066067, 54.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.754707, 55.905655, 54.394138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250331, 0.687265, -0.681910,
		0.715734, 0.605675, 0.347683,
		0.651966, -0.401030, -0.643518,
		61.950298, 55.785347, 54.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.945038, 56.562752, 54.413551>,  <61.493919, 56.066067, 54.651546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.945038, 56.562752, 54.413551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.938110, 56.303799, 54.108765>,  <61.933952, 56.148426, 53.925892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.938110, 56.303799, 54.108765>,  <61.945038, 56.562752, 54.413551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.938110, 56.303799, 54.108765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113946, 0.758396, -0.641757,
		0.993336, 0.075708, -0.086903,
		-0.017321, -0.647382, -0.761968,
		61.932915, 56.109585, 53.880173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.481804, 56.678909, 53.766720>,  <61.945038, 56.562752, 54.413551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.481804, 56.678909, 53.766720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.270119, 56.991619, 53.634800>,  <61.143108, 57.179245, 53.555649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.270119, 56.991619, 53.634800>,  <61.481804, 56.678909, 53.766720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.270119, 56.991619, 53.634800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476612, 0.595470, 0.646728,
		0.701980, 0.185068, -0.687731,
		-0.529212, 0.781771, -0.329802,
		61.111355, 57.226151, 53.535858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.976791, 57.181526, 53.734707>,  <61.481804, 56.678909, 53.766720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.976791, 57.181526, 53.734707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.604996, 57.326012, 53.764572>,  <61.381920, 57.412701, 53.782494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.604996, 57.326012, 53.764572>,  <61.976791, 57.181526, 53.734707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.604996, 57.326012, 53.764572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320163, 0.689591, 0.649584,
		0.183147, 0.627688, -0.756614,
		-0.929491, 0.361209, 0.074666,
		61.326149, 57.434376, 53.786972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.760544, 57.850197, 53.447964>,  <61.976791, 57.181526, 53.734707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.760544, 57.850197, 53.447964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.568298, 57.787422, 53.793076>,  <61.452950, 57.749760, 54.000141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.568298, 57.787422, 53.793076>,  <61.760544, 57.850197, 53.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.568298, 57.787422, 53.793076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345189, 0.870572, 0.350640,
		-0.806136, 0.466343, -0.364236,
		-0.480613, -0.156933, 0.862777,
		61.424114, 57.740341, 54.051910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.398628, 58.429596, 53.702377>,  <61.760544, 57.850197, 53.447964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.398628, 58.429596, 53.702377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.498711, 58.216061, 54.025467>,  <61.558758, 58.087940, 54.219318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.498711, 58.216061, 54.025467>,  <61.398628, 58.429596, 53.702377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.498711, 58.216061, 54.025467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294107, 0.836742, 0.461914,
		-0.922442, 0.121985, 0.366361,
		0.250203, -0.533838, 0.807722,
		61.573772, 58.055908, 54.267784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.110199, 58.697453, 54.240334>,  <61.398628, 58.429596, 53.702377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.110199, 58.697453, 54.240334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.414047, 58.499069, 54.408615>,  <61.596355, 58.380039, 54.509583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.414047, 58.499069, 54.408615>,  <61.110199, 58.697453, 54.240334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.414047, 58.499069, 54.408615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167722, 0.774387, 0.610077,
		-0.628363, -0.392868, 0.671427,
		0.759624, -0.495963, 0.420703,
		61.641933, 58.350281, 54.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.078484, 59.000092, 54.833233>,  <61.110199, 58.697453, 54.240334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.078484, 59.000092, 54.833233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.441612, 58.834728, 54.805096>,  <61.659489, 58.735512, 54.788212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.441612, 58.834728, 54.805096>,  <61.078484, 59.000092, 54.833233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.441612, 58.834728, 54.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384657, 0.754117, 0.532304,
		-0.167007, -0.510298, 0.843626,
		0.907826, -0.413405, -0.070347,
		61.713959, 58.710705, 54.783993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.387478, 58.907928, 55.428345>,  <61.078484, 59.000092, 54.833233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.387478, 58.907928, 55.428345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.713951, 58.918591, 55.197472>,  <61.909836, 58.924988, 55.058949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.713951, 58.918591, 55.197472>,  <61.387478, 58.907928, 55.428345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.713951, 58.918591, 55.197472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460495, 0.573354, 0.677650,
		0.348992, -0.818874, 0.455686,
		0.816179, 0.026654, -0.577184,
		61.958805, 58.926586, 55.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.920010, 58.791100, 55.915615>,  <61.387478, 58.907928, 55.428345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.920010, 58.791100, 55.915615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.079414, 58.962494, 55.591248>,  <62.175056, 59.065331, 55.396626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.079414, 58.962494, 55.591248>,  <61.920010, 58.791100, 55.915615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.079414, 58.962494, 55.591248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647699, 0.494517, 0.579603,
		0.649365, -0.756208, -0.080461,
		0.398511, 0.428488, -0.810917,
		62.198967, 59.091042, 55.347973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.583313, 58.406960, 56.076492>,  <61.920010, 58.791100, 55.915615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.583313, 58.406960, 56.076492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.806725, 58.731377, 56.146072>,  <62.940769, 58.926025, 56.187820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.806725, 58.731377, 56.146072>,  <62.583313, 58.406960, 56.076492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.806725, 58.731377, 56.146072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376451, -0.434710, 0.818115,
		0.739143, -0.391456, -0.548114,
		0.558527, 0.811042, 0.173949,
		62.974281, 58.974689, 56.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.273407, 58.269405, 55.957363>,  <62.583313, 58.406960, 56.076492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.273407, 58.269405, 55.957363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.229919, 58.564789, 56.223557>,  <63.203827, 58.742020, 56.383270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.229919, 58.564789, 56.223557>,  <63.273407, 58.269405, 55.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.229919, 58.564789, 56.223557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573891, -0.499996, 0.648578,
		0.811683, 0.452424, -0.369436,
		-0.108715, 0.738456, 0.665480,
		63.197304, 58.786327, 56.423199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.925995, 58.626629, 56.166634>,  <63.273407, 58.269405, 55.957363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.925995, 58.626629, 56.166634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.676102, 58.628170, 56.478966>,  <63.526165, 58.629093, 56.666367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.676102, 58.628170, 56.478966>,  <63.925995, 58.626629, 56.166634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.676102, 58.628170, 56.478966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735227, -0.333871, 0.589891,
		0.262967, 0.942611, 0.205749,
		-0.624732, 0.003850, 0.780830,
		63.488682, 58.629326, 56.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.079597, 59.098667, 56.796902>,  <63.925995, 58.626629, 56.166634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.079597, 59.098667, 56.796902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.904617, 58.749695, 56.884094>,  <63.799629, 58.540314, 56.936409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.904617, 58.749695, 56.884094>,  <64.079597, 59.098667, 56.796902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.904617, 58.749695, 56.884094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664925, -0.150617, 0.731566,
		-0.605407, 0.464958, 0.645985,
		-0.437443, -0.872427, 0.217977,
		63.773384, 58.487968, 56.949486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.844543, 59.067558, 57.500141>,  <64.079597, 59.098667, 56.796902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.844543, 59.067558, 57.500141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.959373, 58.708805, 57.365562>,  <64.028275, 58.493553, 57.284817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.959373, 58.708805, 57.365562>,  <63.844543, 59.067558, 57.500141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.959373, 58.708805, 57.365562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674132, -0.060369, 0.736140,
		-0.680539, -0.438137, 0.587284,
		0.287077, -0.896879, -0.336446,
		64.045494, 58.439743, 57.264629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.644997, 58.502872, 57.982479>,  <63.844543, 59.067558, 57.500141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.644997, 58.502872, 57.982479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.988663, 58.453140, 57.783936>,  <64.194862, 58.423302, 57.664810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.988663, 58.453140, 57.783936>,  <63.644997, 58.502872, 57.982479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.988663, 58.453140, 57.783936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511476, 0.180218, 0.840187,
		-0.015009, -0.975737, 0.218430,
		0.859167, -0.124332, -0.496361,
		64.246414, 58.415840, 57.635029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.010193, 57.990681, 58.291473>,  <63.644997, 58.502872, 57.982479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.010193, 57.990681, 58.291473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.237457, 58.280434, 58.135284>,  <64.373817, 58.454285, 58.041569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.237457, 58.280434, 58.135284>,  <64.010193, 57.990681, 58.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.237457, 58.280434, 58.135284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602092, -0.042462, 0.797296,
		0.560965, -0.688093, -0.460268,
		0.568158, 0.724379, -0.390476,
		64.407906, 58.497746, 58.018143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.699226, 57.927959, 58.563156>,  <64.010193, 57.990681, 58.291473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.699226, 57.927959, 58.563156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.630692, 58.309200, 58.463364>,  <64.589569, 58.537945, 58.403488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.630692, 58.309200, 58.463364>,  <64.699226, 57.927959, 58.563156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.630692, 58.309200, 58.463364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469629, 0.301610, 0.829747,
		0.866080, 0.025002, -0.499281,
		-0.171334, 0.953103, -0.249477,
		64.579292, 58.595131, 58.388519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.368156, 58.342426, 58.454048>,  <64.699226, 57.927959, 58.563156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.368156, 58.342426, 58.454048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.049324, 58.531078, 58.604897>,  <64.858025, 58.644268, 58.695404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.049324, 58.531078, 58.604897>,  <65.368156, 58.342426, 58.454048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.049324, 58.531078, 58.604897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526788, 0.237783, 0.816060,
		0.295202, 0.849134, -0.437980,
		-0.797089, 0.471625, 0.377120,
		64.810196, 58.672565, 58.718033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.681503, 58.995487, 58.708042>,  <65.368156, 58.342426, 58.454048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.681503, 58.995487, 58.708042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478523, 58.783051, 58.979462>,  <65.356735, 58.655590, 59.142315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.478523, 58.783051, 58.979462>,  <65.681503, 58.995487, 58.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.478523, 58.783051, 58.979462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636676, -0.761728, -0.120058,
		0.580635, 0.371095, 0.724673,
		-0.507451, -0.531092, 0.678553,
		65.326286, 58.623722, 59.183029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.051773, 58.770184, 59.333927>,  <65.681503, 58.995487, 58.708042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.051773, 58.770184, 59.333927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.777733, 58.498432, 59.228790>,  <65.613312, 58.335381, 59.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.777733, 58.498432, 59.228790>,  <66.051773, 58.770184, 59.333927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.777733, 58.498432, 59.228790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724134, -0.674385, -0.144347,
		-0.079192, -0.289225, 0.953980,
		-0.685098, -0.679378, -0.262844,
		65.572205, 58.294621, 59.149937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.749763, 58.738129, 59.095108>,  <66.051773, 58.770184, 59.333927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.749763, 58.738129, 59.095108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.651039, 58.351082, 59.073914>,  <66.591805, 58.118855, 59.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.651039, 58.351082, 59.073914>,  <66.749763, 58.738129, 59.095108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.651039, 58.351082, 59.073914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441540, -0.063619, -0.894983,
		0.862627, -0.244290, 0.442942,
		-0.246815, -0.967613, -0.052984,
		66.576996, 58.060799, 59.058018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.290833, 58.148182, 58.952278>,  <66.749763, 58.738129, 59.095108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.290833, 58.148182, 58.952278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.923897, 58.135059, 58.793571>,  <66.703735, 58.127186, 58.698345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.923897, 58.135059, 58.793571>,  <67.290833, 58.148182, 58.952278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.923897, 58.135059, 58.793571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381764, 0.210274, -0.900023,
		0.112956, -0.977092, -0.180366,
		-0.917331, -0.032806, -0.396771,
		66.648697, 58.125217, 58.674541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.338501, 57.655884, 58.377670>,  <67.290833, 58.148182, 58.952278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.338501, 57.655884, 58.377670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.037025, 57.909012, 58.306694>,  <66.856140, 58.060890, 58.264107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.037025, 57.909012, 58.306694>,  <67.338501, 57.655884, 58.377670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.037025, 57.909012, 58.306694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352137, 0.160866, -0.922020,
		-0.554930, -0.757403, -0.344083,
		-0.753692, 0.632822, -0.177440,
		66.810921, 58.098858, 58.253464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.948570, 57.422729, 57.921982>,  <67.338501, 57.655884, 58.377670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.948570, 57.422729, 57.921982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.867859, 57.723907, 57.671425>,  <67.819435, 57.904613, 57.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.867859, 57.723907, 57.671425>,  <67.948570, 57.422729, 57.921982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.867859, 57.723907, 57.671425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979432, 0.154257, -0.130070,
		-0.001310, -0.639751, -0.768581,
		-0.201772, 0.752943, -0.626391,
		67.807327, 57.949791, 57.483509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.300652, 57.424911, 57.296959>,  <67.948570, 57.422729, 57.921982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.300652, 57.424911, 57.296959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.225258, 57.801102, 57.410080>,  <68.180023, 58.026817, 57.477955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.225258, 57.801102, 57.410080>,  <68.300652, 57.424911, 57.296959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.225258, 57.801102, 57.410080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965982, 0.229464, -0.119272,
		-0.177066, 0.250704, -0.951733,
		-0.188486, 0.940475, 0.282806,
		68.168709, 58.083244, 57.494923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.437157, 57.945988, 56.775562>,  <68.300652, 57.424911, 57.296959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.437157, 57.945988, 56.775562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.496086, 58.112595, 57.134407>,  <68.531441, 58.212559, 57.349712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.496086, 58.112595, 57.134407>,  <68.437157, 57.945988, 56.775562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.496086, 58.112595, 57.134407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978829, 0.068907, -0.192732,
		-0.142094, 0.906511, -0.397550,
		0.147320, 0.416520, 0.897111,
		68.540283, 58.237549, 57.403542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.775772, 58.574806, 56.725540>,  <68.437157, 57.945988, 56.775562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.775772, 58.574806, 56.725540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.841743, 58.399391, 57.078918>,  <68.881325, 58.294144, 57.290947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.841743, 58.399391, 57.078918>,  <68.775772, 58.574806, 56.725540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.841743, 58.399391, 57.078918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986278, 0.079976, -0.144429,
		-0.007317, 0.895148, 0.445709,
		0.164931, -0.438536, 0.883450,
		68.891220, 58.267830, 57.343952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.316536, 58.955196, 56.900749>,  <68.775772, 58.574806, 56.725540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.316536, 58.955196, 56.900749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.362526, 58.636257, 57.137733>,  <69.390121, 58.444893, 57.279926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.362526, 58.636257, 57.137733>,  <69.316536, 58.955196, 56.900749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.362526, 58.636257, 57.137733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953950, 0.254974, 0.158011,
		-0.277053, 0.547012, 0.789949,
		0.114983, -0.797350, 0.592463,
		69.397018, 58.397053, 57.315472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.608650, 59.111115, 57.560783>,  <69.316536, 58.955196, 56.900749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.608650, 59.111115, 57.560783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735748, 58.759304, 57.419098>,  <69.812012, 58.548218, 57.334087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.735748, 58.759304, 57.419098>,  <69.608650, 59.111115, 57.560783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.735748, 58.759304, 57.419098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946162, 0.318444, 0.058063,
		0.061730, -0.353595, 0.933359,
		0.317754, -0.879524, -0.354216,
		69.831078, 58.495445, 57.312832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.156136, 58.841808, 58.006016>,  <69.608650, 59.111115, 57.560783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.156136, 58.841808, 58.006016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.159386, 58.722378, 57.624275>,  <70.161339, 58.650719, 57.395229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.159386, 58.722378, 57.624275>,  <70.156136, 58.841808, 58.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.159386, 58.722378, 57.624275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991555, 0.125938, -0.030955,
		0.129431, -0.946040, 0.297080,
		0.008129, -0.298577, -0.954351,
		70.161827, 58.632805, 57.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.715996, 59.211422, 58.504467>,  <70.156136, 58.841808, 58.006016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.715996, 59.211422, 58.504467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.532913, 58.863258, 58.577011>,  <69.423065, 58.654362, 58.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.532913, 58.863258, 58.577011>,  <69.715996, 59.211422, 58.504467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.532913, 58.863258, 58.577011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301761, 0.343956, 0.889177,
		-0.836329, 0.352253, -0.420086,
		-0.457706, -0.870410, 0.181364,
		69.395599, 58.602135, 58.631420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.236298, 59.622658, 58.970604>,  <69.715996, 59.211422, 58.504467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.236298, 59.622658, 58.970604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462448, 59.572586, 59.296715>,  <70.598137, 59.542545, 59.492382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.462448, 59.572586, 59.296715>,  <70.236298, 59.622658, 58.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.462448, 59.572586, 59.296715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623789, 0.581798, 0.521918,
		-0.539657, -0.803643, 0.250854,
		0.565382, -0.125177, 0.815275,
		70.632065, 59.535034, 59.541298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.865669, 59.335556, 59.703690>,  <70.236298, 59.622658, 58.970604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.865669, 59.335556, 59.703690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.171272, 59.593597, 59.699348>,  <70.354637, 59.748425, 59.696743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.171272, 59.593597, 59.699348>,  <69.865669, 59.335556, 59.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.171272, 59.593597, 59.699348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597376, 0.713643, 0.365864,
		0.243768, -0.273041, 0.930605,
		0.764016, 0.645107, -0.010855,
		70.400475, 59.787128, 59.696091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.961060, 58.561718, 59.967484>,  <69.865669, 59.335556, 59.703690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.961060, 58.561718, 59.967484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.211548, 58.249859, 59.967224>,  <70.361839, 58.062744, 59.967068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.211548, 58.249859, 59.967224>,  <69.961060, 58.561718, 59.967484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.211548, 58.249859, 59.967224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596928, 0.479994, -0.642870,
		0.501524, 0.402189, 0.765975,
		0.626219, -0.779647, -0.000651,
		70.399414, 58.015965, 59.967030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.666092, 58.798439, 60.285858>,  <69.961060, 58.561718, 59.967484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.666092, 58.798439, 60.285858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.645370, 58.509266, 60.010269>,  <70.632942, 58.335762, 59.844917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.645370, 58.509266, 60.010269>,  <70.666092, 58.798439, 60.285858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.645370, 58.509266, 60.010269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639086, 0.506133, -0.579135,
		0.767389, -0.470311, 0.435800,
		-0.051800, -0.722936, -0.688971,
		70.629829, 58.292385, 59.803577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.365150, 58.595284, 60.075851>,  <70.666092, 58.798439, 60.285858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.365150, 58.595284, 60.075851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.134918, 58.484364, 59.768135>,  <70.996780, 58.417812, 59.583504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.134918, 58.484364, 59.768135>,  <71.365150, 58.595284, 60.075851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.134918, 58.484364, 59.768135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701870, 0.315226, -0.638757,
		0.419631, -0.907599, 0.013194,
		-0.575576, -0.277303, -0.769295,
		70.962242, 58.401173, 59.537346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.621300, 58.642117, 60.805855>,  <71.365150, 58.595284, 60.075851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.621300, 58.642117, 60.805855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803642, 58.491196, 60.483406>,  <71.913048, 58.400642, 60.289936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803642, 58.491196, 60.483406>,  <71.621300, 58.642117, 60.805855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.803642, 58.491196, 60.483406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101845, -0.877644, 0.468368,
		-0.884207, -0.295608, -0.361654,
		0.455857, -0.377302, -0.806125,
		71.940399, 58.378006, 60.241570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.374573, 57.943081, 60.663475>,  <71.621300, 58.642117, 60.805855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.374573, 57.943081, 60.663475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.760788, 57.955498, 60.560120>,  <71.992516, 57.962948, 60.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.760788, 57.955498, 60.560120>,  <71.374573, 57.943081, 60.663475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.760788, 57.955498, 60.560120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188009, -0.769693, 0.610102,
		-0.179941, -0.637659, -0.749008,
		0.965544, 0.031038, -0.258385,
		72.050453, 57.964809, 60.482605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.829842, 57.231777, 60.372555>,  <71.374573, 57.943081, 60.663475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.829842, 57.231777, 60.372555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.031532, 57.514786, 60.570618>,  <72.152542, 57.684589, 60.689453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.031532, 57.514786, 60.570618>,  <71.829842, 57.231777, 60.372555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.031532, 57.514786, 60.570618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262898, -0.671923, 0.692390,
		0.822585, -0.218942, -0.524803,
		0.504221, 0.707519, 0.495155,
		72.182800, 57.727043, 60.719166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.553207, 57.030964, 60.513050>,  <71.829842, 57.231777, 60.372555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.553207, 57.030964, 60.513050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.398705, 57.271027, 60.793228>,  <72.306000, 57.415062, 60.961334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.398705, 57.271027, 60.793228>,  <72.553207, 57.030964, 60.513050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.398705, 57.271027, 60.793228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109166, -0.724295, 0.680793,
		0.915906, 0.339429, 0.214252,
		-0.386263, 0.600154, 0.700440,
		72.282829, 57.451073, 61.003361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.492996, 57.239567, 59.862438>,  <72.553207, 57.030964, 60.513050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.492996, 57.239567, 59.862438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.474182, 57.517097, 60.149879>,  <72.462891, 57.683617, 60.322346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.474182, 57.517097, 60.149879>,  <72.492996, 57.239567, 59.862438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.474182, 57.517097, 60.149879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537240, -0.588918, 0.603779,
		0.842116, 0.414468, -0.345045,
		-0.047044, 0.693824, 0.718606,
		72.460068, 57.725246, 60.365459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.156601, 57.569515, 60.115932>,  <72.492996, 57.239567, 59.862438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.156601, 57.569515, 60.115932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887306, 57.568222, 60.411697>,  <72.725731, 57.567444, 60.589157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.887306, 57.568222, 60.411697>,  <73.156601, 57.569515, 60.115932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.887306, 57.568222, 60.411697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695504, -0.342265, 0.631767,
		0.251030, 0.939598, 0.232679,
		-0.673245, -0.003237, 0.739412,
		72.685333, 57.567249, 60.633522>
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
