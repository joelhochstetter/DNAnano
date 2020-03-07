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
	<36.469757, 52.319912, 49.833111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651382, 52.519482, 50.128380>,  <36.760357, 52.639225, 50.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651382, 52.519482, 50.128380>,  <36.469757, 52.319912, 49.833111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651382, 52.519482, 50.128380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754442, -0.656041, -0.020658,
		0.473966, 0.566289, -0.674295,
		0.454064, 0.498925, 0.738173,
		36.787601, 52.669159, 50.349831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087269, 52.842365, 49.775970>,  <36.469757, 52.319912, 49.833111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087269, 52.842365, 49.775970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113022, 52.698540, 50.148331>,  <37.128475, 52.612244, 50.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113022, 52.698540, 50.148331>,  <37.087269, 52.842365, 49.775970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113022, 52.698540, 50.148331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824543, -0.506290, -0.252585,
		0.562124, 0.783826, 0.263879,
		0.064383, -0.359564, 0.930897,
		37.132336, 52.590672, 50.427601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770618, 53.006657, 49.980679>,  <37.087269, 52.842365, 49.775970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770618, 53.006657, 49.980679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635727, 52.687382, 50.180351>,  <37.554794, 52.495815, 50.300156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635727, 52.687382, 50.180351>,  <37.770618, 53.006657, 49.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635727, 52.687382, 50.180351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811005, -0.515569, -0.276514,
		0.478070, 0.311588, 0.821195,
		-0.337224, -0.798186, 0.499178,
		37.534561, 52.447926, 50.330105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303604, 52.612198, 50.261444>,  <37.770618, 53.006657, 49.980679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303604, 52.612198, 50.261444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007851, 52.351879, 50.330475>,  <37.830399, 52.195690, 50.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007851, 52.351879, 50.330475>,  <38.303604, 52.612198, 50.261444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007851, 52.351879, 50.330475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641674, -0.758744, -0.112086,
		0.203885, 0.027862, 0.978598,
		-0.739382, -0.650793, 0.172575,
		37.786037, 52.156643, 50.382248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458611, 52.078274, 50.721638>,  <38.303604, 52.612198, 50.261444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458611, 52.078274, 50.721638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166355, 51.878319, 50.535614>,  <37.991001, 51.758347, 50.424000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166355, 51.878319, 50.535614>,  <38.458611, 52.078274, 50.721638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166355, 51.878319, 50.535614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588245, -0.806666, -0.057081,
		-0.346615, -0.315276, 0.883436,
		-0.730634, -0.499891, -0.465062,
		37.947166, 51.728352, 50.396095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221764, 52.391674, 50.553482>,  <38.458611, 52.078274, 50.721638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221764, 52.391674, 50.553482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506248, 52.656845, 50.647030>,  <39.676941, 52.815948, 50.703159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506248, 52.656845, 50.647030>,  <39.221764, 52.391674, 50.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506248, 52.656845, 50.647030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596115, -0.392420, -0.700467,
		-0.372585, 0.637597, -0.674278,
		0.711216, 0.662930, 0.233871,
		39.719612, 52.855724, 50.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458725, 52.746326, 49.943287>,  <39.221764, 52.391674, 50.553482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458725, 52.746326, 49.943287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739185, 52.779053, 50.226608>,  <39.907463, 52.798687, 50.396603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739185, 52.779053, 50.226608>,  <39.458725, 52.746326, 49.943287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739185, 52.779053, 50.226608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712984, -0.089111, -0.695494,
		0.006216, 0.992656, -0.120813,
		0.701152, 0.081814, 0.708302,
		39.949532, 52.803596, 50.439098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013443, 53.295002, 49.774132>,  <39.458725, 52.746326, 49.943287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013443, 53.295002, 49.774132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135899, 52.980282, 49.988503>,  <40.209373, 52.791451, 50.117126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135899, 52.980282, 49.988503>,  <40.013443, 53.295002, 49.774132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135899, 52.980282, 49.988503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676702, -0.216108, -0.703826,
		0.669591, 0.578133, 0.466272,
		0.306140, -0.786803, 0.535928,
		40.227741, 52.744240, 50.149281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749920, 53.321514, 49.814827>,  <40.013443, 53.295002, 49.774132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749920, 53.321514, 49.814827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661354, 52.940723, 49.899414>,  <40.608215, 52.712250, 49.950165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661354, 52.940723, 49.899414>,  <40.749920, 53.321514, 49.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661354, 52.940723, 49.899414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690843, -0.306172, -0.654977,
		0.688267, 0.001066, 0.725457,
		-0.221416, -0.951976, 0.211465,
		40.594929, 52.655132, 49.962852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355259, 53.441544, 49.339664>,  <40.749920, 53.321514, 49.814827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355259, 53.441544, 49.339664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091042, 53.153969, 49.253117>,  <40.932510, 52.981426, 49.201187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091042, 53.153969, 49.253117>,  <41.355259, 53.441544, 49.339664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091042, 53.153969, 49.253117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720862, 0.526763, 0.450420,
		-0.209849, 0.453493, -0.866203,
		-0.660546, -0.718933, -0.216366,
		40.892879, 52.938290, 49.188206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592361, 53.576218, 50.001041>,  <41.355259, 53.441544, 49.339664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592361, 53.576218, 50.001041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902317, 53.347733, 50.109306>,  <42.088291, 53.210640, 50.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902317, 53.347733, 50.109306>,  <41.592361, 53.576218, 50.001041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902317, 53.347733, 50.109306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465300, -0.805301, -0.367404,
		0.427830, 0.158759, -0.889808,
		0.774892, -0.571214, 0.270661,
		42.134785, 53.176369, 50.190506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008018, 53.170036, 49.396240>,  <41.592361, 53.576218, 50.001041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008018, 53.170036, 49.396240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965572, 53.000786, 49.756172>,  <41.940105, 52.899235, 49.972134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965572, 53.000786, 49.756172>,  <42.008018, 53.170036, 49.396240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965572, 53.000786, 49.756172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431259, -0.795818, -0.425076,
		0.895966, -0.433169, -0.098031,
		-0.106115, -0.423130, 0.899833,
		41.933739, 52.873848, 50.026123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186260, 52.422470, 49.354557>,  <42.008018, 53.170036, 49.396240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186260, 52.422470, 49.354557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997841, 52.416420, 49.707348>,  <41.884789, 52.412788, 49.919022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997841, 52.416420, 49.707348>,  <42.186260, 52.422470, 49.354557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997841, 52.416420, 49.707348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354620, -0.912251, -0.205042,
		0.807684, -0.409352, 0.424355,
		-0.471052, -0.015124, 0.881976,
		41.856525, 52.411884, 49.971939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368862, 51.888172, 49.810184>,  <42.186260, 52.422470, 49.354557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368862, 51.888172, 49.810184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989178, 51.939621, 49.925041>,  <41.761368, 51.970490, 49.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989178, 51.939621, 49.925041>,  <42.368862, 51.888172, 49.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989178, 51.939621, 49.925041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165895, -0.980056, -0.109403,
		0.267347, -0.151483, 0.951619,
		-0.949213, 0.128620, 0.287145,
		41.704414, 51.978207, 50.011185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889206, 51.446564, 49.765503>,  <42.368862, 51.888172, 49.810184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889206, 51.446564, 49.765503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079945, 51.766258, 49.911839>,  <43.194389, 51.958073, 49.999641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079945, 51.766258, 49.911839>,  <42.889206, 51.446564, 49.765503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079945, 51.766258, 49.911839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260207, -0.269199, 0.927267,
		0.839587, -0.537362, 0.079599,
		0.476850, 0.799233, 0.365841,
		43.223000, 52.006027, 50.021591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362122, 51.128967, 50.234722>,  <42.889206, 51.446564, 49.765503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362122, 51.128967, 50.234722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300732, 51.516445, 50.312778>,  <43.263897, 51.748932, 50.359612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300732, 51.516445, 50.312778>,  <43.362122, 51.128967, 50.234722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300732, 51.516445, 50.312778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118427, -0.214087, 0.969609,
		0.981030, 0.125704, 0.147577,
		-0.153478, 0.968693, 0.195140,
		43.254688, 51.807053, 50.371319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880009, 51.273834, 50.647865>,  <43.362122, 51.128967, 50.234722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880009, 51.273834, 50.647865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545532, 51.491177, 50.677666>,  <43.344845, 51.621582, 50.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545532, 51.491177, 50.677666>,  <43.880009, 51.273834, 50.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545532, 51.491177, 50.677666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146333, -0.351968, 0.924503,
		0.528554, 0.762159, 0.373823,
		-0.836192, 0.543352, 0.074505,
		43.294674, 51.654182, 50.700016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347717, 50.796124, 51.139336>,  <43.880009, 51.273834, 50.647865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347717, 50.796124, 51.139336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406124, 50.427307, 51.282734>,  <44.441166, 50.206017, 51.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406124, 50.427307, 51.282734>,  <44.347717, 50.796124, 51.139336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406124, 50.427307, 51.282734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712001, 0.349534, 0.609000,
		-0.686829, 0.166325, 0.707532,
		0.146014, -0.922042, 0.358494,
		44.449928, 50.150696, 51.390282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206707, 50.700989, 51.855385>,  <44.347717, 50.796124, 51.139336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206707, 50.700989, 51.855385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497265, 50.448959, 51.745583>,  <44.671600, 50.297741, 51.679703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497265, 50.448959, 51.745583>,  <44.206707, 50.700989, 51.855385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497265, 50.448959, 51.745583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627929, 0.446068, 0.637753,
		-0.279385, -0.635631, 0.719665,
		0.726395, -0.630077, -0.274507,
		44.715183, 50.259937, 51.663231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502426, 50.478035, 52.548080>,  <44.206707, 50.700989, 51.855385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502426, 50.478035, 52.548080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747253, 50.395340, 52.242760>,  <44.894150, 50.345722, 52.059566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747253, 50.395340, 52.242760>,  <44.502426, 50.478035, 52.548080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747253, 50.395340, 52.242760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760044, 0.420362, 0.495609,
		0.218404, -0.883491, 0.414418,
		0.612072, -0.206733, -0.763301,
		44.930874, 50.333321, 52.013771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041039, 49.952847, 52.744457>,  <44.502426, 50.478035, 52.548080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041039, 49.952847, 52.744457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167950, 50.228088, 52.483429>,  <45.244095, 50.393234, 52.326813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167950, 50.228088, 52.483429>,  <45.041039, 49.952847, 52.744457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167950, 50.228088, 52.483429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766407, 0.219230, 0.603788,
		0.558533, -0.691700, -0.457813,
		0.317273, 0.688106, -0.652570,
		45.263130, 50.434521, 52.287659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648014, 49.753502, 52.528965>,  <45.041039, 49.952847, 52.744457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648014, 49.753502, 52.528965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640770, 50.150196, 52.478157>,  <45.636425, 50.388214, 52.447670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640770, 50.150196, 52.478157>,  <45.648014, 49.753502, 52.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640770, 50.150196, 52.478157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806186, 0.089629, 0.584835,
		0.591386, -0.091812, -0.801145,
		-0.018111, 0.991735, -0.127022,
		45.635338, 50.447716, 52.440052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333141, 50.100090, 52.248737>,  <45.648014, 49.753502, 52.528965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333141, 50.100090, 52.248737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117855, 50.343460, 52.482025>,  <45.988682, 50.489483, 52.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117855, 50.343460, 52.482025>,  <46.333141, 50.100090, 52.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117855, 50.343460, 52.482025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725684, -0.017376, 0.687808,
		0.428611, 0.793424, -0.432170,
		-0.538214, 0.608421, 0.583223,
		45.956390, 50.525986, 52.656994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719791, 50.569241, 52.662350>,  <46.333141, 50.100090, 52.248737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719791, 50.569241, 52.662350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384155, 50.510403, 52.871841>,  <46.182774, 50.475098, 52.997536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384155, 50.510403, 52.871841>,  <46.719791, 50.569241, 52.662350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384155, 50.510403, 52.871841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493454, 0.199433, 0.846599,
		-0.228983, 0.968808, -0.094755,
		-0.839089, -0.147099, 0.523728,
		46.132427, 50.466274, 53.028961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527946, 51.108616, 53.216026>,  <46.719791, 50.569241, 52.662350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527946, 51.108616, 53.216026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430927, 50.733719, 53.316223>,  <46.372715, 50.508781, 53.376343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430927, 50.733719, 53.316223>,  <46.527946, 51.108616, 53.216026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430927, 50.733719, 53.316223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701898, 0.008708, 0.712224,
		-0.669708, 0.348572, 0.655736,
		-0.242551, -0.937241, 0.250494,
		46.358162, 50.452545, 53.391373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457893, 51.022881, 53.995567>,  <46.527946, 51.108616, 53.216026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457893, 51.022881, 53.995567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585140, 50.687374, 53.818810>,  <46.661488, 50.486069, 53.712753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585140, 50.687374, 53.818810>,  <46.457893, 51.022881, 53.995567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585140, 50.687374, 53.818810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821421, 0.011125, 0.570214,
		-0.473360, -0.544378, 0.692519,
		0.318116, -0.838766, -0.441897,
		46.680576, 50.435745, 53.686241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730686, 50.681976, 54.477180>,  <46.457893, 51.022881, 53.995567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730686, 50.681976, 54.477180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912075, 50.572296, 54.137962>,  <47.020908, 50.506489, 53.934433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912075, 50.572296, 54.137962>,  <46.730686, 50.681976, 54.477180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912075, 50.572296, 54.137962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874193, -0.048532, 0.483147,
		-0.173636, -0.960448, 0.217695,
		0.453472, -0.274198, -0.848044,
		47.048115, 50.490036, 53.883549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906033, 50.092896, 54.596535>,  <46.730686, 50.681976, 54.477180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906033, 50.092896, 54.596535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144733, 50.288330, 54.341923>,  <47.287956, 50.405590, 54.189156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144733, 50.288330, 54.341923>,  <46.906033, 50.092896, 54.596535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144733, 50.288330, 54.341923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762687, -0.098837, 0.639171,
		0.249378, -0.866899, -0.431621,
		0.596756, 0.488587, -0.636525,
		47.323761, 50.434906, 54.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507523, 49.681725, 54.459427>,  <46.906033, 50.092896, 54.596535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507523, 49.681725, 54.459427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593098, 50.070297, 54.418324>,  <47.644444, 50.303440, 54.393661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593098, 50.070297, 54.418324>,  <47.507523, 49.681725, 54.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593098, 50.070297, 54.418324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908820, -0.159363, 0.385550,
		0.358158, -0.175873, -0.916947,
		0.213935, 0.971428, -0.102760,
		47.657280, 50.361725, 54.387497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.120277, 49.800102, 54.097466>,  <47.507523, 49.681725, 54.459427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.120277, 49.800102, 54.097466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.112316, 50.154495, 54.282784>,  <48.107540, 50.367130, 54.393974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.112316, 50.154495, 54.282784>,  <48.120277, 49.800102, 54.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.112316, 50.154495, 54.282784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870336, -0.212701, 0.444154,
		0.492055, 0.412063, -0.766867,
		-0.019906, 0.885981, 0.463294,
		48.106346, 50.420288, 54.421772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.701309, 50.314083, 53.866188>,  <48.120277, 49.800102, 54.097466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.701309, 50.314083, 53.866188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556595, 50.363548, 54.235798>,  <48.469765, 50.393227, 54.457565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.556595, 50.363548, 54.235798>,  <48.701309, 50.314083, 53.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.556595, 50.363548, 54.235798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902460, -0.202150, 0.380396,
		0.233832, 0.971516, -0.038465,
		-0.361785, 0.123661, 0.924024,
		48.448059, 50.400646, 54.513004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.016190, 50.848717, 54.132244>,  <48.701309, 50.314083, 53.866188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.016190, 50.848717, 54.132244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.919388, 50.560879, 54.392586>,  <48.861305, 50.388176, 54.548790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.919388, 50.560879, 54.392586>,  <49.016190, 50.848717, 54.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.919388, 50.560879, 54.392586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968615, -0.139954, 0.205421,
		-0.056731, 0.680140, 0.730883,
		-0.242005, -0.719599, 0.650855,
		48.846786, 50.344997, 54.587841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.414318, 50.963238, 54.870213>,  <49.016190, 50.848717, 54.132244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.414318, 50.963238, 54.870213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.305763, 50.580677, 54.827042>,  <49.240631, 50.351139, 54.801140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.305763, 50.580677, 54.827042>,  <49.414318, 50.963238, 54.870213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.305763, 50.580677, 54.827042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927169, -0.289873, 0.237343,
		-0.258280, -0.035654, 0.965412,
		-0.271385, -0.956401, -0.107925,
		49.224346, 50.293758, 54.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.453926, 50.584412, 55.496098>,  <49.414318, 50.963238, 54.870213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.453926, 50.584412, 55.496098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.555649, 50.357628, 55.182693>,  <49.616680, 50.221558, 54.994652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.555649, 50.357628, 55.182693>,  <49.453926, 50.584412, 55.496098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.555649, 50.357628, 55.182693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839653, -0.272579, 0.469771,
		-0.479910, -0.777337, 0.406735,
		0.254303, -0.566964, -0.783506,
		49.631939, 50.187538, 54.947643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.202507, 50.535053, 55.721786>,  <49.453926, 50.584412, 55.496098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.202507, 50.535053, 55.721786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482235, 50.653236, 55.461433>,  <50.650074, 50.724148, 55.305222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.482235, 50.653236, 55.461433>,  <50.202507, 50.535053, 55.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.482235, 50.653236, 55.461433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109905, 0.944191, 0.310521,
		0.706304, -0.145620, 0.692769,
		0.699325, 0.295462, -0.650882,
		50.692032, 50.741875, 55.266171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.784222, 50.863884, 56.086067>,  <50.202507, 50.535053, 55.721786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.784222, 50.863884, 56.086067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.770950, 51.013348, 55.715279>,  <50.762989, 51.103027, 55.492805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.770950, 51.013348, 55.715279>,  <50.784222, 50.863884, 56.086067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.770950, 51.013348, 55.715279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109855, 0.923226, 0.368220,
		0.993394, -0.089616, -0.071679,
		-0.033177, 0.373662, -0.926972,
		50.760998, 51.125446, 55.437187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.410675, 51.217152, 56.005219>,  <50.784222, 50.863884, 56.086067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.410675, 51.217152, 56.005219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.114998, 51.337769, 55.764328>,  <50.937592, 51.410137, 55.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.114998, 51.337769, 55.764328>,  <51.410675, 51.217152, 56.005219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.114998, 51.337769, 55.764328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193382, 0.951548, 0.239083,
		0.645137, 0.060269, -0.761686,
		-0.739190, 0.301538, -0.602224,
		50.893242, 51.428230, 55.583660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.991524, 51.319939, 56.343235>,  <51.410675, 51.217152, 56.005219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.991524, 51.319939, 56.343235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.140709, 51.025578, 56.117188>,  <52.230221, 50.848961, 55.981560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.140709, 51.025578, 56.117188>,  <51.991524, 51.319939, 56.343235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.140709, 51.025578, 56.117188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927071, 0.320471, 0.194517,
		0.037959, -0.596449, 0.801753,
		0.372958, -0.735899, -0.565115,
		52.252598, 50.804810, 55.947655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.136143, 50.876747, 56.993885>,  <51.991524, 51.319939, 56.343235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.136143, 50.876747, 56.993885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.357929, 50.876465, 56.661003>,  <52.491001, 50.876297, 56.461273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.357929, 50.876465, 56.661003>,  <52.136143, 50.876747, 56.993885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.357929, 50.876465, 56.661003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830009, -0.072185, 0.553059,
		-0.060461, -0.997391, -0.039441,
		0.554463, -0.000702, -0.832208,
		52.524269, 50.876251, 56.411339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.584728, 50.195438, 56.926613>,  <52.136143, 50.876747, 56.993885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.584728, 50.195438, 56.926613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.727650, 50.534237, 56.769165>,  <52.813404, 50.737514, 56.674698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.727650, 50.534237, 56.769165>,  <52.584728, 50.195438, 56.926613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.727650, 50.534237, 56.769165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814327, -0.076128, 0.575392,
		0.457387, -0.526125, -0.716930,
		0.357307, 0.846993, -0.393618,
		52.834843, 50.788334, 56.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.307781, 50.193058, 56.666603>,  <52.584728, 50.195438, 56.926613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.307781, 50.193058, 56.666603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.267712, 50.550308, 56.842010>,  <53.243671, 50.764656, 56.947254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.267712, 50.550308, 56.842010>,  <53.307781, 50.193058, 56.666603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.267712, 50.550308, 56.842010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853832, -0.149110, 0.498735,
		0.510819, 0.424380, -0.747640,
		-0.100172, 0.893123, 0.438517,
		53.237659, 50.818245, 56.973564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.884300, 50.588364, 56.455608>,  <53.307781, 50.193058, 56.666603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.884300, 50.588364, 56.455608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.722107, 50.683411, 56.808678>,  <53.624790, 50.740440, 57.020519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.722107, 50.683411, 56.808678>,  <53.884300, 50.588364, 56.455608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.722107, 50.683411, 56.808678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894523, -0.095637, 0.436671,
		0.188179, 0.966638, -0.173779,
		-0.405483, 0.237622, 0.882677,
		53.600460, 50.754696, 57.073483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.307613, 51.051346, 56.716473>,  <53.884300, 50.588364, 56.455608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.307613, 51.051346, 56.716473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.128822, 50.819675, 56.989166>,  <54.021545, 50.680672, 57.152782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.128822, 50.819675, 56.989166>,  <54.307613, 51.051346, 56.716473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.128822, 50.819675, 56.989166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872576, -0.114442, 0.474884,
		-0.197024, 0.807127, 0.556531,
		-0.446982, -0.579179, 0.681732,
		53.994728, 50.645920, 57.193687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.751755, 51.301426, 57.186710>,  <54.307613, 51.051346, 56.716473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.751755, 51.301426, 57.186710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.578079, 50.954334, 57.283478>,  <54.473873, 50.746078, 57.341537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.578079, 50.954334, 57.283478>,  <54.751755, 51.301426, 57.186710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.578079, 50.954334, 57.283478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856230, -0.314091, 0.410143,
		-0.279909, 0.385218, 0.879351,
		-0.434191, -0.867729, 0.241918,
		54.447823, 50.694016, 57.356052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.451279, 51.483421, 56.835693>,  <54.751755, 51.301426, 57.186710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.451279, 51.483421, 56.835693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.672562, 51.457863, 57.167931>,  <55.805332, 51.442528, 57.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.672562, 51.457863, 57.167931>,  <55.451279, 51.483421, 56.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.672562, 51.457863, 57.167931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455573, -0.811541, -0.365861,
		0.697434, 0.580791, -0.419843,
		0.553209, -0.063895, 0.830589,
		55.838524, 51.438694, 57.417107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.057953, 51.587551, 56.500916>,  <55.451279, 51.483421, 56.835693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.057953, 51.587551, 56.500916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192314, 51.948776, 56.393845>,  <56.272930, 52.165512, 56.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.192314, 51.948776, 56.393845>,  <56.057953, 51.587551, 56.500916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.192314, 51.948776, 56.393845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042931, -0.298570, -0.953422,
		-0.940916, 0.308770, -0.139061,
		0.335908, 0.903060, -0.267673,
		56.293087, 52.219696, 56.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.698139, 51.584526, 55.881527>,  <56.057953, 51.587551, 56.500916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.698139, 51.584526, 55.881527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.001274, 51.844791, 55.900841>,  <56.183155, 52.000950, 55.912430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.001274, 51.844791, 55.900841>,  <55.698139, 51.584526, 55.881527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.001274, 51.844791, 55.900841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057208, 0.007447, -0.998335,
		-0.649936, 0.759333, -0.031579,
		0.757833, 0.650660, 0.048280,
		56.228622, 52.039989, 55.915325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.726463, 52.298820, 55.634888>,  <55.698139, 51.584526, 55.881527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.726463, 52.298820, 55.634888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977707, 52.603813, 55.572784>,  <56.128452, 52.786808, 55.535522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.977707, 52.603813, 55.572784>,  <55.726463, 52.298820, 55.634888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.977707, 52.603813, 55.572784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676081, -0.435982, 0.593998,
		0.385221, -0.478063, -0.789342,
		0.628108, 0.762479, -0.155260,
		56.166138, 52.832558, 55.526207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.448647, 52.125938, 55.396957>,  <55.726463, 52.298820, 55.634888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.448647, 52.125938, 55.396957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.405579, 52.440720, 55.639977>,  <56.379738, 52.629589, 55.785789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.405579, 52.440720, 55.639977>,  <56.448647, 52.125938, 55.396957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.405579, 52.440720, 55.639977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716361, -0.362331, 0.596275,
		0.689372, 0.499426, -0.524728,
		-0.107670, 0.786950, 0.607550,
		56.373276, 52.676804, 55.822243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.071205, 52.136265, 55.847046>,  <56.448647, 52.125938, 55.396957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.071205, 52.136265, 55.847046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.139259, 52.030159, 55.467430>,  <57.180092, 51.966496, 55.239658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.139259, 52.030159, 55.467430>,  <57.071205, 52.136265, 55.847046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.139259, 52.030159, 55.467430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984626, 0.084417, 0.152923,
		0.039550, -0.960472, 0.275554,
		0.170139, -0.265269, -0.949044,
		57.190300, 51.950577, 55.182716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.566700, 51.567089, 55.797947>,  <57.071205, 52.136265, 55.847046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.566700, 51.567089, 55.797947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.567055, 51.798584, 55.471741>,  <57.567268, 51.937481, 55.276016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.567055, 51.798584, 55.471741>,  <57.566700, 51.567089, 55.797947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.567055, 51.798584, 55.471741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999922, -0.010691, -0.006498,
		-0.012479, -0.815443, -0.578703,
		0.000889, 0.578739, -0.815512,
		57.567322, 51.972206, 55.227085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.013283, 51.320660, 55.408524>,  <57.566700, 51.567089, 55.797947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.013283, 51.320660, 55.408524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.009384, 51.707638, 55.307373>,  <58.007046, 51.939827, 55.246681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.009384, 51.707638, 55.307373>,  <58.013283, 51.320660, 55.408524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.009384, 51.707638, 55.307373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987058, 0.049786, 0.152441,
		0.160069, -0.248117, -0.955414,
		-0.009743, 0.967450, -0.252875,
		58.006462, 51.997871, 55.231510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.525967, 51.419502, 54.937481>,  <58.013283, 51.320660, 55.408524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.525967, 51.419502, 54.937481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.477402, 51.720547, 55.196350>,  <58.448261, 51.901173, 55.351669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.477402, 51.720547, 55.196350>,  <58.525967, 51.419502, 54.937481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.477402, 51.720547, 55.196350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990627, 0.050771, 0.126806,
		0.062578, 0.656501, -0.751725,
		-0.121414, 0.752615, 0.647170,
		58.440979, 51.946331, 55.390503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.914886, 52.018570, 54.739220>,  <58.525967, 51.419502, 54.937481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.914886, 52.018570, 54.739220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.878052, 52.002029, 55.137177>,  <58.855949, 51.992104, 55.375950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.878052, 52.002029, 55.137177>,  <58.914886, 52.018570, 54.739220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.878052, 52.002029, 55.137177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970503, -0.227293, 0.080383,
		0.222808, 0.972948, 0.061062,
		-0.092087, -0.041351, 0.994892,
		58.850426, 51.989624, 55.435642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.605370, 52.236729, 54.989803>,  <58.914886, 52.018570, 54.739220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.605370, 52.236729, 54.989803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.439842, 52.130291, 55.338043>,  <59.340527, 52.066429, 55.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.439842, 52.130291, 55.338043>,  <59.605370, 52.236729, 54.989803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.439842, 52.130291, 55.338043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873313, -0.386075, 0.297105,
		0.257061, 0.883256, 0.392145,
		-0.413817, -0.266092, 0.870604,
		59.315697, 52.050465, 55.599224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.963531, 52.493443, 55.598652>,  <59.605370, 52.236729, 54.989803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.963531, 52.493443, 55.598652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.810852, 52.134201, 55.686028>,  <59.719246, 51.918655, 55.738453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.810852, 52.134201, 55.686028>,  <59.963531, 52.493443, 55.598652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.810852, 52.134201, 55.686028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885926, -0.288107, 0.363496,
		-0.263524, 0.332265, 0.905624,
		-0.381694, -0.898106, 0.218438,
		59.696342, 51.864769, 55.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.282490, 52.392689, 56.300240>,  <59.963531, 52.493443, 55.598652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.282490, 52.392689, 56.300240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.176460, 52.082848, 56.070549>,  <60.112843, 51.896942, 55.932735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.176460, 52.082848, 56.070549>,  <60.282490, 52.392689, 56.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.176460, 52.082848, 56.070549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879999, -0.437763, 0.184299,
		-0.394132, -0.456464, 0.797685,
		-0.265071, -0.774599, -0.574224,
		60.096939, 51.850468, 55.898281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.209301, 51.724060, 56.646507>,  <60.282490, 52.392689, 56.300240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.209301, 51.724060, 56.646507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292854, 51.615105, 56.270813>,  <60.342987, 51.549732, 56.045395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.292854, 51.615105, 56.270813>,  <60.209301, 51.724060, 56.646507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.292854, 51.615105, 56.270813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803685, -0.499396, 0.323565,
		-0.557189, -0.822440, 0.114602,
		0.208881, -0.272390, -0.939240,
		60.355518, 51.533386, 55.989040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.861500, 52.371292, 56.884346>,  <60.209301, 51.724060, 56.646507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.861500, 52.371292, 56.884346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.933777, 52.000843, 57.016800>,  <59.977142, 51.778576, 57.096272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.933777, 52.000843, 57.016800>,  <59.861500, 52.371292, 56.884346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.933777, 52.000843, 57.016800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475614, 0.376975, 0.794783,
		-0.860895, 0.013883, 0.508593,
		0.180693, -0.926119, 0.331139,
		59.987984, 51.723007, 57.116142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.653584, 52.534298, 57.583637>,  <59.861500, 52.371292, 56.884346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.653584, 52.534298, 57.583637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.905815, 52.234303, 57.503746>,  <60.057156, 52.054306, 57.455811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.905815, 52.234303, 57.503746>,  <59.653584, 52.534298, 57.583637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.905815, 52.234303, 57.503746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735035, 0.494461, 0.463932,
		-0.249188, -0.439349, 0.863063,
		0.630579, -0.749987, -0.199723,
		60.094990, 52.009308, 57.443829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.986511, 52.180813, 58.180862>,  <59.653584, 52.534298, 57.583637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.986511, 52.180813, 58.180862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.237915, 52.219608, 57.872169>,  <60.388756, 52.242886, 57.686954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.237915, 52.219608, 57.872169>,  <59.986511, 52.180813, 58.180862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.237915, 52.219608, 57.872169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690237, 0.387815, 0.610878,
		0.358533, -0.916621, 0.176804,
		0.628511, 0.096983, -0.771730,
		60.426468, 52.248703, 57.640652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.697147, 51.860886, 58.270401>,  <59.986511, 52.180813, 58.180862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.697147, 51.860886, 58.270401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.688782, 52.172920, 58.020271>,  <60.683762, 52.360142, 57.870193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.688782, 52.172920, 58.020271>,  <60.697147, 51.860886, 58.270401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.688782, 52.172920, 58.020271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698078, 0.459144, 0.549431,
		0.715716, -0.425031, -0.554165,
		-0.020916, 0.780087, -0.625321,
		60.682507, 52.406948, 57.832676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.140942, 51.343922, 58.030796>,  <60.697147, 51.860886, 58.270401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.140942, 51.343922, 58.030796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.771721, 51.414711, 57.894173>,  <59.550190, 51.457184, 57.812199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.771721, 51.414711, 57.894173>,  <60.140942, 51.343922, 58.030796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.771721, 51.414711, 57.894173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363900, -0.113821, 0.924457,
		0.124730, 0.977611, 0.169464,
		-0.923049, 0.176976, -0.341556,
		59.494804, 51.467804, 57.791706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.420773, 50.955513, 57.468006>,  <60.140942, 51.343922, 58.030796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.420773, 50.955513, 57.468006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.354774, 50.613705, 57.271004>,  <60.315174, 50.408619, 57.152802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.354774, 50.613705, 57.271004>,  <60.420773, 50.955513, 57.468006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.354774, 50.613705, 57.271004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986294, 0.143342, 0.081716,
		0.000769, 0.499240, -0.866463,
		-0.164997, -0.854525, -0.492508,
		60.305275, 50.357346, 57.123253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.067997, 51.020432, 57.163956>,  <60.420773, 50.955513, 57.468006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.067997, 51.020432, 57.163956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.805267, 51.288982, 57.301270>,  <60.647629, 51.450111, 57.383659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.805267, 51.288982, 57.301270>,  <61.067997, 51.020432, 57.163956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.805267, 51.288982, 57.301270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375116, -0.104006, 0.921125,
		0.654122, 0.733785, -0.183530,
		-0.656820, 0.671373, 0.343287,
		60.608223, 51.490395, 57.404255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.424561, 51.586712, 57.553486>,  <61.067997, 51.020432, 57.163956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.424561, 51.586712, 57.553486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.062500, 51.479282, 57.685280>,  <60.845264, 51.414825, 57.764355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.062500, 51.479282, 57.685280>,  <61.424561, 51.586712, 57.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.062500, 51.479282, 57.685280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391874, -0.226897, 0.891601,
		-0.164705, 0.936154, 0.310626,
		-0.905156, -0.268577, 0.329483,
		60.790955, 51.398708, 57.784126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.719063, 51.810028, 56.989384>,  <61.424561, 51.586712, 57.553486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.719063, 51.810028, 56.989384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.518829, 51.512581, 56.812096>,  <61.398689, 51.334114, 56.705723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.518829, 51.512581, 56.812096>,  <61.719063, 51.810028, 56.989384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.518829, 51.512581, 56.812096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385320, -0.267075, 0.883289,
		-0.775203, 0.612945, -0.152837,
		-0.500588, -0.743619, -0.443218,
		61.368652, 51.289494, 56.679131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.555229, 52.510544, 57.200588>,  <61.719063, 51.810028, 56.989384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.555229, 52.510544, 57.200588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951927, 52.467403, 57.172836>,  <62.189945, 52.441521, 57.156185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.951927, 52.467403, 57.172836>,  <61.555229, 52.510544, 57.200588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.951927, 52.467403, 57.172836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105675, 0.993809, -0.034291,
		0.072653, 0.026676, 0.997000,
		0.991743, -0.107850, -0.069384,
		62.249451, 52.435047, 57.152020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.073265, 52.923611, 57.683975>,  <61.555229, 52.510544, 57.200588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.073265, 52.923611, 57.683975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232704, 52.842743, 57.326149>,  <62.328365, 52.794224, 57.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232704, 52.842743, 57.326149>,  <62.073265, 52.923611, 57.683975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.232704, 52.842743, 57.326149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187054, 0.972819, -0.136508,
		0.897849, -0.112921, 0.425577,
		0.398594, -0.202169, -0.894567,
		62.352283, 52.782093, 57.057777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.318962, 53.667439, 57.618195>,  <62.073265, 52.923611, 57.683975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.318962, 53.667439, 57.618195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635139, 53.544788, 57.406090>,  <62.824848, 53.471199, 57.278828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635139, 53.544788, 57.406090>,  <62.318962, 53.667439, 57.618195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.635139, 53.544788, 57.406090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590451, 0.151078, 0.792807,
		-0.162982, -0.939765, 0.300464,
		0.790446, -0.306622, -0.530263,
		62.872272, 53.452801, 57.247009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.012917, 53.717926, 57.734093>,  <62.318962, 53.667439, 57.618195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.012917, 53.717926, 57.734093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.137024, 53.554428, 57.390778>,  <63.211487, 53.456329, 57.184788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.137024, 53.554428, 57.390778>,  <63.012917, 53.717926, 57.734093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.137024, 53.554428, 57.390778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915224, -0.115743, 0.385965,
		-0.257103, -0.905279, 0.338184,
		0.310264, -0.408747, -0.858290,
		63.230103, 53.431805, 57.133289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.682030, 53.314014, 57.830338>,  <63.012917, 53.717926, 57.734093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.682030, 53.314014, 57.830338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.687553, 53.320473, 57.430428>,  <63.690868, 53.324348, 57.190483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.687553, 53.320473, 57.430428>,  <63.682030, 53.314014, 57.830338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.687553, 53.320473, 57.430428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979341, -0.201953, 0.010261,
		-0.201742, -0.979262, -0.018604,
		0.013805, 0.016150, -0.999774,
		63.691696, 53.325317, 57.130497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.985527, 52.494392, 57.603634>,  <63.682030, 53.314014, 57.830338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.985527, 52.494392, 57.603634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.002892, 52.788399, 57.332970>,  <64.013313, 52.964802, 57.170570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.002892, 52.788399, 57.332970>,  <63.985527, 52.494392, 57.603634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.002892, 52.788399, 57.332970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998222, -0.004213, 0.059464,
		0.040856, -0.678038, -0.733890,
		0.043411, 0.735015, -0.676660,
		64.015915, 53.008904, 57.129971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.578453, 52.315506, 57.238823>,  <63.985527, 52.494392, 57.603634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.578453, 52.315506, 57.238823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.486618, 52.703293, 57.204353>,  <64.431519, 52.935963, 57.183674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.486618, 52.703293, 57.204353>,  <64.578453, 52.315506, 57.238823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.486618, 52.703293, 57.204353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972068, 0.232832, 0.029548,
		0.048709, -0.076980, -0.995842,
		-0.229590, 0.969465, -0.086171,
		64.417740, 52.994133, 57.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.899643, 52.682045, 56.525406>,  <64.578453, 52.315506, 57.238823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.899643, 52.682045, 56.525406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.852173, 52.839897, 56.889862>,  <64.823692, 52.934608, 57.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.852173, 52.839897, 56.889862>,  <64.899643, 52.682045, 56.525406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.852173, 52.839897, 56.889862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970364, 0.240630, 0.022174,
		-0.210498, 0.886773, -0.411491,
		-0.118680, 0.394629, 0.911144,
		64.816566, 52.958286, 57.163204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.146370, 53.352627, 56.484650>,  <64.899643, 52.682045, 56.525406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.146370, 53.352627, 56.484650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.180946, 53.216072, 56.859024>,  <65.201691, 53.134140, 57.083649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.180946, 53.216072, 56.859024>,  <65.146370, 53.352627, 56.484650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.180946, 53.216072, 56.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892230, 0.444487, 0.079732,
		-0.443232, 0.828182, 0.343017,
		0.086434, -0.341390, 0.935939,
		65.206879, 53.113655, 57.139805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.123795, 53.934334, 56.920811>,  <65.146370, 53.352627, 56.484650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.123795, 53.934334, 56.920811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.375366, 53.660694, 57.068573>,  <65.526306, 53.496510, 57.157230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.375366, 53.660694, 57.068573>,  <65.123795, 53.934334, 56.920811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.375366, 53.660694, 57.068573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750501, 0.658254, -0.058739,
		-0.202981, 0.314184, 0.927409,
		0.628925, -0.684098, 0.369408,
		65.564041, 53.455463, 57.179394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.665199, 54.359592, 57.111763>,  <65.123795, 53.934334, 56.920811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.665199, 54.359592, 57.111763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.888069, 54.030396, 57.067535>,  <66.021790, 53.832878, 57.041000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.888069, 54.030396, 57.067535>,  <65.665199, 54.359592, 57.111763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.888069, 54.030396, 57.067535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820609, 0.525336, 0.224997,
		-0.127085, -0.216098, 0.968066,
		0.557181, -0.822997, -0.110569,
		66.055222, 53.783497, 57.034363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.132057, 54.109558, 57.720085>,  <65.665199, 54.359592, 57.111763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.132057, 54.109558, 57.720085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.294434, 54.023029, 57.364914>,  <66.391861, 53.971111, 57.151810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.294434, 54.023029, 57.364914>,  <66.132057, 54.109558, 57.720085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.294434, 54.023029, 57.364914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847623, 0.452367, 0.277308,
		0.341682, -0.865199, 0.366994,
		0.405943, -0.216322, -0.887928,
		66.416214, 53.958134, 57.098537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.735893, 53.735825, 57.858528>,  <66.132057, 54.109558, 57.720085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.735893, 53.735825, 57.858528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.753143, 53.933380, 57.511147>,  <66.763496, 54.051914, 57.302719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.753143, 53.933380, 57.511147>,  <66.735893, 53.735825, 57.858528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.753143, 53.933380, 57.511147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830770, 0.465112, 0.305763,
		0.554942, -0.734673, -0.390249,
		0.043126, 0.493889, -0.868455,
		66.766083, 54.081547, 57.250610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.429695, 53.776291, 57.686493>,  <66.735893, 53.735825, 57.858528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.429695, 53.776291, 57.686493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.231850, 54.082573, 57.522026>,  <67.113144, 54.266342, 57.423347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.231850, 54.082573, 57.522026>,  <67.429695, 53.776291, 57.686493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.231850, 54.082573, 57.522026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668818, 0.637441, 0.382559,
		0.555021, -0.085777, -0.827402,
		-0.494605, 0.765709, -0.411163,
		67.083466, 54.312286, 57.398678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.853828, 54.277626, 57.332069>,  <67.429695, 53.776291, 57.686493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.853828, 54.277626, 57.332069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.562012, 54.498962, 57.492867>,  <67.386925, 54.631763, 57.589344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.562012, 54.498962, 57.492867>,  <67.853828, 54.277626, 57.332069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.562012, 54.498962, 57.492867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683486, 0.568354, 0.458062,
		0.024989, 0.608928, -0.792832,
		-0.729535, 0.553336, 0.401991,
		67.343155, 54.664963, 57.613464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.546356, 54.158604, 57.384117>,  <67.853828, 54.277626, 57.332069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.546356, 54.158604, 57.384117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.549026, 54.515518, 57.203545>,  <68.550629, 54.729668, 57.095203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.549026, 54.515518, 57.203545>,  <68.546356, 54.158604, 57.384117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.549026, 54.515518, 57.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393732, 0.412626, 0.821410,
		0.919201, -0.183223, -0.348567,
		0.006673, 0.892283, -0.451427,
		68.551025, 54.783203, 57.068115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.228119, 54.489098, 57.442013>,  <68.546356, 54.158604, 57.384117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.228119, 54.489098, 57.442013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.902664, 54.720840, 57.461395>,  <68.707390, 54.859886, 57.473022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.902664, 54.720840, 57.461395>,  <69.228119, 54.489098, 57.442013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.902664, 54.720840, 57.461395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229763, 0.243872, 0.942197,
		0.534053, 0.777735, -0.331537,
		-0.813632, 0.579358, 0.048454,
		68.658577, 54.894650, 57.475933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.276619, 55.284946, 57.523239>,  <69.228119, 54.489098, 57.442013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.276619, 55.284946, 57.523239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.949341, 55.123665, 57.687187>,  <68.752975, 55.026897, 57.785557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.949341, 55.123665, 57.687187>,  <69.276619, 55.284946, 57.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.949341, 55.123665, 57.687187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355690, 0.205122, 0.911817,
		-0.451718, 0.891826, -0.024414,
		-0.818190, -0.403201, 0.409871,
		68.703880, 55.002705, 57.810150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.877930, 55.833008, 57.938480>,  <69.276619, 55.284946, 57.523239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.877930, 55.833008, 57.938480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.875641, 55.444534, 58.033791>,  <68.874268, 55.211452, 58.090977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.875641, 55.444534, 58.033791>,  <68.877930, 55.833008, 57.938480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.875641, 55.444534, 58.033791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275399, 0.227538, 0.934014,
		-0.961313, 0.070962, 0.266161,
		-0.005718, -0.971180, 0.238278,
		68.873924, 55.153179, 58.105274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.386032, 55.697483, 58.514473>,  <68.877930, 55.833008, 57.938480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.386032, 55.697483, 58.514473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.695419, 55.445435, 58.487106>,  <68.881050, 55.294205, 58.470684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.695419, 55.445435, 58.487106>,  <68.386032, 55.697483, 58.514473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.695419, 55.445435, 58.487106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170607, 0.103014, 0.979940,
		-0.610435, -0.769631, 0.187182,
		0.773474, -0.630124, -0.068421,
		68.927460, 55.256397, 58.466579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.362747, 55.139160, 59.158356>,  <68.386032, 55.697483, 58.514473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.362747, 55.139160, 59.158356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.708031, 55.247517, 58.987953>,  <68.915199, 55.312531, 58.885712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.708031, 55.247517, 58.987953>,  <68.362747, 55.139160, 59.158356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.708031, 55.247517, 58.987953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377853, 0.212928, 0.901049,
		0.334796, -0.938764, 0.081445,
		0.863214, 0.270893, -0.426003,
		68.966995, 55.328785, 58.860153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.866112, 55.032768, 59.650578>,  <68.362747, 55.139160, 59.158356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.866112, 55.032768, 59.650578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.072105, 55.246147, 59.382187>,  <69.195702, 55.374176, 59.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.072105, 55.246147, 59.382187>,  <68.866112, 55.032768, 59.650578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.072105, 55.246147, 59.382187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589620, 0.347724, 0.728997,
		0.622201, -0.771050, -0.135459,
		0.514990, 0.533452, -0.670980,
		69.226601, 55.406181, 59.180893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.607414, 54.841431, 59.789913>,  <68.866112, 55.032768, 59.650578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.607414, 54.841431, 59.789913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.513603, 55.212822, 59.674736>,  <69.457314, 55.435658, 59.605629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.513603, 55.212822, 59.674736>,  <69.607414, 54.841431, 59.789913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.513603, 55.212822, 59.674736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495272, 0.369011, 0.786471,
		0.836480, 0.041843, -0.546397,
		-0.234535, 0.928483, -0.287946,
		69.443245, 55.491367, 59.588352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.285507, 55.142147, 59.865582>,  <69.607414, 54.841431, 59.789913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.285507, 55.142147, 59.865582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.937256, 55.336048, 59.899101>,  <69.728302, 55.452389, 59.919212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.937256, 55.336048, 59.899101>,  <70.285507, 55.142147, 59.865582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.937256, 55.336048, 59.899101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354952, 0.501066, 0.789267,
		0.340611, 0.716902, -0.608306,
		-0.870628, 0.484753, 0.083797,
		69.676071, 55.481472, 59.924240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.744072, 55.729366, 59.535736>,  <70.285507, 55.142147, 59.865582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.744072, 55.729366, 59.535736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.650345, 56.008102, 59.264587>,  <70.594109, 56.175346, 59.101898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.650345, 56.008102, 59.264587>,  <70.744072, 55.729366, 59.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.650345, 56.008102, 59.264587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904765, -0.411413, -0.110183,
		-0.355664, 0.587493, 0.726881,
		-0.234317, 0.696844, -0.677867,
		70.580048, 56.217155, 59.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.052200, 56.023460, 59.706768>,  <70.744072, 55.729366, 59.535736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.052200, 56.023460, 59.706768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.152771, 56.046761, 59.320320>,  <70.213112, 56.060741, 59.088451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.152771, 56.046761, 59.320320>,  <70.052200, 56.023460, 59.706768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.152771, 56.046761, 59.320320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745485, -0.624959, -0.231687,
		-0.617282, 0.778482, -0.113708,
		0.251427, 0.058249, -0.966122,
		70.228203, 56.064236, 59.030483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.545914, 56.029976, 60.276115>,  <70.052200, 56.023460, 59.706768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.545914, 56.029976, 60.276115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.213181, 55.817608, 60.211403>,  <70.013542, 55.690189, 60.172573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.213181, 55.817608, 60.211403>,  <70.545914, 56.029976, 60.276115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.213181, 55.817608, 60.211403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512357, -0.846621, 0.143955,
		-0.213400, 0.036855, 0.976269,
		-0.831836, -0.530918, -0.161786,
		69.963631, 55.658333, 60.162868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.135376, 56.115997, 60.655041>,  <70.545914, 56.029976, 60.276115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.135376, 56.115997, 60.655041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947891, 56.465889, 60.605804>,  <70.835396, 56.675823, 60.576263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.947891, 56.465889, 60.605804>,  <71.135376, 56.115997, 60.655041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.947891, 56.465889, 60.605804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798411, -0.359896, 0.482717,
		0.377949, 0.324532, 0.867083,
		-0.468717, 0.874731, -0.123088,
		70.807274, 56.728310, 60.568878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.376007, 56.330719, 59.989689>,  <71.135376, 56.115997, 60.655041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.376007, 56.330719, 59.989689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.497002, 56.707287, 60.049332>,  <71.569595, 56.933228, 60.085117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.497002, 56.707287, 60.049332>,  <71.376007, 56.330719, 59.989689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.497002, 56.707287, 60.049332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005189, -0.154805, 0.987931,
		0.953139, -0.299610, -0.041941,
		0.302487, 0.941419, 0.149106,
		71.587746, 56.989712, 60.094063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.891075, 56.367264, 60.516010>,  <71.376007, 56.330719, 59.989689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.891075, 56.367264, 60.516010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.693764, 56.713272, 60.479294>,  <71.575378, 56.920876, 60.457264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.693764, 56.713272, 60.479294>,  <71.891075, 56.367264, 60.516010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.693764, 56.713272, 60.479294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337069, -0.092796, 0.936896,
		0.801916, 0.493081, 0.337345,
		-0.493270, 0.865020, -0.091788,
		71.545784, 56.972778, 60.451759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.190247, 56.856091, 60.963573>,  <71.891075, 56.367264, 60.516010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.190247, 56.856091, 60.963573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803596, 56.903419, 60.872665>,  <71.571609, 56.931816, 60.818119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.803596, 56.903419, 60.872665>,  <72.190247, 56.856091, 60.963573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.803596, 56.903419, 60.872665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235930, -0.065003, 0.969594,
		0.099952, 0.990845, 0.090749,
		-0.966616, 0.118323, -0.227273,
		71.513611, 56.938915, 60.804485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.042946, 57.451614, 60.488670>,  <72.190247, 56.856091, 60.963573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.042946, 57.451614, 60.488670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.211510, 57.689674, 60.214966>,  <72.312645, 57.832512, 60.050743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.211510, 57.689674, 60.214966>,  <72.042946, 57.451614, 60.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.211510, 57.689674, 60.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708743, 0.254595, 0.657924,
		0.565774, -0.762218, -0.314522,
		0.421406, 0.595152, -0.684260,
		72.337929, 57.868221, 60.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.703911, 57.455246, 60.862789>,  <72.042946, 57.451614, 60.488670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.703911, 57.455246, 60.862789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668030, 57.759960, 60.606155>,  <72.646500, 57.942787, 60.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.668030, 57.759960, 60.606155>,  <72.703911, 57.455246, 60.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.668030, 57.759960, 60.606155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397311, 0.618077, 0.678324,
		0.913290, -0.194067, -0.358106,
		-0.089697, 0.761786, -0.641589,
		72.641121, 57.988495, 60.413677>
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
