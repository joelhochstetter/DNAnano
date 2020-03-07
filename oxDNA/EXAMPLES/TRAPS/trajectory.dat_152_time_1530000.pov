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
	<35.994530, 51.578987, 50.519249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352478, 51.740940, 50.444126>,  <36.567249, 51.838112, 50.399052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352478, 51.740940, 50.444126>,  <35.994530, 51.578987, 50.519249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352478, 51.740940, 50.444126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037962, -0.488322, -0.871837,
		-0.444699, 0.773056, -0.452357,
		0.894875, 0.404878, -0.187809,
		36.620941, 51.862404, 50.387783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058929, 51.651028, 49.785797>,  <35.994530, 51.578987, 50.519249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058929, 51.651028, 49.785797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439518, 51.710030, 49.893826>,  <36.667873, 51.745430, 49.958641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439518, 51.710030, 49.893826>,  <36.058929, 51.651028, 49.785797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439518, 51.710030, 49.893826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307131, -0.400527, -0.863278,
		-0.019167, 0.904334, -0.426394,
		0.951474, 0.147505, 0.270072,
		36.724960, 51.754280, 49.974846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309925, 52.103493, 49.371037>,  <36.058929, 51.651028, 49.785797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309925, 52.103493, 49.371037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584259, 51.836891, 49.487930>,  <36.748859, 51.676929, 49.558067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584259, 51.836891, 49.487930>,  <36.309925, 52.103493, 49.371037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584259, 51.836891, 49.487930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187982, -0.225683, -0.955892,
		0.703060, 0.710519, -0.029491,
		0.685835, -0.666506, 0.292233,
		36.790009, 51.636940, 49.575600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046234, 52.171207, 49.085144>,  <36.309925, 52.103493, 49.371037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046234, 52.171207, 49.085144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917564, 51.794281, 49.122158>,  <36.840363, 51.568123, 49.144367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917564, 51.794281, 49.122158>,  <37.046234, 52.171207, 49.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917564, 51.794281, 49.122158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586535, -0.275025, -0.761799,
		0.743307, -0.190775, 0.641171,
		-0.321671, -0.942319, 0.092532,
		36.821064, 51.511585, 49.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280960, 52.239140, 48.393932>,  <37.046234, 52.171207, 49.085144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280960, 52.239140, 48.393932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169102, 52.188759, 48.013210>,  <37.101986, 52.158531, 47.784779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169102, 52.188759, 48.013210>,  <37.280960, 52.239140, 48.393932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169102, 52.188759, 48.013210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558798, 0.784795, -0.268033,
		0.780731, -0.606822, -0.149085,
		-0.279649, -0.125953, -0.951805,
		37.085209, 52.150970, 47.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964413, 52.700203, 48.173889>,  <37.280960, 52.239140, 48.393932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964413, 52.700203, 48.173889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077679, 52.961979, 47.893452>,  <38.145638, 53.119045, 47.725189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077679, 52.961979, 47.893452>,  <37.964413, 52.700203, 48.173889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077679, 52.961979, 47.893452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956695, -0.141312, 0.254490,
		0.067475, -0.742793, -0.666112,
		0.283163, 0.654438, -0.701092,
		38.162628, 53.158310, 47.683125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593483, 52.814430, 48.444813>,  <37.964413, 52.700203, 48.173889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593483, 52.814430, 48.444813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554333, 53.021706, 48.104954>,  <38.530842, 53.146069, 47.901039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554333, 53.021706, 48.104954>,  <38.593483, 52.814430, 48.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554333, 53.021706, 48.104954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960352, 0.273120, 0.055943,
		0.261045, -0.810487, -0.524372,
		-0.097875, 0.518185, -0.849650,
		38.524971, 53.177162, 47.850060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056629, 52.616032, 47.923557>,  <38.593483, 52.814430, 48.444813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056629, 52.616032, 47.923557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948849, 52.996490, 47.863274>,  <38.884182, 53.224766, 47.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948849, 52.996490, 47.863274>,  <39.056629, 52.616032, 47.923557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948849, 52.996490, 47.863274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954742, 0.284313, 0.087366,
		0.125948, -0.120352, -0.984709,
		-0.269451, 0.951148, -0.150714,
		38.868015, 53.281834, 47.818058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778122, 52.624554, 47.790310>,  <39.056629, 52.616032, 47.923557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778122, 52.624554, 47.790310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958042, 52.888668, 47.549744>,  <40.065994, 53.047138, 47.405403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958042, 52.888668, 47.549744>,  <39.778122, 52.624554, 47.790310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958042, 52.888668, 47.549744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835039, -0.072029, 0.545456,
		0.316839, -0.747550, -0.583765,
		0.449804, 0.660288, -0.601412,
		40.092983, 53.086754, 47.369320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404491, 52.186863, 47.648167>,  <39.778122, 52.624554, 47.790310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404491, 52.186863, 47.648167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459530, 52.578018, 47.585182>,  <40.492554, 52.812714, 47.547390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459530, 52.578018, 47.585182>,  <40.404491, 52.186863, 47.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459530, 52.578018, 47.585182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860010, -0.039081, 0.508778,
		0.491376, -0.205423, -0.846375,
		0.137592, 0.977893, -0.157462,
		40.500809, 52.871387, 47.537945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946053, 51.458122, 47.523579>,  <40.404491, 52.186863, 47.648167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946053, 51.458122, 47.523579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790123, 51.534332, 47.883965>,  <40.696564, 51.580059, 48.100197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790123, 51.534332, 47.883965>,  <40.946053, 51.458122, 47.523579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790123, 51.534332, 47.883965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139544, -0.954843, 0.262301,
		0.910255, 0.227975, 0.345635,
		-0.389825, 0.190529, 0.900963,
		40.673176, 51.591492, 48.154255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486336, 51.406334, 46.992126>,  <40.946053, 51.458122, 47.523579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486336, 51.406334, 46.992126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875694, 51.315323, 47.002991>,  <42.109310, 51.260715, 47.009510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875694, 51.315323, 47.002991>,  <41.486336, 51.406334, 46.992126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875694, 51.315323, 47.002991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227305, 0.943804, -0.239930,
		0.028961, 0.239719, 0.970410,
		0.973393, -0.227528, 0.027156,
		42.167713, 51.247063, 47.011139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911781, 52.020870, 47.230606>,  <41.486336, 51.406334, 46.992126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911781, 52.020870, 47.230606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171810, 51.786293, 47.037323>,  <42.327827, 51.645546, 46.921352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171810, 51.786293, 47.037323>,  <41.911781, 52.020870, 47.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171810, 51.786293, 47.037323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392034, 0.803578, -0.447853,
		0.650938, 0.101701, 0.752288,
		0.650069, -0.586447, -0.483209,
		42.366829, 51.610359, 46.892361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572327, 52.435825, 47.242992>,  <41.911781, 52.020870, 47.230606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572327, 52.435825, 47.242992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554325, 52.165955, 46.948296>,  <42.543526, 52.004032, 46.771477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554325, 52.165955, 46.948296>,  <42.572327, 52.435825, 47.242992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554325, 52.165955, 46.948296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256533, 0.704949, -0.661239,
		0.965487, -0.218756, 0.141353,
		-0.045003, -0.674679, -0.736738,
		42.540825, 51.963551, 46.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970634, 51.920181, 47.715515>,  <42.572327, 52.435825, 47.242992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970634, 51.920181, 47.715515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334766, 51.991482, 47.566101>,  <43.553246, 52.034264, 47.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334766, 51.991482, 47.566101>,  <42.970634, 51.920181, 47.715515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334766, 51.991482, 47.566101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061467, -0.950721, -0.303895,
		-0.409300, 0.253684, -0.876423,
		0.910327, 0.178255, -0.373537,
		43.607864, 52.044960, 47.454041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557499, 51.713459, 48.211563>,  <42.970634, 51.920181, 47.715515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557499, 51.713459, 48.211563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612450, 51.556023, 48.575150>,  <43.645420, 51.461559, 48.793301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612450, 51.556023, 48.575150>,  <43.557499, 51.713459, 48.211563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612450, 51.556023, 48.575150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990519, 0.054014, -0.126312,
		0.000619, 0.917696, 0.397284,
		0.137374, -0.393595, 0.908961,
		43.653664, 51.437943, 48.847839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039337, 52.008621, 48.581333>,  <43.557499, 51.713459, 48.211563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039337, 52.008621, 48.581333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038216, 51.623413, 48.689095>,  <44.037544, 51.392288, 48.753754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038216, 51.623413, 48.689095>,  <44.039337, 52.008621, 48.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038216, 51.623413, 48.689095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947859, -0.088414, -0.306180,
		0.318677, 0.254500, 0.913058,
		-0.002804, -0.963023, 0.269406,
		44.037373, 51.334507, 48.769917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639317, 51.841995, 49.056244>,  <44.039337, 52.008621, 48.581333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639317, 51.841995, 49.056244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503536, 51.495094, 48.910561>,  <44.422070, 51.286953, 48.823151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503536, 51.495094, 48.910561>,  <44.639317, 51.841995, 49.056244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503536, 51.495094, 48.910561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939548, -0.331135, -0.087171,
		-0.045001, -0.371778, 0.927230,
		-0.339446, -0.867255, -0.364204,
		44.401703, 51.234917, 48.801300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863342, 52.528011, 48.956444>,  <44.639317, 51.841995, 49.056244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863342, 52.528011, 48.956444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981579, 52.470673, 49.334244>,  <45.052521, 52.436272, 49.560925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981579, 52.470673, 49.334244>,  <44.863342, 52.528011, 48.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981579, 52.470673, 49.334244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679664, 0.726330, -0.102478,
		-0.671328, 0.672233, 0.312123,
		0.295594, -0.143342, 0.944499,
		45.070255, 52.427670, 49.617592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908653, 53.188507, 49.357754>,  <44.863342, 52.528011, 48.956444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908653, 53.188507, 49.357754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193417, 52.929588, 49.466705>,  <45.364273, 52.774235, 49.532078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193417, 52.929588, 49.466705>,  <44.908653, 53.188507, 49.357754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193417, 52.929588, 49.466705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700400, 0.682728, -0.208138,
		-0.051232, 0.338949, 0.939409,
		0.711909, -0.647299, 0.272378,
		45.406990, 52.735397, 49.548420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353443, 53.379818, 49.957737>,  <44.908653, 53.188507, 49.357754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353443, 53.379818, 49.957737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510502, 53.161999, 49.661278>,  <45.604736, 53.031307, 49.483402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510502, 53.161999, 49.661278>,  <45.353443, 53.379818, 49.957737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510502, 53.161999, 49.661278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620160, 0.751853, -0.223870,
		0.679142, -0.371728, 0.632918,
		0.392642, -0.544550, -0.741146,
		45.628296, 52.998634, 49.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055088, 53.380077, 50.033436>,  <45.353443, 53.379818, 49.957737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055088, 53.380077, 50.033436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032150, 53.290161, 49.644348>,  <46.018387, 53.236210, 49.410896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032150, 53.290161, 49.644348>,  <46.055088, 53.380077, 50.033436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032150, 53.290161, 49.644348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674777, 0.709349, -0.203713,
		0.735790, -0.668050, 0.111006,
		-0.057349, -0.224794, -0.972717,
		46.014946, 53.222721, 49.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625591, 53.420708, 50.477722>,  <46.055088, 53.380077, 50.033436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625591, 53.420708, 50.477722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372051, 53.656265, 50.678299>,  <46.219929, 53.797600, 50.798645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.372051, 53.656265, 50.678299>,  <46.625591, 53.420708, 50.477722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372051, 53.656265, 50.678299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766911, -0.394360, -0.506288,
		-0.100402, -0.705469, 0.701593,
		-0.633851, 0.588891, 0.501438,
		46.181896, 53.832932, 50.828732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535404, 53.710426, 51.172852>,  <46.625591, 53.420708, 50.477722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535404, 53.710426, 51.172852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220783, 53.913296, 51.313766>,  <46.032009, 54.035019, 51.398315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220783, 53.913296, 51.313766>,  <46.535404, 53.710426, 51.172852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220783, 53.913296, 51.313766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567066, -0.819077, -0.086887,
		0.244486, -0.268114, 0.931849,
		-0.786551, 0.507177, 0.352291,
		45.984818, 54.065449, 51.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247540, 53.365746, 51.727470>,  <46.535404, 53.710426, 51.172852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247540, 53.365746, 51.727470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975563, 53.589363, 51.537674>,  <45.812378, 53.723534, 51.423798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.975563, 53.589363, 51.537674>,  <46.247540, 53.365746, 51.727470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975563, 53.589363, 51.537674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555944, -0.814974, -0.163535,
		-0.478121, 0.152596, 0.864936,
		-0.679945, 0.559046, -0.474491,
		45.771580, 53.757076, 51.395325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081806, 52.763378, 52.217983>,  <46.247540, 53.365746, 51.727470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081806, 52.763378, 52.217983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002972, 52.560616, 52.553650>,  <45.955673, 52.438957, 52.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002972, 52.560616, 52.553650>,  <46.081806, 52.763378, 52.217983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002972, 52.560616, 52.553650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719621, 0.506509, 0.474968,
		-0.665810, 0.697492, 0.264956,
		-0.197084, -0.506906, 0.839169,
		45.943848, 52.408543, 52.805401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085262, 53.197880, 52.781746>,  <46.081806, 52.763378, 52.217983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085262, 53.197880, 52.781746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192482, 52.825039, 52.879177>,  <46.256813, 52.601334, 52.937634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192482, 52.825039, 52.879177>,  <46.085262, 53.197880, 52.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192482, 52.825039, 52.879177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880217, 0.339722, 0.331370,
		-0.391619, 0.125573, 0.911518,
		0.268052, -0.932105, 0.243574,
		46.272896, 52.545406, 52.952248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196648, 53.059689, 53.478474>,  <46.085262, 53.197880, 52.781746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196648, 53.059689, 53.478474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430805, 52.799328, 53.285130>,  <46.571301, 52.643112, 53.169125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430805, 52.799328, 53.285130>,  <46.196648, 53.059689, 53.478474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430805, 52.799328, 53.285130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792384, 0.333175, 0.511001,
		-0.171570, -0.682144, 0.710805,
		0.585398, -0.650903, -0.483357,
		46.606426, 52.604057, 53.140121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618938, 52.599838, 53.884750>,  <46.196648, 53.059689, 53.478474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618938, 52.599838, 53.884750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844810, 52.665863, 53.561295>,  <46.980331, 52.705479, 53.367222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844810, 52.665863, 53.561295>,  <46.618938, 52.599838, 53.884750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844810, 52.665863, 53.561295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796959, 0.145562, 0.586232,
		0.214472, -0.975483, -0.049352,
		0.564675, 0.165062, -0.808638,
		47.014214, 52.715382, 53.318703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188156, 52.156437, 53.827366>,  <46.618938, 52.599838, 53.884750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188156, 52.156437, 53.827366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284405, 52.519440, 53.689651>,  <47.342155, 52.737240, 53.607021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284405, 52.519440, 53.689651>,  <47.188156, 52.156437, 53.827366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284405, 52.519440, 53.689651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760196, 0.044338, 0.648178,
		0.603491, -0.417690, -0.679215,
		0.240623, 0.907507, -0.344284,
		47.356590, 52.791691, 53.586365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904850, 52.290321, 54.048706>,  <47.188156, 52.156437, 53.827366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904850, 52.290321, 54.048706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788006, 52.652214, 53.924683>,  <47.717899, 52.869350, 53.850269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788006, 52.652214, 53.924683>,  <47.904850, 52.290321, 54.048706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788006, 52.652214, 53.924683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768171, 0.415079, 0.487465,
		0.569723, -0.095786, -0.816235,
		-0.292110, 0.904729, -0.310060,
		47.700375, 52.923634, 53.831665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.267204, 52.662128, 53.535645>,  <47.904850, 52.290321, 54.048706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.267204, 52.662128, 53.535645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.133198, 52.879822, 53.843300>,  <48.052795, 53.010437, 54.027893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.133198, 52.879822, 53.843300>,  <48.267204, 52.662128, 53.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.133198, 52.879822, 53.843300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939623, 0.132502, 0.315517,
		0.069802, 0.828405, -0.555763,
		-0.335016, 0.544232, 0.769140,
		48.032692, 53.043091, 54.074043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.400829, 53.393028, 53.476196>,  <48.267204, 52.662128, 53.535645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.400829, 53.393028, 53.476196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.391449, 53.305779, 53.866451>,  <48.385818, 53.253429, 54.100605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.391449, 53.305779, 53.866451>,  <48.400829, 53.393028, 53.476196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.391449, 53.305779, 53.866451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921987, 0.372582, 0.105466,
		-0.386510, 0.901999, 0.192372,
		-0.023455, -0.218128, 0.975638,
		48.384411, 53.240341, 54.159142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.844257, 53.850586, 53.717979>,  <48.400829, 53.393028, 53.476196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.844257, 53.850586, 53.717979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.818581, 53.606308, 54.033684>,  <48.803177, 53.459740, 54.223106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.818581, 53.606308, 54.033684>,  <48.844257, 53.850586, 53.717979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.818581, 53.606308, 54.033684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942293, 0.223317, 0.249426,
		-0.328578, 0.759725, 0.561119,
		-0.064188, -0.610695, 0.789260,
		48.799324, 53.423100, 54.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.019615, 54.248291, 54.429428>,  <48.844257, 53.850586, 53.717979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.019615, 54.248291, 54.429428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.068565, 53.851376, 54.421646>,  <49.097935, 53.613224, 54.416977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.068565, 53.851376, 54.421646>,  <49.019615, 54.248291, 54.429428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.068565, 53.851376, 54.421646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958683, 0.113112, 0.261022,
		-0.256810, -0.050596, 0.965137,
		0.122376, -0.992293, -0.019457,
		49.105278, 53.553688, 54.415810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.394241, 54.098526, 55.080212>,  <49.019615, 54.248291, 54.429428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.394241, 54.098526, 55.080212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.439114, 53.817883, 54.798740>,  <49.466038, 53.649498, 54.629856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.439114, 53.817883, 54.798740>,  <49.394241, 54.098526, 55.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.439114, 53.817883, 54.798740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973961, -0.062769, 0.217852,
		-0.197016, -0.709795, 0.676296,
		0.112180, -0.701606, -0.703679,
		49.472767, 53.607399, 54.587635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.732918, 53.405460, 55.316589>,  <49.394241, 54.098526, 55.080212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.732918, 53.405460, 55.316589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.821678, 53.506004, 54.939743>,  <49.874935, 53.566330, 54.713634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.821678, 53.506004, 54.939743>,  <49.732918, 53.405460, 55.316589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.821678, 53.506004, 54.939743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973560, -0.003358, 0.228409,
		0.054249, -0.967888, -0.245460,
		0.221899, 0.251361, -0.942114,
		49.888248, 53.581413, 54.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.305618, 53.008724, 55.108292>,  <49.732918, 53.405460, 55.316589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.305618, 53.008724, 55.108292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.299225, 53.302963, 54.837402>,  <50.295387, 53.479507, 54.674870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.299225, 53.302963, 54.837402>,  <50.305618, 53.008724, 55.108292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.299225, 53.302963, 54.837402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984189, 0.131069, 0.119137,
		0.176401, -0.664613, -0.726067,
		-0.015984, 0.735602, -0.677225,
		50.294430, 53.523643, 54.634235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.739624, 52.866699, 54.484268>,  <50.305618, 53.008724, 55.108292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.739624, 52.866699, 54.484268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.684113, 53.245995, 54.598522>,  <50.650806, 53.473572, 54.667072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.684113, 53.245995, 54.598522>,  <50.739624, 52.866699, 54.484268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.684113, 53.245995, 54.598522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987299, 0.154996, -0.034874,
		-0.077341, 0.277166, -0.957704,
		-0.138774, 0.948238, 0.285633,
		50.642479, 53.530464, 54.684212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.086102, 53.389492, 54.035667>,  <50.739624, 52.866699, 54.484268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.086102, 53.389492, 54.035667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021030, 53.552486, 54.395111>,  <50.981987, 53.650284, 54.610775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.021030, 53.552486, 54.395111>,  <51.086102, 53.389492, 54.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.021030, 53.552486, 54.395111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922965, 0.384812, -0.007408,
		-0.348813, 0.828177, -0.438694,
		-0.162680, 0.407483, 0.898606,
		50.972225, 53.674732, 54.664692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.204624, 54.161777, 53.937614>,  <51.086102, 53.389492, 54.035667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.204624, 54.161777, 53.937614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.268311, 54.045456, 54.314991>,  <51.306522, 53.975662, 54.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.268311, 54.045456, 54.314991>,  <51.204624, 54.161777, 53.937614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.268311, 54.045456, 54.314991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966177, 0.242265, -0.088373,
		-0.202864, 0.925603, 0.319540,
		0.159212, -0.290804, 0.943443,
		51.316074, 53.958214, 54.598022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.374149, 54.689762, 54.489014>,  <51.204624, 54.161777, 53.937614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.374149, 54.689762, 54.489014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.561348, 54.337162, 54.514130>,  <51.673668, 54.125603, 54.529198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.561348, 54.337162, 54.514130>,  <51.374149, 54.689762, 54.489014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.561348, 54.337162, 54.514130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877416, 0.455001, -0.152035,
		0.105450, 0.126244, 0.986379,
		0.467997, -0.881497, 0.062789,
		51.701748, 54.072712, 54.532967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.026245, 54.700287, 54.994995>,  <51.374149, 54.689762, 54.489014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.026245, 54.700287, 54.994995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.032120, 54.453571, 54.680199>,  <52.035645, 54.305542, 54.491322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.032120, 54.453571, 54.680199>,  <52.026245, 54.700287, 54.994995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.032120, 54.453571, 54.680199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932118, 0.293284, -0.212462,
		0.361857, -0.730445, 0.579232,
		0.014687, -0.616793, -0.786988,
		52.036526, 54.268532, 54.444103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.670071, 54.204639, 55.030434>,  <52.026245, 54.700287, 54.994995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.670071, 54.204639, 55.030434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.562214, 54.272594, 54.651291>,  <52.497498, 54.313370, 54.423805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.562214, 54.272594, 54.651291>,  <52.670071, 54.204639, 55.030434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.562214, 54.272594, 54.651291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956304, 0.162774, -0.242872,
		0.113025, -0.971927, -0.206360,
		-0.269643, 0.169892, -0.947855,
		52.481319, 54.323563, 54.366936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.219582, 54.008656, 54.646481>,  <52.670071, 54.204639, 55.030434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.219582, 54.008656, 54.646481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004631, 54.297882, 54.472862>,  <52.875660, 54.471416, 54.368690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004631, 54.297882, 54.472862>,  <53.219582, 54.008656, 54.646481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.004631, 54.297882, 54.472862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816504, 0.574883, -0.053210,
		0.211053, -0.382996, -0.899317,
		-0.537381, 0.723065, -0.434049,
		52.843418, 54.514801, 54.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.382748, 54.186008, 54.008148>,  <53.219582, 54.008656, 54.646481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.382748, 54.186008, 54.008148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.235886, 54.527439, 54.155991>,  <53.147770, 54.732296, 54.244694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.235886, 54.527439, 54.155991>,  <53.382748, 54.186008, 54.008148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.235886, 54.527439, 54.155991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869798, 0.455868, -0.188774,
		-0.329623, 0.252170, -0.909813,
		-0.367151, 0.853577, 0.369601,
		53.125740, 54.783512, 54.266872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.604046, 54.769707, 53.456532>,  <53.382748, 54.186008, 54.008148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.604046, 54.769707, 53.456532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.558708, 54.809105, 53.851997>,  <53.531506, 54.832745, 54.089275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.558708, 54.809105, 53.851997>,  <53.604046, 54.769707, 53.456532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.558708, 54.809105, 53.851997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943853, 0.321463, 0.076176,
		-0.310315, 0.941785, -0.129404,
		-0.113340, 0.098500, 0.988662,
		53.524708, 54.838654, 54.148598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.288052, 54.922100, 53.618652>,  <53.604046, 54.769707, 53.456532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.288052, 54.922100, 53.618652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.072136, 54.923737, 53.955368>,  <53.942585, 54.924717, 54.157398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.072136, 54.923737, 53.955368>,  <54.288052, 54.922100, 53.618652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.072136, 54.923737, 53.955368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801949, 0.306530, 0.512755,
		-0.255938, 0.951852, -0.168740,
		-0.539791, 0.004088, 0.841789,
		53.910198, 54.924961, 54.207905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.119995, 55.718777, 53.907970>,  <54.288052, 54.922100, 53.618652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.119995, 55.718777, 53.907970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.159912, 55.410809, 54.160084>,  <54.183861, 55.226028, 54.311352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.159912, 55.410809, 54.160084>,  <54.119995, 55.718777, 53.907970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.159912, 55.410809, 54.160084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816662, 0.425249, 0.390163,
		-0.568424, 0.475797, 0.671202,
		0.099790, -0.769923, 0.630286,
		54.189850, 55.179832, 54.349171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.100647, 56.029751, 54.582336>,  <54.119995, 55.718777, 53.907970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.100647, 56.029751, 54.582336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.348724, 55.716129, 54.572426>,  <54.497570, 55.527954, 54.566479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.348724, 55.716129, 54.572426>,  <54.100647, 56.029751, 54.582336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.348724, 55.716129, 54.572426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751597, 0.584882, 0.304983,
		-0.224633, -0.207771, 0.952035,
		0.620195, -0.784056, -0.024776,
		54.534782, 55.480911, 54.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.477619, 56.126740, 55.098988>,  <54.100647, 56.029751, 54.582336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.477619, 56.126740, 55.098988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.699371, 55.882225, 54.873070>,  <54.832420, 55.735516, 54.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.699371, 55.882225, 54.873070>,  <54.477619, 56.126740, 55.098988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.699371, 55.882225, 54.873070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808887, 0.555459, 0.192785,
		0.195870, -0.563727, 0.802400,
		0.554379, -0.611291, -0.564790,
		54.865685, 55.698837, 54.703632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.216213, 56.334251, 54.931095>,  <54.477619, 56.126740, 55.098988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.216213, 56.334251, 54.931095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.343033, 55.972950, 55.046761>,  <55.419125, 55.756168, 55.116158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.343033, 55.972950, 55.046761>,  <55.216213, 56.334251, 54.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.343033, 55.972950, 55.046761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375893, -0.160244, -0.912703,
		0.870738, 0.398066, 0.288721,
		0.317050, -0.903253, 0.289160,
		55.438148, 55.701973, 55.133507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.988785, 56.644329, 55.091061>,  <55.216213, 56.334251, 54.931095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.988785, 56.644329, 55.091061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.109161, 56.881546, 55.389786>,  <56.181389, 57.023876, 55.569023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.109161, 56.881546, 55.389786>,  <55.988785, 56.644329, 55.091061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.109161, 56.881546, 55.389786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043781, 0.790885, -0.610397,
		-0.952636, 0.150999, 0.263976,
		0.300944, 0.593044, 0.746814,
		56.199444, 57.059460, 55.613831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.448601, 57.302288, 55.169636>,  <55.988785, 56.644329, 55.091061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.448601, 57.302288, 55.169636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.836693, 57.337822, 55.259758>,  <56.069550, 57.359142, 55.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.836693, 57.337822, 55.259758>,  <55.448601, 57.302288, 55.169636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.836693, 57.337822, 55.259758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012111, 0.911339, -0.411479,
		-0.241887, 0.401957, 0.883131,
		0.970229, 0.088836, 0.225309,
		56.127762, 57.364471, 55.327351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.599876, 57.932522, 55.483425>,  <55.448601, 57.302288, 55.169636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.599876, 57.932522, 55.483425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.939270, 57.837479, 55.294273>,  <56.142906, 57.780453, 55.180782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.939270, 57.837479, 55.294273>,  <55.599876, 57.932522, 55.483425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.939270, 57.837479, 55.294273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045244, 0.922843, -0.382511,
		0.527282, 0.303159, 0.793768,
		0.848485, -0.237605, -0.472882,
		56.193817, 57.766197, 55.152409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.166145, 58.453861, 55.511841>,  <55.599876, 57.932522, 55.483425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.166145, 58.453861, 55.511841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.245865, 58.232674, 55.188232>,  <56.293697, 58.099960, 54.994068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.245865, 58.232674, 55.188232>,  <56.166145, 58.453861, 55.511841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.245865, 58.232674, 55.188232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083500, 0.812994, -0.576254,
		0.976375, 0.182400, 0.115857,
		0.199300, -0.552966, -0.809017,
		56.305656, 58.066784, 54.945526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.508381, 58.913227, 55.119518>,  <56.166145, 58.453861, 55.511841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.508381, 58.913227, 55.119518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.379616, 58.618935, 54.881165>,  <56.302357, 58.442360, 54.738152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.379616, 58.618935, 54.881165>,  <56.508381, 58.913227, 55.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.379616, 58.618935, 54.881165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274997, 0.674909, -0.684744,
		0.905951, -0.056563, -0.419586,
		-0.321914, -0.735730, -0.595880,
		56.283043, 58.398216, 54.702400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.092213, 59.290379, 54.741119>,  <56.508381, 58.913227, 55.119518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.092213, 59.290379, 54.741119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.476883, 59.224113, 54.653717>,  <56.707684, 59.184357, 54.601276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.476883, 59.224113, 54.653717>,  <56.092213, 59.290379, 54.741119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.476883, 59.224113, 54.653717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090762, 0.944261, -0.316437,
		0.258744, 0.284477, 0.923106,
		0.961672, -0.165659, -0.218503,
		56.765385, 59.174416, 54.588165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.389065, 59.964542, 54.645393>,  <56.092213, 59.290379, 54.741119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.389065, 59.964542, 54.645393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.671028, 59.748421, 54.461575>,  <56.840206, 59.618748, 54.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.671028, 59.748421, 54.461575>,  <56.389065, 59.964542, 54.645393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.671028, 59.748421, 54.461575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172857, 0.759206, -0.627476,
		0.687914, 0.362877, 0.628565,
		0.704907, -0.540302, -0.459543,
		56.882500, 59.586330, 54.323711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.112778, 60.363907, 54.636669>,  <56.389065, 59.964542, 54.645393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.112778, 60.363907, 54.636669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.084801, 60.123131, 54.318481>,  <57.068016, 59.978664, 54.127567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.084801, 60.123131, 54.318481>,  <57.112778, 60.363907, 54.636669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.084801, 60.123131, 54.318481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118557, 0.786758, -0.605769,
		0.990481, -0.136676, 0.016339,
		-0.069939, -0.601940, -0.795473,
		57.063820, 59.942551, 54.079838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.706753, 60.288074, 54.301754>,  <57.112778, 60.363907, 54.636669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.706753, 60.288074, 54.301754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.396156, 60.243843, 54.053612>,  <57.209801, 60.217304, 53.904728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.396156, 60.243843, 54.053612>,  <57.706753, 60.288074, 54.301754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.396156, 60.243843, 54.053612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308358, 0.791869, -0.527124,
		0.549526, -0.600596, -0.580780,
		-0.776490, -0.110580, -0.620351,
		57.163208, 60.210670, 53.867508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.566845, 59.602455, 54.087601>,  <57.706753, 60.288074, 54.301754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.566845, 59.602455, 54.087601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.808754, 59.298363, 53.992691>,  <57.953899, 59.115906, 53.935745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.808754, 59.298363, 53.992691>,  <57.566845, 59.602455, 54.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.808754, 59.298363, 53.992691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242825, -0.107720, 0.964071,
		-0.758480, -0.640655, 0.119458,
		0.604769, -0.760235, -0.237271,
		57.990185, 59.070293, 53.921509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.414509, 58.987125, 54.498367>,  <57.566845, 59.602455, 54.087601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.414509, 58.987125, 54.498367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.792671, 59.049400, 54.383842>,  <58.019569, 59.086765, 54.315128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.792671, 59.049400, 54.383842>,  <57.414509, 58.987125, 54.498367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.792671, 59.049400, 54.383842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325495, -0.407271, 0.853336,
		0.016251, -0.899939, -0.435712,
		0.945404, 0.155690, -0.286308,
		58.076294, 59.096107, 54.297951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.946930, 58.346581, 54.325695>,  <57.414509, 58.987125, 54.498367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.946930, 58.346581, 54.325695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.065231, 58.673386, 54.523693>,  <58.136211, 58.869469, 54.642494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.065231, 58.673386, 54.523693>,  <57.946930, 58.346581, 54.325695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.065231, 58.673386, 54.523693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248608, -0.566152, 0.785918,
		0.922348, -0.109375, -0.370555,
		0.295750, 0.817012, 0.494998,
		58.153957, 58.918488, 54.672192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.587715, 58.075027, 54.563213>,  <57.946930, 58.346581, 54.325695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.587715, 58.075027, 54.563213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.425285, 58.378571, 54.766876>,  <58.327827, 58.560696, 54.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.425285, 58.378571, 54.766876>,  <58.587715, 58.075027, 54.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.425285, 58.378571, 54.766876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340922, -0.391133, 0.854861,
		0.847864, 0.520721, -0.099881,
		-0.406077, 0.758858, 0.509153,
		58.303463, 58.606228, 54.919621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.051765, 58.278744, 55.082191>,  <58.587715, 58.075027, 54.563213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.051765, 58.278744, 55.082191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.677612, 58.295467, 55.222656>,  <58.453121, 58.305500, 55.306934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.677612, 58.295467, 55.222656>,  <59.051765, 58.278744, 55.082191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.677612, 58.295467, 55.222656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232258, -0.676195, 0.699155,
		0.266686, 0.735536, 0.622789,
		-0.935380, 0.041807, 0.351166,
		58.396999, 58.308010, 55.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.975941, 58.534882, 55.816826>,  <59.051765, 58.278744, 55.082191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.975941, 58.534882, 55.816826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.670685, 58.283081, 55.758385>,  <58.487530, 58.132000, 55.723320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.670685, 58.283081, 55.758385>,  <58.975941, 58.534882, 55.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.670685, 58.283081, 55.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284814, -0.530577, 0.798354,
		-0.580084, 0.567643, 0.584195,
		-0.763141, -0.629499, -0.146107,
		58.441742, 58.094231, 55.714554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.473125, 58.240799, 56.390549>,  <58.975941, 58.534882, 55.816826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.473125, 58.240799, 56.390549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.427383, 58.247589, 55.993233>,  <59.399937, 58.251663, 55.754841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.427383, 58.247589, 55.993233>,  <59.473125, 58.240799, 56.390549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.427383, 58.247589, 55.993233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993436, 0.004473, -0.114299,
		0.002503, -0.999846, -0.017370,
		-0.114360, 0.016970, -0.993295,
		59.393074, 58.252682, 55.695244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.908089, 57.738121, 56.040020>,  <59.473125, 58.240799, 56.390549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.908089, 57.738121, 56.040020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.848991, 58.046223, 55.791862>,  <59.813534, 58.231083, 55.642967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.848991, 58.046223, 55.791862>,  <59.908089, 57.738121, 56.040020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.848991, 58.046223, 55.791862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962738, -0.031662, -0.268576,
		-0.226514, -0.636953, -0.736873,
		-0.147739, 0.770252, -0.620391,
		59.804668, 58.277298, 55.605743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.321365, 57.544258, 55.558582>,  <59.908089, 57.738121, 56.040020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.321365, 57.544258, 55.558582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.286064, 57.942348, 55.575287>,  <60.264885, 58.181202, 55.585308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.286064, 57.942348, 55.575287>,  <60.321365, 57.544258, 55.558582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.286064, 57.942348, 55.575287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993173, 0.091123, -0.072825,
		-0.076282, 0.035045, -0.996470,
		-0.088249, 0.995223, 0.041757,
		60.259590, 58.240917, 55.587814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.942905, 57.716408, 55.451847>,  <60.321365, 57.544258, 55.558582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.942905, 57.716408, 55.451847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769356, 58.040779, 55.608894>,  <60.665226, 58.235401, 55.703125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.769356, 58.040779, 55.608894>,  <60.942905, 57.716408, 55.451847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.769356, 58.040779, 55.608894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895110, 0.338327, 0.290366,
		0.102631, 0.477422, -0.872660,
		-0.433872, 0.810927, 0.392622,
		60.639194, 58.284058, 55.726681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.429810, 58.282196, 55.327503>,  <60.942905, 57.716408, 55.451847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.429810, 58.282196, 55.327503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.183914, 58.355309, 55.634407>,  <61.036377, 58.399174, 55.818550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.183914, 58.355309, 55.634407>,  <61.429810, 58.282196, 55.327503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.183914, 58.355309, 55.634407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747997, 0.443673, 0.493615,
		-0.250189, 0.877352, -0.409462,
		-0.614741, 0.182779, 0.767258,
		60.999493, 58.410141, 55.864586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.620823, 59.050625, 55.507111>,  <61.429810, 58.282196, 55.327503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.620823, 59.050625, 55.507111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497429, 58.841797, 55.825172>,  <61.423393, 58.716499, 56.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.497429, 58.841797, 55.825172>,  <61.620823, 59.050625, 55.507111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.497429, 58.841797, 55.825172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906511, 0.091939, 0.412051,
		-0.288227, 0.847931, 0.444903,
		-0.308486, -0.522074, 0.795157,
		61.404884, 58.685173, 56.063721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.882309, 59.429676, 56.129025>,  <61.620823, 59.050625, 55.507111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.882309, 59.429676, 56.129025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.815491, 59.050163, 56.236282>,  <61.775398, 58.822456, 56.300636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.815491, 59.050163, 56.236282>,  <61.882309, 59.429676, 56.129025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.815491, 59.050163, 56.236282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689062, 0.082171, 0.720029,
		-0.705187, 0.305047, 0.640045,
		-0.167049, -0.948786, 0.268142,
		61.765377, 58.765526, 56.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.488335, 59.340988, 56.665730>,  <61.882309, 59.429676, 56.129025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.488335, 59.340988, 56.665730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.810242, 59.118538, 56.582718>,  <62.003387, 58.985069, 56.532909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.810242, 59.118538, 56.582718>,  <61.488335, 59.340988, 56.665730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.810242, 59.118538, 56.582718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448741, 0.341144, 0.825985,
		-0.388554, -0.757856, 0.524099,
		0.804772, -0.556124, -0.207529,
		62.051674, 58.951702, 56.520458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.709560, 59.122398, 57.279423>,  <61.488335, 59.340988, 56.665730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.709560, 59.122398, 57.279423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.023705, 59.077965, 57.035828>,  <62.212193, 59.051304, 56.889671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.023705, 59.077965, 57.035828>,  <61.709560, 59.122398, 57.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.023705, 59.077965, 57.035828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604453, 0.349881, 0.715695,
		0.133574, -0.930185, 0.341926,
		0.785363, -0.111080, -0.608989,
		62.259312, 59.044640, 56.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.202942, 58.728664, 57.595108>,  <61.709560, 59.122398, 57.279423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.202942, 58.728664, 57.595108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405251, 58.952721, 57.332680>,  <62.526638, 59.087154, 57.175220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.405251, 58.952721, 57.332680>,  <62.202942, 58.728664, 57.595108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.405251, 58.952721, 57.332680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518471, 0.410461, 0.750139,
		0.689476, -0.719558, -0.082816,
		0.505776, 0.560141, -0.656074,
		62.556984, 59.120762, 57.135857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.878098, 58.471256, 57.635414>,  <62.202942, 58.728664, 57.595108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.878098, 58.471256, 57.635414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.846214, 58.846283, 57.500000>,  <62.827084, 59.071301, 57.418751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.846214, 58.846283, 57.500000>,  <62.878098, 58.471256, 57.635414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.846214, 58.846283, 57.500000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642960, 0.307886, 0.701291,
		0.761741, -0.161766, -0.627362,
		-0.079711, 0.937570, -0.338538,
		62.822300, 59.127556, 57.398438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.547882, 58.865433, 57.762222>,  <62.878098, 58.471256, 57.635414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.547882, 58.865433, 57.762222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.248566, 59.130775, 57.760208>,  <63.068977, 59.289982, 57.758999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.248566, 59.130775, 57.760208>,  <63.547882, 58.865433, 57.762222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.248566, 59.130775, 57.760208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524708, 0.596502, 0.607343,
		0.405885, 0.451828, -0.794424,
		-0.748290, 0.663352, -0.005033,
		63.024078, 59.329781, 57.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.308769, 58.443195, 57.814354>,  <63.547882, 58.865433, 57.762222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.308769, 58.443195, 57.814354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.677666, 58.597347, 57.826668>,  <64.899002, 58.689838, 57.834057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.677666, 58.597347, 57.826668>,  <64.308769, 58.443195, 57.814354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.677666, 58.597347, 57.826668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287669, 0.630839, 0.720617,
		0.258293, -0.673440, 0.692649,
		0.922242, 0.385384, 0.030787,
		64.954338, 58.712963, 57.835903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.435692, 59.205879, 57.678631>,  <64.308769, 58.443195, 57.814354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.435692, 59.205879, 57.678631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.460930, 59.336861, 57.301529>,  <64.476074, 59.415451, 57.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.460930, 59.336861, 57.301529>,  <64.435692, 59.205879, 57.678631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.460930, 59.336861, 57.301529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849683, 0.477886, 0.222855,
		0.523505, -0.815106, -0.248082,
		0.063095, 0.327457, -0.942757,
		64.479858, 59.435097, 57.018703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.944260, 58.855114, 57.251896>,  <64.435692, 59.205879, 57.678631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.944260, 58.855114, 57.251896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.874527, 59.236027, 57.151680>,  <64.832687, 59.464573, 57.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.874527, 59.236027, 57.151680>,  <64.944260, 58.855114, 57.251896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.874527, 59.236027, 57.151680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945701, 0.232807, 0.226826,
		0.274330, -0.197396, -0.941158,
		-0.174334, 0.952279, -0.250544,
		64.822227, 59.521709, 57.076515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.426163, 59.049572, 56.725594>,  <64.944260, 58.855114, 57.251896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.426163, 59.049572, 56.725594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.316345, 59.347042, 56.969421>,  <65.250450, 59.525524, 57.115719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.316345, 59.347042, 56.969421>,  <65.426163, 59.049572, 56.725594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.316345, 59.347042, 56.969421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936368, 0.062580, 0.345396,
		0.218715, 0.665610, -0.713532,
		-0.274552, 0.743672, 0.609569,
		65.233978, 59.570145, 57.152290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.910370, 59.592934, 56.527435>,  <65.426163, 59.049572, 56.725594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.910370, 59.592934, 56.527435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.790588, 59.614220, 56.908485>,  <65.718719, 59.626991, 57.137115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.790588, 59.614220, 56.908485>,  <65.910370, 59.592934, 56.527435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.790588, 59.614220, 56.908485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910132, 0.315574, 0.268464,
		-0.286338, 0.947408, -0.142932,
		-0.299450, 0.053216, 0.952627,
		65.700752, 59.630184, 57.194275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.414696, 60.023235, 56.633865>,  <65.910370, 59.592934, 56.527435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.414696, 60.023235, 56.633865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.251961, 59.914474, 56.982704>,  <66.154320, 59.849216, 57.192009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.251961, 59.914474, 56.982704>,  <66.414696, 60.023235, 56.633865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.251961, 59.914474, 56.982704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893721, 0.079134, 0.441589,
		-0.189082, 0.959066, 0.210809,
		-0.406830, -0.271901, 0.872100,
		66.129913, 59.832905, 57.244335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.499718, 60.550060, 57.171089>,  <66.414696, 60.023235, 56.633865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.499718, 60.550060, 57.171089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.476433, 60.189224, 57.342133>,  <66.462463, 59.972725, 57.444759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.476433, 60.189224, 57.342133>,  <66.499718, 60.550060, 57.171089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.476433, 60.189224, 57.342133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855451, 0.175714, 0.487163,
		-0.514601, 0.394160, 0.761462,
		-0.058221, -0.902088, 0.427607,
		66.458969, 59.918598, 57.470413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.513458, 60.724209, 57.881947>,  <66.499718, 60.550060, 57.171089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.513458, 60.724209, 57.881947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.662369, 60.358116, 57.820290>,  <66.751717, 60.138462, 57.783295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.662369, 60.358116, 57.820290>,  <66.513458, 60.724209, 57.881947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.662369, 60.358116, 57.820290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794174, 0.228185, 0.563221,
		-0.480304, -0.332093, 0.811802,
		0.372283, -0.915230, -0.154141,
		66.774055, 60.083546, 57.774048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.870010, 60.573097, 58.413258>,  <66.513458, 60.724209, 57.881947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.870010, 60.573097, 58.413258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025833, 60.252110, 58.232468>,  <67.119324, 60.059517, 58.123993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.025833, 60.252110, 58.232468>,  <66.870010, 60.573097, 58.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.025833, 60.252110, 58.232468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792485, 0.042016, 0.608442,
		-0.469268, -0.595208, 0.652315,
		0.389557, -0.802472, -0.451977,
		67.142700, 60.011368, 58.096874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.090530, 59.875519, 58.803974>,  <66.870010, 60.573097, 58.413258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.090530, 59.875519, 58.803974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.330208, 59.973030, 58.498940>,  <67.474014, 60.031536, 58.315918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.330208, 59.973030, 58.498940>,  <67.090530, 59.875519, 58.803974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.330208, 59.973030, 58.498940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762812, 0.115337, 0.636251,
		0.243057, -0.962949, -0.116846,
		0.599201, 0.243777, -0.762582,
		67.509972, 60.046162, 58.270164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.660652, 59.476490, 58.911118>,  <67.090530, 59.875519, 58.803974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.660652, 59.476490, 58.911118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.745537, 59.799908, 58.691582>,  <67.796463, 59.993958, 58.559860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.745537, 59.799908, 58.691582>,  <67.660652, 59.476490, 58.911118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.745537, 59.799908, 58.691582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650718, 0.302092, 0.696640,
		0.729064, -0.504971, -0.462029,
		0.212207, 0.808545, -0.548838,
		67.809196, 60.042473, 58.526932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.414024, 59.510040, 58.544426>,  <67.660652, 59.476490, 58.911118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.414024, 59.510040, 58.544426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.200775, 59.822094, 58.675377>,  <68.072830, 60.009327, 58.753948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.200775, 59.822094, 58.675377>,  <68.414024, 59.510040, 58.544426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.200775, 59.822094, 58.675377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657818, 0.138887, 0.740261,
		0.532035, 0.609999, -0.587231,
		-0.533117, 0.780136, 0.327375,
		68.040840, 60.056133, 58.773590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.709236, 59.500858, 59.242752>,  <68.414024, 59.510040, 58.544426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.709236, 59.500858, 59.242752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.820717, 59.671593, 59.586876>,  <68.887604, 59.774033, 59.793350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.820717, 59.671593, 59.586876>,  <68.709236, 59.500858, 59.242752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.820717, 59.671593, 59.586876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090982, -0.880040, 0.466103,
		0.956056, -0.208180, -0.206441,
		0.278710, 0.426838, 0.860308,
		68.904327, 59.799644, 59.844967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.132217, 59.064034, 59.697502>,  <68.709236, 59.500858, 59.242752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.132217, 59.064034, 59.697502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.016624, 59.336647, 59.966423>,  <68.947266, 59.500217, 60.127777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.016624, 59.336647, 59.966423>,  <69.132217, 59.064034, 59.697502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.016624, 59.336647, 59.966423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166236, -0.727323, 0.665857,
		0.942792, 0.080658, 0.323478,
		-0.288980, 0.681538, 0.672306,
		68.929932, 59.541107, 60.168114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.882912, 58.845436, 59.663792>,  <69.132217, 59.064034, 59.697502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.882912, 58.845436, 59.663792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.110779, 58.546764, 59.801170>,  <70.247498, 58.367561, 59.883598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.110779, 58.546764, 59.801170>,  <69.882912, 58.845436, 59.663792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.110779, 58.546764, 59.801170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657347, -0.163098, 0.735727,
		-0.493336, -0.644880, -0.583738,
		0.569662, -0.746679, 0.343447,
		70.281677, 58.322762, 59.904205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.558441, 58.770462, 59.956371>,  <69.882912, 58.845436, 59.663792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.558441, 58.770462, 59.956371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.511993, 58.390923, 59.838936>,  <70.484123, 58.163197, 59.768475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.511993, 58.390923, 59.838936>,  <70.558441, 58.770462, 59.956371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.511993, 58.390923, 59.838936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246698, -0.258776, 0.933903,
		-0.962110, 0.180875, -0.204030,
		-0.116122, -0.948852, -0.293592,
		70.477158, 58.106266, 59.750858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.488159, 58.584488, 59.313091>,  <70.558441, 58.770462, 59.956371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.488159, 58.584488, 59.313091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.480904, 58.185143, 59.334801>,  <70.476547, 57.945538, 59.347828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.480904, 58.185143, 59.334801>,  <70.488159, 58.584488, 59.313091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.480904, 58.185143, 59.334801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909746, -0.039001, -0.413330,
		0.414769, 0.041879, 0.908962,
		-0.018141, -0.998361, 0.054276,
		70.475464, 57.885635, 59.351082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.101913, 58.370075, 59.637505>,  <70.488159, 58.584488, 59.313091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.101913, 58.370075, 59.637505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.986443, 58.049881, 59.427399>,  <70.917160, 57.857765, 59.301334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.986443, 58.049881, 59.427399>,  <71.101913, 58.370075, 59.637505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.986443, 58.049881, 59.427399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946746, -0.320383, -0.032052,
		-0.142628, -0.506541, 0.850337,
		-0.288669, -0.800481, -0.525261,
		70.899841, 57.809738, 59.269821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.585526, 57.714050, 59.645920>,  <71.101913, 58.370075, 59.637505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.585526, 57.714050, 59.645920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776077, 57.378712, 59.751930>,  <71.890411, 57.177509, 59.815536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776077, 57.378712, 59.751930>,  <71.585526, 57.714050, 59.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.776077, 57.378712, 59.751930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601176, -0.530535, -0.597595,
		0.641595, 0.125359, -0.756730,
		0.476386, -0.838342, 0.265026,
		71.918991, 57.127209, 59.831436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.091606, 58.276756, 59.825047>,  <71.585526, 57.714050, 59.645920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.091606, 58.276756, 59.825047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.068626, 58.125881, 60.194786>,  <72.054840, 58.035355, 60.416630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.068626, 58.125881, 60.194786>,  <72.091606, 58.276756, 59.825047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.068626, 58.125881, 60.194786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736474, 0.609083, 0.294318,
		-0.674021, 0.697671, 0.242798,
		-0.057452, -0.377191, 0.924352,
		72.051392, 58.012722, 60.472092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.541916, 58.633541, 60.308094>,  <72.091606, 58.276756, 59.825047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.541916, 58.633541, 60.308094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866508, 58.407822, 60.247360>,  <73.061264, 58.272392, 60.210922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866508, 58.407822, 60.247360>,  <72.541916, 58.633541, 60.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.866508, 58.407822, 60.247360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578419, 0.812620, 0.071275,
		0.083162, -0.145662, 0.985833,
		0.811490, -0.564297, -0.151833,
		73.109955, 58.238533, 60.201809>
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
