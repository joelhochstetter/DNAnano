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
	<36.302097, 52.384964, 49.813877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526115, 52.619015, 50.048477>,  <36.660526, 52.759445, 50.189236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526115, 52.619015, 50.048477>,  <36.302097, 52.384964, 49.813877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526115, 52.619015, 50.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249365, 0.556045, -0.792862,
		-0.790042, 0.590290, 0.165501,
		0.560045, 0.585125, 0.586497,
		36.694130, 52.794552, 50.224426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219955, 53.053265, 49.457111>,  <36.302097, 52.384964, 49.813877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219955, 53.053265, 49.457111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548977, 52.913155, 49.636314>,  <36.746391, 52.829090, 49.743835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548977, 52.913155, 49.636314>,  <36.219955, 53.053265, 49.457111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548977, 52.913155, 49.636314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566221, 0.431175, -0.702482,
		0.052893, 0.831502, 0.552999,
		0.822554, -0.350276, 0.448008,
		36.795742, 52.808071, 49.770718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565331, 53.590973, 49.697773>,  <36.219955, 53.053265, 49.457111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565331, 53.590973, 49.697773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821049, 53.294270, 49.616684>,  <36.974480, 53.116249, 49.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821049, 53.294270, 49.616684>,  <36.565331, 53.590973, 49.697773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821049, 53.294270, 49.616684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659715, 0.664517, -0.350990,
		0.395064, 0.090646, 0.914171,
		0.639297, -0.741755, -0.202726,
		37.012836, 53.071743, 49.555866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282036, 53.797310, 49.872757>,  <36.565331, 53.590973, 49.697773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282036, 53.797310, 49.872757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283848, 53.519554, 49.584923>,  <37.284935, 53.352901, 49.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283848, 53.519554, 49.584923>,  <37.282036, 53.797310, 49.872757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283848, 53.519554, 49.584923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675939, 0.532431, -0.509534,
		0.736944, -0.484084, 0.471780,
		0.004534, -0.694392, -0.719582,
		37.285210, 53.311237, 49.369049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044121, 53.483143, 49.674126>,  <37.282036, 53.797310, 49.872757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044121, 53.483143, 49.674126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766697, 53.493370, 49.386147>,  <37.600243, 53.499508, 49.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766697, 53.493370, 49.386147>,  <38.044121, 53.483143, 49.674126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766697, 53.493370, 49.386147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419797, 0.826501, -0.375056,
		0.585448, -0.562355, -0.583959,
		-0.693557, 0.025568, -0.719948,
		37.558628, 53.501041, 49.170162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152542, 52.892860, 49.406910>,  <38.044121, 53.483143, 49.674126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152542, 52.892860, 49.406910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067429, 52.813660, 49.024178>,  <38.016361, 52.766140, 48.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067429, 52.813660, 49.024178>,  <38.152542, 52.892860, 49.406910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067429, 52.813660, 49.024178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883383, 0.379500, -0.274980,
		0.417562, -0.903757, 0.094159,
		-0.212782, -0.198000, -0.956828,
		38.003593, 52.754261, 48.737129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750717, 52.511902, 49.073689>,  <38.152542, 52.892860, 49.406910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750717, 52.511902, 49.073689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542824, 52.689774, 48.781895>,  <38.418087, 52.796497, 48.606819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542824, 52.689774, 48.781895>,  <38.750717, 52.511902, 49.073689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542824, 52.689774, 48.781895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833311, 0.452104, -0.318110,
		0.188346, -0.773217, -0.605525,
		-0.519729, 0.444676, -0.729483,
		38.386906, 52.823177, 48.563049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344772, 52.603348, 48.630596>,  <38.750717, 52.511902, 49.073689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344772, 52.603348, 48.630596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710316, 52.492592, 48.511803>,  <39.929642, 52.426136, 48.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710316, 52.492592, 48.511803>,  <39.344772, 52.603348, 48.630596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710316, 52.492592, 48.511803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400230, -0.737590, -0.543854,
		-0.068464, 0.615866, -0.784871,
		0.913854, -0.276895, -0.296986,
		39.984470, 52.409523, 48.422707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500439, 53.403717, 48.454044>,  <39.344772, 52.603348, 48.630596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500439, 53.403717, 48.454044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844963, 53.232601, 48.344391>,  <40.051678, 53.129932, 48.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844963, 53.232601, 48.344391>,  <39.500439, 53.403717, 48.454044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844963, 53.232601, 48.344391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459217, 0.886314, 0.059732,
		0.217415, -0.177334, 0.959835,
		0.861307, -0.427786, -0.274133,
		40.103355, 53.104267, 48.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980881, 53.386444, 48.936676>,  <39.500439, 53.403717, 48.454044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980881, 53.386444, 48.936676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 53.395714, 48.589684>,  <40.298923, 53.401276, 48.381489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179657, 53.395714, 48.589684>,  <39.980881, 53.386444, 48.936676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179657, 53.395714, 48.589684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407028, 0.876637, 0.256586,
		0.766408, -0.480594, 0.426201,
		0.496938, 0.023174, -0.867477,
		40.328739, 53.402664, 48.329441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692169, 53.441422, 49.062481>,  <39.980881, 53.386444, 48.936676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692169, 53.441422, 49.062481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556458, 53.615181, 48.728729>,  <40.475029, 53.719437, 48.528477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556458, 53.615181, 48.728729>,  <40.692169, 53.441422, 49.062481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556458, 53.615181, 48.728729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672366, 0.732319, 0.107862,
		0.657886, -0.524412, -0.540535,
		-0.339280, 0.434398, -0.834378,
		40.454674, 53.745499, 48.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125854, 54.058022, 48.957214>,  <40.692169, 53.441422, 49.062481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125854, 54.058022, 48.957214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897366, 54.316635, 49.159485>,  <40.760273, 54.471802, 49.280846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897366, 54.316635, 49.159485>,  <41.125854, 54.058022, 48.957214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897366, 54.316635, 49.159485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792924, 0.275474, 0.543494,
		0.212087, 0.711413, -0.670008,
		-0.571218, 0.646533, 0.505672,
		40.726002, 54.510593, 49.311188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381702, 54.761555, 49.021046>,  <41.125854, 54.058022, 48.957214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381702, 54.761555, 49.021046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185520, 54.643936, 49.349190>,  <41.067810, 54.573364, 49.546078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185520, 54.643936, 49.349190>,  <41.381702, 54.761555, 49.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185520, 54.643936, 49.349190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866504, -0.064223, 0.495021,
		-0.092873, 0.953631, 0.286290,
		-0.490454, -0.294045, 0.820361,
		41.038383, 54.555721, 49.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558186, 55.148327, 49.703979>,  <41.381702, 54.761555, 49.021046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558186, 55.148327, 49.703979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439823, 54.777275, 49.795151>,  <41.368805, 54.554646, 49.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439823, 54.777275, 49.795151>,  <41.558186, 55.148327, 49.703979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439823, 54.777275, 49.795151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726138, -0.063416, 0.684618,
		-0.620615, 0.368088, 0.692349,
		-0.295906, -0.927626, 0.227926,
		41.351051, 54.498989, 49.863529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290249, 55.092052, 50.425430>,  <41.558186, 55.148327, 49.703979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290249, 55.092052, 50.425430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486351, 54.764679, 50.305557>,  <41.604012, 54.568253, 50.233635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486351, 54.764679, 50.305557>,  <41.290249, 55.092052, 50.425430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486351, 54.764679, 50.305557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777504, 0.255292, 0.574729,
		-0.393872, -0.514771, 0.761496,
		0.490258, -0.818436, -0.299684,
		41.633427, 54.519150, 50.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492241, 54.623917, 50.910267>,  <41.290249, 55.092052, 50.425430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492241, 54.623917, 50.910267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774044, 54.585976, 50.628937>,  <41.943127, 54.563213, 50.460136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774044, 54.585976, 50.628937>,  <41.492241, 54.623917, 50.910267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774044, 54.585976, 50.628937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706986, 0.007280, 0.707190,
		-0.061955, -0.995465, 0.072185,
		0.704509, -0.094848, -0.703329,
		41.985397, 54.557522, 50.417938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982666, 53.961422, 51.100964>,  <41.492241, 54.623917, 50.910267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982666, 53.961422, 51.100964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123932, 54.272518, 50.892967>,  <42.208691, 54.459175, 50.768169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123932, 54.272518, 50.892967>,  <41.982666, 53.961422, 51.100964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123932, 54.272518, 50.892967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837433, -0.014995, 0.546335,
		0.417109, -0.628408, -0.656600,
		0.353167, 0.777740, -0.519994,
		42.229881, 54.505840, 50.736969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681602, 53.874165, 50.907928>,  <41.982666, 53.961422, 51.100964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681602, 53.874165, 50.907928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626926, 54.269554, 50.933987>,  <42.594120, 54.506786, 50.949619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626926, 54.269554, 50.933987>,  <42.681602, 53.874165, 50.907928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626926, 54.269554, 50.933987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839683, 0.080723, 0.537043,
		0.525592, 0.128109, -0.841036,
		-0.136691, 0.988469, 0.065143,
		42.585918, 54.566093, 50.953529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322849, 54.332123, 50.567299>,  <42.681602, 53.874165, 50.907928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322849, 54.332123, 50.567299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111488, 54.482811, 50.871635>,  <42.984673, 54.573223, 51.054237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111488, 54.482811, 50.871635>,  <43.322849, 54.332123, 50.567299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111488, 54.482811, 50.871635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827101, 0.026216, 0.561442,
		0.191560, 0.925956, -0.325438,
		-0.528403, 0.376720, 0.760837,
		42.952969, 54.595829, 51.099888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772709, 54.767941, 50.831917>,  <43.322849, 54.332123, 50.567299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772709, 54.767941, 50.831917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501633, 54.607349, 51.078346>,  <43.338989, 54.510994, 51.226204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501633, 54.607349, 51.078346>,  <43.772709, 54.767941, 50.831917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501633, 54.607349, 51.078346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735156, -0.350677, 0.580148,
		-0.016875, 0.846072, 0.532801,
		-0.677688, -0.401481, 0.616077,
		43.298325, 54.486904, 51.263168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793121, 55.159077, 51.405525>,  <43.772709, 54.767941, 50.831917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793121, 55.159077, 51.405525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682026, 54.777939, 51.454433>,  <43.615368, 54.549255, 51.483776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682026, 54.777939, 51.454433>,  <43.793121, 55.159077, 51.405525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682026, 54.777939, 51.454433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889016, -0.206708, 0.408562,
		-0.364022, 0.222172, 0.904504,
		-0.277739, -0.952844, 0.122268,
		43.598705, 54.492085, 51.491116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904934, 54.871017, 52.141838>,  <43.793121, 55.159077, 51.405525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904934, 54.871017, 52.141838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892105, 54.546749, 51.907990>,  <43.884407, 54.352188, 51.767681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892105, 54.546749, 51.907990>,  <43.904934, 54.871017, 52.141838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892105, 54.546749, 51.907990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855597, -0.324622, 0.403205,
		-0.516648, -0.487264, 0.704023,
		-0.032074, -0.810675, -0.584617,
		43.882484, 54.303547, 51.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076778, 54.443962, 52.617847>,  <43.904934, 54.871017, 52.141838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076778, 54.443962, 52.617847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152451, 54.269890, 52.265747>,  <44.197853, 54.165447, 52.054489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152451, 54.269890, 52.265747>,  <44.076778, 54.443962, 52.617847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152451, 54.269890, 52.265747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617292, -0.644446, 0.451265,
		-0.763651, -0.628738, 0.146717,
		0.189176, -0.435176, -0.880247,
		44.209202, 54.139336, 52.001675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955662, 53.850803, 52.631618>,  <44.076778, 54.443962, 52.617847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955662, 53.850803, 52.631618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242588, 53.841690, 52.353065>,  <44.414742, 53.836220, 52.185936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242588, 53.841690, 52.353065>,  <43.955662, 53.850803, 52.631618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242588, 53.841690, 52.353065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546940, -0.600767, 0.583040,
		-0.431646, -0.799099, -0.418476,
		0.717313, -0.022785, -0.696378,
		44.457783, 53.834854, 52.144154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076073, 53.217426, 52.470936>,  <43.955662, 53.850803, 52.631618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076073, 53.217426, 52.470936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415615, 53.410374, 52.384434>,  <44.619339, 53.526142, 52.332531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415615, 53.410374, 52.384434>,  <44.076073, 53.217426, 52.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415615, 53.410374, 52.384434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521985, -0.700191, 0.487098,
		0.083537, -0.526359, -0.846148,
		0.848854, 0.482367, -0.216260,
		44.670273, 53.555084, 52.319557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630219, 52.774940, 52.198246>,  <44.076073, 53.217426, 52.470936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630219, 52.774940, 52.198246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734306, 53.061783, 52.456871>,  <44.796761, 53.233887, 52.612045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734306, 53.061783, 52.456871>,  <44.630219, 52.774940, 52.198246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734306, 53.061783, 52.456871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513772, -0.669800, 0.536102,
		0.817510, 0.192679, -0.542726,
		0.260222, 0.717107, 0.646562,
		44.812374, 53.276917, 52.650841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279007, 53.015011, 52.305443>,  <44.630219, 52.774940, 52.198246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279007, 53.015011, 52.305443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096836, 53.019909, 52.661518>,  <44.987534, 53.022846, 52.875164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096836, 53.019909, 52.661518>,  <45.279007, 53.015011, 52.305443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096836, 53.019909, 52.661518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651316, -0.677096, 0.342534,
		0.606935, 0.735793, 0.300397,
		-0.455431, 0.012243, 0.890187,
		44.960205, 53.023582, 52.928574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787907, 53.130524, 52.766823>,  <45.279007, 53.015011, 52.305443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787907, 53.130524, 52.766823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475071, 52.948837, 52.937485>,  <45.287369, 52.839825, 53.039883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475071, 52.948837, 52.937485>,  <45.787907, 53.130524, 52.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475071, 52.948837, 52.937485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599353, -0.735731, 0.315398,
		0.170643, 0.502384, 0.847638,
		-0.782085, -0.454214, 0.426653,
		45.240444, 52.812572, 53.065479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445675, 53.156933, 53.160080>,  <45.787907, 53.130524, 52.766823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445675, 53.156933, 53.160080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560402, 53.535164, 53.098606>,  <46.629238, 53.762104, 53.061722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560402, 53.535164, 53.098606>,  <46.445675, 53.156933, 53.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560402, 53.535164, 53.098606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077294, 0.182745, 0.980117,
		0.954862, -0.269235, 0.125502,
		0.286816, 0.945577, -0.153686,
		46.646446, 53.818836, 53.052502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617176, 53.358692, 53.829460>,  <46.445675, 53.156933, 53.160080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617176, 53.358692, 53.829460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673393, 53.707283, 53.641514>,  <46.707123, 53.916439, 53.528744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673393, 53.707283, 53.641514>,  <46.617176, 53.358692, 53.829460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673393, 53.707283, 53.641514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184739, 0.489328, 0.852308,
		0.972687, -0.032982, 0.229767,
		0.140543, 0.871476, -0.469870,
		46.715557, 53.968727, 53.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.922993, 53.843876, 54.333065>,  <46.617176, 53.358692, 53.829460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.922993, 53.843876, 54.333065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717659, 54.028328, 54.043556>,  <46.594460, 54.139000, 53.869850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717659, 54.028328, 54.043556>,  <46.922993, 53.843876, 54.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717659, 54.028328, 54.043556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433985, 0.588104, 0.682489,
		0.740371, 0.664451, -0.101769,
		-0.513331, 0.461129, -0.723776,
		46.563660, 54.166668, 53.826424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968037, 54.518490, 54.561268>,  <46.922993, 53.843876, 54.333065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968037, 54.518490, 54.561268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666409, 54.509029, 54.298721>,  <46.485432, 54.503353, 54.141193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666409, 54.509029, 54.298721>,  <46.968037, 54.518490, 54.561268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666409, 54.509029, 54.298721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533841, 0.604237, 0.591533,
		0.382607, 0.796453, -0.468267,
		-0.754073, -0.023656, -0.656364,
		46.440186, 54.501934, 54.101810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670162, 54.842266, 54.708725>,  <46.968037, 54.518490, 54.561268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670162, 54.842266, 54.708725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759995, 54.868332, 54.319817>,  <47.813892, 54.883972, 54.086472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759995, 54.868332, 54.319817>,  <47.670162, 54.842266, 54.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759995, 54.868332, 54.319817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870561, 0.434877, 0.230229,
		0.437822, -0.898129, 0.040937,
		0.224577, 0.065161, -0.972275,
		47.827370, 54.887878, 54.028133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.229942, 54.460560, 54.620163>,  <47.670162, 54.842266, 54.708725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.229942, 54.460560, 54.620163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214691, 54.765404, 54.361633>,  <48.205540, 54.948311, 54.206516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.214691, 54.765404, 54.361633>,  <48.229942, 54.460560, 54.620163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.214691, 54.765404, 54.361633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950207, 0.227835, 0.212598,
		0.309278, -0.606036, -0.732849,
		-0.038127, 0.762110, -0.646324,
		48.203255, 54.994038, 54.167736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.822781, 54.480331, 54.221706>,  <48.229942, 54.460560, 54.620163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.822781, 54.480331, 54.221706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.668694, 54.849079, 54.204945>,  <48.576241, 55.070328, 54.194885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.668694, 54.849079, 54.204945>,  <48.822781, 54.480331, 54.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.668694, 54.849079, 54.204945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849613, 0.372017, 0.373845,
		0.360228, 0.108405, -0.926544,
		-0.385217, 0.921874, -0.041908,
		48.553127, 55.125641, 54.192371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.390240, 54.912605, 54.081367>,  <48.822781, 54.480331, 54.221706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.390240, 54.912605, 54.081367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.105846, 55.126411, 54.264145>,  <48.935211, 55.254696, 54.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.105846, 55.126411, 54.264145>,  <49.390240, 54.912605, 54.081367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.105846, 55.126411, 54.264145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677367, 0.346026, 0.649184,
		0.188880, 0.771080, -0.608079,
		-0.710984, 0.534511, 0.456947,
		48.892551, 55.286766, 54.401230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.744175, 55.560184, 54.148598>,  <49.390240, 54.912605, 54.081367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.744175, 55.560184, 54.148598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.446842, 55.574036, 54.415810>,  <49.268444, 55.582348, 54.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.446842, 55.574036, 54.415810>,  <49.744175, 55.560184, 54.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.446842, 55.574036, 54.415810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614103, 0.431272, 0.660970,
		-0.265212, 0.901557, -0.341845,
		-0.743331, 0.034630, 0.668027,
		49.223843, 55.584423, 54.616219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.382740, 55.429939, 54.381920>,  <49.744175, 55.560184, 54.148598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.382740, 55.429939, 54.381920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750843, 55.544750, 54.488312>,  <50.971706, 55.613636, 54.552147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.750843, 55.544750, 54.488312>,  <50.382740, 55.429939, 54.381920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.750843, 55.544750, 54.488312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372286, -0.851552, -0.369137,
		0.120542, 0.438720, -0.890502,
		0.920257, 0.287025, 0.265977,
		51.026920, 55.630859, 54.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.772018, 55.341423, 53.831020>,  <50.382740, 55.429939, 54.381920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.772018, 55.341423, 53.831020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.005978, 55.310532, 54.153988>,  <51.146355, 55.291996, 54.347771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.005978, 55.310532, 54.153988>,  <50.772018, 55.341423, 53.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.005978, 55.310532, 54.153988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422780, -0.820506, -0.384743,
		0.692206, 0.566398, -0.447263,
		0.584899, -0.077228, 0.807421,
		51.181446, 55.287365, 54.396214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.483757, 55.521446, 53.707870>,  <50.772018, 55.341423, 53.831020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.483757, 55.521446, 53.707870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.835339, 55.696095, 53.784607>,  <52.046288, 55.800884, 53.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.835339, 55.696095, 53.784607>,  <51.483757, 55.521446, 53.707870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.835339, 55.696095, 53.784607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000543, 0.403175, -0.915123,
		-0.476907, 0.804246, 0.354609,
		0.878954, 0.436620, 0.191840,
		52.099026, 55.827080, 53.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.492081, 56.313931, 53.700253>,  <51.483757, 55.521446, 53.707870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.492081, 56.313931, 53.700253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.822975, 56.130329, 53.570641>,  <52.021511, 56.020168, 53.492874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.822975, 56.130329, 53.570641>,  <51.492081, 56.313931, 53.700253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.822975, 56.130329, 53.570641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175388, 0.336944, -0.925045,
		0.533781, 0.822061, 0.198227,
		0.827234, -0.459005, -0.324034,
		52.071144, 55.992626, 53.473431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.927429, 56.705376, 53.254246>,  <51.492081, 56.313931, 53.700253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.927429, 56.705376, 53.254246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.996445, 56.331837, 53.128922>,  <52.037853, 56.107712, 53.053726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.996445, 56.331837, 53.128922>,  <51.927429, 56.705376, 53.254246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.996445, 56.331837, 53.128922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163602, 0.286489, -0.944012,
		0.971321, 0.214136, -0.103349,
		0.172538, -0.933847, -0.313306,
		52.048206, 56.051682, 53.034931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.429882, 56.653214, 52.725777>,  <51.927429, 56.705376, 53.254246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.429882, 56.653214, 52.725777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.226109, 56.319080, 52.643127>,  <52.103844, 56.118599, 52.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.226109, 56.319080, 52.643127>,  <52.429882, 56.653214, 52.725777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.226109, 56.319080, 52.643127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223990, 0.360562, -0.905441,
		0.830845, -0.414985, -0.370790,
		-0.509437, -0.835334, -0.206619,
		52.073277, 56.068481, 52.581142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.930614, 57.009769, 53.103676>,  <52.429882, 56.653214, 52.725777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.930614, 57.009769, 53.103676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.939251, 56.853935, 53.471970>,  <52.944435, 56.760433, 53.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.939251, 56.853935, 53.471970>,  <52.930614, 57.009769, 53.103676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.939251, 56.853935, 53.471970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662903, -0.683815, -0.304888,
		0.748394, 0.616943, 0.243492,
		0.021595, -0.389588, 0.920736,
		52.945728, 56.737061, 53.748192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.549553, 56.946594, 53.424011>,  <52.930614, 57.009769, 53.103676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.549553, 56.946594, 53.424011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.316250, 56.650867, 53.558609>,  <53.176270, 56.473431, 53.639366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.316250, 56.650867, 53.558609>,  <53.549553, 56.946594, 53.424011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.316250, 56.650867, 53.558609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608870, -0.672120, -0.421345,
		0.537668, -0.040873, 0.842165,
		-0.583258, -0.739313, 0.336491,
		53.141273, 56.429073, 53.659557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.851067, 56.443676, 53.871132>,  <53.549553, 56.946594, 53.424011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.851067, 56.443676, 53.871132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.557961, 56.345024, 53.617447>,  <53.382095, 56.285835, 53.465237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.557961, 56.345024, 53.617447>,  <53.851067, 56.443676, 53.871132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.557961, 56.345024, 53.617447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660396, -0.482497, -0.575390,
		-0.164099, -0.840459, 0.516430,
		-0.732768, -0.246628, -0.634213,
		53.338131, 56.271034, 53.427181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.646835, 55.725807, 53.762512>,  <53.851067, 56.443676, 53.871132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.646835, 55.725807, 53.762512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552841, 55.885769, 53.408142>,  <53.496445, 55.981747, 53.195522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.552841, 55.885769, 53.408142>,  <53.646835, 55.725807, 53.762512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.552841, 55.885769, 53.408142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675611, -0.588071, -0.444660,
		-0.698807, -0.703027, -0.131994,
		-0.234986, 0.399908, -0.885920,
		53.482346, 56.005741, 53.142365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.841412, 55.780457, 53.832417>,  <53.646835, 55.725807, 53.762512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.841412, 55.780457, 53.832417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.035213, 55.494019, 54.033398>,  <53.151497, 55.322155, 54.153988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.035213, 55.494019, 54.033398>,  <52.841412, 55.780457, 53.832417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.035213, 55.494019, 54.033398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636536, 0.682588, 0.359020,
		-0.600062, 0.145882, 0.786539,
		0.484508, -0.716095, 0.502454,
		53.180565, 55.279190, 54.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.063187, 56.125156, 54.440704>,  <52.841412, 55.780457, 53.832417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.063187, 56.125156, 54.440704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.292126, 55.797333, 54.429825>,  <53.429489, 55.600639, 54.423298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.292126, 55.797333, 54.429825>,  <53.063187, 56.125156, 54.440704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.292126, 55.797333, 54.429825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736137, 0.498904, 0.457381,
		-0.361280, -0.281805, 0.888855,
		0.572345, -0.819561, -0.027203,
		53.463829, 55.551464, 54.421665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.490078, 56.162964, 55.009575>,  <53.063187, 56.125156, 54.440704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.490078, 56.162964, 55.009575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.688141, 55.875710, 54.813984>,  <53.806980, 55.703358, 54.696629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.688141, 55.875710, 54.813984>,  <53.490078, 56.162964, 55.009575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.688141, 55.875710, 54.813984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860269, 0.326570, 0.391522,
		-0.121480, -0.614518, 0.779493,
		0.495156, -0.718136, -0.488979,
		53.836689, 55.660267, 54.667290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.894188, 55.526352, 55.340809>,  <53.490078, 56.162964, 55.009575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.894188, 55.526352, 55.340809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.074860, 55.607246, 54.993225>,  <54.183262, 55.655781, 54.784676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.074860, 55.607246, 54.993225>,  <53.894188, 55.526352, 55.340809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.074860, 55.607246, 54.993225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874730, 0.091305, 0.475932,
		0.175590, -0.975072, -0.135659,
		0.451682, 0.202234, -0.868957,
		54.210365, 55.667915, 54.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.756687, 55.765411, 55.342537>,  <53.894188, 55.526352, 55.340809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.756687, 55.765411, 55.342537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064209, 55.718674, 55.091049>,  <55.248722, 55.690632, 54.940155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.064209, 55.718674, 55.091049>,  <54.756687, 55.765411, 55.342537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.064209, 55.718674, 55.091049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600682, 0.469200, 0.647327,
		0.219360, -0.875328, 0.430908,
		0.768806, -0.116841, -0.628718,
		55.294849, 55.683620, 54.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.385597, 55.467113, 55.672253>,  <54.756687, 55.765411, 55.342537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.385597, 55.467113, 55.672253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.503685, 55.667286, 55.346695>,  <55.574539, 55.787388, 55.151360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.503685, 55.667286, 55.346695>,  <55.385597, 55.467113, 55.672253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.503685, 55.667286, 55.346695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777235, 0.369630, 0.509194,
		0.555653, -0.782908, -0.279828,
		0.295220, 0.500428, -0.813890,
		55.592251, 55.817413, 55.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.096756, 55.256493, 55.653351>,  <55.385597, 55.467113, 55.672253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.096756, 55.256493, 55.653351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.006905, 55.617607, 55.506645>,  <55.952991, 55.834274, 55.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.006905, 55.617607, 55.506645>,  <56.096756, 55.256493, 55.653351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.006905, 55.617607, 55.506645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746422, 0.401371, 0.530806,
		0.626414, -0.154527, -0.764020,
		-0.224632, 0.902786, -0.366767,
		55.939514, 55.888443, 55.396614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.731979, 55.726677, 55.386517>,  <56.096756, 55.256493, 55.653351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.731979, 55.726677, 55.386517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.412331, 55.919472, 55.530235>,  <56.220539, 56.035149, 55.616467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.412331, 55.919472, 55.530235>,  <56.731979, 55.726677, 55.386517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.412331, 55.919472, 55.530235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582547, 0.473258, 0.660807,
		0.148462, 0.737372, -0.658970,
		-0.799124, 0.481985, 0.359293,
		56.172592, 56.064068, 55.638023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.962734, 56.307251, 55.538631>,  <56.731979, 55.726677, 55.386517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.962734, 56.307251, 55.538631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.644768, 56.198875, 55.755775>,  <56.453987, 56.133850, 55.886063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.644768, 56.198875, 55.755775>,  <56.962734, 56.307251, 55.538631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.644768, 56.198875, 55.755775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479759, 0.267014, 0.835784,
		-0.371401, 0.924821, -0.082266,
		-0.794917, -0.270944, 0.542860,
		56.406292, 56.117592, 55.918633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.175404, 56.450741, 56.309647>,  <56.962734, 56.307251, 55.538631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.175404, 56.450741, 56.309647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.342957, 56.454468, 55.946449>,  <57.443489, 56.456703, 55.728531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.342957, 56.454468, 55.946449>,  <57.175404, 56.450741, 56.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.342957, 56.454468, 55.946449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221674, 0.968644, 0.112204,
		0.880568, -0.248279, 0.403679,
		0.418879, 0.009318, -0.907994,
		57.468620, 56.457264, 55.674049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.740776, 56.876507, 56.260952>,  <57.175404, 56.450741, 56.309647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.740776, 56.876507, 56.260952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.645432, 56.854172, 55.873123>,  <57.588226, 56.840771, 55.640427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.645432, 56.854172, 55.873123>,  <57.740776, 56.876507, 56.260952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.645432, 56.854172, 55.873123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155624, 0.983249, -0.094886,
		0.958627, -0.173506, -0.225679,
		-0.238362, -0.055839, -0.969570,
		57.573921, 56.837421, 55.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.363632, 57.132812, 55.954113>,  <57.740776, 56.876507, 56.260952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.363632, 57.132812, 55.954113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.031326, 57.178261, 55.736153>,  <57.831944, 57.205528, 55.605377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.031326, 57.178261, 55.736153>,  <58.363632, 57.132812, 55.954113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.031326, 57.178261, 55.736153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321580, 0.897009, -0.303250,
		0.454324, -0.427159, -0.781745,
		-0.830768, 0.113620, -0.544898,
		57.782097, 57.212345, 55.572681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.951488, 56.966412, 55.679958>,  <58.363632, 57.132812, 55.954113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.951488, 56.966412, 55.679958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266296, 57.125607, 55.491402>,  <59.455181, 57.221123, 55.378269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.266296, 57.125607, 55.491402>,  <58.951488, 56.966412, 55.679958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.266296, 57.125607, 55.491402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606494, -0.639063, 0.473036,
		-0.112984, -0.658182, -0.744333,
		0.787019, 0.397988, -0.471387,
		59.502403, 57.245003, 55.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.330750, 56.470470, 55.386234>,  <58.951488, 56.966412, 55.679958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.330750, 56.470470, 55.386234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.597015, 56.765724, 55.430130>,  <59.756775, 56.942875, 55.456467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.597015, 56.765724, 55.430130>,  <59.330750, 56.470470, 55.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.597015, 56.765724, 55.430130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659747, -0.650831, 0.375704,
		0.348740, -0.177696, -0.920220,
		0.665669, 0.738135, 0.109736,
		59.796715, 56.987164, 55.463051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.069477, 56.215317, 55.311539>,  <59.330750, 56.470470, 55.386234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.069477, 56.215317, 55.311539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137558, 56.601189, 55.391968>,  <60.178406, 56.832710, 55.440228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.137558, 56.601189, 55.391968>,  <60.069477, 56.215317, 55.311539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.137558, 56.601189, 55.391968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818942, -0.251963, 0.515605,
		0.548055, 0.076912, -0.832898,
		0.170203, 0.964676, 0.201076,
		60.188618, 56.890591, 55.452290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.684937, 56.492790, 54.938568>,  <60.069477, 56.215317, 55.311539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.684937, 56.492790, 54.938568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599236, 56.649979, 55.296265>,  <60.547817, 56.744289, 55.510883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.599236, 56.649979, 55.296265>,  <60.684937, 56.492790, 54.938568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.599236, 56.649979, 55.296265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738586, -0.533935, 0.411586,
		0.639209, 0.748659, -0.175845,
		-0.214248, 0.392966, 0.894246,
		60.534962, 56.767868, 55.564537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.300541, 56.505222, 55.287464>,  <60.684937, 56.492790, 54.938568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.300541, 56.505222, 55.287464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.022598, 56.576759, 55.566086>,  <60.855835, 56.619682, 55.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.022598, 56.576759, 55.566086>,  <61.300541, 56.505222, 55.287464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.022598, 56.576759, 55.566086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506636, -0.565681, 0.650635,
		0.510390, 0.804998, 0.302458,
		-0.694854, 0.178841, 0.696558,
		60.814140, 56.630413, 55.775055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.052715, 56.678795, 54.954407>,  <61.300541, 56.505222, 55.287464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.052715, 56.678795, 54.954407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.294205, 56.360069, 54.964256>,  <62.439098, 56.168835, 54.970165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.294205, 56.360069, 54.964256>,  <62.052715, 56.678795, 54.954407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.294205, 56.360069, 54.964256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681787, 0.532091, 0.502041,
		-0.413135, -0.286306, 0.864493,
		0.603727, -0.796811, 0.024626,
		62.475323, 56.121025, 54.971645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.366913, 56.588959, 55.655888>,  <62.052715, 56.678795, 54.954407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.366913, 56.588959, 55.655888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.615097, 56.412743, 55.396362>,  <62.764008, 56.307014, 55.240646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.615097, 56.412743, 55.396362>,  <62.366913, 56.588959, 55.655888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.615097, 56.412743, 55.396362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773340, 0.481148, 0.412846,
		0.130302, -0.757908, 0.639216,
		0.620457, -0.440537, -0.648814,
		62.801235, 56.280582, 55.201717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.902122, 56.291885, 56.028614>,  <62.366913, 56.588959, 55.655888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.902122, 56.291885, 56.028614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.018692, 56.373016, 55.654678>,  <63.088634, 56.421696, 55.430317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.018692, 56.373016, 55.654678>,  <62.902122, 56.291885, 56.028614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.018692, 56.373016, 55.654678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668295, 0.656057, 0.350672,
		0.684437, -0.726945, 0.055643,
		0.291425, 0.202827, -0.934844,
		63.106121, 56.433865, 55.374226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.598385, 56.154625, 56.064743>,  <62.902122, 56.291885, 56.028614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.598385, 56.154625, 56.064743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.489815, 56.400841, 55.768784>,  <63.424671, 56.548569, 55.591209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.489815, 56.400841, 55.768784>,  <63.598385, 56.154625, 56.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.489815, 56.400841, 55.768784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779889, 0.591152, 0.205698,
		0.564005, -0.521204, -0.640504,
		-0.271425, 0.615537, -0.739894,
		63.408386, 56.585503, 55.546814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.044510, 56.112053, 55.499535>,  <63.598385, 56.154625, 56.064743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.044510, 56.112053, 55.499535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.916267, 56.484047, 55.571457>,  <63.839321, 56.707245, 55.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.916267, 56.484047, 55.571457>,  <64.044510, 56.112053, 55.499535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.916267, 56.484047, 55.571457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924871, 0.266376, 0.271399,
		0.204502, 0.253311, -0.945522,
		-0.320613, 0.929988, 0.179805,
		63.820084, 56.763042, 55.625397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.519783, 56.628029, 55.164619>,  <64.044510, 56.112053, 55.499535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.519783, 56.628029, 55.164619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.354088, 56.792542, 55.489395>,  <64.254669, 56.891251, 55.684261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.354088, 56.792542, 55.489395>,  <64.519783, 56.628029, 55.164619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.354088, 56.792542, 55.489395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904675, 0.283932, 0.317721,
		-0.099863, 0.866157, -0.489694,
		-0.414236, 0.411285, 0.811944,
		64.229820, 56.915928, 55.732979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.870842, 56.171307, 54.679165>,  <64.519783, 56.628029, 55.164619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.870842, 56.171307, 54.679165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000084, 56.518272, 54.527802>,  <65.077629, 56.726452, 54.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.000084, 56.518272, 54.527802>,  <64.870842, 56.171307, 54.679165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.000084, 56.518272, 54.527802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733472, 0.023141, 0.679325,
		0.598015, -0.497044, -0.628749,
		0.323105, 0.867417, -0.378406,
		65.097015, 56.778496, 54.414280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.618607, 56.176720, 54.257225>,  <64.870842, 56.171307, 54.679165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.618607, 56.176720, 54.257225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.505058, 56.515667, 54.436726>,  <65.436928, 56.719036, 54.544426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.505058, 56.515667, 54.436726>,  <65.618607, 56.176720, 54.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.505058, 56.515667, 54.436726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798658, -0.050033, 0.599702,
		0.530623, 0.528637, -0.662557,
		-0.283875, 0.847372, 0.448748,
		65.419899, 56.769878, 54.571350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.170937, 56.630970, 54.319725>,  <65.618607, 56.176720, 54.257225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.170937, 56.630970, 54.319725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.899429, 56.719852, 54.599693>,  <65.736526, 56.773182, 54.767673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.899429, 56.719852, 54.599693>,  <66.170937, 56.630970, 54.319725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.899429, 56.719852, 54.599693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704425, -0.072298, 0.706087,
		0.207503, 0.972315, -0.107456,
		-0.678770, 0.222210, 0.699925,
		65.695801, 56.786514, 54.809669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.368439, 57.293278, 54.586117>,  <66.170937, 56.630970, 54.319725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.368439, 57.293278, 54.586117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.167908, 57.042431, 54.824577>,  <66.047592, 56.891922, 54.967651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.167908, 57.042431, 54.824577>,  <66.368439, 57.293278, 54.586117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.167908, 57.042431, 54.824577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754216, 0.020952, 0.656292,
		-0.424064, 0.778641, 0.462480,
		-0.501327, -0.627119, 0.596148,
		66.017509, 56.854294, 55.003422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.587799, 57.667324, 55.168827>,  <66.368439, 57.293278, 54.586117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.587799, 57.667324, 55.168827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.484009, 57.300201, 55.289024>,  <66.421738, 57.079926, 55.361145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.484009, 57.300201, 55.289024>,  <66.587799, 57.667324, 55.168827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.484009, 57.300201, 55.289024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700325, 0.035431, 0.712944,
		-0.664994, 0.395438, 0.633571,
		-0.259477, -0.917809, 0.300497,
		66.406166, 57.024860, 55.379173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.254684, 57.669075, 55.930088>,  <66.587799, 57.667324, 55.168827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.254684, 57.669075, 55.930088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.479454, 57.352398, 55.834198>,  <66.614311, 57.162392, 55.776665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.479454, 57.352398, 55.834198>,  <66.254684, 57.669075, 55.930088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.479454, 57.352398, 55.834198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670079, 0.265725, 0.693097,
		-0.485019, -0.550100, 0.679814,
		0.561917, -0.791694, -0.239729,
		66.648026, 57.114891, 55.762280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.492363, 57.274490, 56.561081>,  <66.254684, 57.669075, 55.930088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.492363, 57.274490, 56.561081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.759041, 57.213005, 56.269356>,  <66.919044, 57.176113, 56.094318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.759041, 57.213005, 56.269356>,  <66.492363, 57.274490, 56.561081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.759041, 57.213005, 56.269356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731303, 0.323910, 0.600232,
		0.143967, -0.933517, 0.328360,
		0.666685, -0.153717, -0.729316,
		66.959045, 57.166889, 56.050560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.144539, 56.949692, 56.800167>,  <66.492363, 57.274490, 56.561081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.144539, 56.949692, 56.800167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.213173, 57.167084, 56.471489>,  <67.254356, 57.297520, 56.274281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.213173, 57.167084, 56.471489>,  <67.144539, 56.949692, 56.800167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.213173, 57.167084, 56.471489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753601, 0.464810, 0.464799,
		0.634541, -0.698988, -0.329808,
		0.171591, 0.543478, -0.821698,
		67.264648, 57.330128, 56.224979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.862366, 56.921089, 56.755051>,  <67.144539, 56.949692, 56.800167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.862366, 56.921089, 56.755051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.712631, 57.234009, 56.555893>,  <67.622795, 57.421761, 56.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.712631, 57.234009, 56.555893>,  <67.862366, 56.921089, 56.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.712631, 57.234009, 56.555893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597221, 0.614127, 0.515922,
		0.709371, -0.104226, -0.697087,
		-0.374327, 0.782295, -0.497889,
		67.600334, 57.468697, 56.406525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.439766, 57.154980, 56.654816>,  <67.862366, 56.921089, 56.755051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.439766, 57.154980, 56.654816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.145714, 57.422024, 56.701950>,  <67.969284, 57.582249, 56.730228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.145714, 57.422024, 56.701950>,  <68.439766, 57.154980, 56.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.145714, 57.422024, 56.701950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641415, 0.628673, 0.439725,
		0.219487, 0.398833, -0.890369,
		-0.735128, 0.667610, 0.117832,
		67.925179, 57.622307, 56.737301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.467010, 57.760094, 56.145130>,  <68.439766, 57.154980, 56.654816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.467010, 57.760094, 56.145130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.361206, 57.786087, 56.530006>,  <68.297722, 57.801682, 56.760933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.361206, 57.786087, 56.530006>,  <68.467010, 57.760094, 56.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.361206, 57.786087, 56.530006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822679, 0.535825, 0.189973,
		-0.503222, 0.841825, -0.195189,
		-0.264511, 0.064979, 0.962191,
		68.281853, 57.805580, 56.818665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.388802, 58.497696, 56.369888>,  <68.467010, 57.760094, 56.145130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.388802, 58.497696, 56.369888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.501625, 58.222969, 56.637833>,  <68.569321, 58.058132, 56.798599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.501625, 58.222969, 56.637833>,  <68.388802, 58.497696, 56.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.501625, 58.222969, 56.637833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843301, 0.510426, 0.168251,
		-0.457474, 0.517438, 0.723171,
		0.282065, -0.686821, 0.669863,
		68.586243, 58.016922, 56.838791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.505943, 58.814743, 57.109383>,  <68.388802, 58.497696, 56.369888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.505943, 58.814743, 57.109383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.703148, 58.522495, 56.920433>,  <68.821472, 58.347149, 56.807064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.703148, 58.522495, 56.920433>,  <68.505943, 58.814743, 57.109383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.703148, 58.522495, 56.920433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859969, 0.491535, 0.137283,
		0.131888, -0.473911, 0.870640,
		0.493010, -0.730617, -0.472376,
		68.851051, 58.303310, 56.778721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.114464, 58.887268, 57.508602>,  <68.505943, 58.814743, 57.109383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.114464, 58.887268, 57.508602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.261398, 58.684879, 57.196434>,  <69.349556, 58.563446, 57.009132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.261398, 58.684879, 57.196434>,  <69.114464, 58.887268, 57.508602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.261398, 58.684879, 57.196434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884282, 0.450071, 0.124423,
		0.288292, -0.735819, 0.612747,
		0.367333, -0.505971, -0.780423,
		69.371597, 58.533089, 56.962307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.678116, 58.315670, 57.627739>,  <69.114464, 58.887268, 57.508602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.678116, 58.315670, 57.627739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.661705, 58.531136, 57.291130>,  <69.651855, 58.660416, 57.089165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.661705, 58.531136, 57.291130>,  <69.678116, 58.315670, 57.627739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.661705, 58.531136, 57.291130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893555, 0.396640, 0.210323,
		0.447075, -0.743318, -0.497596,
		-0.041029, 0.538660, -0.841523,
		69.649399, 58.692734, 57.038673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.342918, 58.211739, 57.095394>,  <69.678116, 58.315670, 57.627739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.342918, 58.211739, 57.095394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.180962, 58.577469, 57.092163>,  <70.083786, 58.796906, 57.090225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.180962, 58.577469, 57.092163>,  <70.342918, 58.211739, 57.095394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.180962, 58.577469, 57.092163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893009, 0.397323, 0.211354,
		0.196456, 0.078364, -0.977376,
		-0.404896, 0.914327, -0.008077,
		70.059494, 58.851768, 57.089741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.621941, 58.472244, 56.527302>,  <70.342918, 58.211739, 57.095394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.621941, 58.472244, 56.527302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.493675, 58.738487, 56.796860>,  <70.416718, 58.898235, 56.958595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.493675, 58.738487, 56.796860>,  <70.621941, 58.472244, 56.527302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.493675, 58.738487, 56.796860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912258, 0.408469, 0.030639,
		-0.254873, 0.624593, -0.738189,
		-0.320665, 0.665610, 0.673898,
		70.397476, 58.938171, 56.999027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.228661, 59.084118, 56.563370>,  <70.621941, 58.472244, 56.527302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.228661, 59.084118, 56.563370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.221458, 59.460388, 56.698906>,  <70.217140, 59.686150, 56.780228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.221458, 59.460388, 56.698906>,  <70.228661, 59.084118, 56.563370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.221458, 59.460388, 56.698906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072481, -0.336772, 0.938792,
		0.997207, 0.041465, -0.062116,
		-0.018007, 0.940673, 0.338837,
		70.216057, 59.742592, 56.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.862305, 59.295231, 56.923157>,  <70.228661, 59.084118, 56.563370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.862305, 59.295231, 56.923157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500931, 59.421013, 57.039734>,  <70.284111, 59.496483, 57.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500931, 59.421013, 57.039734>,  <70.862305, 59.295231, 56.923157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.500931, 59.421013, 57.039734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123073, -0.460945, 0.878853,
		0.410697, 0.829848, 0.377730,
		-0.903427, 0.314454, 0.291441,
		70.229904, 59.515350, 57.127167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.874222, 59.835415, 57.365868>,  <70.862305, 59.295231, 56.923157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.874222, 59.835415, 57.365868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.563232, 59.587318, 57.407494>,  <70.376640, 59.438461, 57.432468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.563232, 59.587318, 57.407494>,  <70.874222, 59.835415, 57.365868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.563232, 59.587318, 57.407494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431610, -0.405861, 0.805599,
		-0.457426, 0.671254, 0.583250,
		-0.777480, -0.620238, 0.104068,
		70.329987, 59.401245, 57.438713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.292671, 59.883099, 58.021664>,  <70.874222, 59.835415, 57.365868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.292671, 59.883099, 58.021664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.473518, 59.546402, 57.903633>,  <70.582024, 59.344383, 57.832813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.473518, 59.546402, 57.903633>,  <70.292671, 59.883099, 58.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.473518, 59.546402, 57.903633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516921, -0.022339, 0.855741,
		-0.726904, -0.539419, 0.425014,
		0.452109, -0.841741, -0.295075,
		70.609154, 59.293880, 57.815109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.012527, 60.089344, 58.405502>,  <70.292671, 59.883099, 58.021664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.012527, 60.089344, 58.405502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.244164, 60.373501, 58.565506>,  <71.383141, 60.543995, 58.661507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.244164, 60.373501, 58.565506>,  <71.012527, 60.089344, 58.405502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.244164, 60.373501, 58.565506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564511, -0.703388, 0.431940,
		0.588206, -0.024323, -0.808345,
		0.579087, 0.710389, 0.400006,
		71.417892, 60.586617, 58.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.721107, 59.981739, 58.205112>,  <71.012527, 60.089344, 58.405502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.721107, 59.981739, 58.205112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651497, 60.151108, 58.560738>,  <71.609726, 60.252728, 58.774113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.651497, 60.151108, 58.560738>,  <71.721107, 59.981739, 58.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.651497, 60.151108, 58.560738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488309, -0.746910, 0.451309,
		0.855142, 0.512677, -0.076776,
		-0.174031, 0.423423, 0.889059,
		71.599289, 60.278133, 58.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.173241, 59.697834, 58.658012>,  <71.721107, 59.981739, 58.205112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.173241, 59.697834, 58.658012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956825, 59.869316, 58.947426>,  <71.826981, 59.972206, 59.121075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.956825, 59.869316, 58.947426>,  <72.173241, 59.697834, 58.658012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.956825, 59.869316, 58.947426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301044, -0.704590, 0.642593,
		0.785274, 0.565478, 0.252148,
		-0.541033, 0.428704, 0.723530,
		71.794518, 59.997929, 59.164486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.594376, 59.855793, 59.119850>,  <72.173241, 59.697834, 58.658012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.594376, 59.855793, 59.119850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.216637, 59.773270, 59.222328>,  <71.989990, 59.723755, 59.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.216637, 59.773270, 59.222328>,  <72.594376, 59.855793, 59.119850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.216637, 59.773270, 59.222328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312669, -0.804898, 0.504358,
		0.102157, 0.556396, 0.824614,
		-0.944353, -0.206308, 0.256194,
		71.933334, 59.711376, 59.299187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.515968, 59.646763, 59.783295>,  <72.594376, 59.855793, 59.119850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.515968, 59.646763, 59.783295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.208916, 59.482117, 59.586807>,  <72.024681, 59.383327, 59.468914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.208916, 59.482117, 59.586807>,  <72.515968, 59.646763, 59.783295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.208916, 59.482117, 59.586807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302454, -0.908431, 0.288572,
		-0.565021, 0.072948, 0.821845,
		-0.767641, -0.411620, -0.491219,
		71.978622, 59.358631, 59.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.021866, 59.379704, 60.319500>,  <72.515968, 59.646763, 59.783295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.021866, 59.379704, 60.319500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.022400, 59.196564, 59.963890>,  <72.022720, 59.086681, 59.750523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.022400, 59.196564, 59.963890>,  <72.021866, 59.379704, 60.319500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.022400, 59.196564, 59.963890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348678, -0.833023, 0.429530,
		-0.937241, -0.310560, 0.158526,
		0.001339, -0.457848, -0.889029,
		72.022804, 59.059208, 59.697182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.699677, 58.695988, 60.260921>,  <72.021866, 59.379704, 60.319500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.699677, 58.695988, 60.260921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.997833, 58.732117, 59.996727>,  <72.176727, 58.753796, 59.838211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.997833, 58.732117, 59.996727>,  <71.699677, 58.695988, 60.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.997833, 58.732117, 59.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505898, -0.721859, 0.472215,
		-0.434125, -0.686121, -0.583758,
		0.745388, 0.090321, -0.660484,
		72.221451, 58.759212, 59.798580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.928230, 57.999386, 60.014530>,  <71.699677, 58.695988, 60.260921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.928230, 57.999386, 60.014530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.238403, 58.247433, 59.966957>,  <72.424507, 58.396263, 59.938412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.238403, 58.247433, 59.966957>,  <71.928230, 57.999386, 60.014530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.238403, 58.247433, 59.966957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603218, -0.671879, 0.429776,
		0.186605, -0.405007, -0.895069,
		0.775440, 0.620120, -0.118931,
		72.471039, 58.433468, 59.931278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.371918, 57.688328, 59.685257>,  <71.928230, 57.999386, 60.014530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.371918, 57.688328, 59.685257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.572784, 57.942032, 59.920387>,  <72.693306, 58.094254, 60.061466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.572784, 57.942032, 59.920387>,  <72.371918, 57.688328, 59.685257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.572784, 57.942032, 59.920387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439837, -0.772592, 0.457870,
		0.744561, 0.028621, -0.666941,
		0.502169, 0.634257, 0.587831,
		72.723434, 58.132309, 60.096737>
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
