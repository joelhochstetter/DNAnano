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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<40.555794, 33.918350, 50.699020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363621, 34.117748, 50.987656>,  <40.248318, 34.237385, 51.160839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363621, 34.117748, 50.987656>,  <40.555794, 33.918350, 50.699020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363621, 34.117748, 50.987656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819425, 0.548405, 0.166715,
		-0.312618, 0.671385, -0.671947,
		-0.480429, 0.498492, 0.721591,
		40.219494, 34.267296, 51.204132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841633, 34.522774, 50.601677>,  <40.555794, 33.918350, 50.699020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841633, 34.522774, 50.601677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671459, 34.556370, 50.962112>,  <40.569355, 34.576527, 51.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671459, 34.556370, 50.962112>,  <40.841633, 34.522774, 50.601677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671459, 34.556370, 50.962112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791964, 0.516390, 0.325783,
		-0.437949, 0.852225, -0.286205,
		-0.425434, 0.083988, 0.901084,
		40.543831, 34.581566, 51.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820751, 35.251926, 50.830788>,  <40.841633, 34.522774, 50.601677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820751, 35.251926, 50.830788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817276, 35.042030, 51.171276>,  <40.815189, 34.916092, 51.375568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817276, 35.042030, 51.171276>,  <40.820751, 35.251926, 50.830788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817276, 35.042030, 51.171276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902522, 0.362408, 0.232623,
		-0.430555, 0.770264, 0.470441,
		-0.008690, -0.524741, 0.851218,
		40.814671, 34.884609, 51.426640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899021, 35.795521, 51.343525>,  <40.820751, 35.251926, 50.830788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899021, 35.795521, 51.343525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026344, 35.445637, 51.489704>,  <41.102737, 35.235706, 51.577412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026344, 35.445637, 51.489704>,  <40.899021, 35.795521, 51.343525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026344, 35.445637, 51.489704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773605, 0.462492, 0.433170,
		-0.547919, 0.144833, 0.823898,
		0.318309, -0.874714, 0.365452,
		41.121838, 35.183224, 51.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048519, 35.894772, 52.009521>,  <40.899021, 35.795521, 51.343525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048519, 35.894772, 52.009521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267288, 35.573608, 51.914673>,  <41.398548, 35.380913, 51.857765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267288, 35.573608, 51.914673>,  <41.048519, 35.894772, 52.009521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267288, 35.573608, 51.914673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783188, 0.390618, 0.483772,
		-0.295800, -0.450291, 0.842461,
		0.546918, -0.802904, -0.237118,
		41.431362, 35.332737, 51.843536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538158, 36.001877, 52.496357>,  <41.048519, 35.894772, 52.009521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538158, 36.001877, 52.496357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689697, 35.707027, 52.272530>,  <41.780621, 35.530117, 52.138233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689697, 35.707027, 52.272530>,  <41.538158, 36.001877, 52.496357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689697, 35.707027, 52.272530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923904, 0.266198, 0.274845,
		-0.053639, -0.621114, 0.781882,
		0.378846, -0.737127, -0.559571,
		41.803352, 35.485889, 52.104660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049511, 35.565960, 52.971111>,  <41.538158, 36.001877, 52.496357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049511, 35.565960, 52.971111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138855, 35.483803, 52.589970>,  <42.192463, 35.434509, 52.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138855, 35.483803, 52.589970>,  <42.049511, 35.565960, 52.971111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138855, 35.483803, 52.589970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973574, 0.094724, 0.207800,
		0.047576, -0.974084, 0.221125,
		0.223361, -0.205395, -0.952850,
		42.205864, 35.422184, 52.304115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614372, 35.238640, 53.023777>,  <42.049511, 35.565960, 52.971111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614372, 35.238640, 53.023777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614662, 35.331509, 52.634708>,  <42.614834, 35.387230, 52.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614662, 35.331509, 52.634708>,  <42.614372, 35.238640, 53.023777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614662, 35.331509, 52.634708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998112, 0.059568, 0.014958,
		0.061414, -0.970849, -0.231691,
		0.000721, 0.232172, -0.972674,
		42.614880, 35.401161, 52.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082829, 34.776409, 52.693748>,  <42.614372, 35.238640, 53.023777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082829, 34.776409, 52.693748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064152, 35.050514, 52.403030>,  <43.052948, 35.214977, 52.228600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064152, 35.050514, 52.403030>,  <43.082829, 34.776409, 52.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064152, 35.050514, 52.403030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998569, 0.013023, -0.051868,
		-0.026078, -0.728178, -0.684892,
		-0.046689, 0.685265, -0.726796,
		43.050144, 35.256092, 52.184990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614491, 34.663532, 52.269444>,  <43.082829, 34.776409, 52.693748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614491, 34.663532, 52.269444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539055, 35.052944, 52.217789>,  <43.493793, 35.286591, 52.186794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539055, 35.052944, 52.217789>,  <43.614491, 34.663532, 52.269444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539055, 35.052944, 52.217789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979002, 0.196734, 0.053401,
		0.077393, -0.116357, -0.990188,
		-0.188590, 0.973528, -0.129139,
		43.482479, 35.345001, 52.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946209, 34.769718, 51.634922>,  <43.614491, 34.663532, 52.269444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946209, 34.769718, 51.634922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911026, 35.106949, 51.847141>,  <43.889915, 35.309288, 51.974472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911026, 35.106949, 51.847141>,  <43.946209, 34.769718, 51.634922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911026, 35.106949, 51.847141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993671, 0.036899, 0.106099,
		0.069873, 0.536521, -0.840989,
		-0.087956, 0.843080, 0.530547,
		43.884640, 35.359871, 52.006306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372021, 35.258640, 51.292957>,  <43.946209, 34.769718, 51.634922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372021, 35.258640, 51.292957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320873, 35.413548, 51.658180>,  <44.290184, 35.506493, 51.877316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320873, 35.413548, 51.658180>,  <44.372021, 35.258640, 51.292957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320873, 35.413548, 51.658180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987177, 0.138390, 0.079556,
		-0.095549, 0.911523, -0.399995,
		-0.127873, 0.387265, 0.913058,
		44.282513, 35.529728, 51.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722984, 35.932026, 51.272064>,  <44.372021, 35.258640, 51.292957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722984, 35.932026, 51.272064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691959, 35.845661, 51.661396>,  <44.673344, 35.793842, 51.894993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691959, 35.845661, 51.661396>,  <44.722984, 35.932026, 51.272064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691959, 35.845661, 51.661396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983485, 0.143558, 0.110221,
		-0.163527, 0.965801, 0.201213,
		-0.077566, -0.215914, 0.973327,
		44.668690, 35.780888, 51.953396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012135, 36.485916, 51.650688>,  <44.722984, 35.932026, 51.272064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012135, 36.485916, 51.650688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030186, 36.156967, 51.877552>,  <45.041016, 35.959599, 52.013672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030186, 36.156967, 51.877552>,  <45.012135, 36.485916, 51.650688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030186, 36.156967, 51.877552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981398, 0.142550, 0.128599,
		-0.186605, 0.550809, 0.813504,
		0.045132, -0.822368, 0.567163,
		45.043724, 35.910255, 52.047703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497448, 36.697285, 52.135376>,  <45.012135, 36.485916, 51.650688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497448, 36.697285, 52.135376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485271, 36.299892, 52.179333>,  <45.477966, 36.061459, 52.205708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485271, 36.299892, 52.179333>,  <45.497448, 36.697285, 52.135376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485271, 36.299892, 52.179333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977747, -0.006767, 0.209677,
		-0.207566, 0.113830, 0.971576,
		-0.030442, -0.993477, 0.109892,
		45.476139, 36.001850, 52.212299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884468, 36.542713, 52.782513>,  <45.497448, 36.697285, 52.135376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884468, 36.542713, 52.782513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862545, 36.195625, 52.584900>,  <45.849392, 35.987373, 52.466331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862545, 36.195625, 52.584900>,  <45.884468, 36.542713, 52.782513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862545, 36.195625, 52.584900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987551, -0.120166, 0.101501,
		-0.147440, -0.482314, 0.863501,
		-0.054808, -0.867717, -0.494027,
		45.846104, 35.935310, 52.436691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401642, 36.186348, 53.079597>,  <45.884468, 36.542713, 52.782513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401642, 36.186348, 53.079597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323418, 35.987110, 52.741684>,  <46.276485, 35.867569, 52.538937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323418, 35.987110, 52.741684>,  <46.401642, 36.186348, 53.079597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323418, 35.987110, 52.741684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980525, -0.115224, -0.159043,
		-0.018121, -0.859434, 0.510926,
		-0.195557, -0.498093, -0.844784,
		46.264751, 35.837681, 52.488247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892048, 35.652306, 53.134048>,  <46.401642, 36.186348, 53.079597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892048, 35.652306, 53.134048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.770050, 35.620804, 52.754410>,  <46.696850, 35.601902, 52.526627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.770050, 35.620804, 52.754410>,  <46.892048, 35.652306, 53.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.770050, 35.620804, 52.754410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928987, -0.244003, -0.278290,
		-0.209666, -0.966572, 0.147578,
		-0.304996, -0.078750, -0.949092,
		46.678551, 35.597179, 52.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125301, 35.044796, 52.907314>,  <46.892048, 35.652306, 53.134048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125301, 35.044796, 52.907314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074451, 35.260918, 52.574589>,  <47.043941, 35.390591, 52.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074451, 35.260918, 52.574589>,  <47.125301, 35.044796, 52.907314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074451, 35.260918, 52.574589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928278, -0.230674, -0.291702,
		-0.349485, -0.809236, -0.472226,
		-0.127126, 0.540302, -0.831813,
		47.036312, 35.423008, 52.325047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388584, 34.677254, 52.317806>,  <47.125301, 35.044796, 52.907314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388584, 34.677254, 52.317806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390980, 35.056870, 52.191765>,  <47.392418, 35.284637, 52.116138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390980, 35.056870, 52.191765>,  <47.388584, 34.677254, 52.317806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390980, 35.056870, 52.191765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918976, -0.129463, -0.372455,
		-0.394268, -0.287343, -0.872919,
		0.005988, 0.949038, -0.315104,
		47.392776, 35.341579, 52.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644089, 34.677494, 51.597462>,  <47.388584, 34.677254, 52.317806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644089, 34.677494, 51.597462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720692, 35.036446, 51.756474>,  <47.766651, 35.251816, 51.851883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720692, 35.036446, 51.756474>,  <47.644089, 34.677494, 51.597462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720692, 35.036446, 51.756474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922185, -0.025854, -0.385884,
		-0.336008, 0.440496, -0.832503,
		0.191504, 0.897382, 0.397532,
		47.778141, 35.305660, 51.875732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.161507, 34.687035, 51.787476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.173695, 34.846798, 52.153984>,  <24.181007, 34.942657, 52.373890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.173695, 34.846798, 52.153984>,  <24.161507, 34.687035, 51.787476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173695, 34.846798, 52.153984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863184, 0.451684, -0.225599,
		-0.503969, 0.797782, -0.330998,
		0.030472, 0.399407, 0.916267,
		24.182837, 34.966621, 52.428864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.327383, 35.315296, 51.690712>,  <24.161507, 34.687035, 51.787476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.327383, 35.315296, 51.690712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.432013, 35.252766, 52.071690>,  <24.494791, 35.215248, 52.300274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.432013, 35.252766, 52.071690>,  <24.327383, 35.315296, 51.690712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432013, 35.252766, 52.071690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897009, 0.403659, -0.180096,
		-0.356307, 0.901455, 0.245813,
		0.261574, -0.156327, 0.952440,
		24.510485, 35.205868, 52.357422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766508, 35.885147, 51.801998>,  <24.327383, 35.315296, 51.690712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766508, 35.885147, 51.801998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.846313, 35.597565, 52.068317>,  <24.894197, 35.425014, 52.228111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.846313, 35.597565, 52.068317>,  <24.766508, 35.885147, 51.801998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846313, 35.597565, 52.068317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978833, 0.114590, -0.169576,
		0.045624, 0.685542, 0.726603,
		0.199513, -0.718959, 0.665802,
		24.906168, 35.381878, 52.268059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321098, 36.146297, 52.325157>,  <24.766508, 35.885147, 51.801998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321098, 36.146297, 52.325157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.353336, 35.748493, 52.351871>,  <25.372679, 35.509811, 52.367901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.353336, 35.748493, 52.351871>,  <25.321098, 36.146297, 52.325157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353336, 35.748493, 52.351871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995870, 0.083154, 0.036445,
		-0.041799, 0.063577, 0.997101,
		0.080596, -0.994507, 0.066790,
		25.377516, 35.450142, 52.371910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914993, 36.102917, 52.702496>,  <25.321098, 36.146297, 52.325157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914993, 36.102917, 52.702496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.836237, 35.742348, 52.548260>,  <25.788982, 35.526009, 52.455719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.836237, 35.742348, 52.548260>,  <25.914993, 36.102917, 52.702496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836237, 35.742348, 52.548260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976180, -0.143678, -0.162572,
		0.091145, -0.408412, 0.908236,
		-0.196890, -0.901419, -0.385588,
		25.777170, 35.471924, 52.432583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450495, 35.718769, 53.001320>,  <25.914993, 36.102917, 52.702496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450495, 35.718769, 53.001320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.322817, 35.557907, 52.658070>,  <26.246210, 35.461391, 52.452118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.322817, 35.557907, 52.658070>,  <26.450495, 35.718769, 53.001320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322817, 35.557907, 52.658070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944500, -0.209221, -0.253271,
		-0.077684, -0.891346, 0.446618,
		-0.319194, -0.402156, -0.858129,
		26.227058, 35.437260, 52.400631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912642, 35.121784, 52.893112>,  <26.450495, 35.718769, 53.001320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912642, 35.121784, 52.893112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.743256, 35.179996, 52.535454>,  <26.641624, 35.214924, 52.320858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.743256, 35.179996, 52.535454>,  <26.912642, 35.121784, 52.893112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743256, 35.179996, 52.535454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894976, -0.085697, -0.437805,
		-0.140342, -0.985635, -0.093962,
		-0.423463, 0.145536, -0.894147,
		26.616217, 35.223656, 52.267208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142782, 34.594452, 52.450943>,  <26.912642, 35.121784, 52.893112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142782, 34.594452, 52.450943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.043692, 34.855854, 52.164848>,  <26.984238, 35.012695, 51.993191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.043692, 34.855854, 52.164848>,  <27.142782, 34.594452, 52.450943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043692, 34.855854, 52.164848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892015, -0.134244, -0.431611,
		-0.378076, -0.744922, -0.549681,
		-0.247725, 0.653506, -0.715236,
		26.969374, 35.051907, 51.950279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368698, 34.239346, 51.706165>,  <27.142782, 34.594452, 52.450943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368698, 34.239346, 51.706165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.337189, 34.629242, 51.622578>,  <27.318283, 34.863182, 51.572426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.337189, 34.629242, 51.622578>,  <27.368698, 34.239346, 51.706165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337189, 34.629242, 51.622578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804433, -0.061657, -0.590835,
		-0.588797, -0.214648, -0.779259,
		-0.078775, 0.974743, -0.208974,
		27.313557, 34.921665, 51.559887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550091, 34.243099, 51.019600>,  <27.368698, 34.239346, 51.706165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550091, 34.243099, 51.019600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.601093, 34.620140, 51.143044>,  <27.631695, 34.846363, 51.217110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.601093, 34.620140, 51.143044>,  <27.550091, 34.243099, 51.019600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601093, 34.620140, 51.143044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853840, 0.054008, -0.517727,
		-0.504678, 0.329520, -0.797945,
		0.127506, 0.942603, 0.308614,
		27.639345, 34.902920, 51.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648783, 34.687553, 50.359585>,  <27.550091, 34.243099, 51.019600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648783, 34.687553, 50.359585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.825668, 34.844845, 50.682030>,  <27.931801, 34.939220, 50.875496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.825668, 34.844845, 50.682030>,  <27.648783, 34.687553, 50.359585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825668, 34.844845, 50.682030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875681, 0.005091, -0.482864,
		-0.193979, 0.919427, -0.342090,
		0.442216, 0.393227, 0.806112,
		27.958334, 34.962814, 50.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975430, 35.291721, 50.126503>,  <27.648783, 34.687553, 50.359585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975430, 35.291721, 50.126503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.142866, 35.178600, 50.471710>,  <28.243328, 35.110729, 50.678837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.142866, 35.178600, 50.471710>,  <27.975430, 35.291721, 50.126503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142866, 35.178600, 50.471710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891304, -0.054387, -0.450132,
		0.174234, 0.957636, 0.229294,
		0.418592, -0.282800, 0.863021,
		28.268444, 35.093761, 50.730618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716375, 35.555550, 50.013569>,  <27.975430, 35.291721, 50.126503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716375, 35.555550, 50.013569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.731895, 35.348770, 50.355621>,  <28.741207, 35.224701, 50.560852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.731895, 35.348770, 50.355621>,  <28.716375, 35.555550, 50.013569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731895, 35.348770, 50.355621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999158, 0.031501, -0.026293,
		-0.013346, 0.855434, 0.517740,
		0.038801, -0.516953, 0.855134,
		28.743536, 35.193684, 50.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109423, 35.990143, 50.530739>,  <28.716375, 35.555550, 50.013569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109423, 35.990143, 50.530739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121269, 35.593395, 50.580235>,  <29.128378, 35.355347, 50.609932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.121269, 35.593395, 50.580235>,  <29.109423, 35.990143, 50.530739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121269, 35.593395, 50.580235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999552, 0.029937, 0.000734,
		-0.004433, 0.123667, 0.992314,
		0.029616, -0.991872, 0.123744,
		29.130154, 35.295834, 50.617359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614368, 35.920788, 50.998119>,  <29.109423, 35.990143, 50.530739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614368, 35.920788, 50.998119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.577749, 35.554245, 50.842213>,  <29.555777, 35.334320, 50.748669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.577749, 35.554245, 50.842213>,  <29.614368, 35.920788, 50.998119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577749, 35.554245, 50.842213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980550, -0.014717, -0.195715,
		0.173608, -0.400100, 0.899878,
		-0.091549, -0.916353, -0.389764,
		29.550285, 35.279339, 50.725285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134117, 35.584385, 51.266674>,  <29.614368, 35.920788, 50.998119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134117, 35.584385, 51.266674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038836, 35.338085, 50.966244>,  <29.981667, 35.190308, 50.785984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.038836, 35.338085, 50.966244>,  <30.134117, 35.584385, 51.266674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038836, 35.338085, 50.966244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949676, -0.309636, -0.047346,
		-0.203407, -0.724558, 0.658515,
		-0.238205, -0.615745, -0.751077,
		29.967375, 35.153362, 50.740921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667078, 34.995014, 51.356609>,  <30.134117, 35.584385, 51.266674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667078, 34.995014, 51.356609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.533796, 34.951221, 50.982018>,  <30.453827, 34.924946, 50.757263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.533796, 34.951221, 50.982018>,  <30.667078, 34.995014, 51.356609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533796, 34.951221, 50.982018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932566, -0.184597, -0.310234,
		-0.138905, -0.976697, 0.163612,
		-0.333207, -0.109486, -0.936476,
		30.433834, 34.918377, 50.701077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993599, 34.374489, 51.116268>,  <30.667078, 34.995014, 51.356609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993599, 34.374489, 51.116268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.913034, 34.602997, 50.798004>,  <30.864697, 34.740101, 50.607044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.913034, 34.602997, 50.798004>,  <30.993599, 34.374489, 51.116268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913034, 34.602997, 50.798004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899056, -0.214579, -0.381647,
		-0.388757, -0.792214, -0.470388,
		-0.201411, 0.571273, -0.795664,
		30.852612, 34.774380, 50.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369196, 34.086819, 50.518772>,  <30.993599, 34.374489, 51.116268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369196, 34.086819, 50.518772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296564, 34.455719, 50.382252>,  <31.252985, 34.677059, 50.300339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.296564, 34.455719, 50.382252>,  <31.369196, 34.086819, 50.518772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296564, 34.455719, 50.382252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912581, 0.028730, -0.407885,
		-0.366366, -0.385528, -0.846844,
		-0.181581, 0.922249, -0.341299,
		31.242090, 34.732395, 50.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545591, 33.938431, 49.861580>,  <31.369196, 34.086819, 50.518772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545591, 33.938431, 49.861580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.565552, 34.316505, 49.990654>,  <31.577528, 34.543350, 50.068096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.565552, 34.316505, 49.990654>,  <31.545591, 33.938431, 49.861580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565552, 34.316505, 49.990654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998704, -0.044002, -0.025558,
		-0.009959, 0.323540, -0.946162,
		0.049903, 0.945191, 0.322683,
		31.580523, 34.600063, 50.087460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826115, 34.271732, 49.299637>,  <31.545591, 33.938431, 49.861580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826115, 34.271732, 49.299637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915232, 34.488029, 49.624096>,  <31.968702, 34.617805, 49.818771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.915232, 34.488029, 49.624096>,  <31.826115, 34.271732, 49.299637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915232, 34.488029, 49.624096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974725, -0.109455, -0.194756,
		-0.016528, 0.834039, -0.551458,
		0.222794, 0.540739, 0.811150,
		31.982069, 34.650249, 49.867439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.623808, 34.431740, 34.982208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.361921, 34.713440, 34.872391>,  <24.204790, 34.882462, 34.806499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.361921, 34.713440, 34.872391>,  <24.623808, 34.431740, 34.982208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361921, 34.713440, 34.872391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200885, 0.512266, 0.835002,
		0.728692, 0.491539, -0.476863,
		-0.654716, 0.704254, -0.274541,
		24.165506, 34.924717, 34.790028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880047, 35.124016, 35.045074>,  <24.623808, 34.431740, 34.982208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880047, 35.124016, 35.045074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.481953, 35.110409, 35.081627>,  <24.243095, 35.102245, 35.103558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.481953, 35.110409, 35.081627>,  <24.880047, 35.124016, 35.045074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481953, 35.110409, 35.081627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067763, 0.432532, 0.899069,
		-0.070108, 0.900977, -0.428166,
		-0.995235, -0.034018, 0.091377,
		24.183382, 35.100204, 35.109039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320198, 34.959660, 35.659817>,  <24.880047, 35.124016, 35.045074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320198, 34.959660, 35.659817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.626554, 35.200451, 35.750179>,  <24.810369, 35.344925, 35.804398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.626554, 35.200451, 35.750179>,  <24.320198, 34.959660, 35.659817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626554, 35.200451, 35.750179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264751, -0.024925, 0.963995,
		0.585932, -0.798125, 0.140284,
		0.765892, 0.601975, 0.225909,
		24.856321, 35.381042, 35.817951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744516, 34.721531, 36.221092>,  <24.320198, 34.959660, 35.659817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744516, 34.721531, 36.221092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764904, 35.120892, 36.230797>,  <24.777136, 35.360508, 36.236618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764904, 35.120892, 36.230797>,  <24.744516, 34.721531, 36.221092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764904, 35.120892, 36.230797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184634, -0.014450, 0.982701,
		0.981485, -0.054564, 0.183603,
		0.050967, 0.998406, 0.024257,
		24.780193, 35.420414, 36.238075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056213, 34.687313, 36.956020>,  <24.744516, 34.721531, 36.221092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056213, 34.687313, 36.956020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.279898, 34.370495, 36.858086>,  <25.414108, 34.180405, 36.799324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.279898, 34.370495, 36.858086>,  <25.056213, 34.687313, 36.956020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279898, 34.370495, 36.858086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702487, 0.295893, 0.647270,
		-0.440222, -0.533956, 0.721869,
		0.559210, -0.792046, -0.244839,
		25.447660, 34.132881, 36.784634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234200, 34.179344, 37.589592>,  <25.056213, 34.687313, 36.956020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234200, 34.179344, 37.589592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.494083, 34.228424, 37.289505>,  <25.650013, 34.257870, 37.109451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.494083, 34.228424, 37.289505>,  <25.234200, 34.179344, 37.589592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494083, 34.228424, 37.289505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714371, 0.238877, 0.657733,
		0.259915, -0.963266, 0.067546,
		0.649707, 0.122702, -0.750217,
		25.688995, 34.265232, 37.064442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904385, 33.900074, 37.702408>,  <25.234200, 34.179344, 37.589592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904385, 33.900074, 37.702408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.936859, 34.216305, 37.459625>,  <25.956343, 34.406044, 37.313953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.936859, 34.216305, 37.459625>,  <25.904385, 33.900074, 37.702408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936859, 34.216305, 37.459625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693145, 0.392812, 0.604357,
		0.716211, -0.469776, -0.516093,
		0.081185, 0.790575, -0.606960,
		25.961214, 34.453476, 37.277538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636068, 34.101376, 37.602997>,  <25.904385, 33.900074, 37.702408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636068, 34.101376, 37.602997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.412699, 34.426323, 37.535812>,  <26.278677, 34.621292, 37.495502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.412699, 34.426323, 37.535812>,  <26.636068, 34.101376, 37.602997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412699, 34.426323, 37.535812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629233, 0.546748, 0.552388,
		0.540580, 0.202778, -0.816489,
		-0.558426, 0.812372, -0.167966,
		26.245171, 34.670036, 37.485424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004026, 34.624462, 37.718529>,  <26.636068, 34.101376, 37.602997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004026, 34.624462, 37.718529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.658617, 34.818108, 37.775036>,  <26.451370, 34.934296, 37.808941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.658617, 34.818108, 37.775036>,  <27.004026, 34.624462, 37.718529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658617, 34.818108, 37.775036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408046, 0.506114, 0.759833,
		0.296350, 0.713779, -0.634584,
		-0.863525, 0.484116, 0.141267,
		26.399559, 34.963341, 37.817417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105019, 35.357582, 37.736614>,  <27.004026, 34.624462, 37.718529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105019, 35.357582, 37.736614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.755743, 35.324066, 37.928665>,  <26.546179, 35.303955, 38.043896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.755743, 35.324066, 37.928665>,  <27.105019, 35.357582, 37.736614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755743, 35.324066, 37.928665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361839, 0.548526, 0.753785,
		-0.326523, 0.831924, -0.448648,
		-0.873187, -0.083790, 0.480129,
		26.493788, 35.298931, 38.072704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689211, 35.958763, 37.755291>,  <27.105019, 35.357582, 37.736614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689211, 35.958763, 37.755291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686514, 35.722385, 38.077965>,  <26.684895, 35.580559, 38.271568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.686514, 35.722385, 38.077965>,  <26.689211, 35.958763, 37.755291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686514, 35.722385, 38.077965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667329, 0.598130, 0.443749,
		-0.744733, 0.541315, 0.390322,
		-0.006744, -0.590947, 0.806682,
		26.684490, 35.545101, 38.319969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613430, 36.353096, 38.278576>,  <26.689211, 35.958763, 37.755291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613430, 36.353096, 38.278576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.824547, 36.029938, 38.383450>,  <26.951218, 35.836044, 38.446373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.824547, 36.029938, 38.383450>,  <26.613430, 36.353096, 38.278576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824547, 36.029938, 38.383450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736520, 0.589064, 0.332478,
		-0.423051, 0.017625, 0.905935,
		0.527793, -0.807894, 0.262185,
		26.982885, 35.787571, 38.462105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821398, 36.350750, 39.013359>,  <26.613430, 36.353096, 38.278576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821398, 36.350750, 39.013359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.051512, 36.192768, 38.726849>,  <27.189581, 36.097977, 38.554943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.051512, 36.192768, 38.726849>,  <26.821398, 36.350750, 39.013359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051512, 36.192768, 38.726849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725338, 0.651082, 0.223554,
		0.378063, -0.648152, 0.661035,
		0.575285, -0.394957, -0.716279,
		27.224098, 36.074280, 38.511963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542402, 36.315434, 39.302429>,  <26.821398, 36.350750, 39.013359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542402, 36.315434, 39.302429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532883, 36.317230, 38.902546>,  <27.527170, 36.318310, 38.662617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532883, 36.317230, 38.902546>,  <27.542402, 36.315434, 39.302429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532883, 36.317230, 38.902546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557144, 0.830362, -0.009528,
		0.830075, -0.557207, -0.022265,
		-0.023798, 0.004496, -0.999707,
		27.525743, 36.318581, 38.602634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166670, 36.147850, 39.007877>,  <27.542402, 36.315434, 39.302429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166670, 36.147850, 39.007877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980148, 36.389828, 38.749695>,  <27.868237, 36.535015, 38.594788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.980148, 36.389828, 38.749695>,  <28.166670, 36.147850, 39.007877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980148, 36.389828, 38.749695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628761, 0.739892, 0.239209,
		0.622273, -0.294292, -0.725375,
		-0.466302, 0.604940, -0.645454,
		27.840258, 36.571308, 38.556057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853201, 35.735977, 39.596066>,  <28.166670, 36.147850, 39.007877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853201, 35.735977, 39.596066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.883234, 35.371048, 39.757076>,  <27.901253, 35.152092, 39.853683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.883234, 35.371048, 39.757076>,  <27.853201, 35.735977, 39.596066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883234, 35.371048, 39.757076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981879, -0.002800, -0.189489,
		0.174002, 0.409461, 0.895581,
		0.075081, -0.912323, 0.402529,
		27.905758, 35.097351, 39.877834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603365, 35.532192, 39.525936>,  <27.853201, 35.735977, 39.596066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603365, 35.532192, 39.525936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468552, 35.587986, 39.898376>,  <28.387663, 35.621460, 40.121841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.468552, 35.587986, 39.898376>,  <28.603365, 35.532192, 39.525936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468552, 35.587986, 39.898376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469802, -0.832125, 0.294709,
		0.815901, 0.536761, 0.214927,
		-0.337035, 0.139480, 0.931103,
		28.367441, 35.629829, 40.177708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199686, 35.679207, 39.955925>,  <28.603365, 35.532192, 39.525936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199686, 35.679207, 39.955925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900082, 35.531658, 40.176075>,  <28.720318, 35.443130, 40.308167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900082, 35.531658, 40.176075>,  <29.199686, 35.679207, 39.955925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900082, 35.531658, 40.176075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635112, -0.636331, 0.437853,
		0.188713, 0.677510, 0.710893,
		-0.749013, -0.368868, 0.550378,
		28.675377, 35.420998, 40.341187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408699, 35.709763, 40.741726>,  <29.199686, 35.679207, 39.955925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408699, 35.709763, 40.741726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134254, 35.423019, 40.692142>,  <28.969587, 35.250973, 40.662392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134254, 35.423019, 40.692142>,  <29.408699, 35.709763, 40.741726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134254, 35.423019, 40.692142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598970, -0.653342, 0.463011,
		-0.412898, 0.243432, 0.877642,
		-0.686113, -0.716857, -0.123955,
		28.928421, 35.207962, 40.654957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906082, 36.206436, 41.134888>,  <29.408699, 35.709763, 40.741726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906082, 36.206436, 41.134888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778519, 36.577320, 41.213463>,  <28.701981, 36.799850, 41.260609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778519, 36.577320, 41.213463>,  <28.906082, 36.206436, 41.134888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778519, 36.577320, 41.213463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613903, 0.044173, 0.788145,
		0.722095, 0.371938, -0.583302,
		-0.318907, 0.927206, 0.196437,
		28.682846, 36.855480, 41.272392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457035, 36.734432, 41.103561>,  <28.906082, 36.206436, 41.134888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457035, 36.734432, 41.103561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160141, 36.838940, 41.350403>,  <28.982004, 36.901646, 41.498508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.160141, 36.838940, 41.350403>,  <29.457035, 36.734432, 41.103561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160141, 36.838940, 41.350403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649299, 0.052524, 0.758717,
		0.165818, 0.963835, -0.208628,
		-0.742236, 0.261271, 0.617108,
		28.937469, 36.917320, 41.535534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537355, 37.477631, 41.414810>,  <29.457035, 36.734432, 41.103561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537355, 37.477631, 41.414810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363922, 37.209843, 41.656078>,  <29.259863, 37.049171, 41.800838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363922, 37.209843, 41.656078>,  <29.537355, 37.477631, 41.414810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363922, 37.209843, 41.656078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725707, 0.137384, 0.674148,
		-0.534187, 0.730026, 0.426271,
		-0.433582, -0.669469, 0.603173,
		29.233847, 37.009003, 41.837029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513527, 37.709908, 42.083591>,  <29.537355, 37.477631, 41.414810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513527, 37.709908, 42.083591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545208, 37.313698, 42.038719>,  <29.564217, 37.075970, 42.011795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545208, 37.313698, 42.038719>,  <29.513527, 37.709908, 42.083591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545208, 37.313698, 42.038719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800464, -0.003874, 0.599369,
		-0.594125, -0.137266, 0.792574,
		0.079202, -0.990527, -0.112178,
		29.568968, 37.016541, 42.005066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526951, 37.430679, 42.770565>,  <29.513527, 37.709908, 42.083591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526951, 37.430679, 42.770565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685041, 37.162838, 42.519035>,  <29.779896, 37.002132, 42.368118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685041, 37.162838, 42.519035>,  <29.526951, 37.430679, 42.770565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685041, 37.162838, 42.519035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720249, -0.198977, 0.664567,
		-0.570119, -0.715569, 0.403640,
		0.395228, -0.669604, -0.628829,
		29.803610, 36.961956, 42.330387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100067, 37.611942, 43.254112>,  <29.526951, 37.430679, 42.770565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100067, 37.611942, 43.254112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.123993, 37.225117, 43.353073>,  <30.138348, 36.993023, 43.412449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.123993, 37.225117, 43.353073>,  <30.100067, 37.611942, 43.254112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123993, 37.225117, 43.353073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940820, 0.137443, 0.309786,
		-0.333587, 0.214232, 0.918055,
		0.059814, -0.967065, 0.247403,
		30.141937, 36.934998, 43.427296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332241, 37.517799, 44.027992>,  <30.100067, 37.611942, 43.254112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332241, 37.517799, 44.027992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413754, 37.201950, 43.796490>,  <30.462660, 37.012440, 43.657589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413754, 37.201950, 43.796490>,  <30.332241, 37.517799, 44.027992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413754, 37.201950, 43.796490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919530, -0.048556, 0.390009,
		-0.336064, -0.611663, 0.716191,
		0.203779, -0.789627, -0.578760,
		30.474888, 36.965061, 43.622860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666924, 37.024601, 44.469177>,  <30.332241, 37.517799, 44.027992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666924, 37.024601, 44.469177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765396, 36.983620, 44.083660>,  <30.824480, 36.959030, 43.852348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.765396, 36.983620, 44.083660>,  <30.666924, 37.024601, 44.469177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765396, 36.983620, 44.083660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961886, 0.147953, 0.229968,
		0.119037, -0.983674, 0.134968,
		0.246182, -0.102450, -0.963794,
		30.839251, 36.952885, 43.794521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179529, 36.541626, 44.353485>,  <30.666924, 37.024601, 44.469177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179529, 36.541626, 44.353485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220552, 36.828331, 44.077591>,  <31.245167, 37.000355, 43.912056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220552, 36.828331, 44.077591>,  <31.179529, 36.541626, 44.353485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220552, 36.828331, 44.077591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902443, 0.224626, 0.367613,
		0.418424, -0.660147, -0.623801,
		0.102557, 0.716763, -0.689734,
		31.251320, 37.043362, 43.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847849, 35.966675, 44.379898>,  <31.179529, 36.541626, 44.353485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847849, 35.966675, 44.379898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227245, 35.840443, 44.368805>,  <31.454884, 35.764702, 44.362148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.227245, 35.840443, 44.368805>,  <30.847849, 35.966675, 44.379898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227245, 35.840443, 44.368805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104700, 0.229651, 0.967625,
		-0.298996, -0.920689, 0.250864,
		0.948493, -0.315581, -0.027731,
		31.511793, 35.745770, 44.360485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921724, 35.685326, 45.033455>,  <30.847849, 35.966675, 44.379898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921724, 35.685326, 45.033455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276896, 35.800869, 44.890266>,  <31.489998, 35.870193, 44.804352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276896, 35.800869, 44.890266>,  <30.921724, 35.685326, 45.033455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276896, 35.800869, 44.890266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276548, 0.286640, 0.917256,
		0.367568, -0.913454, 0.174632,
		0.887928, 0.288860, -0.357973,
		31.543274, 35.887527, 44.782875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465218, 35.502747, 45.439255>,  <30.921724, 35.685326, 45.033455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465218, 35.502747, 45.439255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647755, 35.831890, 45.303814>,  <31.757277, 36.029377, 45.222549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647755, 35.831890, 45.303814>,  <31.465218, 35.502747, 45.439255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647755, 35.831890, 45.303814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375746, 0.166732, 0.911600,
		0.806576, -0.543230, -0.233100,
		0.456344, 0.822862, -0.338598,
		31.784658, 36.078747, 45.202236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100353, 35.491112, 45.749496>,  <31.465218, 35.502747, 45.439255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100353, 35.491112, 45.749496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034157, 35.867737, 45.632145>,  <31.994438, 36.093712, 45.561733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034157, 35.867737, 45.632145>,  <32.100353, 35.491112, 45.749496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034157, 35.867737, 45.632145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397747, 0.335939, 0.853782,
		0.902447, 0.024603, -0.430098,
		-0.165492, 0.941563, -0.293381,
		31.984509, 36.150204, 45.544132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684818, 35.763474, 45.868191>,  <32.100353, 35.491112, 45.749496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684818, 35.763474, 45.868191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445122, 36.082756, 45.843628>,  <32.301304, 36.274326, 45.828892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445122, 36.082756, 45.843628>,  <32.684818, 35.763474, 45.868191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445122, 36.082756, 45.843628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285226, 0.284534, 0.915252,
		0.748035, 0.530942, -0.398175,
		-0.599240, 0.798211, -0.061403,
		32.265350, 36.322220, 45.825207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981731, 36.442039, 45.980782>,  <32.684818, 35.763474, 45.868191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981731, 36.442039, 45.980782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598125, 36.510567, 46.071060>,  <32.367962, 36.551682, 46.125229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598125, 36.510567, 46.071060>,  <32.981731, 36.442039, 45.980782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598125, 36.510567, 46.071060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282714, 0.524962, 0.802800,
		0.019051, 0.833706, -0.551880,
		-0.959015, 0.171318, 0.225699,
		32.310421, 36.561962, 46.138771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997501, 37.121822, 46.270706>,  <32.981731, 36.442039, 45.980782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997501, 37.121822, 46.270706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643780, 36.965057, 46.372215>,  <32.431545, 36.870998, 46.433121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643780, 36.965057, 46.372215>,  <32.997501, 37.121822, 46.270706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643780, 36.965057, 46.372215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001873, 0.540543, 0.841314,
		-0.466901, 0.744456, -0.477273,
		-0.884308, -0.391917, 0.253774,
		32.378487, 36.847481, 46.448349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551548, 37.688076, 46.534595>,  <32.997501, 37.121822, 46.270706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551548, 37.688076, 46.534595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470200, 37.325672, 46.683071>,  <32.421391, 37.108231, 46.772156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470200, 37.325672, 46.683071>,  <32.551548, 37.688076, 46.534595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470200, 37.325672, 46.683071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108967, 0.355809, 0.928184,
		-0.973018, 0.229216, 0.026363,
		-0.203375, -0.906013, 0.371186,
		32.409187, 37.053867, 46.794426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093819, 37.728523, 47.090519>,  <32.551548, 37.688076, 46.534595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093819, 37.728523, 47.090519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283955, 37.383362, 47.159161>,  <32.398037, 37.176266, 47.200344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283955, 37.383362, 47.159161>,  <32.093819, 37.728523, 47.090519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283955, 37.383362, 47.159161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148883, 0.271128, 0.950959,
		-0.867113, -0.426481, 0.257350,
		0.475341, -0.862904, 0.171603,
		32.426556, 37.124489, 47.210640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807917, 37.314552, 47.649429>,  <32.093819, 37.728523, 47.090519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807917, 37.314552, 47.649429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183651, 37.177536, 47.642319>,  <32.409092, 37.095325, 47.638050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183651, 37.177536, 47.642319>,  <31.807917, 37.314552, 47.649429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183651, 37.177536, 47.642319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142524, 0.342639, 0.928593,
		-0.311989, -0.874794, 0.370673,
		0.939335, -0.342541, -0.017780,
		32.465450, 37.074776, 47.636986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929192, 36.959198, 48.281078>,  <31.807917, 37.314552, 47.649429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929192, 36.959198, 48.281078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276932, 37.094669, 48.137119>,  <32.485577, 37.175953, 48.050743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276932, 37.094669, 48.137119>,  <31.929192, 36.959198, 48.281078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276932, 37.094669, 48.137119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270994, 0.282306, 0.920253,
		0.413269, -0.897554, 0.153644,
		0.869351, 0.338675, -0.359900,
		32.537739, 37.196270, 48.029148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461372, 36.800941, 48.717964>,  <31.929192, 36.959198, 48.281078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461372, 36.800941, 48.717964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606461, 37.099358, 48.494587>,  <32.693512, 37.278408, 48.360561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.606461, 37.099358, 48.494587>,  <32.461372, 36.800941, 48.717964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606461, 37.099358, 48.494587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432220, 0.396219, 0.810059,
		0.825602, -0.535195, -0.178737,
		0.362721, 0.746041, -0.558441,
		32.715279, 37.323170, 48.327053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702679, 36.044510, 48.950241>,  <32.461372, 36.800941, 48.717964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702679, 36.044510, 48.950241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718758, 35.757439, 49.228329>,  <32.728405, 35.585197, 49.395180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.718758, 35.757439, 49.228329>,  <32.702679, 36.044510, 48.950241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718758, 35.757439, 49.228329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997305, -0.013922, -0.072035,
		0.061377, 0.696237, 0.715183,
		0.040196, -0.717677, 0.695215,
		32.730816, 35.542137, 49.436893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201309, 36.294910, 49.558422>,  <32.702679, 36.044510, 48.950241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201309, 36.294910, 49.558422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164173, 35.897243, 49.536469>,  <33.141891, 35.658642, 49.523296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164173, 35.897243, 49.536469>,  <33.201309, 36.294910, 49.558422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164173, 35.897243, 49.536469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988972, -0.085691, -0.120796,
		0.115388, -0.065492, 0.991159,
		-0.092844, -0.994167, -0.054882,
		33.136318, 35.598995, 49.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708206, 36.051247, 50.110970>,  <33.201309, 36.294910, 49.558422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708206, 36.051247, 50.110970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634876, 35.772617, 49.833500>,  <33.590878, 35.605438, 49.667019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634876, 35.772617, 49.833500>,  <33.708206, 36.051247, 50.110970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634876, 35.772617, 49.833500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980093, -0.184219, -0.074036,
		-0.076216, -0.693434, 0.716478,
		-0.183328, -0.696572, -0.693670,
		33.579876, 35.563644, 49.625401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155643, 35.491631, 50.285519>,  <33.708206, 36.051247, 50.110970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155643, 35.491631, 50.285519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039753, 35.382671, 49.918507>,  <33.970219, 35.317295, 49.698299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.039753, 35.382671, 49.918507>,  <34.155643, 35.491631, 50.285519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039753, 35.382671, 49.918507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896638, -0.412595, -0.160640,
		-0.334808, -0.869231, 0.363787,
		-0.289730, -0.272402, -0.917526,
		33.952835, 35.300949, 49.643250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512638, 34.937325, 50.107876>,  <34.155643, 35.491631, 50.285519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512638, 34.937325, 50.107876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403954, 35.044781, 49.738228>,  <34.338741, 35.109257, 49.516438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.403954, 35.044781, 49.738228>,  <34.512638, 34.937325, 50.107876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403954, 35.044781, 49.738228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898482, -0.273247, -0.343607,
		-0.344822, -0.923670, -0.167127,
		-0.271713, 0.268643, -0.924123,
		34.322441, 35.125374, 49.460991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590431, 34.309502, 49.672058>,  <34.512638, 34.937325, 50.107876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590431, 34.309502, 49.672058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616337, 34.649372, 49.462730>,  <34.631882, 34.853294, 49.337135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616337, 34.649372, 49.462730>,  <34.590431, 34.309502, 49.672058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616337, 34.649372, 49.462730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862367, -0.311532, -0.399087,
		-0.502124, -0.425447, -0.752905,
		0.064763, 0.849672, -0.523319,
		34.635765, 34.904274, 49.305733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993107, 34.124424, 49.153008>,  <34.590431, 34.309502, 49.672058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993107, 34.124424, 49.153008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000980, 34.521393, 49.104504>,  <35.005707, 34.759575, 49.075401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000980, 34.521393, 49.104504>,  <34.993107, 34.124424, 49.153008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000980, 34.521393, 49.104504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918163, -0.065949, -0.390676,
		-0.395714, -0.103648, -0.912506,
		0.019686, 0.992425, -0.121263,
		35.006886, 34.819118, 49.068123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374825, 34.178856, 48.567249>,  <34.993107, 34.124424, 49.153008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374825, 34.178856, 48.567249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421833, 34.551785, 48.704044>,  <35.450039, 34.775543, 48.786121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.421833, 34.551785, 48.704044>,  <35.374825, 34.178856, 48.567249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421833, 34.551785, 48.704044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945470, 0.000298, -0.325708,
		-0.303768, 0.361619, -0.881452,
		0.117519, 0.932326, 0.341990,
		35.457088, 34.831482, 48.806641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861641, 34.452549, 48.169834>,  <35.374825, 34.178856, 48.567249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861641, 34.452549, 48.169834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881992, 34.744305, 48.442715>,  <35.894203, 34.919357, 48.606445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881992, 34.744305, 48.442715>,  <35.861641, 34.452549, 48.169834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881992, 34.744305, 48.442715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972629, 0.118886, -0.199646,
		-0.226724, 0.673690, -0.703376,
		0.050878, 0.729389, 0.682205,
		35.897255, 34.963120, 48.647377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269905, 35.027718, 47.839874>,  <35.861641, 34.452549, 48.169834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269905, 35.027718, 47.839874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300583, 35.066307, 48.236824>,  <36.318989, 35.089462, 48.474995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300583, 35.066307, 48.236824>,  <36.269905, 35.027718, 47.839874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300583, 35.066307, 48.236824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951089, 0.291642, -0.101855,
		-0.299245, 0.951650, -0.069387,
		0.076694, 0.096473, 0.992376,
		36.323589, 35.095249, 48.534538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777515, 35.436573, 47.901718>,  <36.269905, 35.027718, 47.839874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777515, 35.436573, 47.901718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801411, 35.296349, 48.275570>,  <36.815746, 35.212215, 48.499882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.801411, 35.296349, 48.275570>,  <36.777515, 35.436573, 47.901718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801411, 35.296349, 48.275570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965841, 0.256817, 0.034598,
		-0.252159, 0.900640, 0.353926,
		0.059734, -0.350560, 0.934633,
		36.819332, 35.191181, 48.555962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306782, 35.877125, 48.320595>,  <36.777515, 35.436573, 47.901718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306782, 35.877125, 48.320595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251312, 35.552189, 48.547176>,  <37.218029, 35.357227, 48.683125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251312, 35.552189, 48.547176>,  <37.306782, 35.877125, 48.320595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251312, 35.552189, 48.547176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987239, -0.068187, 0.143907,
		-0.078276, 0.579185, 0.811429,
		-0.138678, -0.812339, 0.566457,
		37.209709, 35.308487, 48.717113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807262, 36.050873, 48.728760>,  <37.306782, 35.877125, 48.320595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807262, 36.050873, 48.728760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724838, 35.668301, 48.811497>,  <37.675385, 35.438759, 48.861137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724838, 35.668301, 48.811497>,  <37.807262, 36.050873, 48.728760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724838, 35.668301, 48.811497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975942, -0.185472, 0.114622,
		-0.071265, 0.225482, 0.971637,
		-0.206057, -0.956430, 0.206840,
		37.663021, 35.381371, 48.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374733, 35.781860, 48.596939>,  <37.807262, 36.050873, 48.728760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374733, 35.781860, 48.596939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239620, 35.455524, 48.784687>,  <38.158550, 35.259724, 48.897335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239620, 35.455524, 48.784687>,  <38.374733, 35.781860, 48.596939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239620, 35.455524, 48.784687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916225, -0.399179, -0.034468,
		0.215482, 0.418402, 0.882331,
		-0.337786, -0.815841, 0.469366,
		38.138283, 35.210773, 48.925495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796814, 35.557213, 49.122799>,  <38.374733, 35.781860, 48.596939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796814, 35.557213, 49.122799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604927, 35.213512, 49.051731>,  <38.489796, 35.007294, 49.009090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604927, 35.213512, 49.051731>,  <38.796814, 35.557213, 49.122799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604927, 35.213512, 49.051731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872449, -0.445576, -0.200737,
		0.093319, -0.251301, 0.963400,
		-0.479713, -0.859250, -0.177667,
		38.461014, 34.955738, 48.998432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206436, 34.970779, 49.537743>,  <38.796814, 35.557213, 49.122799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206436, 34.970779, 49.537743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135090, 35.318249, 49.722603>,  <39.092281, 35.526730, 49.833519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135090, 35.318249, 49.722603>,  <39.206436, 34.970779, 49.537743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135090, 35.318249, 49.722603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910760, -0.323528, 0.256606,
		0.372427, -0.375140, 0.848863,
		-0.178368, 0.868677, 0.462153,
		39.081581, 35.578854, 49.861248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927376, 34.954887, 49.827927>,  <39.206436, 34.970779, 49.537743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927376, 34.954887, 49.827927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603554, 34.722923, 49.791439>,  <39.409260, 34.583744, 49.769547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603554, 34.722923, 49.791439>,  <39.927376, 34.954887, 49.827927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603554, 34.722923, 49.791439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577122, -0.814654, 0.057169,
		-0.107464, -0.006362, 0.994189,
		-0.809556, -0.579912, -0.091218,
		39.360687, 34.548950, 49.764072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976162, 34.416916, 50.359169>,  <39.927376, 34.954887, 49.827927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976162, 34.416916, 50.359169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731510, 34.314442, 50.059761>,  <39.584721, 34.252956, 49.880116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731510, 34.314442, 50.059761>,  <39.976162, 34.416916, 50.359169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731510, 34.314442, 50.059761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468045, -0.879960, -0.081269,
		-0.637847, -0.400047, 0.658114,
		-0.611625, -0.256189, -0.748520,
		39.548023, 34.237583, 49.835205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883434, 33.615391, 50.441811>,  <39.976162, 34.416916, 50.359169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883434, 33.615391, 50.441811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757545, 33.695625, 50.070713>,  <39.682011, 33.743767, 49.848053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757545, 33.695625, 50.070713>,  <39.883434, 33.615391, 50.441811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757545, 33.695625, 50.070713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104694, -0.964115, -0.243969,
		-0.943391, -0.173913, 0.282431,
		-0.314726, 0.200589, -0.927745,
		39.663128, 33.755802, 49.792389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874214, 33.647343, 51.192707>,  <39.883434, 33.615391, 50.441811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874214, 33.647343, 51.192707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907898, 33.823307, 51.550343>,  <39.928108, 33.928886, 51.764923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.907898, 33.823307, 51.550343>,  <39.874214, 33.647343, 51.192707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907898, 33.823307, 51.550343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919948, -0.310458, 0.239398,
		0.382890, -0.842672, 0.378549,
		0.084210, 0.439909, 0.894085,
		39.933163, 33.955280, 51.818569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690987, 33.175873, 51.738503>,  <39.874214, 33.647343, 51.192707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690987, 33.175873, 51.738503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634296, 33.540695, 51.892418>,  <39.600281, 33.759590, 51.984768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634296, 33.540695, 51.892418>,  <39.690987, 33.175873, 51.738503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634296, 33.540695, 51.892418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798560, -0.335053, 0.500042,
		0.584992, -0.236403, 0.775821,
		-0.141729, 0.912060, 0.384785,
		39.591778, 33.814312, 52.007854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398693, 33.122189, 52.350441>,  <39.690987, 33.175873, 51.738503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398693, 33.122189, 52.350441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323391, 33.510242, 52.289253>,  <39.278210, 33.743076, 52.252541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323391, 33.510242, 52.289253>,  <39.398693, 33.122189, 52.350441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323391, 33.510242, 52.289253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835460, -0.076307, 0.544228,
		0.516301, 0.230256, 0.824873,
		-0.188256, 0.970134, -0.152972,
		39.266914, 33.801281, 52.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227001, 33.462746, 53.035965>,  <39.398693, 33.122189, 52.350441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227001, 33.462746, 53.035965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.045879, 33.651817, 52.733562>,  <38.937206, 33.765259, 52.552120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.045879, 33.651817, 52.733562>,  <39.227001, 33.462746, 53.035965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045879, 33.651817, 52.733562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855531, 0.008427, 0.517683,
		0.251069, 0.881194, 0.400576,
		-0.452804, 0.472680, -0.756005,
		38.910038, 33.793621, 52.506760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780895, 33.909328, 53.290455>,  <39.227001, 33.462746, 53.035965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780895, 33.909328, 53.290455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641716, 33.881332, 52.916496>,  <38.558208, 33.864532, 52.692120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641716, 33.881332, 52.916496>,  <38.780895, 33.909328, 53.290455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641716, 33.881332, 52.916496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937193, -0.000113, 0.348812,
		-0.024520, 0.997547, -0.065559,
		-0.347949, -0.069994, -0.934897,
		38.537331, 33.860332, 52.636028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230484, 34.315376, 53.235649>,  <38.780895, 33.909328, 53.290455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230484, 34.315376, 53.235649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155811, 34.106178, 52.902992>,  <38.111008, 33.980659, 52.703400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155811, 34.106178, 52.902992>,  <38.230484, 34.315376, 53.235649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155811, 34.106178, 52.902992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955390, -0.100563, 0.277700,
		-0.228868, 0.846382, -0.480892,
		-0.186681, -0.522996, -0.831640,
		38.099808, 33.949280, 52.653500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666553, 34.543850, 53.068554>,  <38.230484, 34.315376, 53.235649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666553, 34.543850, 53.068554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681019, 34.192230, 52.878410>,  <37.689697, 33.981258, 52.764324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681019, 34.192230, 52.878410>,  <37.666553, 34.543850, 53.068554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681019, 34.192230, 52.878410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938178, -0.193720, 0.286871,
		-0.344259, 0.435596, -0.831710,
		0.036159, -0.879050, -0.475357,
		37.691868, 33.928516, 52.735802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080128, 34.408249, 52.718376>,  <37.666553, 34.543850, 53.068554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080128, 34.408249, 52.718376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185535, 34.023212, 52.743591>,  <37.248779, 33.792191, 52.758720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185535, 34.023212, 52.743591>,  <37.080128, 34.408249, 52.718376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185535, 34.023212, 52.743591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817190, -0.188032, 0.544834,
		-0.512599, -0.195091, -0.836171,
		0.263519, -0.962592, 0.063041,
		37.264591, 33.734436, 52.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380630, 34.046955, 52.689056>,  <37.080128, 34.408249, 52.718376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380630, 34.046955, 52.689056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651878, 33.806355, 52.857986>,  <36.814625, 33.661995, 52.959343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651878, 33.806355, 52.857986>,  <36.380630, 34.046955, 52.689056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651878, 33.806355, 52.857986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712142, -0.395703, 0.579890,
		-0.181690, -0.693987, -0.696686,
		0.678117, -0.601500, 0.422322,
		36.855312, 33.625904, 52.984684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114326, 33.354042, 52.783035>,  <36.380630, 34.046955, 52.689056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114326, 33.354042, 52.783035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404224, 33.368172, 53.058277>,  <36.578163, 33.376648, 53.223423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404224, 33.368172, 53.058277>,  <36.114326, 33.354042, 52.783035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404224, 33.368172, 53.058277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627998, -0.377019, 0.680790,
		0.283479, -0.925532, -0.251060,
		0.724747, 0.035325, 0.688109,
		36.621647, 33.378769, 53.264709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902210, 32.857704, 53.185547>,  <36.114326, 33.354042, 52.783035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902210, 32.857704, 53.185547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172607, 33.036427, 53.419949>,  <36.334846, 33.143661, 53.560589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172607, 33.036427, 53.419949>,  <35.902210, 32.857704, 53.185547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172607, 33.036427, 53.419949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593805, -0.140637, 0.792223,
		0.436383, -0.883508, 0.170245,
		0.675992, 0.446805, 0.586003,
		36.375404, 33.170467, 53.595749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883938, 32.418064, 53.748257>,  <35.902210, 32.857704, 53.185547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883938, 32.418064, 53.748257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034725, 32.773052, 53.854305>,  <36.125198, 32.986046, 53.917934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034725, 32.773052, 53.854305>,  <35.883938, 32.418064, 53.748257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034725, 32.773052, 53.854305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496445, -0.048054, 0.866737,
		0.781944, -0.458352, 0.422465,
		0.376970, 0.887471, 0.265122,
		36.147816, 33.039295, 53.933842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190693, 32.357788, 54.425518>,  <35.883938, 32.418064, 53.748257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190693, 32.357788, 54.425518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094238, 32.743660, 54.383102>,  <36.036366, 32.975182, 54.357655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094238, 32.743660, 54.383102>,  <36.190693, 32.357788, 54.425518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094238, 32.743660, 54.383102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563635, -0.050261, 0.824494,
		0.790043, 0.258586, 0.555847,
		-0.241140, 0.964680, -0.106039,
		36.021896, 33.033066, 54.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150917, 32.666958, 55.136951>,  <36.190693, 32.357788, 54.425518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150917, 32.666958, 55.136951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971432, 32.933846, 54.899132>,  <35.863743, 33.093979, 54.756439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.971432, 32.933846, 54.899132>,  <36.150917, 32.666958, 55.136951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971432, 32.933846, 54.899132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546494, 0.321533, 0.773279,
		0.707109, 0.671893, 0.220354,
		-0.448710, 0.667215, -0.594545,
		35.836819, 33.134010, 54.720768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337524, 33.299583, 55.516270>,  <36.150917, 32.666958, 55.136951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337524, 33.299583, 55.516270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021996, 33.385750, 55.286015>,  <35.832680, 33.437450, 55.147861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021996, 33.385750, 55.286015>,  <36.337524, 33.299583, 55.516270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021996, 33.385750, 55.286015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496701, 0.328214, 0.803470,
		0.362011, 0.919713, -0.151906,
		-0.788820, 0.215413, -0.575639,
		35.785351, 33.450375, 55.113323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102879, 33.907162, 55.799080>,  <36.337524, 33.299583, 55.516270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102879, 33.907162, 55.799080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793507, 33.755886, 55.595600>,  <35.607883, 33.665119, 55.473511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793507, 33.755886, 55.595600>,  <36.102879, 33.907162, 55.799080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793507, 33.755886, 55.595600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625854, 0.328297, 0.707480,
		-0.100559, 0.865558, -0.490609,
		-0.773430, -0.378193, -0.508700,
		35.561478, 33.642429, 55.442989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688766, 34.425972, 55.572479>,  <36.102879, 33.907162, 55.799080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688766, 34.425972, 55.572479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467255, 34.093567, 55.593464>,  <35.334347, 33.894123, 55.606052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467255, 34.093567, 55.593464>,  <35.688766, 34.425972, 55.572479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467255, 34.093567, 55.593464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626117, 0.457112, 0.631685,
		-0.548918, 0.316966, -0.773448,
		-0.553775, -0.831012, 0.052459,
		35.301121, 33.844265, 55.609203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992744, 34.577053, 55.770161>,  <35.688766, 34.425972, 55.572479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992744, 34.577053, 55.770161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889034, 34.191570, 55.795631>,  <34.826809, 33.960281, 55.810913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889034, 34.191570, 55.795631>,  <34.992744, 34.577053, 55.770161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889034, 34.191570, 55.795631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664861, 0.225914, 0.711985,
		-0.700527, 0.142263, -0.699302,
		-0.259271, -0.963704, 0.063674,
		34.811253, 33.902458, 55.814732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228645, 34.586880, 55.786770>,  <34.992744, 34.577053, 55.770161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228645, 34.586880, 55.786770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362072, 34.240192, 55.935112>,  <34.442127, 34.032181, 56.024117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.362072, 34.240192, 55.935112>,  <34.228645, 34.586880, 55.786770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362072, 34.240192, 55.935112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593286, 0.112718, 0.797061,
		-0.732628, -0.485899, -0.476611,
		0.333569, -0.866716, 0.370858,
		34.462143, 33.980179, 56.046368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688019, 34.128658, 55.886993>,  <34.228645, 34.586880, 55.786770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688019, 34.128658, 55.886993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983608, 34.072758, 56.150627>,  <34.160961, 34.039219, 56.308807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983608, 34.072758, 56.150627>,  <33.688019, 34.128658, 55.886993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983608, 34.072758, 56.150627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634780, 0.183404, 0.750611,
		-0.225779, -0.973053, 0.046817,
		0.738971, -0.139754, 0.659083,
		34.205299, 34.030830, 56.348351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462193, 33.683308, 56.491524>,  <33.688019, 34.128658, 55.886993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462193, 33.683308, 56.491524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801174, 33.844025, 56.630310>,  <34.004562, 33.940453, 56.713581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801174, 33.844025, 56.630310>,  <33.462193, 33.683308, 56.491524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801174, 33.844025, 56.630310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490570, 0.342935, 0.801085,
		0.202879, -0.849095, 0.487727,
		0.847456, 0.401787, 0.346967,
		34.055412, 33.964561, 56.734398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457592, 33.488247, 57.166668>,  <33.462193, 33.683308, 56.491524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457592, 33.488247, 57.166668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697147, 33.807789, 57.144165>,  <33.840881, 33.999512, 57.130665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697147, 33.807789, 57.144165>,  <33.457592, 33.488247, 57.166668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697147, 33.807789, 57.144165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300597, 0.289349, 0.908801,
		0.742274, -0.527363, 0.413421,
		0.598891, 0.798852, -0.056253,
		33.876816, 34.047443, 57.127289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559750, 33.663540, 57.856682>,  <33.457592, 33.488247, 57.166668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559750, 33.663540, 57.856682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697849, 34.001484, 57.693214>,  <33.780708, 34.204250, 57.595135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.697849, 34.001484, 57.693214>,  <33.559750, 33.663540, 57.856682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697849, 34.001484, 57.693214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445841, 0.530817, 0.720735,
		0.825851, -0.066631, 0.559938,
		0.345248, 0.844863, -0.408669,
		33.801422, 34.254944, 57.570614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939068, 33.992680, 58.370338>,  <33.559750, 33.663540, 57.856682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939068, 33.992680, 58.370338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803310, 34.265438, 58.111160>,  <33.721855, 34.429092, 57.955654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803310, 34.265438, 58.111160>,  <33.939068, 33.992680, 58.370338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803310, 34.265438, 58.111160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396874, 0.520711, 0.755878,
		0.852820, 0.513693, 0.093901,
		-0.339394, 0.681895, -0.647944,
		33.701492, 34.470005, 57.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025520, 34.666431, 58.692554>,  <33.939068, 33.992680, 58.370338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025520, 34.666431, 58.692554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780800, 34.752171, 58.387989>,  <33.633968, 34.803616, 58.205250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780800, 34.752171, 58.387989>,  <34.025520, 34.666431, 58.692554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780800, 34.752171, 58.387989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529184, 0.604546, 0.595390,
		0.587930, 0.767189, -0.256434,
		-0.611803, 0.214347, -0.761415,
		33.597260, 34.816475, 58.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031418, 35.369377, 58.519920>,  <34.025520, 34.666431, 58.692554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031418, 35.369377, 58.519920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669048, 35.244461, 58.405540>,  <33.451626, 35.169510, 58.336910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669048, 35.244461, 58.405540>,  <34.031418, 35.369377, 58.519920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669048, 35.244461, 58.405540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422953, 0.635263, 0.646182,
		-0.020140, 0.706339, -0.707587,
		-0.905928, -0.312290, -0.285954,
		33.397270, 35.150772, 58.319756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564064, 36.068161, 58.481716>,  <34.031418, 35.369377, 58.519920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564064, 36.068161, 58.481716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307846, 35.761024, 58.486111>,  <33.154118, 35.576740, 58.488747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307846, 35.761024, 58.486111>,  <33.564064, 36.068161, 58.481716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307846, 35.761024, 58.486111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602488, 0.511367, 0.612790,
		-0.476147, 0.385897, -0.790169,
		-0.640540, -0.767846, 0.010988,
		33.115685, 35.530670, 58.489407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933041, 36.404575, 58.474300>,  <33.564064, 36.068161, 58.481716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933041, 36.404575, 58.474300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835503, 36.034203, 58.589668>,  <32.776981, 35.811977, 58.658890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835503, 36.034203, 58.589668>,  <32.933041, 36.404575, 58.474300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835503, 36.034203, 58.589668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602978, 0.377677, 0.702693,
		-0.759577, -0.002565, -0.650412,
		-0.243843, -0.925934, 0.288421,
		32.762348, 35.756424, 58.676193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254528, 36.365585, 58.506378>,  <32.933041, 36.404575, 58.474300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254528, 36.365585, 58.506378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373394, 36.064442, 58.741287>,  <32.444714, 35.883755, 58.882233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373394, 36.064442, 58.741287>,  <32.254528, 36.365585, 58.506378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373394, 36.064442, 58.741287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746418, 0.200396, 0.634587,
		-0.595445, -0.626929, -0.502400,
		0.297162, -0.752862, 0.587276,
		32.462543, 35.838585, 58.917469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606989, 36.112892, 58.638954>,  <32.254528, 36.365585, 58.506378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606989, 36.112892, 58.638954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870411, 36.007610, 58.920956>,  <32.028465, 35.944443, 59.090157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870411, 36.007610, 58.920956>,  <31.606989, 36.112892, 58.638954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870411, 36.007610, 58.920956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709324, 0.095779, 0.698345,
		-0.251333, -0.959973, -0.123622,
		0.658553, -0.263206, 0.705005,
		32.067978, 35.928650, 59.132458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300020, 35.593178, 59.124138>,  <31.606989, 36.112892, 58.638954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300020, 35.593178, 59.124138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591160, 35.775757, 59.328838>,  <31.765844, 35.885303, 59.451660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.591160, 35.775757, 59.328838>,  <31.300020, 35.593178, 59.124138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591160, 35.775757, 59.328838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615382, 0.105500, 0.781137,
		0.302555, -0.883475, 0.357675,
		0.727850, 0.456444, 0.511755,
		31.809515, 35.912689, 59.482365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206909, 35.243908, 59.771885>,  <31.300020, 35.593178, 59.124138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206909, 35.243908, 59.771885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387447, 35.600571, 59.785931>,  <31.495770, 35.814568, 59.794357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.387447, 35.600571, 59.785931>,  <31.206909, 35.243908, 59.771885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387447, 35.600571, 59.785931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631960, 0.291614, 0.718045,
		0.630011, -0.346275, 0.695111,
		0.451345, 0.891658, 0.035112,
		31.522850, 35.868069, 59.796463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376966, 35.304379, 60.425095>,  <31.206909, 35.243908, 59.771885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376966, 35.304379, 60.425095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436127, 35.687408, 60.326164>,  <31.471622, 35.917229, 60.266808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436127, 35.687408, 60.326164>,  <31.376966, 35.304379, 60.425095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436127, 35.687408, 60.326164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632000, 0.283864, 0.721109,
		0.760724, 0.049655, 0.647173,
		0.147903, 0.957578, -0.247324,
		31.480497, 35.974682, 60.251968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177790, 35.552719, 60.984596>,  <31.376966, 35.304379, 60.425095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177790, 35.552719, 60.984596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219980, 35.902672, 60.795509>,  <31.245295, 36.112644, 60.682056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219980, 35.902672, 60.795509>,  <31.177790, 35.552719, 60.984596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219980, 35.902672, 60.795509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522874, 0.453140, 0.721988,
		0.845859, 0.171017, 0.505248,
		0.105476, 0.874881, -0.472713,
		31.251623, 36.165134, 60.653694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561903, 36.098419, 61.400761>,  <31.177790, 35.552719, 60.984596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561903, 36.098419, 61.400761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.347042, 36.310726, 61.138538>,  <31.218126, 36.438110, 60.981205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.347042, 36.310726, 61.138538>,  <31.561903, 36.098419, 61.400761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347042, 36.310726, 61.138538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383214, 0.538791, 0.750234,
		0.751408, 0.654208, -0.086014,
		-0.537153, 0.530770, -0.655553,
		31.185896, 36.469955, 60.941872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734991, 36.853107, 61.438465>,  <31.561903, 36.098419, 61.400761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734991, 36.853107, 61.438465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367180, 36.810665, 61.287094>,  <31.146494, 36.785198, 61.196270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.367180, 36.810665, 61.287094>,  <31.734991, 36.853107, 61.438465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367180, 36.810665, 61.287094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384068, 0.446975, 0.807902,
		0.083427, 0.888231, -0.451758,
		-0.919528, -0.106105, -0.378431,
		31.091322, 36.778835, 61.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421186, 37.548702, 61.426502>,  <31.734991, 36.853107, 61.438465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421186, 37.548702, 61.426502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132637, 37.271820, 61.435211>,  <30.959507, 37.105690, 61.440437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132637, 37.271820, 61.435211>,  <31.421186, 37.548702, 61.426502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132637, 37.271820, 61.435211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402730, 0.444866, 0.799939,
		-0.563406, 0.568287, -0.599686,
		-0.721375, -0.692202, 0.021774,
		30.916225, 37.064159, 61.441742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648268, 37.891594, 61.540897>,  <31.421186, 37.548702, 61.426502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648268, 37.891594, 61.540897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651140, 37.515903, 61.678185>,  <30.652864, 37.290489, 61.760555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651140, 37.515903, 61.678185>,  <30.648268, 37.891594, 61.540897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651140, 37.515903, 61.678185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368449, 0.316590, 0.874080,
		-0.929620, -0.132735, -0.343785,
		0.007182, -0.939229, 0.343214,
		30.653296, 37.234135, 61.781147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060825, 37.930084, 62.013363>,  <30.648268, 37.891594, 61.540897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060825, 37.930084, 62.013363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222811, 37.573929, 62.096519>,  <30.320002, 37.360237, 62.146412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222811, 37.573929, 62.096519>,  <30.060825, 37.930084, 62.013363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222811, 37.573929, 62.096519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334078, 0.067554, 0.940121,
		-0.851114, -0.450166, -0.270101,
		0.404964, -0.890386, 0.207887,
		30.344299, 37.306812, 62.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568718, 37.609444, 62.271637>,  <30.060825, 37.930084, 62.013363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568718, 37.609444, 62.271637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868248, 37.376263, 62.397766>,  <30.047966, 37.236355, 62.473446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.868248, 37.376263, 62.397766>,  <29.568718, 37.609444, 62.271637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868248, 37.376263, 62.397766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327324, 0.088410, 0.940767,
		-0.576297, -0.807684, -0.124610,
		0.748826, -0.582949, 0.315325,
		30.092896, 37.201378, 62.492363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298180, 37.138508, 62.764080>,  <29.568718, 37.609444, 62.271637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298180, 37.138508, 62.764080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684097, 37.161209, 62.866806>,  <29.915648, 37.174831, 62.928440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684097, 37.161209, 62.866806>,  <29.298180, 37.138508, 62.764080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684097, 37.161209, 62.866806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262175, 0.129895, 0.956238,
		0.020909, -0.989902, 0.140201,
		0.964794, 0.056751, 0.256812,
		29.973536, 37.178234, 62.943848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482183, 36.588139, 63.245750>,  <29.298180, 37.138508, 62.764080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482183, 36.588139, 63.245750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739679, 36.887489, 63.309669>,  <29.894176, 37.067101, 63.348019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.739679, 36.887489, 63.309669>,  <29.482183, 36.588139, 63.245750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739679, 36.887489, 63.309669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244372, 0.003157, 0.969676,
		0.725177, -0.663269, 0.184914,
		0.643740, 0.748374, 0.159795,
		29.932802, 37.112003, 63.357609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843784, 36.484806, 63.960880>,  <29.482183, 36.588139, 63.245750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843784, 36.484806, 63.960880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848360, 36.869827, 63.852535>,  <29.851107, 37.100838, 63.787529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.848360, 36.869827, 63.852535>,  <29.843784, 36.484806, 63.960880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848360, 36.869827, 63.852535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342594, 0.258257, 0.903290,
		0.939414, 0.082460, 0.332719,
		0.011442, 0.962551, -0.270861,
		29.851793, 37.158592, 63.771278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049522, 36.747780, 64.621124>,  <29.843784, 36.484806, 63.960880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049522, 36.747780, 64.621124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.902544, 37.040035, 64.390945>,  <29.814358, 37.215389, 64.252838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.902544, 37.040035, 64.390945>,  <30.049522, 36.747780, 64.621124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902544, 37.040035, 64.390945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324003, 0.479416, 0.815587,
		0.871783, 0.486133, 0.060570,
		-0.367445, 0.730640, -0.575455,
		29.792311, 37.259228, 64.218307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655653, 37.344719, 65.011162>,  <30.049522, 36.747780, 64.621124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655653, 37.344719, 65.011162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606577, 37.598217, 64.705666>,  <29.577131, 37.750317, 64.522369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606577, 37.598217, 64.705666>,  <29.655653, 37.344719, 65.011162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606577, 37.598217, 64.705666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581352, 0.577815, 0.572851,
		0.804349, 0.514290, 0.297539,
		-0.122689, 0.633747, -0.763749,
		29.569771, 37.788342, 64.476540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770700, 38.079674, 65.186493>,  <29.655653, 37.344719, 65.011162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770700, 38.079674, 65.186493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506769, 38.048645, 64.887535>,  <29.348410, 38.030025, 64.708160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.506769, 38.048645, 64.887535>,  <29.770700, 38.079674, 65.186493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506769, 38.048645, 64.887535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695633, 0.439148, 0.568546,
		0.284115, 0.895059, -0.343726,
		-0.659828, -0.077574, -0.747401,
		29.308821, 38.025372, 64.663315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459902, 38.679085, 65.109680>,  <29.770700, 38.079674, 65.186493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459902, 38.679085, 65.109680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.242403, 38.370979, 64.976395>,  <29.111904, 38.186115, 64.896423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.242403, 38.370979, 64.976395>,  <29.459902, 38.679085, 65.109680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242403, 38.370979, 64.976395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667900, 0.156739, 0.727559,
		-0.508182, 0.618166, -0.599684,
		-0.543746, -0.770262, -0.333222,
		29.079279, 38.139900, 64.876427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697607, 38.859638, 65.113068>,  <29.459902, 38.679085, 65.109680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697607, 38.859638, 65.113068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697479, 38.459869, 65.126633>,  <28.697403, 38.220009, 65.134773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697479, 38.459869, 65.126633>,  <28.697607, 38.859638, 65.113068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697479, 38.459869, 65.126633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741153, 0.022999, 0.670942,
		-0.671335, -0.024914, -0.740735,
		-0.000320, -0.999425, 0.033905,
		28.697384, 38.160042, 65.136803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363352, 39.082474, 64.500412>,  <28.697607, 38.859638, 65.113068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363352, 39.082474, 64.500412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256611, 39.179428, 64.127312>,  <28.192566, 39.237598, 63.903450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.256611, 39.179428, 64.127312>,  <28.363352, 39.082474, 64.500412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256611, 39.179428, 64.127312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936438, 0.293943, -0.191522,
		0.227756, -0.924580, -0.305417,
		-0.266852, 0.242384, -0.932759,
		28.176556, 39.252144, 63.847485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702690, 38.656181, 63.891693>,  <28.363352, 39.082474, 64.500412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702690, 38.656181, 63.891693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616554, 39.042950, 63.837013>,  <28.564873, 39.275013, 63.804207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616554, 39.042950, 63.837013>,  <28.702690, 38.656181, 63.891693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616554, 39.042950, 63.837013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976498, 0.214494, -0.021054,
		0.008963, -0.138018, -0.990389,
		-0.215338, 0.966925, -0.136696,
		28.551952, 39.333027, 63.796005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966772, 38.920666, 63.286381>,  <28.702690, 38.656181, 63.891693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966772, 38.920666, 63.286381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939848, 39.254116, 63.505665>,  <28.923695, 39.454185, 63.637234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.939848, 39.254116, 63.505665>,  <28.966772, 38.920666, 63.286381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939848, 39.254116, 63.505665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940428, 0.236538, -0.244223,
		-0.333264, 0.499115, -0.799887,
		-0.067308, 0.833627, 0.548212,
		28.919655, 39.504204, 63.670128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070520, 39.498791, 62.917843>,  <28.966772, 38.920666, 63.286381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070520, 39.498791, 62.917843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.239822, 39.503117, 63.280220>,  <29.341404, 39.505711, 63.497646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.239822, 39.503117, 63.280220>,  <29.070520, 39.498791, 62.917843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239822, 39.503117, 63.280220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905886, -0.021724, -0.422965,
		0.015108, 0.999705, -0.018989,
		0.423253, 0.010812, 0.905947,
		29.366798, 39.506359, 63.552006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361170, 40.148788, 63.005474>,  <29.070520, 39.498791, 62.917843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361170, 40.148788, 63.005474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534861, 39.828251, 63.170059>,  <29.639074, 39.635929, 63.268810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.534861, 39.828251, 63.170059>,  <29.361170, 40.148788, 63.005474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534861, 39.828251, 63.170059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742814, 0.060139, -0.666791,
		0.509583, 0.595176, 0.621362,
		0.434226, -0.801342, 0.411460,
		29.665129, 39.587849, 63.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110319, 40.373363, 63.099854>,  <29.361170, 40.148788, 63.005474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110319, 40.373363, 63.099854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049507, 39.981411, 63.048119>,  <30.013020, 39.746239, 63.017078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049507, 39.981411, 63.048119>,  <30.110319, 40.373363, 63.099854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049507, 39.981411, 63.048119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789165, -0.041555, -0.612774,
		0.595068, -0.195229, 0.779602,
		-0.152028, -0.979877, -0.129340,
		30.003899, 39.687447, 63.009315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736712, 40.161667, 63.022522>,  <30.110319, 40.373363, 63.099854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736712, 40.161667, 63.022522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511410, 39.883793, 62.843567>,  <30.376228, 39.717068, 62.736195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.511410, 39.883793, 62.843567>,  <30.736712, 40.161667, 63.022522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511410, 39.883793, 62.843567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688556, -0.095314, -0.718892,
		0.456763, -0.712968, 0.532018,
		-0.563256, -0.694688, -0.447383,
		30.342432, 39.675388, 62.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244297, 39.674923, 62.812767>,  <30.736712, 40.161667, 63.022522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244297, 39.674923, 62.812767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915428, 39.585350, 62.603432>,  <30.718107, 39.531605, 62.477829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.915428, 39.585350, 62.603432>,  <31.244297, 39.674923, 62.812767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915428, 39.585350, 62.603432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555633, -0.115891, -0.823311,
		0.123717, -0.967689, 0.219707,
		-0.822172, -0.223934, -0.523343,
		30.668777, 39.518169, 62.446430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474176, 39.300278, 62.240665>,  <31.244297, 39.674923, 62.812767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474176, 39.300278, 62.240665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107460, 39.392128, 62.109966>,  <30.887430, 39.447239, 62.031548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107460, 39.392128, 62.109966>,  <31.474176, 39.300278, 62.240665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107460, 39.392128, 62.109966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351584, 0.076007, -0.933066,
		-0.189420, -0.970307, -0.150415,
		-0.916793, 0.229625, -0.326747,
		30.832422, 39.461014, 62.011944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389023, 38.956501, 61.719212>,  <31.474176, 39.300278, 62.240665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389023, 38.956501, 61.719212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142420, 39.266769, 61.665165>,  <30.994457, 39.452930, 61.632736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142420, 39.266769, 61.665165>,  <31.389023, 38.956501, 61.719212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142420, 39.266769, 61.665165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341875, 0.109130, -0.933388,
		-0.709254, -0.621634, -0.332461,
		-0.616507, 0.775668, -0.135120,
		30.957468, 39.499470, 61.624630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057289, 38.760044, 61.080395>,  <31.389023, 38.956501, 61.719212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057289, 38.760044, 61.080395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049322, 39.150562, 61.166603>,  <31.044542, 39.384872, 61.218330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.049322, 39.150562, 61.166603>,  <31.057289, 38.760044, 61.080395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049322, 39.150562, 61.166603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265043, 0.213010, -0.940414,
		-0.964031, 0.038391, -0.263003,
		-0.019919, 0.976296, 0.215524,
		31.043346, 39.443451, 61.231258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624926, 39.066242, 60.557575>,  <31.057289, 38.760044, 61.080395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624926, 39.066242, 60.557575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821281, 39.398304, 60.663315>,  <30.939095, 39.597542, 60.726757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821281, 39.398304, 60.663315>,  <30.624926, 39.066242, 60.557575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821281, 39.398304, 60.663315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235972, 0.165391, -0.957582,
		-0.838658, 0.532444, -0.114704,
		0.490888, 0.830150, 0.264348,
		30.968548, 39.647350, 60.742619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317457, 39.624783, 60.130527>,  <30.624926, 39.066242, 60.557575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317457, 39.624783, 60.130527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683138, 39.732170, 60.251961>,  <30.902546, 39.796604, 60.324821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683138, 39.732170, 60.251961>,  <30.317457, 39.624783, 60.130527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683138, 39.732170, 60.251961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278738, 0.127227, -0.951903,
		-0.294179, 0.954850, 0.041478,
		0.914201, 0.268468, 0.303580,
		30.957397, 39.812710, 60.343037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493282, 40.240311, 59.729618>,  <30.317457, 39.624783, 60.130527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493282, 40.240311, 59.729618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.838793, 40.094986, 59.869274>,  <31.046099, 40.007790, 59.953068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.838793, 40.094986, 59.869274>,  <30.493282, 40.240311, 59.729618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838793, 40.094986, 59.869274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431688, 0.176207, -0.884645,
		0.259884, 0.914852, 0.309042,
		0.863774, -0.363315, 0.349137,
		31.097925, 39.985992, 59.974014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983335, 40.727749, 59.566746>,  <30.493282, 40.240311, 59.729618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983335, 40.727749, 59.566746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.215311, 40.412121, 59.647785>,  <31.354496, 40.222744, 59.696407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.215311, 40.412121, 59.647785>,  <30.983335, 40.727749, 59.566746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215311, 40.412121, 59.647785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535716, 0.182028, -0.824545,
		0.613742, 0.586721, 0.528280,
		0.579939, -0.789066, 0.202598,
		31.389294, 40.175400, 59.708565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705523, 40.952625, 59.546555>,  <30.983335, 40.727749, 59.566746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705523, 40.952625, 59.546555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737310, 40.557545, 59.492706>,  <31.756382, 40.320496, 59.460396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737310, 40.557545, 59.492706>,  <31.705523, 40.952625, 59.546555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737310, 40.557545, 59.492706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544700, 0.156128, -0.823969,
		0.834857, -0.007848, 0.550411,
		0.079468, -0.987706, -0.134619,
		31.761150, 40.261234, 59.452320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408585, 40.820587, 59.423756>,  <31.705523, 40.952625, 59.546555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408585, 40.820587, 59.423756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205872, 40.512463, 59.268944>,  <32.084244, 40.327587, 59.176056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.205872, 40.512463, 59.268944>,  <32.408585, 40.820587, 59.423756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205872, 40.512463, 59.268944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575191, 0.032261, -0.817383,
		0.642127, -0.636848, 0.426728,
		-0.506782, -0.770314, -0.387025,
		32.053837, 40.281368, 59.152836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937695, 40.426697, 59.130451>,  <32.408585, 40.820587, 59.423756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937695, 40.426697, 59.130451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605453, 40.269001, 58.973141>,  <32.406109, 40.174381, 58.878754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605453, 40.269001, 58.973141>,  <32.937695, 40.426697, 59.130451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605453, 40.269001, 58.973141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448782, -0.055803, -0.891897,
		0.329679, -0.917310, 0.223280,
		-0.830606, -0.394244, -0.393275,
		32.356270, 40.150726, 58.855160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202530, 39.828014, 58.766102>,  <32.937695, 40.426697, 59.130451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202530, 39.828014, 58.766102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854137, 39.929100, 58.597565>,  <32.645103, 39.989750, 58.496441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.854137, 39.929100, 58.597565>,  <33.202530, 39.828014, 58.766102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854137, 39.929100, 58.597565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418638, -0.067167, -0.905666,
		-0.257176, -0.965206, -0.047295,
		-0.870978, 0.252715, -0.421347,
		32.592842, 40.004913, 58.471161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905872, 39.361607, 58.220379>,  <33.202530, 39.828014, 58.766102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905872, 39.361607, 58.220379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763088, 39.725979, 58.137638>,  <32.677418, 39.944603, 58.087994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.763088, 39.725979, 58.137638>,  <32.905872, 39.361607, 58.220379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763088, 39.725979, 58.137638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335160, -0.081800, -0.938603,
		-0.871920, -0.404376, -0.276107,
		-0.356963, 0.910927, -0.206854,
		32.655998, 39.999256, 58.075581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449795, 39.261879, 57.685223>,  <32.905872, 39.361607, 58.220379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449795, 39.261879, 57.685223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536915, 39.652142, 57.674988>,  <32.589188, 39.886299, 57.668846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.536915, 39.652142, 57.674988>,  <32.449795, 39.261879, 57.685223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536915, 39.652142, 57.674988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226780, -0.076090, -0.970969,
		-0.949280, 0.205677, -0.237832,
		0.217802, 0.975657, -0.025587,
		32.602257, 39.944839, 57.667313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047409, 39.517689, 57.099384>,  <32.449795, 39.261879, 57.685223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047409, 39.517689, 57.099384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351463, 39.770641, 57.159115>,  <32.533894, 39.922413, 57.194954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351463, 39.770641, 57.159115>,  <32.047409, 39.517689, 57.099384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351463, 39.770641, 57.159115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110138, 0.101091, -0.988762,
		-0.640366, 0.768036, 0.007194,
		0.760132, 0.632377, 0.149325,
		32.579502, 39.960354, 57.203911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963923, 39.990452, 56.557346>,  <32.047409, 39.517689, 57.099384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963923, 39.990452, 56.557346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349945, 40.039452, 56.650002>,  <32.581558, 40.068851, 56.705597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349945, 40.039452, 56.650002>,  <31.963923, 39.990452, 56.557346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349945, 40.039452, 56.650002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227516, 0.046852, -0.972647,
		-0.130001, 0.991362, 0.017344,
		0.965058, 0.122499, 0.231641,
		32.639462, 40.076202, 56.719494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216927, 40.376274, 56.059834>,  <31.963923, 39.990452, 56.557346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216927, 40.376274, 56.059834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549915, 40.240833, 56.235260>,  <32.749710, 40.159569, 56.340515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549915, 40.240833, 56.235260>,  <32.216927, 40.376274, 56.059834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549915, 40.240833, 56.235260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473652, 0.024221, -0.880379,
		0.287476, 0.940618, 0.180543,
		0.832473, -0.338602, 0.438563,
		32.799656, 40.139252, 56.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760765, 40.819031, 55.749451>,  <32.216927, 40.376274, 56.059834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760765, 40.819031, 55.749451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915188, 40.476402, 55.886414>,  <33.007843, 40.270824, 55.968590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915188, 40.476402, 55.886414>,  <32.760765, 40.819031, 55.749451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915188, 40.476402, 55.886414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524645, -0.101422, -0.845258,
		0.758752, 0.505961, 0.410242,
		0.386060, -0.856573, 0.342404,
		33.031006, 40.219429, 55.989136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446499, 40.835098, 55.475677>,  <32.760765, 40.819031, 55.749451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446499, 40.835098, 55.475677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379639, 40.457905, 55.590809>,  <33.339523, 40.231590, 55.659889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.379639, 40.457905, 55.590809>,  <33.446499, 40.835098, 55.475677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379639, 40.457905, 55.590809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588646, -0.329644, -0.738126,
		0.790920, 0.046048, 0.610184,
		-0.167154, -0.942982, 0.287827,
		33.329491, 40.175011, 55.677158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110706, 40.542164, 55.584511>,  <33.446499, 40.835098, 55.475677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110706, 40.542164, 55.584511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866077, 40.227932, 55.546890>,  <33.719299, 40.039394, 55.524319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866077, 40.227932, 55.546890>,  <34.110706, 40.542164, 55.584511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866077, 40.227932, 55.546890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651655, -0.432735, -0.622966,
		0.448690, -0.442277, 0.776575,
		-0.611575, -0.785577, -0.094048,
		33.682606, 39.992260, 55.518677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550167, 39.924889, 55.581760>,  <34.110706, 40.542164, 55.584511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550167, 39.924889, 55.581760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203865, 39.789284, 55.434502>,  <33.996082, 39.707920, 55.346146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203865, 39.789284, 55.434502>,  <34.550167, 39.924889, 55.581760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203865, 39.789284, 55.434502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496100, -0.484409, -0.720578,
		0.065953, -0.806483, 0.587567,
		-0.865757, -0.339016, -0.368148,
		33.944138, 39.687580, 55.324059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646404, 39.169838, 55.546379>,  <34.550167, 39.924889, 55.581760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646404, 39.169838, 55.546379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367558, 39.288666, 55.285374>,  <34.200249, 39.359962, 55.128769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367558, 39.288666, 55.285374>,  <34.646404, 39.169838, 55.546379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367558, 39.288666, 55.285374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451328, -0.525325, -0.721344,
		-0.557078, -0.797357, 0.232131,
		-0.697113, 0.297078, -0.652517,
		34.158424, 39.377789, 55.089619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388599, 38.585400, 55.174068>,  <34.646404, 39.169838, 55.546379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388599, 38.585400, 55.174068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.281387, 38.881207, 54.927078>,  <34.217060, 39.058693, 54.778885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.281387, 38.881207, 54.927078>,  <34.388599, 38.585400, 55.174068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281387, 38.881207, 54.927078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303280, -0.543570, -0.782657,
		-0.914430, -0.397042, -0.078589,
		-0.268029, 0.739519, -0.617472,
		34.200977, 39.103062, 54.741837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001728, 38.242851, 54.628330>,  <34.388599, 38.585400, 55.174068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001728, 38.242851, 54.628330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136658, 38.594059, 54.492508>,  <34.217617, 38.804783, 54.411015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.136658, 38.594059, 54.492508>,  <34.001728, 38.242851, 54.628330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136658, 38.594059, 54.492508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326067, -0.447347, -0.832804,
		-0.883114, 0.170210, -0.437194,
		0.337328, 0.878015, -0.339558,
		34.237858, 38.857464, 54.390640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749599, 38.273296, 53.863613>,  <34.001728, 38.242851, 54.628330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749599, 38.273296, 53.863613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047539, 38.538631, 53.892399>,  <34.226303, 38.697834, 53.909668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047539, 38.538631, 53.892399>,  <33.749599, 38.273296, 53.863613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047539, 38.538631, 53.892399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404647, -0.363331, -0.839197,
		-0.530529, 0.654193, -0.539046,
		0.744849, 0.663342, 0.071960,
		34.270992, 38.737633, 53.913986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825817, 38.491409, 53.189392>,  <33.749599, 38.273296, 53.863613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825817, 38.491409, 53.189392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175205, 38.599140, 53.351631>,  <34.384838, 38.663780, 53.448975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175205, 38.599140, 53.351631>,  <33.825817, 38.491409, 53.189392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175205, 38.599140, 53.351631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457208, -0.167367, -0.873470,
		-0.167367, 0.948393, -0.269329,
		0.873470, 0.269329, 0.405602,
		34.437244, 38.679939, 53.473312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119415, 38.961121, 52.735336>,  <33.825817, 38.491409, 53.189392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119415, 38.961121, 52.735336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420906, 38.802605, 52.945042>,  <34.601799, 38.707493, 53.070866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.420906, 38.802605, 52.945042>,  <34.119415, 38.961121, 52.735336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420906, 38.802605, 52.945042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476790, -0.219270, -0.851229,
		0.452292, 0.891555, 0.023680,
		0.753726, -0.396295, 0.524259,
		34.647022, 38.683716, 53.102318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748447, 39.282818, 52.529442>,  <34.119415, 38.961121, 52.735336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748447, 39.282818, 52.529442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852936, 38.926769, 52.678810>,  <34.915627, 38.713139, 52.768433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852936, 38.926769, 52.678810>,  <34.748447, 39.282818, 52.529442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852936, 38.926769, 52.678810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594366, -0.156496, -0.788821,
		0.760588, 0.428003, 0.488181,
		0.261219, -0.890125, 0.373419,
		34.931301, 38.659733, 52.790836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482677, 39.359032, 52.422840>,  <34.748447, 39.282818, 52.529442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482677, 39.359032, 52.422840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418175, 38.966766, 52.467197>,  <35.379471, 38.731407, 52.493813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418175, 38.966766, 52.467197>,  <35.482677, 39.359032, 52.422840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418175, 38.966766, 52.467197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639266, -0.189402, -0.745295,
		0.751887, -0.049293, 0.657447,
		-0.161259, -0.980661, 0.110898,
		35.369797, 38.672569, 52.500465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160698, 39.072281, 52.454353>,  <35.482677, 39.359032, 52.422840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160698, 39.072281, 52.454353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.922199, 38.765301, 52.360115>,  <35.779099, 38.581112, 52.303570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.922199, 38.765301, 52.360115>,  <36.160698, 39.072281, 52.454353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922199, 38.765301, 52.360115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675732, -0.321322, -0.663429,
		0.433446, -0.554770, 0.710179,
		-0.596246, -0.767452, -0.235600,
		35.743324, 38.535065, 52.289436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580338, 38.494308, 52.437126>,  <36.160698, 39.072281, 52.454353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580338, 38.494308, 52.437126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277527, 38.377007, 52.203579>,  <36.095840, 38.306625, 52.063450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.277527, 38.377007, 52.203579>,  <36.580338, 38.494308, 52.437126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277527, 38.377007, 52.203579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651039, -0.414161, -0.636097,
		-0.055275, -0.861667, 0.504455,
		-0.757030, -0.293259, -0.583871,
		36.050419, 38.289028, 52.028416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796604, 37.908546, 52.077431>,  <36.580338, 38.494308, 52.437126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796604, 37.908546, 52.077431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462749, 37.987576, 51.871773>,  <36.262436, 38.034992, 51.748379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462749, 37.987576, 51.871773>,  <36.796604, 37.908546, 52.077431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462749, 37.987576, 51.871773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417072, -0.383014, -0.824228,
		-0.359771, -0.902367, 0.237275,
		-0.834635, 0.197573, -0.514149,
		36.212360, 38.046844, 51.717529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762428, 37.337875, 51.734680>,  <36.796604, 37.908546, 52.077431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762428, 37.337875, 51.734680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528450, 37.598679, 51.541714>,  <36.388062, 37.755161, 51.425934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.528450, 37.598679, 51.541714>,  <36.762428, 37.337875, 51.734680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528450, 37.598679, 51.541714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405916, -0.279602, -0.870089,
		-0.702188, -0.704776, -0.101108,
		-0.584948, 0.652008, -0.482413,
		36.352966, 37.794281, 51.396988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388557, 36.961777, 51.245701>,  <36.762428, 37.337875, 51.734680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388557, 36.961777, 51.245701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386715, 37.342106, 51.121822>,  <36.385609, 37.570305, 51.047497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386715, 37.342106, 51.121822>,  <36.388557, 36.961777, 51.245701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386715, 37.342106, 51.121822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324163, -0.291555, -0.899952,
		-0.945990, -0.104536, -0.306879,
		-0.004606, 0.950825, -0.309695,
		36.385334, 37.627354, 51.028915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068985, 36.933033, 50.591228>,  <36.388557, 36.961777, 51.245701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068985, 36.933033, 50.591228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220230, 37.303322, 50.594559>,  <36.310978, 37.525494, 50.596558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220230, 37.303322, 50.594559>,  <36.068985, 36.933033, 50.591228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220230, 37.303322, 50.594559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479779, -0.188259, -0.856954,
		-0.791734, 0.328020, -0.515325,
		0.378112, 0.925722, 0.008326,
		36.333664, 37.581039, 50.597057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842209, 37.161339, 49.898857>,  <36.068985, 36.933033, 50.591228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842209, 37.161339, 49.898857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155804, 37.346325, 50.064499>,  <36.343960, 37.457317, 50.163883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.155804, 37.346325, 50.064499>,  <35.842209, 37.161339, 49.898857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155804, 37.346325, 50.064499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542163, -0.185190, -0.819612,
		-0.302353, 0.867082, -0.395919,
		0.783991, 0.462465, 0.414107,
		36.391003, 37.485065, 50.188732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960133, 37.718529, 49.473927>,  <35.842209, 37.161339, 49.898857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960133, 37.718529, 49.473927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298149, 37.627022, 49.667240>,  <36.500961, 37.572117, 49.783230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298149, 37.627022, 49.667240>,  <35.960133, 37.718529, 49.473927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298149, 37.627022, 49.667240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480693, -0.070812, -0.874025,
		0.234170, 0.970903, 0.050127,
		0.845043, -0.228766, 0.483288,
		36.551662, 37.558392, 49.812225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563980, 37.035477, 49.116028>,  <35.960133, 37.718529, 49.473927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563980, 37.035477, 49.116028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296673, 37.167225, 48.849216>,  <35.136288, 37.246273, 48.689129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296673, 37.167225, 48.849216>,  <35.563980, 37.035477, 49.116028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296673, 37.167225, 48.849216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534347, 0.411314, 0.738440,
		0.517583, 0.849902, -0.098868,
		-0.668268, 0.329374, -0.667031,
		35.096191, 37.266037, 48.649109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254944, 37.718319, 49.300198>,  <35.563980, 37.035477, 49.116028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254944, 37.718319, 49.300198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967144, 37.557026, 49.074020>,  <34.794464, 37.460251, 48.938313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967144, 37.557026, 49.074020>,  <35.254944, 37.718319, 49.300198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967144, 37.557026, 49.074020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694489, 0.414046, 0.588430,
		-0.003152, 0.816070, -0.577944,
		-0.719496, -0.403231, -0.565447,
		34.751297, 37.436058, 48.904385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810490, 38.274174, 49.009903>,  <35.254944, 37.718319, 49.300198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810490, 38.274174, 49.009903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600273, 37.934158, 48.995808>,  <34.474144, 37.730148, 48.987350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600273, 37.934158, 48.995808>,  <34.810490, 38.274174, 49.009903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600273, 37.934158, 48.995808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786044, 0.469298, 0.402362,
		-0.325486, 0.239156, -0.914802,
		-0.525542, -0.850038, -0.035237,
		34.442612, 37.679146, 48.985237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159138, 38.422478, 48.883434>,  <34.810490, 38.274174, 49.009903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159138, 38.422478, 48.883434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119133, 38.054050, 49.033970>,  <34.095131, 37.832993, 49.124290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.119133, 38.054050, 49.033970>,  <34.159138, 38.422478, 48.883434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119133, 38.054050, 49.033970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740736, 0.321453, 0.589896,
		-0.664310, -0.219770, -0.714418,
		-0.100010, -0.921069, 0.376336,
		34.089130, 37.777729, 49.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503452, 38.265820, 48.687294>,  <34.159138, 38.422478, 48.883434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503452, 38.265820, 48.687294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588394, 38.052605, 49.014896>,  <33.639359, 37.924675, 49.211460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588394, 38.052605, 49.014896>,  <33.503452, 38.265820, 48.687294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588394, 38.052605, 49.014896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819634, 0.359198, 0.446292,
		-0.532077, -0.766061, -0.360618,
		0.212354, -0.533037, 0.819010,
		33.652100, 37.892693, 49.260601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874786, 38.135139, 48.860485>,  <33.503452, 38.265820, 48.687294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874786, 38.135139, 48.860485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066547, 38.009193, 49.188148>,  <33.181606, 37.933624, 49.384747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066547, 38.009193, 49.188148>,  <32.874786, 38.135139, 48.860485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066547, 38.009193, 49.188148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836796, 0.117283, 0.534805,
		-0.264468, -0.941861, -0.207256,
		0.479405, -0.314869, 0.819163,
		33.210369, 37.914734, 49.433899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421581, 37.613884, 49.137798>,  <32.874786, 38.135139, 48.860485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421581, 37.613884, 49.137798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647900, 37.753208, 49.436745>,  <32.783691, 37.836803, 49.616112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647900, 37.753208, 49.436745>,  <32.421581, 37.613884, 49.137798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647900, 37.753208, 49.436745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824444, 0.253343, 0.506072,
		-0.013071, -0.902496, 0.430500,
		0.565792, 0.348308, 0.747369,
		32.817638, 37.857700, 49.660957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116558, 37.443859, 49.753567>,  <32.421581, 37.613884, 49.137798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116558, 37.443859, 49.753567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361366, 37.717041, 49.913063>,  <32.508251, 37.880951, 50.008762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361366, 37.717041, 49.913063>,  <32.116558, 37.443859, 49.753567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361366, 37.717041, 49.913063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734558, 0.304107, 0.606584,
		0.293003, -0.664152, 0.687788,
		0.612025, 0.682951, 0.398753,
		32.544971, 37.921928, 50.032684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929550, 37.442863, 50.440853>,  <32.116558, 37.443859, 49.753567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929550, 37.442863, 50.440853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125538, 37.786613, 50.382328>,  <32.243130, 37.992863, 50.347214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125538, 37.786613, 50.382328>,  <31.929550, 37.442863, 50.440853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125538, 37.786613, 50.382328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681610, 0.482304, 0.550265,
		0.543451, -0.169883, 0.822071,
		0.489968, 0.859373, -0.146315,
		32.272530, 38.044426, 50.338436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009510, 37.720181, 51.111408>,  <31.929550, 37.442863, 50.440853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009510, 37.720181, 51.111408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054577, 38.024738, 50.856037>,  <32.081615, 38.207474, 50.702816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054577, 38.024738, 50.856037>,  <32.009510, 37.720181, 51.111408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054577, 38.024738, 50.856037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623474, 0.554460, 0.551230,
		0.773684, 0.335938, 0.537177,
		0.112664, 0.761393, -0.638426,
		32.088375, 38.253155, 50.664509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360725, 38.341461, 51.540066>,  <32.009510, 37.720181, 51.111408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360725, 38.341461, 51.540066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201065, 38.518963, 51.219128>,  <32.105267, 38.625462, 51.026566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201065, 38.518963, 51.219128>,  <32.360725, 38.341461, 51.540066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201065, 38.518963, 51.219128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451068, 0.666825, 0.593196,
		0.798257, 0.598690, -0.066004,
		-0.399153, 0.443751, -0.802348,
		32.081318, 38.652088, 50.978424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515156, 38.981590, 51.621136>,  <32.360725, 38.341461, 51.540066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515156, 38.981590, 51.621136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186386, 38.967766, 51.393715>,  <31.989124, 38.959473, 51.257263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.186386, 38.967766, 51.393715>,  <32.515156, 38.981590, 51.621136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186386, 38.967766, 51.393715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443205, 0.665789, 0.600245,
		0.357789, 0.745340, -0.562545,
		-0.821922, -0.034562, -0.568550,
		31.939810, 38.957397, 51.223148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361759, 39.664761, 51.595463>,  <32.515156, 38.981590, 51.621136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361759, 39.664761, 51.595463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036350, 39.452179, 51.501030>,  <31.841105, 39.324631, 51.444370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036350, 39.452179, 51.501030>,  <32.361759, 39.664761, 51.595463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036350, 39.452179, 51.501030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550795, 0.573930, 0.605995,
		-0.186564, 0.623024, -0.759628,
		-0.813522, -0.531456, -0.236084,
		31.792294, 39.292744, 51.430206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769300, 40.050793, 51.399620>,  <32.361759, 39.664761, 51.595463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769300, 40.050793, 51.399620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587463, 39.703865, 51.480721>,  <31.478361, 39.495708, 51.529381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587463, 39.703865, 51.480721>,  <31.769300, 40.050793, 51.399620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587463, 39.703865, 51.480721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482922, 0.431272, 0.762097,
		-0.748419, 0.248533, -0.614899,
		-0.454595, -0.867315, 0.202750,
		31.451084, 39.443672, 51.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200508, 40.281269, 51.777370>,  <31.769300, 40.050793, 51.399620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200508, 40.281269, 51.777370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176743, 39.885643, 51.831352>,  <31.162483, 39.648266, 51.863743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176743, 39.885643, 51.831352>,  <31.200508, 40.281269, 51.777370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176743, 39.885643, 51.831352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516040, 0.146162, 0.844002,
		-0.854501, -0.019496, -0.519083,
		-0.059416, -0.989069, 0.134957,
		31.158918, 39.588921, 51.871838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469715, 40.026268, 52.023239>,  <31.200508, 40.281269, 51.777370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469715, 40.026268, 52.023239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.756968, 39.775768, 52.144627>,  <30.929319, 39.625469, 52.217461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.756968, 39.775768, 52.144627>,  <30.469715, 40.026268, 52.023239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756968, 39.775768, 52.144627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351805, 0.049546, 0.934761,
		-0.600433, -0.778043, -0.184739,
		0.718132, -0.626254, 0.303468,
		30.972406, 39.587891, 52.235668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103376, 39.670757, 52.529163>,  <30.469715, 40.026268, 52.023239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103376, 39.670757, 52.529163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490129, 39.607475, 52.609272>,  <30.722181, 39.569504, 52.657337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490129, 39.607475, 52.609272>,  <30.103376, 39.670757, 52.529163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490129, 39.607475, 52.609272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194649, 0.050420, 0.979576,
		-0.165076, -0.986117, 0.017955,
		0.966882, -0.158209, 0.200270,
		30.780193, 39.560013, 52.669353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051056, 39.357918, 53.067009>,  <30.103376, 39.670757, 52.529163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051056, 39.357918, 53.067009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439817, 39.450726, 53.082848>,  <30.673075, 39.506409, 53.092350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439817, 39.450726, 53.082848>,  <30.051056, 39.357918, 53.067009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439817, 39.450726, 53.082848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022120, -0.077469, 0.996749,
		0.234332, -0.969621, -0.070160,
		0.971905, 0.232018, 0.039601,
		30.731388, 39.520332, 53.094727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502398, 38.730347, 53.456543>,  <30.051056, 39.357918, 53.067009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502398, 38.730347, 53.456543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727203, 39.060791, 53.472919>,  <30.862087, 39.259060, 53.482746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727203, 39.060791, 53.472919>,  <30.502398, 38.730347, 53.456543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727203, 39.060791, 53.472919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036533, -0.024655, 0.999028,
		0.826321, -0.562963, 0.016324,
		0.562014, 0.826114, 0.040940,
		30.895807, 39.308624, 53.485203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058243, 38.637962, 54.034824>,  <30.502398, 38.730347, 53.456543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058243, 38.637962, 54.034824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002956, 39.030373, 53.980450>,  <30.969784, 39.265820, 53.947826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.002956, 39.030373, 53.980450>,  <31.058243, 38.637962, 54.034824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002956, 39.030373, 53.980450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067267, 0.127640, 0.989537,
		0.988115, 0.145915, 0.048349,
		-0.138217, 0.981029, -0.135938,
		30.961491, 39.324680, 53.939667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473560, 38.977001, 54.579727>,  <31.058243, 38.637962, 54.034824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473560, 38.977001, 54.579727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206432, 39.253925, 54.470390>,  <31.046156, 39.420082, 54.404789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206432, 39.253925, 54.470390>,  <31.473560, 38.977001, 54.579727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206432, 39.253925, 54.470390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040845, 0.400775, 0.915266,
		0.743200, 0.600069, -0.295923,
		-0.667822, 0.692312, -0.273346,
		31.006086, 39.461620, 54.388386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657339, 39.533978, 54.945602>,  <31.473560, 38.977001, 54.579727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657339, 39.533978, 54.945602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290152, 39.645962, 54.833206>,  <31.069839, 39.713150, 54.765770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.290152, 39.645962, 54.833206>,  <31.657339, 39.533978, 54.945602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290152, 39.645962, 54.833206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192129, 0.305921, 0.932469,
		0.347012, 0.909965, -0.227038,
		-0.917970, 0.279957, -0.280989,
		31.014761, 39.729950, 54.748909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576214, 40.200138, 55.216049>,  <31.657339, 39.533978, 54.945602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576214, 40.200138, 55.216049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211388, 40.042576, 55.170475>,  <30.992493, 39.948040, 55.143131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.211388, 40.042576, 55.170475>,  <31.576214, 40.200138, 55.216049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211388, 40.042576, 55.170475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263205, 0.349331, 0.899273,
		-0.314424, 0.850182, -0.422289,
		-0.912064, -0.393901, -0.113934,
		30.937769, 39.924404, 55.136295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150871, 40.602386, 55.619019>,  <31.576214, 40.200138, 55.216049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150871, 40.602386, 55.619019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887058, 40.305218, 55.573257>,  <30.728769, 40.126919, 55.545799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887058, 40.305218, 55.573257>,  <31.150871, 40.602386, 55.619019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887058, 40.305218, 55.573257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280073, 0.101638, 0.954583,
		-0.697549, 0.661622, -0.275105,
		-0.659534, -0.742918, -0.114405,
		30.689198, 40.082344, 55.538937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569862, 40.936707, 55.772671>,  <31.150871, 40.602386, 55.619019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569862, 40.936707, 55.772671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491293, 40.550304, 55.839897>,  <30.444151, 40.318462, 55.880234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491293, 40.550304, 55.839897>,  <30.569862, 40.936707, 55.772671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491293, 40.550304, 55.839897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361732, 0.230704, 0.903286,
		-0.911355, 0.116634, -0.394752,
		-0.196425, -0.966008, 0.168063,
		30.432365, 40.260502, 55.890316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053402, 40.970684, 56.215885>,  <30.569862, 40.936707, 55.772671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053402, 40.970684, 56.215885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122442, 40.579998, 56.266846>,  <30.163866, 40.345585, 56.297421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122442, 40.579998, 56.266846>,  <30.053402, 40.970684, 56.215885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122442, 40.579998, 56.266846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447009, 0.037580, 0.893740,
		-0.877720, -0.211209, -0.430115,
		0.172602, -0.976718, 0.127397,
		30.174223, 40.286983, 56.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357416, 40.652206, 56.371906>,  <30.053402, 40.970684, 56.215885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357416, 40.652206, 56.371906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639605, 40.403782, 56.508492>,  <29.808918, 40.254726, 56.590443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.639605, 40.403782, 56.508492>,  <29.357416, 40.652206, 56.371906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639605, 40.403782, 56.508492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523298, -0.131509, 0.841941,
		-0.477989, -0.772653, -0.417774,
		0.705469, -0.621058, 0.341468,
		29.851246, 40.217464, 56.610931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979919, 39.985188, 56.636230>,  <29.357416, 40.652206, 56.371906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979919, 39.985188, 56.636230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.331568, 40.044952, 56.817257>,  <29.542557, 40.080811, 56.925873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.331568, 40.044952, 56.817257>,  <28.979919, 39.985188, 56.636230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331568, 40.044952, 56.817257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436202, -0.130347, 0.890358,
		0.192024, -0.980145, -0.049416,
		0.879122, 0.149415, 0.452571,
		29.595304, 40.089775, 56.953030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956867, 39.479897, 57.190201>,  <28.979919, 39.985188, 56.636230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956867, 39.479897, 57.190201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259464, 39.721825, 57.289730>,  <29.441023, 39.866982, 57.349449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259464, 39.721825, 57.289730>,  <28.956867, 39.479897, 57.190201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259464, 39.721825, 57.289730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278020, -0.046975, 0.959426,
		0.591966, -0.794978, 0.132615,
		0.756493, 0.604817, 0.248827,
		29.486412, 39.903271, 57.364380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406151, 39.227116, 57.718700>,  <28.956867, 39.479897, 57.190201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406151, 39.227116, 57.718700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468456, 39.620953, 57.750473>,  <29.505840, 39.857254, 57.769539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468456, 39.620953, 57.750473>,  <29.406151, 39.227116, 57.718700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468456, 39.620953, 57.750473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356242, -0.019010, 0.934200,
		0.921319, -0.173813, 0.347793,
		0.155765, 0.984595, 0.079434,
		29.515186, 39.916332, 57.774303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486116, 39.390625, 58.359940>,  <29.406151, 39.227116, 57.718700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486116, 39.390625, 58.359940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.443228, 39.781685, 58.287598>,  <29.417496, 40.016319, 58.244190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.443228, 39.781685, 58.287598>,  <29.486116, 39.390625, 58.359940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443228, 39.781685, 58.287598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488375, 0.106660, 0.866091,
		0.866022, 0.181189, 0.466023,
		-0.107220, 0.977647, -0.180858,
		29.411062, 40.074978, 58.233341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655514, 39.733898, 58.922085>,  <29.486116, 39.390625, 58.359940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655514, 39.733898, 58.922085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421633, 39.993431, 58.727299>,  <29.281303, 40.149151, 58.610428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421633, 39.993431, 58.727299>,  <29.655514, 39.733898, 58.922085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421633, 39.993431, 58.727299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418040, 0.273458, 0.866293,
		0.695244, 0.710097, 0.111346,
		-0.584704, 0.648832, -0.486969,
		29.246222, 40.188080, 58.581207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788164, 40.307922, 59.324104>,  <29.655514, 39.733898, 58.922085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788164, 40.307922, 59.324104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447453, 40.385677, 59.129501>,  <29.243027, 40.432331, 59.012741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447453, 40.385677, 59.129501>,  <29.788164, 40.307922, 59.324104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447453, 40.385677, 59.129501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416706, 0.311472, 0.854015,
		0.317542, 0.930161, -0.184304,
		-0.851777, 0.194385, -0.486509,
		29.191919, 40.443993, 58.983547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520906, 40.994549, 59.561310>,  <29.788164, 40.307922, 59.324104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520906, 40.994549, 59.561310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.211882, 40.777336, 59.429695>,  <29.026466, 40.647007, 59.350727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.211882, 40.777336, 59.429695>,  <29.520906, 40.994549, 59.561310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211882, 40.777336, 59.429695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511430, 0.225096, 0.829320,
		-0.376281, 0.808981, -0.451622,
		-0.772562, -0.543030, -0.329037,
		28.980112, 40.614426, 59.330982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969847, 41.388542, 59.753559>,  <29.520906, 40.994549, 59.561310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969847, 41.388542, 59.753559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803341, 41.033298, 59.675598>,  <28.703438, 40.820152, 59.628822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803341, 41.033298, 59.675598>,  <28.969847, 41.388542, 59.753559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803341, 41.033298, 59.675598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665821, 0.151757, 0.730515,
		-0.619199, 0.433858, -0.654492,
		-0.416264, -0.888108, -0.194904,
		28.678461, 40.766865, 59.617126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289190, 41.604069, 59.767384>,  <28.969847, 41.388542, 59.753559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289190, 41.604069, 59.767384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.306530, 41.211433, 59.841785>,  <28.316935, 40.975853, 59.886425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.306530, 41.211433, 59.841785>,  <28.289190, 41.604069, 59.767384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306530, 41.211433, 59.841785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474304, 0.143636, 0.868564,
		-0.879293, -0.125873, -0.459346,
		0.043350, -0.981593, 0.186001,
		28.319534, 40.916954, 59.897587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623590, 41.438354, 60.022442>,  <28.289190, 41.604069, 59.767384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623590, 41.438354, 60.022442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861856, 41.139252, 60.139774>,  <28.004816, 40.959789, 60.210175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861856, 41.139252, 60.139774>,  <27.623590, 41.438354, 60.022442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861856, 41.139252, 60.139774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535611, -0.097617, 0.838804,
		-0.598586, -0.656759, -0.458653,
		0.595664, -0.747756, 0.293335,
		28.040556, 40.914925, 60.227776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136002, 41.043255, 60.225868>,  <27.623590, 41.438354, 60.022442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136002, 41.043255, 60.225868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.472929, 40.942039, 60.416225>,  <27.675085, 40.881310, 60.530437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.472929, 40.942039, 60.416225>,  <27.136002, 41.043255, 60.225868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472929, 40.942039, 60.416225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505488, -0.064481, 0.860421,
		-0.187033, -0.965305, -0.182221,
		0.842319, -0.253037, 0.475890,
		27.725624, 40.866131, 60.558994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976063, 40.438061, 60.649677>,  <27.136002, 41.043255, 60.225868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976063, 40.438061, 60.649677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.315607, 40.570339, 60.814636>,  <27.519335, 40.649708, 60.913612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.315607, 40.570339, 60.814636>,  <26.976063, 40.438061, 60.649677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315607, 40.570339, 60.814636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392916, -0.127172, 0.910738,
		0.353626, -0.935128, 0.021985,
		0.848862, 0.330699, 0.412398,
		27.570265, 40.669548, 60.938354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971844, 39.882095, 60.126240>,  <26.976063, 40.438061, 60.649677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971844, 39.882095, 60.126240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688227, 39.616413, 60.220970>,  <26.518057, 39.457005, 60.277809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.688227, 39.616413, 60.220970>,  <26.971844, 39.882095, 60.126240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688227, 39.616413, 60.220970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040810, -0.373929, -0.926559,
		0.703982, -0.647307, 0.292239,
		-0.709045, -0.664207, 0.236822,
		26.475513, 39.417152, 60.292015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216234, 39.275990, 59.748569>,  <26.971844, 39.882095, 60.126240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216234, 39.275990, 59.748569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.850304, 39.154205, 59.854702>,  <26.630745, 39.081135, 59.918381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.850304, 39.154205, 59.854702>,  <27.216234, 39.275990, 59.748569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850304, 39.154205, 59.854702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055549, -0.745620, -0.664052,
		0.400012, -0.592753, 0.699024,
		-0.914825, -0.304459, 0.265330,
		26.575855, 39.062866, 59.934299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312630, 38.560917, 60.005531>,  <27.216234, 39.275990, 59.748569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312630, 38.560917, 60.005531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.956087, 38.654865, 59.850449>,  <26.742161, 38.711235, 59.757401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.956087, 38.654865, 59.850449>,  <27.312630, 38.560917, 60.005531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956087, 38.654865, 59.850449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136168, -0.677054, -0.723227,
		-0.432364, -0.697447, 0.571515,
		-0.891358, 0.234875, -0.387704,
		26.688679, 38.725327, 59.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178480, 38.008987, 59.630138>,  <27.312630, 38.560917, 60.005531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178480, 38.008987, 59.630138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870037, 38.231647, 59.506508>,  <26.684971, 38.365246, 59.432331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.870037, 38.231647, 59.506508>,  <27.178480, 38.008987, 59.630138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870037, 38.231647, 59.506508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099024, -0.584375, -0.805420,
		-0.628958, -0.590459, 0.505737,
		-0.771107, 0.556655, -0.309078,
		26.638704, 38.398643, 59.413784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757244, 37.580711, 59.352886>,  <27.178480, 38.008987, 59.630138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757244, 37.580711, 59.352886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641682, 37.934616, 59.206612>,  <26.572344, 38.146957, 59.118847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.641682, 37.934616, 59.206612>,  <26.757244, 37.580711, 59.352886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641682, 37.934616, 59.206612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008947, -0.384457, -0.923099,
		-0.957315, -0.263419, 0.118988,
		-0.288908, 0.884762, -0.365690,
		26.555010, 38.200043, 59.096905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082932, 37.518867, 58.959618>,  <26.757244, 37.580711, 59.352886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082932, 37.518867, 58.959618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.303370, 37.822777, 58.821609>,  <26.435633, 38.005123, 58.738804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.303370, 37.822777, 58.821609>,  <26.082932, 37.518867, 58.959618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303370, 37.822777, 58.821609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076888, -0.457951, -0.885646,
		-0.830892, 0.461548, -0.310792,
		0.551095, 0.759773, -0.345020,
		26.468699, 38.050709, 58.718102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892704, 37.554279, 58.244308>,  <26.082932, 37.518867, 58.959618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892704, 37.554279, 58.244308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.224133, 37.775589, 58.278622>,  <26.422989, 37.908375, 58.299210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.224133, 37.775589, 58.278622>,  <25.892704, 37.554279, 58.244308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224133, 37.775589, 58.278622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303728, -0.315466, -0.899016,
		-0.470340, 0.770953, -0.429431,
		0.828571, 0.553274, 0.085784,
		26.472704, 37.941570, 58.304356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805546, 37.899590, 57.736660>,  <25.892704, 37.554279, 58.244308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805546, 37.899590, 57.736660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199869, 37.903542, 57.803692>,  <26.436462, 37.905910, 57.843910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.199869, 37.903542, 57.803692>,  <25.805546, 37.899590, 57.736660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199869, 37.903542, 57.803692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164572, -0.253872, -0.953134,
		0.033131, 0.967187, -0.251894,
		0.985809, 0.009876, 0.167583,
		26.495611, 37.906506, 57.853966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168480, 38.338882, 57.189518>,  <25.805546, 37.899590, 57.736660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168480, 38.338882, 57.189518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.442392, 38.098827, 57.354885>,  <26.606739, 37.954796, 57.454105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.442392, 38.098827, 57.354885>,  <26.168480, 38.338882, 57.189518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442392, 38.098827, 57.354885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289778, -0.296278, -0.910081,
		0.668659, 0.743004, -0.028979,
		0.684780, -0.600136, 0.413416,
		26.647827, 37.918785, 57.478909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758390, 38.394413, 56.753845>,  <26.168480, 38.338882, 57.189518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758390, 38.394413, 56.753845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.859812, 38.065205, 56.957157>,  <26.920664, 37.867680, 57.079144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.859812, 38.065205, 56.957157>,  <26.758390, 38.394413, 56.753845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859812, 38.065205, 56.957157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458841, -0.360247, -0.812211,
		0.851573, 0.439158, 0.286294,
		0.253552, -0.823020, 0.508281,
		26.935877, 37.818298, 57.109642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434191, 38.330154, 56.574718>,  <26.758390, 38.394413, 56.753845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434191, 38.330154, 56.574718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.307938, 37.967770, 56.687580>,  <27.232185, 37.750340, 56.755295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.307938, 37.967770, 56.687580>,  <27.434191, 38.330154, 56.574718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307938, 37.967770, 56.687580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482159, -0.409231, -0.774631,
		0.817251, -0.108456, 0.565984,
		-0.315631, -0.905962, 0.282152,
		27.213247, 37.695980, 56.772224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999390, 37.947330, 56.357380>,  <27.434191, 38.330154, 56.574718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999390, 37.947330, 56.357380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.707561, 37.680073, 56.415771>,  <27.532465, 37.519718, 56.450806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.707561, 37.680073, 56.415771>,  <27.999390, 37.947330, 56.357380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707561, 37.680073, 56.415771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261405, -0.469673, -0.843252,
		0.631976, -0.577054, 0.517316,
		-0.729571, -0.668144, 0.145977,
		27.488689, 37.479630, 56.459564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112844, 37.210400, 56.403484>,  <27.999390, 37.947330, 56.357380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112844, 37.210400, 56.403484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768221, 37.292202, 56.217628>,  <27.561447, 37.341286, 56.106113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.768221, 37.292202, 56.217628>,  <28.112844, 37.210400, 56.403484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768221, 37.292202, 56.217628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371185, -0.370610, -0.851393,
		-0.346319, -0.905993, 0.243391,
		-0.861560, 0.204510, -0.464640,
		27.509752, 37.353554, 56.078236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903503, 36.544598, 56.162094>,  <28.112844, 37.210400, 56.403484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903503, 36.544598, 56.162094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.744890, 36.841900, 55.946564>,  <27.649721, 37.020279, 55.817245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.744890, 36.841900, 55.946564>,  <27.903503, 36.544598, 56.162094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744890, 36.841900, 55.946564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359438, -0.414389, -0.836114,
		-0.844728, -0.525223, -0.102834,
		-0.396534, 0.743251, -0.538831,
		27.625931, 37.064877, 55.784916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059843, 36.330112, 55.470169>,  <27.903503, 36.544598, 56.162094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059843, 36.330112, 55.470169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864492, 36.668610, 55.384979>,  <27.747282, 36.871708, 55.333866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.864492, 36.668610, 55.384979>,  <28.059843, 36.330112, 55.470169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864492, 36.668610, 55.384979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432316, 0.022625, -0.901439,
		-0.758017, -0.532316, -0.376894,
		-0.488378, 0.846243, -0.212978,
		27.717979, 36.922482, 55.321087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782654, 36.242889, 54.899044>,  <28.059843, 36.330112, 55.470169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782654, 36.242889, 54.899044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.845312, 36.636700, 54.930454>,  <27.882908, 36.872986, 54.949299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.845312, 36.636700, 54.930454>,  <27.782654, 36.242889, 54.899044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845312, 36.636700, 54.930454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584116, -0.028237, -0.811179,
		-0.796411, 0.172936, -0.579502,
		0.156645, 0.984528, 0.078526,
		27.892305, 36.932056, 54.954014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752453, 36.559818, 54.161430>,  <27.782654, 36.242889, 54.899044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752453, 36.559818, 54.161430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931650, 36.840973, 54.382431>,  <28.039169, 37.009666, 54.515030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.931650, 36.840973, 54.382431>,  <27.752453, 36.559818, 54.161430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931650, 36.840973, 54.382431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587628, 0.234244, -0.774482,
		-0.673791, 0.671627, -0.308095,
		0.447994, 0.702884, 0.552499,
		28.066048, 37.051838, 54.548180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723099, 37.201340, 53.739899>,  <27.752453, 36.559818, 54.161430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723099, 37.201340, 53.739899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.015814, 37.233845, 54.010567>,  <28.191442, 37.253349, 54.172966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.015814, 37.233845, 54.010567>,  <27.723099, 37.201340, 53.739899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015814, 37.233845, 54.010567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633259, 0.285940, -0.719181,
		-0.251931, 0.954795, 0.157787,
		0.731788, 0.081264, 0.676670,
		28.235350, 37.258224, 54.213566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004553, 37.935143, 53.713100>,  <27.723099, 37.201340, 53.739899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004553, 37.935143, 53.713100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285872, 37.695576, 53.866291>,  <28.454662, 37.551834, 53.958206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285872, 37.695576, 53.866291>,  <28.004553, 37.935143, 53.713100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285872, 37.695576, 53.866291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637310, 0.292492, -0.712941,
		0.314979, 0.745481, 0.587407,
		0.703295, -0.598921, 0.382973,
		28.496861, 37.515900, 53.981182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586098, 38.325703, 53.549751>,  <28.004553, 37.935143, 53.713100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586098, 38.325703, 53.549751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719316, 37.961220, 53.646729>,  <28.799248, 37.742531, 53.704914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.719316, 37.961220, 53.646729>,  <28.586098, 38.325703, 53.549751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719316, 37.961220, 53.646729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644640, 0.032393, -0.763800,
		0.688128, 0.410669, 0.598190,
		0.333046, -0.911209, 0.242443,
		28.819231, 37.687859, 53.719463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279308, 38.401482, 53.417233>,  <28.586098, 38.325703, 53.549751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279308, 38.401482, 53.417233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212307, 38.007328, 53.429684>,  <29.172106, 37.770836, 53.437153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.212307, 38.007328, 53.429684>,  <29.279308, 38.401482, 53.417233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212307, 38.007328, 53.429684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707699, -0.142161, -0.692063,
		0.686370, -0.093896, 0.721165,
		-0.167504, -0.985380, 0.031125,
		29.162056, 37.711716, 53.439022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941092, 38.191105, 53.417892>,  <29.279308, 38.401482, 53.417233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941092, 38.191105, 53.417892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.688440, 37.912758, 53.281181>,  <29.536850, 37.745750, 53.199154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.688440, 37.912758, 53.281181>,  <29.941092, 38.191105, 53.417892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688440, 37.912758, 53.281181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542138, -0.081311, -0.836347,
		0.554196, -0.713552, 0.428615,
		-0.631628, -0.695868, -0.341781,
		29.498951, 37.703999, 53.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385443, 37.609421, 53.096138>,  <29.941092, 38.191105, 53.417892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385443, 37.609421, 53.096138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022102, 37.550312, 52.939644>,  <29.804098, 37.514847, 52.845749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.022102, 37.550312, 52.939644>,  <30.385443, 37.609421, 53.096138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022102, 37.550312, 52.939644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418182, -0.332270, -0.845411,
		-0.005064, -0.931536, 0.363614,
		-0.908349, -0.147775, -0.391234,
		29.749598, 37.505981, 52.822273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427032, 36.983814, 52.666889>,  <30.385443, 37.609421, 53.096138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427032, 36.983814, 52.666889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092066, 37.150829, 52.525810>,  <29.891085, 37.251038, 52.441162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092066, 37.150829, 52.525810>,  <30.427032, 36.983814, 52.666889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092066, 37.150829, 52.525810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146569, -0.450109, -0.880863,
		-0.526546, -0.789343, 0.315731,
		-0.837416, 0.417539, -0.352697,
		29.840841, 37.276089, 52.420002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038868, 36.549168, 52.276146>,  <30.427032, 36.983814, 52.666889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038868, 36.549168, 52.276146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.911938, 36.907722, 52.152348>,  <29.835779, 37.122856, 52.078068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.911938, 36.907722, 52.152348>,  <30.038868, 36.549168, 52.276146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911938, 36.907722, 52.152348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075149, -0.301570, -0.950478,
		-0.945335, -0.324869, 0.028333,
		-0.317325, 0.896390, -0.309498,
		29.816740, 37.176640, 52.059498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539536, 36.401909, 51.895142>,  <30.038868, 36.549168, 52.276146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539536, 36.401909, 51.895142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643333, 36.772846, 51.787296>,  <29.705612, 36.995411, 51.722588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643333, 36.772846, 51.787296>,  <29.539536, 36.401909, 51.895142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643333, 36.772846, 51.787296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101815, -0.303895, -0.947249,
		-0.960363, 0.218354, -0.173276,
		0.259494, 0.927345, -0.269618,
		29.721182, 37.051048, 51.706409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116392, 36.613457, 51.279560>,  <29.539536, 36.401909, 51.895142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116392, 36.613457, 51.279560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.417929, 36.875881, 51.265087>,  <29.598850, 37.033337, 51.256405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.417929, 36.875881, 51.265087>,  <29.116392, 36.613457, 51.279560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417929, 36.875881, 51.265087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197725, -0.279014, -0.939711,
		-0.626603, 0.701237, -0.340052,
		0.753839, 0.656062, -0.036179,
		29.644081, 37.072701, 51.254234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930031, 37.024963, 50.715969>,  <29.116392, 36.613457, 51.279560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930031, 37.024963, 50.715969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325569, 37.051582, 50.769276>,  <29.562891, 37.067554, 50.801258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.325569, 37.051582, 50.769276>,  <28.930031, 37.024963, 50.715969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325569, 37.051582, 50.769276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148280, -0.354487, -0.923229,
		-0.014194, 0.932690, -0.360399,
		0.988844, 0.066544, 0.133267,
		29.622223, 37.071545, 50.809258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142878, 37.124317, 49.998863>,  <28.930031, 37.024963, 50.715969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142878, 37.124317, 49.998863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488480, 37.034843, 50.179291>,  <29.695841, 36.981159, 50.287548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488480, 37.034843, 50.179291>,  <29.142878, 37.124317, 49.998863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488480, 37.034843, 50.179291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385650, -0.281944, -0.878511,
		0.323682, 0.932992, -0.157339,
		0.864005, -0.223681, 0.451069,
		29.747681, 36.967739, 50.314610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703461, 37.411819, 49.585747>,  <29.142878, 37.124317, 49.998863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703461, 37.411819, 49.585747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867193, 37.109657, 49.790417>,  <29.965433, 36.928360, 49.913219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867193, 37.109657, 49.790417>,  <29.703461, 37.411819, 49.585747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867193, 37.109657, 49.790417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344140, -0.391551, -0.853379,
		0.844994, 0.525402, 0.099692,
		0.409332, -0.755408, 0.511670,
		29.989992, 36.883034, 49.943916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520061, 37.358105, 49.288830>,  <29.703461, 37.411819, 49.585747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520061, 37.358105, 49.288830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407291, 37.020592, 49.471497>,  <30.339630, 36.818085, 49.581097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407291, 37.020592, 49.471497>,  <30.520061, 37.358105, 49.288830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407291, 37.020592, 49.471497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470624, -0.536402, -0.700562,
		0.836081, 0.017415, 0.548329,
		-0.281924, -0.843783, 0.456671,
		30.322714, 36.767456, 49.608498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166088, 36.926914, 49.298531>,  <30.520061, 37.358105, 49.288830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166088, 36.926914, 49.298531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843342, 36.695095, 49.344296>,  <30.649694, 36.556004, 49.371754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843342, 36.695095, 49.344296>,  <31.166088, 36.926914, 49.298531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843342, 36.695095, 49.344296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463759, -0.741409, -0.485016,
		0.365918, -0.338283, 0.866988,
		-0.806865, -0.579550, 0.114414,
		30.601282, 36.521229, 49.378620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509989, 36.328892, 49.369293>,  <31.166088, 36.926914, 49.298531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509989, 36.328892, 49.369293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147379, 36.207508, 49.251907>,  <30.929813, 36.134678, 49.181477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147379, 36.207508, 49.251907>,  <31.509989, 36.328892, 49.369293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147379, 36.207508, 49.251907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409718, -0.799931, -0.438453,
		-0.101701, -0.517708, 0.849491,
		-0.906525, -0.303461, -0.293468,
		30.875422, 36.116470, 49.163868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572620, 35.702923, 49.542027>,  <31.509989, 36.328892, 49.369293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572620, 35.702923, 49.542027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284143, 35.706367, 49.264954>,  <31.111057, 35.708435, 49.098709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.284143, 35.706367, 49.264954>,  <31.572620, 35.702923, 49.542027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284143, 35.706367, 49.264954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422369, -0.787093, -0.449543,
		-0.549075, -0.616774, 0.564009,
		-0.721194, 0.008613, -0.692679,
		31.067785, 35.708950, 49.057148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317373, 34.998276, 49.470997>,  <31.572620, 35.702923, 49.542027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317373, 34.998276, 49.470997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201704, 35.143929, 49.116871>,  <31.132301, 35.231319, 48.904396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201704, 35.143929, 49.116871>,  <31.317373, 34.998276, 49.470997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201704, 35.143929, 49.116871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485080, -0.741560, -0.463451,
		-0.825273, -0.563468, 0.037807,
		-0.289175, 0.364134, -0.885316,
		31.114952, 35.253170, 48.851276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010138, 34.434780, 49.041615>,  <31.317373, 34.998276, 49.470997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010138, 34.434780, 49.041615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094715, 34.726196, 48.780991>,  <31.145462, 34.901047, 48.624619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.094715, 34.726196, 48.780991>,  <31.010138, 34.434780, 49.041615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094715, 34.726196, 48.780991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422802, -0.669208, -0.611064,
		-0.881209, -0.146273, -0.449527,
		0.211445, 0.728536, -0.651556,
		31.158148, 34.944756, 48.585526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936592, 34.082333, 48.342968>,  <31.010138, 34.434780, 49.041615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936592, 34.082333, 48.342968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164595, 34.399410, 48.256500>,  <31.301395, 34.589657, 48.204620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164595, 34.399410, 48.256500>,  <30.936592, 34.082333, 48.342968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164595, 34.399410, 48.256500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507218, -0.546459, -0.666417,
		-0.646393, 0.270217, -0.713554,
		0.570005, 0.792695, -0.216168,
		31.335596, 34.637218, 48.191650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911470, 34.154602, 47.661274>,  <30.936592, 34.082333, 48.342968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911470, 34.154602, 47.661274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238749, 34.320454, 47.820591>,  <31.435116, 34.419964, 47.916180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238749, 34.320454, 47.820591>,  <30.911470, 34.154602, 47.661274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238749, 34.320454, 47.820591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566180, -0.460607, -0.683580,
		-0.099976, 0.784808, -0.611622,
		0.818196, 0.414630, 0.398293,
		31.484207, 34.444843, 47.940079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436420, 34.171391, 47.060127>,  <30.911470, 34.154602, 47.661274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436420, 34.171391, 47.060127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664631, 34.267838, 47.374161>,  <31.801558, 34.325706, 47.562584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664631, 34.267838, 47.374161>,  <31.436420, 34.171391, 47.060127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664631, 34.267838, 47.374161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695906, -0.649570, -0.306224,
		0.436135, 0.721057, -0.538389,
		0.570526, 0.241113, 0.785089,
		31.835789, 34.340172, 47.609688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997646, 34.261547, 46.735249>,  <31.436420, 34.171391, 47.060127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997646, 34.261547, 46.735249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117065, 34.236504, 47.116184>,  <32.188717, 34.221478, 47.344746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117065, 34.236504, 47.116184>,  <31.997646, 34.261547, 46.735249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117065, 34.236504, 47.116184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697449, -0.666835, -0.262480,
		0.651486, 0.742571, -0.155417,
		0.298548, -0.062607, 0.952339,
		32.206631, 34.217720, 47.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722153, 34.436047, 46.748379>,  <31.997646, 34.261547, 46.735249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722153, 34.436047, 46.748379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661812, 34.208492, 47.071762>,  <32.625607, 34.071960, 47.265793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661812, 34.208492, 47.071762>,  <32.722153, 34.436047, 46.748379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661812, 34.208492, 47.071762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633421, -0.683504, -0.362767,
		0.758960, 0.457371, 0.463455,
		-0.150854, -0.568888, 0.808461,
		32.616554, 34.037827, 47.314301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360550, 34.455811, 47.075882>,  <32.722153, 34.436047, 46.748379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360550, 34.455811, 47.075882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153713, 34.151875, 47.233494>,  <33.029613, 33.969513, 47.328060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153713, 34.151875, 47.233494>,  <33.360550, 34.455811, 47.075882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153713, 34.151875, 47.233494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728328, -0.632427, -0.263769,
		0.449619, 0.150592, 0.880434,
		-0.517089, -0.759840, 0.394032,
		32.998585, 33.923923, 47.351704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675255, 34.033092, 47.682678>,  <33.360550, 34.455811, 47.075882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675255, 34.033092, 47.682678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443157, 33.793465, 47.461975>,  <33.303898, 33.649689, 47.329556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443157, 33.793465, 47.461975>,  <33.675255, 34.033092, 47.682678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443157, 33.793465, 47.461975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780674, -0.602162, -0.167181,
		-0.232091, -0.527745, 0.817080,
		-0.580243, -0.599072, -0.551753,
		33.269085, 33.613743, 47.296448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753174, 33.361137, 47.874352>,  <33.675255, 34.033092, 47.682678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753174, 33.361137, 47.874352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657986, 33.421528, 47.490566>,  <33.600872, 33.457764, 47.260296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657986, 33.421528, 47.490566>,  <33.753174, 33.361137, 47.874352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657986, 33.421528, 47.490566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842868, -0.458778, -0.281242,
		-0.482643, -0.875630, -0.018078,
		-0.237970, 0.150977, -0.959467,
		33.586594, 33.466820, 47.202724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890186, 32.715794, 47.984329>,  <33.753174, 33.361137, 47.874352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890186, 32.715794, 47.984329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012863, 32.623039, 47.615078>,  <34.086472, 32.567387, 47.393528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012863, 32.623039, 47.615078>,  <33.890186, 32.715794, 47.984329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012863, 32.623039, 47.615078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951149, 0.038601, 0.306309,
		-0.035396, -0.971976, 0.232401,
		0.306696, -0.231890, -0.923128,
		34.104874, 32.553471, 47.338139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446918, 32.188030, 47.989914>,  <33.890186, 32.715794, 47.984329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446918, 32.188030, 47.989914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489582, 32.396946, 47.651485>,  <34.515179, 32.522297, 47.448429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489582, 32.396946, 47.651485>,  <34.446918, 32.188030, 47.989914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489582, 32.396946, 47.651485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956640, 0.178058, 0.230512,
		0.271044, -0.833971, -0.480654,
		0.106656, 0.522291, -0.846071,
		34.521580, 32.553635, 47.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004395, 31.915304, 47.494579>,  <34.446918, 32.188030, 47.989914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004395, 31.915304, 47.494579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932785, 32.307041, 47.532177>,  <34.889820, 32.542084, 47.554733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932785, 32.307041, 47.532177>,  <35.004395, 31.915304, 47.494579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932785, 32.307041, 47.532177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920045, 0.132809, 0.368616,
		0.348520, 0.152469, -0.924817,
		-0.179026, 0.979344, 0.093992,
		34.879078, 32.600845, 47.560375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520439, 32.337711, 47.154011>,  <35.004395, 31.915304, 47.494579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520439, 32.337711, 47.154011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352524, 32.551014, 47.447788>,  <35.251774, 32.678997, 47.624054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.352524, 32.551014, 47.447788>,  <35.520439, 32.337711, 47.154011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352524, 32.551014, 47.447788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907265, 0.223836, 0.356045,
		0.025469, 0.815801, -0.577772,
		-0.419788, 0.533260, 0.734446,
		35.226589, 32.710991, 47.668121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791988, 32.938530, 47.091572>,  <35.520439, 32.337711, 47.154011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791988, 32.938530, 47.091572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676361, 32.900471, 47.472599>,  <35.606987, 32.877636, 47.701214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676361, 32.900471, 47.472599>,  <35.791988, 32.938530, 47.091572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676361, 32.900471, 47.472599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926990, 0.220622, 0.303340,
		-0.239020, 0.970707, 0.024426,
		-0.289065, -0.095147, 0.952569,
		35.589642, 32.871925, 47.758369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003227, 33.550083, 47.562439>,  <35.791988, 32.938530, 47.091572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003227, 33.550083, 47.562439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964119, 33.234669, 47.805305>,  <35.940655, 33.045422, 47.951027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964119, 33.234669, 47.805305>,  <36.003227, 33.550083, 47.562439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964119, 33.234669, 47.805305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839396, 0.262423, 0.475971,
		-0.534655, 0.556190, 0.636236,
		-0.097767, -0.788534, 0.607170,
		35.934788, 32.998108, 47.987457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180515, 33.764168, 48.248043>,  <36.003227, 33.550083, 47.562439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180515, 33.764168, 48.248043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229530, 33.367233, 48.254471>,  <36.258942, 33.129074, 48.258327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229530, 33.367233, 48.254471>,  <36.180515, 33.764168, 48.248043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229530, 33.367233, 48.254471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826516, 0.111002, 0.551861,
		-0.549414, -0.054344, 0.833782,
		0.122542, -0.992333, 0.016070,
		36.266293, 33.069534, 48.259293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402081, 33.731354, 48.870895>,  <36.180515, 33.764168, 48.248043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402081, 33.731354, 48.870895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495529, 33.375839, 48.713169>,  <36.551598, 33.162529, 48.618534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495529, 33.375839, 48.713169>,  <36.402081, 33.731354, 48.870895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495529, 33.375839, 48.713169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882599, 0.023685, 0.469531,
		-0.407972, -0.457711, 0.789974,
		0.233620, -0.888785, -0.394313,
		36.565617, 33.109203, 48.594875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646339, 33.288292, 49.516399>,  <36.402081, 33.731354, 48.870895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646339, 33.288292, 49.516399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793983, 33.074310, 49.212406>,  <36.882568, 32.945923, 49.030010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793983, 33.074310, 49.212406>,  <36.646339, 33.288292, 49.516399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793983, 33.074310, 49.212406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896645, -0.010158, 0.442633,
		-0.244508, -0.844819, 0.475916,
		0.369110, -0.534956, -0.759987,
		36.904716, 32.913822, 48.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928005, 32.824535, 49.839996>,  <36.646339, 33.288292, 49.516399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928005, 32.824535, 49.839996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090885, 32.846088, 49.475296>,  <37.188614, 32.859020, 49.256477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090885, 32.846088, 49.475296>,  <36.928005, 32.824535, 49.839996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090885, 32.846088, 49.475296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911928, -0.079473, 0.402580,
		-0.050767, -0.995379, -0.081499,
		0.407197, 0.053883, -0.911750,
		37.213043, 32.862251, 49.201771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396290, 32.264595, 49.880634>,  <36.928005, 32.824535, 49.839996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396290, 32.264595, 49.880634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513279, 32.498966, 49.578339>,  <37.583473, 32.639591, 49.396961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513279, 32.498966, 49.578339>,  <37.396290, 32.264595, 49.880634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513279, 32.498966, 49.578339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945240, -0.057429, 0.321285,
		0.144850, -0.808322, -0.570643,
		0.292473, 0.585933, -0.755740,
		37.601021, 32.674747, 49.351616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876751, 31.921898, 49.637295>,  <37.396290, 32.264595, 49.880634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876751, 31.921898, 49.637295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934502, 32.303303, 49.531487>,  <37.969151, 32.532146, 49.468002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934502, 32.303303, 49.531487>,  <37.876751, 31.921898, 49.637295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934502, 32.303303, 49.531487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931749, -0.040989, 0.360782,
		0.333167, -0.298556, -0.894351,
		0.144372, 0.953511, -0.264523,
		37.977814, 32.589355, 49.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467255, 31.970118, 49.116928>,  <37.876751, 31.921898, 49.637295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467255, 31.970118, 49.116928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432835, 32.334156, 49.279072>,  <38.412182, 32.552578, 49.376358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432835, 32.334156, 49.279072>,  <38.467255, 31.970118, 49.116928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432835, 32.334156, 49.279072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935433, -0.066222, 0.347246,
		0.342872, 0.409068, -0.845637,
		-0.086048, 0.910098, 0.405362,
		38.407021, 32.607185, 49.400681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134117, 32.290516, 48.960270>,  <38.467255, 31.970118, 49.116928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134117, 32.290516, 48.960270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968052, 32.488087, 49.265865>,  <38.868412, 32.606628, 49.449223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.968052, 32.488087, 49.265865>,  <39.134117, 32.290516, 48.960270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968052, 32.488087, 49.265865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896159, 0.077434, 0.436925,
		0.156651, 0.866047, -0.474787,
		-0.415162, 0.493929, 0.763986,
		38.843502, 32.636265, 49.495060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710190, 32.505764, 48.472321>,  <39.134117, 32.290516, 48.960270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710190, 32.505764, 48.472321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860374, 32.685719, 48.148190>,  <39.950485, 32.793690, 47.953709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860374, 32.685719, 48.148190>,  <39.710190, 32.505764, 48.472321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860374, 32.685719, 48.148190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745144, 0.373407, 0.552565,
		0.551172, -0.811279, -0.195028,
		0.375460, 0.449882, -0.810331,
		39.973011, 32.820683, 47.905090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398914, 32.591385, 48.616440>,  <39.710190, 32.505764, 48.472321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398914, 32.591385, 48.616440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339531, 32.850216, 48.317307>,  <40.303902, 33.005512, 48.137825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.339531, 32.850216, 48.317307>,  <40.398914, 32.591385, 48.616440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339531, 32.850216, 48.317307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804571, 0.518728, 0.289114,
		0.574999, -0.558762, -0.597629,
		-0.148461, 0.647075, -0.747832,
		40.294994, 33.044338, 48.092957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026775, 32.541306, 48.189400>,  <40.398914, 32.591385, 48.616440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026775, 32.541306, 48.189400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820400, 32.882687, 48.218861>,  <40.696575, 33.087517, 48.236538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.820400, 32.882687, 48.218861>,  <41.026775, 32.541306, 48.189400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820400, 32.882687, 48.218861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781696, 0.433901, 0.447974,
		0.350365, 0.288704, -0.891007,
		-0.515941, 0.853452, 0.073655,
		40.665619, 33.138721, 48.240955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539322, 33.057999, 48.061642>,  <41.026775, 32.541306, 48.189400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539322, 33.057999, 48.061642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232723, 33.260624, 48.219566>,  <41.048763, 33.382198, 48.314323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232723, 33.260624, 48.219566>,  <41.539322, 33.057999, 48.061642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232723, 33.260624, 48.219566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632979, 0.699891, 0.330893,
		-0.108710, 0.503539, -0.857106,
		-0.766498, 0.506559, 0.394815,
		41.002773, 33.412590, 48.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131062, 32.733822, 48.156651>,  <41.539322, 33.057999, 48.061642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131062, 32.733822, 48.156651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221962, 32.632710, 47.780468>,  <42.276505, 32.572041, 47.554760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221962, 32.632710, 47.780468>,  <42.131062, 32.733822, 48.156651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221962, 32.632710, 47.780468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518203, -0.786255, 0.336554,
		-0.824513, -0.563830, -0.047688,
		0.227255, -0.252781, -0.940456,
		42.290138, 32.556877, 47.498333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819511, 31.983246, 47.872738>,  <42.131062, 32.733822, 48.156651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819511, 31.983246, 47.872738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173729, 32.105835, 47.733093>,  <42.386261, 32.179390, 47.649307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173729, 32.105835, 47.733093>,  <41.819511, 31.983246, 47.872738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173729, 32.105835, 47.733093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438307, -0.800215, 0.409320,
		-0.153919, -0.515491, -0.842958,
		0.885548, 0.306472, -0.349112,
		42.439392, 32.197777, 47.628361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030998, 31.388418, 47.386398>,  <41.819511, 31.983246, 47.872738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030998, 31.388418, 47.386398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.321194, 31.615656, 47.541798>,  <42.495312, 31.751999, 47.635036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.321194, 31.615656, 47.541798>,  <42.030998, 31.388418, 47.386398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321194, 31.615656, 47.541798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286043, -0.762320, 0.580558,
		0.625971, -0.310063, -0.715556,
		0.725492, 0.568093, 0.388499,
		42.538841, 31.786083, 47.658348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613590, 31.743597, 46.875591>,  <42.030998, 31.388418, 47.386398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613590, 31.743597, 46.875591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.213776, 31.735714, 46.884834>,  <41.973885, 31.730984, 46.890381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.213776, 31.735714, 46.884834>,  <42.613590, 31.743597, 46.875591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213776, 31.735714, 46.884834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027499, -0.910325, 0.412980,
		0.012900, 0.413425, 0.910447,
		-0.999539, -0.019709, 0.023112,
		41.913914, 31.729801, 46.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245686, 32.453583, 46.730297>,  <42.613590, 31.743597, 46.875591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245686, 32.453583, 46.730297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520752, 32.313976, 46.475643>,  <42.685791, 32.230213, 46.322849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.520752, 32.313976, 46.475643>,  <42.245686, 32.453583, 46.730297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520752, 32.313976, 46.475643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243974, 0.714795, -0.655396,
		0.683806, 0.606017, 0.406390,
		0.687667, -0.349015, -0.636634,
		42.727051, 32.209270, 46.284653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738140, 32.971172, 46.565601>,  <42.245686, 32.453583, 46.730297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738140, 32.971172, 46.565601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.654030, 32.727173, 46.260006>,  <42.603565, 32.580772, 46.076649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.654030, 32.727173, 46.260006>,  <42.738140, 32.971172, 46.565601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654030, 32.727173, 46.260006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298903, 0.784156, -0.543835,
		0.930828, 0.114005, -0.347220,
		-0.210274, -0.610002, -0.763991,
		42.590946, 32.544174, 46.030807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033165, 33.223877, 45.876316>,  <42.738140, 32.971172, 46.565601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033165, 33.223877, 45.876316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.695065, 33.012001, 45.848080>,  <42.492203, 32.884876, 45.831139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.695065, 33.012001, 45.848080>,  <43.033165, 33.223877, 45.876316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695065, 33.012001, 45.848080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427985, 0.750141, -0.504101,
		0.319966, -0.395881, -0.860755,
		-0.845252, -0.529686, -0.070588,
		42.441490, 32.853096, 45.826904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573093, 33.706429, 45.789089>,  <43.033165, 33.223877, 45.876316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573093, 33.706429, 45.789089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.310413, 33.468861, 45.603184>,  <42.152805, 33.326321, 45.491642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.310413, 33.468861, 45.603184>,  <42.573093, 33.706429, 45.789089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310413, 33.468861, 45.603184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401258, 0.796971, -0.451474,
		0.638537, -0.109997, -0.761690,
		-0.656705, -0.593917, -0.464759,
		42.113403, 33.290684, 45.463757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718967, 33.478210, 45.012035>,  <42.573093, 33.706429, 45.789089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718967, 33.478210, 45.012035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.329987, 33.517147, 45.096752>,  <42.096596, 33.540508, 45.147583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.329987, 33.517147, 45.096752>,  <42.718967, 33.478210, 45.012035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329987, 33.517147, 45.096752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039054, 0.827740, -0.559751,
		-0.229798, -0.552604, -0.801138,
		-0.972454, 0.097342, 0.211795,
		42.038250, 33.546349, 45.160290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329247, 33.710388, 44.445534>,  <42.718967, 33.478210, 45.012035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329247, 33.710388, 44.445534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081997, 33.852341, 44.726101>,  <41.933647, 33.937511, 44.894440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081997, 33.852341, 44.726101>,  <42.329247, 33.710388, 44.445534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081997, 33.852341, 44.726101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127715, 0.835100, -0.535067,
		-0.775639, -0.420318, -0.470868,
		-0.618120, 0.354882, 0.701417,
		41.896561, 33.958805, 44.936527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984985, 34.178017, 43.888420>,  <42.329247, 33.710388, 44.445534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984985, 34.178017, 43.888420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247395, 34.001167, 43.643745>,  <42.404839, 33.895058, 43.496941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.247395, 34.001167, 43.643745>,  <41.984985, 34.178017, 43.888420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247395, 34.001167, 43.643745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666016, 0.042139, -0.744746,
		0.355045, 0.895964, -0.266816,
		0.656023, -0.442123, -0.611688,
		42.444202, 33.868530, 43.460239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972366, 34.701031, 43.422516>,  <41.984985, 34.178017, 43.888420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972366, 34.701031, 43.422516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.074337, 34.331860, 43.307125>,  <42.135521, 34.110359, 43.237892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.074337, 34.331860, 43.307125>,  <41.972366, 34.701031, 43.422516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074337, 34.331860, 43.307125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506158, 0.126830, -0.853064,
		0.823902, 0.363487, -0.434813,
		0.254930, -0.922925, -0.288478,
		42.150818, 34.054981, 43.220581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230450, 34.658222, 42.709435>,  <41.972366, 34.701031, 43.422516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230450, 34.658222, 42.709435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071873, 34.298279, 42.782192>,  <41.976727, 34.082314, 42.825848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.071873, 34.298279, 42.782192>,  <42.230450, 34.658222, 42.709435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071873, 34.298279, 42.782192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376236, -0.021484, -0.926275,
		0.837426, -0.435648, -0.330043,
		-0.396439, -0.899860, 0.181898,
		41.952942, 34.028320, 42.836761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459461, 34.469921, 42.768978>,  <42.230450, 34.658222, 42.709435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459461, 34.469921, 42.768978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.510666, 34.717888, 42.459316>,  <41.541389, 34.866669, 42.273518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.510666, 34.717888, 42.459316>,  <41.459461, 34.469921, 42.768978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510666, 34.717888, 42.459316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685708, 0.619270, 0.382503,
		0.716532, 0.481883, 0.504351,
		0.128007, 0.619914, -0.774159,
		41.549068, 34.903862, 42.227070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558159, 35.197559, 43.078243>,  <41.459461, 34.469921, 42.768978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558159, 35.197559, 43.078243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437454, 35.186417, 42.697052>,  <41.365032, 35.179729, 42.468338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437454, 35.186417, 42.697052>,  <41.558159, 35.197559, 43.078243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437454, 35.186417, 42.697052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739796, 0.637345, 0.215623,
		0.601369, 0.770075, -0.212932,
		-0.301757, -0.027857, -0.952978,
		41.346928, 35.178059, 42.411160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274342, 35.795788, 42.996220>,  <41.558159, 35.197559, 43.078243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274342, 35.795788, 42.996220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116795, 35.605396, 42.681686>,  <41.022266, 35.491161, 42.492966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.116795, 35.605396, 42.681686>,  <41.274342, 35.795788, 42.996220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116795, 35.605396, 42.681686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770800, 0.637077, 0.000454,
		0.500736, 0.606281, -0.617809,
		-0.393867, -0.475979, -0.786328,
		40.998634, 35.462601, 42.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639149, 36.018482, 42.335148>,  <41.274342, 35.795788, 42.996220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639149, 36.018482, 42.335148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965279, 36.217266, 42.453995>,  <42.160957, 36.336536, 42.525303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965279, 36.217266, 42.453995>,  <41.639149, 36.018482, 42.335148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965279, 36.217266, 42.453995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565316, -0.572330, -0.594018,
		-0.125150, 0.652284, -0.747571,
		0.815325, 0.496955, 0.297119,
		42.209877, 36.366352, 42.543129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901455, 36.184219, 41.682255>,  <41.639149, 36.018482, 42.335148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901455, 36.184219, 41.682255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192856, 36.179466, 41.956230>,  <42.367699, 36.176617, 42.120617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.192856, 36.179466, 41.956230>,  <41.901455, 36.184219, 41.682255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192856, 36.179466, 41.956230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613103, -0.434715, -0.659642,
		0.305590, 0.900490, -0.309408,
		0.728505, -0.011881, 0.684937,
		42.411407, 36.175903, 42.161713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578529, 36.596741, 41.543556>,  <41.901455, 36.184219, 41.682255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578529, 36.596741, 41.543556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617653, 36.257462, 41.751789>,  <42.641125, 36.053894, 41.876728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617653, 36.257462, 41.751789>,  <42.578529, 36.596741, 41.543556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617653, 36.257462, 41.751789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666076, -0.332866, -0.667490,
		0.739444, 0.412029, 0.532405,
		0.097805, -0.848194, 0.520578,
		42.646996, 36.003002, 41.907963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257248, 36.340958, 41.367718>,  <42.578529, 36.596741, 41.543556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257248, 36.340958, 41.367718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.053726, 36.012318, 41.470551>,  <42.931614, 35.815132, 41.532249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.053726, 36.012318, 41.470551>,  <43.257248, 36.340958, 41.367718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053726, 36.012318, 41.470551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295824, -0.447304, -0.844042,
		0.808462, -0.353397, 0.470638,
		-0.508801, -0.821602, 0.257084,
		42.901085, 35.765839, 41.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950623, 36.301392, 41.338650>,  <43.257248, 36.340958, 41.367718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950623, 36.301392, 41.338650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722111, 35.980133, 41.270992>,  <43.585003, 35.787380, 41.230400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722111, 35.980133, 41.270992>,  <43.950623, 36.301392, 41.338650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722111, 35.980133, 41.270992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603597, -0.271464, -0.749652,
		0.556162, -0.530349, 0.639855,
		-0.571275, -0.803142, -0.169139,
		43.550728, 35.739189, 41.220249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455639, 35.791634, 41.143059>,  <43.950623, 36.301392, 41.338650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455639, 35.791634, 41.143059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.092339, 35.681778, 41.016785>,  <43.874359, 35.615864, 40.941021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.092339, 35.681778, 41.016785>,  <44.455639, 35.791634, 41.143059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092339, 35.681778, 41.016785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396824, -0.326062, -0.858029,
		0.132713, -0.904577, 0.405128,
		-0.908250, -0.274636, -0.315685,
		43.819862, 35.599388, 40.922081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332832, 34.988121, 40.940208>,  <44.455639, 35.791634, 41.143059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332832, 34.988121, 40.940208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.103729, 35.247871, 40.740105>,  <43.966267, 35.403721, 40.620045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.103729, 35.247871, 40.740105>,  <44.332832, 34.988121, 40.940208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103729, 35.247871, 40.740105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456848, -0.253835, -0.852560,
		-0.680616, -0.716851, -0.151281,
		-0.572758, 0.649378, -0.500256,
		43.931900, 35.442684, 40.590027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890030, 34.738457, 40.389870>,  <44.332832, 34.988121, 40.940208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890030, 34.738457, 40.389870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.035648, 35.095161, 40.282368>,  <44.123020, 35.309185, 40.217865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.035648, 35.095161, 40.282368>,  <43.890030, 34.738457, 40.389870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035648, 35.095161, 40.282368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375193, -0.404518, -0.834023,
		-0.852469, 0.202785, -0.481846,
		0.364043, 0.891764, -0.268756,
		44.144859, 35.362690, 40.201740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659264, 34.910835, 39.673332>,  <43.890030, 34.738457, 40.389870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659264, 34.910835, 39.673332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.995415, 35.120026, 39.730255>,  <44.197105, 35.245541, 39.764408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.995415, 35.120026, 39.730255>,  <43.659264, 34.910835, 39.673332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995415, 35.120026, 39.730255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405646, -0.432764, -0.805088,
		-0.359460, 0.734307, -0.575832,
		0.840381, 0.522980, 0.142307,
		44.247528, 35.276920, 39.772945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002834, 35.388634, 39.119007>,  <43.659264, 34.910835, 39.673332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002834, 35.388634, 39.119007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.290352, 35.210880, 39.332870>,  <44.462864, 35.104229, 39.461189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.290352, 35.210880, 39.332870>,  <44.002834, 35.388634, 39.119007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290352, 35.210880, 39.332870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464727, -0.264850, -0.844916,
		0.517070, 0.855791, 0.016144,
		0.718795, -0.444383, 0.534655,
		44.505989, 35.077564, 39.493267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538841, 35.774666, 38.790157>,  <44.002834, 35.388634, 39.119007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538841, 35.774666, 38.790157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625153, 35.416897, 38.946846>,  <44.676937, 35.202236, 39.040859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.625153, 35.416897, 38.946846>,  <44.538841, 35.774666, 38.790157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625153, 35.416897, 38.946846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601045, -0.194500, -0.775187,
		0.769536, 0.402708, 0.495622,
		0.215775, -0.894425, 0.391720,
		44.689884, 35.148571, 39.064362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178432, 35.797977, 38.828926>,  <44.538841, 35.774666, 38.790157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178432, 35.797977, 38.828926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.065697, 35.415413, 38.798328>,  <44.998055, 35.185875, 38.779972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.065697, 35.415413, 38.798328>,  <45.178432, 35.797977, 38.828926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065697, 35.415413, 38.798328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457232, -0.063798, -0.887056,
		0.843507, -0.284983, 0.455281,
		-0.281842, -0.956407, -0.076489,
		44.981144, 35.128490, 38.775383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776287, 35.278397, 38.751392>,  <45.178432, 35.797977, 38.828926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776287, 35.278397, 38.751392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.430702, 35.233509, 38.555035>,  <45.223351, 35.206577, 38.437222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.430702, 35.233509, 38.555035>,  <45.776287, 35.278397, 38.751392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430702, 35.233509, 38.555035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476664, 0.132063, -0.869109,
		0.162354, -0.984869, -0.060610,
		-0.863963, -0.112213, -0.490892,
		45.171513, 35.199844, 38.407768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875565, 34.839359, 38.104305>,  <45.776287, 35.278397, 38.751392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875565, 34.839359, 38.104305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.531395, 35.037453, 38.056290>,  <45.324894, 35.156311, 38.027481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.531395, 35.037453, 38.056290>,  <45.875565, 34.839359, 38.104305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531395, 35.037453, 38.056290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143994, 0.010337, -0.989525,
		-0.488809, -0.868696, -0.080206,
		-0.860425, 0.495238, -0.120034,
		45.273266, 35.186024, 38.020279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916031, 34.883858, 37.409840>,  <45.875565, 34.839359, 38.104305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916031, 34.883858, 37.409840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.563030, 35.038948, 37.516323>,  <45.351231, 35.132004, 37.580212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.563030, 35.038948, 37.516323>,  <45.916031, 34.883858, 37.409840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563030, 35.038948, 37.516323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256235, 0.078271, -0.963440,
		-0.394389, -0.918445, 0.030276,
		-0.882497, 0.387728, 0.266207,
		45.298283, 35.155266, 37.596184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328396, 34.435699, 37.247723>,  <45.916031, 34.883858, 37.409840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328396, 34.435699, 37.247723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.262802, 34.830147, 37.237255>,  <45.223446, 35.066814, 37.230972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.262802, 34.830147, 37.237255>,  <45.328396, 34.435699, 37.247723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262802, 34.830147, 37.237255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319152, -0.078139, -0.944477,
		-0.933408, -0.146529, 0.327535,
		-0.163986, 0.986116, -0.026171,
		45.213608, 35.125980, 37.229404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751072, 34.201984, 36.621510>,  <45.328396, 34.435699, 37.247723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751072, 34.201984, 36.621510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.055614, 33.947178, 36.573254>,  <46.238338, 33.794296, 36.544300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.055614, 33.947178, 36.573254>,  <45.751072, 34.201984, 36.621510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055614, 33.947178, 36.573254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413138, 0.620093, -0.666934,
		0.499656, 0.457931, 0.735285,
		0.761355, -0.637012, -0.120644,
		46.284019, 33.756073, 36.537060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149639, 34.695602, 36.327332>,  <45.751072, 34.201984, 36.621510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149639, 34.695602, 36.327332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308784, 34.341431, 36.231239>,  <46.404274, 34.128925, 36.173584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.308784, 34.341431, 36.231239>,  <46.149639, 34.695602, 36.327332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308784, 34.341431, 36.231239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479439, 0.423913, -0.768399,
		0.782203, 0.190543, 0.593171,
		0.397866, -0.885433, -0.240232,
		46.428143, 34.075802, 36.159168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891560, 34.646984, 36.486267>,  <46.149639, 34.695602, 36.327332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891560, 34.646984, 36.486267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.738510, 34.469398, 36.162170>,  <46.646679, 34.362846, 35.967712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.738510, 34.469398, 36.162170>,  <46.891560, 34.646984, 36.486267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738510, 34.469398, 36.162170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605994, 0.541381, -0.582818,
		0.697403, -0.714001, 0.061898,
		-0.382623, -0.443969, -0.810241,
		46.623722, 34.336208, 35.919098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417370, 34.450035, 35.985943>,  <46.891560, 34.646984, 36.486267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417370, 34.450035, 35.985943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.082680, 34.472744, 35.768074>,  <46.881866, 34.486370, 35.637352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.082680, 34.472744, 35.768074>,  <47.417370, 34.450035, 35.985943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082680, 34.472744, 35.768074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508943, 0.447792, -0.735159,
		0.202167, -0.892333, -0.403571,
		-0.836723, 0.056770, -0.544676,
		46.831661, 34.489777, 35.604671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.642025, 34.191494, 35.232750>,  <47.417370, 34.450035, 35.985943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.642025, 34.191494, 35.232750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.322330, 34.430264, 35.260765>,  <47.130512, 34.573524, 35.277573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.322330, 34.430264, 35.260765>,  <47.642025, 34.191494, 35.232750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322330, 34.430264, 35.260765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344805, 0.550848, -0.760050,
		-0.492267, -0.583313, -0.646080,
		-0.799238, 0.596919, 0.070035,
		47.082558, 34.609341, 35.281776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.809250, 34.618237, 34.732235>,  <47.642025, 34.191494, 35.232750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.809250, 34.618237, 34.732235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498013, 34.835621, 34.858238>,  <47.311272, 34.966049, 34.933838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.498013, 34.835621, 34.858238>,  <47.809250, 34.618237, 34.732235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498013, 34.835621, 34.858238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217291, 0.703387, -0.676781,
		-0.589372, -0.458149, -0.665387,
		-0.778091, 0.543458, 0.315005,
		47.264584, 34.998657, 34.952740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.148483, 33.538277, 56.350937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.477003, 33.570469, 56.576851>,  <30.674116, 33.589783, 56.712399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.477003, 33.570469, 56.576851>,  <30.148483, 33.538277, 56.350937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477003, 33.570469, 56.576851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569165, -0.048036, -0.820819,
		-0.038931, 0.995598, -0.085259,
		0.821301, 0.080482, 0.564789,
		30.723394, 33.594612, 56.746288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616474, 33.980156, 56.022896>,  <30.148483, 33.538277, 56.350937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616474, 33.980156, 56.022896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.855089, 33.787624, 56.279789>,  <30.998259, 33.672104, 56.433926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.855089, 33.787624, 56.279789>,  <30.616474, 33.980156, 56.022896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855089, 33.787624, 56.279789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723689, -0.023393, -0.689729,
		0.347013, 0.876226, 0.334381,
		0.596536, -0.481333, 0.642233,
		31.034050, 33.643223, 56.472458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415590, 34.265812, 55.992470>,  <30.616474, 33.980156, 56.022896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415590, 34.265812, 55.992470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.466011, 33.907272, 56.162495>,  <31.496264, 33.692150, 56.264507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.466011, 33.907272, 56.162495>,  <31.415590, 34.265812, 55.992470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466011, 33.907272, 56.162495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751613, -0.193353, -0.630629,
		0.647448, 0.398971, 0.649333,
		0.126052, -0.896346, 0.425058,
		31.503826, 33.638367, 56.290012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205189, 34.270138, 55.995861>,  <31.415590, 34.265812, 55.992470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205189, 34.270138, 55.995861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.066799, 33.895008, 55.984612>,  <31.983767, 33.669930, 55.977863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.066799, 33.895008, 55.984612>,  <32.205189, 34.270138, 55.995861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066799, 33.895008, 55.984612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701214, -0.238535, -0.671863,
		0.623381, -0.252164, 0.740141,
		-0.345969, -0.937824, -0.028122,
		31.963009, 33.613663, 55.976173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834049, 33.866398, 55.853439>,  <32.205189, 34.270138, 55.995861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834049, 33.866398, 55.853439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535664, 33.611053, 55.777512>,  <32.356632, 33.457848, 55.731956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.535664, 33.611053, 55.777512>,  <32.834049, 33.866398, 55.853439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535664, 33.611053, 55.777512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585217, -0.492252, -0.644368,
		0.317903, -0.591759, 0.740783,
		-0.745962, -0.638365, -0.189819,
		32.311874, 33.419544, 55.720566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085957, 33.179771, 55.896969>,  <32.834049, 33.866398, 55.853439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085957, 33.179771, 55.896969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765743, 33.174515, 55.657310>,  <32.573616, 33.171360, 55.513515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765743, 33.174515, 55.657310>,  <33.085957, 33.179771, 55.896969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765743, 33.174515, 55.657310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571407, -0.318140, -0.756492,
		-0.180669, -0.947953, 0.262192,
		-0.800533, -0.013144, -0.599145,
		32.525585, 33.170570, 55.477566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018665, 32.392689, 55.553795>,  <33.085957, 33.179771, 55.896969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018665, 32.392689, 55.553795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.848164, 32.680405, 55.334370>,  <32.745861, 32.853035, 55.202713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.848164, 32.680405, 55.334370>,  <33.018665, 32.392689, 55.553795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848164, 32.680405, 55.334370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549279, -0.276022, -0.788736,
		-0.718747, -0.637520, -0.277436,
		-0.426257, 0.719291, -0.548567,
		32.720287, 32.896191, 55.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856079, 32.118229, 54.735256>,  <33.018665, 32.392689, 55.553795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856079, 32.118229, 54.735256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.804714, 32.514862, 54.728638>,  <32.773895, 32.752842, 54.724667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.804714, 32.514862, 54.728638>,  <32.856079, 32.118229, 54.735256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804714, 32.514862, 54.728638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463268, 0.045228, -0.885064,
		-0.876866, -0.121316, -0.465176,
		-0.128411, 0.991583, -0.016543,
		32.766190, 32.812336, 54.723675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480141, 32.195263, 54.089554>,  <32.856079, 32.118229, 54.735256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480141, 32.195263, 54.089554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.654408, 32.536419, 54.204632>,  <32.758968, 32.741112, 54.273678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.654408, 32.536419, 54.204632>,  <32.480141, 32.195263, 54.089554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654408, 32.536419, 54.204632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482162, 0.048768, -0.874724,
		-0.760074, 0.519806, -0.389985,
		0.435668, 0.852891, 0.287698,
		32.785107, 32.792286, 54.290943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445194, 32.707039, 53.546932>,  <32.480141, 32.195263, 54.089554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445194, 32.707039, 53.546932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761726, 32.816792, 53.765476>,  <32.951645, 32.882645, 53.896603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.761726, 32.816792, 53.765476>,  <32.445194, 32.707039, 53.546932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761726, 32.816792, 53.765476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528175, 0.143314, -0.836954,
		-0.307950, 0.950881, -0.031515,
		0.791327, 0.274385, 0.546365,
		32.999123, 32.899109, 53.929386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716934, 33.224575, 53.171398>,  <32.445194, 32.707039, 53.546932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716934, 33.224575, 53.171398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.010880, 33.112259, 53.418339>,  <33.187248, 33.044868, 53.566505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.010880, 33.112259, 53.418339>,  <32.716934, 33.224575, 53.171398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010880, 33.112259, 53.418339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650208, 0.032823, -0.759047,
		0.192870, 0.959207, 0.206694,
		0.734868, -0.280792, 0.617354,
		33.231339, 33.028023, 53.603546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193378, 33.635624, 52.962238>,  <32.716934, 33.224575, 53.171398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193378, 33.635624, 52.962238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.390118, 33.353889, 53.166977>,  <33.508163, 33.184849, 53.289822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.390118, 33.353889, 53.166977>,  <33.193378, 33.635624, 52.962238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390118, 33.353889, 53.166977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673895, -0.064285, -0.736025,
		0.551315, 0.706947, 0.443032,
		0.491850, -0.704339, 0.511849,
		33.537674, 33.142590, 53.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877792, 33.898098, 53.042007>,  <33.193378, 33.635624, 52.962238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877792, 33.898098, 53.042007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885517, 33.499146, 53.069908>,  <33.890152, 33.259773, 53.086647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885517, 33.499146, 53.069908>,  <33.877792, 33.898098, 53.042007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885517, 33.499146, 53.069908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690535, -0.037142, -0.722345,
		0.723041, 0.062117, 0.688007,
		0.019316, -0.997378, 0.069749,
		33.891312, 33.199932, 53.090832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567383, 33.676647, 52.889305>,  <33.877792, 33.898098, 53.042007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567383, 33.676647, 52.889305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.415474, 33.306686, 52.882099>,  <34.324329, 33.084709, 52.877773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.415474, 33.306686, 52.882099>,  <34.567383, 33.676647, 52.889305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415474, 33.306686, 52.882099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603393, -0.232901, -0.762676,
		0.701205, -0.300516, 0.646530,
		-0.379774, -0.924904, -0.018017,
		34.301540, 33.029217, 52.876694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069283, 33.216518, 53.027809>,  <34.567383, 33.676647, 52.889305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069283, 33.216518, 53.027809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.808689, 32.994862, 52.820545>,  <34.652332, 32.861866, 52.696186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.808689, 32.994862, 52.820545>,  <35.069283, 33.216518, 53.027809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808689, 32.994862, 52.820545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718449, -0.231233, -0.656020,
		0.243712, -0.799662, 0.548768,
		-0.651488, -0.554141, -0.518162,
		34.613243, 32.828621, 52.665096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290909, 32.500721, 52.887638>,  <35.069283, 33.216518, 53.027809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290909, 32.500721, 52.887638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.005661, 32.556767, 52.612881>,  <34.834511, 32.590393, 52.448025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.005661, 32.556767, 52.612881>,  <35.290909, 32.500721, 52.887638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005661, 32.556767, 52.612881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569171, -0.456302, -0.683983,
		-0.409262, -0.878726, 0.245655,
		-0.713126, 0.140108, -0.686892,
		34.791725, 32.598801, 52.406811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491203, 32.070339, 52.396088>,  <35.290909, 32.500721, 52.887638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491203, 32.070339, 52.396088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.207577, 32.262470, 52.189587>,  <35.037399, 32.377750, 52.065685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.207577, 32.262470, 52.189587>,  <35.491203, 32.070339, 52.396088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207577, 32.262470, 52.189587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285280, -0.474120, -0.832962,
		-0.644859, -0.737899, 0.199153,
		-0.709065, 0.480329, -0.516248,
		34.994858, 32.406567, 52.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253452, 31.594141, 51.881657>,  <35.491203, 32.070339, 52.396088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253452, 31.594141, 51.881657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141514, 31.951651, 51.741455>,  <35.074348, 32.166157, 51.657333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141514, 31.951651, 51.741455>,  <35.253452, 31.594141, 51.881657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141514, 31.951651, 51.741455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218627, -0.296167, -0.929778,
		-0.934819, -0.336827, -0.112521,
		-0.279849, 0.893774, -0.350502,
		35.057560, 32.219784, 51.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007278, 31.399485, 51.248650>,  <35.253452, 31.594141, 51.881657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007278, 31.399485, 51.248650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.054424, 31.795727, 51.220898>,  <35.082710, 32.033470, 51.204247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.054424, 31.795727, 51.220898>,  <35.007278, 31.399485, 51.248650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054424, 31.795727, 51.220898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087343, -0.059255, -0.994414,
		-0.989181, 0.123265, 0.079539,
		0.117863, 0.990603, -0.069380,
		35.089783, 32.092907, 51.200085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465069, 31.704235, 50.852577>,  <35.007278, 31.399485, 51.248650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465069, 31.704235, 50.852577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.797672, 31.924541, 50.823582>,  <34.997234, 32.056725, 50.806183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.797672, 31.924541, 50.823582>,  <34.465069, 31.704235, 50.852577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797672, 31.924541, 50.823582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046448, -0.061107, -0.997050,
		-0.553569, 0.832421, -0.025229,
		0.831507, 0.550764, -0.072491,
		35.047123, 32.089771, 50.801834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387577, 31.811798, 50.245621>,  <34.465069, 31.704235, 50.852577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387577, 31.811798, 50.245621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749184, 31.971964, 50.305523>,  <34.966148, 32.068062, 50.341465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749184, 31.971964, 50.305523>,  <34.387577, 31.811798, 50.245621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749184, 31.971964, 50.305523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218359, -0.131339, -0.966990,
		-0.367528, 0.906873, -0.206166,
		0.904015, 0.400414, 0.149753,
		35.020390, 32.092087, 50.350449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506039, 32.359734, 49.755993>,  <34.387577, 31.811798, 50.245621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506039, 32.359734, 49.755993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862686, 32.219894, 49.871090>,  <35.076675, 32.135990, 49.940147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862686, 32.219894, 49.871090>,  <34.506039, 32.359734, 49.755993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862686, 32.219894, 49.871090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275182, -0.086262, -0.957514,
		0.359569, 0.932919, 0.019291,
		0.891619, -0.349601, 0.287739,
		35.130173, 32.115013, 49.957413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826298, 32.794765, 49.951900>,  <34.506039, 32.359734, 49.755993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826298, 32.794765, 49.951900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.540981, 32.673359, 49.699207>,  <33.369789, 32.600513, 49.547592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.540981, 32.673359, 49.699207>,  <33.826298, 32.794765, 49.951900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540981, 32.673359, 49.699207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664409, 0.005907, 0.747346,
		-0.223100, 0.952808, -0.205873,
		-0.713293, -0.303516, -0.631736,
		33.326992, 32.582306, 49.509686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182007, 33.168056, 50.057808>,  <33.826298, 32.794765, 49.951900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182007, 33.168056, 50.057808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.071770, 32.839069, 49.858772>,  <33.005627, 32.641678, 49.739349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.071770, 32.839069, 49.858772>,  <33.182007, 33.168056, 50.057808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071770, 32.839069, 49.858772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721290, -0.165253, 0.672631,
		-0.635445, 0.544280, -0.547694,
		-0.275591, -0.822466, -0.497593,
		32.989094, 32.592331, 49.709496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419048, 33.285519, 49.848217>,  <33.182007, 33.168056, 50.057808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419048, 33.285519, 49.848217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.497971, 32.896156, 49.894783>,  <32.545326, 32.662540, 49.922722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.497971, 32.896156, 49.894783>,  <32.419048, 33.285519, 49.848217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497971, 32.896156, 49.894783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847013, -0.109478, 0.520176,
		-0.493597, -0.201242, -0.846087,
		0.197309, -0.973405, 0.116417,
		32.557163, 32.604134, 49.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910833, 32.919739, 49.884335>,  <32.419048, 33.285519, 49.848217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910833, 32.919739, 49.884335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.102974, 32.603687, 50.036625>,  <32.218258, 32.414055, 50.127998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.102974, 32.603687, 50.036625>,  <31.910833, 32.919739, 49.884335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102974, 32.603687, 50.036625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664194, -0.044203, 0.746253,
		-0.572808, -0.611342, -0.546033,
		0.480352, -0.790131, 0.380730,
		32.247078, 32.366650, 50.150845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418320, 32.707870, 50.207504>,  <31.910833, 32.919739, 49.884335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418320, 32.707870, 50.207504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.717916, 32.486145, 50.352695>,  <31.897675, 32.353111, 50.439812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.717916, 32.486145, 50.352695>,  <31.418320, 32.707870, 50.207504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717916, 32.486145, 50.352695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517389, -0.147069, 0.843018,
		-0.413909, -0.819215, -0.396946,
		0.748991, -0.554309, 0.362979,
		31.942614, 32.319851, 50.461590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105059, 32.125534, 50.300846>,  <31.418320, 32.707870, 50.207504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105059, 32.125534, 50.300846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.420685, 32.103748, 50.545601>,  <31.610062, 32.090675, 50.692455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.420685, 32.103748, 50.545601>,  <31.105059, 32.125534, 50.300846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420685, 32.103748, 50.545601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611558, -0.163771, 0.774065,
		0.058049, -0.984994, -0.162535,
		0.789068, -0.054466, 0.611887,
		31.657406, 32.087410, 50.729168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926788, 31.657433, 50.804615>,  <31.105059, 32.125534, 50.300846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926788, 31.657433, 50.804615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241352, 31.822863, 50.988140>,  <31.430090, 31.922121, 51.098255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241352, 31.822863, 50.988140>,  <30.926788, 31.657433, 50.804615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241352, 31.822863, 50.988140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441374, -0.143416, 0.885789,
		0.432143, -0.899103, 0.069758,
		0.786411, 0.413577, 0.458817,
		31.477276, 31.946936, 51.125786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955162, 31.211542, 51.399876>,  <30.926788, 31.657433, 50.804615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955162, 31.211542, 51.399876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.144432, 31.559443, 51.455929>,  <31.257994, 31.768183, 51.489559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.144432, 31.559443, 51.455929>,  <30.955162, 31.211542, 51.399876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144432, 31.559443, 51.455929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426694, 0.087103, 0.900192,
		0.770737, -0.485742, 0.412332,
		0.473177, 0.869751, 0.140130,
		31.286385, 31.820368, 51.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016979, 31.214426, 52.104538>,  <30.955162, 31.211542, 51.399876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016979, 31.214426, 52.104538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.128548, 31.579790, 51.985954>,  <31.195488, 31.799007, 51.914803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.128548, 31.579790, 51.985954>,  <31.016979, 31.214426, 52.104538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128548, 31.579790, 51.985954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354183, 0.384794, 0.852343,
		0.892613, -0.132736, 0.430840,
		0.278921, 0.913408, -0.296459,
		31.212225, 31.853813, 51.897018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359686, 31.513645, 52.622925>,  <31.016979, 31.214426, 52.104538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359686, 31.513645, 52.622925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.196579, 31.796072, 52.391342>,  <31.098715, 31.965528, 52.252392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.196579, 31.796072, 52.391342>,  <31.359686, 31.513645, 52.622925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196579, 31.796072, 52.391342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514218, 0.346385, 0.784600,
		0.754523, 0.617647, 0.221827,
		-0.407768, 0.706067, -0.578960,
		31.074249, 32.007893, 52.217655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361546, 32.144131, 53.016590>,  <31.359686, 31.513645, 52.622925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361546, 32.144131, 53.016590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 32.209785, 52.730297>,  <30.927109, 32.249180, 52.558521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 32.209785, 52.730297>,  <31.361546, 32.144131, 53.016590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090023, 32.209785, 52.730297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616035, 0.403187, 0.676713,
		0.399651, 0.900277, -0.172571,
		-0.678808, 0.164140, -0.715736,
		30.886381, 32.259026, 52.515575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130682, 32.795860, 53.105526>,  <31.361546, 32.144131, 53.016590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130682, 32.795860, 53.105526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.841225, 32.626984, 52.887135>,  <30.667551, 32.525658, 52.756100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.841225, 32.626984, 52.887135>,  <31.130682, 32.795860, 53.105526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841225, 32.626984, 52.887135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673505, 0.604789, 0.424995,
		0.150771, 0.675263, -0.722003,
		-0.723643, -0.422196, -0.545978,
		30.624132, 32.500324, 52.723343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659355, 33.407364, 52.894897>,  <31.130682, 32.795860, 53.105526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659355, 33.407364, 52.894897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.468452, 33.056946, 52.867256>,  <30.353910, 32.846695, 52.850670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.468452, 33.056946, 52.867256>,  <30.659355, 33.407364, 52.894897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468452, 33.056946, 52.867256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796946, 0.398342, 0.454092,
		-0.370276, 0.271792, -0.888270,
		-0.477255, -0.876044, -0.069107,
		30.325275, 32.794132, 52.846523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038698, 33.576324, 52.709236>,  <30.659355, 33.407364, 52.894897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038698, 33.576324, 52.709236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.994013, 33.207726, 52.858025>,  <29.967201, 32.986565, 52.947300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.994013, 33.207726, 52.858025>,  <30.038698, 33.576324, 52.709236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994013, 33.207726, 52.858025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787024, 0.310581, 0.533040,
		-0.606722, -0.233203, -0.759937,
		-0.111715, -0.921496, 0.371973,
		29.960499, 32.931278, 52.969616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285297, 33.459827, 52.579578>,  <30.038698, 33.576324, 52.709236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285297, 33.459827, 52.579578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.423624, 33.241051, 52.884541>,  <29.506620, 33.109783, 53.067520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.423624, 33.241051, 52.884541>,  <29.285297, 33.459827, 52.579578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423624, 33.241051, 52.884541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702501, 0.387724, 0.596793,
		-0.622015, -0.741974, -0.250145,
		0.345818, -0.546941, 0.762407,
		29.527369, 33.076969, 53.113262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731808, 33.387615, 53.061642>,  <29.285297, 33.459827, 52.579578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731808, 33.387615, 53.061642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.035774, 33.288239, 53.301910>,  <29.218155, 33.228615, 53.446072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.035774, 33.288239, 53.301910>,  <28.731808, 33.387615, 53.061642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035774, 33.288239, 53.301910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503646, 0.359149, 0.785718,
		-0.410933, -0.899605, 0.147798,
		0.759918, -0.248439, 0.600669,
		29.263750, 33.213707, 53.482113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379238, 33.150043, 53.719318>,  <28.731808, 33.387615, 53.061642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379238, 33.150043, 53.719318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.766720, 33.223789, 53.785797>,  <28.999208, 33.268036, 53.825684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.766720, 33.223789, 53.785797>,  <28.379238, 33.150043, 53.719318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766720, 33.223789, 53.785797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233700, 0.451778, 0.860977,
		0.083646, -0.872873, 0.480725,
		0.968704, 0.184362, 0.166201,
		29.057331, 33.279099, 53.835659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401102, 32.889023, 54.462559>,  <28.379238, 33.150043, 53.719318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401102, 32.889023, 54.462559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.723188, 33.114563, 54.389130>,  <28.916441, 33.249886, 54.345074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.723188, 33.114563, 54.389130>,  <28.401102, 32.889023, 54.462559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723188, 33.114563, 54.389130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040954, 0.255951, 0.965822,
		0.591564, -0.785214, 0.183004,
		0.805217, 0.563851, -0.183569,
		28.964754, 33.283718, 54.334061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.995972, 32.688492, 55.027344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037882, 33.049854, 54.861027>,  <29.063028, 33.266670, 54.761234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037882, 33.049854, 54.861027>,  <28.995972, 32.688492, 55.027344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037882, 33.049854, 54.861027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026414, 0.415420, 0.909246,
		0.994145, -0.106249, 0.019663,
		0.104775, 0.903403, -0.415794,
		29.069315, 33.320877, 54.736290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429981, 32.961605, 55.475208>,  <28.995972, 32.688492, 55.027344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429981, 32.961605, 55.475208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226231, 33.242435, 55.276157>,  <29.103981, 33.410934, 55.156727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226231, 33.242435, 55.276157>,  <29.429981, 32.961605, 55.475208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226231, 33.242435, 55.276157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202256, 0.464395, 0.862224,
		0.836438, 0.539844, -0.094554,
		-0.509377, 0.702073, -0.497624,
		29.073418, 33.453056, 55.126869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726032, 33.532871, 55.756943>,  <29.429981, 32.961605, 55.475208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726032, 33.532871, 55.756943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371311, 33.616558, 55.592113>,  <29.158478, 33.666771, 55.493217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371311, 33.616558, 55.592113>,  <29.726032, 33.532871, 55.756943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371311, 33.616558, 55.592113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235618, 0.562382, 0.792597,
		0.397570, 0.799971, -0.449427,
		-0.886804, 0.209220, -0.412074,
		29.105270, 33.679325, 55.468491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498493, 34.153034, 56.090324>,  <29.726032, 33.532871, 55.756943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498493, 34.153034, 56.090324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164234, 34.046322, 55.898273>,  <28.963678, 33.982296, 55.783043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164234, 34.046322, 55.898273>,  <29.498493, 34.153034, 56.090324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164234, 34.046322, 55.898273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549021, 0.379568, 0.744650,
		-0.016416, 0.885865, -0.463652,
		-0.835647, -0.266779, -0.480128,
		28.913540, 33.966290, 55.754234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017376, 34.753578, 56.045254>,  <29.498493, 34.153034, 56.090324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017376, 34.753578, 56.045254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789740, 34.425762, 56.018467>,  <28.653158, 34.229073, 56.002396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789740, 34.425762, 56.018467>,  <29.017376, 34.753578, 56.045254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789740, 34.425762, 56.018467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519660, 0.295337, 0.801704,
		-0.637253, 0.491043, -0.593957,
		-0.569088, -0.819544, -0.066971,
		28.619013, 34.179897, 55.998375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380352, 35.077168, 56.051647>,  <29.017376, 34.753578, 56.045254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380352, 35.077168, 56.051647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337057, 34.693638, 56.156673>,  <28.311081, 34.463520, 56.219688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337057, 34.693638, 56.156673>,  <28.380352, 35.077168, 56.051647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337057, 34.693638, 56.156673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528621, 0.279197, 0.801629,
		-0.841929, -0.052034, -0.537074,
		-0.108237, -0.958823, 0.262570,
		28.304586, 34.405991, 56.235443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626406, 35.023853, 56.266853>,  <28.380352, 35.077168, 56.051647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626406, 35.023853, 56.266853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815342, 34.718853, 56.443710>,  <27.928703, 34.535854, 56.549824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815342, 34.718853, 56.443710>,  <27.626406, 35.023853, 56.266853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815342, 34.718853, 56.443710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536348, 0.149418, 0.830665,
		-0.699447, -0.629497, -0.338391,
		0.472339, -0.762501, 0.442139,
		27.957045, 34.490101, 56.576351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171677, 34.764137, 56.604073>,  <27.626406, 35.023853, 56.266853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171677, 34.764137, 56.604073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477575, 34.572800, 56.776749>,  <27.661114, 34.457996, 56.880352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477575, 34.572800, 56.776749>,  <27.171677, 34.764137, 56.604073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477575, 34.572800, 56.776749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431805, 0.116795, 0.894373,
		-0.478235, -0.870372, -0.117232,
		0.764746, -0.478342, 0.431687,
		27.706999, 34.429298, 56.906254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882690, 34.219719, 57.067047>,  <27.171677, 34.764137, 56.604073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882690, 34.219719, 57.067047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240898, 34.365261, 57.169540>,  <27.455822, 34.452587, 57.231037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240898, 34.365261, 57.169540>,  <26.882690, 34.219719, 57.067047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240898, 34.365261, 57.169540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380464, 0.327282, 0.864947,
		0.230847, -0.872067, 0.431519,
		0.895520, 0.363848, 0.256238,
		27.509554, 34.474415, 57.246410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078125, 33.860390, 57.620945>,  <26.882690, 34.219719, 57.067047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078125, 33.860390, 57.620945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253094, 34.220039, 57.614704>,  <27.358076, 34.435829, 57.610962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253094, 34.220039, 57.614704>,  <27.078125, 33.860390, 57.620945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253094, 34.220039, 57.614704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330706, 0.176972, 0.926992,
		0.836238, -0.400329, 0.374757,
		0.437424, 0.899120, -0.015600,
		27.384321, 34.489777, 57.610023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237143, 33.900944, 58.321991>,  <27.078125, 33.860390, 57.620945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237143, 33.900944, 58.321991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300821, 34.276745, 58.200672>,  <27.339029, 34.502224, 58.127880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300821, 34.276745, 58.200672>,  <27.237143, 33.900944, 58.321991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300821, 34.276745, 58.200672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330712, 0.340217, 0.880274,
		0.930208, -0.039832, 0.364866,
		0.159196, 0.939503, -0.303299,
		27.348579, 34.558598, 58.109684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552723, 34.164185, 58.964924>,  <27.237143, 33.900944, 58.321991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552723, 34.164185, 58.964924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442814, 34.478649, 58.743492>,  <27.376869, 34.667328, 58.610634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442814, 34.478649, 58.743492>,  <27.552723, 34.164185, 58.964924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442814, 34.478649, 58.743492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432371, 0.413218, 0.801440,
		0.858811, 0.459564, 0.226373,
		-0.274772, 0.786163, -0.553578,
		27.360382, 34.714497, 58.577419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716059, 34.728416, 59.366295>,  <27.552723, 34.164185, 58.964924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716059, 34.728416, 59.366295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457254, 34.915142, 59.125145>,  <27.301971, 35.027176, 58.980453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457254, 34.915142, 59.125145>,  <27.716059, 34.728416, 59.366295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457254, 34.915142, 59.125145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487247, 0.355044, 0.797831,
		0.586487, 0.809956, -0.002263,
		-0.647011, 0.466815, -0.602877,
		27.263151, 35.055187, 58.944283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629833, 35.410511, 59.712940>,  <27.716059, 34.728416, 59.366295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629833, 35.410511, 59.712940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309238, 35.363857, 59.478329>,  <27.116882, 35.335865, 59.337563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309238, 35.363857, 59.478329>,  <27.629833, 35.410511, 59.712940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309238, 35.363857, 59.478329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587912, 0.333179, 0.737124,
		0.109443, 0.935621, -0.335611,
		-0.801487, -0.116637, -0.586527,
		27.068792, 35.328865, 59.302372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360758, 36.001007, 59.782833>,  <27.629833, 35.410511, 59.712940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360758, 36.001007, 59.782833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078875, 35.735256, 59.683247>,  <26.909744, 35.575806, 59.623497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078875, 35.735256, 59.683247>,  <27.360758, 36.001007, 59.782833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078875, 35.735256, 59.683247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544972, 0.282187, 0.789542,
		-0.454303, 0.692075, -0.560929,
		-0.704709, -0.664381, -0.248963,
		26.867462, 35.535942, 59.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740236, 36.293034, 59.878159>,  <27.360758, 36.001007, 59.782833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740236, 36.293034, 59.878159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607569, 35.915676, 59.877247>,  <26.527967, 35.689262, 59.876701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607569, 35.915676, 59.877247>,  <26.740236, 36.293034, 59.878159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607569, 35.915676, 59.877247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615582, 0.214591, 0.758294,
		-0.714881, 0.252904, -0.651909,
		-0.331670, -0.943393, -0.002276,
		26.508068, 35.632660, 59.876564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006952, 36.386990, 59.879295>,  <26.740236, 36.293034, 59.878159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006952, 36.386990, 59.879295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093739, 36.014156, 59.995331>,  <26.145811, 35.790459, 60.064953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093739, 36.014156, 59.995331>,  <26.006952, 36.386990, 59.879295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093739, 36.014156, 59.995331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717821, 0.049053, 0.694498,
		-0.661558, -0.358914, -0.658424,
		0.216967, -0.932081, 0.290088,
		26.158829, 35.734531, 60.082355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306091, 35.988926, 59.941933>,  <26.006952, 36.386990, 59.879295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306091, 35.988926, 59.941933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593863, 35.825348, 60.166496>,  <25.766525, 35.727200, 60.301235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593863, 35.825348, 60.166496>,  <25.306091, 35.988926, 59.941933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593863, 35.825348, 60.166496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521271, 0.216273, 0.825532,
		-0.459018, -0.886559, -0.057579,
		0.719430, -0.408948, 0.561411,
		25.809692, 35.702663, 60.334919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849842, 35.736107, 60.372841>,  <25.306091, 35.988926, 59.941933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849842, 35.736107, 60.372841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206913, 35.694302, 60.548206>,  <25.421156, 35.669220, 60.653427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206913, 35.694302, 60.548206>,  <24.849842, 35.736107, 60.372841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206913, 35.694302, 60.548206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423557, 0.137922, 0.895308,
		-0.154041, -0.984913, 0.078851,
		0.892676, -0.104516, 0.438413,
		25.474716, 35.662949, 60.679729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709799, 35.383507, 60.978489>,  <24.849842, 35.736107, 60.372841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709799, 35.383507, 60.978489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088840, 35.472672, 61.070015>,  <25.316265, 35.526169, 61.124931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088840, 35.472672, 61.070015>,  <24.709799, 35.383507, 60.978489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088840, 35.472672, 61.070015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250391, 0.073504, 0.965350,
		0.198364, -0.972065, 0.125466,
		0.947605, 0.222907, 0.228816,
		25.373121, 35.539543, 61.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034245, 34.920116, 61.493603>,  <24.709799, 35.383507, 60.978489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034245, 34.920116, 61.493603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234983, 35.265602, 61.512180>,  <25.355427, 35.472893, 61.523327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234983, 35.265602, 61.512180>,  <25.034245, 34.920116, 61.493603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234983, 35.265602, 61.512180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186024, 0.055333, 0.980986,
		0.844717, -0.500943, 0.188439,
		0.501845, 0.863710, 0.046447,
		25.385536, 35.524715, 61.526115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488152, 34.824818, 62.048950>,  <25.034245, 34.920116, 61.493603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488152, 34.824818, 62.048950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439253, 35.220139, 62.012470>,  <25.409914, 35.457333, 61.990582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439253, 35.220139, 62.012470>,  <25.488152, 34.824818, 62.048950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439253, 35.220139, 62.012470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297601, 0.051161, 0.953319,
		0.946832, 0.143681, 0.287865,
		-0.122246, 0.988301, -0.091200,
		25.402578, 35.516628, 61.985111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963434, 35.336292, 62.327129>,  <25.488152, 34.824818, 62.048950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963434, 35.336292, 62.327129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611204, 35.508438, 62.406498>,  <25.399866, 35.611725, 62.454121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611204, 35.508438, 62.406498>,  <25.963434, 35.336292, 62.327129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611204, 35.508438, 62.406498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080087, -0.277539, 0.957370,
		0.467089, 0.858929, 0.209928,
		-0.880576, 0.430364, 0.198425,
		25.347031, 35.637547, 62.466026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003595, 35.867168, 62.872555>,  <25.963434, 35.336292, 62.327129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003595, 35.867168, 62.872555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682035, 35.630112, 62.852470>,  <25.489100, 35.487877, 62.840420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682035, 35.630112, 62.852470>,  <26.003595, 35.867168, 62.872555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682035, 35.630112, 62.852470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237136, -0.396791, 0.886749,
		-0.545444, 0.700953, 0.459517,
		-0.803901, -0.592640, -0.050206,
		25.440865, 35.452320, 62.837410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504343, 36.492111, 62.912243>,  <26.003595, 35.867168, 62.872555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504343, 36.492111, 62.912243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698412, 36.832138, 62.994209>,  <26.814854, 37.036156, 63.043388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698412, 36.832138, 62.994209>,  <26.504343, 36.492111, 62.912243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698412, 36.832138, 62.994209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562030, 0.123635, 0.817824,
		0.669873, -0.511954, 0.537748,
		0.485173, 0.850069, 0.204914,
		26.843964, 37.087158, 63.055683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263742, 36.269592, 63.026566>,  <26.504343, 36.492111, 62.912243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263742, 36.269592, 63.026566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454493, 35.944519, 63.160515>,  <27.568943, 35.749477, 63.240887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454493, 35.944519, 63.160515>,  <27.263742, 36.269592, 63.026566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454493, 35.944519, 63.160515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591488, 0.014884, -0.806176,
		0.650179, 0.582520, 0.487788,
		0.476874, -0.812680, 0.334877,
		27.597555, 35.700714, 63.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900534, 36.404953, 62.683292>,  <27.263742, 36.269592, 63.026566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900534, 36.404953, 62.683292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895697, 36.028255, 62.817741>,  <27.892796, 35.802238, 62.898411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895697, 36.028255, 62.817741>,  <27.900534, 36.404953, 62.683292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895697, 36.028255, 62.817741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713388, -0.243666, -0.657042,
		0.700665, 0.231840, 0.674773,
		-0.012091, -0.941741, 0.336120,
		27.892069, 35.745731, 62.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635273, 36.188869, 62.702908>,  <27.900534, 36.404953, 62.683292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635273, 36.188869, 62.702908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408804, 35.860428, 62.673969>,  <28.272923, 35.663361, 62.656605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408804, 35.860428, 62.673969>,  <28.635273, 36.188869, 62.702908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408804, 35.860428, 62.673969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645722, -0.387256, -0.658084,
		0.512339, -0.419307, 0.749460,
		-0.566172, -0.821106, -0.072349,
		28.238953, 35.614098, 62.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120108, 35.692627, 62.683437>,  <28.635273, 36.188869, 62.702908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120108, 35.692627, 62.683437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785376, 35.528194, 62.538807>,  <28.584538, 35.429535, 62.452030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785376, 35.528194, 62.538807>,  <29.120108, 35.692627, 62.683437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785376, 35.528194, 62.538807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486727, -0.256284, -0.835114,
		0.250632, -0.874833, 0.414548,
		-0.836828, -0.411078, -0.361572,
		28.534327, 35.404873, 62.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368946, 35.010788, 62.393761>,  <29.120108, 35.692627, 62.683437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368946, 35.010788, 62.393761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024637, 35.128551, 62.227680>,  <28.818052, 35.199211, 62.128033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024637, 35.128551, 62.227680>,  <29.368946, 35.010788, 62.393761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024637, 35.128551, 62.227680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373532, -0.188740, -0.908213,
		-0.345755, -0.936856, 0.052490,
		-0.860772, 0.294412, -0.415203,
		28.766405, 35.216873, 62.103119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391670, 34.613579, 61.799774>,  <29.368946, 35.010788, 62.393761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391670, 34.613579, 61.799774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089937, 34.858257, 61.704430>,  <28.908897, 35.005062, 61.647224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089937, 34.858257, 61.704430>,  <29.391670, 34.613579, 61.799774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089937, 34.858257, 61.704430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259450, -0.055747, -0.964146,
		-0.603050, -0.789128, -0.116652,
		-0.754332, 0.611694, -0.238358,
		28.863638, 35.041767, 61.632923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950640, 34.296284, 61.386070>,  <29.391670, 34.613579, 61.799774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950640, 34.296284, 61.386070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870163, 34.679741, 61.305553>,  <28.821877, 34.909817, 61.257244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870163, 34.679741, 61.305553>,  <28.950640, 34.296284, 61.386070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870163, 34.679741, 61.305553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384776, -0.111635, -0.916234,
		-0.900815, -0.261793, -0.346404,
		-0.201193, 0.958646, -0.201294,
		28.809805, 34.967335, 61.245167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595015, 34.340206, 60.690472>,  <28.950640, 34.296284, 61.386070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595015, 34.340206, 60.690472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733566, 34.708263, 60.763519>,  <28.816698, 34.929100, 60.807346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733566, 34.708263, 60.763519>,  <28.595015, 34.340206, 60.690472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733566, 34.708263, 60.763519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239827, 0.101343, -0.965512,
		-0.906920, 0.378230, -0.185574,
		0.346379, 0.920148, 0.182620,
		28.837481, 34.984306, 60.818306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275122, 34.854637, 60.269806>,  <28.595015, 34.340206, 60.690472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275122, 34.854637, 60.269806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621946, 35.023766, 60.375202>,  <28.830040, 35.125244, 60.438438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621946, 35.023766, 60.375202>,  <28.275122, 34.854637, 60.269806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621946, 35.023766, 60.375202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208044, 0.173269, -0.962650,
		-0.452686, 0.889493, 0.062269,
		0.867060, 0.422824, 0.263490,
		28.882065, 35.150612, 60.454250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352934, 35.474117, 59.793957>,  <28.275122, 34.854637, 60.269806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352934, 35.474117, 59.793957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711607, 35.360180, 59.929497>,  <28.926811, 35.291817, 60.010822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711607, 35.360180, 59.929497>,  <28.352934, 35.474117, 59.793957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711607, 35.360180, 59.929497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339392, -0.049074, -0.939364,
		0.284204, 0.957316, 0.052670,
		0.896684, -0.284846, 0.338852,
		28.980612, 35.274727, 60.031151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901125, 35.686649, 59.222000>,  <28.352934, 35.474117, 59.793957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901125, 35.686649, 59.222000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132883, 35.445129, 59.440990>,  <29.271938, 35.300217, 59.572384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132883, 35.445129, 59.440990>,  <28.901125, 35.686649, 59.222000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132883, 35.445129, 59.440990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485175, -0.284237, -0.826931,
		0.654912, 0.744741, 0.128261,
		0.579393, -0.603796, 0.547480,
		29.306702, 35.263992, 59.605236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618635, 35.798012, 58.976498>,  <28.901125, 35.686649, 59.222000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618635, 35.798012, 58.976498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616514, 35.443188, 59.161148>,  <29.615242, 35.230293, 59.271938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616514, 35.443188, 59.161148>,  <29.618635, 35.798012, 58.976498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616514, 35.443188, 59.161148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462520, -0.411465, -0.785348,
		0.886593, 0.209347, 0.412464,
		-0.005304, -0.887057, 0.461629,
		29.614923, 35.177071, 59.299637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309153, 35.473591, 58.778683>,  <29.618635, 35.798012, 58.976498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309153, 35.473591, 58.778683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080187, 35.172279, 58.908245>,  <29.942808, 34.991493, 58.985981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080187, 35.172279, 58.908245>,  <30.309153, 35.473591, 58.778683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080187, 35.172279, 58.908245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322334, -0.569938, -0.755825,
		0.753953, -0.328238, 0.569047,
		-0.572412, -0.753280, 0.323904,
		29.908463, 34.946297, 59.005417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787615, 34.967262, 58.773689>,  <30.309153, 35.473591, 58.778683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787615, 34.967262, 58.773689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432243, 34.783775, 58.767155>,  <30.219021, 34.673683, 58.763233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432243, 34.783775, 58.767155>,  <30.787615, 34.967262, 58.773689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432243, 34.783775, 58.767155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299104, -0.551570, -0.778657,
		0.348177, -0.696668, 0.627237,
		-0.888431, -0.458720, -0.016332,
		30.165714, 34.646160, 58.762257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874557, 34.247047, 58.828148>,  <30.787615, 34.967262, 58.773689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874557, 34.247047, 58.828148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513315, 34.306667, 58.667061>,  <30.296570, 34.342438, 58.570408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513315, 34.306667, 58.667061>,  <30.874557, 34.247047, 58.828148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513315, 34.306667, 58.667061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258181, -0.560924, -0.786579,
		-0.343130, -0.814340, 0.468094,
		-0.903108, 0.149046, -0.402717,
		30.242382, 34.351383, 58.546246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594458, 33.619068, 58.778027>,  <30.874557, 34.247047, 58.828148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594458, 33.619068, 58.778027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410778, 33.841831, 58.501190>,  <30.300571, 33.975487, 58.335087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410778, 33.841831, 58.501190>,  <30.594458, 33.619068, 58.778027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410778, 33.841831, 58.501190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127638, -0.729645, -0.671808,
		-0.879117, -0.396829, 0.263968,
		-0.459196, 0.556906, -0.692095,
		30.273020, 34.008904, 58.293560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289421, 33.131420, 58.364201>,  <30.594458, 33.619068, 58.778027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289421, 33.131420, 58.364201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301676, 33.470932, 58.153061>,  <30.309029, 33.674641, 58.026375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301676, 33.470932, 58.153061>,  <30.289421, 33.131420, 58.364201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301676, 33.470932, 58.153061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421942, -0.489722, -0.762979,
		-0.906105, -0.199349, -0.373141,
		0.030636, 0.848783, -0.527853,
		30.310867, 33.725567, 57.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120955, 32.914291, 57.654861>,  <30.289421, 33.131420, 58.364201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120955, 32.914291, 57.654861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282919, 33.278416, 57.620472>,  <30.380096, 33.496891, 57.599838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282919, 33.278416, 57.620472>,  <30.120955, 32.914291, 57.654861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282919, 33.278416, 57.620472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542147, -0.314731, -0.779116,
		-0.736292, 0.268863, -0.620957,
		0.404909, 0.910306, -0.085970,
		30.404392, 33.551506, 57.594681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099497, 33.050262, 56.928085>,  <30.120955, 32.914291, 57.654861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099497, 33.050262, 56.928085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347559, 33.338631, 57.051811>,  <30.496397, 33.511654, 57.126049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347559, 33.338631, 57.051811>,  <30.099497, 33.050262, 56.928085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347559, 33.338631, 57.051811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603000, -0.185858, -0.775788,
		-0.501794, 0.667628, -0.549978,
		0.620156, 0.720922, 0.309318,
		30.533606, 33.554909, 57.144608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.840611, 36.419880, 52.422714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.812168, 36.084103, 52.207203>,  <47.795105, 35.882637, 52.077896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.812168, 36.084103, 52.207203>,  <47.840611, 36.419880, 52.422714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812168, 36.084103, 52.207203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997442, 0.055883, 0.044566,
		-0.007302, 0.540566, -0.841270,
		-0.071103, -0.839444, -0.538775,
		47.790836, 35.832268, 52.045570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.364872, 36.599400, 51.825275>,  <47.840611, 36.419880, 52.422714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.364872, 36.599400, 51.825275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.371876, 36.210453, 51.918396>,  <47.376080, 35.977085, 51.974270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.371876, 36.210453, 51.918396>,  <47.364872, 36.599400, 51.825275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371876, 36.210453, 51.918396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997401, -0.033265, -0.063910,
		0.069888, -0.231080, -0.970421,
		0.017513, -0.972366, 0.232804,
		47.377129, 35.918743, 51.988235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858250, 36.242378, 51.335144>,  <47.364872, 36.599400, 51.825275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858250, 36.242378, 51.335144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920258, 35.980831, 51.631367>,  <46.957462, 35.823902, 51.809101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.920258, 35.980831, 51.631367>,  <46.858250, 36.242378, 51.335144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920258, 35.980831, 51.631367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985021, -0.159602, 0.065277,
		0.075512, -0.739582, -0.668817,
		0.155022, -0.653870, 0.740556,
		46.966763, 35.784672, 51.853535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444054, 35.719242, 51.177338>,  <46.858250, 36.242378, 51.335144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444054, 35.719242, 51.177338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.494678, 35.687054, 51.572815>,  <46.525055, 35.667740, 51.810101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.494678, 35.687054, 51.572815>,  <46.444054, 35.719242, 51.177338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494678, 35.687054, 51.572815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990251, -0.068720, 0.121167,
		0.058194, -0.994386, -0.088369,
		0.126560, -0.080456, 0.988690,
		46.532646, 35.662910, 51.869423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020824, 35.173180, 51.392727>,  <46.444054, 35.719242, 51.177338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020824, 35.173180, 51.392727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.094379, 35.385876, 51.723408>,  <46.138512, 35.513493, 51.921818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.094379, 35.385876, 51.723408>,  <46.020824, 35.173180, 51.392727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094379, 35.385876, 51.723408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964566, -0.064270, 0.255894,
		0.189201, -0.844465, 0.501080,
		0.183890, 0.531740, 0.826702,
		46.149548, 35.545399, 51.971420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789680, 34.788048, 51.864632>,  <46.020824, 35.173180, 51.392727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789680, 34.788048, 51.864632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.811951, 35.155289, 52.021599>,  <45.825314, 35.375633, 52.115780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.811951, 35.155289, 52.021599>,  <45.789680, 34.788048, 51.864632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811951, 35.155289, 52.021599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977688, -0.029599, 0.207967,
		0.202550, -0.395240, 0.895968,
		0.055677, 0.918101, 0.392417,
		45.828655, 35.430717, 52.139324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480274, 34.749996, 52.510208>,  <45.789680, 34.788048, 51.864632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480274, 34.749996, 52.510208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.465393, 35.130032, 52.386311>,  <45.456463, 35.358055, 52.311974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.465393, 35.130032, 52.386311>,  <45.480274, 34.749996, 52.510208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465393, 35.130032, 52.386311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992016, 0.002262, 0.126086,
		0.120495, 0.311959, 0.942424,
		-0.037202, 0.950092, -0.309741,
		45.454231, 35.415058, 52.293388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896698, 34.923225, 52.906933>,  <45.480274, 34.749996, 52.510208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896698, 34.923225, 52.906933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.971714, 35.230820, 52.662479>,  <45.016724, 35.415379, 52.515808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.971714, 35.230820, 52.662479>,  <44.896698, 34.923225, 52.906933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971714, 35.230820, 52.662479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974632, 0.223056, -0.018422,
		0.122150, 0.599083, 0.791315,
		0.187544, 0.768990, -0.611131,
		45.027977, 35.461517, 52.479141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554195, 35.529312, 53.205681>,  <44.896698, 34.923225, 52.906933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554195, 35.529312, 53.205681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.593185, 35.608479, 52.815536>,  <44.616581, 35.655979, 52.581451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.593185, 35.608479, 52.815536>,  <44.554195, 35.529312, 53.205681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593185, 35.608479, 52.815536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950674, 0.308494, -0.032413,
		0.294477, 0.930409, 0.218225,
		0.097479, 0.197916, -0.975360,
		44.622429, 35.667854, 52.522930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285534, 36.185669, 53.044853>,  <44.554195, 35.529312, 53.205681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285534, 36.185669, 53.044853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.278816, 35.983292, 52.699890>,  <44.274784, 35.861866, 52.492912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.278816, 35.983292, 52.699890>,  <44.285534, 36.185669, 53.044853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278816, 35.983292, 52.699890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946049, 0.287185, -0.150052,
		0.323587, 0.813358, -0.483467,
		-0.016799, -0.505938, -0.862406,
		44.273777, 35.831509, 52.441170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789913, 36.504707, 52.613506>,  <44.285534, 36.185669, 53.044853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789913, 36.504707, 52.613506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.817707, 36.154564, 52.422123>,  <43.834381, 35.944477, 52.307293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.817707, 36.154564, 52.422123>,  <43.789913, 36.504707, 52.613506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817707, 36.154564, 52.422123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991050, -0.005770, -0.133362,
		0.113979, 0.483441, -0.867925,
		0.069480, -0.875358, -0.478457,
		43.838551, 35.891956, 52.278587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301693, 36.587872, 52.141884>,  <43.789913, 36.504707, 52.613506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301693, 36.587872, 52.141884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.375946, 36.195141, 52.126125>,  <43.420498, 35.959503, 52.116669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.375946, 36.195141, 52.126125>,  <43.301693, 36.587872, 52.141884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375946, 36.195141, 52.126125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949330, -0.168847, -0.265071,
		0.253602, 0.086609, -0.963424,
		0.185628, -0.981830, -0.039400,
		43.431633, 35.900593, 52.114304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219700, 36.335381, 51.537319>,  <43.301693, 36.587872, 52.141884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219700, 36.335381, 51.537319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.133900, 36.016838, 51.763527>,  <43.082420, 35.825714, 51.899250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.133900, 36.016838, 51.763527>,  <43.219700, 36.335381, 51.537319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133900, 36.016838, 51.763527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945480, 0.024019, -0.324792,
		0.245066, -0.604355, -0.758088,
		-0.214498, -0.796353, 0.565519,
		43.069550, 35.777931, 51.933182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770596, 35.870579, 51.176861>,  <43.219700, 36.335381, 51.537319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770596, 35.870579, 51.176861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713833, 35.714359, 51.540691>,  <42.679775, 35.620628, 51.758991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.713833, 35.714359, 51.540691>,  <42.770596, 35.870579, 51.176861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713833, 35.714359, 51.540691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972070, -0.118534, -0.202556,
		0.186924, -0.912919, -0.362820,
		-0.141910, -0.390549, 0.909578,
		42.671261, 35.597195, 51.813564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423134, 35.249695, 51.060715>,  <42.770596, 35.870579, 51.176861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423134, 35.249695, 51.060715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.354763, 35.295326, 51.452179>,  <42.313740, 35.322704, 51.687057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.354763, 35.295326, 51.452179>,  <42.423134, 35.249695, 51.060715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354763, 35.295326, 51.452179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851980, -0.516013, -0.088655,
		0.494887, -0.848951, 0.185391,
		-0.170927, 0.114075, 0.978657,
		42.303486, 35.329548, 51.745777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202133, 34.528000, 51.340221>,  <42.423134, 35.249695, 51.060715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202133, 34.528000, 51.340221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.083717, 34.819080, 51.587708>,  <42.012669, 34.993729, 51.736198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.083717, 34.819080, 51.587708>,  <42.202133, 34.528000, 51.340221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083717, 34.819080, 51.587708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901903, -0.426261, 0.069808,
		0.314534, -0.537354, 0.782508,
		-0.296041, 0.727703, 0.618715,
		41.994904, 35.037392, 51.773323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955601, 34.193073, 51.936253>,  <42.202133, 34.528000, 51.340221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955601, 34.193073, 51.936253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800621, 34.559971, 51.899273>,  <41.707634, 34.780109, 51.877087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800621, 34.559971, 51.899273>,  <41.955601, 34.193073, 51.936253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800621, 34.559971, 51.899273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916761, -0.393918, -0.066163,
		-0.097105, 0.059118, 0.993517,
		-0.387452, 0.917242, -0.092448,
		41.684383, 34.835144, 51.871540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328472, 34.137051, 52.272045>,  <41.955601, 34.193073, 51.936253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328472, 34.137051, 52.272045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257809, 34.482868, 52.083855>,  <41.215412, 34.690361, 51.970940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.257809, 34.482868, 52.083855>,  <41.328472, 34.137051, 52.272045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257809, 34.482868, 52.083855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946883, -0.279768, -0.158564,
		-0.268709, 0.417470, 0.868052,
		-0.176657, 0.864551, -0.470471,
		41.204811, 34.742233, 51.942711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659748, 34.276672, 52.511528>,  <41.328472, 34.137051, 52.272045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659748, 34.276672, 52.511528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.711899, 34.481743, 52.172077>,  <40.743191, 34.604786, 51.968407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.711899, 34.481743, 52.172077>,  <40.659748, 34.276672, 52.511528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711899, 34.481743, 52.172077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897745, -0.302213, -0.320501,
		-0.420780, 0.803633, 0.420855,
		0.130377, 0.512681, -0.848623,
		40.751011, 34.635548, 51.917492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181870, 34.698139, 52.454861>,  <40.659748, 34.276672, 52.511528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181870, 34.698139, 52.454861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293934, 34.642834, 52.074883>,  <40.361172, 34.609650, 51.846897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.293934, 34.642834, 52.074883>,  <40.181870, 34.698139, 52.454861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293934, 34.642834, 52.074883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933912, -0.268188, -0.236396,
		-0.222078, 0.953393, -0.204266,
		0.280160, -0.138268, -0.949943,
		40.377983, 34.601353, 51.789898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581966, 34.961594, 52.062950>,  <40.181870, 34.698139, 52.454861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581966, 34.961594, 52.062950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772682, 34.707710, 51.819702>,  <39.887112, 34.555378, 51.673752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.772682, 34.707710, 51.819702>,  <39.581966, 34.961594, 52.062950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772682, 34.707710, 51.819702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876663, -0.393944, -0.276169,
		-0.064279, 0.664793, -0.744257,
		0.476791, -0.634711, -0.608122,
		39.915718, 34.517296, 51.637264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176479, 35.096603, 51.556442>,  <39.581966, 34.961594, 52.062950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176479, 35.096603, 51.556442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364342, 34.750893, 51.484394>,  <39.477058, 34.543465, 51.441166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364342, 34.750893, 51.484394>,  <39.176479, 35.096603, 51.556442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364342, 34.750893, 51.484394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879991, -0.441887, -0.174218,
		0.070981, 0.240325, -0.968094,
		0.469657, -0.864280, -0.180118,
		39.505238, 34.491608, 51.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854877, 34.845264, 51.013649>,  <39.176479, 35.096603, 51.556442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854877, 34.845264, 51.013649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.020000, 34.526348, 51.189796>,  <39.119076, 34.334999, 51.295483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.020000, 34.526348, 51.189796>,  <38.854877, 34.845264, 51.013649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020000, 34.526348, 51.189796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855289, -0.505557, -0.113550,
		0.313162, -0.329767, -0.890608,
		0.412808, -0.797287, 0.440367,
		39.143845, 34.287163, 51.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778580, 34.258183, 50.505005>,  <38.854877, 34.845264, 51.013649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778580, 34.258183, 50.505005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775826, 34.166912, 50.894444>,  <38.774174, 34.112148, 51.128105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775826, 34.166912, 50.894444>,  <38.778580, 34.258183, 50.505005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775826, 34.166912, 50.894444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748513, -0.644429, -0.156330,
		0.663084, -0.729825, -0.166357,
		-0.006889, -0.228181, 0.973594,
		38.773758, 34.098457, 51.186523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523056, 33.557838, 50.373928>,  <38.778580, 34.258183, 50.505005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523056, 33.557838, 50.373928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618542, 33.269646, 50.113491>,  <38.675835, 33.096729, 49.957230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618542, 33.269646, 50.113491>,  <38.523056, 33.557838, 50.373928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618542, 33.269646, 50.113491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822953, 0.205845, -0.529506,
		0.515523, 0.662220, -0.543784,
		0.238714, -0.720481, -0.651093,
		38.690155, 33.053501, 49.918163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235527, 33.821774, 49.735050>,  <38.523056, 33.557838, 50.373928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235527, 33.821774, 49.735050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292507, 33.440685, 49.627689>,  <38.326694, 33.212032, 49.563271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.292507, 33.440685, 49.627689>,  <38.235527, 33.821774, 49.735050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292507, 33.440685, 49.627689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763698, 0.066715, -0.642117,
		0.629662, 0.296448, -0.718084,
		0.142447, -0.952716, -0.268404,
		38.335243, 33.154869, 49.547169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310322, 33.731007, 48.961632>,  <38.235527, 33.821774, 49.735050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310322, 33.731007, 48.961632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199394, 33.377884, 49.113289>,  <38.132839, 33.166012, 49.204285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199394, 33.377884, 49.113289>,  <38.310322, 33.731007, 48.961632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199394, 33.377884, 49.113289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693901, -0.088912, -0.714560,
		0.664528, -0.461248, -0.587922,
		-0.277316, -0.882805, 0.379145,
		38.116199, 33.113041, 49.227032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178986, 33.362041, 48.399433>,  <38.310322, 33.731007, 48.961632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178986, 33.362041, 48.399433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003490, 33.143444, 48.684769>,  <37.898193, 33.012287, 48.855968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003490, 33.143444, 48.684769>,  <38.178986, 33.362041, 48.399433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003490, 33.143444, 48.684769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806058, -0.111550, -0.581228,
		0.397212, -0.830000, -0.391565,
		-0.438740, -0.546495, 0.713337,
		37.871868, 32.979496, 48.898769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908024, 32.771721, 48.080021>,  <38.178986, 33.362041, 48.399433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908024, 32.771721, 48.080021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694698, 32.812443, 48.415928>,  <37.566704, 32.836876, 48.617474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694698, 32.812443, 48.415928>,  <37.908024, 32.771721, 48.080021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694698, 32.812443, 48.415928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839136, -0.189110, -0.509988,
		0.106888, -0.976664, 0.186286,
		-0.533315, 0.101808, 0.839768,
		37.534702, 32.842983, 48.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345016, 32.406727, 47.836117>,  <37.908024, 32.771721, 48.080021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345016, 32.406727, 47.836117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219471, 32.563812, 48.181896>,  <37.144146, 32.658062, 48.389362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219471, 32.563812, 48.181896>,  <37.345016, 32.406727, 47.836117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219471, 32.563812, 48.181896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941462, -0.010729, -0.336948,
		-0.123051, -0.919596, 0.373097,
		-0.313859, 0.392718, 0.864445,
		37.125313, 32.681625, 48.441231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900806, 31.909842, 48.116547>,  <37.345016, 32.406727, 47.836117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900806, 31.909842, 48.116547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792828, 32.259052, 48.279007>,  <36.728039, 32.468578, 48.376484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792828, 32.259052, 48.279007>,  <36.900806, 31.909842, 48.116547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792828, 32.259052, 48.279007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941661, -0.151314, -0.300629,
		-0.201001, -0.463606, 0.862941,
		-0.269949, 0.873025, 0.406146,
		36.711842, 32.520958, 48.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240570, 31.803595, 48.273701>,  <36.900806, 31.909842, 48.116547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240570, 31.803595, 48.273701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255951, 32.203148, 48.284679>,  <36.265179, 32.442879, 48.291267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255951, 32.203148, 48.284679>,  <36.240570, 31.803595, 48.273701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255951, 32.203148, 48.284679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974186, 0.043585, -0.221501,
		-0.222450, -0.018224, 0.974774,
		0.038449, 0.998884, 0.027449,
		36.267487, 32.502811, 48.292915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744362, 32.024902, 48.801960>,  <36.240570, 31.803595, 48.273701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744362, 32.024902, 48.801960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801586, 32.325336, 48.544155>,  <35.835922, 32.505596, 48.389473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801586, 32.325336, 48.544155>,  <35.744362, 32.024902, 48.801960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801586, 32.325336, 48.544155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972490, -0.014286, -0.232506,
		-0.183841, 0.660046, 0.728383,
		0.143059, 0.751089, -0.644515,
		35.844505, 32.550663, 48.350800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134129, 32.507408, 48.939293>,  <35.744362, 32.024902, 48.801960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134129, 32.507408, 48.939293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285141, 32.616928, 48.585457>,  <35.375748, 32.682640, 48.373154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.285141, 32.616928, 48.585457>,  <35.134129, 32.507408, 48.939293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285141, 32.616928, 48.585457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925998, 0.111234, -0.360770,
		-0.000380, 0.955334, 0.295528,
		0.377529, 0.273796, -0.884595,
		35.398399, 32.699066, 48.320080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759579, 33.045143, 48.813789>,  <35.134129, 32.507408, 48.939293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759579, 33.045143, 48.813789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906174, 32.936245, 48.457909>,  <34.994133, 32.870907, 48.244381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906174, 32.936245, 48.457909>,  <34.759579, 33.045143, 48.813789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906174, 32.936245, 48.457909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923738, 0.007944, -0.382942,
		0.111324, 0.962194, -0.248576,
		0.366490, -0.272249, -0.889699,
		35.016121, 32.854568, 48.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.819265, 31.787086, 52.048397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054869, 32.046825, 52.240818>,  <30.196232, 32.202667, 52.356270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054869, 32.046825, 52.240818>,  <29.819265, 31.787086, 52.048397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054869, 32.046825, 52.240818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671964, -0.062858, -0.737911,
		-0.448922, 0.757890, -0.473362,
		0.589010, 0.649347, 0.481057,
		30.231571, 32.241631, 52.385136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961727, 32.383076, 51.629417>,  <29.819265, 31.787086, 52.048397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961727, 32.383076, 51.629417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.246664, 32.315430, 51.901878>,  <30.417627, 32.274841, 52.065353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.246664, 32.315430, 51.901878>,  <29.961727, 32.383076, 51.629417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246664, 32.315430, 51.901878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693890, 0.024124, -0.719676,
		0.105274, 0.985302, 0.134530,
		0.712344, -0.169112, 0.681152,
		30.460367, 32.264698, 52.106224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445782, 32.898197, 51.477592>,  <29.961727, 32.383076, 51.629417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445782, 32.898197, 51.477592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649788, 32.628407, 51.691120>,  <30.772192, 32.466534, 51.819237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649788, 32.628407, 51.691120>,  <30.445782, 32.898197, 51.477592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649788, 32.628407, 51.691120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729967, 0.011098, -0.683392,
		0.455007, 0.738214, 0.498004,
		0.510017, -0.674475, 0.533822,
		30.802794, 32.426064, 51.851265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202089, 33.108459, 51.662273>,  <30.445782, 32.898197, 51.477592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202089, 33.108459, 51.662273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184296, 32.711624, 51.709225>,  <31.173618, 32.473522, 51.737396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184296, 32.711624, 51.709225>,  <31.202089, 33.108459, 51.662273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184296, 32.711624, 51.709225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774537, -0.108461, -0.623160,
		0.630962, 0.063195, 0.773236,
		-0.044486, -0.992090, 0.117381,
		31.170950, 32.413998, 51.744438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886379, 32.899006, 51.876072>,  <31.202089, 33.108459, 51.662273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886379, 32.899006, 51.876072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697178, 32.575504, 51.736248>,  <31.583656, 32.381405, 51.652355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697178, 32.575504, 51.736248>,  <31.886379, 32.899006, 51.876072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697178, 32.575504, 51.736248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803718, -0.233518, -0.547272,
		0.360979, -0.539807, 0.760462,
		-0.473003, -0.808751, -0.349558,
		31.555277, 32.332878, 51.631382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436970, 32.483494, 51.860298>,  <31.886379, 32.899006, 51.876072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436970, 32.483494, 51.860298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146797, 32.332012, 51.630402>,  <31.972694, 32.241123, 51.492462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.146797, 32.332012, 51.630402>,  <32.436970, 32.483494, 51.860298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146797, 32.332012, 51.630402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670555, -0.200489, -0.714255,
		0.155263, -0.903541, 0.399384,
		-0.725431, -0.378706, -0.574745,
		31.929169, 32.218399, 51.457977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693798, 31.894629, 51.581680>,  <32.436970, 32.483494, 51.860298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693798, 31.894629, 51.581680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410389, 31.985779, 51.314529>,  <32.240341, 32.040470, 51.154240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410389, 31.985779, 51.314529>,  <32.693798, 31.894629, 51.581680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410389, 31.985779, 51.314529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642765, -0.182256, -0.744067,
		-0.291281, -0.956481, -0.017338,
		-0.708526, 0.227877, -0.667880,
		32.197830, 32.054142, 51.114166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934776, 31.599119, 50.958858>,  <32.693798, 31.894629, 51.581680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934776, 31.599119, 50.958858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630718, 31.810118, 50.807106>,  <32.448284, 31.936716, 50.716053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630718, 31.810118, 50.807106>,  <32.934776, 31.599119, 50.958858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630718, 31.810118, 50.807106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491543, 0.084991, -0.866696,
		-0.424934, -0.845296, -0.323892,
		-0.760143, 0.527495, -0.379384,
		32.402676, 31.968367, 50.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985245, 31.354326, 50.374268>,  <32.934776, 31.599119, 50.958858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985245, 31.354326, 50.374268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751472, 31.673790, 50.316875>,  <32.611210, 31.865469, 50.282440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751472, 31.673790, 50.316875>,  <32.985245, 31.354326, 50.374268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751472, 31.673790, 50.316875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444239, 0.166943, -0.880217,
		-0.679040, -0.578164, -0.452361,
		-0.584428, 0.798659, -0.143482,
		32.576145, 31.913387, 50.273830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596603, 31.223976, 49.775871>,  <32.985245, 31.354326, 50.374268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596603, 31.223976, 49.775871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660168, 31.610884, 49.855007>,  <32.698307, 31.843029, 49.902489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660168, 31.610884, 49.855007>,  <32.596603, 31.223976, 49.775871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660168, 31.610884, 49.855007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528782, 0.085840, -0.844406,
		-0.833749, 0.238796, -0.497834,
		0.158907, 0.967268, 0.197840,
		32.707840, 31.901064, 49.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627083, 31.592598, 49.036762>,  <32.596603, 31.223976, 49.775871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627083, 31.592598, 49.036762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730244, 31.902609, 49.267525>,  <32.792141, 32.088615, 49.405983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.730244, 31.902609, 49.267525>,  <32.627083, 31.592598, 49.036762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730244, 31.902609, 49.267525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532886, 0.383968, -0.754057,
		-0.805926, 0.501901, -0.313972,
		0.257907, 0.775025, 0.576906,
		32.807617, 32.135117, 49.440598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541954, 32.180527, 48.571453>,  <32.627083, 31.592598, 49.036762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541954, 32.180527, 48.571453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782837, 32.290527, 48.871246>,  <32.927368, 32.356529, 49.051121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782837, 32.290527, 48.871246>,  <32.541954, 32.180527, 48.571453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782837, 32.290527, 48.871246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630449, 0.412129, -0.657787,
		-0.489774, 0.868634, 0.074814,
		0.602209, 0.275000, 0.749479,
		32.963501, 32.373028, 49.096088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833549, 32.904610, 48.561661>,  <32.541954, 32.180527, 48.571453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833549, 32.904610, 48.561661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101318, 32.668430, 48.741993>,  <33.261978, 32.526722, 48.850193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101318, 32.668430, 48.741993>,  <32.833549, 32.904610, 48.561661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101318, 32.668430, 48.741993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687470, 0.262384, -0.677155,
		0.281537, 0.763232, 0.581562,
		0.669419, -0.590451, 0.450828,
		33.302143, 32.491295, 48.877243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279972, 33.335705, 48.451126>,  <32.833549, 32.904610, 48.561661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279972, 33.335705, 48.451126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425606, 33.549721, 48.146187>,  <32.512985, 33.678131, 47.963223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425606, 33.549721, 48.146187>,  <32.279972, 33.335705, 48.451126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425606, 33.549721, 48.146187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634462, 0.741709, 0.217543,
		0.681836, 0.404479, 0.609505,
		0.364084, 0.535037, -0.762351,
		32.534832, 33.710232, 47.917480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526291, 33.994461, 48.631569>,  <32.279972, 33.335705, 48.451126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526291, 33.994461, 48.631569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412086, 34.047592, 48.251919>,  <32.343563, 34.079472, 48.024128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412086, 34.047592, 48.251919>,  <32.526291, 33.994461, 48.631569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412086, 34.047592, 48.251919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521942, 0.809043, 0.270235,
		0.803777, 0.572545, -0.161665,
		-0.285515, 0.132828, -0.949125,
		32.326431, 34.087440, 47.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668285, 34.693375, 48.528538>,  <32.526291, 33.994461, 48.631569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668285, 34.693375, 48.528538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393379, 34.573143, 48.264019>,  <32.228436, 34.501003, 48.105309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393379, 34.573143, 48.264019>,  <32.668285, 34.693375, 48.528538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393379, 34.573143, 48.264019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539763, 0.820560, 0.187983,
		0.486132, 0.486139, -0.726184,
		-0.687263, -0.300583, -0.661301,
		32.187199, 34.482967, 48.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426403, 35.271191, 48.285007>,  <32.668285, 34.693375, 48.528538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426403, 35.271191, 48.285007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.141796, 35.023838, 48.151531>,  <31.971031, 34.875427, 48.071445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.141796, 35.023838, 48.151531>,  <32.426403, 35.271191, 48.285007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141796, 35.023838, 48.151531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701273, 0.654844, 0.281772,
		0.044270, 0.434491, -0.899588,
		-0.711517, -0.618382, -0.333687,
		31.928341, 34.838322, 48.051426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014099, 35.688721, 47.954224>,  <32.426403, 35.271191, 48.285007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014099, 35.688721, 47.954224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793110, 35.366516, 48.039944>,  <31.660515, 35.173195, 48.091377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793110, 35.366516, 48.039944>,  <32.014099, 35.688721, 47.954224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793110, 35.366516, 48.039944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705431, 0.588805, 0.394558,
		-0.444001, 0.066809, -0.893532,
		-0.552477, -0.805509, 0.214301,
		31.627367, 35.124863, 48.104233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371180, 35.779556, 47.674519>,  <32.014099, 35.688721, 47.954224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371180, 35.779556, 47.674519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327175, 35.523430, 47.978596>,  <31.300774, 35.369755, 48.161041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327175, 35.523430, 47.978596>,  <31.371180, 35.779556, 47.674519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327175, 35.523430, 47.978596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613546, 0.645469, 0.454898,
		-0.781959, -0.416369, -0.463872,
		-0.110010, -0.640318, 0.760192,
		31.294172, 35.331333, 48.206654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655478, 35.957409, 47.867191>,  <31.371180, 35.779556, 47.674519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655478, 35.957409, 47.867191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778460, 35.715515, 48.161068>,  <30.852249, 35.570381, 48.337395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778460, 35.715515, 48.161068>,  <30.655478, 35.957409, 47.867191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778460, 35.715515, 48.161068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599091, 0.476843, 0.643204,
		-0.739298, -0.637903, -0.215682,
		0.307455, -0.604733, 0.734690,
		30.870697, 35.534096, 48.381474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068445, 35.631062, 48.219994>,  <30.655478, 35.957409, 47.867191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068445, 35.631062, 48.219994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345737, 35.651993, 48.507519>,  <30.512114, 35.664551, 48.680035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345737, 35.651993, 48.507519>,  <30.068445, 35.631062, 48.219994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345737, 35.651993, 48.507519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590902, 0.612289, 0.525297,
		-0.412630, -0.788900, 0.455382,
		0.693233, 0.052332, 0.718812,
		30.553707, 35.667694, 48.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652979, 35.687878, 48.849705>,  <30.068445, 35.631062, 48.219994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652979, 35.687878, 48.849705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.020876, 35.805122, 48.954136>,  <30.241615, 35.875469, 49.016792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.020876, 35.805122, 48.954136>,  <29.652979, 35.687878, 48.849705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020876, 35.805122, 48.954136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389930, 0.605997, 0.693341,
		0.045013, -0.739497, 0.671653,
		0.919743, 0.293107, 0.261074,
		30.296799, 35.893055, 49.032459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654703, 35.692451, 49.575848>,  <29.652979, 35.687878, 48.849705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654703, 35.692451, 49.575848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.940823, 35.957954, 49.488426>,  <30.112495, 36.117256, 49.435974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.940823, 35.957954, 49.488426>,  <29.654703, 35.692451, 49.575848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940823, 35.957954, 49.488426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360803, 0.618624, 0.697943,
		0.598462, -0.420392, 0.681992,
		0.715307, 0.663758, -0.218544,
		30.155413, 36.157082, 49.422859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953737, 35.711605, 50.255264>,  <29.654703, 35.692451, 49.575848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953737, 35.711605, 50.255264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087757, 36.029148, 50.052277>,  <30.168169, 36.219673, 49.930485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.087757, 36.029148, 50.052277>,  <29.953737, 35.711605, 50.255264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087757, 36.029148, 50.052277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129977, 0.494510, 0.859399,
		0.933193, -0.353899, 0.062501,
		0.335047, 0.793861, -0.507472,
		30.188271, 36.267307, 49.900036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619913, 35.974846, 50.626331>,  <29.953737, 35.711605, 50.255264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619913, 35.974846, 50.626331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436014, 36.258751, 50.412834>,  <30.325676, 36.429092, 50.284737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436014, 36.258751, 50.412834>,  <30.619913, 35.974846, 50.626331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436014, 36.258751, 50.412834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113121, 0.549321, 0.827919,
		0.880816, 0.441009, -0.172260,
		-0.459746, 0.709758, -0.533738,
		30.298090, 36.471680, 50.252712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871460, 36.588928, 50.865498>,  <30.619913, 35.974846, 50.626331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871460, 36.588928, 50.865498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528307, 36.720139, 50.707291>,  <30.322414, 36.798862, 50.612366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528307, 36.720139, 50.707291>,  <30.871460, 36.588928, 50.865498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528307, 36.720139, 50.707291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147327, 0.580396, 0.800897,
		0.492271, 0.745347, -0.449585,
		-0.857883, 0.328023, -0.395522,
		30.270943, 36.818546, 50.588634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866257, 37.266644, 50.976490>,  <30.871460, 36.588928, 50.865498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866257, 37.266644, 50.976490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477499, 37.183170, 50.932892>,  <30.244246, 37.133087, 50.906734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.477499, 37.183170, 50.932892>,  <30.866257, 37.266644, 50.976490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477499, 37.183170, 50.932892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195228, 0.455640, 0.868492,
		-0.131576, 0.865358, -0.483573,
		-0.971892, -0.208679, -0.108991,
		30.185932, 37.120567, 50.900196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582113, 37.941738, 51.077354>,  <30.866257, 37.266644, 50.976490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582113, 37.941738, 51.077354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 37.673691, 51.141788>,  <30.118393, 37.512863, 51.180447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.292288, 37.673691, 51.141788>,  <30.582113, 37.941738, 51.077354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292288, 37.673691, 51.141788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193599, 0.422203, 0.885587,
		-0.661457, 0.610480, -0.435648,
		-0.724565, -0.670118, 0.161081,
		30.074919, 37.472656, 51.190113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627989, 38.780018, 51.020161>,  <30.582113, 37.941738, 51.077354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627989, 38.780018, 51.020161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981546, 38.925053, 51.138317>,  <31.193682, 39.012074, 51.209213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981546, 38.925053, 51.138317>,  <30.627989, 38.780018, 51.020161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981546, 38.925053, 51.138317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419499, -0.335441, -0.843504,
		-0.206759, 0.869487, -0.448601,
		0.883895, 0.362590, 0.295394,
		31.246716, 39.033829, 51.226936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007685, 39.007729, 50.373764>,  <30.627989, 38.780018, 51.020161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007685, 39.007729, 50.373764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294863, 38.987381, 50.651459>,  <31.467171, 38.975174, 50.818077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294863, 38.987381, 50.651459>,  <31.007685, 39.007729, 50.373764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294863, 38.987381, 50.651459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678419, -0.172213, -0.714206,
		0.155887, 0.983746, -0.089129,
		0.717947, -0.050869, 0.694237,
		31.510246, 38.972122, 50.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546375, 39.274700, 50.035404>,  <31.007685, 39.007729, 50.373764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546375, 39.274700, 50.035404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715382, 39.067444, 50.332863>,  <31.816786, 38.943089, 50.511337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.715382, 39.067444, 50.332863>,  <31.546375, 39.274700, 50.035404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715382, 39.067444, 50.332863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628028, -0.424209, -0.652401,
		0.653498, 0.742680, 0.146173,
		0.422517, -0.518143, 0.743644,
		31.842136, 38.912003, 50.555958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173538, 39.290737, 49.822216>,  <31.546375, 39.274700, 50.035404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173538, 39.290737, 49.822216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163490, 38.981907, 50.076229>,  <32.157459, 38.796608, 50.228638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.163490, 38.981907, 50.076229>,  <32.173538, 39.290737, 49.822216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163490, 38.981907, 50.076229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752377, -0.432881, -0.496531,
		0.658253, 0.465311, 0.591767,
		-0.025124, -0.772075, 0.635035,
		32.155952, 38.750286, 50.266739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785065, 39.140877, 49.964386>,  <32.173538, 39.290737, 49.822216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785065, 39.140877, 49.964386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614037, 38.800034, 50.085110>,  <32.511421, 38.595528, 50.157543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614037, 38.800034, 50.085110>,  <32.785065, 39.140877, 49.964386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614037, 38.800034, 50.085110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850605, -0.492265, -0.184789,
		0.306030, 0.177709, 0.935289,
		-0.427571, -0.852112, 0.301808,
		32.485764, 38.544399, 50.175652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343056, 38.874481, 50.378723>,  <32.785065, 39.140877, 49.964386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343056, 38.874481, 50.378723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097515, 38.577267, 50.272079>,  <32.950191, 38.398937, 50.208092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097515, 38.577267, 50.272079>,  <33.343056, 38.874481, 50.378723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097515, 38.577267, 50.272079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786193, -0.544923, -0.291477,
		0.071295, -0.388532, 0.918673,
		-0.613854, -0.743035, -0.266611,
		32.913361, 38.354355, 50.192097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694962, 38.327869, 50.530117>,  <33.343056, 38.874481, 50.378723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694962, 38.327869, 50.530117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424652, 38.183403, 50.273094>,  <33.262466, 38.096722, 50.118881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424652, 38.183403, 50.273094>,  <33.694962, 38.327869, 50.530117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424652, 38.183403, 50.273094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719671, -0.511777, -0.469211,
		-0.159383, -0.779513, 0.605770,
		-0.675774, -0.361171, -0.642561,
		33.221920, 38.075050, 50.080326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794556, 37.582478, 50.490990>,  <33.694962, 38.327869, 50.530117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794556, 37.582478, 50.490990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615700, 37.691757, 50.150299>,  <33.508385, 37.757324, 49.945885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615700, 37.691757, 50.150299>,  <33.794556, 37.582478, 50.490990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615700, 37.691757, 50.150299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685431, -0.507124, -0.522503,
		-0.574675, -0.817428, 0.039498,
		-0.447139, 0.273197, -0.851722,
		33.481560, 37.773716, 49.894783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784195, 37.019802, 50.158806>,  <33.794556, 37.582478, 50.490990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784195, 37.019802, 50.158806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742756, 37.309280, 49.885887>,  <33.717892, 37.482967, 49.722137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742756, 37.309280, 49.885887>,  <33.784195, 37.019802, 50.158806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742756, 37.309280, 49.885887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612890, -0.493825, -0.616849,
		-0.783348, -0.482075, -0.392389,
		-0.103596, 0.723699, -0.682296,
		33.711678, 37.526390, 49.681198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055050, 36.675308, 49.619942>,  <33.784195, 37.019802, 50.158806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055050, 36.675308, 49.619942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989586, 37.032818, 49.452904>,  <33.950310, 37.247322, 49.352680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989586, 37.032818, 49.452904>,  <34.055050, 36.675308, 49.619942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989586, 37.032818, 49.452904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628309, -0.231915, -0.742592,
		-0.760555, -0.383912, -0.523610,
		-0.163657, 0.893771, -0.417600,
		33.940491, 37.300949, 49.327625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705799, 36.585514, 48.872818>,  <34.055050, 36.675308, 49.619942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705799, 36.585514, 48.872818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922497, 36.920887, 48.896641>,  <34.052517, 37.122108, 48.910934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922497, 36.920887, 48.896641>,  <33.705799, 36.585514, 48.872818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922497, 36.920887, 48.896641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576467, -0.319045, -0.752261,
		-0.611716, 0.441868, -0.656168,
		0.541747, 0.838429, 0.059558,
		34.085022, 37.172417, 48.914509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892353, 36.784027, 48.219013>,  <33.705799, 36.585514, 48.872818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892353, 36.784027, 48.219013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181797, 36.927032, 48.455173>,  <34.355465, 37.012836, 48.596870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181797, 36.927032, 48.455173>,  <33.892353, 36.784027, 48.219013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181797, 36.927032, 48.455173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687613, -0.299333, -0.661505,
		-0.059768, 0.884639, -0.462429,
		0.723614, 0.357509, 0.590399,
		34.398880, 37.034286, 48.632294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.741074, 39.422581, 57.055344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470745, 39.687607, 56.926174>,  <30.308548, 39.846622, 56.848671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470745, 39.687607, 56.926174>,  <30.741074, 39.422581, 57.055344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470745, 39.687607, 56.926174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301604, -0.151179, -0.941371,
		-0.672536, -0.733593, -0.097661,
		-0.675819, 0.662561, -0.322928,
		30.268000, 39.886375, 56.829296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486567, 39.042194, 56.486073>,  <30.741074, 39.422581, 57.055344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486567, 39.042194, 56.486073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373734, 39.421261, 56.426262>,  <30.306034, 39.648701, 56.390377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373734, 39.421261, 56.426262>,  <30.486567, 39.042194, 56.486073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373734, 39.421261, 56.426262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159431, -0.107386, -0.981351,
		-0.946050, -0.300663, -0.120795,
		-0.282084, 0.947666, -0.149527,
		30.289108, 39.705559, 56.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937290, 39.109901, 56.070675>,  <30.486567, 39.042194, 56.486073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937290, 39.109901, 56.070675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121571, 39.460274, 56.013397>,  <30.232138, 39.670498, 55.979031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.121571, 39.460274, 56.013397>,  <29.937290, 39.109901, 56.070675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121571, 39.460274, 56.013397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237348, -0.277049, -0.931080,
		-0.855232, 0.394961, -0.335536,
		0.460700, 0.875928, -0.143198,
		30.259781, 39.723053, 55.970436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792442, 39.208447, 55.297688>,  <29.937290, 39.109901, 56.070675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792442, 39.208447, 55.297688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072281, 39.484943, 55.370079>,  <30.240183, 39.650841, 55.413513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072281, 39.484943, 55.370079>,  <29.792442, 39.208447, 55.297688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072281, 39.484943, 55.370079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165909, 0.089210, -0.982098,
		-0.695012, 0.717095, -0.052272,
		0.699594, 0.691242, 0.180975,
		30.282160, 39.692318, 55.424370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742664, 39.641510, 54.744980>,  <29.792442, 39.208447, 55.297688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742664, 39.641510, 54.744980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.118322, 39.703072, 54.867825>,  <30.343718, 39.740009, 54.941532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.118322, 39.703072, 54.867825>,  <29.742664, 39.641510, 54.744980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118322, 39.703072, 54.867825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302472, 0.053290, -0.951667,
		-0.162829, 0.986648, 0.003496,
		0.939147, 0.153902, 0.307111,
		30.400066, 39.749241, 54.959957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861969, 40.142555, 54.271339>,  <29.742664, 39.641510, 54.744980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861969, 40.142555, 54.271339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212553, 40.023479, 54.422710>,  <30.422903, 39.952034, 54.513531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212553, 40.023479, 54.422710>,  <29.861969, 40.142555, 54.271339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212553, 40.023479, 54.422710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363675, -0.105767, -0.925502,
		0.315534, 0.948787, 0.015560,
		0.876458, -0.297686, 0.378423,
		30.475491, 39.934174, 54.536236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318308, 40.455517, 53.895931>,  <29.861969, 40.142555, 54.271339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318308, 40.455517, 53.895931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528687, 40.153103, 54.051773>,  <30.654913, 39.971653, 54.145279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528687, 40.153103, 54.051773>,  <30.318308, 40.455517, 53.895931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528687, 40.153103, 54.051773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306907, -0.258514, -0.915958,
		0.793215, 0.601316, 0.096069,
		0.525945, -0.756036, 0.389605,
		30.686470, 39.926292, 54.168655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008575, 40.633095, 53.770962>,  <30.318308, 40.455517, 53.895931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008575, 40.633095, 53.770962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.972809, 40.237209, 53.815636>,  <30.951349, 39.999680, 53.842442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.972809, 40.237209, 53.815636>,  <31.008575, 40.633095, 53.770962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972809, 40.237209, 53.815636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391185, -0.138023, -0.909903,
		0.915958, -0.037668, 0.399502,
		-0.089415, -0.989712, 0.111688,
		30.945984, 39.940296, 53.849144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603540, 40.372623, 53.481544>,  <31.008575, 40.633095, 53.770962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603540, 40.372623, 53.481544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.366255, 40.050625, 53.484970>,  <31.223883, 39.857426, 53.487026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.366255, 40.050625, 53.484970>,  <31.603540, 40.372623, 53.481544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366255, 40.050625, 53.484970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114261, -0.094718, -0.988925,
		0.796894, -0.585668, 0.148168,
		-0.593216, -0.804998, 0.008561,
		31.188290, 39.809124, 53.487537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970371, 39.831692, 53.146748>,  <31.603540, 40.372623, 53.481544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970371, 39.831692, 53.146748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582861, 39.733494, 53.132885>,  <31.350355, 39.674576, 53.124565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582861, 39.733494, 53.132885>,  <31.970371, 39.831692, 53.146748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582861, 39.733494, 53.132885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124551, -0.361020, -0.924203,
		0.214377, -0.899664, 0.380325,
		-0.968777, -0.245498, -0.034659,
		31.292227, 39.659843, 53.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996786, 39.244160, 52.906364>,  <31.970371, 39.831692, 53.146748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996786, 39.244160, 52.906364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617046, 39.344219, 52.830299>,  <31.389202, 39.404255, 52.784660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617046, 39.344219, 52.830299>,  <31.996786, 39.244160, 52.906364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617046, 39.344219, 52.830299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093049, -0.354248, -0.930511,
		-0.300138, -0.901072, 0.313028,
		-0.949347, 0.250154, -0.190167,
		31.332243, 39.419266, 52.773251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782064, 38.664753, 52.582466>,  <31.996786, 39.244160, 52.906364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782064, 38.664753, 52.582466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.523169, 38.953403, 52.484215>,  <31.367830, 39.126595, 52.425262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.523169, 38.953403, 52.484215>,  <31.782064, 38.664753, 52.582466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523169, 38.953403, 52.484215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130680, -0.212418, -0.968401,
		-0.751001, -0.658888, 0.043183,
		-0.647241, 0.721627, -0.245630,
		31.328997, 39.169891, 52.410526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224380, 38.286438, 52.232811>,  <31.782064, 38.664753, 52.582466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224380, 38.286438, 52.232811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231802, 38.665871, 52.106415>,  <31.236256, 38.893532, 52.030579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231802, 38.665871, 52.106415>,  <31.224380, 38.286438, 52.232811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231802, 38.665871, 52.106415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046402, -0.316518, -0.947451,
		-0.998750, 0.002918, -0.049889,
		0.018556, 0.948582, -0.315987,
		31.237370, 38.950447, 52.011620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783436, 38.271534, 51.704777>,  <31.224380, 38.286438, 52.232811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783436, 38.271534, 51.704777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001122, 38.604828, 51.665695>,  <31.131733, 38.804806, 51.642246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001122, 38.604828, 51.665695>,  <30.783436, 38.271534, 51.704777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001122, 38.604828, 51.665695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134922, -0.201869, -0.970075,
		-0.828024, 0.514748, -0.222283,
		0.544216, 0.833236, -0.097702,
		31.164387, 38.854797, 51.636383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045431, 38.280640, 51.461166>,  <30.783436, 38.271534, 51.704777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045431, 38.280640, 51.461166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933325, 37.902737, 51.529140>,  <29.866060, 37.675995, 51.569927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933325, 37.902737, 51.529140>,  <30.045431, 38.280640, 51.461166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933325, 37.902737, 51.529140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440275, 0.283830, 0.851821,
		-0.853000, 0.163918, -0.495502,
		-0.280267, -0.944760, 0.169938,
		29.849245, 37.619308, 51.580120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331940, 38.290684, 51.688057>,  <30.045431, 38.280640, 51.461166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331940, 38.290684, 51.688057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469940, 37.937229, 51.814651>,  <29.552740, 37.725155, 51.890606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469940, 37.937229, 51.814651>,  <29.331940, 38.290684, 51.688057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469940, 37.937229, 51.814651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403009, 0.165063, 0.900188,
		-0.847678, -0.438111, -0.299167,
		0.345000, -0.883636, 0.316483,
		29.573441, 37.672138, 51.909595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782818, 37.965309, 52.087173>,  <29.331940, 38.290684, 51.688057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782818, 37.965309, 52.087173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112852, 37.765385, 52.192566>,  <29.310873, 37.645432, 52.255802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112852, 37.765385, 52.192566>,  <28.782818, 37.965309, 52.087173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112852, 37.765385, 52.192566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319154, -0.027477, 0.947304,
		-0.466233, -0.865699, -0.182187,
		0.825086, -0.499811, 0.263481,
		29.360378, 37.615440, 52.271610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507254, 37.299263, 52.397957>,  <28.782818, 37.965309, 52.087173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507254, 37.299263, 52.397957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887985, 37.348114, 52.510460>,  <29.116425, 37.377422, 52.577961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887985, 37.348114, 52.510460>,  <28.507254, 37.299263, 52.397957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887985, 37.348114, 52.510460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261376, -0.156425, 0.952478,
		0.160317, -0.980110, -0.116969,
		0.951830, 0.122126, 0.281255,
		29.173534, 37.384750, 52.594837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741621, 36.744350, 52.770020>,  <28.507254, 37.299263, 52.397957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741621, 36.744350, 52.770020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968052, 37.050137, 52.893402>,  <29.103910, 37.233608, 52.967430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968052, 37.050137, 52.893402>,  <28.741621, 36.744350, 52.770020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968052, 37.050137, 52.893402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267664, -0.183456, 0.945886,
		0.779688, -0.618006, 0.100771,
		0.566076, 0.764469, 0.308456,
		29.137875, 37.279476, 52.985939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101830, 36.451977, 53.313499>,  <28.741621, 36.744350, 52.770020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101830, 36.451977, 53.313499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099903, 36.849171, 53.360748>,  <29.098747, 37.087486, 53.389099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099903, 36.849171, 53.360748>,  <29.101830, 36.451977, 53.313499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099903, 36.849171, 53.360748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227965, -0.116103, 0.966722,
		0.973657, -0.022271, 0.226926,
		-0.004817, 0.992988, 0.118121,
		29.098457, 37.147068, 53.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303495, 36.426289, 53.948067>,  <29.101830, 36.451977, 53.313499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303495, 36.426289, 53.948067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162012, 36.796516, 53.894093>,  <29.077122, 37.018654, 53.861710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162012, 36.796516, 53.894093>,  <29.303495, 36.426289, 53.948067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162012, 36.796516, 53.894093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484905, -0.058092, 0.872636,
		0.799848, 0.374090, 0.469362,
		-0.353710, 0.925571, -0.134933,
		29.055899, 37.074188, 53.853611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413702, 36.786049, 54.556252>,  <29.303495, 36.426289, 53.948067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413702, 36.786049, 54.556252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128208, 37.007515, 54.384651>,  <28.956911, 37.140392, 54.281693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.128208, 37.007515, 54.384651>,  <29.413702, 36.786049, 54.556252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128208, 37.007515, 54.384651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437905, 0.125286, 0.890249,
		0.546645, 0.823262, 0.153031,
		-0.713735, 0.553663, -0.428998,
		28.914087, 37.173615, 54.255951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230961, 37.302788, 55.125629>,  <29.413702, 36.786049, 54.556252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230961, 37.302788, 55.125629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938892, 37.286064, 54.852837>,  <28.763651, 37.276031, 54.689159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938892, 37.286064, 54.852837>,  <29.230961, 37.302788, 55.125629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938892, 37.286064, 54.852837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677184, 0.177161, 0.714168,
		0.090962, 0.983294, -0.157670,
		-0.730169, -0.041810, -0.681986,
		28.719841, 37.273521, 54.648239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750580, 37.770741, 55.400326>,  <29.230961, 37.302788, 55.125629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750580, 37.770741, 55.400326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540565, 37.565037, 55.129070>,  <28.414557, 37.441612, 54.966316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.540565, 37.565037, 55.129070>,  <28.750580, 37.770741, 55.400326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540565, 37.565037, 55.129070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805787, 0.043904, 0.590576,
		-0.273939, 0.856508, -0.437438,
		-0.525038, -0.514263, -0.678136,
		28.383055, 37.410759, 54.925629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180218, 38.073181, 55.379555>,  <28.750580, 37.770741, 55.400326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180218, 38.073181, 55.379555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054871, 37.741882, 55.193737>,  <27.979662, 37.543102, 55.082245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054871, 37.741882, 55.193737>,  <28.180218, 38.073181, 55.379555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054871, 37.741882, 55.193737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791517, -0.042478, 0.609669,
		-0.524690, 0.558749, -0.642261,
		-0.313370, -0.828248, -0.464547,
		27.960859, 37.493408, 55.054375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487173, 38.190636, 55.047501>,  <28.180218, 38.073181, 55.379555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487173, 38.190636, 55.047501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518656, 37.796051, 55.105053>,  <27.537546, 37.559299, 55.139584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518656, 37.796051, 55.105053>,  <27.487173, 38.190636, 55.047501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518656, 37.796051, 55.105053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785688, 0.027452, 0.618014,
		-0.613596, -0.161688, -0.772889,
		0.078708, -0.986460, 0.143881,
		27.542269, 37.500114, 55.148216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865580, 37.786423, 54.955990>,  <27.487173, 38.190636, 55.047501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865580, 37.786423, 54.955990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091417, 37.581497, 55.214840>,  <27.226919, 37.458542, 55.370152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091417, 37.581497, 55.214840>,  <26.865580, 37.786423, 54.955990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091417, 37.581497, 55.214840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724425, 0.068138, 0.685978,
		-0.395527, -0.856093, -0.332659,
		0.564594, -0.512309, 0.647126,
		27.260796, 37.427803, 55.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385801, 37.488407, 55.405529>,  <26.865580, 37.786423, 54.955990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385801, 37.488407, 55.405529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730749, 37.461540, 55.606251>,  <26.937717, 37.445419, 55.726685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730749, 37.461540, 55.606251>,  <26.385801, 37.488407, 55.405529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730749, 37.461540, 55.606251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482981, 0.188068, 0.855196,
		-0.151816, -0.979857, 0.129743,
		0.862370, -0.067169, 0.501804,
		26.989460, 37.441391, 55.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.931828, 34.975914, 59.703106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759987, 35.238430, 59.455002>,  <32.656883, 35.395939, 59.306141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759987, 35.238430, 59.455002>,  <32.931828, 34.975914, 59.703106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759987, 35.238430, 59.455002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485784, -0.411054, -0.771394,
		-0.761222, -0.632702, -0.142228,
		-0.429599, 0.656294, -0.620260,
		32.631107, 35.435318, 59.268925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624443, 34.594578, 59.232246>,  <32.931828, 34.975914, 59.703106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624443, 34.594578, 59.232246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683517, 34.945778, 59.050121>,  <32.718964, 35.156498, 58.940845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683517, 34.945778, 59.050121>,  <32.624443, 34.594578, 59.232246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683517, 34.945778, 59.050121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344757, -0.477188, -0.808353,
		-0.927001, -0.037589, -0.373170,
		0.147688, 0.877997, -0.455313,
		32.727825, 35.209179, 58.913528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324318, 34.512234, 58.522575>,  <32.624443, 34.594578, 59.232246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324318, 34.512234, 58.522575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577423, 34.821972, 58.522385>,  <32.729286, 35.007812, 58.522270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577423, 34.821972, 58.522385>,  <32.324318, 34.512234, 58.522575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577423, 34.821972, 58.522385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435638, -0.356497, -0.826517,
		-0.640178, 0.522783, -0.562912,
		0.632765, 0.774344, -0.000477,
		32.767254, 35.054276, 58.522240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281181, 34.636616, 57.847980>,  <32.324318, 34.512234, 58.522575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281181, 34.636616, 57.847980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609455, 34.804909, 58.002625>,  <32.806419, 34.905884, 58.095409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609455, 34.804909, 58.002625>,  <32.281181, 34.636616, 57.847980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609455, 34.804909, 58.002625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481659, -0.145406, -0.864212,
		-0.307384, 0.895457, -0.321980,
		0.820683, 0.420729, 0.386610,
		32.855659, 34.931126, 58.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654507, 35.027027, 57.300030>,  <32.281181, 34.636616, 57.847980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654507, 35.027027, 57.300030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950665, 34.997353, 57.567253>,  <33.128361, 34.979549, 57.727589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950665, 34.997353, 57.567253>,  <32.654507, 35.027027, 57.300030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950665, 34.997353, 57.567253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619761, -0.309397, -0.721228,
		0.260202, 0.948034, -0.183099,
		0.740399, -0.074188, 0.668061,
		33.172783, 34.975098, 57.767670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269855, 35.432617, 57.156441>,  <32.654507, 35.027027, 57.300030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269855, 35.432617, 57.156441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401268, 35.110603, 57.354019>,  <33.480114, 34.917393, 57.472565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401268, 35.110603, 57.354019>,  <33.269855, 35.432617, 57.156441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401268, 35.110603, 57.354019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696278, -0.146932, -0.702572,
		0.638173, 0.574741, 0.512258,
		0.328530, -0.805037, 0.493948,
		33.499828, 34.869091, 57.502205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040894, 35.369267, 56.998390>,  <33.269855, 35.432617, 57.156441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040894, 35.369267, 56.998390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953873, 35.011295, 57.154224>,  <33.901661, 34.796513, 57.247726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953873, 35.011295, 57.154224>,  <34.040894, 35.369267, 56.998390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953873, 35.011295, 57.154224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671487, -0.426912, -0.605683,
		0.708361, 0.129834, 0.693807,
		-0.217557, -0.894924, 0.389589,
		33.888607, 34.742817, 57.271103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715961, 35.032898, 57.159595>,  <34.040894, 35.369267, 56.998390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715961, 35.032898, 57.159595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436417, 34.753380, 57.098572>,  <34.268688, 34.585670, 57.061958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436417, 34.753380, 57.098572>,  <34.715961, 35.032898, 57.159595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436417, 34.753380, 57.098572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623351, -0.490457, -0.609003,
		0.350743, -0.520710, 0.778357,
		-0.698865, -0.698794, -0.152561,
		34.226757, 34.543743, 57.052803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088589, 34.527378, 57.248650>,  <34.715961, 35.032898, 57.159595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088589, 34.527378, 57.248650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766872, 34.373314, 57.067642>,  <34.573841, 34.280876, 56.959038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766872, 34.373314, 57.067642>,  <35.088589, 34.527378, 57.248650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766872, 34.373314, 57.067642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576520, -0.690330, -0.437114,
		-0.144024, -0.612450, 0.777279,
		-0.804289, -0.385162, -0.452514,
		34.525585, 34.257767, 56.931889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017288, 33.767342, 57.283215>,  <35.088589, 34.527378, 57.248650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017288, 33.767342, 57.283215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797085, 33.863796, 56.963516>,  <34.664963, 33.921669, 56.771698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797085, 33.863796, 56.963516>,  <35.017288, 33.767342, 57.283215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797085, 33.863796, 56.963516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475757, -0.696082, -0.537704,
		-0.686002, -0.676257, 0.268475,
		-0.550507, 0.241137, -0.799247,
		34.631935, 33.936138, 56.723743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846634, 33.095795, 56.911541>,  <35.017288, 33.767342, 57.283215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846634, 33.095795, 56.911541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771893, 33.379990, 56.640163>,  <34.727047, 33.550507, 56.477337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771893, 33.379990, 56.640163>,  <34.846634, 33.095795, 56.911541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771893, 33.379990, 56.640163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448050, -0.552967, -0.702481,
		-0.874263, -0.435241, -0.215008,
		-0.186856, 0.710488, -0.678448,
		34.715836, 33.593136, 56.436630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696758, 32.781624, 56.291946>,  <34.846634, 33.095795, 56.911541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696758, 32.781624, 56.291946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774445, 33.154411, 56.169495>,  <34.821056, 33.378082, 56.096024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774445, 33.154411, 56.169495>,  <34.696758, 32.781624, 56.291946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774445, 33.154411, 56.169495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283628, -0.352090, -0.891958,
		-0.939061, 0.086409, -0.332715,
		0.194219, 0.931969, -0.306126,
		34.832710, 33.434002, 56.077656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505508, 32.800522, 55.578064>,  <34.696758, 32.781624, 56.291946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505508, 32.800522, 55.578064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754589, 33.113396, 55.586334>,  <34.904037, 33.301121, 55.591297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754589, 33.113396, 55.586334>,  <34.505508, 32.800522, 55.578064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754589, 33.113396, 55.586334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454976, -0.340456, -0.822853,
		-0.636582, 0.521802, -0.567878,
		0.622704, 0.782184, 0.020679,
		34.941399, 33.348049, 55.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535999, 33.069202, 54.940723>,  <34.505508, 32.800522, 55.578064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535999, 33.069202, 54.940723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866886, 33.230492, 55.097244>,  <35.065418, 33.327267, 55.191158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866886, 33.230492, 55.097244>,  <34.535999, 33.069202, 54.940723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866886, 33.230492, 55.097244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499175, -0.207678, -0.841246,
		-0.257946, 0.891224, -0.373074,
		0.827217, 0.403225, 0.391307,
		35.115051, 33.351460, 55.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890118, 33.390198, 54.709511>,  <34.535999, 33.069202, 54.940723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890118, 33.390198, 54.709511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622242, 33.258995, 54.443001>,  <33.461517, 33.180271, 54.283096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622242, 33.258995, 54.443001>,  <33.890118, 33.390198, 54.709511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622242, 33.258995, 54.443001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721751, 0.076187, 0.687947,
		-0.174893, 0.941597, -0.287764,
		-0.669692, -0.328011, -0.666274,
		33.421333, 33.160591, 54.243118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362804, 33.884762, 54.646381>,  <33.890118, 33.390198, 54.709511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362804, 33.884762, 54.646381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.182381, 33.548470, 54.526573>,  <33.074127, 33.346695, 54.454689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.182381, 33.548470, 54.526573>,  <33.362804, 33.884762, 54.646381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182381, 33.548470, 54.526573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759401, 0.185218, 0.623701,
		-0.468890, 0.508782, -0.721999,
		-0.451056, -0.840735, -0.299523,
		33.047066, 33.296249, 54.436718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567844, 34.115101, 54.570457>,  <33.362804, 33.884762, 54.646381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567844, 34.115101, 54.570457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599007, 33.721329, 54.633488>,  <32.617706, 33.485065, 54.671307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599007, 33.721329, 54.633488>,  <32.567844, 34.115101, 54.570457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599007, 33.721329, 54.633488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716711, 0.054562, 0.695233,
		-0.693005, -0.167100, -0.701300,
		0.077909, -0.984429, 0.157574,
		32.622379, 33.425999, 54.680759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905846, 33.702015, 54.524426>,  <32.567844, 34.115101, 54.570457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905846, 33.702015, 54.524426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153564, 33.454826, 54.718163>,  <32.302197, 33.306515, 54.834404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153564, 33.454826, 54.718163>,  <31.905846, 33.702015, 54.524426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153564, 33.454826, 54.718163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749126, -0.280341, 0.600182,
		-0.235110, -0.734527, -0.636548,
		0.619300, -0.617964, 0.484342,
		32.339355, 33.269436, 54.863464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533035, 33.143456, 54.648876>,  <31.905846, 33.702015, 54.524426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533035, 33.143456, 54.648876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839972, 33.113140, 54.903576>,  <32.024132, 33.094952, 55.056396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.839972, 33.113140, 54.903576>,  <31.533035, 33.143456, 54.648876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839972, 33.113140, 54.903576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641131, -0.109187, 0.759625,
		0.011957, -0.991128, -0.132371,
		0.767339, -0.075784, 0.636748,
		32.070171, 33.090405, 55.094601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333408, 32.680027, 55.269512>,  <31.533035, 33.143456, 54.648876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333408, 32.680027, 55.269512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623402, 32.913876, 55.415176>,  <31.797398, 33.054184, 55.502575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623402, 32.913876, 55.415176>,  <31.333408, 32.680027, 55.269512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623402, 32.913876, 55.415176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418625, -0.045843, 0.907001,
		0.546949, -0.810008, 0.211503,
		0.724983, 0.584624, 0.364163,
		31.840897, 33.089264, 55.524426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496260, 32.388184, 55.944580>,  <31.333408, 32.680027, 55.269512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496260, 32.388184, 55.944580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615974, 32.769753, 55.936012>,  <31.687803, 32.998695, 55.930870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615974, 32.769753, 55.936012>,  <31.496260, 32.388184, 55.944580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615974, 32.769753, 55.936012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425706, 0.153588, 0.891732,
		0.853932, -0.257766, 0.452057,
		0.299289, 0.953922, -0.021421,
		31.705761, 33.055927, 55.929585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623272, 32.427704, 56.680702>,  <31.496260, 32.388184, 55.944580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623272, 32.427704, 56.680702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558142, 32.803646, 56.560600>,  <31.519064, 33.029213, 56.488541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558142, 32.803646, 56.560600>,  <31.623272, 32.427704, 56.680702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558142, 32.803646, 56.560600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445006, 0.201650, 0.872529,
		0.880601, 0.275684, 0.385409,
		-0.162824, 0.939859, -0.300254,
		31.509295, 33.085606, 56.470524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719204, 32.956257, 57.289429>,  <31.623272, 32.427704, 56.680702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719204, 32.956257, 57.289429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497274, 33.162781, 57.028477>,  <31.364117, 33.286694, 56.871906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497274, 33.162781, 57.028477>,  <31.719204, 32.956257, 57.289429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497274, 33.162781, 57.028477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478688, 0.443236, 0.757891,
		0.680463, 0.732781, 0.001233,
		-0.554822, 0.516308, -0.652380,
		31.330828, 33.317673, 56.832764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776665, 33.691425, 57.481689>,  <31.719204, 32.956257, 57.289429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776665, 33.691425, 57.481689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447628, 33.652187, 57.257648>,  <31.250206, 33.628643, 57.123222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.447628, 33.652187, 57.257648>,  <31.776665, 33.691425, 57.481689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447628, 33.652187, 57.257648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548963, 0.393820, 0.737255,
		0.148260, 0.913938, -0.377804,
		-0.822592, -0.098095, -0.560106,
		31.200850, 33.622761, 57.089615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400829, 34.396732, 57.496201>,  <31.776665, 33.691425, 57.481689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400829, 34.396732, 57.496201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143457, 34.101276, 57.415791>,  <30.989035, 33.924004, 57.367546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.143457, 34.101276, 57.415791>,  <31.400829, 34.396732, 57.496201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143457, 34.101276, 57.415791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658288, 0.399864, 0.637782,
		-0.390709, 0.542698, -0.743522,
		-0.643430, -0.738639, -0.201021,
		30.950428, 33.879684, 57.355484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863420, 34.748116, 57.399609>,  <31.400829, 34.396732, 57.496201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863420, 34.748116, 57.399609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726332, 34.375862, 57.450924>,  <30.644079, 34.152508, 57.481712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726332, 34.375862, 57.450924>,  <30.863420, 34.748116, 57.399609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726332, 34.375862, 57.450924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795277, 0.360102, 0.487710,
		-0.500077, 0.065125, -0.863529,
		-0.342720, -0.930637, 0.128286,
		30.623516, 34.096672, 57.489410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214666, 34.747974, 57.176662>,  <30.863420, 34.748116, 57.399609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214666, 34.747974, 57.176662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236942, 34.447746, 57.440037>,  <30.250309, 34.267609, 57.598061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236942, 34.447746, 57.440037>,  <30.214666, 34.747974, 57.176662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236942, 34.447746, 57.440037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560690, 0.522151, 0.642640,
		-0.826151, -0.404968, -0.391759,
		0.055691, -0.750573, 0.658437,
		30.253649, 34.222576, 57.637569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542934, 34.556011, 57.333515>,  <30.214666, 34.747974, 57.176662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542934, 34.556011, 57.333515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.766676, 34.428444, 57.639565>,  <29.900921, 34.351902, 57.823193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.766676, 34.428444, 57.639565>,  <29.542934, 34.556011, 57.333515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766676, 34.428444, 57.639565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612458, 0.462988, 0.640732,
		-0.558586, -0.827001, 0.063648,
		0.559354, -0.318923, 0.765122,
		29.934483, 34.332767, 57.869102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862751, 34.088093, 57.416027>,  <29.542934, 34.556011, 57.333515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862751, 34.088093, 57.416027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.498281, 34.179340, 57.278782>,  <28.279600, 34.234089, 57.196434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.498281, 34.179340, 57.278782>,  <28.862751, 34.088093, 57.416027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498281, 34.179340, 57.278782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222201, -0.429223, -0.875439,
		-0.346972, -0.873917, 0.340409,
		-0.911173, 0.228114, -0.343114,
		28.224930, 34.247776, 57.175846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574183, 33.448505, 57.127346>,  <28.862751, 34.088093, 57.416027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574183, 33.448505, 57.127346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383823, 33.760906, 56.965580>,  <28.269608, 33.948349, 56.868519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383823, 33.760906, 56.965580>,  <28.574183, 33.448505, 57.127346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383823, 33.760906, 56.965580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278894, -0.302086, -0.911572,
		-0.834110, -0.546604, -0.074055,
		-0.475898, 0.781005, -0.404417,
		28.241055, 33.995209, 56.844254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168083, 33.175785, 56.603226>,  <28.574183, 33.448505, 57.127346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168083, 33.175785, 56.603226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223160, 33.556057, 56.492054>,  <28.256207, 33.784222, 56.425350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.223160, 33.556057, 56.492054>,  <28.168083, 33.175785, 56.603226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223160, 33.556057, 56.492054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245215, -0.304589, -0.920378,
		-0.959641, 0.058577, -0.275061,
		0.137694, 0.950681, -0.277932,
		28.264467, 33.841263, 56.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926367, 33.128006, 55.890343>,  <28.168083, 33.175785, 56.603226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926367, 33.128006, 55.890343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.149406, 33.456921, 55.935833>,  <28.283230, 33.654270, 55.963127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.149406, 33.456921, 55.935833>,  <27.926367, 33.128006, 55.890343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149406, 33.456921, 55.935833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324576, -0.089870, -0.941580,
		-0.764025, 0.561937, -0.317005,
		0.557598, 0.822283, 0.113728,
		28.316687, 33.703606, 55.969952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827913, 33.354191, 55.267178>,  <27.926367, 33.128006, 55.890343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827913, 33.354191, 55.267178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.143351, 33.543282, 55.424484>,  <28.332613, 33.656734, 55.518867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.143351, 33.543282, 55.424484>,  <27.827913, 33.354191, 55.267178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143351, 33.543282, 55.424484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439513, 0.013968, -0.898128,
		-0.430058, 0.881101, -0.196752,
		0.788592, 0.472723, 0.393263,
		28.379929, 33.685097, 55.542461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990719, 34.012997, 54.865078>,  <27.827913, 33.354191, 55.267178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990719, 34.012997, 54.865078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.327215, 33.914314, 55.057514>,  <28.529114, 33.855106, 55.172974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.327215, 33.914314, 55.057514>,  <27.990719, 34.012997, 54.865078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327215, 33.914314, 55.057514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475946, -0.084207, -0.875434,
		0.256487, 0.965425, 0.046581,
		0.841243, -0.246707, 0.481088,
		28.579588, 33.840302, 55.201839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424755, 34.308762, 54.434788>,  <27.990719, 34.012997, 54.865078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424755, 34.308762, 54.434788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649637, 34.067223, 54.660812>,  <28.784567, 33.922298, 54.796425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.649637, 34.067223, 54.660812>,  <28.424755, 34.308762, 54.434788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649637, 34.067223, 54.660812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550095, -0.237131, -0.800727,
		0.617511, 0.761010, 0.198857,
		0.562206, -0.603848, 0.565059,
		28.818298, 33.886066, 54.830330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179844, 34.490345, 54.313663>,  <28.424755, 34.308762, 54.434788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179844, 34.490345, 54.313663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146467, 34.112694, 54.441196>,  <29.126442, 33.886101, 54.517715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.146467, 34.112694, 54.441196>,  <29.179844, 34.490345, 54.313663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146467, 34.112694, 54.441196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604082, -0.302380, -0.737327,
		0.792542, 0.131075, 0.595565,
		-0.083442, -0.944132, 0.318829,
		29.121435, 33.829453, 54.536846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906918, 34.156197, 53.958481>,  <29.179844, 34.490345, 54.313663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906918, 34.156197, 53.958481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635611, 33.888695, 54.080280>,  <29.472826, 33.728195, 54.153358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635611, 33.888695, 54.080280>,  <29.906918, 34.156197, 53.958481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635611, 33.888695, 54.080280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281448, -0.619220, -0.733044,
		0.678777, -0.411502, 0.608218,
		-0.678269, -0.668755, 0.304496,
		29.432129, 33.688068, 54.171631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276508, 33.532551, 54.105217>,  <29.906918, 34.156197, 53.958481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276508, 33.532551, 54.105217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.893791, 33.446110, 54.027397>,  <29.664162, 33.394245, 53.980705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.893791, 33.446110, 54.027397>,  <30.276508, 33.532551, 54.105217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893791, 33.446110, 54.027397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289132, -0.778140, -0.557586,
		-0.030892, -0.589744, 0.806999,
		-0.956791, -0.216104, -0.194552,
		29.606754, 33.381279, 53.969032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292253, 32.824558, 54.165577>,  <30.276508, 33.532551, 54.105217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292253, 32.824558, 54.165577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973553, 32.934120, 53.950111>,  <29.782333, 32.999859, 53.820831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973553, 32.934120, 53.950111>,  <30.292253, 32.824558, 54.165577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973553, 32.934120, 53.950111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304561, -0.587891, -0.749418,
		-0.521945, -0.761158, 0.384984,
		-0.796754, 0.273903, -0.538665,
		29.734528, 33.016293, 53.788509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044411, 32.207897, 53.935062>,  <30.292253, 32.824558, 54.165577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044411, 32.207897, 53.935062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894077, 32.489174, 53.693642>,  <29.803877, 32.657940, 53.548790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.894077, 32.489174, 53.693642>,  <30.044411, 32.207897, 53.935062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894077, 32.489174, 53.693642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346565, -0.497385, -0.795300,
		-0.859443, -0.508071, -0.056766,
		-0.375834, 0.703187, -0.603553,
		29.781326, 32.700130, 53.512577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696863, 31.787470, 53.470348>,  <30.044411, 32.207897, 53.935062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696863, 31.787470, 53.470348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770948, 32.147858, 53.313404>,  <29.815399, 32.364090, 53.219238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.770948, 32.147858, 53.313404>,  <29.696863, 31.787470, 53.470348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770948, 32.147858, 53.313404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406374, -0.433752, -0.804189,
		-0.894738, -0.010498, -0.446468,
		0.185214, 0.900971, -0.392360,
		29.826513, 32.418148, 53.195698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659752, 31.612888, 52.746525>,  <29.696863, 31.787470, 53.470348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659752, 31.612888, 52.746525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866398, 31.954834, 52.765759>,  <29.990385, 32.160004, 52.777298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866398, 31.954834, 52.765759>,  <29.659752, 31.612888, 52.746525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866398, 31.954834, 52.765759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499630, -0.255380, -0.827739,
		-0.695326, 0.451647, -0.559050,
		0.516616, 0.854866, 0.048084,
		30.021383, 32.211292, 52.780182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.621502, 36.549355, 56.500992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898584, 36.837677, 56.491196>,  <27.064835, 37.010670, 56.485317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.898584, 36.837677, 56.491196>,  <26.621502, 36.549355, 56.500992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898584, 36.837677, 56.491196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286255, 0.305951, 0.907993,
		0.661977, -0.621963, 0.418268,
		0.692708, 0.720802, -0.024492,
		27.106398, 37.053917, 56.483849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799978, 36.556225, 57.239101>,  <26.621502, 36.549355, 56.500992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799978, 36.556225, 57.239101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.958368, 36.893055, 57.092621>,  <27.053402, 37.095154, 57.004730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.958368, 36.893055, 57.092621>,  <26.799978, 36.556225, 57.239101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958368, 36.893055, 57.092621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297998, 0.495061, 0.816157,
		0.868563, -0.214049, 0.446969,
		0.395975, 0.842080, -0.366205,
		27.077160, 37.145679, 56.982758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322908, 36.780548, 57.792221>,  <26.799978, 36.556225, 57.239101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322908, 36.780548, 57.792221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.199192, 37.084179, 57.563084>,  <27.124962, 37.266357, 57.425602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.199192, 37.084179, 57.563084>,  <27.322908, 36.780548, 57.792221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199192, 37.084179, 57.563084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284811, 0.500785, 0.817372,
		0.907315, 0.415957, 0.061304,
		-0.309292, 0.759075, -0.572839,
		27.106405, 37.311901, 57.391232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695900, 37.326447, 57.946434>,  <27.322908, 36.780548, 57.792221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695900, 37.326447, 57.946434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.361122, 37.485512, 57.796032>,  <27.160255, 37.580952, 57.705791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.361122, 37.485512, 57.796032>,  <27.695900, 37.326447, 57.946434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361122, 37.485512, 57.796032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117101, 0.541013, 0.832822,
		0.534611, 0.741058, -0.406232,
		-0.836946, 0.397666, -0.376010,
		27.110039, 37.604813, 57.683228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774824, 37.984699, 58.308456>,  <27.695900, 37.326447, 57.946434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774824, 37.984699, 58.308456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.401377, 37.965569, 58.166431>,  <27.177309, 37.954090, 58.081215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.401377, 37.965569, 58.166431>,  <27.774824, 37.984699, 58.308456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401377, 37.965569, 58.166431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308344, 0.611911, 0.728346,
		0.182438, 0.789479, -0.586037,
		-0.933617, -0.047823, -0.355067,
		27.121292, 37.951221, 58.059910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593092, 38.587646, 58.335701>,  <27.774824, 37.984699, 58.308456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593092, 38.587646, 58.335701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.252579, 38.377998, 58.325748>,  <27.048271, 38.252209, 58.319778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.252579, 38.377998, 58.325748>,  <27.593092, 38.587646, 58.335701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252579, 38.377998, 58.325748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412880, 0.639833, 0.648185,
		-0.323806, 0.562061, -0.761076,
		-0.851281, -0.524119, -0.024882,
		26.997194, 38.220764, 58.318283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156446, 39.082039, 58.384174>,  <27.593092, 38.587646, 58.335701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156446, 39.082039, 58.384174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.963181, 38.745464, 58.480953>,  <26.847221, 38.543518, 58.539021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.963181, 38.745464, 58.480953>,  <27.156446, 39.082039, 58.384174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963181, 38.745464, 58.480953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468811, 0.482027, 0.740180,
		-0.739438, 0.244203, -0.627373,
		-0.483165, -0.841436, 0.241944,
		26.818232, 38.493034, 58.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415920, 39.323818, 58.508160>,  <27.156446, 39.082039, 58.384174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415920, 39.323818, 58.508160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.459948, 38.969822, 58.689129>,  <26.486364, 38.757423, 58.797710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.459948, 38.969822, 58.689129>,  <26.415920, 39.323818, 58.508160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459948, 38.969822, 58.689129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477073, 0.352280, 0.805171,
		-0.871944, -0.304462, -0.383428,
		0.110070, -0.884987, 0.452419,
		26.492970, 38.704327, 58.824856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739803, 39.233658, 58.910969>,  <26.415920, 39.323818, 58.508160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739803, 39.233658, 58.910969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.024162, 39.006573, 59.077019>,  <26.194778, 38.870323, 59.176651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.024162, 39.006573, 59.077019>,  <25.739803, 39.233658, 58.910969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024162, 39.006573, 59.077019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336292, 0.244015, 0.909595,
		-0.617683, -0.786234, -0.017446,
		0.710897, -0.567709, 0.415129,
		26.237431, 38.836262, 59.201557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369808, 38.806538, 59.440853>,  <25.739803, 39.233658, 58.910969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369808, 38.806538, 59.440853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.760979, 38.822243, 59.522942>,  <25.995682, 38.831665, 59.572197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.760979, 38.822243, 59.522942>,  <25.369808, 38.806538, 59.440853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760979, 38.822243, 59.522942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206509, 0.331199, 0.920685,
		-0.031818, -0.942744, 0.331997,
		0.977927, 0.039266, 0.205223,
		26.054358, 38.834023, 59.584507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299097, 39.054344, 60.070057>,  <25.369808, 38.806538, 59.440853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299097, 39.054344, 60.070057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.696177, 39.054707, 60.021812>,  <25.934425, 39.054924, 59.992867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.696177, 39.054707, 60.021812>,  <25.299097, 39.054344, 60.070057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696177, 39.054707, 60.021812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116848, 0.240682, 0.963545,
		0.029903, -0.970604, 0.238819,
		0.992699, 0.000908, -0.120610,
		25.993986, 39.054977, 59.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504158, 38.663746, 60.579422>,  <25.299097, 39.054344, 60.070057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504158, 38.663746, 60.579422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.809872, 38.907368, 60.494644>,  <25.993299, 39.053539, 60.443779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.809872, 38.907368, 60.494644>,  <25.504158, 38.663746, 60.579422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809872, 38.907368, 60.494644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127215, 0.179804, 0.975442,
		0.632205, -0.772479, 0.059941,
		0.764286, 0.609054, -0.211944,
		26.039158, 39.090084, 60.431061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267645, 38.303032, 61.221111>,  <25.504158, 38.663746, 60.579422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267645, 38.303032, 61.221111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.613939, 38.497917, 61.266933>,  <25.821716, 38.614849, 61.294426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.613939, 38.497917, 61.266933>,  <25.267645, 38.303032, 61.221111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613939, 38.497917, 61.266933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385021, 0.794548, -0.469524,
		-0.319777, 0.362378, 0.875457,
		0.865737, 0.487212, 0.114555,
		25.873661, 38.644081, 61.301300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246696, 37.598110, 61.530701>,  <25.267645, 38.303032, 61.221111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246696, 37.598110, 61.530701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.389334, 37.815178, 61.834896>,  <25.474916, 37.945419, 62.017414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.389334, 37.815178, 61.834896>,  <25.246696, 37.598110, 61.530701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389334, 37.815178, 61.834896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523671, 0.558011, -0.643733,
		-0.773698, 0.627800, -0.085197,
		0.356595, 0.542671, 0.760492,
		25.496313, 37.977978, 62.063046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323061, 36.808941, 61.798851>,  <25.246696, 37.598110, 61.530701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323061, 36.808941, 61.798851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.373165, 36.420544, 61.880318>,  <25.403227, 36.187504, 61.929199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.373165, 36.420544, 61.880318>,  <25.323061, 36.808941, 61.798851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373165, 36.420544, 61.880318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480601, -0.120204, -0.868662,
		0.867947, 0.206690, 0.451604,
		0.125259, -0.970995, 0.203666,
		25.410744, 36.129246, 61.941418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956350, 36.635815, 61.597607>,  <25.323061, 36.808941, 61.798851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956350, 36.635815, 61.597607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.791460, 36.272346, 61.571129>,  <25.692526, 36.054264, 61.555244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.791460, 36.272346, 61.571129>,  <25.956350, 36.635815, 61.597607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791460, 36.272346, 61.571129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569651, -0.200363, -0.797090,
		0.711033, -0.366286, 0.600222,
		-0.412225, -0.908674, -0.066190,
		25.667793, 35.999744, 61.551273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463692, 36.175278, 61.415657>,  <25.956350, 36.635815, 61.597607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463692, 36.175278, 61.415657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.125298, 35.981232, 61.327137>,  <25.922260, 35.864803, 61.274025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.125298, 35.981232, 61.327137>,  <26.463692, 36.175278, 61.415657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125298, 35.981232, 61.327137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424308, -0.361143, -0.830385,
		0.322907, -0.796394, 0.511358,
		-0.845987, -0.485110, -0.221301,
		25.871502, 35.835697, 61.260746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674152, 35.536911, 61.253723>,  <26.463692, 36.175278, 61.415657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674152, 35.536911, 61.253723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.306150, 35.557590, 61.098331>,  <26.085350, 35.570000, 61.005096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.306150, 35.557590, 61.098331>,  <26.674152, 35.536911, 61.253723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306150, 35.557590, 61.098331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335689, -0.407586, -0.849227,
		-0.202246, -0.911702, 0.357625,
		-0.920005, 0.051702, -0.388481,
		26.030149, 35.573101, 60.981789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479107, 34.846504, 61.046719>,  <26.674152, 35.536911, 61.253723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479107, 34.846504, 61.046719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.296333, 35.134102, 60.837238>,  <26.186668, 35.306660, 60.711552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.296333, 35.134102, 60.837238>,  <26.479107, 34.846504, 61.046719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296333, 35.134102, 60.837238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457560, -0.314893, -0.831554,
		-0.762790, -0.619589, -0.185098,
		-0.456935, 0.718994, -0.523696,
		26.159252, 35.349800, 60.680130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294497, 34.494038, 60.494259>,  <26.479107, 34.846504, 61.046719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294497, 34.494038, 60.494259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.268822, 34.873104, 60.369160>,  <26.253418, 35.100544, 60.294098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.268822, 34.873104, 60.369160>,  <26.294497, 34.494038, 60.494259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268822, 34.873104, 60.369160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312154, -0.278607, -0.908261,
		-0.947861, -0.155924, -0.277935,
		-0.064185, 0.947663, -0.312753,
		26.249567, 35.157402, 60.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969463, 34.431297, 59.953640>,  <26.294497, 34.494038, 60.494259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969463, 34.431297, 59.953640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.150215, 34.787022, 59.925571>,  <26.258667, 35.000458, 59.908730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.150215, 34.787022, 59.925571>,  <25.969463, 34.431297, 59.953640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150215, 34.787022, 59.925571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244013, -0.198886, -0.949159,
		-0.858056, 0.411784, -0.306877,
		0.451881, 0.889314, -0.070174,
		26.285780, 35.053814, 59.904518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842339, 34.788704, 59.263329>,  <25.969463, 34.431297, 59.953640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842339, 34.788704, 59.263329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.157927, 35.010033, 59.370182>,  <26.347279, 35.142830, 59.434296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.157927, 35.010033, 59.370182>,  <25.842339, 34.788704, 59.263329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157927, 35.010033, 59.370182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443117, -0.211210, -0.871228,
		-0.425646, 0.805746, -0.411824,
		0.788969, 0.553321, 0.267139,
		26.394617, 35.176029, 59.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003441, 35.103546, 58.597626>,  <25.842339, 34.788704, 59.263329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003441, 35.103546, 58.597626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.335939, 35.197254, 58.799278>,  <26.535439, 35.253479, 58.920269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.335939, 35.197254, 58.799278>,  <26.003441, 35.103546, 58.597626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335939, 35.197254, 58.799278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541439, -0.135653, -0.829724,
		-0.125993, 0.962660, -0.239605,
		0.831246, 0.234271, 0.504131,
		26.585314, 35.267536, 58.950516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340378, 35.558987, 58.208973>,  <26.003441, 35.103546, 58.597626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340378, 35.558987, 58.208973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611891, 35.364620, 58.429207>,  <26.774797, 35.248001, 58.561348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.611891, 35.364620, 58.429207>,  <26.340378, 35.558987, 58.208973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611891, 35.364620, 58.429207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551969, -0.156906, -0.818969,
		0.484342, 0.859805, 0.161707,
		0.678781, -0.485918, 0.550582,
		26.815525, 35.218845, 58.594383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905310, 35.734486, 57.938236>,  <26.340378, 35.558987, 58.208973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905310, 35.734486, 57.938236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.032354, 35.402355, 58.121399>,  <27.108582, 35.203075, 58.231297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.032354, 35.402355, 58.121399>,  <26.905310, 35.734486, 57.938236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032354, 35.402355, 58.121399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614676, -0.187412, -0.766192,
		0.722007, 0.524816, 0.450859,
		0.317614, -0.830328, 0.457905,
		27.127638, 35.153255, 58.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611273, 35.790077, 57.774681>,  <26.905310, 35.734486, 57.938236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611273, 35.790077, 57.774681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.543516, 35.409477, 57.877403>,  <27.502861, 35.181118, 57.939037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.543516, 35.409477, 57.877403>,  <27.611273, 35.790077, 57.774681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543516, 35.409477, 57.877403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598516, -0.306337, -0.740227,
		0.782997, 0.028314, 0.621381,
		-0.169393, -0.951502, 0.256807,
		27.492699, 35.124027, 57.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221693, 35.452816, 57.780540>,  <27.611273, 35.790077, 57.774681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221693, 35.452816, 57.780540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.957254, 35.158554, 57.721523>,  <27.798592, 34.981998, 57.686115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.957254, 35.158554, 57.721523>,  <28.221693, 35.452816, 57.780540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957254, 35.158554, 57.721523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553829, -0.345793, -0.757430,
		0.506186, -0.582447, 0.636028,
		-0.661097, -0.735651, -0.147540,
		27.758924, 34.937859, 57.677261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702196, 34.938545, 57.528751>,  <28.221693, 35.452816, 57.780540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702196, 34.938545, 57.528751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.339933, 34.794453, 57.439297>,  <28.122576, 34.707996, 57.385624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.339933, 34.794453, 57.439297>,  <28.702196, 34.938545, 57.528751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339933, 34.794453, 57.439297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388150, -0.492099, -0.779217,
		0.170652, -0.792508, 0.585499,
		-0.905659, -0.360236, -0.223634,
		28.068235, 34.686382, 57.372208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140451, 34.580025, 57.958748>,  <28.702196, 34.938545, 57.528751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140451, 34.580025, 57.958748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.496243, 34.534615, 58.135807>,  <29.709717, 34.507366, 58.242043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.496243, 34.534615, 58.135807>,  <29.140451, 34.580025, 57.958748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496243, 34.534615, 58.135807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402721, 0.263044, 0.876712,
		-0.215967, -0.958081, 0.188252,
		0.889479, -0.113528, 0.442648,
		29.763086, 34.500557, 58.268600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905365, 34.199360, 58.662174>,  <29.140451, 34.580025, 57.958748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905365, 34.199360, 58.662174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282707, 34.324841, 58.705395>,  <29.509111, 34.400127, 58.731327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282707, 34.324841, 58.705395>,  <28.905365, 34.199360, 58.662174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282707, 34.324841, 58.705395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199468, 0.275980, 0.940238,
		0.265109, -0.908539, 0.322917,
		0.943361, 0.313677, 0.108060,
		29.565714, 34.418949, 58.737808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111286, 33.964359, 59.369492>,  <28.905365, 34.199360, 58.662174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111286, 33.964359, 59.369492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.360254, 34.260941, 59.269218>,  <29.509636, 34.438889, 59.209053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.360254, 34.260941, 59.269218>,  <29.111286, 33.964359, 59.369492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360254, 34.260941, 59.269218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157103, 0.432127, 0.888023,
		0.766752, -0.513341, 0.385450,
		0.622422, 0.741449, -0.250687,
		29.546982, 34.483376, 59.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503414, 34.075909, 59.946045>,  <29.111286, 33.964359, 59.369492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503414, 34.075909, 59.946045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.527973, 34.424038, 59.750587>,  <29.542707, 34.632915, 59.633312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.527973, 34.424038, 59.750587>,  <29.503414, 34.075909, 59.946045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527973, 34.424038, 59.750587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209473, 0.489898, 0.846239,
		0.975885, 0.050401, 0.212387,
		0.061396, 0.870322, -0.488642,
		29.546392, 34.685135, 59.603996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928122, 34.444649, 60.369976>,  <29.503414, 34.075909, 59.946045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928122, 34.444649, 60.369976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752645, 34.707851, 60.125168>,  <29.647360, 34.865772, 59.978283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.752645, 34.707851, 60.125168>,  <29.928122, 34.444649, 60.369976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752645, 34.707851, 60.125168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441262, 0.435567, 0.784582,
		0.782841, 0.614250, 0.099277,
		-0.438688, 0.658011, -0.612025,
		29.621038, 34.905254, 59.941559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183935, 35.122730, 60.430832>,  <29.928122, 34.444649, 60.369976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183935, 35.122730, 60.430832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802940, 35.116905, 60.309139>,  <29.574345, 35.113411, 60.236122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.802940, 35.116905, 60.309139>,  <30.183935, 35.122730, 60.430832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802940, 35.116905, 60.309139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273727, 0.478997, 0.834047,
		0.133581, 0.877696, -0.460225,
		-0.952486, -0.014563, -0.304234,
		29.517195, 35.112537, 60.217869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985237, 35.761295, 60.701504>,  <30.183935, 35.122730, 60.430832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985237, 35.761295, 60.701504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650457, 35.554867, 60.628635>,  <29.449591, 35.431007, 60.584915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.650457, 35.554867, 60.628635>,  <29.985237, 35.761295, 60.701504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650457, 35.554867, 60.628635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382452, 0.313429, 0.869191,
		-0.391471, 0.797138, -0.459698,
		-0.836947, -0.516075, -0.182168,
		29.399374, 35.400043, 60.573986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000858, 36.472778, 60.695156>,  <29.985237, 35.761295, 60.701504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000858, 36.472778, 60.695156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344652, 36.622490, 60.834412>,  <30.550930, 36.712315, 60.917965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344652, 36.622490, 60.834412>,  <30.000858, 36.472778, 60.695156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344652, 36.622490, 60.834412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437607, -0.186796, -0.879550,
		-0.264164, 0.908309, -0.324335,
		0.859487, 0.374276, 0.348137,
		30.602499, 36.734772, 60.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276499, 36.886032, 60.132126>,  <30.000858, 36.472778, 60.695156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276499, 36.886032, 60.132126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566994, 36.790821, 60.390095>,  <30.741291, 36.733696, 60.544876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.566994, 36.790821, 60.390095>,  <30.276499, 36.886032, 60.132126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566994, 36.790821, 60.390095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629332, -0.147302, -0.763049,
		0.276621, 0.960025, 0.042819,
		0.726238, -0.238023, 0.644921,
		30.784864, 36.719414, 60.583572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959038, 37.110939, 59.826637>,  <30.276499, 36.886032, 60.132126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959038, 37.110939, 59.826637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078278, 36.841572, 60.097237>,  <31.149820, 36.679951, 60.259594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.078278, 36.841572, 60.097237>,  <30.959038, 37.110939, 59.826637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078278, 36.841572, 60.097237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653171, -0.372901, -0.659024,
		0.696065, 0.638320, 0.328696,
		0.298098, -0.673418, 0.676495,
		31.167707, 36.639545, 60.300186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679733, 37.243771, 59.985046>,  <30.959038, 37.110939, 59.826637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679733, 37.243771, 59.985046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605003, 36.857006, 60.054546>,  <31.560165, 36.624947, 60.096245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.605003, 36.857006, 60.054546>,  <31.679733, 37.243771, 59.985046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605003, 36.857006, 60.054546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742296, -0.254788, -0.619741,
		0.643501, 0.013188, 0.765332,
		-0.186824, -0.966907, 0.173746,
		31.548956, 36.566933, 60.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303841, 36.927498, 60.103798>,  <31.679733, 37.243771, 59.985046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303841, 36.927498, 60.103798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081039, 36.612221, 59.999111>,  <31.947359, 36.423054, 59.936298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.081039, 36.612221, 59.999111>,  <32.303841, 36.927498, 60.103798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081039, 36.612221, 59.999111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780495, -0.389085, -0.489327,
		0.283855, -0.476826, 0.831904,
		-0.557005, -0.788194, -0.261716,
		31.913939, 36.375763, 59.920597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768555, 36.296726, 60.252327>,  <32.303841, 36.927498, 60.103798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768555, 36.296726, 60.252327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476665, 36.176506, 60.006668>,  <32.301533, 36.104374, 59.859272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.476665, 36.176506, 60.006668>,  <32.768555, 36.296726, 60.252327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476665, 36.176506, 60.006668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649668, -0.584796, -0.485742,
		-0.213164, -0.753449, 0.621993,
		-0.729721, -0.300546, -0.614149,
		32.257748, 36.086342, 59.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918430, 35.588310, 60.068813>,  <32.768555, 36.296726, 60.252327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918430, 35.588310, 60.068813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.679604, 35.702881, 59.769089>,  <32.536308, 35.771622, 59.589252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.679604, 35.702881, 59.769089>,  <32.918430, 35.588310, 60.068813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679604, 35.702881, 59.769089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588033, -0.479086, -0.651685,
		-0.545644, -0.829722, 0.117620,
		-0.597067, 0.286423, -0.749315,
		32.500484, 35.788807, 59.544296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.634150, 41.214577, 61.438786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330046, 40.995266, 61.299416>,  <28.147583, 40.863682, 61.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330046, 40.995266, 61.299416>,  <28.634150, 41.214577, 61.438786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330046, 40.995266, 61.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546812, -0.250545, -0.798889,
		0.350715, -0.797886, 0.490283,
		-0.760260, -0.548275, -0.348423,
		28.101967, 40.830784, 61.194889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823122, 40.560257, 61.176411>,  <28.634150, 41.214577, 61.438786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823122, 40.560257, 61.176411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469366, 40.624950, 61.001278>,  <28.257113, 40.663769, 60.896198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469366, 40.624950, 61.001278>,  <28.823122, 40.560257, 61.176411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469366, 40.624950, 61.001278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373692, -0.316695, -0.871813,
		-0.279663, -0.934637, 0.219642,
		-0.884388, 0.161735, -0.437834,
		28.204050, 40.673470, 60.869926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821602, 39.996296, 60.687138>,  <28.823122, 40.560257, 61.176411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821602, 39.996296, 60.687138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564316, 40.275021, 60.560188>,  <28.409945, 40.442257, 60.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564316, 40.275021, 60.560188>,  <28.821602, 39.996296, 60.687138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564316, 40.275021, 60.560188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394572, -0.053575, -0.917302,
		-0.656189, -0.715251, -0.240482,
		-0.643217, 0.696811, -0.317373,
		28.371351, 40.484062, 60.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415251, 39.640076, 60.184662>,  <28.821602, 39.996296, 60.687138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415251, 39.640076, 60.184662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399973, 40.029030, 60.092571>,  <28.390806, 40.262402, 60.037315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399973, 40.029030, 60.092571>,  <28.415251, 39.640076, 60.184662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399973, 40.029030, 60.092571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397574, -0.196586, -0.896264,
		-0.916775, -0.125766, -0.379087,
		-0.038196, 0.972387, -0.230226,
		28.388514, 40.320747, 60.023502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050611, 39.637287, 59.514729>,  <28.415251, 39.640076, 60.184662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050611, 39.637287, 59.514729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254976, 39.978516, 59.557137>,  <28.377596, 40.183254, 59.582581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254976, 39.978516, 59.557137>,  <28.050611, 39.637287, 59.514729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254976, 39.978516, 59.557137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439895, -0.153493, -0.884835,
		-0.738553, 0.498710, -0.453682,
		0.510913, 0.853070, 0.106017,
		28.408251, 40.234436, 59.588943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979076, 39.931973, 58.917442>,  <28.050611, 39.637287, 59.514729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979076, 39.931973, 58.917442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300589, 40.121300, 59.061615>,  <28.493496, 40.234894, 59.148121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300589, 40.121300, 59.061615>,  <27.979076, 39.931973, 58.917442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300589, 40.121300, 59.061615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299797, 0.201053, -0.932577,
		-0.513868, 0.857643, 0.019705,
		0.803780, 0.473314, 0.360434,
		28.541723, 40.263294, 59.169746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102318, 40.466793, 58.334698>,  <27.979076, 39.931973, 58.917442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102318, 40.466793, 58.334698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432554, 40.456802, 58.560184>,  <28.630695, 40.450809, 58.695477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432554, 40.456802, 58.560184>,  <28.102318, 40.466793, 58.334698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432554, 40.456802, 58.560184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560078, 0.157808, -0.813271,
		-0.068644, 0.987154, 0.144274,
		0.825591, -0.024978, 0.563715,
		28.680231, 40.449310, 58.729298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428682, 41.018879, 58.078743>,  <28.102318, 40.466793, 58.334698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428682, 41.018879, 58.078743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693941, 40.765228, 58.237797>,  <28.853096, 40.613037, 58.333229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693941, 40.765228, 58.237797>,  <28.428682, 41.018879, 58.078743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693941, 40.765228, 58.237797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642751, 0.210225, -0.736666,
		0.383549, 0.744099, 0.546998,
		0.663145, -0.634131, 0.397639,
		28.892885, 40.574989, 58.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122082, 41.277500, 57.786102>,  <28.428682, 41.018879, 58.078743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122082, 41.277500, 57.786102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253902, 40.927193, 57.927200>,  <29.332994, 40.717010, 58.011860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.253902, 40.927193, 57.927200>,  <29.122082, 41.277500, 57.786102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253902, 40.927193, 57.927200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603308, -0.092054, -0.792178,
		0.726234, 0.473878, 0.498020,
		0.329551, -0.875766, 0.352747,
		29.352768, 40.664463, 58.033024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865566, 41.161572, 57.835377>,  <29.122082, 41.277500, 57.786102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865566, 41.161572, 57.835377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735884, 40.783615, 57.817165>,  <29.658075, 40.556843, 57.806240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735884, 40.783615, 57.817165>,  <29.865566, 41.161572, 57.835377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735884, 40.783615, 57.817165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577471, -0.159560, -0.800667,
		0.749279, -0.285871, 0.597377,
		-0.324205, -0.944891, -0.045527,
		29.638622, 40.500149, 57.803509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454588, 40.754509, 57.714108>,  <29.865566, 41.161572, 57.835377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454588, 40.754509, 57.714108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146955, 40.518261, 57.616383>,  <29.962376, 40.376514, 57.557747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146955, 40.518261, 57.616383>,  <30.454588, 40.754509, 57.714108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146955, 40.518261, 57.616383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489087, -0.297732, -0.819848,
		0.411475, -0.750019, 0.517842,
		-0.769079, -0.590617, -0.244315,
		29.916231, 40.341076, 57.543087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812319, 40.147526, 57.514713>,  <30.454588, 40.754509, 57.714108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812319, 40.147526, 57.514713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451044, 40.133060, 57.343624>,  <30.234280, 40.124382, 57.240971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451044, 40.133060, 57.343624>,  <30.812319, 40.147526, 57.514713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451044, 40.133060, 57.343624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409576, -0.370808, -0.833516,
		-0.128460, -0.928005, 0.349721,
		-0.903186, -0.036164, -0.427723,
		30.180088, 40.122211, 57.215309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425211, 40.271492, 57.974808>,  <30.812319, 40.147526, 57.514713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425211, 40.271492, 57.974808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789549, 40.193367, 58.120255>,  <32.008152, 40.146492, 58.207523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789549, 40.193367, 58.120255>,  <31.425211, 40.271492, 57.974808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789549, 40.193367, 58.120255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399811, -0.198629, 0.894817,
		-0.102542, -0.960417, -0.259008,
		0.910844, -0.195311, 0.363617,
		32.062801, 40.134773, 58.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324059, 39.663139, 58.304085>,  <31.425211, 40.271492, 57.974808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324059, 39.663139, 58.304085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637552, 39.844414, 58.473969>,  <31.825649, 39.953178, 58.575897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637552, 39.844414, 58.473969>,  <31.324059, 39.663139, 58.304085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637552, 39.844414, 58.473969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271337, -0.365271, 0.890479,
		0.558689, -0.813140, -0.163310,
		0.783737, 0.453189, 0.424708,
		31.872673, 39.980370, 58.601379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477076, 39.167683, 58.777054>,  <31.324059, 39.663139, 58.304085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477076, 39.167683, 58.777054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641792, 39.517166, 58.880638>,  <31.740622, 39.726856, 58.942791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641792, 39.517166, 58.880638>,  <31.477076, 39.167683, 58.777054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641792, 39.517166, 58.880638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030516, -0.270796, 0.962153,
		0.910768, -0.404108, -0.084849,
		0.411790, 0.873708, 0.258964,
		31.765329, 39.779278, 58.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754778, 38.988987, 59.321934>,  <31.477076, 39.167683, 58.777054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754778, 38.988987, 59.321934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752089, 39.387203, 59.359566>,  <31.750475, 39.626133, 59.382145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752089, 39.387203, 59.359566>,  <31.754778, 38.988987, 59.321934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752089, 39.387203, 59.359566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235979, -0.093000, 0.967298,
		0.971735, -0.015698, 0.235552,
		-0.006722, 0.995542, 0.094076,
		31.750072, 39.685867, 59.387787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171314, 39.161228, 59.931667>,  <31.754778, 38.988987, 59.321934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171314, 39.161228, 59.931667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927309, 39.468975, 59.855820>,  <31.780905, 39.653622, 59.810310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927309, 39.468975, 59.855820>,  <32.171314, 39.161228, 59.931667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927309, 39.468975, 59.855820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210056, 0.073733, 0.974905,
		0.764040, 0.634539, 0.116632,
		-0.610016, 0.769366, -0.189624,
		31.744305, 39.699783, 59.798931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190758, 39.535004, 60.487320>,  <32.171314, 39.161228, 59.931667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190758, 39.535004, 60.487320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854641, 39.680134, 60.326195>,  <31.652969, 39.767212, 60.229519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854641, 39.680134, 60.326195>,  <32.190758, 39.535004, 60.487320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854641, 39.680134, 60.326195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302370, 0.303053, 0.903732,
		0.449975, 0.881200, -0.144945,
		-0.840294, 0.362830, -0.402814,
		31.602552, 39.788982, 60.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120430, 40.285728, 60.759312>,  <32.190758, 39.535004, 60.487320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120430, 40.285728, 60.759312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769636, 40.134159, 60.641121>,  <31.559158, 40.043217, 60.570206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769636, 40.134159, 60.641121>,  <32.120430, 40.285728, 60.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769636, 40.134159, 60.641121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413906, 0.283370, 0.865092,
		-0.244077, 0.880975, -0.405352,
		-0.876988, -0.378926, -0.295476,
		31.506540, 40.020481, 60.552479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696482, 40.590748, 61.286438>,  <32.120430, 40.285728, 60.759312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696482, 40.590748, 61.286438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481363, 40.307442, 61.103512>,  <31.352293, 40.137459, 60.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481363, 40.307442, 61.103512>,  <31.696482, 40.590748, 61.286438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481363, 40.307442, 61.103512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428446, -0.237572, 0.871776,
		-0.726093, 0.664773, -0.175688,
		-0.537795, -0.708263, -0.457319,
		31.320024, 40.094963, 60.966316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866217, 40.718372, 61.324406>,  <31.696482, 40.590748, 61.286438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866217, 40.718372, 61.324406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924232, 40.322857, 61.310200>,  <30.959042, 40.085548, 61.301678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924232, 40.322857, 61.310200>,  <30.866217, 40.718372, 61.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924232, 40.322857, 61.310200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661221, -0.123566, 0.739945,
		-0.736037, -0.083838, -0.671730,
		0.145038, -0.988789, -0.035514,
		30.967745, 40.026222, 61.299545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220312, 40.529095, 61.511932>,  <30.866217, 40.718372, 61.324406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220312, 40.529095, 61.511932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466101, 40.215553, 61.547710>,  <30.613575, 40.027428, 61.569176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466101, 40.215553, 61.547710>,  <30.220312, 40.529095, 61.511932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466101, 40.215553, 61.547710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492209, -0.292287, 0.819938,
		-0.616566, -0.547855, -0.565421,
		0.614472, -0.783852, 0.089445,
		30.650442, 39.980396, 61.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735447, 40.076599, 61.660275>,  <30.220312, 40.529095, 61.511932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735447, 40.076599, 61.660275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059048, 39.861900, 61.756123>,  <30.253208, 39.733082, 61.813633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059048, 39.861900, 61.756123>,  <29.735447, 40.076599, 61.660275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059048, 39.861900, 61.756123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458569, -0.321275, 0.828551,
		-0.367738, -0.780182, -0.506048,
		0.809002, -0.536748, 0.239622,
		30.301748, 39.700874, 61.828011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598112, 39.400955, 61.714661>,  <29.735447, 40.076599, 61.660275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598112, 39.400955, 61.714661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930145, 39.422058, 61.936718>,  <30.129364, 39.434719, 62.069950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930145, 39.422058, 61.936718>,  <29.598112, 39.400955, 61.714661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930145, 39.422058, 61.936718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525331, -0.259964, 0.810213,
		0.187061, -0.964176, -0.188076,
		0.830081, 0.052757, 0.555141,
		30.179169, 39.437885, 62.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592760, 38.778839, 62.217556>,  <29.598112, 39.400955, 61.714661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592760, 38.778839, 62.217556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818653, 39.074383, 62.364613>,  <29.954189, 39.251709, 62.452847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818653, 39.074383, 62.364613>,  <29.592760, 38.778839, 62.217556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818653, 39.074383, 62.364613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388266, -0.155224, 0.908380,
		0.728234, -0.655735, 0.199215,
		0.564734, 0.738862, 0.367639,
		29.988073, 39.296040, 62.474903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860928, 38.449390, 62.792290>,  <29.592760, 38.778839, 62.217556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860928, 38.449390, 62.792290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868629, 38.847950, 62.825321>,  <29.873251, 39.087086, 62.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868629, 38.847950, 62.825321>,  <29.860928, 38.449390, 62.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868629, 38.847950, 62.825321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438492, -0.065815, 0.896322,
		0.898529, -0.053469, 0.435646,
		0.019253, 0.996398, 0.082582,
		29.874405, 39.146870, 62.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195078, 38.264645, 63.416290>,  <29.860928, 38.449390, 62.792290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195078, 38.264645, 63.416290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204315, 37.899544, 63.579433>,  <30.209858, 37.680485, 63.677319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204315, 37.899544, 63.579433>,  <30.195078, 38.264645, 63.416290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204315, 37.899544, 63.579433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165795, -0.398825, -0.901915,
		0.985890, 0.088449, 0.142120,
		0.023092, -0.912752, 0.407862,
		30.211243, 37.625717, 63.701794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895073, 37.911369, 63.368019>,  <30.195078, 38.264645, 63.416290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895073, 37.911369, 63.368019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576962, 37.668892, 63.371029>,  <30.386095, 37.523407, 63.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576962, 37.668892, 63.371029>,  <30.895073, 37.911369, 63.368019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576962, 37.668892, 63.371029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276304, -0.373474, -0.885536,
		0.539616, -0.702172, 0.464510,
		-0.795281, -0.606195, 0.007520,
		30.338377, 37.487034, 63.373283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203886, 37.273441, 63.256229>,  <30.895073, 37.911369, 63.368019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203886, 37.273441, 63.256229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820484, 37.260250, 63.142963>,  <30.590443, 37.252335, 63.075005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820484, 37.260250, 63.142963>,  <31.203886, 37.273441, 63.256229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820484, 37.260250, 63.142963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283256, -0.222454, -0.932888,
		-0.032224, -0.974385, 0.222565,
		-0.958503, -0.032981, -0.283169,
		30.532934, 37.250355, 63.058014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237776, 36.692085, 62.790943>,  <31.203886, 37.273441, 63.256229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237776, 36.692085, 62.790943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882353, 36.849911, 62.697319>,  <30.669100, 36.944607, 62.641144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882353, 36.849911, 62.697319>,  <31.237776, 36.692085, 62.790943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882353, 36.849911, 62.697319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073317, -0.381509, -0.921453,
		-0.452874, -0.835922, 0.310063,
		-0.888555, 0.394569, -0.234063,
		30.615786, 36.968281, 62.627102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904755, 36.164833, 62.507191>,  <31.237776, 36.692085, 62.790943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904755, 36.164833, 62.507191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733871, 36.508453, 62.394386>,  <30.631342, 36.714626, 62.326706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733871, 36.508453, 62.394386>,  <30.904755, 36.164833, 62.507191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733871, 36.508453, 62.394386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051172, -0.334376, -0.941049,
		-0.902705, -0.387591, 0.186807,
		-0.427206, 0.859049, -0.282009,
		30.605709, 36.766167, 62.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511309, 35.976002, 62.043274>,  <30.904755, 36.164833, 62.507191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511309, 35.976002, 62.043274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558054, 36.369465, 61.988495>,  <30.586102, 36.605545, 61.955627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558054, 36.369465, 61.988495>,  <30.511309, 35.976002, 62.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558054, 36.369465, 61.988495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045720, -0.143072, -0.988656,
		-0.992095, 0.109277, -0.061693,
		0.116864, 0.983661, -0.136945,
		30.593113, 36.664562, 61.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044237, 36.093483, 61.439232>,  <30.511309, 35.976002, 62.043274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044237, 36.093483, 61.439232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306875, 36.394173, 61.463894>,  <30.464458, 36.574585, 61.478691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306875, 36.394173, 61.463894>,  <30.044237, 36.093483, 61.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306875, 36.394173, 61.463894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381589, -0.260568, -0.886845,
		-0.650595, 0.605822, -0.457936,
		0.656594, 0.751720, 0.061651,
		30.503853, 36.619690, 61.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359690, 36.099083, 61.115822>,  <30.044237, 36.093483, 61.439232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359690, 36.099083, 61.115822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177710, 35.763103, 60.997490>,  <29.068521, 35.561516, 60.926491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177710, 35.763103, 60.997490>,  <29.359690, 36.099083, 61.115822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177710, 35.763103, 60.997490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619402, 0.059795, 0.782794,
		-0.639814, 0.539368, -0.547467,
		-0.454950, -0.839945, -0.295828,
		29.041225, 35.511120, 60.908741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654535, 36.259693, 61.073574>,  <29.359690, 36.099083, 61.115822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654535, 36.259693, 61.073574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694647, 35.865082, 61.125275>,  <28.718714, 35.628315, 61.156296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694647, 35.865082, 61.125275>,  <28.654535, 36.259693, 61.073574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694647, 35.865082, 61.125275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543906, 0.054421, 0.837380,
		-0.833133, -0.154271, -0.531121,
		0.100279, -0.986529, 0.129249,
		28.724730, 35.569122, 61.164051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989517, 35.899776, 61.219765>,  <28.654535, 36.259693, 61.073574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989517, 35.899776, 61.219765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249897, 35.640766, 61.378246>,  <28.406126, 35.485359, 61.473335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249897, 35.640766, 61.378246>,  <27.989517, 35.899776, 61.219765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249897, 35.640766, 61.378246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501952, 0.024385, 0.864552,
		-0.569480, -0.761654, -0.309153,
		0.650950, -0.647525, 0.396200,
		28.445183, 35.446510, 61.497105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587442, 35.599525, 61.675041>,  <27.989517, 35.899776, 61.219765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587442, 35.599525, 61.675041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943077, 35.453640, 61.785679>,  <28.156458, 35.366108, 61.852062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943077, 35.453640, 61.785679>,  <27.587442, 35.599525, 61.675041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943077, 35.453640, 61.785679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328377, -0.087240, 0.940509,
		-0.318892, -0.927022, -0.197330,
		0.889087, -0.364719, 0.276592,
		28.209803, 35.344223, 61.868656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487957, 34.854851, 61.942219>,  <27.587442, 35.599525, 61.675041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487957, 34.854851, 61.942219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818411, 35.019966, 62.095638>,  <28.016684, 35.119034, 62.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818411, 35.019966, 62.095638>,  <27.487957, 34.854851, 61.942219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818411, 35.019966, 62.095638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399409, -0.051155, 0.915345,
		0.397461, -0.909391, 0.122609,
		0.826134, 0.412785, 0.383551,
		28.066252, 35.143803, 62.210705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575062, 34.515251, 62.510513>,  <27.487957, 34.854851, 61.942219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575062, 34.515251, 62.510513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776617, 34.856445, 62.564926>,  <27.897551, 35.061161, 62.597572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776617, 34.856445, 62.564926>,  <27.575062, 34.515251, 62.510513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776617, 34.856445, 62.564926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281934, 0.013560, 0.959338,
		0.816461, -0.521752, 0.247319,
		0.503890, 0.852990, 0.136029,
		27.927784, 35.112343, 62.605736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902359, 34.387974, 63.214611>,  <27.575062, 34.515251, 62.510513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902359, 34.387974, 63.214611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875948, 34.776958, 63.125214>,  <27.860102, 35.010349, 63.071575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875948, 34.776958, 63.125214>,  <27.902359, 34.387974, 63.214611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875948, 34.776958, 63.125214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335879, 0.189250, 0.922697,
		0.939588, 0.135992, 0.314135,
		-0.066029, 0.972466, -0.223494,
		27.856138, 35.068699, 63.058167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304504, 34.722069, 63.775375>,  <27.902359, 34.387974, 63.214611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304504, 34.722069, 63.775375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093609, 35.019077, 63.610119>,  <27.967072, 35.197281, 63.510967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093609, 35.019077, 63.610119>,  <28.304504, 34.722069, 63.775375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093609, 35.019077, 63.610119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285645, 0.303032, 0.909163,
		0.800265, 0.597360, 0.052326,
		-0.527241, 0.742518, -0.413139,
		27.935436, 35.241833, 63.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344343, 35.342030, 64.190155>,  <28.304504, 34.722069, 63.775375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344343, 35.342030, 64.190155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005323, 35.289803, 63.984390>,  <27.801912, 35.258469, 63.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005323, 35.289803, 63.984390>,  <28.344343, 35.342030, 64.190155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005323, 35.289803, 63.984390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529284, 0.136715, 0.837358,
		-0.039002, 0.981968, -0.184978,
		-0.847548, -0.130564, -0.514408,
		27.751059, 35.250633, 63.830067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.614315, 34.123070, 49.117641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612194, 34.518421, 49.056862>,  <37.610920, 34.755630, 49.020393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612194, 34.518421, 49.056862>,  <37.614315, 34.123070, 49.117641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612194, 34.518421, 49.056862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995524, 0.009118, 0.094070,
		0.094362, 0.151764, 0.983902,
		-0.005305, 0.988375, -0.151945,
		37.610603, 34.814934, 49.011280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063026, 34.218941, 49.389946>,  <37.614315, 34.123070, 49.117641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063026, 34.218941, 49.389946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115170, 34.558697, 49.185379>,  <37.146458, 34.762550, 49.062641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115170, 34.558697, 49.185379>,  <37.063026, 34.218941, 49.389946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115170, 34.558697, 49.185379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991424, 0.116457, -0.059298,
		0.009191, 0.514758, 0.857286,
		0.130361, 0.849389, -0.511413,
		37.154278, 34.813515, 49.031956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863682, 34.712715, 49.749996>,  <37.063026, 34.218941, 49.389946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863682, 34.712715, 49.749996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824787, 34.859070, 49.379772>,  <36.801449, 34.946884, 49.157639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824787, 34.859070, 49.379772>,  <36.863682, 34.712715, 49.749996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824787, 34.859070, 49.379772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961897, 0.204220, 0.181789,
		0.255534, 0.907976, 0.332089,
		-0.097241, 0.365889, -0.925565,
		36.795616, 34.968838, 49.102104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405155, 35.243530, 49.831120>,  <36.863682, 34.712715, 49.749996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405155, 35.243530, 49.831120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377266, 35.172310, 49.438499>,  <36.360531, 35.129578, 49.202927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377266, 35.172310, 49.438499>,  <36.405155, 35.243530, 49.831120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377266, 35.172310, 49.438499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974970, 0.220399, 0.029280,
		0.211119, 0.959022, -0.188961,
		-0.069727, -0.178050, -0.981548,
		36.356346, 35.118896, 49.144035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007195, 35.758751, 49.679596>,  <36.405155, 35.243530, 49.831120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007195, 35.758751, 49.679596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967327, 35.502754, 49.374840>,  <35.943409, 35.349155, 49.191986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.967327, 35.502754, 49.374840>,  <36.007195, 35.758751, 49.679596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967327, 35.502754, 49.374840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986359, 0.164360, -0.009034,
		0.131006, 0.750601, -0.647638,
		-0.099665, -0.639987, -0.761894,
		35.937428, 35.310757, 49.146271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563473, 36.122890, 49.219929>,  <36.007195, 35.758751, 49.679596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563473, 36.122890, 49.219929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547268, 35.748348, 49.080448>,  <35.537544, 35.523621, 48.996761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547268, 35.748348, 49.080448>,  <35.563473, 36.122890, 49.219929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547268, 35.748348, 49.080448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999176, 0.038819, 0.011834,
		0.002456, 0.348890, -0.937161,
		-0.040508, -0.936360, -0.348698,
		35.535114, 35.467442, 48.975838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052837, 36.063705, 48.724392>,  <35.563473, 36.122890, 49.219929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052837, 36.063705, 48.724392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039486, 35.687996, 48.861008>,  <35.031475, 35.462570, 48.942978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039486, 35.687996, 48.861008>,  <35.052837, 36.063705, 48.724392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039486, 35.687996, 48.861008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999331, 0.036480, 0.002670,
		-0.014967, -0.341224, -0.939863,
		-0.033375, -0.939274, 0.341542,
		35.029472, 35.406212, 48.963470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471889, 35.796337, 48.415699>,  <35.052837, 36.063705, 48.724392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471889, 35.796337, 48.415699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552235, 35.527569, 48.700844>,  <34.600441, 35.366306, 48.871929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552235, 35.527569, 48.700844>,  <34.471889, 35.796337, 48.415699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552235, 35.527569, 48.700844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978850, -0.108816, 0.173242,
		-0.038835, -0.732582, -0.679570,
		0.200862, -0.671925, 0.712862,
		34.612492, 35.325993, 48.914703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045158, 35.376598, 48.219700>,  <34.471889, 35.796337, 48.415699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045158, 35.376598, 48.219700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113556, 35.309605, 48.608074>,  <34.154594, 35.269409, 48.841099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113556, 35.309605, 48.608074>,  <34.045158, 35.376598, 48.219700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113556, 35.309605, 48.608074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984086, -0.077353, 0.159971,
		0.048312, -0.982836, -0.178043,
		0.170997, -0.167481, 0.970933,
		34.164856, 35.259361, 48.899353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516800, 34.951473, 48.434078>,  <34.045158, 35.376598, 48.219700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516800, 34.951473, 48.434078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653866, 35.058201, 48.794388>,  <33.736107, 35.122238, 49.010574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653866, 35.058201, 48.794388>,  <33.516800, 34.951473, 48.434078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653866, 35.058201, 48.794388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932127, -0.022981, 0.361402,
		0.117131, -0.963472, 0.240837,
		0.342667, 0.266822, 0.900770,
		33.756664, 35.138248, 49.064617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233467, 34.495579, 48.980324>,  <33.516800, 34.951473, 48.434078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233467, 34.495579, 48.980324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.350540, 34.830631, 49.164806>,  <33.420784, 35.031662, 49.275497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.350540, 34.830631, 49.164806>,  <33.233467, 34.495579, 48.980324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350540, 34.830631, 49.164806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891674, 0.064894, 0.448003,
		0.345331, -0.542370, 0.765886,
		0.292685, 0.837630, 0.461207,
		33.438347, 35.081921, 49.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118946, 34.359463, 49.654381>,  <33.233467, 34.495579, 48.980324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118946, 34.359463, 49.654381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108131, 34.755783, 49.601334>,  <33.101643, 34.993576, 49.569508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108131, 34.755783, 49.601334>,  <33.118946, 34.359463, 49.654381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108131, 34.755783, 49.601334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870667, 0.041837, 0.490091,
		0.491129, 0.128713, 0.861525,
		-0.027038, 0.990799, -0.132614,
		33.100021, 35.053024, 49.561550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070469, 34.664619, 50.303242>,  <33.118946, 34.359463, 49.654381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070469, 34.664619, 50.303242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924484, 34.928505, 50.040462>,  <32.836895, 35.086838, 49.882793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.924484, 34.928505, 50.040462>,  <33.070469, 34.664619, 50.303242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924484, 34.928505, 50.040462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866452, 0.017533, 0.498953,
		0.340685, 0.751312, 0.565211,
		-0.364959, 0.659714, -0.656949,
		32.814995, 35.126419, 49.843376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778679, 35.199482, 50.650372>,  <33.070469, 34.664619, 50.303242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778679, 35.199482, 50.650372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594341, 35.162563, 50.297306>,  <32.483738, 35.140411, 50.085464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.594341, 35.162563, 50.297306>,  <32.778679, 35.199482, 50.650372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594341, 35.162563, 50.297306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886799, 0.008957, 0.462069,
		-0.034741, 0.995692, -0.085974,
		-0.460848, -0.092294, -0.882667,
		32.456085, 35.134876, 50.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118904, 35.500576, 50.793396>,  <32.778679, 35.199482, 50.650372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118904, 35.500576, 50.793396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.055660, 35.284794, 50.462582>,  <32.017715, 35.155323, 50.264091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.055660, 35.284794, 50.462582>,  <32.118904, 35.500576, 50.793396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055660, 35.284794, 50.462582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985939, 0.132139, 0.102295,
		0.054100, 0.831580, -0.552764,
		-0.158108, -0.539457, -0.827036,
		32.008228, 35.122955, 50.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666389, 35.899136, 50.319225>,  <32.118904, 35.500576, 50.793396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666389, 35.899136, 50.319225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639938, 35.505814, 50.251411>,  <31.624067, 35.269821, 50.210724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.639938, 35.505814, 50.251411>,  <31.666389, 35.899136, 50.319225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639938, 35.505814, 50.251411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996947, 0.072179, -0.029773,
		0.041513, 0.167051, -0.985074,
		-0.066128, -0.983303, -0.169537,
		31.620100, 35.210823, 50.200550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957235, 35.944370, 49.985401>,  <31.666389, 35.899136, 50.319225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957235, 35.944370, 49.985401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.024466, 35.562996, 50.085567>,  <31.064804, 35.334171, 50.145668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.024466, 35.562996, 50.085567>,  <30.957235, 35.944370, 49.985401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024466, 35.562996, 50.085567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964202, -0.211858, -0.159474,
		0.205100, -0.214644, -0.954915,
		0.168076, -0.953438, 0.250412,
		31.074888, 35.276966, 50.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528885, 35.543293, 49.576694>,  <30.957235, 35.944370, 49.985401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528885, 35.543293, 49.576694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619768, 35.299717, 49.880688>,  <30.674297, 35.153572, 50.063084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.619768, 35.299717, 49.880688>,  <30.528885, 35.543293, 49.576694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619768, 35.299717, 49.880688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953669, -0.297162, 0.047011,
		0.197210, -0.735450, -0.648245,
		0.227208, -0.608940, 0.759979,
		30.687931, 35.117035, 50.108681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214251, 34.916931, 49.449696>,  <30.528885, 35.543293, 49.576694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214251, 34.916931, 49.449696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271502, 34.922806, 49.845535>,  <30.305851, 34.926331, 50.083038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.271502, 34.922806, 49.845535>,  <30.214251, 34.916931, 49.449696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271502, 34.922806, 49.845535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976049, -0.163427, 0.143593,
		0.163836, -0.986446, -0.009054,
		0.143126, 0.014688, 0.989596,
		30.314440, 34.927212, 50.142414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850317, 34.367073, 49.724537>,  <30.214251, 34.916931, 49.449696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850317, 34.367073, 49.724537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883734, 34.611797, 50.039169>,  <29.903784, 34.758633, 50.227947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883734, 34.611797, 50.039169>,  <29.850317, 34.367073, 49.724537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883734, 34.611797, 50.039169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921408, -0.253186, 0.294796,
		0.379510, -0.749387, 0.542578,
		0.083543, 0.611813, 0.786578,
		29.908796, 34.795341, 50.275143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472651, 34.052288, 50.303913>,  <29.850317, 34.367073, 49.724537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472651, 34.052288, 50.303913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.502304, 34.427727, 50.438698>,  <29.520096, 34.652988, 50.519569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.502304, 34.427727, 50.438698>,  <29.472651, 34.052288, 50.303913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502304, 34.427727, 50.438698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921083, -0.065069, 0.383891,
		0.382244, -0.338824, 0.859702,
		0.074132, 0.938597, 0.336958,
		29.524544, 34.709305, 50.539783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232563, 34.064583, 51.002884>,  <29.472651, 34.052288, 50.303913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232563, 34.064583, 51.002884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198761, 34.446293, 50.888195>,  <29.178480, 34.675320, 50.819382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198761, 34.446293, 50.888195>,  <29.232563, 34.064583, 51.002884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198761, 34.446293, 50.888195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970137, -0.013136, 0.242202,
		0.227362, 0.298630, 0.926891,
		-0.084504, 0.954279, -0.286725,
		29.173410, 34.732578, 50.802177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953011, 34.344051, 51.588757>,  <29.232563, 34.064583, 51.002884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953011, 34.344051, 51.588757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872694, 34.617893, 51.308468>,  <28.824505, 34.782196, 51.140297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872694, 34.617893, 51.308468>,  <28.953011, 34.344051, 51.588757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872694, 34.617893, 51.308468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882330, 0.184410, 0.432998,
		0.425650, 0.705206, 0.567015,
		-0.200790, 0.684600, -0.700719,
		28.812458, 34.823273, 51.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809074, 35.009705, 51.923790>,  <28.953011, 34.344051, 51.588757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809074, 35.009705, 51.923790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.644770, 35.078686, 51.565678>,  <28.546186, 35.120075, 51.350811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.644770, 35.078686, 51.565678>,  <28.809074, 35.009705, 51.923790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644770, 35.078686, 51.565678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859999, 0.252812, 0.443270,
		0.302783, 0.952022, 0.044467,
		-0.410761, 0.172456, -0.895285,
		28.521542, 35.130421, 51.297092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410036, 35.653160, 51.991619>,  <28.809074, 35.009705, 51.923790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410036, 35.653160, 51.991619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.259670, 35.459061, 51.675842>,  <28.169451, 35.342602, 51.486374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.259670, 35.459061, 51.675842>,  <28.410036, 35.653160, 51.991619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259670, 35.459061, 51.675842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921192, 0.288049, 0.261597,
		0.100459, 0.825568, -0.555288,
		-0.375916, -0.485247, -0.789444,
		28.146896, 35.313488, 51.439011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870310, 36.071106, 51.723682>,  <28.410036, 35.653160, 51.991619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870310, 36.071106, 51.723682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.790745, 35.709682, 51.571884>,  <27.743006, 35.492828, 51.480804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.790745, 35.709682, 51.571884>,  <27.870310, 36.071106, 51.723682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790745, 35.709682, 51.571884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867922, -0.017419, 0.496395,
		-0.455132, 0.428116, -0.780751,
		-0.198914, -0.903556, -0.379499,
		27.731070, 35.438614, 51.458035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201525, 36.148499, 51.356342>,  <27.870310, 36.071106, 51.723682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201525, 36.148499, 51.356342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244160, 35.758362, 51.433640>,  <27.269741, 35.524281, 51.480019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244160, 35.758362, 51.433640>,  <27.201525, 36.148499, 51.356342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244160, 35.758362, 51.433640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935224, -0.032346, 0.352575,
		-0.337631, -0.218306, -0.915613,
		0.106586, -0.975344, 0.193244,
		27.276136, 35.465759, 51.491611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617462, 35.863987, 51.010456>,  <27.201525, 36.148499, 51.356342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617462, 35.863987, 51.010456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736782, 35.626236, 51.309181>,  <26.808374, 35.483585, 51.488415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736782, 35.626236, 51.309181>,  <26.617462, 35.863987, 51.010456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736782, 35.626236, 51.309181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926208, 0.008739, 0.376910,
		-0.230554, -0.804137, -0.547912,
		0.298299, -0.594379, 0.746814,
		26.826271, 35.447922, 51.533226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113739, 35.455730, 51.093342>,  <26.617462, 35.863987, 51.010456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113739, 35.455730, 51.093342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.280058, 35.376934, 51.448490>,  <26.379850, 35.329659, 51.661579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.280058, 35.376934, 51.448490>,  <26.113739, 35.455730, 51.093342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280058, 35.376934, 51.448490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908421, -0.043386, 0.415799,
		-0.043386, -0.979446, -0.196987,
		-0.415799, 0.196987, -0.887867,
		26.404797, 35.317837, 51.714851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596935, 34.891277, 51.339306>,  <26.113739, 35.455730, 51.093342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596935, 34.891277, 51.339306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813364, 34.991650, 51.660374>,  <25.943222, 35.051872, 51.853012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813364, 34.991650, 51.660374>,  <25.596935, 34.891277, 51.339306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813364, 34.991650, 51.660374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767204, -0.243631, 0.593331,
		0.344439, -0.936845, 0.060693,
		0.541073, 0.250930, 0.802667,
		25.975685, 35.066929, 51.901173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680832, 34.321342, 51.897163>,  <25.596935, 34.891277, 51.339306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680832, 34.321342, 51.897163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.712383, 34.672424, 52.086227>,  <25.731314, 34.883076, 52.199665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.712383, 34.672424, 52.086227>,  <25.680832, 34.321342, 51.897163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712383, 34.672424, 52.086227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890210, -0.151375, 0.429664,
		0.448668, -0.454656, 0.769405,
		0.078880, 0.877709, 0.472657,
		25.736048, 34.935738, 52.228024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311075, 34.181213, 52.481579>,  <25.680832, 34.321342, 51.897163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311075, 34.181213, 52.481579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.346823, 34.579567, 52.475525>,  <25.368271, 34.818581, 52.471893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.346823, 34.579567, 52.475525>,  <25.311075, 34.181213, 52.481579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346823, 34.579567, 52.475525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979242, 0.090629, 0.181307,
		0.181932, -0.001380, 0.983310,
		0.089367, 0.995884, -0.015137,
		25.373632, 34.878330, 52.470985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172836, 34.450817, 53.121101>,  <25.311075, 34.181213, 52.481579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172836, 34.450817, 53.121101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.102882, 34.758118, 52.874783>,  <25.060909, 34.942497, 52.726990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.102882, 34.758118, 52.874783>,  <25.172836, 34.450817, 53.121101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102882, 34.758118, 52.874783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945235, 0.044053, 0.323405,
		0.275583, 0.638634, 0.718470,
		-0.174887, 0.768248, -0.615800,
		25.050417, 34.988594, 52.690044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910767, 34.946110, 53.545250>,  <25.172836, 34.450817, 53.121101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910767, 34.946110, 53.545250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.783993, 35.017227, 53.172596>,  <24.707928, 35.059898, 52.949005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.783993, 35.017227, 53.172596>,  <24.910767, 34.946110, 53.545250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783993, 35.017227, 53.172596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945967, 0.011721, 0.324050,
		0.068534, 0.983998, 0.164472,
		-0.316937, 0.177794, -0.931633,
		24.688911, 35.070564, 52.893105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.388201, 35.543510, 53.651768>,  <24.910767, 34.946110, 53.545250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.388201, 35.543510, 53.651768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.327776, 35.334576, 53.316067>,  <24.291521, 35.209213, 53.114647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.327776, 35.334576, 53.316067>,  <24.388201, 35.543510, 53.651768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327776, 35.334576, 53.316067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963021, -0.113841, 0.244194,
		-0.223094, 0.845104, -0.485827,
		-0.151062, -0.522340, -0.839251,
		24.282457, 35.177876, 53.064293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.296333, 31.518393, 50.245346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974422, 31.742270, 50.166283>,  <35.781277, 31.876596, 50.118843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974422, 31.742270, 50.166283>,  <36.296333, 31.518393, 50.245346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974422, 31.742270, 50.166283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036752, 0.285379, 0.957710,
		0.592433, 0.778011, -0.209098,
		-0.804781, 0.559694, -0.197661,
		35.732986, 31.910177, 50.106983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272339, 32.200062, 50.569046>,  <36.296333, 31.518393, 50.245346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272339, 32.200062, 50.569046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879253, 32.207767, 50.495403>,  <35.643402, 32.212391, 50.451218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.879253, 32.207767, 50.495403>,  <36.272339, 32.200062, 50.569046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879253, 32.207767, 50.495403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167186, 0.334613, 0.927407,
		0.079470, 0.942159, -0.325609,
		-0.982717, 0.019263, -0.184107,
		35.584438, 32.213547, 50.440170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070030, 32.850620, 50.780155>,  <36.272339, 32.200062, 50.569046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070030, 32.850620, 50.780155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738125, 32.629478, 50.810734>,  <35.538982, 32.496792, 50.829082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738125, 32.629478, 50.810734>,  <36.070030, 32.850620, 50.780155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738125, 32.629478, 50.810734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146182, 0.347477, 0.926224,
		-0.538633, 0.757370, -0.369141,
		-0.829762, -0.552856, 0.076448,
		35.489197, 32.463623, 50.833668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573772, 33.243256, 51.020901>,  <36.070030, 32.850620, 50.780155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573772, 33.243256, 51.020901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428524, 32.877670, 51.093365>,  <35.341373, 32.658321, 51.136845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.428524, 32.877670, 51.093365>,  <35.573772, 33.243256, 51.020901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428524, 32.877670, 51.093365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378989, 0.322505, 0.867386,
		-0.851182, 0.246307, -0.463489,
		-0.363121, -0.913960, 0.181163,
		35.319588, 32.603481, 51.147713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812660, 33.386597, 51.096565>,  <35.573772, 33.243256, 51.020901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812660, 33.386597, 51.096565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892307, 33.028194, 51.255325>,  <34.940094, 32.813152, 51.350582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892307, 33.028194, 51.255325>,  <34.812660, 33.386597, 51.096565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892307, 33.028194, 51.255325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673804, 0.168912, 0.719345,
		-0.711577, -0.410668, -0.570097,
		0.199115, -0.896002, 0.396904,
		34.952042, 32.759392, 51.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228756, 33.164242, 51.363773>,  <34.812660, 33.386597, 51.096565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228756, 33.164242, 51.363773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459343, 32.896309, 51.550968>,  <34.597694, 32.735550, 51.663284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.459343, 32.896309, 51.550968>,  <34.228756, 33.164242, 51.363773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459343, 32.896309, 51.550968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607440, 0.031777, 0.793730,
		-0.546535, -0.741834, -0.388563,
		0.576469, -0.669830, 0.467987,
		34.632282, 32.695358, 51.691364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788097, 32.569817, 51.644978>,  <34.228756, 33.164242, 51.363773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788097, 32.569817, 51.644978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115520, 32.588413, 51.873989>,  <34.311974, 32.599571, 52.011398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115520, 32.588413, 51.873989>,  <33.788097, 32.569817, 51.644978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115520, 32.588413, 51.873989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572761, -0.009589, 0.819666,
		0.043606, -0.998872, 0.018785,
		0.818562, 0.046502, 0.572533,
		34.361088, 32.602364, 52.045750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637810, 32.118427, 52.097954>,  <33.788097, 32.569817, 51.644978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637810, 32.118427, 52.097954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916065, 32.351315, 52.266289>,  <34.083019, 32.491047, 52.367290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916065, 32.351315, 52.266289>,  <33.637810, 32.118427, 52.097954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916065, 32.351315, 52.266289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465804, -0.080424, 0.881226,
		0.546910, -0.809046, 0.215253,
		0.695641, 0.582217, 0.420842,
		34.124756, 32.525978, 52.392540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724998, 31.899185, 52.761051>,  <33.637810, 32.118427, 52.097954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724998, 31.899185, 52.761051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.917351, 32.245712, 52.815086>,  <34.032764, 32.453629, 52.847507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.917351, 32.245712, 52.815086>,  <33.724998, 31.899185, 52.761051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917351, 32.245712, 52.815086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482867, 0.133075, 0.865523,
		0.731840, -0.481444, 0.482309,
		0.480884, 0.866316, 0.135084,
		34.061615, 32.505608, 52.855610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952091, 31.947290, 53.418194>,  <33.724998, 31.899185, 52.761051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952091, 31.947290, 53.418194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962002, 32.331039, 53.305771>,  <33.967949, 32.561287, 53.238319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962002, 32.331039, 53.305771>,  <33.952091, 31.947290, 53.418194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962002, 32.331039, 53.305771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436114, 0.263350, 0.860495,
		0.899550, 0.101255, 0.424920,
		0.024774, 0.959372, -0.281055,
		33.969433, 32.618851, 53.221455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226891, 32.249622, 53.991657>,  <33.952091, 31.947290, 53.418194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226891, 32.249622, 53.991657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.022511, 32.528000, 53.789829>,  <33.899883, 32.695026, 53.668732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.022511, 32.528000, 53.789829>,  <34.226891, 32.249622, 53.991657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022511, 32.528000, 53.789829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450038, 0.283539, 0.846801,
		0.732388, 0.659753, 0.168324,
		-0.510953, 0.695939, -0.504574,
		33.869225, 32.736782, 53.638458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358604, 32.940758, 54.237923>,  <34.226891, 32.249622, 53.991657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358604, 32.940758, 54.237923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002220, 32.963902, 54.057774>,  <33.788387, 32.977787, 53.949684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002220, 32.963902, 54.057774>,  <34.358604, 32.940758, 54.237923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002220, 32.963902, 54.057774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383508, 0.435156, 0.814592,
		0.243113, 0.898494, -0.365520,
		-0.890965, 0.057858, -0.450371,
		33.734932, 32.981258, 53.922661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702621, 33.558804, 54.441639>,  <34.358604, 32.940758, 54.237923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702621, 33.558804, 54.441639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053429, 33.519775, 54.629814>,  <35.263912, 33.496357, 54.742718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053429, 33.519775, 54.629814>,  <34.702621, 33.558804, 54.441639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053429, 33.519775, 54.629814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446817, -0.194278, -0.873276,
		0.176601, 0.976082, -0.126790,
		0.877022, -0.097569, 0.470439,
		35.316536, 33.490505, 54.770947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213993, 34.012222, 54.037949>,  <34.702621, 33.558804, 54.441639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213993, 34.012222, 54.037949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404297, 33.730263, 54.248383>,  <35.518478, 33.561085, 54.374645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404297, 33.730263, 54.248383>,  <35.213993, 34.012222, 54.037949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404297, 33.730263, 54.248383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542623, -0.235521, -0.806282,
		0.692254, 0.669062, 0.270445,
		0.475757, -0.704901, 0.526089,
		35.547024, 33.518791, 54.406208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850807, 34.273556, 53.964668>,  <35.213993, 34.012222, 54.037949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850807, 34.273556, 53.964668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888805, 33.898823, 54.099316>,  <35.911602, 33.673981, 54.180103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888805, 33.898823, 54.099316>,  <35.850807, 34.273556, 53.964668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888805, 33.898823, 54.099316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848194, -0.100839, -0.519998,
		0.521098, 0.334917, 0.785040,
		0.094993, -0.936836, 0.336621,
		35.917305, 33.617771, 54.200302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549500, 34.221607, 54.214230>,  <35.850807, 34.273556, 53.964668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549500, 34.221607, 54.214230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429943, 33.846531, 54.143356>,  <36.358208, 33.621483, 54.100834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429943, 33.846531, 54.143356>,  <36.549500, 34.221607, 54.214230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429943, 33.846531, 54.143356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751255, -0.116721, -0.649609,
		0.588453, -0.327273, 0.739334,
		-0.298895, -0.937693, -0.177181,
		36.340275, 33.565224, 54.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116127, 33.856995, 54.383228>,  <36.549500, 34.221607, 54.214230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116127, 33.856995, 54.383228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894135, 33.644207, 54.127415>,  <36.760941, 33.516533, 53.973927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894135, 33.644207, 54.127415>,  <37.116127, 33.856995, 54.383228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894135, 33.644207, 54.127415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750022, 0.012544, -0.661294,
		0.359813, -0.846668, 0.392030,
		-0.554979, -0.531973, -0.639533,
		36.727642, 33.484615, 53.935555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514702, 33.199936, 54.213272>,  <37.116127, 33.856995, 54.383228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514702, 33.199936, 54.213272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257038, 33.273819, 53.916370>,  <37.102440, 33.318150, 53.738232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257038, 33.273819, 53.916370>,  <37.514702, 33.199936, 54.213272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257038, 33.273819, 53.916370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751758, -0.026151, -0.658920,
		-0.141116, -0.982446, -0.122008,
		-0.644163, 0.184705, -0.742252,
		37.063789, 33.329231, 53.693695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714149, 32.882534, 53.711155>,  <37.514702, 33.199936, 54.213272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714149, 32.882534, 53.711155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486580, 33.130360, 53.494835>,  <37.350037, 33.279053, 53.365044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486580, 33.130360, 53.494835>,  <37.714149, 32.882534, 53.711155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486580, 33.130360, 53.494835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690459, 0.002613, -0.723367,
		-0.446758, -0.784943, -0.429268,
		-0.568924, 0.619562, -0.540804,
		37.315903, 33.316227, 53.332592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551655, 32.512245, 53.040428>,  <37.714149, 32.882534, 53.711155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551655, 32.512245, 53.040428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494232, 32.901188, 52.966759>,  <37.459778, 33.134552, 52.922558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494232, 32.901188, 52.966759>,  <37.551655, 32.512245, 53.040428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494232, 32.901188, 52.966759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602442, -0.061783, -0.795769,
		-0.785148, -0.225187, -0.576918,
		-0.143553, 0.972355, -0.184171,
		37.451168, 33.192894, 52.911507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780720, 32.596447, 52.380142>,  <37.551655, 32.512245, 53.040428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780720, 32.596447, 52.380142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770454, 32.985291, 52.473385>,  <37.764297, 33.218597, 52.529331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770454, 32.985291, 52.473385>,  <37.780720, 32.596447, 52.380142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770454, 32.985291, 52.473385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733010, 0.176850, -0.656826,
		-0.679734, 0.154015, -0.717106,
		-0.025659, 0.972113, 0.233105,
		37.762756, 33.276924, 52.543316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818348, 33.018730, 51.813492>,  <37.780720, 32.596447, 52.380142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818348, 33.018730, 51.813492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915703, 33.323986, 52.052952>,  <37.974117, 33.507137, 52.196629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915703, 33.323986, 52.052952>,  <37.818348, 33.018730, 51.813492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915703, 33.323986, 52.052952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845232, 0.135867, -0.516839,
		-0.475756, 0.631793, -0.611959,
		0.243390, 0.763137, 0.598651,
		37.988720, 33.552929, 52.232548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021152, 33.636181, 51.456371>,  <37.818348, 33.018730, 51.813492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021152, 33.636181, 51.456371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190182, 33.655445, 51.818390>,  <38.291599, 33.667004, 52.035603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.190182, 33.655445, 51.818390>,  <38.021152, 33.636181, 51.456371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190182, 33.655445, 51.818390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856739, 0.304559, -0.416223,
		-0.295686, 0.951275, 0.087437,
		0.422573, 0.048161, 0.905049,
		38.316952, 33.669891, 52.089905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125904, 34.346928, 51.526997>,  <38.021152, 33.636181, 51.456371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125904, 34.346928, 51.526997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387321, 34.163406, 51.767792>,  <38.544170, 34.053295, 51.912270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.387321, 34.163406, 51.767792>,  <38.125904, 34.346928, 51.526997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387321, 34.163406, 51.767792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748664, 0.508805, -0.424995,
		-0.111308, 0.728438, 0.676010,
		0.653539, -0.458799, 0.601989,
		38.583382, 34.025768, 51.948387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086597, 34.951412, 51.133213>,  <38.125904, 34.346928, 51.526997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086597, 34.951412, 51.133213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264141, 35.299755, 51.217682>,  <38.370667, 35.508762, 51.268364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264141, 35.299755, 51.217682>,  <38.086597, 34.951412, 51.133213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264141, 35.299755, 51.217682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278422, -0.358015, 0.891238,
		0.851747, -0.336788, -0.401375,
		0.443857, 0.870861, 0.211169,
		38.397297, 35.561012, 51.281033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278137, 35.497269, 50.636360>,  <38.086597, 34.951412, 51.133213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278137, 35.497269, 50.636360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899109, 35.382851, 50.693336>,  <37.671692, 35.314201, 50.727524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899109, 35.382851, 50.693336>,  <38.278137, 35.497269, 50.636360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899109, 35.382851, 50.693336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192779, 0.867226, 0.459081,
		-0.254845, 0.407552, -0.876901,
		-0.947571, -0.286043, 0.142440,
		37.614838, 35.297039, 50.736069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819057, 36.011791, 50.490246>,  <38.278137, 35.497269, 50.636360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819057, 36.011791, 50.490246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618874, 35.783928, 50.751026>,  <37.498764, 35.647209, 50.907494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618874, 35.783928, 50.751026>,  <37.819057, 36.011791, 50.490246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618874, 35.783928, 50.751026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170642, 0.803166, 0.570794,
		-0.848777, 0.174409, -0.499159,
		-0.500459, -0.569654, 0.651947,
		37.468735, 35.613033, 50.946609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327770, 36.518936, 50.777836>,  <37.819057, 36.011791, 50.490246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327770, 36.518936, 50.777836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370560, 36.196526, 51.010685>,  <37.396233, 36.003078, 51.150394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370560, 36.196526, 51.010685>,  <37.327770, 36.518936, 50.777836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370560, 36.196526, 51.010685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173141, 0.561438, 0.809203,
		-0.979070, -0.187353, -0.079497,
		0.106974, -0.806031, 0.582126,
		37.402653, 35.954716, 51.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630020, 36.815327, 50.064201>,  <37.327770, 36.518936, 50.777836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630020, 36.815327, 50.064201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425797, 37.105648, 49.879795>,  <37.303261, 37.279842, 49.769154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425797, 37.105648, 49.879795>,  <37.630020, 36.815327, 50.064201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425797, 37.105648, 49.879795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275179, 0.370035, 0.887328,
		0.814619, 0.579896, 0.010802,
		-0.510561, 0.725806, -0.461012,
		37.272629, 37.323391, 49.741493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715408, 37.452976, 50.439640>,  <37.630020, 36.815327, 50.064201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715408, 37.452976, 50.439640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367725, 37.488651, 50.245106>,  <37.159115, 37.510056, 50.128387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.367725, 37.488651, 50.245106>,  <37.715408, 37.452976, 50.439640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367725, 37.488651, 50.245106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447489, 0.276463, 0.850483,
		0.210309, 0.956877, -0.200392,
		-0.869209, 0.089191, -0.486334,
		37.106964, 37.515408, 50.099205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504112, 38.148472, 50.556194>,  <37.715408, 37.452976, 50.439640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504112, 38.148472, 50.556194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181801, 37.935478, 50.452515>,  <36.988415, 37.807682, 50.390308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181801, 37.935478, 50.452515>,  <37.504112, 38.148472, 50.556194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181801, 37.935478, 50.452515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554205, 0.523710, 0.646981,
		-0.208764, 0.664971, -0.717099,
		-0.805776, -0.532486, -0.259198,
		36.940067, 37.775734, 50.374756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936607, 38.670612, 50.436314>,  <37.504112, 38.148472, 50.556194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936607, 38.670612, 50.436314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764950, 38.321087, 50.527786>,  <36.661957, 38.111374, 50.582668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.764950, 38.321087, 50.527786>,  <36.936607, 38.670612, 50.436314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764950, 38.321087, 50.527786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657964, 0.475876, 0.583632,
		-0.618806, 0.099997, -0.779153,
		-0.429142, -0.873809, 0.228681,
		36.636208, 38.058945, 50.596390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287891, 38.935726, 50.754486>,  <36.936607, 38.670612, 50.436314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287891, 38.935726, 50.754486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295849, 38.540707, 50.816898>,  <36.300621, 38.303696, 50.854347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295849, 38.540707, 50.816898>,  <36.287891, 38.935726, 50.754486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295849, 38.540707, 50.816898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648663, 0.106013, 0.753656,
		-0.760816, -0.116204, -0.638479,
		0.019891, -0.987551, 0.156034,
		36.301815, 38.244442, 50.863708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668316, 38.819714, 50.885292>,  <36.287891, 38.935726, 50.754486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668316, 38.819714, 50.885292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831936, 38.477947, 51.013443>,  <35.930107, 38.272888, 51.090332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.831936, 38.477947, 51.013443>,  <35.668316, 38.819714, 50.885292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831936, 38.477947, 51.013443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564488, 0.038918, 0.824524,
		-0.716958, -0.518124, -0.466390,
		0.409054, -0.854420, 0.320377,
		35.954651, 38.221622, 51.109554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141205, 38.358387, 51.040592>,  <35.668316, 38.819714, 50.885292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141205, 38.358387, 51.040592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469730, 38.247700, 51.240139>,  <35.666847, 38.181290, 51.359867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.469730, 38.247700, 51.240139>,  <35.141205, 38.358387, 51.040592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469730, 38.247700, 51.240139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504157, 0.057155, 0.861719,
		-0.266964, -0.959251, -0.092566,
		0.821314, -0.276715, 0.498871,
		35.716125, 38.164684, 51.389801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910931, 37.805851, 51.450798>,  <35.141205, 38.358387, 51.040592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910931, 37.805851, 51.450798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232716, 37.968628, 51.623882>,  <35.425785, 38.066296, 51.727734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232716, 37.968628, 51.623882>,  <34.910931, 37.805851, 51.450798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232716, 37.968628, 51.623882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486782, 0.034155, 0.872856,
		0.340425, -0.912814, 0.225570,
		0.804459, 0.406945, 0.432714,
		35.474052, 38.090710, 51.753696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935524, 37.538345, 52.062656>,  <34.910931, 37.805851, 51.450798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935524, 37.538345, 52.062656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203213, 37.826317, 52.136257>,  <35.363827, 37.999100, 52.180416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.203213, 37.826317, 52.136257>,  <34.935524, 37.538345, 52.062656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203213, 37.826317, 52.136257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363977, 0.101714, 0.925837,
		0.647818, -0.686558, 0.330105,
		0.669217, 0.719925, 0.183999,
		35.403976, 38.042294, 52.191456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153553, 37.430550, 52.776726>,  <34.935524, 37.538345, 52.062656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153553, 37.430550, 52.776726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235645, 37.808083, 52.673138>,  <35.284901, 38.034603, 52.610985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.235645, 37.808083, 52.673138>,  <35.153553, 37.430550, 52.776726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235645, 37.808083, 52.673138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261885, 0.307914, 0.914661,
		0.943025, -0.119900, 0.310369,
		0.205234, 0.943829, -0.258971,
		35.297215, 38.091232, 52.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589134, 37.745602, 53.322758>,  <35.153553, 37.430550, 52.776726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589134, 37.745602, 53.322758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390507, 38.036709, 53.133541>,  <35.271332, 38.211372, 53.020012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390507, 38.036709, 53.133541>,  <35.589134, 37.745602, 53.322758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390507, 38.036709, 53.133541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282633, 0.379714, 0.880872,
		0.820694, 0.571111, 0.017138,
		-0.496568, 0.727770, -0.473044,
		35.241535, 38.255039, 52.991627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662254, 38.283073, 53.802341>,  <35.589134, 37.745602, 53.322758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662254, 38.283073, 53.802341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350014, 38.417587, 53.591599>,  <35.162670, 38.498295, 53.465153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.350014, 38.417587, 53.591599>,  <35.662254, 38.283073, 53.802341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350014, 38.417587, 53.591599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405183, 0.369559, 0.836213,
		0.475909, 0.866221, -0.152221,
		-0.780600, 0.336284, -0.526855,
		35.115833, 38.518471, 53.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564541, 39.013634, 54.047249>,  <35.662254, 38.283073, 53.802341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564541, 39.013634, 54.047249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227020, 38.901207, 53.864384>,  <35.024509, 38.833752, 53.754665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227020, 38.901207, 53.864384>,  <35.564541, 39.013634, 54.047249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227020, 38.901207, 53.864384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534740, 0.368436, 0.760465,
		-0.045305, 0.886147, -0.461185,
		-0.843801, -0.281068, -0.457166,
		34.973881, 38.816887, 53.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252834, 39.597839, 53.996517>,  <35.564541, 39.013634, 54.047249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252834, 39.597839, 53.996517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962627, 39.322643, 53.989685>,  <34.788502, 39.157528, 53.985584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962627, 39.322643, 53.989685>,  <35.252834, 39.597839, 53.996517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962627, 39.322643, 53.989685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466559, 0.473463, 0.747098,
		-0.505907, 0.550004, -0.664495,
		-0.725520, -0.687988, -0.017081,
		34.744972, 39.116245, 53.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571724, 40.012009, 53.965031>,  <35.252834, 39.597839, 53.996517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571724, 40.012009, 53.965031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446747, 39.647789, 54.073311>,  <34.371761, 39.429256, 54.138279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.446747, 39.647789, 54.073311>,  <34.571724, 40.012009, 53.965031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446747, 39.647789, 54.073311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597878, 0.409945, 0.688830,
		-0.738186, 0.053375, -0.672482,
		-0.312447, -0.910547, 0.270704,
		34.353012, 39.374626, 54.154522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807762, 40.070606, 53.942589>,  <34.571724, 40.012009, 53.965031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807762, 40.070606, 53.942589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918121, 39.767155, 54.178680>,  <33.984337, 39.585083, 54.320335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918121, 39.767155, 54.178680>,  <33.807762, 40.070606, 53.942589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918121, 39.767155, 54.178680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556686, 0.374477, 0.741531,
		-0.783571, -0.533157, -0.318999,
		0.275895, -0.758624, 0.590230,
		34.000889, 39.539566, 54.355751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273247, 39.818565, 54.249706>,  <33.807762, 40.070606, 53.942589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273247, 39.818565, 54.249706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541122, 39.673164, 54.508747>,  <33.701847, 39.585922, 54.664173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541122, 39.673164, 54.508747>,  <33.273247, 39.818565, 54.249706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541122, 39.673164, 54.508747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643729, 0.150697, 0.750269,
		-0.370317, -0.919324, -0.133078,
		0.669685, -0.363503, 0.647600,
		33.742027, 39.564114, 54.703026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972626, 39.246891, 54.641121>,  <33.273247, 39.818565, 54.249706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972626, 39.246891, 54.641121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267906, 39.403027, 54.861191>,  <33.445076, 39.496708, 54.993233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267906, 39.403027, 54.861191>,  <32.972626, 39.246891, 54.641121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267906, 39.403027, 54.861191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642951, 0.160332, 0.748938,
		0.204137, -0.906599, 0.369332,
		0.738202, 0.390348, 0.550169,
		33.489368, 39.520130, 55.026241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877953, 38.988106, 55.349365>,  <32.972626, 39.246891, 54.641121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877953, 38.988106, 55.349365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147186, 39.274914, 55.421860>,  <33.308727, 39.446999, 55.465355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147186, 39.274914, 55.421860>,  <32.877953, 38.988106, 55.349365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147186, 39.274914, 55.421860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422495, 0.171662, 0.889961,
		0.607006, -0.675588, 0.418479,
		0.673084, 0.717016, 0.181232,
		33.349113, 39.490017, 55.476231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280216, 38.911777, 56.022305>,  <32.877953, 38.988106, 55.349365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280216, 38.911777, 56.022305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292984, 39.298740, 55.921829>,  <33.300644, 39.530918, 55.861546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292984, 39.298740, 55.921829>,  <33.280216, 38.911777, 56.022305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292984, 39.298740, 55.921829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178064, 0.252801, 0.950991,
		0.983501, 0.014375, 0.180330,
		0.031917, 0.967411, -0.251190,
		33.302559, 39.588963, 55.846474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752834, 39.254223, 56.471149>,  <33.280216, 38.911777, 56.022305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752834, 39.254223, 56.471149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504333, 39.533482, 56.328804>,  <33.355232, 39.701038, 56.243397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504333, 39.533482, 56.328804>,  <33.752834, 39.254223, 56.471149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504333, 39.533482, 56.328804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173844, 0.320020, 0.931325,
		0.764086, 0.640449, -0.077443,
		-0.621249, 0.698149, -0.355861,
		33.317959, 39.742928, 56.222046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946487, 39.763992, 56.866268>,  <33.752834, 39.254223, 56.471149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946487, 39.763992, 56.866268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604095, 39.880463, 56.695385>,  <33.398659, 39.950344, 56.592854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604095, 39.880463, 56.695385>,  <33.946487, 39.763992, 56.866268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604095, 39.880463, 56.695385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255344, 0.480404, 0.839054,
		0.449550, 0.827300, -0.336866,
		-0.855981, 0.291180, -0.427212,
		33.347301, 39.967815, 56.567223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808853, 40.450283, 57.005638>,  <33.946487, 39.763992, 56.866268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808853, 40.450283, 57.005638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440830, 40.309498, 56.936806>,  <33.220016, 40.225025, 56.895508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440830, 40.309498, 56.936806>,  <33.808853, 40.450283, 57.005638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440830, 40.309498, 56.936806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287185, 0.307134, 0.907300,
		-0.266483, 0.884190, -0.383660,
		-0.920060, -0.351962, -0.172080,
		33.164810, 40.203911, 56.885181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355038, 40.978989, 57.230961>,  <33.808853, 40.450283, 57.005638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355038, 40.978989, 57.230961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116058, 40.658794, 57.211826>,  <32.972672, 40.466679, 57.200344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116058, 40.658794, 57.211826>,  <33.355038, 40.978989, 57.230961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116058, 40.658794, 57.211826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405105, 0.249794, 0.879485,
		-0.692063, 0.544822, -0.473517,
		-0.597444, -0.800483, -0.047837,
		32.936825, 40.418648, 57.197475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864159, 41.205734, 57.659813>,  <33.355038, 40.978989, 57.230961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864159, 41.205734, 57.659813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788933, 40.813663, 57.634857>,  <32.743797, 40.578423, 57.619884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.788933, 40.813663, 57.634857>,  <32.864159, 41.205734, 57.659813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788933, 40.813663, 57.634857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486051, 0.037684, 0.873117,
		-0.853456, 0.194523, -0.483502,
		-0.188062, -0.980174, -0.062386,
		32.732513, 40.519611, 57.616142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154213, 41.167316, 57.776634>,  <32.864159, 41.205734, 57.659813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154213, 41.167316, 57.776634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345863, 40.833897, 57.886639>,  <32.460854, 40.633846, 57.952641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345863, 40.833897, 57.886639>,  <32.154213, 41.167316, 57.776634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345863, 40.833897, 57.886639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309013, 0.133070, 0.941702,
		-0.821553, -0.536176, -0.193821,
		0.479127, -0.833551, 0.275010,
		32.489601, 40.583832, 57.969143>
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
