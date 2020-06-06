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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.953590, 42.232117, 45.399071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158165, 42.104637, 45.718285>,  <43.280910, 42.028149, 45.909813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158165, 42.104637, 45.718285>,  <42.953590, 42.232117, 45.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158165, 42.104637, 45.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574457, -0.817473, 0.041691,
		0.639089, -0.479761, -0.601162,
		0.511434, -0.318697, 0.798039,
		43.311596, 42.009029, 45.957695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065853, 41.446732, 45.368729>,  <42.953590, 42.232117, 45.399071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065853, 41.446732, 45.368729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134377, 41.544815, 45.750416>,  <43.175491, 41.603664, 45.979427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134377, 41.544815, 45.750416>,  <43.065853, 41.446732, 45.368729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134377, 41.544815, 45.750416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549824, -0.779885, 0.299120,
		0.817526, -0.575891, 0.001225,
		0.171305, 0.245212, 0.954215,
		43.185768, 41.618378, 46.036682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023178, 40.792980, 45.823345>,  <43.065853, 41.446732, 45.368729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023178, 40.792980, 45.823345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970844, 41.097916, 46.076870>,  <42.939445, 41.280876, 46.228985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970844, 41.097916, 46.076870>,  <43.023178, 40.792980, 45.823345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970844, 41.097916, 46.076870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670747, -0.538844, 0.509653,
		0.730056, -0.358452, 0.581833,
		-0.130831, 0.762338, 0.633817,
		42.931595, 41.326618, 46.267014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828747, 40.391392, 46.457497>,  <43.023178, 40.792980, 45.823345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828747, 40.391392, 46.457497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717422, 40.773933, 46.493126>,  <42.650627, 41.003460, 46.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717422, 40.773933, 46.493126>,  <42.828747, 40.391392, 46.457497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717422, 40.773933, 46.493126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760572, -0.276063, 0.587638,
		0.586579, 0.095800, 0.804206,
		-0.278307, 0.956353, 0.089070,
		42.633930, 41.060841, 46.519848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868500, 40.469341, 47.160477>,  <42.828747, 40.391392, 46.457497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868500, 40.469341, 47.160477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627636, 40.736595, 46.985664>,  <42.483116, 40.896950, 46.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627636, 40.736595, 46.985664>,  <42.868500, 40.469341, 47.160477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627636, 40.736595, 46.985664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739631, -0.260764, 0.620442,
		0.300579, 0.696846, 0.651197,
		-0.602162, 0.668137, -0.437028,
		42.446987, 40.937035, 46.854557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576309, 40.754894, 47.664436>,  <42.868500, 40.469341, 47.160477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576309, 40.754894, 47.664436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322220, 40.845718, 47.369160>,  <42.169765, 40.900215, 47.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322220, 40.845718, 47.369160>,  <42.576309, 40.754894, 47.664436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322220, 40.845718, 47.369160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747157, -0.422686, 0.512926,
		-0.195557, 0.877370, 0.438153,
		-0.635227, 0.227063, -0.738193,
		42.131653, 40.913837, 47.147701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949455, 40.856133, 48.000668>,  <42.576309, 40.754894, 47.664436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949455, 40.856133, 48.000668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842739, 40.806488, 47.618374>,  <41.778709, 40.776703, 47.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842739, 40.806488, 47.618374>,  <41.949455, 40.856133, 48.000668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842739, 40.806488, 47.618374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841118, -0.454116, 0.293767,
		-0.470470, 0.882257, 0.016766,
		-0.266791, -0.124107, -0.955730,
		41.762703, 40.769257, 47.331654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192291, 41.160595, 47.992920>,  <41.949455, 40.856133, 48.000668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192291, 41.160595, 47.992920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242580, 40.943001, 47.661072>,  <41.272755, 40.812443, 47.461964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242580, 40.943001, 47.661072>,  <41.192291, 41.160595, 47.992920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242580, 40.943001, 47.661072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907230, -0.401407, 0.125722,
		-0.401407, 0.736853, -0.543986,
		-0.125722, 0.543986, 0.829622,
		41.280296, 40.779804, 47.412186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671375, 41.284824, 47.541313>,  <41.192291, 41.160595, 47.992920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671375, 41.284824, 47.541313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807861, 40.921181, 47.445732>,  <40.889751, 40.702995, 47.388382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807861, 40.921181, 47.445732>,  <40.671375, 41.284824, 47.541313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807861, 40.921181, 47.445732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907098, -0.385113, 0.169885,
		-0.246468, 0.158788, -0.956054,
		0.341214, -0.909106, -0.238954,
		40.910225, 40.648449, 47.374046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122784, 40.986427, 47.160091>,  <40.671375, 41.284824, 47.541313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122784, 40.986427, 47.160091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365417, 40.697769, 47.293526>,  <40.510998, 40.524574, 47.373585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365417, 40.697769, 47.293526>,  <40.122784, 40.986427, 47.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365417, 40.697769, 47.293526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794724, -0.539004, 0.279085,
		-0.021598, -0.434397, -0.900463,
		0.606587, -0.721647, 0.333584,
		40.547394, 40.481274, 47.393600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758526, 40.383415, 47.158482>,  <40.122784, 40.986427, 47.160091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758526, 40.383415, 47.158482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066132, 40.226959, 47.360718>,  <40.250694, 40.133087, 47.482059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066132, 40.226959, 47.360718>,  <39.758526, 40.383415, 47.158482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066132, 40.226959, 47.360718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639222, -0.467826, 0.610355,
		-0.002204, -0.792559, -0.609791,
		0.769019, -0.391137, 0.505590,
		40.296837, 40.109619, 47.512394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643375, 39.698189, 47.168716>,  <39.758526, 40.383415, 47.158482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643375, 39.698189, 47.168716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860199, 39.755806, 47.499878>,  <39.990292, 39.790379, 47.698574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860199, 39.755806, 47.499878>,  <39.643375, 39.698189, 47.168716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860199, 39.755806, 47.499878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683820, -0.497019, 0.534193,
		0.488433, -0.855700, -0.170911,
		0.542055, 0.144046, 0.827905,
		40.022816, 39.799019, 47.748249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620304, 39.052086, 47.575066>,  <39.643375, 39.698189, 47.168716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620304, 39.052086, 47.575066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706734, 39.345688, 47.832607>,  <39.758591, 39.521851, 47.987133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706734, 39.345688, 47.832607>,  <39.620304, 39.052086, 47.575066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706734, 39.345688, 47.832607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722977, -0.322918, 0.610760,
		0.656215, -0.597457, 0.460898,
		0.216071, 0.734009, 0.643852,
		39.771557, 39.565891, 48.025764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622681, 38.770256, 48.124969>,  <39.620304, 39.052086, 47.575066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622681, 38.770256, 48.124969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595100, 39.143257, 48.266777>,  <39.578552, 39.367058, 48.351864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595100, 39.143257, 48.266777>,  <39.622681, 38.770256, 48.124969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595100, 39.143257, 48.266777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602523, -0.322158, 0.730192,
		0.795117, -0.163264, 0.584066,
		-0.068947, 0.932501, 0.354523,
		39.574417, 39.423008, 48.373135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843994, 38.838428, 48.859676>,  <39.622681, 38.770256, 48.124969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843994, 38.838428, 48.859676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590641, 39.142204, 48.800255>,  <39.438629, 39.324471, 48.764603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590641, 39.142204, 48.800255>,  <39.843994, 38.838428, 48.859676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590641, 39.142204, 48.800255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693699, -0.472155, 0.543922,
		0.342935, 0.447567, 0.825881,
		-0.633386, 0.759442, -0.148558,
		39.400623, 39.370037, 48.755688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625622, 38.878841, 49.425064>,  <39.843994, 38.838428, 48.859676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625622, 38.878841, 49.425064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350395, 39.075684, 49.211750>,  <39.185261, 39.193790, 49.083759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350395, 39.075684, 49.211750>,  <39.625622, 38.878841, 49.425064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350395, 39.075684, 49.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698967, -0.252012, 0.669280,
		0.194961, 0.833260, 0.517366,
		-0.688067, 0.492105, -0.533288,
		39.143974, 39.223316, 49.051762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202213, 39.241177, 49.919540>,  <39.625622, 38.878841, 49.425064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202213, 39.241177, 49.919540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981960, 39.226463, 49.585964>,  <38.849808, 39.217636, 49.385818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981960, 39.226463, 49.585964>,  <39.202213, 39.241177, 49.919540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981960, 39.226463, 49.585964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816982, -0.181259, 0.547435,
		-0.171296, 0.982747, 0.069754,
		-0.550634, -0.036786, -0.833936,
		38.816769, 39.215427, 49.335785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677452, 39.673878, 50.066620>,  <39.202213, 39.241177, 49.919540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677452, 39.673878, 50.066620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564400, 39.417076, 49.781540>,  <38.496567, 39.262993, 49.610493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564400, 39.417076, 49.781540>,  <38.677452, 39.673878, 50.066620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564400, 39.417076, 49.781540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812771, -0.234314, 0.533386,
		-0.509434, 0.730016, -0.455580,
		-0.282631, -0.642007, -0.712704,
		38.479610, 39.224476, 49.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028732, 39.693691, 50.133213>,  <38.677452, 39.673878, 50.066620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028732, 39.693691, 50.133213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042313, 39.386124, 49.877838>,  <38.050461, 39.201584, 49.724613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042313, 39.386124, 49.877838>,  <38.028732, 39.693691, 50.133213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042313, 39.386124, 49.877838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959946, -0.202855, 0.193272,
		-0.278122, 0.606308, -0.745009,
		0.033947, -0.768922, -0.638441,
		38.052498, 39.155449, 49.686306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404861, 39.742802, 49.659645>,  <38.028732, 39.693691, 50.133213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404861, 39.742802, 49.659645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528294, 39.364395, 49.699318>,  <37.602352, 39.137352, 49.723122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528294, 39.364395, 49.699318>,  <37.404861, 39.742802, 49.659645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528294, 39.364395, 49.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845716, -0.225139, 0.483816,
		-0.435367, -0.233172, -0.869532,
		0.308578, -0.946014, 0.099179,
		37.620869, 39.080589, 49.729073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812134, 39.442818, 49.536160>,  <37.404861, 39.742802, 49.659645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812134, 39.442818, 49.536160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058517, 39.154968, 49.664364>,  <37.206348, 38.982258, 49.741287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058517, 39.154968, 49.664364>,  <36.812134, 39.442818, 49.536160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058517, 39.154968, 49.664364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777728, -0.490712, 0.392863,
		-0.125435, -0.491260, -0.861934,
		0.615959, -0.719628, 0.320514,
		37.243305, 38.939079, 49.760517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495564, 38.707912, 49.356480>,  <36.812134, 39.442818, 49.536160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495564, 38.707912, 49.356480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742538, 38.668846, 49.668694>,  <36.890724, 38.645405, 49.856022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742538, 38.668846, 49.668694>,  <36.495564, 38.707912, 49.356480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742538, 38.668846, 49.668694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714623, -0.484354, 0.504694,
		0.328763, -0.869404, -0.368853,
		0.617438, -0.097666, 0.780533,
		36.927769, 38.639545, 49.902855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532238, 37.876019, 49.540024>,  <36.495564, 38.707912, 49.356480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532238, 37.876019, 49.540024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641441, 38.089943, 49.859886>,  <36.706963, 38.218296, 50.051804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641441, 38.089943, 49.859886>,  <36.532238, 37.876019, 49.540024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641441, 38.089943, 49.859886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661521, -0.499147, 0.559680,
		0.698467, -0.681784, 0.217518,
		0.273008, 0.534811, 0.799652,
		36.723343, 38.250385, 50.099781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711914, 37.347435, 50.023560>,  <36.532238, 37.876019, 49.540024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711914, 37.347435, 50.023560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636211, 37.689499, 50.216591>,  <36.590790, 37.894737, 50.332409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636211, 37.689499, 50.216591>,  <36.711914, 37.347435, 50.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636211, 37.689499, 50.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621032, -0.484923, 0.615767,
		0.760592, -0.183156, 0.622859,
		-0.189257, 0.855163, 0.482574,
		36.579433, 37.946049, 50.361362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546902, 37.069962, 50.745903>,  <36.711914, 37.347435, 50.023560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546902, 37.069962, 50.745903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394283, 37.439133, 50.725441>,  <36.302711, 37.660637, 50.713165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394283, 37.439133, 50.725441>,  <36.546902, 37.069962, 50.745903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394283, 37.439133, 50.725441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617065, -0.213116, 0.757504,
		0.688222, 0.320592, 0.650824,
		-0.381551, 0.922931, -0.051155,
		36.279819, 37.716011, 50.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560612, 37.324963, 51.381157>,  <36.546902, 37.069962, 50.745903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560612, 37.324963, 51.381157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281250, 37.548721, 51.202579>,  <36.113632, 37.682976, 51.095432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281250, 37.548721, 51.202579>,  <36.560612, 37.324963, 51.381157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281250, 37.548721, 51.202579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670116, -0.292029, 0.682396,
		0.251353, 0.775757, 0.578811,
		-0.698403, 0.559392, -0.446445,
		36.071728, 37.716537, 51.068645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206226, 37.798569, 51.906216>,  <36.560612, 37.324963, 51.381157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206226, 37.798569, 51.906216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940254, 37.747482, 51.611855>,  <35.780670, 37.716831, 51.435238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940254, 37.747482, 51.611855>,  <36.206226, 37.798569, 51.906216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940254, 37.747482, 51.611855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690029, -0.272067, 0.670701,
		-0.285874, 0.953765, 0.092778,
		-0.664933, -0.127716, -0.735902,
		35.740776, 37.709167, 51.391083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625347, 37.859985, 52.308769>,  <36.206226, 37.798569, 51.906216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625347, 37.859985, 52.308769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493645, 37.709229, 51.962463>,  <35.414623, 37.618774, 51.754681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493645, 37.709229, 51.962463>,  <35.625347, 37.859985, 52.308769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493645, 37.709229, 51.962463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836411, -0.309083, 0.452642,
		-0.438189, 0.873168, -0.213468,
		-0.329253, -0.376889, -0.865764,
		35.394867, 37.596161, 51.702736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902142, 38.059750, 52.334732>,  <35.625347, 37.859985, 52.308769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902142, 38.059750, 52.334732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951759, 37.749794, 52.086811>,  <34.981529, 37.563820, 51.938057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951759, 37.749794, 52.086811>,  <34.902142, 38.059750, 52.334732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951759, 37.749794, 52.086811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792692, -0.453107, 0.407840,
		-0.596870, 0.440725, -0.670454,
		0.124042, -0.774891, -0.619805,
		34.988972, 37.517326, 51.900871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254925, 37.830952, 52.303677>,  <34.902142, 38.059750, 52.334732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254925, 37.830952, 52.303677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466751, 37.526413, 52.154060>,  <34.593845, 37.343689, 52.064293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466751, 37.526413, 52.154060>,  <34.254925, 37.830952, 52.303677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466751, 37.526413, 52.154060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753409, -0.624770, 0.205032,
		-0.389788, 0.173224, -0.904466,
		0.529566, -0.761352, -0.374036,
		34.625622, 37.298008, 52.041851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756809, 37.473316, 51.848782>,  <34.254925, 37.830952, 52.303677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756809, 37.473316, 51.848782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050873, 37.245361, 51.995628>,  <34.227310, 37.108589, 52.083736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050873, 37.245361, 51.995628>,  <33.756809, 37.473316, 51.848782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050873, 37.245361, 51.995628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677843, -0.611176, 0.408648,
		-0.008509, -0.549268, -0.835603,
		0.735158, -0.569885, 0.367116,
		34.271420, 37.074394, 52.105762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494320, 36.776077, 51.746891>,  <33.756809, 37.473316, 51.848782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494320, 36.776077, 51.746891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779549, 36.763977, 52.027065>,  <33.950687, 36.756718, 52.195171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779549, 36.763977, 52.027065>,  <33.494320, 36.776077, 51.746891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779549, 36.763977, 52.027065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611048, -0.516635, 0.599757,
		0.343729, -0.855671, -0.386881,
		0.713071, -0.030248, 0.700439,
		33.993469, 36.754902, 52.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491413, 36.125515, 51.974712>,  <33.494320, 36.776077, 51.746891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491413, 36.125515, 51.974712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663414, 36.341385, 52.264221>,  <33.766613, 36.470905, 52.437927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663414, 36.341385, 52.264221>,  <33.491413, 36.125515, 51.974712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663414, 36.341385, 52.264221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476313, -0.545419, 0.689670,
		0.766958, -0.641302, 0.022523,
		0.430002, 0.539676, 0.723774,
		33.792416, 36.503288, 52.481354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726536, 35.645454, 52.603241>,  <33.491413, 36.125515, 51.974712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726536, 35.645454, 52.603241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707649, 36.014297, 52.756859>,  <33.696316, 36.235603, 52.849030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707649, 36.014297, 52.756859>,  <33.726536, 35.645454, 52.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707649, 36.014297, 52.756859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421198, -0.367000, 0.829399,
		0.905738, -0.122593, 0.405720,
		-0.047221, 0.922107, 0.384042,
		33.693481, 36.290928, 52.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903805, 35.566143, 53.331989>,  <33.726536, 35.645454, 52.603241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903805, 35.566143, 53.331989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745583, 35.932487, 53.304447>,  <33.650650, 36.152294, 53.287922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745583, 35.932487, 53.304447>,  <33.903805, 35.566143, 53.331989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745583, 35.932487, 53.304447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361683, -0.086418, 0.928287,
		0.844228, 0.392094, 0.365433,
		-0.395556, 0.915857, -0.068857,
		33.626915, 36.207245, 53.283791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038822, 35.779633, 53.957455>,  <33.903805, 35.566143, 53.331989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038822, 35.779633, 53.957455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783936, 36.069069, 53.851345>,  <33.631004, 36.242733, 53.787678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783936, 36.069069, 53.851345>,  <34.038822, 35.779633, 53.957455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783936, 36.069069, 53.851345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474627, -0.097264, 0.874796,
		0.607195, 0.683339, 0.405415,
		-0.637215, 0.723593, -0.265273,
		33.592770, 36.286148, 53.771763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044182, 36.319920, 54.555950>,  <34.038822, 35.779633, 53.957455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044182, 36.319920, 54.555950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704781, 36.322029, 54.344284>,  <33.501141, 36.323296, 54.217285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704781, 36.322029, 54.344284>,  <34.044182, 36.319920, 54.555950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704781, 36.322029, 54.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510801, -0.269517, 0.816360,
		-0.138311, 0.962981, 0.231381,
		-0.848500, 0.005278, -0.529169,
		33.450230, 36.323612, 54.185532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485558, 36.553783, 54.995068>,  <34.044182, 36.319920, 54.555950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485558, 36.553783, 54.995068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290043, 36.339462, 54.719677>,  <33.172733, 36.210869, 54.554443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290043, 36.339462, 54.719677>,  <33.485558, 36.553783, 54.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290043, 36.339462, 54.719677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533248, -0.441096, 0.721859,
		-0.690457, 0.719968, -0.070111,
		-0.488789, -0.535799, -0.688480,
		33.143406, 36.178722, 54.513134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813728, 36.457355, 55.246433>,  <33.485558, 36.553783, 54.995068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813728, 36.457355, 55.246433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810555, 36.198654, 54.941368>,  <32.808651, 36.043434, 54.758327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810555, 36.198654, 54.941368>,  <32.813728, 36.457355, 55.246433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810555, 36.198654, 54.941368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553536, -0.632333, 0.541989,
		-0.832787, 0.426463, -0.352980,
		-0.007937, -0.646749, -0.762662,
		32.808174, 36.004631, 54.712570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136139, 36.319286, 55.157387>,  <32.813728, 36.457355, 55.246433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136139, 36.319286, 55.157387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349976, 36.004257, 55.034786>,  <32.478279, 35.815239, 54.961227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349976, 36.004257, 55.034786>,  <32.136139, 36.319286, 55.157387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349976, 36.004257, 55.034786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635454, -0.613699, 0.468585,
		-0.557141, -0.055738, -0.828545,
		0.534595, -0.787570, -0.306498,
		32.510353, 35.767986, 54.942837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639898, 35.787975, 54.879459>,  <32.136139, 36.319286, 55.157387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639898, 35.787975, 54.879459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970737, 35.577232, 54.957771>,  <32.169243, 35.450787, 55.004761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970737, 35.577232, 54.957771>,  <31.639898, 35.787975, 54.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970737, 35.577232, 54.957771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547518, -0.676535, 0.492468,
		-0.127004, -0.514515, -0.848024,
		0.827100, -0.526854, 0.195784,
		32.218868, 35.419178, 55.016506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426130, 35.126534, 54.857647>,  <31.639898, 35.787975, 54.879459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426130, 35.126534, 54.857647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775806, 35.102379, 55.050373>,  <31.985613, 35.087887, 55.166008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775806, 35.102379, 55.050373>,  <31.426130, 35.126534, 54.857647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775806, 35.102379, 55.050373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355470, -0.755545, 0.550266,
		0.330804, -0.652308, -0.681956,
		0.874191, -0.060385, 0.481813,
		32.038063, 35.084263, 55.194916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540655, 34.381111, 55.037643>,  <31.426130, 35.126534, 54.857647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540655, 34.381111, 55.037643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768703, 34.587662, 55.293243>,  <31.905533, 34.711590, 55.446602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768703, 34.587662, 55.293243>,  <31.540655, 34.381111, 55.037643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768703, 34.587662, 55.293243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258951, -0.625193, 0.736260,
		0.779682, -0.585227, -0.222721,
		0.570122, 0.516375, 0.638997,
		31.939741, 34.742573, 55.484943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062180, 33.983620, 55.353111>,  <31.540655, 34.381111, 55.037643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062180, 33.983620, 55.353111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938454, 34.285515, 55.584522>,  <31.864220, 34.466652, 55.723370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938454, 34.285515, 55.584522>,  <32.062180, 33.983620, 55.353111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938454, 34.285515, 55.584522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265657, -0.652720, 0.709495,
		0.913101, 0.065764, 0.402395,
		-0.309311, 0.754740, 0.578528,
		31.845661, 34.511936, 55.758080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199635, 33.722569, 56.062248>,  <32.062180, 33.983620, 55.353111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199635, 33.722569, 56.062248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953371, 34.026253, 56.146687>,  <31.805613, 34.208466, 56.197350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953371, 34.026253, 56.146687>,  <32.199635, 33.722569, 56.062248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953371, 34.026253, 56.146687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548921, -0.605380, 0.576368,
		0.565378, 0.238973, 0.789455,
		-0.615657, 0.759215, 0.211091,
		31.768675, 34.254017, 56.210014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067574, 33.796322, 56.812084>,  <32.199635, 33.722569, 56.062248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067574, 33.796322, 56.812084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764168, 33.931648, 56.589298>,  <31.582125, 34.012844, 56.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764168, 33.931648, 56.589298>,  <32.067574, 33.796322, 56.812084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764168, 33.931648, 56.589298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623239, -0.626269, 0.468359,
		-0.190354, 0.702375, 0.685882,
		-0.758511, 0.338314, -0.556961,
		31.536615, 34.033142, 56.422211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466475, 34.069942, 57.263515>,  <32.067574, 33.796322, 56.812084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466475, 34.069942, 57.263515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287197, 33.953506, 56.925430>,  <31.179630, 33.883644, 56.722580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287197, 33.953506, 56.925430>,  <31.466475, 34.069942, 57.263515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287197, 33.953506, 56.925430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465610, -0.731107, 0.498689,
		-0.763106, 0.617050, 0.192143,
		-0.448192, -0.291089, -0.845216,
		31.152739, 33.866180, 56.671864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923923, 34.748177, 57.174065>,  <31.466475, 34.069942, 57.263515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923923, 34.748177, 57.174065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965725, 35.134201, 57.270172>,  <30.990807, 35.365818, 57.327835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965725, 35.134201, 57.270172>,  <30.923923, 34.748177, 57.174065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965725, 35.134201, 57.270172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924750, -0.183188, 0.333586,
		0.365946, 0.187324, -0.911588,
		0.104503, 0.965066, 0.240265,
		30.997076, 35.423721, 57.342251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534964, 35.112099, 56.904911>,  <30.923923, 34.748177, 57.174065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534964, 35.112099, 56.904911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435862, 35.295364, 57.246368>,  <31.376400, 35.405323, 57.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435862, 35.295364, 57.246368>,  <31.534964, 35.112099, 56.904911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435862, 35.295364, 57.246368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959049, -0.008855, 0.283101,
		0.137266, 0.888823, -0.437209,
		-0.247755, 0.458165, 0.853641,
		31.361536, 35.432816, 57.502460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881884, 35.879292, 57.002495>,  <31.534964, 35.112099, 56.904911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881884, 35.879292, 57.002495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811625, 35.714737, 57.360245>,  <31.769468, 35.616005, 57.574894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811625, 35.714737, 57.360245>,  <31.881884, 35.879292, 57.002495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811625, 35.714737, 57.360245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983021, -0.024309, 0.181876,
		-0.053080, 0.911137, 0.408671,
		-0.175648, -0.411386, 0.894376,
		31.758930, 35.591320, 57.628559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277847, 36.338181, 57.443611>,  <31.881884, 35.879292, 57.002495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277847, 36.338181, 57.443611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216011, 35.949982, 57.517620>,  <32.178909, 35.717060, 57.562023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216011, 35.949982, 57.517620>,  <32.277847, 36.338181, 57.443611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216011, 35.949982, 57.517620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979383, -0.175181, -0.100598,
		0.130042, 0.165652, 0.977573,
		-0.154588, -0.970500, 0.185018,
		32.169636, 35.658833, 57.573124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706890, 36.182076, 57.992989>,  <32.277847, 36.338181, 57.443611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706890, 36.182076, 57.992989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667976, 35.859161, 57.760155>,  <32.644627, 35.665413, 57.620453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667976, 35.859161, 57.760155>,  <32.706890, 36.182076, 57.992989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667976, 35.859161, 57.760155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990957, -0.024265, -0.131965,
		0.092410, -0.589658, 0.802349,
		-0.097283, -0.807288, -0.582084,
		32.638790, 35.616974, 57.585529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203876, 35.792099, 58.212856>,  <32.706890, 36.182076, 57.992989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203876, 35.792099, 58.212856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125988, 35.629776, 57.855667>,  <33.079254, 35.532383, 57.641354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125988, 35.629776, 57.855667>,  <33.203876, 35.792099, 58.212856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125988, 35.629776, 57.855667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970555, 0.051887, -0.235224,
		0.141790, -0.912483, 0.383759,
		-0.194726, -0.405811, -0.892972,
		33.067570, 35.508034, 57.587776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830544, 35.327618, 58.162128>,  <33.203876, 35.792099, 58.212856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830544, 35.327618, 58.162128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673668, 35.414391, 57.804550>,  <33.579544, 35.466454, 57.590004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673668, 35.414391, 57.804550>,  <33.830544, 35.327618, 58.162128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673668, 35.414391, 57.804550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918795, 0.139675, -0.369196,
		0.044772, -0.966143, -0.254093,
		-0.392187, 0.216930, -0.893941,
		33.556011, 35.479469, 57.536369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238682, 34.892616, 57.681217>,  <33.830544, 35.327618, 58.162128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238682, 34.892616, 57.681217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085236, 35.201180, 57.478134>,  <33.993168, 35.386318, 57.356285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085236, 35.201180, 57.478134>,  <34.238682, 34.892616, 57.681217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085236, 35.201180, 57.478134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841157, 0.064957, -0.536876,
		-0.381173, -0.633013, -0.673796,
		-0.383617, 0.771411, -0.507704,
		33.970150, 35.432602, 57.325825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476955, 34.765076, 56.940586>,  <34.238682, 34.892616, 57.681217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476955, 34.765076, 56.940586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347504, 35.143204, 56.924416>,  <34.269833, 35.370079, 56.914711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347504, 35.143204, 56.924416>,  <34.476955, 34.765076, 56.940586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347504, 35.143204, 56.924416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774930, 0.240294, -0.584587,
		-0.542906, -0.220521, -0.810323,
		-0.323630, 0.945320, -0.040431,
		34.250416, 35.426800, 56.912285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512566, 35.007416, 56.192020>,  <34.476955, 34.765076, 56.940586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512566, 35.007416, 56.192020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479614, 35.339035, 56.413254>,  <34.459843, 35.538006, 56.545994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479614, 35.339035, 56.413254>,  <34.512566, 35.007416, 56.192020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479614, 35.339035, 56.413254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622712, 0.476114, -0.620923,
		-0.778103, 0.293259, -0.555477,
		-0.082379, 0.829044, 0.553082,
		34.454899, 35.587749, 56.579178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489365, 35.575035, 55.790470>,  <34.512566, 35.007416, 56.192020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489365, 35.575035, 55.790470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611916, 35.738045, 56.134575>,  <34.685448, 35.835850, 56.341038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611916, 35.738045, 56.134575>,  <34.489365, 35.575035, 55.790470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611916, 35.738045, 56.134575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669868, 0.549782, -0.499017,
		-0.676319, 0.729152, -0.104546,
		0.306381, 0.407527, 0.860263,
		34.703831, 35.860302, 56.392654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641075, 36.269718, 55.649204>,  <34.489365, 35.575035, 55.790470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641075, 36.269718, 55.649204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844173, 36.223923, 55.990749>,  <34.966034, 36.196445, 56.195679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844173, 36.223923, 55.990749>,  <34.641075, 36.269718, 55.649204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844173, 36.223923, 55.990749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756439, 0.533589, -0.378263,
		-0.412306, 0.837958, 0.357533,
		0.507744, -0.114491, 0.853866,
		34.996498, 36.189575, 56.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762032, 36.864849, 55.847965>,  <34.641075, 36.269718, 55.649204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762032, 36.864849, 55.847965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046135, 36.648109, 56.027718>,  <35.216595, 36.518066, 56.135567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046135, 36.648109, 56.027718>,  <34.762032, 36.864849, 55.847965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046135, 36.648109, 56.027718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690745, 0.659498, -0.296536,
		-0.135688, 0.521022, 0.842689,
		0.710254, -0.541847, 0.449379,
		35.259212, 36.485554, 56.162533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173950, 37.383453, 56.298107>,  <34.762032, 36.864849, 55.847965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173950, 37.383453, 56.298107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402908, 37.060638, 56.240082>,  <35.540283, 36.866947, 56.205269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402908, 37.060638, 56.240082>,  <35.173950, 37.383453, 56.298107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402908, 37.060638, 56.240082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771734, 0.590011, -0.237305,
		0.277103, 0.023884, 0.960543,
		0.572399, -0.807042, -0.145062,
		35.574627, 36.818527, 56.196564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868988, 37.539043, 56.554176>,  <35.173950, 37.383453, 56.298107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868988, 37.539043, 56.554176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957977, 37.199005, 56.363243>,  <36.011372, 36.994984, 56.248684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957977, 37.199005, 56.363243>,  <35.868988, 37.539043, 56.554176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957977, 37.199005, 56.363243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905306, 0.361839, -0.222470,
		0.361839, -0.382642, 0.850092,
		0.222470, -0.850092, -0.477336,
		36.024719, 36.943977, 56.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499901, 37.376705, 56.786064>,  <35.868988, 37.539043, 56.554176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499901, 37.376705, 56.786064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459564, 37.182983, 56.438438>,  <36.435364, 37.066750, 56.229862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459564, 37.182983, 56.438438>,  <36.499901, 37.376705, 56.786064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459564, 37.182983, 56.438438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950638, 0.210754, -0.227750,
		0.293460, -0.849134, 0.439150,
		-0.100837, -0.484308, -0.869067,
		36.429314, 37.037689, 56.177719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127926, 36.977783, 56.679573>,  <36.499901, 37.376705, 56.786064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127926, 36.977783, 56.679573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966434, 37.022041, 56.316307>,  <36.869541, 37.048595, 56.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966434, 37.022041, 56.316307>,  <37.127926, 36.977783, 56.679573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966434, 37.022041, 56.316307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893065, 0.263150, -0.364949,
		0.198602, -0.958389, -0.205057,
		-0.403724, 0.110650, -0.908165,
		36.845318, 37.055237, 56.043858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612679, 36.585217, 56.228802>,  <37.127926, 36.977783, 56.679573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612679, 36.585217, 56.228802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408669, 36.864792, 56.028259>,  <37.286263, 37.032539, 55.907932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408669, 36.864792, 56.028259>,  <37.612679, 36.585217, 56.228802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408669, 36.864792, 56.028259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838892, 0.275373, -0.469500,
		-0.190093, -0.660040, -0.726782,
		-0.510025, 0.698940, -0.501355,
		37.255661, 37.074474, 55.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997391, 36.579117, 55.655025>,  <37.612679, 36.585217, 56.228802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997391, 36.579117, 55.655025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784420, 36.915245, 55.614258>,  <37.656639, 37.116920, 55.589798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784420, 36.915245, 55.614258>,  <37.997391, 36.579117, 55.655025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784420, 36.915245, 55.614258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723377, 0.389157, -0.570335,
		-0.439601, -0.377385, -0.815065,
		-0.532424, 0.840320, -0.101918,
		37.624691, 37.167339, 55.583683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971184, 36.727329, 54.975307>,  <37.997391, 36.579117, 55.655025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971184, 36.727329, 54.975307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914227, 37.075233, 55.164299>,  <37.880051, 37.283978, 55.277695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914227, 37.075233, 55.164299>,  <37.971184, 36.727329, 54.975307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914227, 37.075233, 55.164299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751666, 0.405588, -0.520092,
		-0.643990, 0.281092, -0.711523,
		-0.142392, 0.869762, 0.472482,
		37.871510, 37.336163, 55.306042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933315, 37.289387, 54.533798>,  <37.971184, 36.727329, 54.975307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933315, 37.289387, 54.533798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043621, 37.482452, 54.866302>,  <38.109806, 37.598289, 55.065804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043621, 37.482452, 54.866302>,  <37.933315, 37.289387, 54.533798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043621, 37.482452, 54.866302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614098, 0.576832, -0.538654,
		-0.739485, 0.659016, -0.137332,
		0.275764, 0.482662, 0.831259,
		38.126350, 37.627251, 55.115681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863171, 37.999405, 54.393913>,  <37.933315, 37.289387, 54.533798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863171, 37.999405, 54.393913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132820, 37.965515, 54.687408>,  <38.294609, 37.945179, 54.863506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132820, 37.965515, 54.687408>,  <37.863171, 37.999405, 54.393913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132820, 37.965515, 54.687408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613850, 0.616750, -0.492756,
		-0.410784, 0.782586, 0.467777,
		0.674125, -0.084729, 0.733741,
		38.335056, 37.940098, 54.907532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165047, 38.677986, 54.416592>,  <37.863171, 37.999405, 54.393913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165047, 38.677986, 54.416592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432487, 38.476425, 54.635330>,  <38.592953, 38.355488, 54.766575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432487, 38.476425, 54.635330>,  <38.165047, 38.677986, 54.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432487, 38.476425, 54.635330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742833, 0.486361, -0.460057,
		-0.034141, 0.713815, 0.699502,
		0.668606, -0.503906, 0.546849,
		38.633068, 38.325253, 54.799385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534946, 39.129890, 54.778271>,  <38.165047, 38.677986, 54.416592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534946, 39.129890, 54.778271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780441, 38.814087, 54.777843>,  <38.927738, 38.624603, 54.777588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780441, 38.814087, 54.777843>,  <38.534946, 39.129890, 54.778271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780441, 38.814087, 54.777843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683160, 0.531739, -0.500545,
		0.395750, 0.306477, 0.865710,
		0.613737, -0.789510, -0.001064,
		38.964561, 38.577232, 54.777523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152401, 39.406662, 54.800171>,  <38.534946, 39.129890, 54.778271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152401, 39.406662, 54.800171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252613, 39.032631, 54.699879>,  <39.312740, 38.808212, 54.639702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252613, 39.032631, 54.699879>,  <39.152401, 39.406662, 54.800171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252613, 39.032631, 54.699879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729505, 0.352605, -0.586082,
		0.636440, -0.036075, 0.770482,
		0.250533, -0.935077, -0.250729,
		39.327774, 38.752110, 54.624660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908569, 39.406120, 54.821930>,  <39.152401, 39.406662, 54.800171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908569, 39.406120, 54.821930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814255, 39.097549, 54.585522>,  <39.757664, 38.912407, 54.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814255, 39.097549, 54.585522>,  <39.908569, 39.406120, 54.821930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814255, 39.097549, 54.585522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753448, 0.238991, -0.612535,
		0.613774, -0.589733, 0.524878,
		-0.235791, -0.771426, -0.591019,
		39.743519, 38.866123, 54.408215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621578, 39.034168, 54.491943>,  <39.908569, 39.406120, 54.821930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621578, 39.034168, 54.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327713, 38.909042, 54.251137>,  <40.151394, 38.833965, 54.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327713, 38.909042, 54.251137>,  <40.621578, 39.034168, 54.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327713, 38.909042, 54.251137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579587, 0.171846, -0.796585,
		0.352637, -0.934139, 0.055054,
		-0.734661, -0.312814, -0.602014,
		40.107315, 38.815197, 54.070534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941368, 38.513916, 54.093426>,  <40.621578, 39.034168, 54.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941368, 38.513916, 54.093426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626518, 38.648972, 53.886955>,  <40.437611, 38.730003, 53.763073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626518, 38.648972, 53.886955>,  <40.941368, 38.513916, 54.093426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626518, 38.648972, 53.886955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567031, 0.066785, -0.820985,
		-0.242725, -0.938903, -0.244020,
		-0.787122, 0.337640, -0.516176,
		40.390381, 38.750263, 53.732101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873425, 38.122604, 53.444813>,  <40.941368, 38.513916, 54.093426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873425, 38.122604, 53.444813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 38.453590, 53.370506>,  <40.534294, 38.652184, 53.325924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661469, 38.453590, 53.370506>,  <40.873425, 38.122604, 53.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661469, 38.453590, 53.370506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427022, 0.071081, -0.901443,
		-0.732711, -0.556995, -0.391012,
		-0.529893, 0.827468, -0.185767,
		40.502502, 38.701832, 53.314777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593761, 37.996784, 52.715961>,  <40.873425, 38.122604, 53.444813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593761, 37.996784, 52.715961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607983, 38.381538, 52.824409>,  <40.616516, 38.612392, 52.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607983, 38.381538, 52.824409>,  <40.593761, 37.996784, 52.715961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607983, 38.381538, 52.824409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342567, 0.243124, -0.907490,
		-0.938820, 0.125144, -0.320866,
		0.035556, 0.961889, 0.271120,
		40.618649, 38.670105, 52.905746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263802, 38.489704, 52.175934>,  <40.593761, 37.996784, 52.715961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263802, 38.489704, 52.175934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446518, 38.770836, 52.394058>,  <40.556149, 38.939514, 52.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446518, 38.770836, 52.394058>,  <40.263802, 38.489704, 52.175934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446518, 38.770836, 52.394058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475316, 0.325325, -0.817458,
		-0.751940, 0.632607, -0.185460,
		0.456795, 0.702831, 0.545313,
		40.583557, 38.981686, 52.557652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200718, 39.196018, 51.769718>,  <40.263802, 38.489704, 52.175934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200718, 39.196018, 51.769718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483223, 39.243103, 52.048954>,  <40.652725, 39.271355, 52.216496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483223, 39.243103, 52.048954>,  <40.200718, 39.196018, 51.769718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483223, 39.243103, 52.048954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558761, 0.512816, -0.651771,
		-0.434712, 0.850391, 0.296413,
		0.706266, 0.117709, 0.698093,
		40.695103, 39.278416, 52.258381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410675, 39.957386, 51.766701>,  <40.200718, 39.196018, 51.769718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410675, 39.957386, 51.766701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700127, 39.720886, 51.909126>,  <40.873798, 39.578987, 51.994579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700127, 39.720886, 51.909126>,  <40.410675, 39.957386, 51.766701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700127, 39.720886, 51.909126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683474, 0.542100, -0.488867,
		0.096022, 0.597117, 0.796386,
		0.723632, -0.591251, 0.356061,
		40.917217, 39.543510, 52.015945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948502, 40.429825, 52.028454>,  <40.410675, 39.957386, 51.766701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948502, 40.429825, 52.028454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145889, 40.086731, 51.970795>,  <41.264320, 39.880875, 51.936199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145889, 40.086731, 51.970795>,  <40.948502, 40.429825, 52.028454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145889, 40.086731, 51.970795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775897, 0.509014, -0.372678,
		0.393036, 0.072056, 0.916696,
		0.493465, -0.857737, -0.144152,
		41.293930, 39.829411, 51.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640648, 40.473606, 52.215145>,  <40.948502, 40.429825, 52.028454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640648, 40.473606, 52.215145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659222, 40.157593, 51.970623>,  <41.670364, 39.967987, 51.823910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659222, 40.157593, 51.970623>,  <41.640648, 40.473606, 52.215145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659222, 40.157593, 51.970623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786399, 0.406271, -0.465317,
		0.615971, -0.459123, 0.640145,
		0.046435, -0.790031, -0.611305,
		41.673153, 39.920582, 51.787231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287205, 40.463161, 52.067722>,  <41.640648, 40.473606, 52.215145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287205, 40.463161, 52.067722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134605, 40.237335, 51.774948>,  <42.043045, 40.101841, 51.599285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134605, 40.237335, 51.774948>,  <42.287205, 40.463161, 52.067722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134605, 40.237335, 51.774948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630135, 0.420487, -0.652779,
		0.676304, -0.710251, 0.195337,
		-0.381501, -0.564565, -0.731931,
		42.020157, 40.067966, 51.555370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798393, 40.430111, 51.639572>,  <42.287205, 40.463161, 52.067722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798393, 40.430111, 51.639572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501423, 40.295410, 51.407917>,  <42.323238, 40.214588, 51.268925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501423, 40.295410, 51.407917>,  <42.798393, 40.430111, 51.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501423, 40.295410, 51.407917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552271, 0.181678, -0.813628,
		0.379206, -0.923900, 0.051095,
		-0.742429, -0.336751, -0.579136,
		42.278694, 40.194386, 51.234177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043228, 39.818222, 51.190468>,  <42.798393, 40.430111, 51.639572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043228, 39.818222, 51.190468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732918, 40.018860, 51.037331>,  <42.546730, 40.139244, 50.945446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732918, 40.018860, 51.037331>,  <43.043228, 39.818222, 51.190468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732918, 40.018860, 51.037331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588376, 0.355791, -0.726104,
		-0.227997, -0.788552, -0.571141,
		-0.775778, 0.501595, -0.382846,
		42.500183, 40.169338, 50.922478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156116, 39.660969, 50.469501>,  <43.043228, 39.818222, 51.190468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156116, 39.660969, 50.469501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894859, 39.963837, 50.473446>,  <42.738106, 40.145557, 50.475811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894859, 39.963837, 50.473446>,  <43.156116, 39.660969, 50.469501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894859, 39.963837, 50.473446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431369, 0.382741, -0.816964,
		-0.622353, -0.529343, -0.576604,
		-0.653144, 0.757169, 0.009858,
		42.698917, 40.190987, 50.476402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856541, 39.705898, 49.708321>,  <43.156116, 39.660969, 50.469501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856541, 39.705898, 49.708321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790527, 40.058083, 49.886108>,  <42.750919, 40.269394, 49.992783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790527, 40.058083, 49.886108>,  <42.856541, 39.705898, 49.708321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790527, 40.058083, 49.886108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477674, 0.465624, -0.744998,
		-0.862898, 0.089367, -0.497414,
		-0.165029, 0.880459, 0.444474,
		42.741020, 40.322220, 50.019451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734062, 40.177513, 49.230629>,  <42.856541, 39.705898, 49.708321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734062, 40.177513, 49.230629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789291, 40.462135, 49.506203>,  <42.822430, 40.632908, 49.671547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789291, 40.462135, 49.506203>,  <42.734062, 40.177513, 49.230629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789291, 40.462135, 49.506203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534468, 0.532089, -0.656678,
		-0.833835, 0.458879, -0.306838,
		0.138070, 0.711556, 0.688930,
		42.830711, 40.675602, 49.712883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589237, 40.824726, 48.902901>,  <42.734062, 40.177513, 49.230629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589237, 40.824726, 48.902901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825745, 40.902718, 49.215923>,  <42.967648, 40.949512, 49.403736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825745, 40.902718, 49.215923>,  <42.589237, 40.824726, 48.902901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825745, 40.902718, 49.215923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603923, 0.536048, -0.589856,
		-0.534493, 0.821364, 0.199197,
		0.591265, 0.194974, 0.782554,
		43.003124, 40.961208, 49.450691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673134, 41.552822, 48.901882>,  <42.589237, 40.824726, 48.902901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673134, 41.552822, 48.901882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983257, 41.431808, 49.123646>,  <43.169331, 41.359200, 49.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983257, 41.431808, 49.123646>,  <42.673134, 41.552822, 48.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983257, 41.431808, 49.123646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617392, 0.548045, -0.564334,
		-0.133110, 0.779821, 0.611687,
		0.775312, -0.302532, 0.554406,
		43.215851, 41.341049, 49.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046253, 42.168121, 49.030800>,  <42.673134, 41.552822, 48.901882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046253, 42.168121, 49.030800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290695, 41.856567, 49.087215>,  <43.437363, 41.669636, 49.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290695, 41.856567, 49.087215>,  <43.046253, 42.168121, 49.030800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290695, 41.856567, 49.087215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738310, 0.496644, -0.456336,
		0.285387, 0.382998, 0.878559,
		0.611107, -0.778882, 0.141035,
		43.474026, 41.622902, 49.129524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561695, 42.353992, 49.427162>,  <43.046253, 42.168121, 49.030800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561695, 42.353992, 49.427162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723221, 42.046417, 49.228901>,  <43.820137, 41.861870, 49.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723221, 42.046417, 49.228901>,  <43.561695, 42.353992, 49.427162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723221, 42.046417, 49.228901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835489, 0.530681, -0.142604,
		0.372685, -0.356524, 0.856736,
		0.403811, -0.768940, -0.495649,
		43.844364, 41.815735, 49.080208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527798, 42.131187, 50.148342>,  <43.561695, 42.353992, 49.427162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527798, 42.131187, 50.148342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593834, 42.517281, 50.229404>,  <43.633457, 42.748936, 50.278042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593834, 42.517281, 50.229404>,  <43.527798, 42.131187, 50.148342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593834, 42.517281, 50.229404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758568, -0.007051, 0.651556,
		0.630333, -0.261292, 0.731031,
		0.165092, 0.965234, 0.202652,
		43.643360, 42.806850, 50.290199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701519, 42.194771, 50.815575>,  <43.527798, 42.131187, 50.148342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701519, 42.194771, 50.815575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550995, 42.554199, 50.725281>,  <43.460682, 42.769855, 50.671104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550995, 42.554199, 50.725281>,  <43.701519, 42.194771, 50.815575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550995, 42.554199, 50.725281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657147, -0.087112, 0.748712,
		0.653108, 0.430091, 0.623276,
		-0.376309, 0.898573, -0.225739,
		43.438103, 42.823772, 50.657558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620079, 42.456390, 51.504597>,  <43.701519, 42.194771, 50.815575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620079, 42.456390, 51.504597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379951, 42.658401, 51.256542>,  <43.235874, 42.779610, 51.107708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379951, 42.658401, 51.256542>,  <43.620079, 42.456390, 51.504597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379951, 42.658401, 51.256542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723090, -0.011448, 0.690659,
		0.341702, 0.863028, 0.372051,
		-0.600318, 0.505026, -0.620135,
		43.199856, 42.809910, 51.070503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465939, 43.186428, 51.800003>,  <43.620079, 42.456390, 51.504597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465939, 43.186428, 51.800003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171844, 43.103340, 51.541927>,  <42.995388, 43.053486, 51.387081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171844, 43.103340, 51.541927>,  <43.465939, 43.186428, 51.800003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171844, 43.103340, 51.541927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675451, 0.145227, 0.722963,
		-0.056476, 0.967347, -0.247083,
		-0.735239, -0.207722, -0.645194,
		42.951271, 43.041023, 51.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914158, 43.655865, 51.870480>,  <43.465939, 43.186428, 51.800003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914158, 43.655865, 51.870480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708382, 43.368759, 51.682793>,  <42.584915, 43.196495, 51.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708382, 43.368759, 51.682793>,  <42.914158, 43.655865, 51.870480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708382, 43.368759, 51.682793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797780, 0.199937, 0.568834,
		-0.314474, 0.666964, -0.675473,
		-0.514444, -0.717763, -0.469216,
		42.554047, 43.153431, 51.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274509, 43.961845, 51.764645>,  <42.914158, 43.655865, 51.870480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274509, 43.961845, 51.764645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214199, 43.569473, 51.715591>,  <42.178013, 43.334049, 51.686157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214199, 43.569473, 51.715591>,  <42.274509, 43.961845, 51.764645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214199, 43.569473, 51.715591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777262, 0.040981, 0.627840,
		-0.610842, 0.189987, -0.768620,
		-0.150780, -0.980931, -0.122636,
		42.168964, 43.275192, 51.678799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505257, 43.833569, 51.656013>,  <42.274509, 43.961845, 51.764645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505257, 43.833569, 51.656013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659683, 43.492271, 51.796257>,  <41.752338, 43.287495, 51.880402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659683, 43.492271, 51.796257>,  <41.505257, 43.833569, 51.656013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659683, 43.492271, 51.796257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783008, -0.102169, 0.613563,
		-0.487697, -0.511408, -0.707541,
		0.386069, -0.853243, 0.350609,
		41.775505, 43.236298, 51.901440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918125, 43.401299, 51.616272>,  <41.505257, 43.833569, 51.656013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918125, 43.401299, 51.616272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179405, 43.246544, 51.876625>,  <41.336174, 43.153690, 52.032837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179405, 43.246544, 51.876625>,  <40.918125, 43.401299, 51.616272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179405, 43.246544, 51.876625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751019, -0.221548, 0.622002,
		-0.096441, -0.895119, -0.435273,
		0.653199, -0.386884, 0.650885,
		41.375366, 43.130478, 52.071892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536533, 42.757610, 51.920441>,  <40.918125, 43.401299, 51.616272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536533, 42.757610, 51.920441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836746, 42.874664, 52.157444>,  <41.016876, 42.944897, 52.299644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836746, 42.874664, 52.157444>,  <40.536533, 42.757610, 51.920441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836746, 42.874664, 52.157444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555527, -0.206187, 0.805529,
		0.357895, -0.933729, 0.007817,
		0.750534, 0.292637, 0.592505,
		41.061905, 42.962456, 52.335194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619137, 42.220577, 52.284019>,  <40.536533, 42.757610, 51.920441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619137, 42.220577, 52.284019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769867, 42.520683, 52.501312>,  <40.860306, 42.700748, 52.631687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769867, 42.520683, 52.501312>,  <40.619137, 42.220577, 52.284019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769867, 42.520683, 52.501312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434447, -0.374804, 0.819011,
		0.818082, -0.544630, 0.184716,
		0.376825, 0.750267, 0.543233,
		40.882915, 42.745762, 52.664284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515903, 41.966805, 52.908970>,  <40.619137, 42.220577, 52.284019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515903, 41.966805, 52.908970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590858, 42.349434, 52.998276>,  <40.635830, 42.579014, 53.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590858, 42.349434, 52.998276>,  <40.515903, 41.966805, 52.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590858, 42.349434, 52.998276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505052, -0.101119, 0.857145,
		0.842501, -0.273378, 0.464172,
		0.187388, 0.956577, 0.223263,
		40.647076, 42.636406, 53.065254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879105, 42.016628, 53.614120>,  <40.515903, 41.966805, 52.908970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879105, 42.016628, 53.614120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693424, 42.363235, 53.540726>,  <40.582016, 42.571198, 53.496689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693424, 42.363235, 53.540726>,  <40.879105, 42.016628, 53.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693424, 42.363235, 53.540726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417969, -0.031659, 0.907910,
		0.780908, 0.498147, 0.376872,
		-0.464203, 0.866515, -0.183487,
		40.554165, 42.623188, 53.485680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014961, 42.464966, 54.260586>,  <40.879105, 42.016628, 53.614120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014961, 42.464966, 54.260586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686676, 42.604881, 54.079884>,  <40.489704, 42.688831, 53.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686676, 42.604881, 54.079884>,  <41.014961, 42.464966, 54.260586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686676, 42.604881, 54.079884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549859, -0.268763, 0.790835,
		0.155211, 0.897448, 0.412911,
		-0.820709, 0.349789, -0.451756,
		40.440464, 42.709820, 53.944355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660557, 42.725441, 54.841446>,  <41.014961, 42.464966, 54.260586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660557, 42.725441, 54.841446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396591, 42.712677, 54.541180>,  <40.238213, 42.705017, 54.361019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396591, 42.712677, 54.541180>,  <40.660557, 42.725441, 54.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396591, 42.712677, 54.541180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720176, -0.257914, 0.644070,
		-0.214160, 0.965641, 0.147219,
		-0.659911, -0.031910, -0.750666,
		40.198620, 42.703102, 54.315979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103588, 43.073139, 55.156837>,  <40.660557, 42.725441, 54.841446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103588, 43.073139, 55.156837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983364, 42.873199, 54.831921>,  <39.911228, 42.753235, 54.636971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983364, 42.873199, 54.831921>,  <40.103588, 43.073139, 55.156837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983364, 42.873199, 54.831921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698962, -0.464034, 0.544173,
		-0.648934, 0.731317, -0.209905,
		-0.300560, -0.499848, -0.812290,
		39.893196, 42.723244, 54.588234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378647, 43.038685, 55.165581>,  <40.103588, 43.073139, 55.156837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378647, 43.038685, 55.165581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471771, 42.720047, 54.942429>,  <39.527645, 42.528862, 54.808537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471771, 42.720047, 54.942429>,  <39.378647, 43.038685, 55.165581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471771, 42.720047, 54.942429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653069, -0.553120, 0.517261,
		-0.720623, 0.243909, -0.649007,
		0.232814, -0.796597, -0.557880,
		39.541615, 42.481068, 54.775066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728947, 42.781784, 55.102428>,  <39.378647, 43.038685, 55.165581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728947, 42.781784, 55.102428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006874, 42.497902, 55.055878>,  <39.173630, 42.327572, 55.027946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006874, 42.497902, 55.055878>,  <38.728947, 42.781784, 55.102428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006874, 42.497902, 55.055878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584264, -0.651392, 0.484071,
		-0.419356, -0.268345, -0.867255,
		0.694821, -0.709704, -0.116381,
		39.215321, 42.284992, 55.020962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352707, 42.228783, 54.865662>,  <38.728947, 42.781784, 55.102428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352707, 42.228783, 54.865662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695549, 42.046501, 54.961746>,  <38.901257, 41.937134, 55.019398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695549, 42.046501, 54.961746>,  <38.352707, 42.228783, 54.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695549, 42.046501, 54.961746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514838, -0.773639, 0.369356,
		0.017524, -0.440250, -0.897704,
		0.857108, -0.455700, 0.240215,
		38.952682, 41.909790, 55.033810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197788, 41.529720, 54.780575>,  <38.352707, 42.228783, 54.865662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197788, 41.529720, 54.780575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519699, 41.529602, 55.018005>,  <38.712845, 41.529530, 55.160465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519699, 41.529602, 55.018005>,  <38.197788, 41.529720, 54.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519699, 41.529602, 55.018005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421073, -0.705104, 0.570548,
		0.418365, -0.709104, -0.567576,
		0.804778, -0.000294, 0.593576,
		38.761131, 41.529514, 55.196079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590931, 40.828140, 54.708542>,  <38.197788, 41.529720, 54.780575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590931, 40.828140, 54.708542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665443, 40.970383, 55.074894>,  <38.710152, 41.055729, 55.294704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665443, 40.970383, 55.074894>,  <38.590931, 40.828140, 54.708542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665443, 40.970383, 55.074894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266123, -0.879089, 0.395450,
		0.945769, -0.317401, -0.069118,
		0.186277, 0.355611, 0.915883,
		38.721325, 41.077065, 55.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759888, 40.297882, 55.084892>,  <38.590931, 40.828140, 54.708542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759888, 40.297882, 55.084892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673149, 40.545982, 55.386425>,  <38.621105, 40.694843, 55.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673149, 40.545982, 55.386425>,  <38.759888, 40.297882, 55.084892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673149, 40.545982, 55.386425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404860, -0.759807, 0.508706,
		0.888294, -0.194887, 0.415876,
		-0.216845, 0.620252, 0.753834,
		38.608097, 40.732059, 55.612576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862503, 39.941616, 55.686531>,  <38.759888, 40.297882, 55.084892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862503, 39.941616, 55.686531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605667, 40.236526, 55.770576>,  <38.451565, 40.413471, 55.821003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605667, 40.236526, 55.770576>,  <38.862503, 39.941616, 55.686531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605667, 40.236526, 55.770576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489888, -0.605411, 0.627286,
		0.589686, 0.299843, 0.749910,
		-0.642091, 0.737273, 0.210113,
		38.413040, 40.457710, 55.833611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487354, 39.745388, 56.317348>,  <38.862503, 39.941616, 55.686531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487354, 39.745388, 56.317348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251373, 40.047340, 56.202728>,  <38.109783, 40.228512, 56.133957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251373, 40.047340, 56.202728>,  <38.487354, 39.745388, 56.317348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251373, 40.047340, 56.202728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753645, -0.387450, 0.530944,
		0.289775, 0.529190, 0.797489,
		-0.589957, 0.754878, -0.286548,
		38.074387, 40.273804, 56.116764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110558, 39.944969, 56.989838>,  <38.487354, 39.745388, 56.317348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110558, 39.944969, 56.989838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889732, 40.054260, 56.674732>,  <37.757236, 40.119835, 56.485668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889732, 40.054260, 56.674732>,  <38.110558, 39.944969, 56.989838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889732, 40.054260, 56.674732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806171, -0.416113, 0.420641,
		-0.212870, 0.867293, 0.449987,
		-0.552065, 0.273225, -0.787764,
		37.724113, 40.136227, 56.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542255, 40.186279, 57.330711>,  <38.110558, 39.944969, 56.989838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542255, 40.186279, 57.330711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444191, 40.116249, 56.949295>,  <37.385353, 40.074230, 56.720444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444191, 40.116249, 56.949295>,  <37.542255, 40.186279, 57.330711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444191, 40.116249, 56.949295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801141, -0.517302, 0.300952,
		-0.545959, 0.837704, -0.013437,
		-0.245157, -0.175072, -0.953545,
		37.370644, 40.063728, 56.663231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888168, 40.401897, 57.283360>,  <37.542255, 40.186279, 57.330711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888168, 40.401897, 57.283360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938843, 40.149353, 56.977333>,  <36.969250, 39.997826, 56.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938843, 40.149353, 56.977333>,  <36.888168, 40.401897, 57.283360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938843, 40.149353, 56.977333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953308, -0.290656, 0.081998,
		-0.274142, 0.718957, -0.638707,
		0.126691, -0.631364, -0.765068,
		36.976849, 39.959946, 56.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234753, 40.414852, 57.039940>,  <36.888168, 40.401897, 57.283360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234753, 40.414852, 57.039940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419815, 40.094231, 56.888435>,  <36.530853, 39.901859, 56.797531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419815, 40.094231, 56.888435>,  <36.234753, 40.414852, 57.039940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419815, 40.094231, 56.888435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834334, -0.538118, 0.119650,
		-0.299723, 0.260655, -0.917728,
		0.462658, -0.801554, -0.378760,
		36.558613, 39.853764, 56.774807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888145, 40.249577, 56.506557>,  <36.234753, 40.414852, 57.039940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888145, 40.249577, 56.506557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075485, 39.908035, 56.597401>,  <36.187889, 39.703110, 56.651909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075485, 39.908035, 56.597401>,  <35.888145, 40.249577, 56.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075485, 39.908035, 56.597401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878392, -0.422248, 0.223910,
		-0.095289, -0.304362, -0.947779,
		0.468347, -0.853857, 0.227113,
		36.215988, 39.651878, 56.665535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371033, 39.765717, 56.335705>,  <35.888145, 40.249577, 56.506557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371033, 39.765717, 56.335705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605541, 39.532227, 56.560402>,  <35.746246, 39.392132, 56.695221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605541, 39.532227, 56.560402>,  <35.371033, 39.765717, 56.335705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605541, 39.532227, 56.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797081, -0.539517, 0.271262,
		0.144727, -0.606786, -0.781578,
		0.586273, -0.583723, 0.561741,
		35.781422, 39.357109, 56.728924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430866, 38.957726, 56.089973>,  <35.371033, 39.765717, 56.335705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430866, 38.957726, 56.089973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473919, 39.017281, 56.483166>,  <35.499752, 39.053013, 56.719082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473919, 39.017281, 56.483166>,  <35.430866, 38.957726, 56.089973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473919, 39.017281, 56.483166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746393, -0.641031, 0.178820,
		0.656744, -0.752936, 0.042128,
		0.107635, 0.148883, 0.982979,
		35.506210, 39.061947, 56.778061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213135, 38.287308, 56.370110>,  <35.430866, 38.957726, 56.089973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213135, 38.287308, 56.370110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195076, 38.553955, 56.667725>,  <35.184242, 38.713943, 56.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195076, 38.553955, 56.667725>,  <35.213135, 38.287308, 56.370110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195076, 38.553955, 56.667725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895677, -0.356850, 0.265369,
		0.442408, -0.654433, 0.613183,
		-0.045148, 0.666615, 0.744034,
		35.181530, 38.753941, 56.890934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977047, 37.906788, 56.944736>,  <35.213135, 38.287308, 56.370110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977047, 37.906788, 56.944736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894630, 38.289230, 57.028076>,  <34.845181, 38.518696, 57.078079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894630, 38.289230, 57.028076>,  <34.977047, 37.906788, 56.944736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894630, 38.289230, 57.028076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933091, -0.256102, 0.252493,
		0.294769, -0.142383, 0.944901,
		-0.206040, 0.956107, 0.208347,
		34.832817, 38.576061, 57.090580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571007, 37.875725, 57.551994>,  <34.977047, 37.906788, 56.944736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571007, 37.875725, 57.551994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491795, 38.234123, 57.393009>,  <34.444267, 38.449162, 57.297619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491795, 38.234123, 57.393009>,  <34.571007, 37.875725, 57.551994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491795, 38.234123, 57.393009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964935, -0.106924, 0.239724,
		0.172293, 0.431000, 0.885750,
		-0.198029, 0.895994, -0.397465,
		34.432384, 38.502922, 57.273769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121632, 38.081470, 58.010986>,  <34.571007, 37.875725, 57.551994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121632, 38.081470, 58.010986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093239, 38.362206, 57.727470>,  <34.076202, 38.530647, 57.557362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093239, 38.362206, 57.727470>,  <34.121632, 38.081470, 58.010986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093239, 38.362206, 57.727470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994207, -0.107273, -0.006649,
		-0.080701, 0.704215, 0.705385,
		-0.070986, 0.701835, -0.708793,
		34.071941, 38.572758, 57.514832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516121, 38.495495, 58.216595>,  <34.121632, 38.081470, 58.010986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516121, 38.495495, 58.216595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556061, 38.584496, 57.828671>,  <33.580025, 38.637897, 57.595917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556061, 38.584496, 57.828671>,  <33.516121, 38.495495, 58.216595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556061, 38.584496, 57.828671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994182, -0.017269, -0.106320,
		-0.040404, 0.974780, 0.219482,
		0.099848, 0.222500, -0.969806,
		33.586014, 38.651245, 57.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082661, 38.994820, 58.137760>,  <33.516121, 38.495495, 58.216595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082661, 38.994820, 58.137760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130295, 38.855286, 57.765926>,  <33.158875, 38.771564, 57.542824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130295, 38.855286, 57.765926>,  <33.082661, 38.994820, 58.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130295, 38.855286, 57.765926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990842, 0.018255, -0.133786,
		0.063638, 0.937008, -0.343463,
		0.119089, -0.348832, -0.929588,
		33.166023, 38.750637, 57.487049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655098, 39.425610, 57.686836>,  <33.082661, 38.994820, 58.137760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655098, 39.425610, 57.686836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724056, 39.083809, 57.490829>,  <32.765430, 38.878731, 57.373226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724056, 39.083809, 57.490829>,  <32.655098, 39.425610, 57.686836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724056, 39.083809, 57.490829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975966, -0.080847, -0.202373,
		0.133312, 0.513124, -0.847899,
		0.172392, -0.854499, -0.490013,
		32.775772, 38.827457, 57.343826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240173, 39.475601, 56.996250>,  <32.655098, 39.425610, 57.686836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240173, 39.475601, 56.996250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345589, 39.096283, 57.067005>,  <32.408836, 38.868694, 57.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345589, 39.096283, 57.067005>,  <32.240173, 39.475601, 56.996250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345589, 39.096283, 57.067005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917083, -0.303165, -0.258941,
		0.299178, -0.093979, -0.949558,
		0.263537, -0.948293, 0.176887,
		32.424648, 38.811794, 57.120071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833479, 40.009766, 57.214397>,  <32.240173, 39.475601, 56.996250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833479, 40.009766, 57.214397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592730, 40.317192, 57.301170>,  <31.448280, 40.501648, 57.353233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592730, 40.317192, 57.301170>,  <31.833479, 40.009766, 57.214397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592730, 40.317192, 57.301170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599050, 0.614140, -0.513782,
		-0.528099, -0.179280, -0.830042,
		-0.601873, 0.768564, 0.216929,
		31.412169, 40.547760, 57.366249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810423, 40.331661, 56.591301>,  <31.833479, 40.009766, 57.214397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810423, 40.331661, 56.591301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694490, 40.594009, 56.870106>,  <31.624931, 40.751419, 57.037388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694490, 40.594009, 56.870106>,  <31.810423, 40.331661, 56.591301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694490, 40.594009, 56.870106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627183, 0.680266, -0.379315,
		-0.722938, 0.327219, -0.608514,
		-0.289832, 0.655870, 0.697016,
		31.607540, 40.790771, 57.079212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849211, 40.952648, 56.304405>,  <31.810423, 40.331661, 56.591301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849211, 40.952648, 56.304405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795895, 41.061920, 56.685478>,  <31.763905, 41.127483, 56.914124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795895, 41.061920, 56.685478>,  <31.849211, 40.952648, 56.304405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795895, 41.061920, 56.685478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638528, 0.758836, -0.128259,
		-0.757969, 0.591220, -0.275576,
		-0.133288, 0.273179, 0.952684,
		31.755909, 41.143875, 56.971283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539394, 41.671021, 56.334663>,  <31.849211, 40.952648, 56.304405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539394, 41.671021, 56.334663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739706, 41.603935, 56.674332>,  <31.859894, 41.563686, 56.878132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739706, 41.603935, 56.674332>,  <31.539394, 41.671021, 56.334663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739706, 41.603935, 56.674332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442511, 0.892760, -0.084643,
		-0.743910, 0.418155, 0.521291,
		0.500781, -0.167710, 0.849171,
		31.889940, 41.553623, 56.929085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471115, 42.358101, 56.699371>,  <31.539394, 41.671021, 56.334663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471115, 42.358101, 56.699371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775753, 42.133675, 56.829094>,  <31.958536, 41.999020, 56.906929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775753, 42.133675, 56.829094>,  <31.471115, 42.358101, 56.699371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775753, 42.133675, 56.829094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619647, 0.777007, -0.110895,
		-0.189772, 0.285415, 0.939428,
		0.761593, -0.561069, 0.324311,
		32.004230, 41.965355, 56.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781893, 42.736240, 57.225121>,  <31.471115, 42.358101, 56.699371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781893, 42.736240, 57.225121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056587, 42.466896, 57.115593>,  <32.221405, 42.305290, 57.049877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056587, 42.466896, 57.115593>,  <31.781893, 42.736240, 57.225121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056587, 42.466896, 57.115593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689516, 0.722685, -0.047899,
		0.230138, -0.155908, 0.960588,
		0.686735, -0.673364, -0.273819,
		32.262608, 42.264889, 57.033447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415359, 43.082886, 57.450668>,  <31.781893, 42.736240, 57.225121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415359, 43.082886, 57.450668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529953, 42.793930, 57.198929>,  <32.598709, 42.620556, 57.047886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529953, 42.793930, 57.198929>,  <32.415359, 43.082886, 57.450668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529953, 42.793930, 57.198929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815138, 0.528964, -0.236108,
		0.503464, -0.445362, 0.740389,
		0.286486, -0.722391, -0.629346,
		32.615898, 42.577213, 57.010124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068550, 43.191471, 57.481369>,  <32.415359, 43.082886, 57.450668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068550, 43.191471, 57.481369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043159, 42.945343, 57.167080>,  <33.027924, 42.797668, 56.978508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043159, 42.945343, 57.167080>,  <33.068550, 43.191471, 57.481369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043159, 42.945343, 57.167080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876291, 0.342396, -0.338938,
		0.477582, -0.710034, 0.517462,
		-0.063480, -0.615318, -0.785719,
		33.024117, 42.760746, 56.931366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778690, 42.741116, 57.391327>,  <33.068550, 43.191471, 57.481369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778690, 42.741116, 57.391327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577721, 42.758911, 57.045937>,  <33.457138, 42.769588, 56.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577721, 42.758911, 57.045937>,  <33.778690, 42.741116, 57.391327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577721, 42.758911, 57.045937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835300, 0.282843, -0.471458,
		0.223254, -0.958134, -0.179268,
		-0.502425, 0.044487, -0.863476,
		33.426994, 42.772255, 56.786892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290310, 42.440266, 57.032490>,  <33.778690, 42.741116, 57.391327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290310, 42.440266, 57.032490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035759, 42.649384, 56.805611>,  <33.883030, 42.774853, 56.669483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035759, 42.649384, 56.805611>,  <34.290310, 42.440266, 57.032490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035759, 42.649384, 56.805611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738187, 0.199367, -0.644463,
		-0.223841, -0.828818, -0.512792,
		-0.636376, 0.522794, -0.567196,
		33.844845, 42.806221, 56.635452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377026, 42.210083, 56.298740>,  <34.290310, 42.440266, 57.032490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377026, 42.210083, 56.298740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216919, 42.576408, 56.285645>,  <34.120853, 42.796204, 56.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216919, 42.576408, 56.285645>,  <34.377026, 42.210083, 56.298740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216919, 42.576408, 56.285645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688300, 0.276861, -0.670515,
		-0.605001, -0.290923, -0.741173,
		-0.400270, 0.915812, -0.032741,
		34.096836, 42.851151, 56.275822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206768, 42.348797, 55.570080>,  <34.377026, 42.210083, 56.298740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206768, 42.348797, 55.570080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231613, 42.695488, 55.768044>,  <34.246521, 42.903503, 55.886822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231613, 42.695488, 55.768044>,  <34.206768, 42.348797, 55.570080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231613, 42.695488, 55.768044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637328, 0.347158, -0.687965,
		-0.768085, 0.358151, -0.530823,
		0.062116, 0.866723, 0.494906,
		34.250248, 42.955505, 55.916515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113804, 42.798641, 54.955677>,  <34.206768, 42.348797, 55.570080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113804, 42.798641, 54.955677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263542, 42.972260, 55.283451>,  <34.353386, 43.076431, 55.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263542, 42.972260, 55.283451>,  <34.113804, 42.798641, 54.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263542, 42.972260, 55.283451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650998, 0.506286, -0.565575,
		-0.660354, 0.745169, -0.093040,
		0.374344, 0.434048, 0.819432,
		34.375847, 43.102474, 55.529282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335220, 43.443024, 54.728146>,  <34.113804, 42.798641, 54.955677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335220, 43.443024, 54.728146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541557, 43.382126, 55.065365>,  <34.665359, 43.345589, 55.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541557, 43.382126, 55.065365>,  <34.335220, 43.443024, 54.728146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541557, 43.382126, 55.065365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801313, 0.433795, -0.411971,
		-0.302989, 0.888056, 0.345767,
		0.515845, -0.152245, 0.843045,
		34.696312, 43.336452, 55.318279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606289, 44.046684, 54.768284>,  <34.335220, 43.443024, 54.728146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606289, 44.046684, 54.768284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827461, 43.810562, 55.003502>,  <34.960163, 43.668888, 55.144634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827461, 43.810562, 55.003502>,  <34.606289, 44.046684, 54.768284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827461, 43.810562, 55.003502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833138, 0.381353, -0.400564,
		0.012203, 0.711411, 0.702671,
		0.552931, -0.590309, 0.588049,
		34.993340, 43.633469, 55.179916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069225, 44.495739, 55.032001>,  <34.606289, 44.046684, 54.768284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069225, 44.495739, 55.032001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247173, 44.141678, 55.086552>,  <35.353943, 43.929241, 55.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247173, 44.141678, 55.086552>,  <35.069225, 44.495739, 55.032001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247173, 44.141678, 55.086552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846617, 0.365969, -0.386401,
		0.292115, 0.287355, 0.912193,
		0.444869, -0.885151, 0.136375,
		35.380634, 43.876133, 55.127464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718155, 44.629360, 55.331902>,  <35.069225, 44.495739, 55.032001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718155, 44.629360, 55.331902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756325, 44.267059, 55.166733>,  <35.779224, 44.049679, 55.067631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756325, 44.267059, 55.166733>,  <35.718155, 44.629360, 55.331902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756325, 44.267059, 55.166733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858985, 0.284545, -0.425651,
		0.503030, -0.314079, 0.805180,
		0.095422, -0.905753, -0.412924,
		35.784950, 43.995335, 55.042854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340721, 44.527908, 55.378059>,  <35.718155, 44.629360, 55.331902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340721, 44.527908, 55.378059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227737, 44.246040, 55.117702>,  <36.159946, 44.076920, 54.961487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227737, 44.246040, 55.117702>,  <36.340721, 44.527908, 55.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227737, 44.246040, 55.117702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777818, 0.228884, -0.585330,
		0.561443, -0.671605, 0.483455,
		-0.282455, -0.704669, -0.650892,
		36.143002, 44.034641, 54.922436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965607, 44.058922, 55.293339>,  <36.340721, 44.527908, 55.378059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965607, 44.058922, 55.293339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716167, 44.054985, 54.980663>,  <36.566505, 44.052624, 54.793060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716167, 44.054985, 54.980663>,  <36.965607, 44.058922, 55.293339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716167, 44.054985, 54.980663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758755, 0.233111, -0.608236,
		0.188204, -0.972400, -0.137901,
		-0.623595, -0.009839, -0.781686,
		36.529091, 44.052032, 54.746159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361355, 43.741795, 54.841068>,  <36.965607, 44.058922, 55.293339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361355, 43.741795, 54.841068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071983, 43.913826, 54.625034>,  <36.898361, 44.017044, 54.495415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071983, 43.913826, 54.625034>,  <37.361355, 43.741795, 54.841068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071983, 43.913826, 54.625034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657939, 0.192390, -0.728081,
		-0.209223, -0.882055, -0.422143,
		-0.723424, 0.430075, -0.540086,
		36.854958, 44.042847, 54.463009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317120, 43.371872, 54.195835>,  <37.361355, 43.741795, 54.841068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317120, 43.371872, 54.195835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177094, 43.739189, 54.121864>,  <37.093079, 43.959579, 54.077484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177094, 43.739189, 54.121864>,  <37.317120, 43.371872, 54.195835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177094, 43.739189, 54.121864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754237, 0.159249, -0.636997,
		-0.555500, -0.362466, -0.748357,
		-0.350065, 0.918291, -0.184923,
		37.072075, 44.014675, 54.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427765, 43.479610, 53.505806>,  <37.317120, 43.371872, 54.195835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427765, 43.479610, 53.505806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381210, 43.853004, 53.641487>,  <37.353279, 44.077042, 53.722897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381210, 43.853004, 53.641487>,  <37.427765, 43.479610, 53.505806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381210, 43.853004, 53.641487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625755, 0.334134, -0.704829,
		-0.771287, 0.130227, -0.623022,
		-0.116385, 0.933485, 0.339204,
		37.346294, 44.133049, 53.743248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465340, 43.858009, 52.911160>,  <37.427765, 43.479610, 53.505806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465340, 43.858009, 52.911160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548557, 44.110023, 53.210430>,  <37.598488, 44.261234, 53.389992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548557, 44.110023, 53.210430>,  <37.465340, 43.858009, 52.911160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548557, 44.110023, 53.210430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706806, 0.431908, -0.560251,
		-0.676123, 0.645374, -0.355457,
		0.208046, 0.630038, 0.748177,
		37.610970, 44.299034, 53.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743946, 44.408970, 52.549526>,  <37.465340, 43.858009, 52.911160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743946, 44.408970, 52.549526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827423, 44.481140, 52.934006>,  <37.877510, 44.524441, 53.164692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827423, 44.481140, 52.934006>,  <37.743946, 44.408970, 52.549526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827423, 44.481140, 52.934006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856238, 0.441187, -0.268719,
		-0.472549, 0.879092, -0.062412,
		0.208693, 0.180422, 0.961195,
		37.890030, 44.535267, 53.222363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014374, 45.071026, 52.537598>,  <37.743946, 44.408970, 52.549526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014374, 45.071026, 52.537598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145336, 44.935036, 52.890240>,  <38.223915, 44.853443, 53.101826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145336, 44.935036, 52.890240>,  <38.014374, 45.071026, 52.537598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145336, 44.935036, 52.890240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889727, 0.425038, -0.166517,
		-0.318104, 0.838905, 0.441642,
		0.327407, -0.339971, 0.881603,
		38.243557, 44.833046, 53.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254093, 45.662632, 52.967205>,  <38.014374, 45.071026, 52.537598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254093, 45.662632, 52.967205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437588, 45.329086, 53.089993>,  <38.547684, 45.128960, 53.163666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437588, 45.329086, 53.089993>,  <38.254093, 45.662632, 52.967205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437588, 45.329086, 53.089993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858501, 0.326806, -0.395187,
		0.229213, 0.444822, 0.865791,
		0.458733, -0.833865, 0.306972,
		38.575207, 45.078926, 53.182083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856983, 45.933014, 53.326626>,  <38.254093, 45.662632, 52.967205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856983, 45.933014, 53.326626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949913, 45.550598, 53.255058>,  <39.005669, 45.321148, 53.212116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949913, 45.550598, 53.255058>,  <38.856983, 45.933014, 53.326626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949913, 45.550598, 53.255058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929300, 0.272482, -0.249310,
		0.287103, -0.108349, 0.951752,
		0.232323, -0.956041, -0.178919,
		39.019611, 45.263786, 53.201382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471889, 45.802200, 53.659328>,  <38.856983, 45.933014, 53.326626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471889, 45.802200, 53.659328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465843, 45.497498, 53.400253>,  <39.462215, 45.314674, 53.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465843, 45.497498, 53.400253>,  <39.471889, 45.802200, 53.659328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465843, 45.497498, 53.400253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985265, 0.099022, -0.139453,
		0.170365, -0.640252, 0.749035,
		-0.015115, -0.761756, -0.647688,
		39.461308, 45.268970, 53.205948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082287, 45.483204, 53.771130>,  <39.471889, 45.802200, 53.659328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082287, 45.483204, 53.771130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978149, 45.329437, 53.416855>,  <39.915665, 45.237175, 53.204288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978149, 45.329437, 53.416855>,  <40.082287, 45.483204, 53.771130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978149, 45.329437, 53.416855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944511, 0.088899, -0.316222,
		0.200299, -0.918868, 0.339944,
		-0.260345, -0.384420, -0.885687,
		39.900047, 45.214111, 53.151150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554192, 45.009991, 53.693218>,  <40.082287, 45.483204, 53.771130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554192, 45.009991, 53.693218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423523, 45.063042, 53.318905>,  <40.345119, 45.094872, 53.094318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423523, 45.063042, 53.318905>,  <40.554192, 45.009991, 53.693218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423523, 45.063042, 53.318905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938516, -0.071464, -0.337757,
		-0.111672, -0.988586, -0.101130,
		-0.326675, 0.132630, -0.935785,
		40.325520, 45.102829, 53.038170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002102, 44.579269, 53.260418>,  <40.554192, 45.009991, 53.693218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002102, 44.579269, 53.260418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822533, 44.849968, 53.027016>,  <40.714790, 45.012386, 52.886974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822533, 44.849968, 53.027016>,  <41.002102, 44.579269, 53.260418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822533, 44.849968, 53.027016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890082, 0.281010, -0.358870,
		-0.078895, -0.680472, -0.728515,
		-0.448921, 0.676751, -0.583505,
		40.687855, 45.052994, 52.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225563, 44.457420, 52.610069>,  <41.002102, 44.579269, 53.260418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225563, 44.457420, 52.610069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110466, 44.840485, 52.606339>,  <41.041409, 45.070324, 52.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110466, 44.840485, 52.606339>,  <41.225563, 44.457420, 52.610069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110466, 44.840485, 52.606339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844999, 0.249279, -0.473114,
		-0.450758, -0.144015, -0.880952,
		-0.287738, 0.957664, -0.009328,
		41.024143, 45.127785, 52.603539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406700, 44.684681, 52.010918>,  <41.225563, 44.457420, 52.610069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406700, 44.684681, 52.010918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367298, 45.038651, 52.192997>,  <41.343655, 45.251034, 52.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367298, 45.038651, 52.192997>,  <41.406700, 44.684681, 52.010918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367298, 45.038651, 52.192997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821015, 0.330756, -0.465333,
		-0.562344, 0.327884, -0.759118,
		-0.098507, 0.884925, 0.455197,
		41.337746, 45.304127, 52.329556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275806, 45.241581, 51.491550>,  <41.406700, 44.684681, 52.010918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275806, 45.241581, 51.491550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430710, 45.422394, 51.812973>,  <41.523651, 45.530880, 52.005825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430710, 45.422394, 51.812973>,  <41.275806, 45.241581, 51.491550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430710, 45.422394, 51.812973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648330, 0.486156, -0.585936,
		-0.655513, 0.747878, -0.104796,
		0.387261, 0.452031, 0.803553,
		41.546886, 45.558002, 52.054039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425709, 45.860458, 51.272079>,  <41.275806, 45.241581, 51.491550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425709, 45.860458, 51.272079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654202, 45.831169, 51.599087>,  <41.791298, 45.813595, 51.795292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654202, 45.831169, 51.599087>,  <41.425709, 45.860458, 51.272079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654202, 45.831169, 51.599087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731879, 0.496302, -0.466944,
		-0.371545, 0.865056, 0.337093,
		0.571233, -0.073221, 0.817516,
		41.825573, 45.809204, 51.844341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680580, 46.555702, 51.489895>,  <41.425709, 45.860458, 51.272079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680580, 46.555702, 51.489895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929710, 46.272697, 51.623463>,  <42.079189, 46.102894, 51.703606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929710, 46.272697, 51.623463>,  <41.680580, 46.555702, 51.489895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929710, 46.272697, 51.623463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751839, 0.423230, -0.505584,
		0.216382, 0.565949, 0.795538,
		0.622830, -0.707516, 0.333923,
		42.116558, 46.060444, 51.723640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197548, 46.970558, 51.826580>,  <41.680580, 46.555702, 51.489895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197548, 46.970558, 51.826580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384716, 46.617592, 51.807037>,  <42.497017, 46.405811, 51.795311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384716, 46.617592, 51.807037>,  <42.197548, 46.970558, 51.826580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384716, 46.617592, 51.807037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855469, 0.466127, -0.225604,
		0.221852, 0.063766, 0.972993,
		0.467925, -0.882417, -0.048861,
		42.525093, 46.352867, 51.792377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857723, 47.032940, 52.048309>,  <42.197548, 46.970558, 51.826580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857723, 47.032940, 52.048309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877083, 46.689034, 51.844952>,  <42.888699, 46.482689, 51.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877083, 46.689034, 51.844952>,  <42.857723, 47.032940, 52.048309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877083, 46.689034, 51.844952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925317, 0.230248, -0.301289,
		0.376094, -0.455841, 0.806698,
		0.048401, -0.859764, -0.508393,
		42.891602, 46.431103, 51.692432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420811, 46.542923, 52.302784>,  <42.857723, 47.032940, 52.048309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420811, 46.542923, 52.302784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355076, 46.464813, 51.916031>,  <43.315636, 46.417946, 51.683979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355076, 46.464813, 51.916031>,  <43.420811, 46.542923, 52.302784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355076, 46.464813, 51.916031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961399, 0.187597, -0.201296,
		0.220691, -0.962640, 0.156905,
		-0.164341, -0.195273, -0.966882,
		43.305775, 46.406231, 51.625965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956520, 46.244801, 52.059620>,  <43.420811, 46.542923, 52.302784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956520, 46.244801, 52.059620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788185, 46.344749, 51.710804>,  <43.687183, 46.404720, 51.501514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788185, 46.344749, 51.710804>,  <43.956520, 46.244801, 52.059620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788185, 46.344749, 51.710804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870922, 0.380203, -0.311352,
		0.253754, -0.890510, -0.377626,
		-0.420836, 0.249876, -0.872043,
		43.661934, 46.419712, 51.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.164448, 41.459209, 50.810551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297119, 41.104942, 50.680580>,  <35.376720, 40.892380, 50.602596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297119, 41.104942, 50.680580>,  <35.164448, 41.459209, 50.810551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297119, 41.104942, 50.680580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804264, 0.445486, -0.393321,
		0.493104, -0.130873, 0.860070,
		0.331674, -0.885672, -0.324928,
		35.396622, 40.839241, 50.583103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881710, 41.478855, 50.847778>,  <35.164448, 41.459209, 50.810551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881710, 41.478855, 50.847778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 41.176819, 50.590118>,  <35.803547, 40.995598, 50.435524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 41.176819, 50.590118>,  <35.881710, 41.478855, 50.847778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832859, 41.176819, 50.590118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705934, 0.390120, -0.591155,
		0.697669, -0.526922, 0.485398,
		-0.122129, -0.755089, -0.644146,
		35.796219, 40.950291, 50.396873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608841, 41.145355, 50.730637>,  <35.881710, 41.478855, 50.847778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608841, 41.145355, 50.730637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348709, 41.050171, 50.442070>,  <36.192631, 40.993061, 50.268932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348709, 41.050171, 50.442070>,  <36.608841, 41.145355, 50.730637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348709, 41.050171, 50.442070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577203, 0.462609, -0.672926,
		0.493865, -0.854029, -0.163497,
		-0.650334, -0.237964, -0.721415,
		36.153610, 40.978783, 50.225647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021358, 40.849529, 50.227287>,  <36.608841, 41.145355, 50.730637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021358, 40.849529, 50.227287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688000, 40.970329, 50.042141>,  <36.487984, 41.042809, 49.931053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.688000, 40.970329, 50.042141>,  <37.021358, 40.849529, 50.227287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688000, 40.970329, 50.042141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550193, 0.374001, -0.746600,
		-0.052363, -0.876879, -0.477851,
		-0.833394, 0.302004, -0.462869,
		36.437981, 41.060932, 49.903278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870846, 40.459625, 49.578594>,  <37.021358, 40.849529, 50.227287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870846, 40.459625, 49.578594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684105, 40.812599, 49.555389>,  <36.572060, 41.024384, 49.541466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684105, 40.812599, 49.555389>,  <36.870846, 40.459625, 49.578594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684105, 40.812599, 49.555389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644138, 0.294363, -0.706000,
		-0.605920, -0.366964, -0.705831,
		-0.466848, 0.882433, -0.058015,
		36.544052, 41.077328, 49.537987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968571, 40.572628, 48.942211>,  <36.870846, 40.459625, 49.578594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968571, 40.572628, 48.942211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838955, 40.930969, 49.063835>,  <36.761185, 41.145973, 49.136810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838955, 40.930969, 49.063835>,  <36.968571, 40.572628, 48.942211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838955, 40.930969, 49.063835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609913, 0.443515, -0.656734,
		-0.723192, -0.027354, -0.690105,
		-0.324037, 0.895849, 0.304063,
		36.741745, 41.199722, 49.155052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842892, 40.943665, 48.388332>,  <36.968571, 40.572628, 48.942211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842892, 40.943665, 48.388332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914120, 41.231522, 48.656784>,  <36.956856, 41.404236, 48.817856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914120, 41.231522, 48.656784>,  <36.842892, 40.943665, 48.388332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914120, 41.231522, 48.656784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680614, 0.402494, -0.612179,
		-0.710672, 0.565789, -0.418125,
		0.178071, 0.719640, 0.671125,
		36.967541, 41.447414, 48.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139130, 41.448586, 47.976864>,  <36.842892, 40.943665, 48.388332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139130, 41.448586, 47.976864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246681, 41.567986, 48.343163>,  <37.311214, 41.639626, 48.562943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246681, 41.567986, 48.343163>,  <37.139130, 41.448586, 47.976864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246681, 41.567986, 48.343163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846080, 0.381141, -0.372666,
		-0.460272, 0.875001, -0.150076,
		0.268882, 0.298504, 0.915750,
		37.327347, 41.657536, 48.617886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374367, 42.176651, 47.884777>,  <37.139130, 41.448586, 47.976864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374367, 42.176651, 47.884777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533234, 42.041023, 48.225903>,  <37.628555, 41.959648, 48.430576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533234, 42.041023, 48.225903>,  <37.374367, 42.176651, 47.884777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533234, 42.041023, 48.225903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848440, 0.489907, -0.200352,
		-0.349867, 0.803135, 0.482252,
		0.397168, -0.339065, 0.852814,
		37.652386, 41.939304, 48.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767414, 42.701309, 48.030479>,  <37.374367, 42.176651, 47.884777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767414, 42.701309, 48.030479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910801, 42.394554, 48.243412>,  <37.996834, 42.210499, 48.371170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910801, 42.394554, 48.243412>,  <37.767414, 42.701309, 48.030479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910801, 42.394554, 48.243412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900608, 0.434213, 0.019074,
		-0.245772, 0.472583, 0.846322,
		0.358470, -0.766892, 0.532330,
		38.018341, 42.164486, 48.403111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325226, 43.012619, 48.377800>,  <37.767414, 42.701309, 48.030479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325226, 43.012619, 48.377800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435959, 42.629700, 48.411137>,  <38.502399, 42.399948, 48.431137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435959, 42.629700, 48.411137>,  <38.325226, 43.012619, 48.377800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435959, 42.629700, 48.411137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953892, 0.263298, -0.144097,
		0.116000, 0.119390, 0.986048,
		0.276828, -0.957298, 0.083343,
		38.519009, 42.342510, 48.436138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759682, 42.935307, 48.898903>,  <38.325226, 43.012619, 48.377800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759682, 42.935307, 48.898903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863049, 42.632858, 48.658405>,  <38.925068, 42.451389, 48.514107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863049, 42.632858, 48.658405>,  <38.759682, 42.935307, 48.898903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863049, 42.632858, 48.658405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966032, 0.201339, 0.162004,
		-0.001441, -0.622685, 0.782471,
		0.258420, -0.756125, -0.601243,
		38.940575, 42.406021, 48.478031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257915, 42.561199, 49.254391>,  <38.759682, 42.935307, 48.898903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257915, 42.561199, 49.254391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339546, 42.425224, 48.887177>,  <39.388523, 42.343639, 48.666847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339546, 42.425224, 48.887177>,  <39.257915, 42.561199, 49.254391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339546, 42.425224, 48.887177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955487, 0.273268, 0.111215,
		0.213064, -0.899871, 0.380573,
		0.204077, -0.339937, -0.918039,
		39.400768, 42.323242, 48.611763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833241, 42.051098, 49.343548>,  <39.257915, 42.561199, 49.254391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833241, 42.051098, 49.343548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812214, 42.226433, 48.984638>,  <39.799599, 42.331635, 48.769295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812214, 42.226433, 48.984638>,  <39.833241, 42.051098, 49.343548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812214, 42.226433, 48.984638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982452, 0.183715, 0.032192,
		0.178953, -0.879835, -0.440303,
		-0.052567, 0.438338, -0.897272,
		39.796444, 42.357933, 48.715458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479328, 41.897564, 49.054359>,  <39.833241, 42.051098, 49.343548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479328, 41.897564, 49.054359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369759, 42.167694, 48.780453>,  <40.304016, 42.329773, 48.616108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.369759, 42.167694, 48.780453>,  <40.479328, 41.897564, 49.054359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369759, 42.167694, 48.780453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949286, 0.304117, -0.079810,
		0.154352, -0.671903, -0.724377,
		-0.273920, 0.675322, -0.684769,
		40.287582, 42.370289, 48.575024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043182, 41.857025, 48.556053>,  <40.479328, 41.897564, 49.054359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043182, 41.857025, 48.556053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851509, 42.205109, 48.510235>,  <40.736504, 42.413960, 48.482742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851509, 42.205109, 48.510235>,  <41.043182, 41.857025, 48.556053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851509, 42.205109, 48.510235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867528, 0.489397, 0.088800,
		0.133334, -0.056824, -0.989441,
		-0.479184, 0.870208, -0.114549,
		40.707752, 42.466171, 48.475868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491653, 42.247913, 48.165840>,  <41.043182, 41.857025, 48.556053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491653, 42.247913, 48.165840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233681, 42.533730, 48.274281>,  <41.078896, 42.705219, 48.339344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233681, 42.533730, 48.274281>,  <41.491653, 42.247913, 48.165840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233681, 42.533730, 48.274281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755449, 0.649700, 0.084775,
		-0.115559, 0.259477, -0.958811,
		-0.644936, 0.714536, 0.271101,
		41.040199, 42.748089, 48.355610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603062, 42.773857, 47.745632>,  <41.491653, 42.247913, 48.165840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603062, 42.773857, 47.745632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433743, 42.940163, 48.067616>,  <41.332150, 43.039944, 48.260807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433743, 42.940163, 48.067616>,  <41.603062, 42.773857, 47.745632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433743, 42.940163, 48.067616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750548, 0.658562, 0.054541,
		-0.507440, 0.627248, -0.590817,
		-0.423300, 0.415760, 0.804960,
		41.306751, 43.064892, 48.309105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554401, 43.475586, 47.638054>,  <41.603062, 42.773857, 47.745632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554401, 43.475586, 47.638054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534653, 43.443871, 48.036304>,  <41.522804, 43.424843, 48.275257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534653, 43.443871, 48.036304>,  <41.554401, 43.475586, 47.638054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534653, 43.443871, 48.036304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728632, 0.678940, 0.090195,
		-0.683124, 0.729900, 0.024253,
		-0.049367, -0.079286, 0.995629,
		41.519844, 43.420086, 48.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315056, 44.139557, 47.909904>,  <41.554401, 43.475586, 47.638054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315056, 44.139557, 47.909904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537323, 43.940247, 48.176125>,  <41.670681, 43.820660, 48.335857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537323, 43.940247, 48.176125>,  <41.315056, 44.139557, 47.909904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537323, 43.940247, 48.176125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601865, 0.793344, 0.091456,
		-0.573581, 0.349753, 0.740727,
		0.555665, -0.498275, 0.665551,
		41.704021, 43.790764, 48.375790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527390, 44.577179, 48.358047>,  <41.315056, 44.139557, 47.909904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527390, 44.577179, 48.358047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.783649, 44.289810, 48.466446>,  <41.937405, 44.117390, 48.531483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.783649, 44.289810, 48.466446>,  <41.527390, 44.577179, 48.358047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783649, 44.289810, 48.466446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686775, 0.693978, 0.216182,
		-0.343373, 0.047614, 0.937991,
		0.640652, -0.718420, 0.270993,
		41.975845, 44.074284, 48.547745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932831, 44.895588, 48.859169>,  <41.527390, 44.577179, 48.358047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932831, 44.895588, 48.859169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.158573, 44.572746, 48.789787>,  <42.294018, 44.379040, 48.748158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.158573, 44.572746, 48.789787>,  <41.932831, 44.895588, 48.859169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158573, 44.572746, 48.789787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820709, 0.571211, 0.012381,
		0.089085, -0.149341, 0.984764,
		0.564358, -0.807103, -0.173452,
		42.327881, 44.330616, 48.737751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414143, 45.448711, 49.184811>,  <41.932831, 44.895588, 48.859169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414143, 45.448711, 49.184811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.277687, 45.821434, 49.234402>,  <42.195816, 46.045067, 49.264156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.277687, 45.821434, 49.234402>,  <42.414143, 45.448711, 49.184811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277687, 45.821434, 49.234402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929976, -0.353767, 0.099963,
		0.137005, -0.081196, 0.987237,
		-0.341135, 0.931802, 0.123979,
		42.175346, 46.100975, 49.271595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164551, 45.611504, 49.812737>,  <42.414143, 45.448711, 49.184811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164551, 45.611504, 49.812737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.964756, 45.843376, 49.555218>,  <41.844879, 45.982502, 49.400707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.964756, 45.843376, 49.555218>,  <42.164551, 45.611504, 49.812737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964756, 45.843376, 49.555218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859205, -0.426528, 0.282560,
		-0.110801, 0.694290, 0.711115,
		-0.499489, 0.579686, -0.643797,
		41.814911, 46.017281, 49.362080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580318, 45.513126, 50.103226>,  <42.164551, 45.611504, 49.812737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580318, 45.513126, 50.103226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.478928, 45.675728, 49.752113>,  <41.418095, 45.773289, 49.541447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.478928, 45.675728, 49.752113>,  <41.580318, 45.513126, 50.103226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478928, 45.675728, 49.752113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945800, -0.294577, 0.136698,
		-0.203007, 0.864859, 0.459138,
		-0.253476, 0.406503, -0.877785,
		41.402885, 45.797680, 49.488777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966057, 45.993401, 50.183117>,  <41.580318, 45.513126, 50.103226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966057, 45.993401, 50.183117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957886, 45.932343, 49.787888>,  <40.952984, 45.895710, 49.550751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957886, 45.932343, 49.787888>,  <40.966057, 45.993401, 50.183117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957886, 45.932343, 49.787888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989433, -0.138807, 0.041901,
		-0.143547, 0.978485, -0.148194,
		-0.020429, -0.152643, -0.988070,
		40.951756, 45.886551, 49.491467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382187, 46.310417, 49.902515>,  <40.966057, 45.993401, 50.183117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382187, 46.310417, 49.902515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475121, 46.038383, 49.624374>,  <40.530880, 45.875164, 49.457489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.475121, 46.038383, 49.624374>,  <40.382187, 46.310417, 49.902515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475121, 46.038383, 49.624374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969227, -0.221685, -0.107031,
		-0.081358, 0.698818, -0.710658,
		0.232337, -0.680081, -0.695349,
		40.544823, 45.834358, 49.415771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851879, 46.379456, 49.369091>,  <40.382187, 46.310417, 49.902515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851879, 46.379456, 49.369091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026894, 46.019859, 49.361275>,  <40.131905, 45.804104, 49.356586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.026894, 46.019859, 49.361275>,  <39.851879, 46.379456, 49.369091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026894, 46.019859, 49.361275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895023, -0.437497, 0.086780,
		-0.086562, -0.020482, -0.996036,
		0.437540, -0.898987, -0.019539,
		40.158157, 45.750164, 49.355412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581295, 46.038059, 48.730927>,  <39.851879, 46.379456, 49.369091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581295, 46.038059, 48.730927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724617, 45.753418, 48.972668>,  <39.810612, 45.582634, 49.117710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724617, 45.753418, 48.972668>,  <39.581295, 46.038059, 48.730927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724617, 45.753418, 48.972668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855264, -0.509753, -0.093146,
		0.374351, -0.483502, -0.791257,
		0.358309, -0.711602, 0.604349,
		39.832111, 45.539936, 49.153973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058971, 45.501907, 48.619450>,  <39.581295, 46.038059, 48.730927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058971, 45.501907, 48.619450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265541, 45.355957, 48.929333>,  <39.389481, 45.268387, 49.115265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265541, 45.355957, 48.929333>,  <39.058971, 45.501907, 48.619450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265541, 45.355957, 48.929333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807613, -0.508326, 0.298940,
		0.284730, -0.780045, -0.557187,
		0.516420, -0.364875, 0.774711,
		39.420467, 45.246494, 49.161747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820789, 44.840729, 48.702126>,  <39.058971, 45.501907, 48.619450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820789, 44.840729, 48.702126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993660, 44.922287, 49.053497>,  <39.097382, 44.971222, 49.264320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993660, 44.922287, 49.053497>,  <38.820789, 44.840729, 48.702126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993660, 44.922287, 49.053497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751843, -0.456410, 0.475838,
		0.497948, -0.866092, -0.043952,
		0.432180, 0.203898, 0.878434,
		39.123314, 44.983456, 49.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864906, 44.184383, 49.088028>,  <38.820789, 44.840729, 48.702126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864906, 44.184383, 49.088028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880322, 44.497643, 49.336281>,  <38.889572, 44.685600, 49.485233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880322, 44.497643, 49.336281>,  <38.864906, 44.184383, 49.088028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880322, 44.497643, 49.336281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865548, -0.284207, 0.412374,
		0.499341, -0.553082, 0.666903,
		0.038538, 0.783152, 0.620635,
		38.891884, 44.732590, 49.522472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567577, 43.872169, 49.551693>,  <38.864906, 44.184383, 49.088028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567577, 43.872169, 49.551693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541504, 44.256950, 49.657829>,  <38.525860, 44.487820, 49.721512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541504, 44.256950, 49.657829>,  <38.567577, 43.872169, 49.551693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541504, 44.256950, 49.657829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881655, -0.180062, 0.436191,
		0.467371, -0.205507, 0.859844,
		-0.065185, 0.961948, 0.265342,
		38.521950, 44.545536, 49.737431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360096, 43.903896, 50.305885>,  <38.567577, 43.872169, 49.551693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360096, 43.903896, 50.305885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260750, 44.247772, 50.127338>,  <38.201141, 44.454098, 50.020210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.260750, 44.247772, 50.127338>,  <38.360096, 43.903896, 50.305885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260750, 44.247772, 50.127338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928717, -0.080368, 0.361975,
		0.275313, 0.504453, 0.818371,
		-0.248370, 0.859691, -0.446368,
		38.186237, 44.505680, 49.993427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085239, 44.354248, 50.811344>,  <38.360096, 43.903896, 50.305885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085239, 44.354248, 50.811344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932793, 44.491547, 50.467964>,  <37.841324, 44.573925, 50.261936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932793, 44.491547, 50.467964>,  <38.085239, 44.354248, 50.811344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932793, 44.491547, 50.467964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914988, -0.273073, 0.297033,
		-0.132462, 0.898672, 0.418141,
		-0.381119, 0.343248, -0.858446,
		37.818459, 44.594521, 50.210430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540821, 44.849228, 51.015373>,  <38.085239, 44.354248, 50.811344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540821, 44.849228, 51.015373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448071, 44.767685, 50.634914>,  <37.392422, 44.718758, 50.406639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448071, 44.767685, 50.634914>,  <37.540821, 44.849228, 51.015373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448071, 44.767685, 50.634914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959464, -0.113092, 0.258144,
		-0.160191, 0.972446, -0.169371,
		-0.231877, -0.203858, -0.951144,
		37.378506, 44.706528, 50.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094501, 45.342930, 50.798618>,  <37.540821, 44.849228, 51.015373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094501, 45.342930, 50.798618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042690, 45.026245, 50.559814>,  <37.011604, 44.836235, 50.416531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042690, 45.026245, 50.559814>,  <37.094501, 45.342930, 50.798618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042690, 45.026245, 50.559814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902680, -0.155019, 0.401420,
		-0.410356, 0.590903, -0.694580,
		-0.129527, -0.791708, -0.597009,
		37.003834, 44.788731, 50.380711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367962, 45.380154, 50.658150>,  <37.094501, 45.342930, 50.798618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367962, 45.380154, 50.658150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466377, 45.001289, 50.575836>,  <36.525425, 44.773972, 50.526447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466377, 45.001289, 50.575836>,  <36.367962, 45.380154, 50.658150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466377, 45.001289, 50.575836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931932, -0.289521, 0.218360,
		-0.266400, 0.138050, -0.953925,
		0.246036, -0.947164, -0.205782,
		36.540188, 44.717140, 50.514099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738731, 45.046017, 50.388397>,  <36.367962, 45.380154, 50.658150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738731, 45.046017, 50.388397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949249, 44.718452, 50.479965>,  <36.075562, 44.521915, 50.534904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949249, 44.718452, 50.479965>,  <35.738731, 45.046017, 50.388397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949249, 44.718452, 50.479965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820527, -0.418491, 0.389360,
		-0.223050, -0.392751, -0.892186,
		0.526293, -0.818909, 0.228919,
		36.107136, 44.472778, 50.548641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424385, 44.391109, 50.071476>,  <35.738731, 45.046017, 50.388397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424385, 44.391109, 50.071476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651058, 44.268265, 50.377300>,  <35.787064, 44.194557, 50.560795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651058, 44.268265, 50.377300>,  <35.424385, 44.391109, 50.071476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651058, 44.268265, 50.377300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754647, -0.565930, 0.332012,
		0.330720, -0.765117, -0.552467,
		0.566686, -0.307114, 0.764558,
		35.821064, 44.176132, 50.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.402172, 43.649952, 49.976513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510120, 43.695557, 50.358963>,  <35.574890, 43.722919, 50.588432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510120, 43.695557, 50.358963>,  <35.402172, 43.649952, 49.976513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510120, 43.695557, 50.358963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587835, -0.766949, 0.257371,
		0.762641, -0.631499, -0.139957,
		0.269869, 0.114010, 0.956124,
		35.591080, 43.729759, 50.645802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455265, 43.000088, 50.213211>,  <35.402172, 43.649952, 49.976513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455265, 43.000088, 50.213211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435951, 43.200272, 50.558975>,  <35.424362, 43.320381, 50.766434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435951, 43.200272, 50.558975>,  <35.455265, 43.000088, 50.213211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435951, 43.200272, 50.558975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653738, -0.670145, 0.351472,
		0.755179, -0.548128, 0.359528,
		-0.048284, 0.500461, 0.864411,
		35.421467, 43.350410, 50.818298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543991, 42.476482, 50.757809>,  <35.455265, 43.000088, 50.213211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543991, 42.476482, 50.757809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362144, 42.786858, 50.932732>,  <35.253036, 42.973083, 51.037685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362144, 42.786858, 50.932732>,  <35.543991, 42.476482, 50.757809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362144, 42.786858, 50.932732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566548, -0.630769, 0.530240,
		0.687274, -0.006698, 0.726368,
		-0.454619, 0.775942, 0.437305,
		35.225758, 43.019642, 51.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580112, 42.325855, 51.433712>,  <35.543991, 42.476482, 50.757809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580112, 42.325855, 51.433712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296978, 42.607132, 51.406929>,  <35.127098, 42.775898, 51.390862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296978, 42.607132, 51.406929>,  <35.580112, 42.325855, 51.433712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296978, 42.607132, 51.406929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587864, -0.533874, 0.607779,
		0.391643, 0.469568, 0.791279,
		-0.707836, 0.703196, -0.066954,
		35.084629, 42.818092, 51.386845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253868, 42.279793, 52.049511>,  <35.580112, 42.325855, 51.433712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253868, 42.279793, 52.049511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979733, 42.482941, 51.840755>,  <34.815250, 42.604828, 51.715500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979733, 42.482941, 51.840755>,  <35.253868, 42.279793, 52.049511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979733, 42.482941, 51.840755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727822, -0.501406, 0.467832,
		-0.024082, 0.700471, 0.713274,
		-0.685343, 0.507870, -0.521893,
		34.774128, 42.635303, 51.684189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861664, 42.570553, 52.533607>,  <35.253868, 42.279793, 52.049511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861664, 42.570553, 52.533607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652645, 42.556610, 52.192848>,  <34.527233, 42.548244, 51.988392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652645, 42.556610, 52.192848>,  <34.861664, 42.570553, 52.533607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652645, 42.556610, 52.192848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745228, -0.466752, 0.476212,
		-0.414226, 0.883701, 0.217920,
		-0.522544, -0.034860, -0.851900,
		34.495880, 42.546154, 51.937279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255230, 42.884575, 52.661976>,  <34.861664, 42.570553, 52.533607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255230, 42.884575, 52.661976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180054, 42.647568, 52.348644>,  <34.134949, 42.505363, 52.160645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180054, 42.647568, 52.348644>,  <34.255230, 42.884575, 52.661976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180054, 42.647568, 52.348644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809734, -0.357914, 0.465003,
		-0.555885, 0.721682, -0.412512,
		-0.187941, -0.592514, -0.783330,
		34.123672, 42.469814, 52.113644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589588, 42.926224, 52.455769>,  <34.255230, 42.884575, 52.661976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589588, 42.926224, 52.455769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684292, 42.569458, 52.301666>,  <33.741116, 42.355396, 52.209206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684292, 42.569458, 52.301666>,  <33.589588, 42.926224, 52.455769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684292, 42.569458, 52.301666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731420, -0.424633, 0.533583,
		-0.639508, 0.155457, -0.752903,
		0.236758, -0.891919, -0.385261,
		33.755318, 42.301884, 52.186089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034245, 42.692356, 52.349102>,  <33.589588, 42.926224, 52.455769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034245, 42.692356, 52.349102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244251, 42.352066, 52.339008>,  <33.370255, 42.147892, 52.332951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244251, 42.352066, 52.339008>,  <33.034245, 42.692356, 52.349102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244251, 42.352066, 52.339008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707915, -0.452955, 0.541930,
		-0.472464, -0.266651, -0.840045,
		0.525008, -0.850722, -0.025238,
		33.401756, 42.096851, 52.331440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602951, 42.164730, 51.988625>,  <33.034245, 42.692356, 52.349102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602951, 42.164730, 51.988625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871727, 41.990997, 52.228573>,  <33.032993, 41.886757, 52.372543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871727, 41.990997, 52.228573>,  <32.602951, 42.164730, 51.988625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871727, 41.990997, 52.228573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739722, -0.433144, 0.514973,
		0.036161, -0.789771, -0.612335,
		0.671940, -0.434336, 0.599874,
		33.073311, 41.860695, 52.408535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287300, 41.516304, 52.091736>,  <32.602951, 42.164730, 51.988625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287300, 41.516304, 52.091736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549988, 41.561020, 52.390057>,  <32.707600, 41.587849, 52.569050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549988, 41.561020, 52.390057>,  <32.287300, 41.516304, 52.091736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549988, 41.561020, 52.390057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626182, -0.470280, 0.621878,
		0.420253, -0.875409, -0.238845,
		0.656722, 0.111785, 0.745802,
		32.747005, 41.594555, 52.613796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216015, 40.891048, 52.292248>,  <32.287300, 41.516304, 52.091736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216015, 40.891048, 52.292248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369331, 41.105103, 52.593372>,  <32.461319, 41.233536, 52.774048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369331, 41.105103, 52.593372>,  <32.216015, 40.891048, 52.292248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369331, 41.105103, 52.593372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688675, -0.377554, 0.619015,
		0.615481, -0.755703, 0.223819,
		0.383288, 0.535131, 0.752811,
		32.484318, 41.265640, 52.819214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411045, 40.455944, 52.885193>,  <32.216015, 40.891048, 52.292248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411045, 40.455944, 52.885193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358833, 40.820923, 53.040321>,  <32.327507, 41.039909, 53.133400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.358833, 40.820923, 53.040321>,  <32.411045, 40.455944, 52.885193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358833, 40.820923, 53.040321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538629, -0.393668, 0.744919,
		0.832371, -0.111658, 0.542855,
		-0.130528, 0.912446, 0.387820,
		32.319675, 41.094658, 53.156666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299782, 40.324837, 53.660892>,  <32.411045, 40.455944, 52.885193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299782, 40.324837, 53.660892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160667, 40.699104, 53.637001>,  <32.077198, 40.923664, 53.622665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.160667, 40.699104, 53.637001>,  <32.299782, 40.324837, 53.660892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160667, 40.699104, 53.637001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583794, -0.166265, 0.794695,
		0.733642, 0.311251, 0.604063,
		-0.347785, 0.935670, -0.059727,
		32.056332, 40.979805, 53.619083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271412, 40.573666, 54.335205>,  <32.299782, 40.324837, 53.660892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271412, 40.573666, 54.335205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029472, 40.835274, 54.153477>,  <31.884308, 40.992241, 54.044441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029472, 40.835274, 54.153477>,  <32.271412, 40.573666, 54.335205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029472, 40.835274, 54.153477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557911, 0.059069, 0.827796,
		0.568234, 0.754165, 0.329159,
		-0.604851, 0.654023, -0.454322,
		31.848017, 41.031479, 54.017181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979971, 41.083302, 54.889202>,  <32.271412, 40.573666, 54.335205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979971, 41.083302, 54.889202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724623, 41.108238, 54.582321>,  <31.571413, 41.123199, 54.398193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724623, 41.108238, 54.582321>,  <31.979971, 41.083302, 54.889202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724623, 41.108238, 54.582321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768684, 0.000275, 0.639628,
		0.040085, 0.998055, 0.047743,
		-0.638371, 0.062339, -0.767200,
		31.533112, 41.126942, 54.352161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450666, 41.552940, 55.048244>,  <31.979971, 41.083302, 54.889202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450666, 41.552940, 55.048244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277861, 41.370987, 54.736744>,  <31.174177, 41.261814, 54.549843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277861, 41.370987, 54.736744>,  <31.450666, 41.552940, 55.048244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277861, 41.370987, 54.736744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852895, -0.074601, 0.516725,
		-0.293144, 0.887423, -0.355736,
		-0.432015, -0.454880, -0.778747,
		31.148256, 41.234524, 54.503120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898994, 41.944393, 54.979630>,  <31.450666, 41.552940, 55.048244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898994, 41.944393, 54.979630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822746, 41.598091, 54.794533>,  <30.776997, 41.390308, 54.683475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.822746, 41.598091, 54.794533>,  <30.898994, 41.944393, 54.979630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822746, 41.598091, 54.794533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885658, -0.051643, 0.461459,
		-0.423408, 0.497793, -0.756920,
		-0.190621, -0.865757, -0.462740,
		30.765560, 41.338364, 54.655712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190157, 41.961666, 54.782570>,  <30.898994, 41.944393, 54.979630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190157, 41.961666, 54.782570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263430, 41.568504, 54.775211>,  <30.307394, 41.332607, 54.770798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263430, 41.568504, 54.775211>,  <30.190157, 41.961666, 54.782570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263430, 41.568504, 54.775211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882501, -0.172659, 0.437471,
		-0.433169, -0.063903, -0.899044,
		0.183184, -0.982906, -0.018396,
		30.318384, 41.273632, 54.769691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553707, 41.624031, 54.620895>,  <30.190157, 41.961666, 54.782570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553707, 41.624031, 54.620895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771221, 41.329399, 54.781769>,  <29.901730, 41.152622, 54.878292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771221, 41.329399, 54.781769>,  <29.553707, 41.624031, 54.620895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771221, 41.329399, 54.781769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813068, -0.343690, 0.469892,
		-0.207886, -0.582522, -0.785781,
		0.543787, -0.736577, 0.402182,
		29.934357, 41.108425, 54.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161367, 40.901661, 54.528568>,  <29.553707, 41.624031, 54.620895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161367, 40.901661, 54.528568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414133, 40.873230, 54.837276>,  <29.565792, 40.856171, 55.022503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.414133, 40.873230, 54.837276>,  <29.161367, 40.901661, 54.528568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414133, 40.873230, 54.837276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720442, -0.420988, 0.551119,
		0.285736, -0.904277, -0.317234,
		0.631916, -0.071074, 0.771771,
		29.603708, 40.851906, 55.068810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119171, 40.276592, 54.694759>,  <29.161367, 40.901661, 54.528568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119171, 40.276592, 54.694759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286537, 40.420631, 55.028290>,  <29.386957, 40.507053, 55.228409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286537, 40.420631, 55.028290>,  <29.119171, 40.276592, 54.694759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286537, 40.420631, 55.028290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714142, -0.436803, 0.546995,
		0.561187, -0.824339, 0.074394,
		0.418414, 0.360094, 0.833824,
		29.412062, 40.528660, 55.278439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247658, 39.763935, 55.212822>,  <29.119171, 40.276592, 54.694759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247658, 39.763935, 55.212822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187475, 40.133080, 55.354637>,  <29.151365, 40.354565, 55.439724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187475, 40.133080, 55.354637>,  <29.247658, 39.763935, 55.212822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187475, 40.133080, 55.354637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819600, -0.316971, 0.477268,
		0.552828, -0.218769, 0.804066,
		-0.150455, 0.922859, 0.354533,
		29.142340, 40.409939, 55.460999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495760, 39.000008, 55.031494>,  <29.247658, 39.763935, 55.212822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495760, 39.000008, 55.031494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486368, 38.626869, 55.175293>,  <29.480734, 38.402985, 55.261574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.486368, 38.626869, 55.175293>,  <29.495760, 39.000008, 55.031494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486368, 38.626869, 55.175293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463186, -0.328826, -0.823002,
		0.885950, 0.147193, 0.439803,
		-0.023478, -0.932849, 0.359502,
		29.479324, 38.347015, 55.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139263, 38.756374, 55.222958>,  <29.495760, 39.000008, 55.031494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139263, 38.756374, 55.222958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906693, 38.448250, 55.118217>,  <29.767149, 38.263374, 55.055374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.906693, 38.448250, 55.118217>,  <30.139263, 38.756374, 55.222958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906693, 38.448250, 55.118217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683098, -0.287372, -0.671412,
		0.441947, -0.569246, 0.693283,
		-0.581429, -0.770309, -0.261847,
		29.732264, 38.217155, 55.039661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610783, 38.158215, 55.260567>,  <30.139263, 38.756374, 55.222958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610783, 38.158215, 55.260567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.314960, 38.054314, 55.012184>,  <30.137466, 37.991974, 54.863155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.314960, 38.054314, 55.012184>,  <30.610783, 38.158215, 55.260567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314960, 38.054314, 55.012184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671520, -0.221696, -0.707045,
		0.045996, -0.939882, 0.338388,
		-0.739558, -0.259756, -0.620952,
		30.093094, 37.976387, 54.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804167, 37.505173, 54.999260>,  <30.610783, 38.158215, 55.260567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804167, 37.505173, 54.999260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555752, 37.643982, 54.718151>,  <30.406702, 37.727268, 54.549484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555752, 37.643982, 54.718151>,  <30.804167, 37.505173, 54.999260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555752, 37.643982, 54.718151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674192, -0.220756, -0.704792,
		-0.399718, -0.911506, -0.096860,
		-0.621040, 0.347020, -0.702771,
		30.369440, 37.748089, 54.507320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058659, 37.232998, 54.483265>,  <30.804167, 37.505173, 54.999260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058659, 37.232998, 54.483265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827942, 37.504662, 54.301689>,  <30.689512, 37.667660, 54.192741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.827942, 37.504662, 54.301689>,  <31.058659, 37.232998, 54.483265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827942, 37.504662, 54.301689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660542, 0.060810, -0.748323,
		-0.480623, -0.731472, -0.483685,
		-0.576790, 0.679155, -0.453941,
		30.654905, 37.708408, 54.165508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940315, 37.015011, 53.768551>,  <31.058659, 37.232998, 54.483265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940315, 37.015011, 53.768551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893686, 37.411163, 53.798386>,  <30.865709, 37.648853, 53.816284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.893686, 37.411163, 53.798386>,  <30.940315, 37.015011, 53.768551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893686, 37.411163, 53.798386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726145, 0.136223, -0.673912,
		-0.677587, -0.024401, -0.735038,
		-0.116573, 0.990378, 0.074584,
		30.858715, 37.708275, 53.820763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899736, 37.228024, 53.050606>,  <30.940315, 37.015011, 53.768551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899736, 37.228024, 53.050606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013784, 37.539398, 53.274300>,  <31.082212, 37.726223, 53.408516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013784, 37.539398, 53.274300>,  <30.899736, 37.228024, 53.050606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013784, 37.539398, 53.274300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674247, 0.251799, -0.694254,
		-0.681247, 0.575009, -0.453065,
		0.285121, 0.778436, 0.559235,
		31.099321, 37.772930, 53.442070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983887, 37.769142, 52.616608>,  <30.899736, 37.228024, 53.050606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983887, 37.769142, 52.616608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161514, 37.943192, 52.929905>,  <31.268091, 38.047623, 53.117882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161514, 37.943192, 52.929905>,  <30.983887, 37.769142, 52.616608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161514, 37.943192, 52.929905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738425, 0.317377, -0.594979,
		-0.507474, 0.842578, -0.180371,
		0.444071, 0.435127, 0.783241,
		31.294735, 38.073730, 53.164879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042021, 38.428143, 52.428341>,  <30.983887, 37.769142, 52.616608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042021, 38.428143, 52.428341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315928, 38.391769, 52.717567>,  <31.480272, 38.369946, 52.891102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315928, 38.391769, 52.717567>,  <31.042021, 38.428143, 52.428341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315928, 38.391769, 52.717567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711805, 0.296239, -0.636848,
		-0.156289, 0.950775, 0.267583,
		0.684768, -0.090934, 0.723066,
		31.521358, 38.364491, 52.934486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503599, 39.062889, 52.403435>,  <31.042021, 38.428143, 52.428341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503599, 39.062889, 52.403435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.716951, 38.814278, 52.632942>,  <31.844963, 38.665112, 52.770645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.716951, 38.814278, 52.632942>,  <31.503599, 39.062889, 52.403435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716951, 38.814278, 52.632942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845847, 0.397399, -0.355833,
		-0.006853, 0.675112, 0.737683,
		0.533382, -0.621529, 0.573765,
		31.876966, 38.627819, 52.805073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950382, 39.447571, 52.761787>,  <31.503599, 39.062889, 52.403435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950382, 39.447571, 52.761787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113998, 39.082771, 52.749428>,  <32.212166, 38.863892, 52.742012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113998, 39.082771, 52.749428>,  <31.950382, 39.447571, 52.761787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113998, 39.082771, 52.749428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873409, 0.401089, -0.276196,
		0.264282, 0.085990, 0.960604,
		0.409038, -0.911994, -0.030896,
		32.236710, 38.809174, 52.740158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484138, 39.564754, 53.041733>,  <31.950382, 39.447571, 52.761787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484138, 39.564754, 53.041733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574867, 39.231712, 52.839619>,  <32.629303, 39.031887, 52.718349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574867, 39.231712, 52.839619>,  <32.484138, 39.564754, 53.041733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574867, 39.231712, 52.839619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875885, 0.401252, -0.267998,
		0.425885, -0.381786, 0.820281,
		0.226821, -0.832608, -0.505288,
		32.642914, 38.981930, 52.688034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178188, 39.493759, 53.176098>,  <32.484138, 39.564754, 53.041733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178188, 39.493759, 53.176098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120277, 39.235184, 52.876457>,  <33.085529, 39.080036, 52.696674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120277, 39.235184, 52.876457>,  <33.178188, 39.493759, 53.176098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120277, 39.235184, 52.876457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863566, 0.287011, -0.414582,
		0.483004, -0.706920, 0.516693,
		-0.144780, -0.646443, -0.749099,
		33.076843, 39.041252, 52.651726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900452, 39.284855, 53.088745>,  <33.178188, 39.493759, 53.176098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900452, 39.284855, 53.088745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669357, 39.197792, 52.774078>,  <33.530701, 39.145554, 52.585278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669357, 39.197792, 52.774078>,  <33.900452, 39.284855, 53.088745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669357, 39.197792, 52.774078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781142, 0.132081, -0.610222,
		0.236721, -0.967048, 0.093710,
		-0.577737, -0.217653, -0.786668,
		33.496037, 39.132496, 52.538078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312553, 38.861588, 52.687241>,  <33.900452, 39.284855, 53.088745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312553, 38.861588, 52.687241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034805, 38.997040, 52.433258>,  <33.868156, 39.078312, 52.280869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034805, 38.997040, 52.433258>,  <34.312553, 38.861588, 52.687241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034805, 38.997040, 52.433258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705794, 0.148370, -0.692705,
		-0.140365, -0.929147, -0.342029,
		-0.694372, 0.338634, -0.634961,
		33.826492, 39.098629, 52.242771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568916, 38.792656, 52.074093>,  <34.312553, 38.861588, 52.687241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568916, 38.792656, 52.074093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289944, 39.059578, 51.969566>,  <34.122559, 39.219730, 51.906849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289944, 39.059578, 51.969566>,  <34.568916, 38.792656, 52.074093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289944, 39.059578, 51.969566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570055, 0.295591, -0.766592,
		-0.434310, -0.683612, -0.586557,
		-0.697432, 0.667309, -0.261318,
		34.080715, 39.259769, 51.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570087, 38.816303, 51.323639>,  <34.568916, 38.792656, 52.074093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570087, 38.816303, 51.323639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382111, 39.156303, 51.418850>,  <34.269325, 39.360302, 51.475975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382111, 39.156303, 51.418850>,  <34.570087, 38.816303, 51.323639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382111, 39.156303, 51.418850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494610, 0.476919, -0.726574,
		-0.731107, -0.223716, -0.644542,
		-0.469940, 0.850000, 0.238026,
		34.241127, 39.411304, 51.490257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453537, 39.137676, 50.696815>,  <34.570087, 38.816303, 51.323639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453537, 39.137676, 50.696815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405289, 39.448235, 50.944256>,  <34.376339, 39.634567, 51.092720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405289, 39.448235, 50.944256>,  <34.453537, 39.137676, 50.696815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405289, 39.448235, 50.944256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458760, 0.596211, -0.658841,
		-0.880335, 0.204318, -0.428094,
		-0.120621, 0.776393, 0.618598,
		34.369102, 39.681152, 51.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261688, 39.736362, 50.176880>,  <34.453537, 39.137676, 50.696815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261688, 39.736362, 50.176880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412437, 39.842445, 50.531876>,  <34.502888, 39.906097, 50.744873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412437, 39.842445, 50.531876>,  <34.261688, 39.736362, 50.176880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412437, 39.842445, 50.531876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560493, 0.697514, -0.446454,
		-0.737439, 0.665685, 0.114223,
		0.376870, 0.265212, 0.887486,
		34.525497, 39.922009, 50.798122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241104, 40.450527, 50.150173>,  <34.261688, 39.736362, 50.176880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241104, 40.450527, 50.150173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505043, 40.356575, 50.435669>,  <34.663406, 40.300205, 50.606968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.505043, 40.356575, 50.435669>,  <34.241104, 40.450527, 50.150173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505043, 40.356575, 50.435669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670316, 0.613218, -0.417901,
		-0.339523, 0.754185, 0.562076,
		0.659849, -0.234882, 0.713743,
		34.702999, 40.286110, 50.649792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477829, 41.066067, 50.633839>,  <34.241104, 40.450527, 50.150173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477829, 41.066067, 50.633839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773064, 40.796494, 50.646725>,  <34.950203, 40.634750, 50.654457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773064, 40.796494, 50.646725>,  <34.477829, 41.066067, 50.633839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773064, 40.796494, 50.646725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626552, 0.666912, -0.403313,
		0.250319, 0.317868, 0.914495,
		0.738088, -0.673935, 0.032220,
		34.994492, 40.594315, 50.656391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.793621, 45.628799, 49.429264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915092, 45.287498, 49.598850>,  <37.987976, 45.082718, 49.700600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915092, 45.287498, 49.598850>,  <37.793621, 45.628799, 49.429264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915092, 45.287498, 49.598850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924982, 0.157328, -0.345914,
		0.228451, 0.497202, 0.837019,
		0.303676, -0.853251, 0.423961,
		38.006195, 45.031525, 49.726040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303619, 45.793766, 49.999176>,  <37.793621, 45.628799, 49.429264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303619, 45.793766, 49.999176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396515, 45.408501, 49.944942>,  <38.452251, 45.177341, 49.912403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.396515, 45.408501, 49.944942>,  <38.303619, 45.793766, 49.999176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396515, 45.408501, 49.944942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966847, 0.243814, -0.075902,
		0.106163, -0.113464, 0.987854,
		0.232240, -0.963162, -0.135587,
		38.466187, 45.119553, 49.904266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844799, 45.754505, 50.336487>,  <38.303619, 45.793766, 49.999176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844799, 45.754505, 50.336487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867790, 45.430298, 50.103329>,  <38.881584, 45.235775, 49.963436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867790, 45.430298, 50.103329>,  <38.844799, 45.754505, 50.336487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867790, 45.430298, 50.103329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959256, 0.206613, -0.192712,
		0.276629, -0.548066, 0.789367,
		0.057475, -0.810515, -0.582891,
		38.885033, 45.187145, 49.928463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478977, 45.326424, 50.459499>,  <38.844799, 45.754505, 50.336487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478977, 45.326424, 50.459499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392029, 45.217186, 50.084656>,  <39.339859, 45.151642, 49.859749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392029, 45.217186, 50.084656>,  <39.478977, 45.326424, 50.459499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392029, 45.217186, 50.084656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963947, 0.090896, -0.250089,
		0.153478, -0.957682, 0.243494,
		-0.217374, -0.273099, -0.937105,
		39.326817, 45.135258, 49.803524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017963, 44.833214, 50.268078>,  <39.478977, 45.326424, 50.459499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017963, 44.833214, 50.268078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858616, 44.941559, 49.917549>,  <39.763008, 45.006565, 49.707233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.858616, 44.941559, 49.917549>,  <40.017963, 44.833214, 50.268078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858616, 44.941559, 49.917549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911223, 0.225982, -0.344391,
		0.104750, -0.935717, -0.336839,
		-0.398373, 0.270860, -0.876318,
		39.739105, 45.022816, 49.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526951, 44.586876, 49.787086>,  <40.017963, 44.833214, 50.268078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526951, 44.586876, 49.787086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306458, 44.854233, 49.587330>,  <40.174160, 45.014648, 49.467476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.306458, 44.854233, 49.587330>,  <40.526951, 44.586876, 49.787086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306458, 44.854233, 49.587330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822355, 0.334112, -0.460545,
		-0.140974, -0.664544, -0.733831,
		-0.551234, 0.668394, -0.499390,
		40.141087, 45.054752, 49.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659523, 44.589634, 49.006142>,  <40.526951, 44.586876, 49.787086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659523, 44.589634, 49.006142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.517082, 44.939934, 49.136528>,  <40.431618, 45.150112, 49.214760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.517082, 44.939934, 49.136528>,  <40.659523, 44.589634, 49.006142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517082, 44.939934, 49.136528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835811, 0.454496, -0.307984,
		-0.417869, 0.162777, -0.893806,
		-0.356098, 0.875750, 0.325971,
		40.410252, 45.202660, 49.234318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859737, 45.037457, 48.481991>,  <40.659523, 44.589634, 49.006142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859737, 45.037457, 48.481991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.757092, 45.277557, 48.785000>,  <40.695503, 45.421619, 48.966805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.757092, 45.277557, 48.785000>,  <40.859737, 45.037457, 48.481991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757092, 45.277557, 48.785000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765210, 0.604968, -0.220154,
		-0.590428, 0.523173, -0.614561,
		-0.256611, 0.600253, 0.757527,
		40.680107, 45.457634, 49.012257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979248, 45.734970, 48.184292>,  <40.859737, 45.037457, 48.481991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979248, 45.734970, 48.184292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953835, 45.767021, 48.582195>,  <40.938587, 45.786251, 48.820938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953835, 45.767021, 48.582195>,  <40.979248, 45.734970, 48.184292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953835, 45.767021, 48.582195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852189, 0.523090, 0.012296,
		-0.519363, 0.848503, -0.101518,
		-0.063536, 0.080127, 0.994758,
		40.934772, 45.791058, 48.880623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090549, 46.376053, 48.370373>,  <40.979248, 45.734970, 48.184292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090549, 46.376053, 48.370373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177841, 46.188225, 48.712574>,  <41.230217, 46.075527, 48.917896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177841, 46.188225, 48.712574>,  <41.090549, 46.376053, 48.370373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177841, 46.188225, 48.712574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883084, 0.468144, 0.031689,
		-0.415378, 0.748565, 0.516829,
		0.218230, -0.469566, 0.855502,
		41.243309, 46.047356, 48.969223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115017, 46.916859, 48.798416>,  <41.090549, 46.376053, 48.370373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115017, 46.916859, 48.798416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334042, 46.613663, 48.940197>,  <41.465454, 46.431747, 49.025265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334042, 46.613663, 48.940197>,  <41.115017, 46.916859, 48.798416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334042, 46.613663, 48.940197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835009, 0.522408, -0.172770,
		-0.054211, 0.390573, 0.918974,
		0.547559, -0.757986, 0.354452,
		41.498310, 46.386269, 49.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631779, 47.315044, 49.127701>,  <41.115017, 46.916859, 48.798416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631779, 47.315044, 49.127701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761543, 46.937134, 49.109142>,  <41.839401, 46.710388, 49.098007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761543, 46.937134, 49.109142>,  <41.631779, 47.315044, 49.127701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761543, 46.937134, 49.109142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939613, 0.316215, 0.130904,
		-0.109004, -0.086059, 0.990309,
		0.324416, -0.944776, -0.046394,
		41.858868, 46.653702, 49.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055420, 47.251537, 49.718021>,  <41.631779, 47.315044, 49.127701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055420, 47.251537, 49.718021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156548, 46.949966, 49.475479>,  <42.217224, 46.769024, 49.329952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156548, 46.949966, 49.475479>,  <42.055420, 47.251537, 49.718021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156548, 46.949966, 49.475479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959008, 0.112364, 0.260149,
		-0.128001, -0.647274, 0.751433,
		0.252822, -0.753930, -0.606359,
		42.232395, 46.723789, 49.293571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373810, 46.809170, 50.031918>,  <42.055420, 47.251537, 49.718021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373810, 46.809170, 50.031918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510666, 46.806778, 49.656067>,  <42.592781, 46.805344, 49.430557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510666, 46.806778, 49.656067>,  <42.373810, 46.809170, 50.031918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510666, 46.806778, 49.656067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925817, 0.173093, 0.336010,
		0.160634, -0.984887, 0.064757,
		0.342141, -0.005978, -0.939630,
		42.613308, 46.804985, 49.374176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069080, 46.771439, 50.298008>,  <42.373810, 46.809170, 50.031918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069080, 46.771439, 50.298008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263603, 46.682503, 50.636017>,  <43.380318, 46.629139, 50.838821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263603, 46.682503, 50.636017>,  <43.069080, 46.771439, 50.298008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263603, 46.682503, 50.636017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631945, -0.757375, 0.164402,
		0.603448, -0.613960, -0.508826,
		0.486309, -0.222342, 0.845026,
		43.409496, 46.615799, 50.889526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077286, 45.992359, 50.411453>,  <43.069080, 46.771439, 50.298008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077286, 45.992359, 50.411453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138992, 46.134789, 50.780106>,  <43.176018, 46.220245, 51.001297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138992, 46.134789, 50.780106>,  <43.077286, 45.992359, 50.411453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138992, 46.134789, 50.780106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775671, -0.534137, 0.336203,
		0.611993, -0.766751, 0.193798,
		0.154269, 0.356077, 0.921635,
		43.185272, 46.241611, 51.056595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882767, 45.454124, 50.854927>,  <43.077286, 45.992359, 50.411453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882767, 45.454124, 50.854927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898544, 45.754593, 51.118500>,  <42.908012, 45.934872, 51.276642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898544, 45.754593, 51.118500>,  <42.882767, 45.454124, 50.854927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898544, 45.754593, 51.118500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661741, -0.474466, 0.580500,
		0.748694, -0.458940, 0.478363,
		0.039448, 0.751170, 0.658930,
		42.910378, 45.979942, 51.316177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092354, 45.216042, 51.596512>,  <42.882767, 45.454124, 50.854927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092354, 45.216042, 51.596512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909416, 45.569115, 51.639778>,  <42.799652, 45.780960, 51.665737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909416, 45.569115, 51.639778>,  <43.092354, 45.216042, 51.596512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909416, 45.569115, 51.639778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624790, -0.405486, 0.667247,
		0.632831, 0.237579, 0.736940,
		-0.457343, 0.882687, 0.108168,
		42.772213, 45.833920, 51.672230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927727, 45.227676, 52.285465>,  <43.092354, 45.216042, 51.596512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927727, 45.227676, 52.285465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679169, 45.478836, 52.098015>,  <42.530033, 45.629532, 51.985542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679169, 45.478836, 52.098015>,  <42.927727, 45.227676, 52.285465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679169, 45.478836, 52.098015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750296, -0.304604, 0.586747,
		0.225673, 0.716209, 0.660390,
		-0.621392, 0.627901, -0.468628,
		42.492752, 45.667206, 51.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551697, 45.488644, 52.877140>,  <42.927727, 45.227676, 52.285465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551697, 45.488644, 52.877140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329041, 45.571693, 52.555386>,  <42.195446, 45.621521, 52.362331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.329041, 45.571693, 52.555386>,  <42.551697, 45.488644, 52.877140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329041, 45.571693, 52.555386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827888, -0.058333, 0.557851,
		0.068900, 0.976468, 0.204359,
		-0.556645, 0.207622, -0.804388,
		42.162048, 45.633980, 52.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040306, 46.066319, 53.109497>,  <42.551697, 45.488644, 52.877140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040306, 46.066319, 53.109497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.880543, 45.910645, 52.777473>,  <41.784683, 45.817242, 52.578259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.880543, 45.910645, 52.777473>,  <42.040306, 46.066319, 53.109497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880543, 45.910645, 52.777473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907460, 0.039113, 0.418314,
		-0.130335, 0.920329, -0.368792,
		-0.399411, -0.389185, -0.830064,
		41.760719, 45.793888, 52.528454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320625, 46.335533, 53.043758>,  <42.040306, 46.066319, 53.109497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320625, 46.335533, 53.043758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307995, 46.035362, 52.779678>,  <41.300415, 45.855259, 52.621231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307995, 46.035362, 52.779678>,  <41.320625, 46.335533, 53.043758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307995, 46.035362, 52.779678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913966, -0.245676, 0.322971,
		-0.404561, 0.613598, -0.678106,
		-0.031580, -0.750427, -0.660198,
		41.298519, 45.810234, 52.581619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629570, 46.376610, 52.545250>,  <41.320625, 46.335533, 53.043758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629570, 46.376610, 52.545250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766109, 46.003227, 52.589314>,  <40.848034, 45.779198, 52.615753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766109, 46.003227, 52.589314>,  <40.629570, 46.376610, 52.545250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766109, 46.003227, 52.589314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935240, -0.325601, 0.138961,
		-0.093846, -0.150461, -0.984152,
		0.341349, -0.933458, 0.110161,
		40.868515, 45.723190, 52.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289536, 46.065315, 52.094536>,  <40.629570, 46.376610, 52.545250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289536, 46.065315, 52.094536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404457, 45.777939, 52.347931>,  <40.473412, 45.605515, 52.499966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404457, 45.777939, 52.347931>,  <40.289536, 46.065315, 52.094536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404457, 45.777939, 52.347931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956391, -0.251524, 0.148496,
		0.052651, -0.648522, -0.759373,
		0.287303, -0.718439, 0.633484,
		40.490646, 45.562408, 52.537975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838947, 45.452965, 51.888432>,  <40.289536, 46.065315, 52.094536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838947, 45.452965, 51.888432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002907, 45.352631, 52.239220>,  <40.101280, 45.292431, 52.449692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002907, 45.352631, 52.239220>,  <39.838947, 45.452965, 51.888432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002907, 45.352631, 52.239220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904503, -0.235869, 0.355303,
		0.117728, -0.938855, -0.323560,
		0.409896, -0.250832, 0.876966,
		40.125877, 45.277382, 52.502308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480576, 44.797329, 51.987911>,  <39.838947, 45.452965, 51.888432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480576, 44.797329, 51.987911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631371, 44.936104, 52.331425>,  <39.721848, 45.019367, 52.537533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631371, 44.936104, 52.331425>,  <39.480576, 44.797329, 51.987911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631371, 44.936104, 52.331425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794500, -0.355455, 0.492363,
		0.476079, -0.867921, 0.141641,
		0.376985, 0.346938, 0.858788,
		39.744465, 45.040184, 52.589062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543362, 44.260273, 52.376991>,  <39.480576, 44.797329, 51.987911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543362, 44.260273, 52.376991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.504841, 44.581337, 52.612438>,  <39.481728, 44.773975, 52.753708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.504841, 44.581337, 52.612438>,  <39.543362, 44.260273, 52.376991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504841, 44.581337, 52.612438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839127, -0.383534, 0.385704,
		0.535342, -0.456778, 0.710467,
		-0.096306, 0.802655, 0.588616,
		39.475948, 44.822132, 52.789024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458683, 44.034748, 53.009586>,  <39.543362, 44.260273, 52.376991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458683, 44.034748, 53.009586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312004, 44.405159, 53.045357>,  <39.223995, 44.627407, 53.066818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312004, 44.405159, 53.045357>,  <39.458683, 44.034748, 53.009586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312004, 44.405159, 53.045357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750489, -0.351250, 0.559812,
		0.549816, 0.138166, 0.823779,
		-0.366700, 0.926031, 0.089431,
		39.201996, 44.682968, 53.072186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038235, 43.759068, 53.358379>,  <39.458683, 44.034748, 53.009586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038235, 43.759068, 53.358379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196247, 43.394859, 53.407211>,  <40.291054, 43.176334, 53.436508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.196247, 43.394859, 53.407211>,  <40.038235, 43.759068, 53.358379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196247, 43.394859, 53.407211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684270, 0.202960, -0.700415,
		0.612966, 0.360218, 0.703218,
		0.395027, -0.910522, 0.122078,
		40.314754, 43.121704, 53.443836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749077, 43.902821, 53.288651>,  <40.038235, 43.759068, 53.358379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749077, 43.902821, 53.288651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733929, 43.506950, 53.233349>,  <40.724842, 43.269428, 53.200169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733929, 43.506950, 53.233349>,  <40.749077, 43.902821, 53.288651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733929, 43.506950, 53.233349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729559, 0.067167, -0.680612,
		0.682869, -0.126641, 0.719480,
		-0.037868, -0.989672, -0.138259,
		40.722569, 43.210049, 53.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456776, 43.629921, 53.455391>,  <40.749077, 43.902821, 53.288651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456776, 43.629921, 53.455391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.255318, 43.377777, 53.219090>,  <41.134445, 43.226490, 53.077309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.255318, 43.377777, 53.219090>,  <41.456776, 43.629921, 53.455391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255318, 43.377777, 53.219090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782047, -0.042112, -0.621796,
		0.367080, -0.775156, 0.514184,
		-0.503642, -0.630364, -0.590750,
		41.104225, 43.188667, 53.041866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934517, 43.188698, 53.249977>,  <41.456776, 43.629921, 53.455391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934517, 43.188698, 53.249977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668015, 43.136551, 52.956280>,  <41.508114, 43.105263, 52.780064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668015, 43.136551, 52.956280>,  <41.934517, 43.188698, 53.249977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668015, 43.136551, 52.956280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743269, -0.036277, -0.668008,
		0.060449, -0.990802, 0.121067,
		-0.666256, -0.130366, -0.734239,
		41.468136, 43.097443, 52.736008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196606, 42.577297, 52.924580>,  <41.934517, 43.188698, 53.249977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196606, 42.577297, 52.924580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935295, 42.716835, 52.655796>,  <41.778507, 42.800556, 52.494526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.935295, 42.716835, 52.655796>,  <42.196606, 42.577297, 52.924580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935295, 42.716835, 52.655796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719152, 0.008383, -0.694802,
		-0.236746, -0.937142, -0.256350,
		-0.653277, 0.348846, -0.671963,
		41.739311, 42.821487, 52.454208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241390, 42.140251, 52.299694>,  <42.196606, 42.577297, 52.924580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241390, 42.140251, 52.299694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088783, 42.494011, 52.192146>,  <41.997219, 42.706264, 52.127617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088783, 42.494011, 52.192146>,  <42.241390, 42.140251, 52.299694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088783, 42.494011, 52.192146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661731, 0.058220, -0.747477,
		-0.645413, -0.463091, -0.607445,
		-0.381515, 0.884396, -0.268866,
		41.974327, 42.759331, 52.111488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945263, 42.045109, 51.607353>,  <42.241390, 42.140251, 52.299694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945263, 42.045109, 51.607353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052456, 42.426987, 51.659107>,  <42.116772, 42.656113, 51.690159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.052456, 42.426987, 51.659107>,  <41.945263, 42.045109, 51.607353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052456, 42.426987, 51.659107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411862, 0.007886, -0.911212,
		-0.870950, 0.297479, -0.391090,
		0.267982, 0.954696, 0.129388,
		42.132851, 42.713394, 51.697926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960972, 42.210526, 50.886814>,  <41.945263, 42.045109, 51.607353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960972, 42.210526, 50.886814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140362, 42.516579, 51.071613>,  <42.247993, 42.700211, 51.182495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.140362, 42.516579, 51.071613>,  <41.960972, 42.210526, 50.886814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140362, 42.516579, 51.071613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536109, 0.183317, -0.824004,
		-0.715164, 0.617226, -0.327981,
		0.448472, 0.765132, 0.462002,
		42.274902, 42.746117, 51.210213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017174, 42.798458, 50.449471>,  <41.960972, 42.210526, 50.886814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017174, 42.798458, 50.449471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300056, 42.881660, 50.719757>,  <42.469784, 42.931583, 50.881927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.300056, 42.881660, 50.719757>,  <42.017174, 42.798458, 50.449471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300056, 42.881660, 50.719757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645394, 0.200290, -0.737123,
		-0.288667, 0.957401, 0.007399,
		0.707205, 0.208008, 0.675718,
		42.512218, 42.944061, 50.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329941, 43.337563, 50.218189>,  <42.017174, 42.798458, 50.449471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329941, 43.337563, 50.218189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600883, 43.198593, 50.477570>,  <42.763451, 43.115211, 50.633198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.600883, 43.198593, 50.477570>,  <42.329941, 43.337563, 50.218189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600883, 43.198593, 50.477570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734165, 0.263176, -0.625891,
		0.046795, 0.900019, 0.433332,
		0.677356, -0.347426, 0.648447,
		42.804089, 43.094364, 50.672104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839504, 43.931694, 50.366276>,  <42.329941, 43.337563, 50.218189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839504, 43.931694, 50.366276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023048, 43.587227, 50.453758>,  <43.133175, 43.380547, 50.506248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.023048, 43.587227, 50.453758>,  <42.839504, 43.931694, 50.366276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023048, 43.587227, 50.453758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781690, 0.274255, -0.560130,
		0.422386, 0.427981, 0.799013,
		0.458858, -0.861171, 0.218707,
		43.160706, 43.328876, 50.519371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593445, 44.102844, 50.582924>,  <42.839504, 43.931694, 50.366276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593445, 44.102844, 50.582924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594479, 43.717087, 50.477135>,  <43.595100, 43.485634, 50.413662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594479, 43.717087, 50.477135>,  <43.593445, 44.102844, 50.582924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594479, 43.717087, 50.477135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877883, 0.128839, -0.461218,
		0.478868, -0.230979, 0.846956,
		0.002589, -0.964391, -0.264469,
		43.595257, 43.427769, 50.397793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.432785, 41.597004, 56.541225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470108, 41.330467, 56.245312>,  <38.492504, 41.170547, 56.067764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470108, 41.330467, 56.245312>,  <38.432785, 41.597004, 56.541225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470108, 41.330467, 56.245312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717679, 0.560022, -0.413899,
		0.690094, -0.492308, 0.530474,
		0.093311, -0.666340, -0.739787,
		38.498100, 41.130566, 56.023376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171700, 41.566673, 56.472435>,  <38.432785, 41.597004, 56.541225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171700, 41.566673, 56.472435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013908, 41.436012, 56.128880>,  <38.919235, 41.357616, 55.922749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013908, 41.436012, 56.128880>,  <39.171700, 41.566673, 56.472435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013908, 41.436012, 56.128880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677442, 0.528133, -0.512003,
		0.620854, -0.783819, 0.012952,
		-0.394477, -0.326654, -0.858885,
		38.895565, 41.338017, 55.871212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709770, 41.384132, 56.080879>,  <39.171700, 41.566673, 56.472435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709770, 41.384132, 56.080879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423595, 41.457672, 55.811256>,  <39.251892, 41.501797, 55.649483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423595, 41.457672, 55.811256>,  <39.709770, 41.384132, 56.080879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423595, 41.457672, 55.811256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669348, 0.456943, -0.585812,
		0.200301, -0.870288, -0.449975,
		-0.715438, 0.183851, -0.674052,
		39.208965, 41.512829, 55.609039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995857, 41.200722, 55.393284>,  <39.709770, 41.384132, 56.080879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995857, 41.200722, 55.393284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683182, 41.432365, 55.300674>,  <39.495579, 41.571350, 55.245110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683182, 41.432365, 55.300674>,  <39.995857, 41.200722, 55.393284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683182, 41.432365, 55.300674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533128, 0.427821, -0.729893,
		-0.323636, -0.693978, -0.643160,
		-0.781687, 0.579106, -0.231521,
		39.448677, 41.606098, 55.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013752, 41.250027, 54.675316>,  <39.995857, 41.200722, 55.393284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013752, 41.250027, 54.675316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782093, 41.557991, 54.782516>,  <39.643097, 41.742771, 54.846836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782093, 41.557991, 54.782516>,  <40.013752, 41.250027, 54.675316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782093, 41.557991, 54.782516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372814, 0.542487, -0.752806,
		-0.724983, -0.336069, -0.601213,
		-0.579145, 0.769912, 0.268003,
		39.608349, 41.788963, 54.862919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838585, 41.463963, 54.073925>,  <40.013752, 41.250027, 54.675316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838585, 41.463963, 54.073925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734535, 41.776649, 54.300644>,  <39.672104, 41.964260, 54.436676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734535, 41.776649, 54.300644>,  <39.838585, 41.463963, 54.073925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734535, 41.776649, 54.300644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248387, 0.621421, -0.743061,
		-0.933081, -0.052503, -0.355814,
		-0.260123, 0.781716, 0.566795,
		39.656498, 42.011166, 54.470684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460991, 41.857967, 53.607334>,  <39.838585, 41.463963, 54.073925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460991, 41.857967, 53.607334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595901, 42.103165, 53.893127>,  <39.676846, 42.250282, 54.064602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595901, 42.103165, 53.893127>,  <39.460991, 41.857967, 53.607334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595901, 42.103165, 53.893127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174031, 0.705269, -0.687247,
		-0.925181, 0.356132, 0.131188,
		0.337273, 0.612997, 0.714480,
		39.697083, 42.287064, 54.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255024, 42.461411, 53.413383>,  <39.460991, 41.857967, 53.607334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255024, 42.461411, 53.413383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555794, 42.540367, 53.664986>,  <39.736256, 42.587742, 53.815948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555794, 42.540367, 53.664986>,  <39.255024, 42.461411, 53.413383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555794, 42.540367, 53.664986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340131, 0.701170, -0.626635,
		-0.564732, 0.685126, 0.460087,
		0.751923, 0.197391, 0.629006,
		39.781372, 42.599583, 53.853687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338524, 43.249565, 53.450756>,  <39.255024, 42.461411, 53.413383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338524, 43.249565, 53.450756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674568, 43.084747, 53.591854>,  <39.876194, 42.985855, 53.676514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674568, 43.084747, 53.591854>,  <39.338524, 43.249565, 53.450756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674568, 43.084747, 53.591854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532896, 0.505717, -0.678434,
		0.101161, 0.757935, 0.644438,
		0.840112, -0.412049, 0.352742,
		39.926601, 42.961132, 53.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007153, 43.985924, 53.671612>,  <39.338524, 43.249565, 53.450756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007153, 43.985924, 53.671612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904861, 44.342697, 53.522446>,  <38.843487, 44.556763, 53.432945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904861, 44.342697, 53.522446>,  <39.007153, 43.985924, 53.671612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904861, 44.342697, 53.522446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936400, -0.132633, 0.324905,
		0.240333, 0.432280, 0.869123,
		-0.255724, 0.891932, -0.372911,
		38.828144, 44.610275, 53.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739357, 44.269440, 54.199261>,  <39.007153, 43.985924, 53.671612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739357, 44.269440, 54.199261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591782, 44.446899, 53.872566>,  <38.503235, 44.553375, 53.676552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591782, 44.446899, 53.872566>,  <38.739357, 44.269440, 54.199261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591782, 44.446899, 53.872566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924040, -0.080386, 0.373749,
		0.100161, 0.892586, 0.439610,
		-0.368942, 0.443653, -0.816734,
		38.481098, 44.579994, 53.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276398, 44.677345, 54.476349>,  <38.739357, 44.269440, 54.199261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276398, 44.677345, 54.476349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161469, 44.624580, 54.096867>,  <38.092510, 44.592922, 53.869179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161469, 44.624580, 54.096867>,  <38.276398, 44.677345, 54.476349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161469, 44.624580, 54.096867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956806, -0.006333, 0.290658,
		-0.044349, 0.991241, -0.124394,
		-0.287324, -0.131911, -0.948707,
		38.075272, 44.585007, 53.812256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873699, 45.214207, 54.371346>,  <38.276398, 44.677345, 54.476349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873699, 45.214207, 54.371346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781189, 44.928619, 54.106995>,  <37.725681, 44.757267, 53.948383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781189, 44.928619, 54.106995>,  <37.873699, 45.214207, 54.371346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781189, 44.928619, 54.106995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926323, -0.046034, 0.373907,
		-0.297381, 0.698663, -0.650719,
		-0.231279, -0.713969, -0.660877,
		37.711803, 44.714428, 53.908730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183102, 45.333496, 54.214493>,  <37.873699, 45.214207, 54.371346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183102, 45.333496, 54.214493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237892, 44.964020, 54.071365>,  <37.270767, 44.742332, 53.985489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237892, 44.964020, 54.071365>,  <37.183102, 45.333496, 54.214493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237892, 44.964020, 54.071365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800563, -0.315961, 0.509183,
		-0.583384, 0.216712, -0.782751,
		0.136972, -0.923691, -0.357818,
		37.278984, 44.686913, 53.964020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472973, 45.119183, 53.793877>,  <37.183102, 45.333496, 54.214493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472973, 45.119183, 53.793877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669418, 44.787323, 53.900082>,  <36.787285, 44.588207, 53.963806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669418, 44.787323, 53.900082>,  <36.472973, 45.119183, 53.793877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669418, 44.787323, 53.900082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847233, -0.384069, 0.366998,
		-0.202501, -0.405191, -0.891523,
		0.491110, -0.829645, 0.265517,
		36.816750, 44.538429, 53.979736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953869, 44.604252, 53.708420>,  <36.472973, 45.119183, 53.793877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953869, 44.604252, 53.708420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229088, 44.419128, 53.931992>,  <36.394218, 44.308052, 54.066135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229088, 44.419128, 53.931992>,  <35.953869, 44.604252, 53.708420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229088, 44.419128, 53.931992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725663, -0.435835, 0.532410,
		-0.002806, -0.771915, -0.635719,
		0.688044, -0.462812, 0.558928,
		36.435501, 44.280285, 54.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727455, 43.906158, 53.676250>,  <35.953869, 44.604252, 53.708420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727455, 43.906158, 53.676250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971161, 43.958145, 53.989151>,  <36.117382, 43.989338, 54.176891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971161, 43.958145, 53.989151>,  <35.727455, 43.906158, 53.676250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971161, 43.958145, 53.989151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638328, -0.504893, 0.581051,
		0.470467, -0.853342, -0.224651,
		0.609260, 0.129964, 0.782248,
		36.153938, 43.997135, 54.223824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914349, 43.253223, 53.960552>,  <35.727455, 43.906158, 53.676250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914349, 43.253223, 53.960552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948425, 43.512848, 54.262932>,  <35.968872, 43.668621, 54.444359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948425, 43.512848, 54.262932>,  <35.914349, 43.253223, 53.960552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948425, 43.512848, 54.262932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594571, -0.575699, 0.561298,
		0.799517, -0.497285, 0.336867,
		0.085191, 0.649059, 0.755953,
		35.973984, 43.707565, 54.489719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921436, 42.830513, 54.573505>,  <35.914349, 43.253223, 53.960552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921436, 42.830513, 54.573505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869537, 43.193192, 54.734039>,  <35.838398, 43.410797, 54.830360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869537, 43.193192, 54.734039>,  <35.921436, 42.830513, 54.573505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869537, 43.193192, 54.734039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664891, -0.379824, 0.643159,
		0.735586, -0.183395, 0.652135,
		-0.129745, 0.906697, 0.401331,
		35.830612, 43.465202, 54.854439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947998, 42.709770, 55.333099>,  <35.921436, 42.830513, 54.573505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947998, 42.709770, 55.333099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771820, 43.064186, 55.275230>,  <35.666111, 43.276836, 55.240509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771820, 43.064186, 55.275230>,  <35.947998, 42.709770, 55.333099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771820, 43.064186, 55.275230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727112, -0.257534, 0.636384,
		0.526605, 0.385491, 0.757684,
		-0.440450, 0.886044, -0.144677,
		35.639687, 43.329998, 55.231827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796413, 42.917557, 55.946129>,  <35.947998, 42.709770, 55.333099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796413, 42.917557, 55.946129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555618, 43.139664, 55.716591>,  <35.411140, 43.272926, 55.578869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555618, 43.139664, 55.716591>,  <35.796413, 42.917557, 55.946129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555618, 43.139664, 55.716591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770471, -0.215150, 0.600071,
		0.209737, 0.803362, 0.557333,
		-0.601984, 0.555266, -0.573842,
		35.375023, 43.306244, 55.544437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318138, 43.175262, 56.417961>,  <35.796413, 42.917557, 55.946129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318138, 43.175262, 56.417961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130936, 43.235039, 56.069561>,  <35.018616, 43.270905, 55.860523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130936, 43.235039, 56.069561>,  <35.318138, 43.175262, 56.417961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130936, 43.235039, 56.069561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881922, -0.141898, 0.449531,
		-0.056414, 0.978535, 0.198206,
		-0.468007, 0.149443, -0.870997,
		34.990532, 43.279873, 55.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887459, 43.701851, 56.550365>,  <35.318138, 43.175262, 56.417961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887459, 43.701851, 56.550365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724789, 43.508636, 56.240192>,  <34.627186, 43.392708, 56.054089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724789, 43.508636, 56.240192>,  <34.887459, 43.701851, 56.550365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724789, 43.508636, 56.240192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771234, -0.273463, 0.574818,
		-0.489709, 0.831803, -0.261322,
		-0.406673, -0.483034, -0.775432,
		34.602787, 43.363728, 56.007565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.843491, 37.167332, 50.606304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023407, 37.309357, 50.934113>,  <35.131355, 37.394573, 51.130798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023407, 37.309357, 50.934113>,  <34.843491, 37.167332, 50.606304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023407, 37.309357, 50.934113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589861, 0.570899, -0.571086,
		-0.670636, 0.740274, 0.047347,
		0.449790, 0.355062, 0.819524,
		35.158344, 37.415874, 51.179970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979156, 37.769726, 50.327183>,  <34.843491, 37.167332, 50.606304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979156, 37.769726, 50.327183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234299, 37.743980, 50.634167>,  <35.387383, 37.728531, 50.818359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234299, 37.743980, 50.634167>,  <34.979156, 37.769726, 50.327183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234299, 37.743980, 50.634167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645561, 0.588112, -0.487212,
		-0.419995, 0.806214, 0.416681,
		0.637852, -0.064366, 0.767464,
		35.425655, 37.724670, 50.864407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226543, 38.474552, 50.494556>,  <34.979156, 37.769726, 50.327183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226543, 38.474552, 50.494556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487938, 38.224953, 50.665943>,  <35.644775, 38.075191, 50.768776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487938, 38.224953, 50.665943>,  <35.226543, 38.474552, 50.494556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487938, 38.224953, 50.665943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756882, 0.545613, -0.359773,
		-0.009279, 0.559405, 0.828842,
		0.653486, -0.623998, 0.428466,
		35.683983, 38.037754, 50.794483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758301, 38.827919, 50.800934>,  <35.226543, 38.474552, 50.494556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758301, 38.827919, 50.800934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908249, 38.460365, 50.751743>,  <35.998219, 38.239834, 50.722229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908249, 38.460365, 50.751743>,  <35.758301, 38.827919, 50.800934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908249, 38.460365, 50.751743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813942, 0.389715, -0.430838,
		0.443815, 0.061416, 0.894011,
		0.374870, -0.918885, -0.122972,
		36.020710, 38.184700, 50.714851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397614, 38.932236, 51.175354>,  <35.758301, 38.827919, 50.800934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397614, 38.932236, 51.175354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452591, 38.638641, 50.909309>,  <36.485577, 38.462482, 50.749683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452591, 38.638641, 50.909309>,  <36.397614, 38.932236, 51.175354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452591, 38.638641, 50.909309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765165, 0.505081, -0.399268,
		0.628992, -0.454039, 0.631045,
		0.137446, -0.733990, -0.665107,
		36.493824, 38.418446, 50.709778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166668, 38.923035, 51.144527>,  <36.397614, 38.932236, 51.175354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166668, 38.923035, 51.144527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041183, 38.715729, 50.826286>,  <36.965893, 38.591347, 50.635342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041183, 38.715729, 50.826286>,  <37.166668, 38.923035, 51.144527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041183, 38.715729, 50.826286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708570, 0.429996, -0.559493,
		0.632070, -0.739263, 0.232329,
		-0.313712, -0.518260, -0.795607,
		36.947071, 38.560249, 50.587605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821346, 38.640083, 50.808655>,  <37.166668, 38.923035, 51.144527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821346, 38.640083, 50.808655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532120, 38.610008, 50.533985>,  <37.358585, 38.591961, 50.369183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532120, 38.610008, 50.533985>,  <37.821346, 38.640083, 50.808655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532120, 38.610008, 50.533985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684901, 0.051401, -0.726821,
		0.089946, -0.995844, 0.014332,
		-0.723063, -0.075191, -0.686678,
		37.315201, 38.587452, 50.327980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909859, 37.982773, 50.356895>,  <37.821346, 38.640083, 50.808655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909859, 37.982773, 50.356895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716362, 38.274178, 50.162876>,  <37.600266, 38.449020, 50.046467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.716362, 38.274178, 50.162876>,  <37.909859, 37.982773, 50.356895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716362, 38.274178, 50.162876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733247, 0.034755, -0.679073,
		-0.477854, -0.684154, -0.550990,
		-0.483740, 0.728509, -0.485046,
		37.571239, 38.492729, 50.017361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989948, 37.877808, 49.659931>,  <37.909859, 37.982773, 50.356895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989948, 37.877808, 49.659931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870670, 38.259300, 49.675350>,  <37.799103, 38.488194, 49.684601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870670, 38.259300, 49.675350>,  <37.989948, 37.877808, 49.659931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870670, 38.259300, 49.675350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593436, 0.216869, -0.775114,
		-0.747606, -0.208260, -0.630645,
		-0.298192, 0.953727, 0.038544,
		37.781212, 38.545418, 49.686913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188114, 38.067043, 49.078102>,  <37.989948, 37.877808, 49.659931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188114, 38.067043, 49.078102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112579, 38.419983, 49.250519>,  <38.067257, 38.631748, 49.353970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112579, 38.419983, 49.250519>,  <38.188114, 38.067043, 49.078102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112579, 38.419983, 49.250519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624059, 0.446735, -0.641076,
		-0.758215, 0.147936, -0.635000,
		-0.188838, 0.882351, 0.431042,
		38.055927, 38.684689, 49.379833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088089, 38.492531, 48.574440>,  <38.188114, 38.067043, 49.078102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088089, 38.492531, 48.574440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203094, 38.720428, 48.882393>,  <38.272099, 38.857166, 49.067165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203094, 38.720428, 48.882393>,  <38.088089, 38.492531, 48.574440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203094, 38.720428, 48.882393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661439, 0.463245, -0.589833,
		-0.692701, 0.678818, -0.243663,
		0.287514, 0.569745, 0.769887,
		38.289349, 38.891354, 49.113358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082542, 39.175060, 48.262489>,  <38.088089, 38.492531, 48.574440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082542, 39.175060, 48.262489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298546, 39.219765, 48.596172>,  <38.428146, 39.246586, 48.796383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.298546, 39.219765, 48.596172>,  <38.082542, 39.175060, 48.262489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298546, 39.219765, 48.596172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700769, 0.489262, -0.519177,
		-0.466168, 0.864947, 0.185889,
		0.540009, 0.111758, 0.834206,
		38.460548, 39.253292, 48.846436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209316, 39.901207, 48.389065>,  <38.082542, 39.175060, 48.262489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209316, 39.901207, 48.389065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496246, 39.703476, 48.585464>,  <38.668404, 39.584839, 48.703304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496246, 39.703476, 48.585464>,  <38.209316, 39.901207, 48.389065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496246, 39.703476, 48.585464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681846, 0.642964, -0.348831,
		-0.143261, 0.585015, 0.798270,
		0.717330, -0.494323, 0.491002,
		38.711445, 39.555180, 48.732765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619587, 40.369953, 48.564045>,  <38.209316, 39.901207, 48.389065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619587, 40.369953, 48.564045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866066, 40.060051, 48.620686>,  <39.013954, 39.874111, 48.654671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866066, 40.060051, 48.620686>,  <38.619587, 40.369953, 48.564045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866066, 40.060051, 48.620686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774911, 0.564273, -0.284796,
		0.140743, 0.285223, 0.948071,
		0.616202, -0.774754, 0.141605,
		39.050926, 39.827625, 48.663166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332478, 41.006557, 48.985992>,  <38.619587, 40.369953, 48.564045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332478, 41.006557, 48.985992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272697, 41.366707, 48.822533>,  <38.236828, 41.582798, 48.724457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272697, 41.366707, 48.822533>,  <38.332478, 41.006557, 48.985992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272697, 41.366707, 48.822533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851063, 0.093251, 0.516717,
		0.503345, 0.425009, 0.752337,
		-0.149453, 0.900373, -0.408647,
		38.227863, 41.636818, 48.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212479, 41.457516, 49.595417>,  <38.332478, 41.006557, 48.985992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212479, 41.457516, 49.595417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026321, 41.612541, 49.277122>,  <37.914627, 41.705555, 49.086143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026321, 41.612541, 49.277122>,  <38.212479, 41.457516, 49.595417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026321, 41.612541, 49.277122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879322, -0.099865, 0.465640,
		0.100998, 0.916418, 0.387269,
		-0.465395, 0.387563, -0.795740,
		37.886703, 41.728809, 49.038399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749557, 41.981407, 49.808342>,  <38.212479, 41.457516, 49.595417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749557, 41.981407, 49.808342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619297, 41.885231, 49.442577>,  <37.541142, 41.827526, 49.223118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619297, 41.885231, 49.442577>,  <37.749557, 41.981407, 49.808342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619297, 41.885231, 49.442577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902749, -0.208426, 0.376300,
		-0.281063, 0.948024, -0.149180,
		-0.325649, -0.240436, -0.914409,
		37.521603, 41.813099, 49.168255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115887, 42.421253, 49.678791>,  <37.749557, 41.981407, 49.808342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115887, 42.421253, 49.678791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092888, 42.098213, 49.444027>,  <37.079086, 41.904388, 49.303169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.092888, 42.098213, 49.444027>,  <37.115887, 42.421253, 49.678791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092888, 42.098213, 49.444027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786619, -0.325354, 0.524760,
		-0.614754, 0.491853, -0.616569,
		-0.057502, -0.807604, -0.586914,
		37.075638, 41.855930, 49.267952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401123, 42.354988, 49.646389>,  <37.115887, 42.421253, 49.678791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401123, 42.354988, 49.646389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511616, 42.002121, 49.493820>,  <36.577911, 41.790401, 49.402279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.511616, 42.002121, 49.493820>,  <36.401123, 42.354988, 49.646389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511616, 42.002121, 49.493820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840894, -0.414016, 0.348551,
		-0.465393, 0.224452, -0.856172,
		0.276236, -0.882163, -0.381420,
		36.594486, 41.737473, 49.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839920, 42.055561, 49.256680>,  <36.401123, 42.354988, 49.646389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839920, 42.055561, 49.256680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078419, 41.763008, 49.389084>,  <36.221519, 41.587475, 49.468525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078419, 41.763008, 49.389084>,  <35.839920, 42.055561, 49.256680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078419, 41.763008, 49.389084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784275, -0.442598, 0.434765,
		-0.171476, -0.518829, -0.837504,
		0.596246, -0.731385, 0.331009,
		36.257294, 41.543594, 49.488388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373440, 41.482861, 49.206875>,  <35.839920, 42.055561, 49.256680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373440, 41.482861, 49.206875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690449, 41.332100, 49.398647>,  <35.880653, 41.241646, 49.513710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.690449, 41.332100, 49.398647>,  <35.373440, 41.482861, 49.206875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690449, 41.332100, 49.398647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588637, -0.678273, 0.439832,
		0.159414, -0.630788, -0.759403,
		0.792523, -0.376897, 0.479432,
		35.928207, 41.219032, 49.542477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379829, 40.749481, 49.218533>,  <35.373440, 41.482861, 49.206875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379829, 40.749481, 49.218533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614979, 40.813744, 49.535667>,  <35.756069, 40.852299, 49.725948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.614979, 40.813744, 49.535667>,  <35.379829, 40.749481, 49.218533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614979, 40.813744, 49.535667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539635, -0.652267, 0.532299,
		0.602658, -0.740769, -0.296757,
		0.587875, 0.160653, 0.792839,
		35.791340, 40.861938, 49.773518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587833, 40.075024, 49.493622>,  <35.379829, 40.749481, 49.218533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587833, 40.075024, 49.493622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648544, 40.350815, 49.776913>,  <35.684971, 40.516289, 49.946888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648544, 40.350815, 49.776913>,  <35.587833, 40.075024, 49.493622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648544, 40.350815, 49.776913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418464, -0.604322, 0.677998,
		0.895462, -0.399270, 0.196801,
		0.151773, 0.689476, 0.708228,
		35.694077, 40.557659, 49.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804985, 39.708473, 50.004765>,  <35.587833, 40.075024, 49.493622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804985, 39.708473, 50.004765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.680916, 40.045403, 50.181076>,  <35.606476, 40.247559, 50.286861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.680916, 40.045403, 50.181076>,  <35.804985, 39.708473, 50.004765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680916, 40.045403, 50.181076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467124, -0.538850, 0.701025,
		0.828003, 0.011538, 0.560605,
		-0.310170, 0.842323, 0.440780,
		35.587864, 40.298100, 50.313309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930748, 39.725204, 50.785271>,  <35.804985, 39.708473, 50.004765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930748, 39.725204, 50.785271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634560, 39.986961, 50.724003>,  <35.456844, 40.144016, 50.687241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634560, 39.986961, 50.724003>,  <35.930748, 39.725204, 50.785271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634560, 39.986961, 50.724003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528321, -0.425894, 0.734500,
		0.415419, 0.624803, 0.661096,
		-0.740475, 0.654397, -0.153172,
		35.412418, 40.183281, 50.678051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643108, 39.927860, 51.458965>,  <35.930748, 39.725204, 50.785271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643108, 39.927860, 51.458965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350845, 40.023827, 51.203281>,  <35.175488, 40.081406, 51.049873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350845, 40.023827, 51.203281>,  <35.643108, 39.927860, 51.458965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350845, 40.023827, 51.203281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682495, -0.231206, 0.693358,
		0.018558, 0.942860, 0.332673,
		-0.730655, 0.239915, -0.639206,
		35.131649, 40.095802, 51.011520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101227, 40.322693, 51.927773>,  <35.643108, 39.927860, 51.458965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101227, 40.322693, 51.927773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931900, 40.206688, 51.584446>,  <34.830303, 40.137085, 51.378452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931900, 40.206688, 51.584446>,  <35.101227, 40.322693, 51.927773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931900, 40.206688, 51.584446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743291, -0.430498, 0.512045,
		-0.518000, 0.854732, -0.033326,
		-0.423314, -0.290010, -0.858312,
		34.804905, 40.119686, 51.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510864, 40.657742, 51.904953>,  <35.101227, 40.322693, 51.927773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510864, 40.657742, 51.904953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.462803, 40.334152, 51.674782>,  <34.433964, 40.139999, 51.536678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.462803, 40.334152, 51.674782>,  <34.510864, 40.657742, 51.904953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462803, 40.334152, 51.674782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663620, -0.365647, 0.652618,
		-0.738357, 0.460284, -0.492918,
		-0.120156, -0.808975, -0.575432,
		34.426758, 40.091461, 51.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036625, 41.205154, 51.609058>,  <34.510864, 40.657742, 51.904953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036625, 41.205154, 51.609058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938858, 41.546234, 51.793739>,  <33.880199, 41.750881, 51.904549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.938858, 41.546234, 51.793739>,  <34.036625, 41.205154, 51.609058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938858, 41.546234, 51.793739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598126, 0.507349, -0.620356,
		-0.763220, 0.124531, -0.634025,
		-0.244418, 0.852695, 0.461704,
		33.865532, 41.802044, 51.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877098, 41.791080, 51.034569>,  <34.036625, 41.205154, 51.609058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877098, 41.791080, 51.034569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.956268, 42.001152, 51.365631>,  <34.003773, 42.127193, 51.564266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.956268, 42.001152, 51.365631>,  <33.877098, 41.791080, 51.034569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956268, 42.001152, 51.365631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522198, 0.658069, -0.542453,
		-0.829538, 0.539567, -0.143996,
		0.197930, 0.525180, 0.827653,
		34.015648, 42.158707, 51.613926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816624, 42.475128, 50.833473>,  <33.877098, 41.791080, 51.034569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816624, 42.475128, 50.833473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058662, 42.476540, 51.151932>,  <34.203888, 42.477386, 51.343006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.058662, 42.476540, 51.151932>,  <33.816624, 42.475128, 50.833473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058662, 42.476540, 51.151932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601504, 0.653098, -0.460061,
		-0.521581, 0.757265, 0.393068,
		0.605100, 0.003527, 0.796142,
		34.240192, 42.477596, 51.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967735, 43.202332, 50.822643>,  <33.816624, 42.475128, 50.833473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967735, 43.202332, 50.822643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214462, 43.033310, 51.088272>,  <34.362499, 42.931896, 51.247650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214462, 43.033310, 51.088272>,  <33.967735, 43.202332, 50.822643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214462, 43.033310, 51.088272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676248, 0.716219, -0.172391,
		-0.402774, 0.555409, 0.727526,
		0.616816, -0.422553, 0.664069,
		34.399506, 42.906544, 51.287491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180099, 43.721321, 51.212296>,  <33.967735, 43.202332, 50.822643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180099, 43.721321, 51.212296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.456348, 43.437714, 51.269329>,  <34.622097, 43.267548, 51.303547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.456348, 43.437714, 51.269329>,  <34.180099, 43.721321, 51.212296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456348, 43.437714, 51.269329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723171, 0.674884, -0.146815,
		0.007869, 0.204504, 0.978834,
		0.690624, -0.709020, 0.142581,
		34.663536, 43.225006, 51.312103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699768, 44.066006, 51.587578>,  <34.180099, 43.721321, 51.212296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699768, 44.066006, 51.587578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861042, 43.729050, 51.444565>,  <34.957806, 43.526878, 51.358757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.861042, 43.729050, 51.444565>,  <34.699768, 44.066006, 51.587578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861042, 43.729050, 51.444565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843165, 0.493811, -0.212659,
		0.355693, -0.215717, 0.909367,
		0.403181, -0.842388, -0.357530,
		34.981995, 43.476334, 51.337307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397026, 43.945889, 51.962376>,  <34.699768, 44.066006, 51.587578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397026, 43.945889, 51.962376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389721, 43.769394, 51.603493>,  <35.385338, 43.663498, 51.388165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.389721, 43.769394, 51.603493>,  <35.397026, 43.945889, 51.962376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389721, 43.769394, 51.603493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845577, 0.472040, -0.249352,
		0.533540, -0.763210, 0.364479,
		-0.018260, -0.441235, -0.897206,
		35.384243, 43.637024, 51.334332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091682, 43.864239, 51.804455>,  <35.397026, 43.945889, 51.962376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091682, 43.864239, 51.804455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914078, 43.822395, 51.448498>,  <35.807514, 43.797291, 51.234924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914078, 43.822395, 51.448498>,  <36.091682, 43.864239, 51.804455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914078, 43.822395, 51.448498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845785, 0.278940, -0.454797,
		0.295804, -0.954593, -0.035374,
		-0.444014, -0.104612, -0.889892,
		35.780872, 43.791012, 51.181530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441456, 43.418865, 51.358757>,  <36.091682, 43.864239, 51.804455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441456, 43.418865, 51.358757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235584, 43.678665, 51.134880>,  <36.112061, 43.834545, 51.000553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235584, 43.678665, 51.134880>,  <36.441456, 43.418865, 51.358757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235584, 43.678665, 51.134880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839421, 0.248807, -0.483185,
		-0.174572, -0.718504, -0.673258,
		-0.514682, 0.649497, -0.559693,
		36.081181, 43.873516, 50.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828575, 43.417435, 50.833252>,  <36.441456, 43.418865, 51.358757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828575, 43.417435, 50.833252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595261, 43.730843, 50.747574>,  <36.455273, 43.918888, 50.696167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595261, 43.730843, 50.747574>,  <36.828575, 43.417435, 50.833252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595261, 43.730843, 50.747574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671209, 0.316432, -0.670335,
		-0.457441, -0.534766, -0.710474,
		-0.583289, 0.783515, -0.214191,
		36.420273, 43.965897, 50.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635807, 43.497242, 50.041851>,  <36.828575, 43.417435, 50.833252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635807, 43.497242, 50.041851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.624565, 43.861847, 50.205978>,  <36.617821, 44.080608, 50.304455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.624565, 43.861847, 50.205978>,  <36.635807, 43.497242, 50.041851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624565, 43.861847, 50.205978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832291, 0.248678, -0.495431,
		-0.553627, 0.327582, -0.765629,
		-0.028101, 0.911509, 0.410318,
		36.616135, 44.135300, 50.329075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023731, 43.800709, 49.509605>,  <36.635807, 43.497242, 50.041851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023731, 43.800709, 49.509605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003040, 44.093575, 49.781269>,  <36.990627, 44.269295, 49.944267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003040, 44.093575, 49.781269>,  <37.023731, 43.800709, 49.509605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003040, 44.093575, 49.781269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799674, 0.437734, -0.410986,
		-0.598202, 0.521850, -0.608135,
		-0.051728, 0.732162, 0.679163,
		36.987522, 44.313225, 49.985020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200443, 44.313385, 49.099548>,  <37.023731, 43.800709, 49.509605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200443, 44.313385, 49.099548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239731, 44.440506, 49.476772>,  <37.263302, 44.516777, 49.703106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239731, 44.440506, 49.476772>,  <37.200443, 44.313385, 49.099548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239731, 44.440506, 49.476772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822342, 0.507769, -0.256760,
		-0.560453, 0.800733, -0.211469,
		0.098219, 0.317801, 0.943056,
		37.269196, 44.535847, 49.759689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338577, 45.028343, 49.072407>,  <37.200443, 44.313385, 49.099548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338577, 45.028343, 49.072407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490135, 44.886803, 49.414455>,  <37.581070, 44.801880, 49.619682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.490135, 44.886803, 49.414455>,  <37.338577, 45.028343, 49.072407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490135, 44.886803, 49.414455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892252, 0.384909, -0.236075,
		-0.245607, 0.852429, 0.461565,
		0.378898, -0.353851, 0.855117,
		37.603806, 44.780647, 49.670990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.145599, 44.083866, 56.520504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181084, 43.736130, 56.326027>,  <34.202374, 43.527489, 56.209339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181084, 43.736130, 56.326027>,  <34.145599, 44.083866, 56.520504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181084, 43.736130, 56.326027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846478, -0.323063, 0.423210,
		-0.524982, 0.374007, -0.764534,
		0.088709, -0.869338, -0.486191,
		34.207695, 43.475327, 56.180168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535301, 44.033333, 56.124847>,  <34.145599, 44.083866, 56.520504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535301, 44.033333, 56.124847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705109, 43.674271, 56.172188>,  <33.806992, 43.458836, 56.200592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.705109, 43.674271, 56.172188>,  <33.535301, 44.033333, 56.124847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705109, 43.674271, 56.172188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819891, -0.325655, 0.470879,
		-0.384145, -0.296929, -0.874223,
		0.424513, -0.897653, 0.118350,
		33.832462, 43.404976, 56.207695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048443, 43.505089, 55.783691>,  <33.535301, 44.033333, 56.124847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048443, 43.505089, 55.783691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283653, 43.284607, 56.020470>,  <33.424782, 43.152317, 56.162537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283653, 43.284607, 56.020470>,  <33.048443, 43.505089, 55.783691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283653, 43.284607, 56.020470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803897, -0.479065, 0.352485,
		0.089286, -0.683131, -0.724817,
		0.588028, -0.551206, 0.591941,
		33.460060, 43.119244, 56.198051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974976, 42.835453, 55.572803>,  <33.048443, 43.505089, 55.783691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974976, 42.835453, 55.572803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108315, 42.815147, 55.949379>,  <33.188320, 42.802963, 56.175323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108315, 42.815147, 55.949379>,  <32.974976, 42.835453, 55.572803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108315, 42.815147, 55.949379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862331, -0.420084, 0.282691,
		0.381132, -0.906064, -0.183809,
		0.333351, -0.050762, 0.941435,
		33.208321, 42.799919, 56.231808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761021, 42.193111, 55.799793>,  <32.974976, 42.835453, 55.572803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761021, 42.193111, 55.799793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852989, 42.364662, 56.149239>,  <32.908169, 42.467594, 56.358906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852989, 42.364662, 56.149239>,  <32.761021, 42.193111, 55.799793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852989, 42.364662, 56.149239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695917, -0.555059, 0.455642,
		0.680322, -0.712723, 0.170845,
		0.229918, 0.428877, 0.873614,
		32.921963, 42.493324, 56.411324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065670, 41.713882, 56.210808>,  <32.761021, 42.193111, 55.799793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065670, 41.713882, 56.210808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913738, 41.985794, 56.461769>,  <32.822578, 42.148941, 56.612347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913738, 41.985794, 56.461769>,  <33.065670, 41.713882, 56.210808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913738, 41.985794, 56.461769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592770, -0.699544, 0.399076,
		0.710180, -0.220328, 0.668656,
		-0.379827, 0.679775, 0.627405,
		32.799789, 42.189728, 56.649990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037655, 41.306385, 56.793430>,  <33.065670, 41.713882, 56.210808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037655, 41.306385, 56.793430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812237, 41.624367, 56.883297>,  <32.676987, 41.815155, 56.937218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.812237, 41.624367, 56.883297>,  <33.037655, 41.306385, 56.793430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812237, 41.624367, 56.883297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510662, -0.549011, 0.661673,
		0.649343, 0.258150, 0.715340,
		-0.563541, 0.794950, 0.224669,
		32.643173, 41.862850, 56.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047260, 41.324474, 57.560379>,  <33.037655, 41.306385, 56.793430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047260, 41.324474, 57.560379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.726585, 41.488365, 57.386288>,  <32.534180, 41.586700, 57.281834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.726585, 41.488365, 57.386288>,  <33.047260, 41.324474, 57.560379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726585, 41.488365, 57.386288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597731, -0.543778, 0.589088,
		0.004699, 0.732412, 0.680846,
		-0.801683, 0.409730, -0.435230,
		32.486080, 41.611286, 57.255718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522831, 41.094749, 58.012611>,  <33.047260, 41.324474, 57.560379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522831, 41.094749, 58.012611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326832, 41.262329, 57.706833>,  <32.209232, 41.362877, 57.523365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326832, 41.262329, 57.706833>,  <32.522831, 41.094749, 58.012611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326832, 41.262329, 57.706833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845893, -0.440410, 0.300839,
		-0.210635, 0.794054, 0.570185,
		-0.489998, 0.418948, -0.764450,
		32.179832, 41.388012, 57.477497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882837, 41.362682, 58.276119>,  <32.522831, 41.094749, 58.012611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882837, 41.362682, 58.276119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843180, 41.313972, 57.881081>,  <31.819386, 41.284748, 57.644058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.843180, 41.313972, 57.881081>,  <31.882837, 41.362682, 58.276119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843180, 41.313972, 57.881081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851083, -0.503866, 0.147568,
		-0.515584, 0.855155, -0.053682,
		-0.099145, -0.121772, -0.987594,
		31.813437, 41.277439, 57.584801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192804, 41.534195, 58.052071>,  <31.882837, 41.362682, 58.276119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192804, 41.534195, 58.052071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330833, 41.311966, 57.749477>,  <31.413651, 41.178631, 57.567921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.330833, 41.311966, 57.749477>,  <31.192804, 41.534195, 58.052071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330833, 41.311966, 57.749477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871224, -0.489414, -0.037980,
		-0.349133, 0.672172, -0.652910,
		0.345072, -0.555571, -0.756483,
		31.434355, 41.145294, 57.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606009, 41.601299, 57.602757>,  <31.192804, 41.534195, 58.052071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606009, 41.601299, 57.602757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843172, 41.285187, 57.540890>,  <30.985470, 41.095520, 57.503769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.843172, 41.285187, 57.540890>,  <30.606009, 41.601299, 57.602757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843172, 41.285187, 57.540890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793954, -0.605778, 0.051668,
		-0.134524, 0.092162, -0.986615,
		0.592908, -0.790278, -0.154664,
		31.021044, 41.048103, 57.494492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303394, 41.143700, 57.107525>,  <30.606009, 41.601299, 57.602757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303394, 41.143700, 57.107525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553648, 40.924004, 57.329124>,  <30.703800, 40.792187, 57.462086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553648, 40.924004, 57.329124>,  <30.303394, 41.143700, 57.107525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553648, 40.924004, 57.329124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672699, -0.739438, 0.026592,
		0.395043, -0.389312, -0.832092,
		0.625634, -0.549242, 0.553999,
		30.741339, 40.759232, 57.495323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423681, 40.527737, 56.703125>,  <30.303394, 41.143700, 57.107525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423681, 40.527737, 56.703125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453255, 40.502945, 57.101257>,  <30.470999, 40.488071, 57.340137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453255, 40.502945, 57.101257>,  <30.423681, 40.527737, 56.703125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453255, 40.502945, 57.101257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753458, -0.657324, 0.015039,
		0.653326, -0.751055, -0.095294,
		0.073935, -0.061975, 0.995335,
		30.475435, 40.484352, 57.399857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916166, 40.921879, 56.367912>,  <30.423681, 40.527737, 56.703125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916166, 40.921879, 56.367912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754181, 40.785942, 56.028381>,  <29.656990, 40.704380, 55.824661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754181, 40.785942, 56.028381>,  <29.916166, 40.921879, 56.367912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754181, 40.785942, 56.028381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818720, 0.278535, -0.502112,
		0.407067, -0.898291, 0.165437,
		-0.404963, -0.339840, -0.848831,
		29.632692, 40.683990, 55.773731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518057, 40.857845, 55.986473>,  <29.916166, 40.921879, 56.367912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518057, 40.857845, 55.986473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.234749, 40.809578, 55.708252>,  <30.064764, 40.780617, 55.541321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.234749, 40.809578, 55.708252>,  <30.518057, 40.857845, 55.986473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234749, 40.809578, 55.708252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698452, 0.023355, -0.715276,
		0.102560, -0.992418, 0.067743,
		-0.708270, -0.120674, -0.695551,
		30.022268, 40.773376, 55.499588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749825, 40.302879, 55.518192>,  <30.518057, 40.857845, 55.986473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749825, 40.302879, 55.518192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485504, 40.544731, 55.340309>,  <30.326912, 40.689842, 55.233578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485504, 40.544731, 55.340309>,  <30.749825, 40.302879, 55.518192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485504, 40.544731, 55.340309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549822, -0.013374, -0.835175,
		-0.510919, -0.796394, -0.323602,
		-0.660801, 0.604630, -0.444707,
		30.287264, 40.726120, 55.206898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582661, 40.013206, 54.838150>,  <30.749825, 40.302879, 55.518192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582661, 40.013206, 54.838150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504349, 40.405373, 54.829632>,  <30.457361, 40.640671, 54.824520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504349, 40.405373, 54.829632>,  <30.582661, 40.013206, 54.838150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504349, 40.405373, 54.829632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663941, 0.116536, -0.738648,
		-0.721701, -0.158753, -0.673755,
		-0.195779, 0.980417, -0.021298,
		30.445616, 40.699497, 54.823242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632391, 40.131401, 54.205647>,  <30.582661, 40.013206, 54.838150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632391, 40.131401, 54.205647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675758, 40.497475, 54.360924>,  <30.701778, 40.717117, 54.454090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675758, 40.497475, 54.360924>,  <30.632391, 40.131401, 54.205647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675758, 40.497475, 54.360924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792619, 0.156103, -0.589396,
		-0.600000, 0.371590, -0.708464,
		0.108420, 0.915179, 0.388191,
		30.708284, 40.772030, 54.477383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542076, 40.569679, 53.573402>,  <30.632391, 40.131401, 54.205647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542076, 40.569679, 53.573402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749636, 40.759781, 53.857620>,  <30.874172, 40.873844, 54.028152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749636, 40.759781, 53.857620>,  <30.542076, 40.569679, 53.573402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749636, 40.759781, 53.857620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633729, 0.343969, -0.692873,
		-0.573698, 0.809824, -0.122699,
		0.518901, 0.475258, 0.710543,
		30.905306, 40.902359, 54.070782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697155, 41.160763, 53.322426>,  <30.542076, 40.569679, 53.573402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697155, 41.160763, 53.322426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961624, 41.151360, 53.622372>,  <31.120306, 41.145718, 53.802338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.961624, 41.151360, 53.622372>,  <30.697155, 41.160763, 53.322426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961624, 41.151360, 53.622372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691912, 0.405486, -0.597360,
		-0.290016, 0.913799, 0.284363,
		0.661172, -0.023510, 0.749866,
		31.159975, 41.144306, 53.847332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000853, 41.822044, 53.462990>,  <30.697155, 41.160763, 53.322426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000853, 41.822044, 53.462990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272243, 41.570801, 53.615383>,  <31.435078, 41.420055, 53.706818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272243, 41.570801, 53.615383>,  <31.000853, 41.822044, 53.462990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272243, 41.570801, 53.615383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705101, 0.411257, -0.577668,
		0.206155, 0.660567, 0.721908,
		0.678478, -0.628107, 0.380984,
		31.475786, 41.382370, 53.729679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655748, 42.229469, 53.508358>,  <31.000853, 41.822044, 53.462990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655748, 42.229469, 53.508358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785929, 41.852165, 53.534710>,  <31.864037, 41.625782, 53.550522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785929, 41.852165, 53.534710>,  <31.655748, 42.229469, 53.508358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785929, 41.852165, 53.534710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823945, 0.248722, -0.509168,
		0.463891, 0.219995, 0.858142,
		0.325453, -0.943260, 0.065884,
		31.883564, 41.569187, 53.554474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360153, 42.277306, 53.713589>,  <31.655748, 42.229469, 53.508358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360153, 42.277306, 53.713589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360188, 41.913788, 53.546692>,  <32.360207, 41.695675, 53.446556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360188, 41.913788, 53.546692>,  <32.360153, 42.277306, 53.713589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360188, 41.913788, 53.546692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759121, 0.271662, -0.591553,
		0.650949, -0.316684, 0.689910,
		0.000087, -0.908797, -0.417240,
		32.360214, 41.641148, 53.421520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023254, 42.066502, 53.754539>,  <32.360153, 42.277306, 53.713589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023254, 42.066502, 53.754539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857136, 41.830910, 53.477230>,  <32.757465, 41.689552, 53.310844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857136, 41.830910, 53.477230>,  <33.023254, 42.066502, 53.754539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857136, 41.830910, 53.477230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706926, 0.270684, -0.653441,
		0.572523, -0.761466, 0.303952,
		-0.415299, -0.588982, -0.693273,
		32.732548, 41.654217, 53.269249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570267, 41.599312, 53.565083>,  <33.023254, 42.066502, 53.754539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570267, 41.599312, 53.565083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315083, 41.616943, 53.257561>,  <33.161972, 41.627522, 53.073048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.315083, 41.616943, 53.257561>,  <33.570267, 41.599312, 53.565083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315083, 41.616943, 53.257561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762025, 0.180056, -0.622012,
		0.111007, -0.982668, -0.148462,
		-0.637963, 0.044084, -0.768805,
		33.123695, 41.630169, 53.026920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863487, 41.140179, 53.082912>,  <33.570267, 41.599312, 53.565083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863487, 41.140179, 53.082912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609772, 41.371147, 52.877289>,  <33.457542, 41.509727, 52.753914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609772, 41.371147, 52.877289>,  <33.863487, 41.140179, 53.082912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609772, 41.371147, 52.877289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708619, 0.168394, -0.685203,
		-0.309086, -0.798892, -0.515983,
		-0.634291, 0.577422, -0.514061,
		33.419483, 41.544373, 52.723072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036335, 40.982536, 52.374622>,  <33.863487, 41.140179, 53.082912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036335, 40.982536, 52.374622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856407, 41.339561, 52.362003>,  <33.748451, 41.553776, 52.354431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856407, 41.339561, 52.362003>,  <34.036335, 40.982536, 52.374622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856407, 41.339561, 52.362003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571414, 0.260470, -0.778230,
		-0.686401, -0.368091, -0.627186,
		-0.449822, 0.892561, -0.031545,
		33.721462, 41.607330, 52.352539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660812, 40.514606, 51.863804>,  <34.036335, 40.982536, 52.374622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660812, 40.514606, 51.863804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822891, 40.167274, 51.749382>,  <33.920139, 39.958878, 51.680729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822891, 40.167274, 51.749382>,  <33.660812, 40.514606, 51.863804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822891, 40.167274, 51.749382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686722, -0.495630, 0.531755,
		-0.603515, -0.019021, -0.797125,
		0.405193, -0.868325, -0.286058,
		33.944450, 39.906776, 51.663567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085743, 40.112751, 51.768276>,  <33.660812, 40.514606, 51.863804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085743, 40.112751, 51.768276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391178, 39.854904, 51.783268>,  <33.574440, 39.700195, 51.792263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391178, 39.854904, 51.783268>,  <33.085743, 40.112751, 51.768276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391178, 39.854904, 51.783268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602566, -0.690502, 0.400152,
		-0.232064, -0.328136, -0.915682,
		0.763584, -0.644620, 0.037482,
		33.620255, 39.661518, 51.794514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899502, 39.529667, 51.472614>,  <33.085743, 40.112751, 51.768276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899502, 39.529667, 51.472614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196770, 39.388748, 51.700150>,  <33.375130, 39.304195, 51.836670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196770, 39.388748, 51.700150>,  <32.899502, 39.529667, 51.472614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196770, 39.388748, 51.700150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629933, -0.654993, 0.417334,
		0.225563, -0.668484, -0.708696,
		0.743173, -0.352296, 0.568842,
		33.419720, 39.283058, 51.870804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953979, 38.871010, 51.346497>,  <32.899502, 39.529667, 51.472614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953979, 38.871010, 51.346497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088570, 38.964462, 51.711395>,  <33.169323, 39.020535, 51.930336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088570, 38.964462, 51.711395>,  <32.953979, 38.871010, 51.346497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088570, 38.964462, 51.711395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657684, -0.635024, 0.405211,
		0.673971, -0.736316, -0.060015,
		0.336474, 0.233630, 0.912251,
		33.189510, 39.034550, 51.985069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988590, 38.275448, 51.603065>,  <32.953979, 38.871010, 51.346497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988590, 38.275448, 51.603065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011688, 38.507637, 51.927956>,  <33.025547, 38.646950, 52.122890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.011688, 38.507637, 51.927956>,  <32.988590, 38.275448, 51.603065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011688, 38.507637, 51.927956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649927, -0.595706, 0.471942,
		0.757800, -0.555140, 0.342869,
		0.057745, 0.580477, 0.812226,
		33.029011, 38.681782, 52.171623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918770, 37.824108, 52.174068>,  <32.988590, 38.275448, 51.603065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918770, 37.824108, 52.174068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825058, 38.179939, 52.330921>,  <32.768829, 38.393436, 52.425034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.825058, 38.179939, 52.330921>,  <32.918770, 37.824108, 52.174068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825058, 38.179939, 52.330921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626731, -0.446555, 0.638590,
		0.743182, -0.096149, 0.662146,
		-0.234284, 0.889575, 0.392131,
		32.754772, 38.446812, 52.448559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868271, 37.671555, 52.855904>,  <32.918770, 37.824108, 52.174068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868271, 37.671555, 52.855904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676666, 38.020439, 52.816330>,  <32.561703, 38.229771, 52.792587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676666, 38.020439, 52.816330>,  <32.868271, 37.671555, 52.855904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676666, 38.020439, 52.816330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719875, -0.325832, 0.612873,
		0.502321, 0.364795, 0.783963,
		-0.479013, 0.872215, -0.098935,
		32.532963, 38.282104, 52.786648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244774, 37.407555, 53.484676>,  <32.868271, 37.671555, 52.855904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244774, 37.407555, 53.484676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.360237, 37.034058, 53.400017>,  <33.429516, 36.809959, 53.349220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.360237, 37.034058, 53.400017>,  <33.244774, 37.407555, 53.484676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360237, 37.034058, 53.400017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575334, 0.345861, -0.741196,
		0.765291, 0.092179, 0.637050,
		0.288654, -0.933747, -0.211650,
		33.446835, 36.753933, 53.336521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805534, 37.544323, 53.260273>,  <33.244774, 37.407555, 53.484676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805534, 37.544323, 53.260273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770920, 37.160103, 53.154556>,  <33.750149, 36.929569, 53.091125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770920, 37.160103, 53.154556>,  <33.805534, 37.544323, 53.260273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770920, 37.160103, 53.154556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751367, 0.111268, -0.650436,
		0.654185, -0.254867, 0.712099,
		-0.086540, -0.960553, -0.264288,
		33.744957, 36.871937, 53.075272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390827, 37.286797, 53.328922>,  <33.805534, 37.544323, 53.260273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390827, 37.286797, 53.328922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221146, 37.032784, 53.070686>,  <34.119335, 36.880375, 52.915745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221146, 37.032784, 53.070686>,  <34.390827, 37.286797, 53.328922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221146, 37.032784, 53.070686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711221, 0.207658, -0.671597,
		0.560547, -0.744052, 0.363558,
		-0.424207, -0.635032, -0.645587,
		34.093884, 36.842274, 52.877010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975864, 36.871578, 53.083885>,  <34.390827, 37.286797, 53.328922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975864, 36.871578, 53.083885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674652, 36.845428, 52.821991>,  <34.493927, 36.829739, 52.664856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.674652, 36.845428, 52.821991>,  <34.975864, 36.871578, 53.083885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674652, 36.845428, 52.821991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630628, 0.212244, -0.746499,
		0.187757, -0.975028, -0.118606,
		-0.753031, -0.065365, -0.654730,
		34.448742, 36.825817, 52.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259995, 36.342537, 52.546932>,  <34.975864, 36.871578, 53.083885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259995, 36.342537, 52.546932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962799, 36.561890, 52.393440>,  <34.784481, 36.693501, 52.301346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962799, 36.561890, 52.393440>,  <35.259995, 36.342537, 52.546932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962799, 36.561890, 52.393440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602099, 0.297234, -0.741032,
		-0.292308, -0.781623, -0.551019,
		-0.742989, 0.548377, -0.383731,
		34.739902, 36.726402, 52.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243973, 36.210575, 51.791531>,  <35.259995, 36.342537, 52.546932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243973, 36.210575, 51.791531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060814, 36.558456, 51.865227>,  <34.950920, 36.767185, 51.909443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.060814, 36.558456, 51.865227>,  <35.243973, 36.210575, 51.791531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060814, 36.558456, 51.865227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559980, 0.443125, -0.700046,
		-0.690475, -0.217377, -0.689922,
		-0.457895, 0.869706, 0.184240,
		34.923447, 36.819366, 51.920498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073540, 36.486397, 51.081055>,  <35.243973, 36.210575, 51.791531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073540, 36.486397, 51.081055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068428, 36.787552, 51.344265>,  <35.065361, 36.968243, 51.502190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.068428, 36.787552, 51.344265>,  <35.073540, 36.486397, 51.081055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068428, 36.787552, 51.344265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416561, 0.602266, -0.680994,
		-0.909018, 0.265403, -0.321322,
		-0.012783, 0.752886, 0.658027,
		35.064594, 37.013416, 51.541672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.656376, 37.497509, 57.347786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.602013, 37.891106, 57.301659>,  <32.569397, 38.127262, 57.273983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.602013, 37.891106, 57.301659>,  <32.656376, 37.497509, 57.347786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602013, 37.891106, 57.301659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989896, 0.130116, -0.056359,
		-0.040451, -0.121817, -0.991728,
		-0.135905, 0.983987, -0.115323,
		32.561241, 38.186302, 57.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062862, 37.688927, 56.800808>,  <32.656376, 37.497509, 57.347786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062862, 37.688927, 56.800808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.980690, 38.053246, 56.944054>,  <32.931389, 38.271835, 57.030003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.980690, 38.053246, 56.944054>,  <33.062862, 37.688927, 56.800808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980690, 38.053246, 56.944054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972826, 0.229975, -0.026851,
		-0.106814, 0.342871, -0.933290,
		-0.205427, 0.910797, 0.358119,
		32.919064, 38.326485, 57.051491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426159, 38.206696, 56.338730>,  <33.062862, 37.688927, 56.800808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426159, 38.206696, 56.338730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.338806, 38.372131, 56.692284>,  <33.286392, 38.471394, 56.904415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.338806, 38.372131, 56.692284>,  <33.426159, 38.206696, 56.338730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338806, 38.372131, 56.692284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951226, 0.292456, 0.098175,
		-0.217893, 0.862213, -0.457288,
		-0.218384, 0.413593, 0.883883,
		33.273293, 38.496208, 56.957447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700069, 38.869099, 56.260483>,  <33.426159, 38.206696, 56.338730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700069, 38.869099, 56.260483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661530, 38.821594, 56.655777>,  <33.638405, 38.793091, 56.892952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661530, 38.821594, 56.655777>,  <33.700069, 38.869099, 56.260483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661530, 38.821594, 56.655777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941122, 0.312367, 0.129294,
		-0.324048, 0.942509, 0.081673,
		-0.096349, -0.118762, 0.988237,
		33.632626, 38.785965, 56.952248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019466, 39.416946, 56.509911>,  <33.700069, 38.869099, 56.260483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019466, 39.416946, 56.509911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.014313, 39.172073, 56.826157>,  <34.011219, 39.025150, 57.015903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.014313, 39.172073, 56.826157>,  <34.019466, 39.416946, 56.509911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014313, 39.172073, 56.826157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953341, 0.230983, 0.194389,
		-0.301620, 0.756228, 0.580642,
		-0.012884, -0.612181, 0.790612,
		34.010448, 38.988419, 57.063339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316227, 39.801903, 56.959782>,  <34.019466, 39.416946, 56.509911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316227, 39.801903, 56.959782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353424, 39.418732, 57.068398>,  <34.375744, 39.188831, 57.133568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353424, 39.418732, 57.068398>,  <34.316227, 39.801903, 56.959782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353424, 39.418732, 57.068398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985101, 0.128147, 0.114690,
		-0.144661, 0.256829, 0.955569,
		0.092997, -0.957923, 0.271540,
		34.381325, 39.131355, 57.149860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693058, 39.747849, 57.621891>,  <34.316227, 39.801903, 56.959782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693058, 39.747849, 57.621891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737381, 39.387390, 57.454247>,  <34.763977, 39.171116, 57.353661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.737381, 39.387390, 57.454247>,  <34.693058, 39.747849, 57.621891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737381, 39.387390, 57.454247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993841, 0.101021, 0.045553,
		0.001288, -0.421573, 0.906793,
		0.110810, -0.901150, -0.419107,
		34.770622, 39.117046, 57.328514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167542, 39.324127, 58.042370>,  <34.693058, 39.747849, 57.621891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167542, 39.324127, 58.042370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180546, 39.186485, 57.667023>,  <35.188347, 39.103901, 57.441814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180546, 39.186485, 57.667023>,  <35.167542, 39.324127, 58.042370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180546, 39.186485, 57.667023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995224, 0.097608, -0.001315,
		0.092044, -0.933843, 0.345637,
		0.032509, -0.344108, -0.938367,
		35.190300, 39.083252, 57.385513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926254, 39.234138, 57.973644>,  <35.167542, 39.324127, 58.042370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926254, 39.234138, 57.973644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.785248, 39.169113, 57.605015>,  <35.700645, 39.130096, 57.383835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.785248, 39.169113, 57.605015>,  <35.926254, 39.234138, 57.973644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785248, 39.169113, 57.605015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924674, 0.090931, -0.369742,
		0.143908, -0.982498, 0.118268,
		-0.352517, -0.162568, -0.921576,
		35.679493, 39.120342, 57.328541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486042, 38.800453, 57.594296>,  <35.926254, 39.234138, 57.973644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486042, 38.800453, 57.594296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256111, 38.984474, 57.323616>,  <36.118153, 39.094887, 57.161209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.256111, 38.984474, 57.323616>,  <36.486042, 38.800453, 57.594296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256111, 38.984474, 57.323616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812603, 0.223760, -0.538152,
		-0.096160, -0.859234, -0.502465,
		-0.574830, 0.460053, -0.676699,
		36.083664, 39.122490, 57.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748535, 38.501724, 56.942612>,  <36.486042, 38.800453, 57.594296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748535, 38.501724, 56.942612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590664, 38.857750, 56.851387>,  <36.495941, 39.071365, 56.796650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.590664, 38.857750, 56.851387>,  <36.748535, 38.501724, 56.942612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590664, 38.857750, 56.851387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872402, 0.285121, -0.397015,
		-0.288343, -0.355658, -0.889025,
		-0.394681, 0.890064, -0.228064,
		36.472260, 39.124767, 56.782967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949684, 38.666218, 56.273506>,  <36.748535, 38.501724, 56.942612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949684, 38.666218, 56.273506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851791, 39.019058, 56.434509>,  <36.793056, 39.230762, 56.531109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851791, 39.019058, 56.434509>,  <36.949684, 38.666218, 56.273506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851791, 39.019058, 56.434509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810376, 0.414012, -0.414590,
		-0.532351, 0.224718, -0.816152,
		-0.244731, 0.882097, 0.402506,
		36.778374, 39.283688, 56.555260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033760, 38.330677, 55.549599>,  <36.949684, 38.666218, 56.273506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033760, 38.330677, 55.549599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220501, 37.978859, 55.586384>,  <37.332546, 37.767769, 55.608456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220501, 37.978859, 55.586384>,  <37.033760, 38.330677, 55.549599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220501, 37.978859, 55.586384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838147, -0.406898, 0.363241,
		-0.282067, -0.246656, -0.927146,
		0.466850, -0.879542, 0.091962,
		37.360554, 37.714996, 55.613972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517166, 37.942333, 55.174393>,  <37.033760, 38.330677, 55.549599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517166, 37.942333, 55.174393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.755783, 37.706230, 55.391918>,  <36.898952, 37.564568, 55.522434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.755783, 37.706230, 55.391918>,  <36.517166, 37.942333, 55.174393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755783, 37.706230, 55.391918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802543, -0.432052, 0.411407,
		-0.007879, -0.681857, -0.731443,
		0.596542, -0.590256, 0.543815,
		36.934746, 37.529152, 55.555061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236324, 37.329052, 54.932087>,  <36.517166, 37.942333, 55.174393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236324, 37.329052, 54.932087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444355, 37.209694, 55.252209>,  <36.569172, 37.138081, 55.444283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.444355, 37.209694, 55.252209>,  <36.236324, 37.329052, 54.932087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444355, 37.209694, 55.252209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837310, -0.363098, 0.408744,
		0.168623, -0.882679, -0.438685,
		0.520075, -0.298392, 0.800302,
		36.600376, 37.120178, 55.492298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234646, 36.584751, 55.005001>,  <36.236324, 37.329052, 54.932087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234646, 36.584751, 55.005001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.322151, 36.710541, 55.374489>,  <36.374653, 36.786015, 55.596180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.322151, 36.710541, 55.374489>,  <36.234646, 36.584751, 55.005001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322151, 36.710541, 55.374489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814813, -0.461964, 0.350241,
		0.536865, -0.829275, 0.155176,
		0.218760, 0.314472, 0.923716,
		36.387779, 36.804882, 55.651604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343674, 35.980953, 55.400501>,  <36.234646, 36.584751, 55.005001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343674, 35.980953, 55.400501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260468, 36.264503, 55.670090>,  <36.210545, 36.434631, 55.831841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260468, 36.264503, 55.670090>,  <36.343674, 35.980953, 55.400501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260468, 36.264503, 55.670090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617797, -0.629418, 0.471338,
		0.758325, -0.318331, 0.568866,
		-0.208013, 0.708871, 0.673967,
		36.198063, 36.477165, 55.872280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227077, 35.665703, 56.113899>,  <36.343674, 35.980953, 55.400501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227077, 35.665703, 56.113899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044128, 36.020775, 56.135212>,  <35.934361, 36.233818, 56.147999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044128, 36.020775, 56.135212>,  <36.227077, 35.665703, 56.113899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044128, 36.020775, 56.135212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729956, -0.408981, 0.547630,
		0.507911, 0.211577, 0.835022,
		-0.457374, 0.887676, 0.053284,
		35.906918, 36.287079, 56.151196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058048, 35.786919, 56.884296>,  <36.227077, 35.665703, 56.113899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058048, 35.786919, 56.884296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808235, 35.999313, 56.655205>,  <35.658348, 36.126751, 56.517750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.808235, 35.999313, 56.655205>,  <36.058048, 35.786919, 56.884296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808235, 35.999313, 56.655205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774600, -0.327455, 0.541080,
		0.099762, 0.781557, 0.615806,
		-0.624533, 0.530983, -0.572727,
		35.620876, 36.158607, 56.483387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624954, 35.896961, 57.324116>,  <36.058048, 35.786919, 56.884296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624954, 35.896961, 57.324116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424240, 36.019218, 57.000435>,  <35.303814, 36.092571, 56.806229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.424240, 36.019218, 57.000435>,  <35.624954, 35.896961, 57.324116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424240, 36.019218, 57.000435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864941, -0.187675, 0.465462,
		-0.009604, 0.933468, 0.358531,
		-0.501781, 0.305638, -0.809198,
		35.273705, 36.110909, 56.757675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040726, 36.229908, 57.622654>,  <35.624954, 35.896961, 57.324116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040726, 36.229908, 57.622654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954025, 36.132233, 57.244576>,  <34.902004, 36.073627, 57.017731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954025, 36.132233, 57.244576>,  <35.040726, 36.229908, 57.622654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954025, 36.132233, 57.244576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911222, -0.296791, 0.285639,
		-0.350274, 0.923195, -0.158175,
		-0.216756, -0.244184, -0.945194,
		34.889000, 36.058979, 56.961018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488728, 36.627483, 57.276112>,  <35.040726, 36.229908, 57.622654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488728, 36.627483, 57.276112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491508, 36.282669, 57.073387>,  <34.493176, 36.075783, 56.951752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491508, 36.282669, 57.073387>,  <34.488728, 36.627483, 57.276112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491508, 36.282669, 57.073387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984707, -0.094130, 0.146602,
		-0.174081, 0.498038, -0.849502,
		0.006950, -0.862031, -0.506808,
		34.493595, 36.024059, 56.921345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809608, 36.634380, 56.927521>,  <34.488728, 36.627483, 57.276112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809608, 36.634380, 56.927521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958054, 36.262947, 56.928497>,  <34.047119, 36.040085, 56.929085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.958054, 36.262947, 56.928497>,  <33.809608, 36.634380, 56.927521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958054, 36.262947, 56.928497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914031, -0.364830, 0.177329,
		-0.163774, -0.068042, -0.984149,
		0.371113, -0.928585, 0.002443,
		34.069386, 35.984371, 56.929230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336128, 36.286499, 56.603500>,  <33.809608, 36.634380, 56.927521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336128, 36.286499, 56.603500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.539841, 36.005219, 56.801949>,  <33.662067, 35.836449, 56.921017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.539841, 36.005219, 56.801949>,  <33.336128, 36.286499, 56.603500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539841, 36.005219, 56.801949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860544, -0.422635, 0.284330,
		0.009738, -0.571739, -0.820377,
		0.509283, -0.703202, 0.496123,
		33.692627, 35.794258, 56.950787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206795, 35.596043, 56.289791>,  <33.336128, 36.286499, 56.603500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206795, 35.596043, 56.289791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283707, 35.577240, 56.681877>,  <33.329853, 35.565960, 56.917130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.283707, 35.577240, 56.681877>,  <33.206795, 35.596043, 56.289791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283707, 35.577240, 56.681877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873459, -0.463502, 0.149113,
		0.447323, -0.884848, -0.130177,
		0.192280, -0.047003, 0.980214,
		33.341393, 35.563137, 56.975941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915314, 34.976978, 56.455173>,  <33.206795, 35.596043, 56.289791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915314, 34.976978, 56.455173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967285, 35.159142, 56.807472>,  <32.998470, 35.268440, 57.018852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.967285, 35.159142, 56.807472>,  <32.915314, 34.976978, 56.455173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967285, 35.159142, 56.807472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893864, -0.330616, 0.302821,
		0.429097, -0.826615, 0.364119,
		0.129933, 0.455413, 0.880748,
		33.006264, 35.295765, 57.071697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162861, 34.977493, 55.792019>,  <32.915314, 34.976978, 56.455173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162861, 34.977493, 55.792019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813400, 35.015236, 55.601097>,  <32.603722, 35.037880, 55.486542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813400, 35.015236, 55.601097>,  <33.162861, 34.977493, 55.792019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813400, 35.015236, 55.601097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450620, 0.526878, -0.720653,
		0.183485, -0.844687, -0.502829,
		-0.873656, 0.094355, -0.477307,
		32.551304, 35.043541, 55.457905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340012, 34.832912, 55.137646>,  <33.162861, 34.977493, 55.792019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340012, 34.832912, 55.137646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981548, 35.006546, 55.100834>,  <32.766472, 35.110725, 55.078747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.981548, 35.006546, 55.100834>,  <33.340012, 34.832912, 55.137646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981548, 35.006546, 55.100834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337988, 0.533371, -0.775422,
		-0.287512, -0.726007, -0.624701,
		-0.896159, 0.434085, -0.092031,
		32.712700, 35.136772, 55.073223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181934, 34.782261, 54.437645>,  <33.340012, 34.832912, 55.137646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181934, 34.782261, 54.437645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969330, 35.087593, 54.584515>,  <32.841766, 35.270794, 54.672638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969330, 35.087593, 54.584515>,  <33.181934, 34.782261, 54.437645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969330, 35.087593, 54.584515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374280, 0.600507, -0.706615,
		-0.759876, -0.238146, -0.604876,
		-0.531510, 0.763333, 0.367178,
		32.809875, 35.316593, 54.694668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905537, 35.082813, 53.872509>,  <33.181934, 34.782261, 54.437645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905537, 35.082813, 53.872509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884148, 35.380249, 54.139107>,  <32.871315, 35.558712, 54.299065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.884148, 35.380249, 54.139107>,  <32.905537, 35.082813, 53.872509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884148, 35.380249, 54.139107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302257, 0.648191, -0.698920,
		-0.951725, 0.164077, -0.259418,
		-0.053475, 0.743591, 0.666493,
		32.868107, 35.603325, 54.339054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412113, 35.666439, 53.558178>,  <32.905537, 35.082813, 53.872509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412113, 35.666439, 53.558178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648354, 35.799477, 53.852272>,  <32.790096, 35.879299, 54.028728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648354, 35.799477, 53.852272>,  <32.412113, 35.666439, 53.558178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648354, 35.799477, 53.852272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365968, 0.701639, -0.611368,
		-0.719208, 0.630147, 0.292669,
		0.590600, 0.332593, 0.735237,
		32.825535, 35.899254, 54.072842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386517, 36.416401, 53.500332>,  <32.412113, 35.666439, 53.558178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386517, 36.416401, 53.500332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731171, 36.345566, 53.690586>,  <32.937962, 36.303062, 53.804737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.731171, 36.345566, 53.690586>,  <32.386517, 36.416401, 53.500332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731171, 36.345566, 53.690586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483973, 0.568893, -0.664929,
		-0.152830, 0.803119, 0.575885,
		0.861634, -0.177092, 0.475632,
		32.989662, 36.292439, 53.833275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593960, 37.021648, 53.384834>,  <32.386517, 36.416401, 53.500332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593960, 37.021648, 53.384834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.892845, 36.772903, 53.478615>,  <33.072174, 36.623657, 53.534882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.892845, 36.772903, 53.478615>,  <32.593960, 37.021648, 53.384834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892845, 36.772903, 53.478615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576671, 0.431331, -0.693833,
		0.330342, 0.653639, 0.680904,
		0.747211, -0.621860, 0.234448,
		33.117008, 36.586346, 53.548950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499149, 37.721886, 53.469933>,  <32.593960, 37.021648, 53.384834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499149, 37.721886, 53.469933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305771, 37.994270, 53.249908>,  <32.189743, 38.157703, 53.117893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.305771, 37.994270, 53.249908>,  <32.499149, 37.721886, 53.469933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305771, 37.994270, 53.249908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800538, -0.089706, 0.592530,
		0.354149, 0.726801, 0.588506,
		-0.483444, 0.680965, -0.550062,
		32.160736, 38.198559, 53.084888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420856, 38.234268, 53.890656>,  <32.499149, 37.721886, 53.469933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420856, 38.234268, 53.890656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137577, 38.288979, 53.613598>,  <31.967609, 38.321804, 53.447365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137577, 38.288979, 53.613598>,  <32.420856, 38.234268, 53.890656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137577, 38.288979, 53.613598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706013, -0.134312, 0.695346,
		0.002074, 0.981455, 0.191682,
		-0.708196, 0.136772, -0.692641,
		31.925117, 38.330009, 53.405804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928640, 38.601009, 54.152363>,  <32.420856, 38.234268, 53.890656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928640, 38.601009, 54.152363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737856, 38.425987, 53.847458>,  <31.623384, 38.320972, 53.664513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737856, 38.425987, 53.847458>,  <31.928640, 38.601009, 54.152363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737856, 38.425987, 53.847458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818741, -0.094212, 0.566380,
		-0.319639, 0.894241, -0.313311,
		-0.476963, -0.437558, -0.762266,
		31.594767, 38.294720, 53.618778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241856, 38.888504, 54.130375>,  <31.928640, 38.601009, 54.152363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241856, 38.888504, 54.130375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214880, 38.541252, 53.933678>,  <31.198694, 38.332901, 53.815659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.214880, 38.541252, 53.933678>,  <31.241856, 38.888504, 54.130375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214880, 38.541252, 53.933678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857413, -0.201602, 0.473498,
		-0.510192, 0.453555, -0.730748,
		-0.067437, -0.868127, -0.491739,
		31.194649, 38.280815, 53.786156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607485, 39.018894, 53.874649>,  <31.241856, 38.888504, 54.130375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607485, 39.018894, 53.874649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.696499, 38.629059, 53.884930>,  <30.749907, 38.395157, 53.891098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.696499, 38.629059, 53.884930>,  <30.607485, 39.018894, 53.874649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696499, 38.629059, 53.884930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796506, -0.166544, 0.581242,
		-0.562189, -0.149819, -0.813325,
		0.222535, -0.974586, 0.025702,
		30.763260, 38.336681, 53.892639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006428, 38.699234, 53.580402>,  <30.607485, 39.018894, 53.874649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006428, 38.699234, 53.580402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207956, 38.402206, 53.756924>,  <30.328873, 38.223988, 53.862835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207956, 38.402206, 53.756924>,  <30.006428, 38.699234, 53.580402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207956, 38.402206, 53.756924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811401, -0.231596, 0.536649,
		-0.296300, -0.628445, -0.719210,
		0.503820, -0.742577, 0.441300,
		30.359102, 38.179436, 53.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546900, 38.102772, 53.625019>,  <30.006428, 38.699234, 53.580402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546900, 38.102772, 53.625019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806210, 38.024605, 53.919380>,  <29.961796, 37.977703, 54.095997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806210, 38.024605, 53.919380>,  <29.546900, 38.102772, 53.625019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806210, 38.024605, 53.919380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749528, -0.333851, 0.571621,
		0.133978, -0.922147, -0.362897,
		0.648273, -0.195417, 0.735904,
		30.000690, 37.965981, 54.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190022, 37.575905, 53.948746>,  <29.546900, 38.102772, 53.625019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190022, 37.575905, 53.948746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.458038, 37.681396, 54.226303>,  <29.618849, 37.744694, 54.392838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.458038, 37.681396, 54.226303>,  <29.190022, 37.575905, 53.948746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458038, 37.681396, 54.226303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666004, -0.199248, 0.718845,
		0.327840, -0.943793, 0.042142,
		0.670044, 0.263733, 0.693891,
		29.659052, 37.760517, 54.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147015, 37.100494, 54.595490>,  <29.190022, 37.575905, 53.948746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147015, 37.100494, 54.595490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313240, 37.441231, 54.723034>,  <29.412975, 37.645672, 54.799561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313240, 37.441231, 54.723034>,  <29.147015, 37.100494, 54.595490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313240, 37.441231, 54.723034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725326, 0.098835, 0.681274,
		0.548823, -0.514390, 0.658936,
		0.415566, 0.851842, 0.318858,
		29.437910, 37.696785, 54.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.913689, 43.295841, 48.276180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.753006, 43.617104, 48.452168>,  <42.656597, 43.809860, 48.557762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.753006, 43.617104, 48.452168>,  <42.913689, 43.295841, 48.276180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753006, 43.617104, 48.452168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671051, -0.585090, 0.455368,
		0.623154, -0.112319, 0.773992,
		-0.401709, 0.803153, 0.439973,
		42.632492, 43.858047, 48.584160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751038, 43.108925, 48.924557>,  <42.913689, 43.295841, 48.276180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751038, 43.108925, 48.924557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.496674, 43.402946, 48.830486>,  <42.344055, 43.579361, 48.774044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.496674, 43.402946, 48.830486>,  <42.751038, 43.108925, 48.924557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496674, 43.402946, 48.830486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769498, -0.580553, 0.266139,
		0.059093, 0.350211, 0.934805,
		-0.635909, 0.735058, -0.235180,
		42.305901, 43.623463, 48.759933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189919, 43.059124, 49.439339>,  <42.751038, 43.108925, 48.924557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189919, 43.059124, 49.439339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041924, 43.279030, 49.139774>,  <41.953125, 43.410973, 48.960037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.041924, 43.279030, 49.139774>,  <42.189919, 43.059124, 49.439339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041924, 43.279030, 49.139774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868082, -0.491761, 0.067865,
		-0.330975, 0.675225, 0.659187,
		-0.369986, 0.549767, -0.748911,
		41.930927, 43.443958, 48.915100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482269, 43.092178, 49.576626>,  <42.189919, 43.059124, 49.439339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482269, 43.092178, 49.576626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501106, 43.236534, 49.204056>,  <41.512409, 43.323147, 48.980515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.501106, 43.236534, 49.204056>,  <41.482269, 43.092178, 49.576626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501106, 43.236534, 49.204056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882347, -0.422068, -0.208141,
		-0.468238, 0.831637, 0.298552,
		0.047089, 0.360886, -0.931420,
		41.515232, 43.344799, 48.924629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865131, 43.341793, 49.534710>,  <41.482269, 43.092178, 49.576626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865131, 43.341793, 49.534710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.994873, 43.285065, 49.160614>,  <41.072720, 43.251026, 48.936157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.994873, 43.285065, 49.160614>,  <40.865131, 43.341793, 49.534710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994873, 43.285065, 49.160614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890639, -0.378868, -0.251437,
		-0.318673, 0.914519, -0.249202,
		0.324359, -0.141823, -0.935242,
		41.092182, 43.242519, 48.880043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368839, 43.608730, 49.059879>,  <40.865131, 43.341793, 49.534710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368839, 43.608730, 49.059879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569649, 43.343895, 48.837307>,  <40.690136, 43.184994, 48.703766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569649, 43.343895, 48.837307>,  <40.368839, 43.608730, 49.059879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569649, 43.343895, 48.837307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840491, -0.221871, -0.494317,
		0.203824, 0.715834, -0.667861,
		0.502028, -0.662084, -0.556429,
		40.720257, 43.145271, 48.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095070, 43.658989, 48.422070>,  <40.368839, 43.608730, 49.059879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095070, 43.658989, 48.422070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.275738, 43.302147, 48.426834>,  <40.384136, 43.088039, 48.429695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.275738, 43.302147, 48.426834>,  <40.095070, 43.658989, 48.422070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275738, 43.302147, 48.426834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807555, -0.414462, -0.419615,
		0.379279, 0.179905, -0.907624,
		0.451666, -0.892108, 0.011913,
		40.411236, 43.034515, 48.430408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928940, 43.253780, 47.688744>,  <40.095070, 43.658989, 48.422070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928940, 43.253780, 47.688744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.024452, 42.991920, 47.975636>,  <40.081760, 42.834805, 48.147770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.024452, 42.991920, 47.975636>,  <39.928940, 43.253780, 47.688744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024452, 42.991920, 47.975636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814956, -0.536723, -0.218573,
		0.528042, -0.532320, -0.661670,
		0.238783, -0.654648, 0.717230,
		40.096088, 42.795525, 48.190804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783627, 42.560829, 47.421505>,  <39.928940, 43.253780, 47.688744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783627, 42.560829, 47.421505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769951, 42.524521, 47.819618>,  <39.761745, 42.502735, 48.058487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769951, 42.524521, 47.819618>,  <39.783627, 42.560829, 47.421505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769951, 42.524521, 47.819618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793952, -0.602397, -0.082211,
		0.607019, -0.793019, -0.051469,
		-0.034190, -0.090768, 0.995285,
		39.759693, 42.497292, 48.118202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535320, 41.895267, 47.403282>,  <39.783627, 42.560829, 47.421505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535320, 41.895267, 47.403282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494598, 42.036690, 47.775227>,  <39.470165, 42.121544, 47.998394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494598, 42.036690, 47.775227>,  <39.535320, 41.895267, 47.403282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494598, 42.036690, 47.775227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857435, -0.505138, 0.098192,
		0.504423, -0.787297, 0.354571,
		-0.101801, 0.353551, 0.929859,
		39.464058, 42.142754, 48.054184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414078, 41.389122, 47.839851>,  <39.535320, 41.895267, 47.403282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414078, 41.389122, 47.839851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.250725, 41.702744, 48.026821>,  <39.152714, 41.890915, 48.139004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.250725, 41.702744, 48.026821>,  <39.414078, 41.389122, 47.839851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250725, 41.702744, 48.026821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805637, -0.550341, 0.219257,
		0.429152, -0.287035, 0.856411,
		-0.408384, 0.784051, 0.467426,
		39.128208, 41.937958, 48.167049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874866, 41.094822, 48.332466>,  <39.414078, 41.389122, 47.839851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874866, 41.094822, 48.332466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768654, 41.480461, 48.331039>,  <38.704926, 41.711845, 48.330181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768654, 41.480461, 48.331039>,  <38.874866, 41.094822, 48.332466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768654, 41.480461, 48.331039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960361, -0.264172, 0.089000,
		0.084861, 0.027062, 0.996025,
		-0.265530, 0.964096, -0.003571,
		38.688995, 41.769691, 48.329967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410076, 40.690136, 48.579056>,  <38.874866, 41.094822, 48.332466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410076, 40.690136, 48.579056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.448029, 40.293633, 48.542389>,  <39.470798, 40.055729, 48.520390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.448029, 40.293633, 48.542389>,  <39.410076, 40.690136, 48.579056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448029, 40.293633, 48.542389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865781, 0.127615, -0.483877,
		0.491345, -0.033451, 0.870322,
		0.094880, -0.991260, -0.091664,
		39.476494, 39.996254, 48.514889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098938, 40.509769, 48.896152>,  <39.410076, 40.690136, 48.579056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098938, 40.509769, 48.896152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.996216, 40.231644, 48.627647>,  <39.934582, 40.064770, 48.466545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.996216, 40.231644, 48.627647>,  <40.098938, 40.509769, 48.896152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996216, 40.231644, 48.627647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882632, 0.114216, -0.455977,
		0.393715, -0.709574, 0.584374,
		-0.256805, -0.695312, -0.671262,
		39.919174, 40.023048, 48.426270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705585, 40.188934, 48.774761>,  <40.098938, 40.509769, 48.896152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705585, 40.188934, 48.774761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.485458, 40.061913, 48.465878>,  <40.353382, 39.985699, 48.280548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.485458, 40.061913, 48.465878>,  <40.705585, 40.188934, 48.774761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485458, 40.061913, 48.465878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806026, 0.039297, -0.590575,
		0.217883, -0.947427, 0.234328,
		-0.550318, -0.317550, -0.772212,
		40.320362, 39.966648, 48.234215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097019, 39.669987, 48.356213>,  <40.705585, 40.188934, 48.774761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097019, 39.669987, 48.356213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.839516, 39.835899, 48.098988>,  <40.685013, 39.935448, 47.944653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.839516, 39.835899, 48.098988>,  <41.097019, 39.669987, 48.356213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839516, 39.835899, 48.098988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759933, 0.247815, -0.600907,
		-0.089887, -0.875523, -0.474742,
		-0.643756, 0.414786, -0.643063,
		40.646389, 39.960335, 47.906067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357414, 39.491852, 47.720066>,  <41.097019, 39.669987, 48.356213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357414, 39.491852, 47.720066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100937, 39.785866, 47.631893>,  <40.947048, 39.962276, 47.578991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100937, 39.785866, 47.631893>,  <41.357414, 39.491852, 47.720066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100937, 39.785866, 47.631893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576221, 0.271475, -0.770889,
		-0.506792, -0.621306, -0.597613,
		-0.641195, 0.735038, -0.220428,
		40.908577, 40.006378, 47.565765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312935, 39.472477, 47.039940>,  <41.357414, 39.491852, 47.720066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312935, 39.472477, 47.039940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202690, 39.843147, 47.142166>,  <41.136543, 40.065548, 47.203503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202690, 39.843147, 47.142166>,  <41.312935, 39.472477, 47.039940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202690, 39.843147, 47.142166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666349, 0.375794, -0.644017,
		-0.692834, -0.007200, -0.721061,
		-0.275607, 0.926675, 0.255565,
		41.120007, 40.121151, 47.218834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440342, 39.899570, 46.522842>,  <41.312935, 39.472477, 47.039940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440342, 39.899570, 46.522842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.367683, 40.202446, 46.773815>,  <41.324089, 40.384171, 46.924400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.367683, 40.202446, 46.773815>,  <41.440342, 39.899570, 46.522842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367683, 40.202446, 46.773815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662942, 0.565544, -0.490580,
		-0.726302, 0.326839, -0.604700,
		-0.181644, 0.757190, 0.627431,
		41.313190, 40.429604, 46.962044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292225, 40.566845, 46.115833>,  <41.440342, 39.899570, 46.522842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292225, 40.566845, 46.115833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435349, 40.635551, 46.482979>,  <41.521225, 40.676777, 46.703266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435349, 40.635551, 46.482979>,  <41.292225, 40.566845, 46.115833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435349, 40.635551, 46.482979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646908, 0.663252, -0.376306,
		-0.673409, 0.728418, 0.126204,
		0.357814, 0.171766, 0.917859,
		41.542694, 40.687080, 46.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395081, 41.240345, 46.123158>,  <41.292225, 40.566845, 46.115833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395081, 41.240345, 46.123158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603439, 41.142242, 46.450211>,  <41.728455, 41.083382, 46.646442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.603439, 41.142242, 46.450211>,  <41.395081, 41.240345, 46.123158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603439, 41.142242, 46.450211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625095, 0.761878, -0.169698,
		-0.581313, 0.599491, 0.550169,
		0.520894, -0.245261, 0.817629,
		41.759708, 41.068665, 46.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658871, 41.884155, 46.340786>,  <41.395081, 41.240345, 46.123158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658871, 41.884155, 46.340786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904457, 41.615341, 46.506401>,  <42.051807, 41.454052, 46.605770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904457, 41.615341, 46.506401>,  <41.658871, 41.884155, 46.340786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904457, 41.615341, 46.506401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787427, 0.557912, -0.262093,
		-0.054862, 0.486939, 0.871711,
		0.613961, -0.672031, 0.414037,
		42.088646, 41.413731, 46.630611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093613, 42.184982, 46.781094>,  <41.658871, 41.884155, 46.340786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093613, 42.184982, 46.781094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.299965, 41.855652, 46.686436>,  <42.423779, 41.658054, 46.629639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.299965, 41.855652, 46.686436>,  <42.093613, 42.184982, 46.781094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299965, 41.855652, 46.686436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770918, 0.566646, -0.290856,
		0.373565, -0.032389, 0.927038,
		0.515882, -0.823324, -0.236649,
		42.454731, 41.608654, 46.615440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732761, 42.336388, 47.017872>,  <42.093613, 42.184982, 46.781094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732761, 42.336388, 47.017872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772438, 42.012650, 46.786316>,  <42.796246, 41.818405, 46.647381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.772438, 42.012650, 46.786316>,  <42.732761, 42.336388, 47.017872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772438, 42.012650, 46.786316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914252, 0.303787, -0.268063,
		0.392816, -0.502663, 0.770081,
		0.099195, -0.809348, -0.578893,
		42.802197, 41.769844, 46.612648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364445, 41.951649, 47.336571>,  <42.732761, 42.336388, 47.017872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364445, 41.951649, 47.336571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.293137, 41.856972, 46.954536>,  <43.250351, 41.800167, 46.725315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.293137, 41.856972, 46.954536>,  <43.364445, 41.951649, 47.336571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293137, 41.856972, 46.954536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915223, 0.316582, -0.249283,
		0.361368, -0.918560, 0.160191,
		-0.178267, -0.236694, -0.955090,
		43.239655, 41.785965, 46.668011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935898, 41.654064, 47.057240>,  <43.364445, 41.951649, 47.336571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935898, 41.654064, 47.057240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.746498, 41.773628, 46.725830>,  <43.632858, 41.845367, 46.526985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.746498, 41.773628, 46.725830>,  <43.935898, 41.654064, 47.057240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746498, 41.773628, 46.725830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878477, 0.228442, -0.419634,
		0.063835, -0.926534, -0.370755,
		-0.473502, 0.298913, -0.828521,
		43.604446, 41.863300, 46.477272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893970, 41.792217, 47.833660>,  <43.935898, 41.654064, 47.057240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893970, 41.792217, 47.833660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.575455, 41.962868, 48.005199>,  <43.384346, 42.065258, 48.108124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.575455, 41.962868, 48.005199>,  <43.893970, 41.792217, 47.833660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575455, 41.962868, 48.005199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533153, 0.829898, 0.164368,
		-0.285774, 0.359525, -0.888299,
		-0.796292, 0.426627, 0.428845,
		43.336567, 42.090855, 48.133854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171043, 41.094826, 47.902443>,  <43.893970, 41.792217, 47.833660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171043, 41.094826, 47.902443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.186890, 41.376869, 48.185638>,  <44.196400, 41.546097, 48.355556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.186890, 41.376869, 48.185638>,  <44.171043, 41.094826, 47.902443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186890, 41.376869, 48.185638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025529, -0.709026, 0.704720,
		0.998889, -0.009846, -0.046091,
		0.039618, 0.705113, 0.707987,
		44.198776, 41.588402, 48.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303619, 40.774391, 48.564240>,  <44.171043, 41.094826, 47.902443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303619, 40.774391, 48.564240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.140850, 41.111717, 48.704659>,  <44.043190, 41.314114, 48.788910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.140850, 41.111717, 48.704659>,  <44.303619, 40.774391, 48.564240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140850, 41.111717, 48.704659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266049, -0.477060, 0.837634,
		0.873860, 0.247458, 0.418490,
		-0.406924, 0.843314, 0.351048,
		44.018772, 41.364712, 48.809975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297646, 40.561474, 49.302456>,  <44.303619, 40.774391, 48.564240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297646, 40.561474, 49.302456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.058731, 40.878662, 49.254387>,  <43.915382, 41.068977, 49.225544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.058731, 40.878662, 49.254387>,  <44.297646, 40.561474, 49.302456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058731, 40.878662, 49.254387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532841, -0.280348, 0.798427,
		0.599440, 0.540925, 0.589977,
		-0.597287, 0.792973, -0.120176,
		43.879543, 41.116554, 49.218334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246933, 40.927887, 49.943855>,  <44.297646, 40.561474, 49.302456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246933, 40.927887, 49.943855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.920662, 41.055046, 49.750523>,  <43.724899, 41.131344, 49.634521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.920662, 41.055046, 49.750523>,  <44.246933, 40.927887, 49.943855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920662, 41.055046, 49.750523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572987, -0.328800, 0.750718,
		0.079736, 0.889286, 0.450348,
		-0.815677, 0.317903, -0.483332,
		43.675961, 41.150417, 49.605522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707458, 41.073807, 50.534039>,  <44.246933, 40.927887, 49.943855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707458, 41.073807, 50.534039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.483757, 41.053238, 50.203079>,  <43.349537, 41.040897, 50.004501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.483757, 41.053238, 50.203079>,  <43.707458, 41.073807, 50.534039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483757, 41.053238, 50.203079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790766, -0.266511, 0.551054,
		-0.248849, 0.962459, 0.108383,
		-0.559252, -0.051423, -0.827401,
		43.315983, 41.037811, 49.954861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175652, 41.596043, 50.675930>,  <43.707458, 41.073807, 50.534039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175652, 41.596043, 50.675930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.109604, 41.282135, 50.436974>,  <43.069977, 41.093792, 50.293598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.109604, 41.282135, 50.436974>,  <43.175652, 41.596043, 50.675930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109604, 41.282135, 50.436974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743185, -0.299200, 0.598462,
		-0.648392, 0.542790, -0.533823,
		-0.165119, -0.784766, -0.597392,
		43.060066, 41.046703, 50.257755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514561, 41.441174, 50.631496>,  <43.175652, 41.596043, 50.675930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514561, 41.441174, 50.631496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.611206, 41.089302, 50.467648>,  <42.669193, 40.878181, 50.369339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.611206, 41.089302, 50.467648>,  <42.514561, 41.441174, 50.631496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611206, 41.089302, 50.467648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640178, -0.461738, 0.613979,
		-0.729242, 0.113885, -0.674712,
		0.241618, -0.879675, -0.409625,
		42.683693, 40.825401, 50.344761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861511, 41.166832, 50.548351>,  <42.514561, 41.441174, 50.631496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861511, 41.166832, 50.548351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.114040, 40.859314, 50.507568>,  <42.265556, 40.674805, 50.483101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.114040, 40.859314, 50.507568>,  <41.861511, 41.166832, 50.548351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114040, 40.859314, 50.507568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631549, -0.585954, 0.507745,
		-0.450090, -0.256161, -0.855454,
		0.631320, -0.768791, -0.101953,
		42.303436, 40.628677, 50.476982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494965, 40.526871, 50.196175>,  <41.861511, 41.166832, 50.548351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494965, 40.526871, 50.196175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798943, 40.424103, 50.434998>,  <41.981331, 40.362442, 50.578289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.798943, 40.424103, 50.434998>,  <41.494965, 40.526871, 50.196175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798943, 40.424103, 50.434998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570198, -0.704460, 0.422623,
		0.312020, -0.661610, -0.681847,
		0.759946, -0.256921, 0.597054,
		42.026928, 40.347027, 50.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307644, 39.945660, 50.413868>,  <41.494965, 40.526871, 50.196175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307644, 39.945660, 50.413868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609901, 39.991982, 50.671730>,  <41.791256, 40.019775, 50.826447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609901, 39.991982, 50.671730>,  <41.307644, 39.945660, 50.413868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609901, 39.991982, 50.671730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460621, -0.605769, 0.648747,
		0.465644, -0.787167, -0.404405,
		0.755648, 0.115808, 0.644658,
		41.836597, 40.026722, 50.865128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507759, 39.265255, 50.596825>,  <41.307644, 39.945660, 50.413868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507759, 39.265255, 50.596825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659454, 39.502457, 50.880943>,  <41.750473, 39.644775, 51.051414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.659454, 39.502457, 50.880943>,  <41.507759, 39.265255, 50.596825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659454, 39.502457, 50.880943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334229, -0.628026, 0.702762,
		0.862826, -0.503918, -0.039974,
		0.379239, 0.593001, 0.710301,
		41.773228, 39.680359, 51.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839764, 38.841003, 51.107071>,  <41.507759, 39.265255, 50.596825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839764, 38.841003, 51.107071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781742, 39.187897, 51.297592>,  <41.746929, 39.396034, 51.411903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.781742, 39.187897, 51.297592>,  <41.839764, 38.841003, 51.107071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781742, 39.187897, 51.297592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452642, -0.486226, 0.747462,
		0.879815, -0.107173, 0.463075,
		-0.145052, 0.867236, 0.476300,
		41.738228, 39.448067, 51.440483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877537, 38.677147, 51.752602>,  <41.839764, 38.841003, 51.107071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877537, 38.677147, 51.752602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692619, 39.027618, 51.807152>,  <41.581669, 39.237900, 51.839882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.692619, 39.027618, 51.807152>,  <41.877537, 38.677147, 51.752602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692619, 39.027618, 51.807152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402626, -0.344438, 0.848089,
		0.790048, 0.337160, 0.512004,
		-0.462296, 0.876177, 0.136373,
		41.553932, 39.290470, 51.848064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919506, 38.819527, 52.463375>,  <41.877537, 38.677147, 51.752602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919506, 38.819527, 52.463375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.607960, 39.030586, 52.327759>,  <41.421032, 39.157223, 52.246387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.607960, 39.030586, 52.327759>,  <41.919506, 38.819527, 52.463375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607960, 39.030586, 52.327759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549565, -0.313661, 0.774335,
		0.302233, 0.789431, 0.534278,
		-0.778866, 0.527651, -0.339045,
		41.374298, 39.188881, 52.226044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724045, 39.311241, 53.085152>,  <41.919506, 38.819527, 52.463375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724045, 39.311241, 53.085152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414467, 39.304665, 52.831936>,  <41.228718, 39.300720, 52.680008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.414467, 39.304665, 52.831936>,  <41.724045, 39.311241, 53.085152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414467, 39.304665, 52.831936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611488, -0.240408, 0.753848,
		-0.164580, 0.970533, 0.176011,
		-0.773949, -0.016440, -0.633035,
		41.182281, 39.299732, 52.642025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148174, 39.806358, 53.404285>,  <41.724045, 39.311241, 53.085152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148174, 39.806358, 53.404285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.005886, 39.543121, 53.138840>,  <40.920513, 39.385181, 52.979572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.005886, 39.543121, 53.138840>,  <41.148174, 39.806358, 53.404285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005886, 39.543121, 53.138840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819275, -0.122099, 0.560251,
		-0.449721, 0.742974, -0.495723,
		-0.355725, -0.658090, -0.663610,
		40.899170, 39.345695, 52.939758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426365, 39.933994, 53.254738>,  <41.148174, 39.806358, 53.404285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426365, 39.933994, 53.254738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.475471, 39.555847, 53.133938>,  <40.504936, 39.328960, 53.061455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.475471, 39.555847, 53.133938>,  <40.426365, 39.933994, 53.254738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475471, 39.555847, 53.133938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817847, -0.268750, 0.508822,
		-0.562189, 0.184529, -0.806159,
		0.122762, -0.945369, -0.302005,
		40.512299, 39.272236, 53.043335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688591, 39.725986, 53.121029>,  <40.426365, 39.933994, 53.254738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688591, 39.725986, 53.121029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942780, 39.421097, 53.170322>,  <40.095291, 39.238163, 53.199898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942780, 39.421097, 53.170322>,  <39.688591, 39.725986, 53.121029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942780, 39.421097, 53.170322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654156, -0.446697, 0.610361,
		-0.410185, -0.468483, -0.782479,
		0.635474, -0.762224, 0.123233,
		40.133423, 39.192429, 53.207291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353188, 39.055367, 52.970169>,  <39.688591, 39.725986, 53.121029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353188, 39.055367, 52.970169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666252, 38.977844, 53.206768>,  <39.854092, 38.931332, 53.348728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666252, 38.977844, 53.206768>,  <39.353188, 39.055367, 52.970169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666252, 38.977844, 53.206768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597541, -0.500049, 0.626815,
		0.174298, -0.844032, -0.507179,
		0.782666, -0.193808, 0.591501,
		39.901051, 38.919701, 53.384216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213760, 38.378265, 53.197834>,  <39.353188, 39.055367, 52.970169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213760, 38.378265, 53.197834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490875, 38.508354, 53.455292>,  <39.657143, 38.586407, 53.609768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490875, 38.508354, 53.455292>,  <39.213760, 38.378265, 53.197834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490875, 38.508354, 53.455292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496737, -0.431818, 0.752852,
		0.522785, -0.841285, -0.137605,
		0.692784, 0.325226, 0.643645,
		39.698711, 38.605923, 53.648384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376472, 37.798321, 53.628792>,  <39.213760, 38.378265, 53.197834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376472, 37.798321, 53.628792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465363, 38.119987, 53.849312>,  <39.518696, 38.312988, 53.981625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465363, 38.119987, 53.849312>,  <39.376472, 37.798321, 53.628792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465363, 38.119987, 53.849312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430342, -0.426479, 0.795564,
		0.874883, -0.414044, 0.251291,
		0.222228, 0.804167, 0.551299,
		39.532032, 38.361237, 54.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613037, 37.509869, 54.225281>,  <39.376472, 37.798321, 53.628792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613037, 37.509869, 54.225281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521835, 37.880409, 54.345211>,  <39.467113, 38.102734, 54.417168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.521835, 37.880409, 54.345211>,  <39.613037, 37.509869, 54.225281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521835, 37.880409, 54.345211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383610, -0.368494, 0.846791,
		0.894907, 0.078052, 0.439373,
		-0.228000, 0.926348, 0.299826,
		39.453434, 38.158314, 54.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471455, 37.472530, 54.923271>,  <39.613037, 37.509869, 54.225281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471455, 37.472530, 54.923271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355701, 37.852547, 54.876476>,  <39.286251, 38.080555, 54.848400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355701, 37.852547, 54.876476>,  <39.471455, 37.472530, 54.923271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355701, 37.852547, 54.876476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695648, -0.124775, 0.707463,
		0.657519, 0.286112, 0.697000,
		-0.289382, 0.950037, -0.116991,
		39.268887, 38.137558, 54.841377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430641, 37.742443, 55.608223>,  <39.471455, 37.472530, 54.923271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430641, 37.742443, 55.608223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194065, 37.952179, 55.363190>,  <39.052120, 38.078022, 55.216171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194065, 37.952179, 55.363190>,  <39.430641, 37.742443, 55.608223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194065, 37.952179, 55.363190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770000, -0.141748, 0.622100,
		0.239360, 0.839627, 0.487578,
		-0.591445, 0.524341, -0.612584,
		39.016632, 38.109482, 55.179413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920101, 38.114838, 56.066654>,  <39.430641, 37.742443, 55.608223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920101, 38.114838, 56.066654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746902, 38.075638, 55.708233>,  <38.642982, 38.052120, 55.493179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746902, 38.075638, 55.708233>,  <38.920101, 38.114838, 56.066654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746902, 38.075638, 55.708233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857184, -0.262732, 0.442953,
		-0.278829, 0.959879, 0.029763,
		-0.433001, -0.097996, -0.896051,
		38.617001, 38.046238, 55.439419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296288, 38.389961, 56.176865>,  <38.920101, 38.114838, 56.066654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296288, 38.389961, 56.176865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248055, 38.175255, 55.842838>,  <38.219116, 38.046432, 55.642422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248055, 38.175255, 55.842838>,  <38.296288, 38.389961, 56.176865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248055, 38.175255, 55.842838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882520, -0.327224, 0.337763,
		-0.454554, 0.777693, -0.434251,
		-0.120578, -0.536766, -0.835070,
		38.211880, 38.014225, 55.592316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585857, 38.485050, 55.957924>,  <38.296288, 38.389961, 56.176865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585857, 38.485050, 55.957924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707016, 38.141525, 55.792664>,  <37.779709, 37.935410, 55.693508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.707016, 38.141525, 55.792664>,  <37.585857, 38.485050, 55.957924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707016, 38.141525, 55.792664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886073, -0.413396, 0.209710,
		-0.350898, 0.302566, -0.886185,
		0.302894, -0.858812, -0.413155,
		37.797886, 37.883881, 55.668716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212173, 39.145439, 55.772449>,  <37.585857, 38.485050, 55.957924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212173, 39.145439, 55.772449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117844, 39.398682, 56.067356>,  <37.061245, 39.550629, 56.244301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117844, 39.398682, 56.067356>,  <37.212173, 39.145439, 55.772449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117844, 39.398682, 56.067356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688405, 0.644319, -0.333094,
		-0.685919, 0.428986, -0.587781,
		-0.235826, 0.633106, 0.737267,
		37.047096, 39.588615, 56.288536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042309, 39.741230, 55.435268>,  <37.212173, 39.145439, 55.772449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042309, 39.741230, 55.435268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133804, 39.844116, 55.810825>,  <37.188702, 39.905849, 56.036160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133804, 39.844116, 55.810825>,  <37.042309, 39.741230, 55.435268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133804, 39.844116, 55.810825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618707, 0.706205, -0.344203,
		-0.751585, 0.659631, 0.002395,
		0.228738, 0.257217, 0.938892,
		37.202427, 39.921280, 56.092491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954536, 40.507824, 55.477844>,  <37.042309, 39.741230, 55.435268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954536, 40.507824, 55.477844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211784, 40.374496, 55.753609>,  <37.366135, 40.294498, 55.919067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211784, 40.374496, 55.753609>,  <36.954536, 40.507824, 55.477844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211784, 40.374496, 55.753609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697966, 0.625515, -0.348675,
		-0.315018, 0.705428, 0.634930,
		0.643124, -0.333320, 0.689413,
		37.404720, 40.274502, 55.960434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328732, 41.183441, 55.625668>,  <36.954536, 40.507824, 55.477844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328732, 41.183441, 55.625668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558933, 40.898758, 55.786797>,  <37.697056, 40.727947, 55.883472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558933, 40.898758, 55.786797>,  <37.328732, 41.183441, 55.625668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558933, 40.898758, 55.786797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795023, 0.602334, -0.071640,
		-0.191644, 0.361480, 0.912472,
		0.575509, -0.711707, 0.402819,
		37.731586, 40.685246, 55.907642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673622, 41.498142, 56.236759>,  <37.328732, 41.183441, 55.625668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673622, 41.498142, 56.236759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879787, 41.189507, 56.087631>,  <38.003487, 41.004326, 55.998154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879787, 41.189507, 56.087631>,  <37.673622, 41.498142, 56.236759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879787, 41.189507, 56.087631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758283, 0.613315, -0.221024,
		0.399198, -0.168787, 0.901195,
		0.515410, -0.771593, -0.372823,
		38.034409, 40.958027, 55.975784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
