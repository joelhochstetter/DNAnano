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
	<24.565502, 35.351803, 35.118980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330307, 35.095833, 35.316875>,  <24.189190, 34.942249, 35.435612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330307, 35.095833, 35.316875>,  <24.565502, 35.351803, 35.118980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330307, 35.095833, 35.316875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757011, -0.219866, 0.615299,
		-0.284969, 0.736311, 0.613709,
		-0.587986, -0.639926, 0.494740,
		24.153912, 34.903854, 35.465298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.489557, 35.350788, 35.917320>,  <24.565502, 35.351803, 35.118980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.489557, 35.350788, 35.917320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462511, 34.989189, 35.748455>,  <24.446283, 34.772232, 35.647137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462511, 34.989189, 35.748455>,  <24.489557, 35.350788, 35.917320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462511, 34.989189, 35.748455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530790, -0.390875, 0.751983,
		-0.844802, -0.173236, 0.506260,
		-0.067614, -0.903995, -0.422164,
		24.442226, 34.717991, 35.621807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220549, 34.938824, 36.491051>,  <24.489557, 35.350788, 35.917320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220549, 34.938824, 36.491051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425419, 34.745655, 36.206951>,  <24.548342, 34.629753, 36.036491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425419, 34.745655, 36.206951>,  <24.220549, 34.938824, 36.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.425419, 34.745655, 36.206951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603888, -0.385543, 0.697622,
		-0.610732, -0.786218, 0.094167,
		0.512177, -0.482926, -0.710251,
		24.579073, 34.600777, 35.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.442989, 34.318394, 36.767826>,  <24.220549, 34.938824, 36.491051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.442989, 34.318394, 36.767826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681021, 34.366791, 36.450024>,  <24.823839, 34.395828, 36.259342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681021, 34.366791, 36.450024>,  <24.442989, 34.318394, 36.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681021, 34.366791, 36.450024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749186, -0.441316, 0.493924,
		-0.290865, -0.889156, -0.353267,
		0.595078, 0.120997, -0.794507,
		24.859545, 34.403091, 36.211670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835480, 34.483086, 37.472816>,  <24.442989, 34.318394, 36.767826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835480, 34.483086, 37.472816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972027, 34.464157, 37.097321>,  <25.053955, 34.452801, 36.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972027, 34.464157, 37.097321>,  <24.835480, 34.483086, 37.472816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972027, 34.464157, 37.097321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873448, -0.352964, 0.335418,
		-0.347211, -0.934440, -0.079163,
		0.341369, -0.047316, -0.938738,
		25.074436, 34.449963, 36.815701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423927, 34.828423, 37.105251>,  <24.835480, 34.483086, 37.472816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423927, 34.828423, 37.105251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813040, 34.740540, 37.134716>,  <26.046507, 34.687809, 37.152393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813040, 34.740540, 37.134716>,  <25.423927, 34.828423, 37.105251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813040, 34.740540, 37.134716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184236, -0.540492, 0.820930,
		-0.140553, -0.812156, -0.566258,
		0.972781, -0.219709, 0.073661,
		26.104874, 34.674625, 37.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393799, 34.098526, 37.073124>,  <25.423927, 34.828423, 37.105251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393799, 34.098526, 37.073124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706081, 34.252716, 37.269859>,  <25.893452, 34.345230, 37.387901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706081, 34.252716, 37.269859>,  <25.393799, 34.098526, 37.073124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706081, 34.252716, 37.269859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190724, -0.602534, 0.774969,
		0.595080, -0.698830, -0.396883,
		0.780707, 0.385473, 0.491840,
		25.940294, 34.368359, 37.417412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828617, 33.592907, 37.219341>,  <25.393799, 34.098526, 37.073124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828617, 33.592907, 37.219341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906782, 33.856640, 37.509747>,  <25.953682, 34.014881, 37.683990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906782, 33.856640, 37.509747>,  <25.828617, 33.592907, 37.219341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906782, 33.856640, 37.509747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064464, -0.730047, 0.680350,
		0.978600, -0.179750, -0.100157,
		0.195412, 0.659335, 0.726011,
		25.965406, 34.054440, 37.727551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365501, 33.357342, 37.694653>,  <25.828617, 33.592907, 37.219341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365501, 33.357342, 37.694653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203939, 33.619270, 37.950172>,  <26.107002, 33.776428, 38.103485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203939, 33.619270, 37.950172>,  <26.365501, 33.357342, 37.694653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203939, 33.619270, 37.950172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106873, -0.727291, 0.677957,
		0.908537, 0.205560, 0.363739,
		-0.403905, 0.654823, 0.638802,
		26.082767, 33.815716, 38.141811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732475, 33.472439, 38.369854>,  <26.365501, 33.357342, 37.694653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732475, 33.472439, 38.369854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350361, 33.551525, 38.457794>,  <26.121092, 33.598976, 38.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350361, 33.551525, 38.457794>,  <26.732475, 33.472439, 38.369854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350361, 33.551525, 38.457794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008018, -0.725950, 0.687701,
		0.295576, 0.658713, 0.691904,
		-0.955286, 0.197720, 0.219855,
		26.063776, 33.610840, 38.523750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736538, 33.292992, 39.023800>,  <26.732475, 33.472439, 38.369854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736538, 33.292992, 39.023800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346827, 33.361511, 38.965233>,  <26.112999, 33.402622, 38.930092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346827, 33.361511, 38.965233>,  <26.736538, 33.292992, 39.023800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346827, 33.361511, 38.965233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225345, -0.738544, 0.635431,
		0.000710, 0.652081, 0.758149,
		-0.974279, 0.171296, -0.146418,
		26.054543, 33.412899, 38.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322783, 33.283497, 39.811264>,  <26.736538, 33.292992, 39.023800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322783, 33.283497, 39.811264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165854, 33.181664, 39.457706>,  <26.071697, 33.120564, 39.245571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165854, 33.181664, 39.457706>,  <26.322783, 33.283497, 39.811264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165854, 33.181664, 39.457706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231163, -0.902805, 0.362638,
		-0.890307, 0.346594, 0.295339,
		-0.392322, -0.254588, -0.883894,
		26.048157, 33.105286, 39.192539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513832, 32.648678, 40.162788>,  <26.322783, 33.283497, 39.811264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513832, 32.648678, 40.162788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185648, 32.442238, 40.064415>,  <25.988737, 32.318375, 40.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185648, 32.442238, 40.064415>,  <26.513832, 32.648678, 40.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185648, 32.442238, 40.064415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271431, 0.730257, -0.626937,
		0.503157, -0.447624, -0.739233,
		-0.820462, -0.516098, -0.245935,
		25.939508, 32.287407, 39.990635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523098, 32.612728, 39.417191>,  <26.513832, 32.648678, 40.162788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523098, 32.612728, 39.417191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151655, 32.546520, 39.550034>,  <25.928789, 32.506798, 39.629738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151655, 32.546520, 39.550034>,  <26.523098, 32.612728, 39.417191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151655, 32.546520, 39.550034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336025, 0.754762, -0.563403,
		-0.157409, -0.634775, -0.756494,
		-0.928606, -0.165516, 0.332107,
		25.873074, 32.496864, 39.649666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974972, 32.422131, 38.835056>,  <26.523098, 32.612728, 39.417191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974972, 32.422131, 38.835056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833277, 32.621983, 39.151257>,  <25.748260, 32.741894, 39.340977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833277, 32.621983, 39.151257>,  <25.974972, 32.422131, 38.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833277, 32.621983, 39.151257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193284, 0.787940, -0.584630,
		-0.914963, -0.359887, -0.182546,
		-0.354236, 0.499632, 0.790497,
		25.727005, 32.771873, 39.388405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213413, 32.559555, 38.820335>,  <25.974972, 32.422131, 38.835056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213413, 32.559555, 38.820335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445351, 32.830551, 39.001350>,  <25.584513, 32.993149, 39.109959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445351, 32.830551, 39.001350>,  <25.213413, 32.559555, 38.820335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445351, 32.830551, 39.001350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202097, 0.657684, -0.725678,
		-0.789266, 0.329322, 0.518272,
		0.579841, 0.677494, 0.452533,
		25.619303, 33.033798, 39.137112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819578, 33.221748, 38.791363>,  <25.213413, 32.559555, 38.820335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819578, 33.221748, 38.791363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211151, 33.292736, 38.831749>,  <25.446095, 33.335331, 38.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211151, 33.292736, 38.831749>,  <24.819578, 33.221748, 38.791363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211151, 33.292736, 38.831749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077621, 0.780825, -0.619910,
		-0.188853, 0.599013, 0.778151,
		0.978933, 0.177473, 0.100965,
		25.504831, 33.345978, 38.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880333, 33.980156, 38.815762>,  <24.819578, 33.221748, 38.791363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880333, 33.980156, 38.815762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247410, 33.851597, 38.722340>,  <25.467655, 33.774464, 38.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247410, 33.851597, 38.722340>,  <24.880333, 33.980156, 38.815762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247410, 33.851597, 38.722340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252577, 0.925733, -0.281466,
		0.306668, 0.199310, 0.930715,
		0.917692, -0.321394, -0.233552,
		25.522718, 33.755180, 38.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418068, 34.515533, 38.984783>,  <24.880333, 33.980156, 38.815762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418068, 34.515533, 38.984783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607304, 34.313309, 38.696175>,  <25.720846, 34.191975, 38.523010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607304, 34.313309, 38.696175>,  <25.418068, 34.515533, 38.984783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607304, 34.313309, 38.696175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096699, 0.843813, -0.527853,
		0.875691, 0.179953, 0.448088,
		0.473091, -0.505565, -0.721518,
		25.749231, 34.161640, 38.479717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907305, 34.900768, 38.701462>,  <25.418068, 34.515533, 38.984783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907305, 34.900768, 38.701462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927673, 34.634754, 38.403435>,  <25.939894, 34.475143, 38.224617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927673, 34.634754, 38.403435>,  <25.907305, 34.900768, 38.701462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927673, 34.634754, 38.403435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412224, 0.693519, -0.590849,
		0.909658, -0.277050, 0.309458,
		0.050920, -0.665037, -0.745072,
		25.942949, 34.435242, 38.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597197, 34.776836, 38.414265>,  <25.907305, 34.900768, 38.701462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597197, 34.776836, 38.414265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324713, 34.757381, 38.122074>,  <26.161222, 34.745708, 37.946762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324713, 34.757381, 38.122074>,  <26.597197, 34.776836, 38.414265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324713, 34.757381, 38.122074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479259, 0.724637, -0.495189,
		0.553412, -0.687412, -0.470318,
		-0.681209, -0.048639, -0.730472,
		26.120350, 34.742790, 37.902931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017704, 34.994320, 37.889301>,  <26.597197, 34.776836, 38.414265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017704, 34.994320, 37.889301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641838, 35.049442, 37.764061>,  <26.416319, 35.082516, 37.688915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641838, 35.049442, 37.764061>,  <27.017704, 34.994320, 37.889301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641838, 35.049442, 37.764061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316384, 0.698191, -0.642208,
		0.130105, -0.702523, -0.699667,
		-0.939667, 0.137809, -0.313105,
		26.359938, 35.090786, 37.670128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653437, 35.367447, 37.684990>,  <27.017704, 34.994320, 37.889301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653437, 35.367447, 37.684990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620579, 35.558685, 38.034771>,  <27.600864, 35.673428, 38.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620579, 35.558685, 38.034771>,  <27.653437, 35.367447, 37.684990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620579, 35.558685, 38.034771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105699, -0.868294, 0.484658,
		0.991000, 0.132241, 0.020791,
		-0.082144, 0.478098, 0.874456,
		27.595936, 35.702114, 38.297108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348272, 35.307598, 38.188129>,  <27.653437, 35.367447, 37.684990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348272, 35.307598, 38.188129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009832, 35.339481, 38.398941>,  <27.806768, 35.358612, 38.525429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009832, 35.339481, 38.398941>,  <28.348272, 35.307598, 38.188129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009832, 35.339481, 38.398941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222416, -0.845767, 0.484983,
		0.484404, 0.527565, 0.697874,
		-0.846099, 0.079709, 0.527032,
		27.756002, 35.363396, 38.557049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807980, 34.778198, 37.854733>,  <28.348272, 35.307598, 38.188129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807980, 34.778198, 37.854733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035534, 35.081371, 37.727039>,  <29.172068, 35.263275, 37.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035534, 35.081371, 37.727039>,  <28.807980, 34.778198, 37.854733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035534, 35.081371, 37.727039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822281, -0.531214, 0.204122,
		-0.014871, -0.378623, -0.925431,
		0.568887, 0.757929, -0.319235,
		29.206200, 35.308750, 37.631268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271004, 34.541264, 37.326946>,  <28.807980, 34.778198, 37.854733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271004, 34.541264, 37.326946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439398, 34.869884, 37.480740>,  <29.540434, 35.067055, 37.573017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439398, 34.869884, 37.480740>,  <29.271004, 34.541264, 37.326946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439398, 34.869884, 37.480740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888761, -0.458328, 0.006199,
		0.181312, 0.339105, -0.923111,
		0.420986, 0.821549, 0.384484,
		29.565693, 35.116348, 37.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770784, 34.762150, 36.786644>,  <29.271004, 34.541264, 37.326946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770784, 34.762150, 36.786644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830227, 34.843929, 37.173656>,  <29.865892, 34.892998, 37.405865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830227, 34.843929, 37.173656>,  <29.770784, 34.762150, 36.786644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830227, 34.843929, 37.173656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829947, -0.557760, -0.009614,
		0.537685, 0.804428, -0.252570,
		0.148607, 0.204450, 0.967531,
		29.874809, 34.905266, 37.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447412, 35.097584, 36.893688>,  <29.770784, 34.762150, 36.786644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447412, 35.097584, 36.893688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335047, 34.907631, 37.227291>,  <30.267628, 34.793659, 37.427452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335047, 34.907631, 37.227291>,  <30.447412, 35.097584, 36.893688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335047, 34.907631, 37.227291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871149, -0.490821, 0.013951,
		0.402724, 0.730464, 0.551575,
		-0.280916, -0.474886, 0.834008,
		30.250772, 34.765163, 37.477493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878372, 35.252480, 37.427361>,  <30.447412, 35.097584, 36.893688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878372, 35.252480, 37.427361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723103, 34.888447, 37.485428>,  <30.629940, 34.670029, 37.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723103, 34.888447, 37.485428>,  <30.878372, 35.252480, 37.427361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723103, 34.888447, 37.485428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896215, -0.336070, 0.289579,
		-0.214756, 0.242505, 0.946082,
		-0.388175, -0.910081, 0.145164,
		30.606649, 34.615421, 37.528976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906559, 35.067444, 38.097416>,  <30.878372, 35.252480, 37.427361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906559, 35.067444, 38.097416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950840, 34.756565, 37.849640>,  <30.977409, 34.570038, 37.700974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950840, 34.756565, 37.849640>,  <30.906559, 35.067444, 38.097416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950840, 34.756565, 37.849640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873731, -0.220929, 0.433340,
		-0.473643, -0.589201, 0.654603,
		0.110704, -0.777196, -0.619445,
		30.984051, 34.523407, 37.663807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124790, 34.436375, 38.522446>,  <30.906559, 35.067444, 38.097416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124790, 34.436375, 38.522446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231052, 34.379723, 38.141003>,  <31.294809, 34.345734, 37.912136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231052, 34.379723, 38.141003>,  <31.124790, 34.436375, 38.522446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231052, 34.379723, 38.141003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950679, -0.125801, 0.283521,
		-0.160119, -0.981894, 0.101222,
		0.265654, -0.141626, -0.953609,
		31.310749, 34.337234, 37.854919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661139, 33.848850, 38.481071>,  <31.124790, 34.436375, 38.522446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661139, 33.848850, 38.481071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707893, 34.059875, 38.144497>,  <31.735947, 34.186493, 37.942551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707893, 34.059875, 38.144497>,  <31.661139, 33.848850, 38.481071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707893, 34.059875, 38.144497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980917, 0.071216, 0.180913,
		0.155367, -0.846524, -0.509174,
		0.116886, 0.527565, -0.841435,
		31.742960, 34.218143, 37.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182423, 33.494331, 38.036572>,  <31.661139, 33.848850, 38.481071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182423, 33.494331, 38.036572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164177, 33.876602, 37.920219>,  <32.153229, 34.105965, 37.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164177, 33.876602, 37.920219>,  <32.182423, 33.494331, 38.036572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164177, 33.876602, 37.920219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978480, 0.101400, 0.179705,
		0.201234, -0.276420, -0.939732,
		-0.045615, 0.955672, -0.290877,
		32.150494, 34.163303, 37.832954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693626, 33.754482, 37.507545>,  <32.182423, 33.494331, 38.036572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693626, 33.754482, 37.507545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582752, 34.050587, 37.752556>,  <32.516228, 34.228249, 37.899563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582752, 34.050587, 37.752556>,  <32.693626, 33.754482, 37.507545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582752, 34.050587, 37.752556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959105, 0.251219, 0.130409,
		-0.057341, 0.623624, -0.779619,
		-0.277181, 0.740259, 0.612526,
		32.499599, 34.272663, 37.936314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928879, 34.458347, 37.310658>,  <32.693626, 33.754482, 37.507545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928879, 34.458347, 37.310658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897007, 34.441357, 37.709023>,  <32.877884, 34.431164, 37.948044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897007, 34.441357, 37.709023>,  <32.928879, 34.458347, 37.310658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897007, 34.441357, 37.709023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948751, 0.303279, 0.088845,
		-0.305814, 0.951955, 0.016132,
		-0.079684, -0.042475, 0.995915,
		32.873100, 34.428616, 38.007797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031944, 35.189808, 37.509571>,  <32.928879, 34.458347, 37.310658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031944, 35.189808, 37.509571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153721, 34.898849, 37.755569>,  <33.226788, 34.724274, 37.903168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153721, 34.898849, 37.755569>,  <33.031944, 35.189808, 37.509571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153721, 34.898849, 37.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946504, 0.303530, -0.109539,
		-0.106992, 0.615444, 0.780885,
		0.304437, -0.727392, 0.614996,
		33.245052, 34.680634, 37.940067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544899, 35.497311, 37.882580>,  <33.031944, 35.189808, 37.509571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544899, 35.497311, 37.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545368, 35.106995, 37.795094>,  <32.545650, 34.872807, 37.742603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545368, 35.106995, 37.795094>,  <32.544899, 35.497311, 37.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545368, 35.106995, 37.795094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968974, 0.052943, -0.241424,
		0.247158, 0.212210, -0.945452,
		0.001177, -0.975789, -0.218712,
		32.545723, 34.814259, 37.729481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140091, 35.347458, 37.293709>,  <32.544899, 35.497311, 37.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140091, 35.347458, 37.293709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141857, 34.983852, 37.460403>,  <32.142918, 34.765690, 37.560421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141857, 34.983852, 37.460403>,  <32.140091, 35.347458, 37.293709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141857, 34.983852, 37.460403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970893, -0.103695, -0.215905,
		0.239474, -0.403651, -0.883016,
		0.004414, -0.909017, 0.416734,
		32.143181, 34.711147, 37.585423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750370, 34.873325, 36.760876>,  <32.140091, 35.347458, 37.293709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750370, 34.873325, 36.760876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749651, 34.679317, 37.110676>,  <31.749220, 34.562912, 37.320557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749651, 34.679317, 37.110676>,  <31.750370, 34.873325, 36.760876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749651, 34.679317, 37.110676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910926, -0.359996, -0.201535,
		0.412566, -0.796966, -0.441174,
		-0.001796, -0.485023, 0.874500,
		31.749113, 34.533810, 37.373024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629898, 34.142078, 36.640507>,  <31.750370, 34.873325, 36.760876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629898, 34.142078, 36.640507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493322, 34.253910, 36.999451>,  <31.411377, 34.321011, 37.214817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493322, 34.253910, 36.999451>,  <31.629898, 34.142078, 36.640507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493322, 34.253910, 36.999451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868056, -0.459900, -0.187003,
		0.360414, -0.842808, 0.399720,
		-0.341439, 0.279581, 0.897359,
		31.390890, 34.337784, 37.268658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226833, 33.540390, 36.797661>,  <31.629898, 34.142078, 36.640507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226833, 33.540390, 36.797661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126617, 33.844048, 37.037971>,  <31.066488, 34.026241, 37.182159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126617, 33.844048, 37.037971>,  <31.226833, 33.540390, 36.797661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126617, 33.844048, 37.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968075, -0.191553, -0.161670,
		-0.007649, -0.622105, 0.782896,
		-0.250542, 0.759139, 0.600779,
		31.051455, 34.071789, 37.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001581, 32.840641, 36.965660>,  <31.226833, 33.540390, 36.797661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001581, 32.840641, 36.965660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692059, 32.685188, 36.765587>,  <30.506346, 32.591915, 36.645542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692059, 32.685188, 36.765587>,  <31.001581, 32.840641, 36.965660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692059, 32.685188, 36.765587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372607, 0.359306, -0.855607,
		0.512237, -0.848448, -0.133226,
		-0.773807, -0.388633, -0.500188,
		30.459917, 32.568600, 36.615532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280766, 32.571869, 36.269299>,  <31.001581, 32.840641, 36.965660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280766, 32.571869, 36.269299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885246, 32.630093, 36.256073>,  <30.647936, 32.665028, 36.248138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885246, 32.630093, 36.256073>,  <31.280766, 32.571869, 36.269299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885246, 32.630093, 36.256073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083035, 0.352299, -0.932197,
		-0.124041, -0.924499, -0.360438,
		-0.988797, 0.145559, -0.033066,
		30.588608, 32.673759, 36.246155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512543, 31.901310, 36.623478>,  <31.280766, 32.571869, 36.269299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512543, 31.901310, 36.623478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473606, 31.647070, 36.929821>,  <31.450245, 31.494526, 37.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473606, 31.647070, 36.929821>,  <31.512543, 31.901310, 36.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473606, 31.647070, 36.929821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116411, 0.771500, 0.625489,
		-0.988419, -0.028268, -0.149090,
		-0.097342, -0.635602, 0.765856,
		31.444403, 31.456390, 37.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174835, 32.407398, 36.751286>,  <31.512543, 31.901310, 36.623478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174835, 32.407398, 36.751286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414852, 32.725506, 36.716633>,  <32.558861, 32.916370, 36.695843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414852, 32.725506, 36.716633>,  <32.174835, 32.407398, 36.751286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414852, 32.725506, 36.716633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789693, -0.571548, 0.222976,
		0.127813, -0.202205, -0.970967,
		0.600041, 0.795265, -0.086628,
		32.594864, 32.964085, 36.690643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882492, 32.189095, 36.385715>,  <32.174835, 32.407398, 36.751286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882492, 32.189095, 36.385715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927433, 32.527302, 36.594513>,  <32.954399, 32.730225, 36.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927433, 32.527302, 36.594513>,  <32.882492, 32.189095, 36.385715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927433, 32.527302, 36.594513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860083, -0.345830, 0.375045,
		0.497629, 0.406825, -0.766067,
		0.112351, 0.845515, 0.521998,
		32.961140, 32.780956, 36.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553925, 32.452923, 36.279842>,  <32.882492, 32.189095, 36.385715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553925, 32.452923, 36.279842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411697, 32.573727, 36.633648>,  <33.326363, 32.646210, 36.845932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411697, 32.573727, 36.633648>,  <33.553925, 32.452923, 36.279842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411697, 32.573727, 36.633648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870633, -0.237192, 0.430973,
		0.339956, 0.923327, -0.178599,
		-0.355567, 0.302006, 0.884514,
		33.305027, 32.664330, 36.899002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902382, 33.011059, 36.091301>,  <33.553925, 32.452923, 36.279842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902382, 33.011059, 36.091301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195950, 33.006645, 36.362957>,  <34.372089, 33.003998, 36.525951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195950, 33.006645, 36.362957>,  <33.902382, 33.011059, 36.091301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195950, 33.006645, 36.362957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578143, 0.534965, -0.616087,
		-0.356521, 0.844802, 0.399001,
		0.733923, -0.011032, 0.679143,
		34.416126, 33.003334, 36.566700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255028, 33.595726, 35.894878>,  <33.902382, 33.011059, 36.091301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255028, 33.595726, 35.894878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504818, 33.381554, 36.122334>,  <34.654690, 33.253052, 36.258808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504818, 33.381554, 36.122334>,  <34.255028, 33.595726, 35.894878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504818, 33.381554, 36.122334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780935, 0.440300, -0.443030,
		-0.013162, 0.720732, 0.693089,
		0.624473, -0.535426, 0.568640,
		34.692162, 33.220924, 36.292927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816799, 34.042030, 35.987392>,  <34.255028, 33.595726, 35.894878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816799, 34.042030, 35.987392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000916, 33.710548, 36.114750>,  <35.111385, 33.511658, 36.191166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000916, 33.710548, 36.114750>,  <34.816799, 34.042030, 35.987392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000916, 33.710548, 36.114750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844851, 0.298728, -0.443833,
		0.272695, 0.473289, 0.837637,
		0.460286, -0.828710, 0.318397,
		35.139000, 33.461937, 36.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598942, 34.131111, 35.937069>,  <34.816799, 34.042030, 35.987392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598942, 34.131111, 35.937069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565720, 33.732494, 35.937496>,  <35.545788, 33.493324, 35.937752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565720, 33.732494, 35.937496>,  <35.598942, 34.131111, 35.937069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565720, 33.732494, 35.937496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952071, -0.079666, -0.295320,
		0.294384, -0.023512, 0.955398,
		-0.083056, -0.996544, 0.001067,
		35.540802, 33.433533, 35.937817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143688, 33.822197, 36.321327>,  <35.598942, 34.131111, 35.937069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143688, 33.822197, 36.321327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019444, 33.543411, 36.062790>,  <35.944897, 33.376141, 35.907669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019444, 33.543411, 36.062790>,  <36.143688, 33.822197, 36.321327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019444, 33.543411, 36.062790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944271, -0.148304, -0.293868,
		0.108962, -0.701600, 0.704191,
		-0.310612, -0.696967, -0.646341,
		35.926258, 33.334320, 35.868889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790550, 33.726154, 36.374695>,  <36.143688, 33.822197, 36.321327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790550, 33.726154, 36.374695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966721, 34.085148, 36.365387>,  <37.072422, 34.300545, 36.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966721, 34.085148, 36.365387>,  <36.790550, 33.726154, 36.374695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966721, 34.085148, 36.365387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800204, 0.380671, -0.463426,
		-0.407059, 0.222729, 0.885830,
		0.440428, 0.897486, -0.023273,
		37.098850, 34.354393, 36.358406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459297, 33.192081, 36.380974>,  <36.790550, 33.726154, 36.374695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459297, 33.192081, 36.380974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303741, 32.870483, 36.201038>,  <37.210407, 32.677525, 36.093075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303741, 32.870483, 36.201038>,  <37.459297, 33.192081, 36.380974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303741, 32.870483, 36.201038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637924, -0.587281, 0.498150,
		-0.664694, -0.093241, 0.741274,
		-0.388888, -0.803995, -0.449843,
		37.187077, 32.629284, 36.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028900, 32.636944, 36.722298>,  <37.459297, 33.192081, 36.380974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028900, 32.636944, 36.722298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269894, 32.497753, 36.434982>,  <37.414490, 32.414238, 36.262592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269894, 32.497753, 36.434982>,  <37.028900, 32.636944, 36.722298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269894, 32.497753, 36.434982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484984, -0.555139, 0.675730,
		-0.633884, -0.755470, -0.165698,
		0.602480, -0.347974, -0.718285,
		37.450638, 32.393360, 36.219498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041775, 31.892086, 36.742359>,  <37.028900, 32.636944, 36.722298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041775, 31.892086, 36.742359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367737, 31.974337, 36.525604>,  <37.563316, 32.023685, 36.395550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367737, 31.974337, 36.525604>,  <37.041775, 31.892086, 36.742359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367737, 31.974337, 36.525604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507689, -0.704273, 0.496238,
		-0.279597, -0.679499, -0.678312,
		0.814910, 0.205625, -0.541887,
		37.612209, 32.036022, 36.363037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227440, 31.299128, 36.604424>,  <37.041775, 31.892086, 36.742359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227440, 31.299128, 36.604424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546463, 31.537727, 36.568436>,  <37.737877, 31.680887, 36.546844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546463, 31.537727, 36.568436>,  <37.227440, 31.299128, 36.604424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546463, 31.537727, 36.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536030, -0.632347, 0.559293,
		0.276729, -0.494291, -0.824074,
		0.797554, 0.596501, -0.089966,
		37.785728, 31.716677, 36.541447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891285, 30.906059, 36.345863>,  <37.227440, 31.299128, 36.604424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891285, 30.906059, 36.345863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953602, 31.236826, 36.561989>,  <37.990993, 31.435286, 36.691662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953602, 31.236826, 36.561989>,  <37.891285, 30.906059, 36.345863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953602, 31.236826, 36.561989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572386, -0.521372, 0.632886,
		0.805048, 0.210666, -0.554543,
		0.155795, 0.826917, 0.540312,
		38.000340, 31.484901, 36.724083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647587, 31.057152, 36.406315>,  <37.891285, 30.906059, 36.345863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647587, 31.057152, 36.406315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441689, 31.180595, 36.726265>,  <38.318150, 31.254662, 36.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441689, 31.180595, 36.726265>,  <38.647587, 31.057152, 36.406315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441689, 31.180595, 36.726265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638806, -0.484186, 0.597905,
		0.571807, 0.818733, 0.052091,
		-0.514746, 0.308610, 0.799872,
		38.287266, 31.273178, 36.966228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175442, 31.083158, 36.904964>,  <38.647587, 31.057152, 36.406315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175442, 31.083158, 36.904964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824722, 31.100386, 37.096539>,  <38.614292, 31.110722, 37.211483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824722, 31.100386, 37.096539>,  <39.175442, 31.083158, 36.904964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824722, 31.100386, 37.096539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426938, -0.388554, 0.816547,
		0.221257, 0.920419, 0.322295,
		-0.876795, 0.043067, 0.478933,
		38.561684, 31.113306, 37.240219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219810, 31.593744, 37.480083>,  <39.175442, 31.083158, 36.904964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219810, 31.593744, 37.480083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989178, 31.268389, 37.510948>,  <38.850800, 31.073175, 37.529469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989178, 31.268389, 37.510948>,  <39.219810, 31.593744, 37.480083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989178, 31.268389, 37.510948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466575, -0.250262, 0.848337,
		-0.670717, 0.525138, 0.523803,
		-0.576582, -0.813388, 0.077161,
		38.816204, 31.024372, 37.534096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772957, 32.079247, 37.729374>,  <39.219810, 31.593744, 37.480083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772957, 32.079247, 37.729374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786163, 31.842390, 37.407310>,  <38.794086, 31.700275, 37.214073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786163, 31.842390, 37.407310>,  <38.772957, 32.079247, 37.729374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786163, 31.842390, 37.407310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209447, 0.783609, -0.584883,
		0.977262, 0.187949, -0.098150,
		0.033017, -0.592142, -0.805157,
		38.796070, 31.664747, 37.165764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745453, 32.444336, 37.083729>,  <38.772957, 32.079247, 37.729374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745453, 32.444336, 37.083729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609360, 32.106655, 36.918049>,  <38.527706, 31.904045, 36.818642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609360, 32.106655, 36.918049>,  <38.745453, 32.444336, 37.083729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609360, 32.106655, 36.918049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461660, 0.533697, -0.708546,
		0.819215, -0.049849, -0.571316,
		-0.340230, -0.844205, -0.414200,
		38.507290, 31.853394, 36.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809849, 32.458168, 36.386208>,  <38.745453, 32.444336, 37.083729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809849, 32.458168, 36.386208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501568, 32.204704, 36.413021>,  <38.316601, 32.052628, 36.429108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501568, 32.204704, 36.413021>,  <38.809849, 32.458168, 36.386208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501568, 32.204704, 36.413021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457460, 0.477009, -0.750462,
		0.443559, -0.609050, -0.657505,
		-0.770705, -0.633656, 0.067035,
		38.270359, 32.014606, 36.433128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691494, 32.335762, 35.722790>,  <38.809849, 32.458168, 36.386208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691494, 32.335762, 35.722790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361073, 32.263569, 35.936356>,  <38.162819, 32.220253, 36.064495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361073, 32.263569, 35.936356>,  <38.691494, 32.335762, 35.722790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361073, 32.263569, 35.936356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558206, 0.392706, -0.730881,
		-0.077761, -0.901781, -0.425141,
		-0.826050, -0.180482, 0.533917,
		38.113258, 32.209423, 36.096531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293713, 31.992060, 35.269932>,  <38.691494, 32.335762, 35.722790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293713, 31.992060, 35.269932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038754, 32.139507, 35.540588>,  <37.885777, 32.227974, 35.702980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038754, 32.139507, 35.540588>,  <38.293713, 31.992060, 35.269932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038754, 32.139507, 35.540588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595897, 0.320899, -0.736160,
		-0.488494, -0.872436, 0.015116,
		-0.637401, 0.368618, 0.676639,
		37.847534, 32.250092, 35.743580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596638, 31.818594, 35.125317>,  <38.293713, 31.992060, 35.269932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596638, 31.818594, 35.125317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582680, 32.146610, 35.353813>,  <37.574303, 32.343418, 35.490910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582680, 32.146610, 35.353813>,  <37.596638, 31.818594, 35.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582680, 32.146610, 35.353813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470317, 0.490864, -0.733386,
		-0.881807, -0.294257, 0.368549,
		-0.034897, 0.820040, 0.571241,
		37.572212, 32.392624, 35.525185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869560, 32.181610, 35.147141>,  <37.596638, 31.818594, 35.125317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869560, 32.181610, 35.147141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205532, 32.398685, 35.147617>,  <37.407116, 32.528931, 35.147903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205532, 32.398685, 35.147617>,  <36.869560, 32.181610, 35.147141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205532, 32.398685, 35.147617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383603, 0.595261, -0.706054,
		-0.383878, 0.592580, 0.708157,
		0.839932, 0.542690, 0.001192,
		37.457512, 32.561493, 35.147976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743679, 32.845356, 35.049820>,  <36.869560, 32.181610, 35.147141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743679, 32.845356, 35.049820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130783, 32.829918, 34.950268>,  <37.363045, 32.820656, 34.890537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130783, 32.829918, 34.950268>,  <36.743679, 32.845356, 35.049820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130783, 32.829918, 34.950268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174729, 0.608814, -0.773832,
		0.181393, 0.792374, 0.582444,
		0.967764, -0.038598, -0.248885,
		37.421112, 32.818340, 34.875603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869457, 33.513584, 34.762772>,  <36.743679, 32.845356, 35.049820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869457, 33.513584, 34.762772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196358, 33.319221, 34.638840>,  <37.392498, 33.202606, 34.564480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196358, 33.319221, 34.638840>,  <36.869457, 33.513584, 34.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196358, 33.319221, 34.638840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053805, 0.599631, -0.798466,
		0.573762, 0.635877, 0.516194,
		0.817253, -0.485904, -0.309832,
		37.441532, 33.173450, 34.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332756, 34.035950, 34.508781>,  <36.869457, 33.513584, 34.762772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332756, 34.035950, 34.508781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460831, 33.698872, 34.335644>,  <37.537674, 33.496624, 34.231762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460831, 33.698872, 34.335644>,  <37.332756, 34.035950, 34.508781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460831, 33.698872, 34.335644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207575, 0.508199, -0.835850,
		0.924334, 0.177780, 0.337640,
		0.320186, -0.842691, -0.432843,
		37.556885, 33.446064, 34.205791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963451, 34.175190, 34.286922>,  <37.332756, 34.035950, 34.508781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963451, 34.175190, 34.286922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811760, 33.871288, 34.075657>,  <37.720745, 33.688946, 33.948898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811760, 33.871288, 34.075657>,  <37.963451, 34.175190, 34.286922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811760, 33.871288, 34.075657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210314, 0.485083, -0.848800,
		0.901084, -0.432971, -0.024171,
		-0.379231, -0.759757, -0.528161,
		37.697990, 33.643360, 33.917210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369183, 34.183064, 33.731792>,  <37.963451, 34.175190, 34.286922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369183, 34.183064, 33.731792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056927, 33.966091, 33.607620>,  <37.869572, 33.835907, 33.533115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056927, 33.966091, 33.607620>,  <38.369183, 34.183064, 33.731792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056927, 33.966091, 33.607620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056765, 0.556192, -0.829113,
		0.622402, -0.629614, -0.464975,
		-0.780637, -0.542436, -0.310435,
		37.822735, 33.803360, 33.514492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534492, 34.043945, 33.114693>,  <38.369183, 34.183064, 33.731792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534492, 34.043945, 33.114693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137901, 33.993568, 33.101337>,  <37.899948, 33.963341, 33.093323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137901, 33.993568, 33.101337>,  <38.534492, 34.043945, 33.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137901, 33.993568, 33.101337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029114, 0.463932, -0.885393,
		0.127001, -0.876873, -0.463644,
		-0.991475, -0.125944, -0.033390,
		37.840458, 33.955784, 33.091320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417728, 33.825581, 32.407772>,  <38.534492, 34.043945, 33.114693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417728, 33.825581, 32.407772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054478, 33.946804, 32.523323>,  <37.836525, 34.019539, 32.592655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054478, 33.946804, 32.523323>,  <38.417728, 33.825581, 32.407772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054478, 33.946804, 32.523323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089791, 0.532948, -0.841371,
		-0.408943, -0.790014, -0.456774,
		-0.908131, 0.303059, 0.288882,
		37.782040, 34.037720, 32.609989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141033, 33.954506, 31.807705>,  <38.417728, 33.825581, 32.407772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141033, 33.954506, 31.807705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925564, 34.176113, 32.061600>,  <37.796284, 34.309078, 32.213936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925564, 34.176113, 32.061600>,  <38.141033, 33.954506, 31.807705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925564, 34.176113, 32.061600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168972, 0.667035, -0.725611,
		-0.825398, -0.498119, -0.265698,
		-0.538671, 0.554022, 0.634738,
		37.763962, 34.342319, 32.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495033, 34.051529, 31.536394>,  <38.141033, 33.954506, 31.807705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495033, 34.051529, 31.536394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584229, 34.354313, 31.782091>,  <37.637745, 34.535984, 31.929508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584229, 34.354313, 31.782091>,  <37.495033, 34.051529, 31.536394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584229, 34.354313, 31.782091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338589, 0.651020, -0.679361,
		-0.914130, -0.056485, 0.401468,
		0.222990, 0.756956, 0.614242,
		37.651127, 34.581398, 31.966364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057770, 34.531944, 31.241726>,  <37.495033, 34.051529, 31.536394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057770, 34.531944, 31.241726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309490, 34.750122, 31.463163>,  <37.460522, 34.881031, 31.596025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309490, 34.750122, 31.463163>,  <37.057770, 34.531944, 31.241726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309490, 34.750122, 31.463163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040607, 0.734432, -0.677467,
		-0.776100, 0.403851, 0.484328,
		0.629301, 0.545449, 0.553593,
		37.498280, 34.913757, 31.629242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735806, 35.169575, 31.256615>,  <37.057770, 34.531944, 31.241726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735806, 35.169575, 31.256615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112133, 35.267002, 31.350876>,  <37.337929, 35.325459, 31.407433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112133, 35.267002, 31.350876>,  <36.735806, 35.169575, 31.256615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112133, 35.267002, 31.350876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036712, 0.764488, -0.643591,
		-0.336910, 0.596853, 0.728188,
		0.940821, 0.243566, 0.235652,
		37.394379, 35.340073, 31.421572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762383, 35.812374, 31.578220>,  <36.735806, 35.169575, 31.256615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762383, 35.812374, 31.578220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140057, 35.755116, 31.459545>,  <37.366661, 35.720760, 31.388340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140057, 35.755116, 31.459545>,  <36.762383, 35.812374, 31.578220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140057, 35.755116, 31.459545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004957, 0.906722, -0.421700,
		0.329377, 0.396693, 0.856823,
		0.944186, -0.143145, -0.296686,
		37.423313, 35.712173, 31.370539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072758, 36.496098, 31.599388>,  <36.762383, 35.812374, 31.578220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072758, 36.496098, 31.599388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343250, 36.302856, 31.376919>,  <37.505547, 36.186913, 31.243437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343250, 36.302856, 31.376919>,  <37.072758, 36.496098, 31.599388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343250, 36.302856, 31.376919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142913, 0.826643, -0.544277,
		0.722697, 0.288572, 0.628041,
		0.676229, -0.483103, -0.556171,
		37.546120, 36.157925, 31.210068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686012, 36.909389, 31.494898>,  <37.072758, 36.496098, 31.599388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686012, 36.909389, 31.494898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701988, 36.659782, 31.182743>,  <37.711575, 36.510017, 30.995451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701988, 36.659782, 31.182743>,  <37.686012, 36.909389, 31.494898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701988, 36.659782, 31.182743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210235, 0.768774, -0.603976,
		0.976835, -0.139942, 0.161896,
		0.039940, -0.624022, -0.780386,
		37.713970, 36.472576, 30.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188564, 37.150227, 31.123753>,  <37.686012, 36.909389, 31.494898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188564, 37.150227, 31.123753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987492, 36.937225, 30.851357>,  <37.866848, 36.809425, 30.687918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987492, 36.937225, 30.851357>,  <38.188564, 37.150227, 31.123753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987492, 36.937225, 30.851357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157475, 0.718168, -0.677817,
		0.850007, -0.447966, -0.277154,
		-0.502682, -0.532504, -0.680992,
		37.836685, 36.777473, 30.647058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634918, 36.986263, 30.502886>,  <38.188564, 37.150227, 31.123753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634918, 36.986263, 30.502886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247143, 36.988094, 30.404764>,  <38.014477, 36.989193, 30.345892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247143, 36.988094, 30.404764>,  <38.634918, 36.986263, 30.502886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247143, 36.988094, 30.404764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168614, 0.738708, -0.652595,
		0.178222, -0.674011, -0.716901,
		-0.969436, 0.004573, -0.245301,
		37.956310, 36.989468, 30.331173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606369, 37.119457, 29.848639>,  <38.634918, 36.986263, 30.502886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606369, 37.119457, 29.848639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217213, 37.190529, 29.907852>,  <37.983719, 37.233173, 29.943380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217213, 37.190529, 29.907852>,  <38.606369, 37.119457, 29.848639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217213, 37.190529, 29.907852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018029, 0.696425, -0.717403,
		-0.230560, -0.695286, -0.680749,
		-0.972891, 0.177678, 0.148032,
		37.925346, 37.243832, 29.952261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351219, 37.205173, 29.132490>,  <38.606369, 37.119457, 29.848639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351219, 37.205173, 29.132490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102703, 37.356220, 29.407124>,  <37.953594, 37.446850, 29.571903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102703, 37.356220, 29.407124>,  <38.351219, 37.205173, 29.132490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102703, 37.356220, 29.407124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159199, 0.797114, -0.582465,
		-0.767234, -0.471186, -0.435127,
		-0.621295, 0.377616, 0.686585,
		37.916313, 37.469505, 29.613100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821320, 37.435558, 28.797760>,  <38.351219, 37.205173, 29.132490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821320, 37.435558, 28.797760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805294, 37.640617, 29.140827>,  <37.795677, 37.763653, 29.346666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805294, 37.640617, 29.140827>,  <37.821320, 37.435558, 28.797760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805294, 37.640617, 29.140827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095800, 0.852430, -0.513990,
		-0.994594, -0.102758, 0.014957,
		-0.040067, 0.512644, 0.857665,
		37.793274, 37.794411, 29.398127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328773, 37.873276, 28.643702>,  <37.821320, 37.435558, 28.797760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328773, 37.873276, 28.643702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508606, 38.023521, 28.967873>,  <37.616505, 38.113670, 29.162374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508606, 38.023521, 28.967873>,  <37.328773, 37.873276, 28.643702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508606, 38.023521, 28.967873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115069, 0.924082, -0.364461,
		-0.885799, 0.070598, 0.458668,
		0.449577, 0.375618, 0.810427,
		37.643478, 38.136208, 29.211000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973492, 38.491791, 28.763130>,  <37.328773, 37.873276, 28.643702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973492, 38.491791, 28.763130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305397, 38.544434, 28.980082>,  <37.504539, 38.576019, 29.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305397, 38.544434, 28.980082>,  <36.973492, 38.491791, 28.763130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305397, 38.544434, 28.980082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005295, 0.969898, -0.243452,
		-0.558091, 0.204879, 0.804089,
		0.829763, 0.131611, 0.542377,
		37.554325, 38.583916, 29.142794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003197, 39.011127, 29.263638>,  <36.973492, 38.491791, 28.763130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003197, 39.011127, 29.263638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387737, 38.981747, 29.157501>,  <37.618462, 38.964119, 29.093819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387737, 38.981747, 29.157501>,  <37.003197, 39.011127, 29.263638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387737, 38.981747, 29.157501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045215, 0.908546, -0.415330,
		0.271584, 0.411276, 0.870111,
		0.961352, -0.073455, -0.265342,
		37.676144, 38.959709, 29.077898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245838, 39.695499, 29.372282>,  <37.003197, 39.011127, 29.263638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245838, 39.695499, 29.372282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535172, 39.525703, 29.154440>,  <37.708771, 39.423824, 29.023735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535172, 39.525703, 29.154440>,  <37.245838, 39.695499, 29.372282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535172, 39.525703, 29.154440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189933, 0.880606, -0.434117,
		0.663859, 0.210575, 0.717600,
		0.723337, -0.424489, -0.544604,
		37.752174, 39.398357, 28.991058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842865, 40.056179, 29.482080>,  <37.245838, 39.695499, 29.372282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842865, 40.056179, 29.482080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879345, 39.865730, 29.132225>,  <37.901234, 39.751461, 28.922312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879345, 39.865730, 29.132225>,  <37.842865, 40.056179, 29.482080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879345, 39.865730, 29.132225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289403, 0.853063, -0.434201,
		0.952853, -0.213524, 0.215589,
		0.091199, -0.476122, -0.874638,
		37.906704, 39.722893, 28.869833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343689, 40.340687, 29.130138>,  <37.842865, 40.056179, 29.482080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343689, 40.340687, 29.130138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185429, 40.145126, 28.819159>,  <38.090473, 40.027790, 28.632570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185429, 40.145126, 28.819159>,  <38.343689, 40.340687, 29.130138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185429, 40.145126, 28.819159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302989, 0.729647, -0.613036,
		0.866981, -0.478110, -0.140556,
		-0.395654, -0.488904, -0.777451,
		38.066730, 39.998455, 28.585922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737400, 40.593845, 28.610247>,  <38.343689, 40.340687, 29.130138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737400, 40.593845, 28.610247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432476, 40.431435, 28.408642>,  <38.249523, 40.333988, 28.287680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432476, 40.431435, 28.408642>,  <38.737400, 40.593845, 28.610247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432476, 40.431435, 28.408642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145225, 0.651573, -0.744555,
		0.630719, -0.640771, -0.437728,
		-0.762301, -0.406036, -0.504016,
		38.203785, 40.309624, 28.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973434, 40.524956, 27.824152>,  <38.737400, 40.593845, 28.610247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973434, 40.524956, 27.824152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573811, 40.541321, 27.829981>,  <38.334038, 40.551140, 27.833479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573811, 40.541321, 27.829981>,  <38.973434, 40.524956, 27.824152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573811, 40.541321, 27.829981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023309, 0.788279, -0.614876,
		-0.036643, -0.613956, -0.788489,
		-0.999056, 0.040909, 0.014574,
		38.274094, 40.553593, 27.834352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723503, 40.528069, 27.102392>,  <38.973434, 40.524956, 27.824152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723503, 40.528069, 27.102392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429466, 40.691147, 27.319067>,  <38.253044, 40.788994, 27.449072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429466, 40.691147, 27.319067>,  <38.723503, 40.528069, 27.102392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429466, 40.691147, 27.319067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066819, 0.751526, -0.656311,
		-0.674669, -0.518642, -0.525197,
		-0.735089, 0.407699, 0.541687,
		38.208939, 40.813457, 27.481573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216991, 40.628281, 26.570248>,  <38.723503, 40.528069, 27.102392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216991, 40.628281, 26.570248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154572, 40.866627, 26.885359>,  <38.117119, 41.009636, 27.074425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154572, 40.866627, 26.885359>,  <38.216991, 40.628281, 26.570248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154572, 40.866627, 26.885359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042691, 0.800872, -0.597311,
		-0.986826, -0.059580, -0.150415,
		-0.156050, 0.595864, 0.787778,
		38.107758, 41.045387, 27.121693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839760, 41.124538, 26.317122>,  <38.216991, 40.628281, 26.570248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839760, 41.124538, 26.317122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975391, 41.308975, 26.645126>,  <38.056770, 41.419636, 26.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975391, 41.308975, 26.645126>,  <37.839760, 41.124538, 26.317122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975391, 41.308975, 26.645126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025658, 0.875860, -0.481884,
		-0.940409, 0.142355, 0.308813,
		0.339076, 0.461091, 0.820014,
		38.077114, 41.447304, 26.891130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415054, 41.651131, 26.338694>,  <37.839760, 41.124538, 26.317122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415054, 41.651131, 26.338694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752319, 41.731564, 26.538153>,  <37.954678, 41.779823, 26.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752319, 41.731564, 26.538153>,  <37.415054, 41.651131, 26.338694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752319, 41.731564, 26.538153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154457, 0.797757, -0.582861,
		-0.515001, 0.568464, 0.641579,
		0.843159, 0.201078, 0.498649,
		38.005268, 41.791885, 26.687748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384712, 42.359825, 26.170275>,  <37.415054, 41.651131, 26.338694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384712, 42.359825, 26.170275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710529, 42.318748, 26.398653>,  <37.906017, 42.294102, 26.535681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710529, 42.318748, 26.398653>,  <37.384712, 42.359825, 26.170275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710529, 42.318748, 26.398653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335943, 0.885881, -0.319932,
		-0.472937, 0.452402, 0.756083,
		0.814538, -0.102693, 0.570948,
		37.954891, 42.287941, 26.569937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526001, 42.949097, 26.578121>,  <37.384712, 42.359825, 26.170275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526001, 42.949097, 26.578121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877193, 42.773075, 26.502760>,  <38.087910, 42.667461, 26.457542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877193, 42.773075, 26.502760>,  <37.526001, 42.949097, 26.578121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877193, 42.773075, 26.502760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368502, 0.872543, -0.320742,
		0.305536, 0.212178, 0.928239,
		0.877983, -0.440056, -0.188405,
		38.140587, 42.641060, 26.446238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118938, 43.323544, 26.944613>,  <37.526001, 42.949097, 26.578121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118938, 43.323544, 26.944613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269432, 43.123436, 26.632669>,  <38.359730, 43.003372, 26.445503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269432, 43.123436, 26.632669>,  <38.118938, 43.323544, 26.944613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269432, 43.123436, 26.632669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318084, 0.860286, -0.398409,
		0.870214, -0.098166, 0.482796,
		0.376233, -0.500271, -0.779858,
		38.382301, 42.973354, 26.398712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728771, 43.570320, 26.759306>,  <38.118938, 43.323544, 26.944613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728771, 43.570320, 26.759306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636124, 43.388214, 26.415426>,  <38.580536, 43.278950, 26.209099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636124, 43.388214, 26.415426>,  <38.728771, 43.570320, 26.759306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636124, 43.388214, 26.415426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312840, 0.801928, -0.508961,
		0.921131, -0.386834, -0.043318,
		-0.231622, -0.455269, -0.859699,
		38.566639, 43.251633, 26.157516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295616, 43.632397, 26.372841>,  <38.728771, 43.570320, 26.759306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295616, 43.632397, 26.372841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007263, 43.607487, 26.096741>,  <38.834251, 43.592541, 25.931082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007263, 43.607487, 26.096741>,  <39.295616, 43.632397, 26.372841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007263, 43.607487, 26.096741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318461, 0.854815, -0.409724,
		0.615552, -0.515181, -0.596391,
		-0.720887, -0.062279, -0.690249,
		38.790997, 43.588802, 25.889666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603378, 43.783947, 25.852715>,  <39.295616, 43.632397, 26.372841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603378, 43.783947, 25.852715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236603, 43.863438, 25.714304>,  <39.016537, 43.911133, 25.631258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236603, 43.863438, 25.714304>,  <39.603378, 43.783947, 25.852715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236603, 43.863438, 25.714304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312251, 0.897260, -0.312128,
		0.248448, -0.394248, -0.884784,
		-0.916937, 0.198727, -0.346027,
		38.961521, 43.923058, 25.610497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724182, 44.081219, 25.263861>,  <39.603378, 43.783947, 25.852715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724182, 44.081219, 25.263861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345222, 44.182049, 25.342749>,  <39.117847, 44.242546, 25.390081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345222, 44.182049, 25.342749>,  <39.724182, 44.081219, 25.263861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345222, 44.182049, 25.342749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205515, 0.951507, -0.228906,
		-0.245356, -0.176334, -0.953261,
		-0.947398, 0.252073, 0.197219,
		39.061005, 44.257671, 25.401915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556751, 44.625965, 24.802189>,  <39.724182, 44.081219, 25.263861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556751, 44.625965, 24.802189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240025, 44.650101, 25.045296>,  <39.049988, 44.664581, 25.191160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240025, 44.650101, 25.045296>,  <39.556751, 44.625965, 24.802189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240025, 44.650101, 25.045296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023723, 0.991318, -0.129329,
		-0.610294, -0.116823, -0.783513,
		-0.791819, 0.060341, 0.607767,
		39.002480, 44.668201, 25.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135365, 45.072678, 24.384493>,  <39.556751, 44.625965, 24.802189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135365, 45.072678, 24.384493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991974, 45.112869, 24.755739>,  <38.905941, 45.136986, 24.978487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991974, 45.112869, 24.755739>,  <39.135365, 45.072678, 24.384493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991974, 45.112869, 24.755739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000934, 0.994228, -0.107280,
		-0.933539, -0.037590, -0.356500,
		-0.358475, 0.100483, 0.928116,
		38.884430, 45.143013, 25.034174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640297, 45.459869, 24.323645>,  <39.135365, 45.072678, 24.384493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640297, 45.459869, 24.323645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757820, 45.520237, 24.701195>,  <38.828335, 45.556458, 24.927725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757820, 45.520237, 24.701195>,  <38.640297, 45.459869, 24.323645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757820, 45.520237, 24.701195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068776, 0.981561, -0.178349,
		-0.953388, 0.117316, 0.278007,
		0.293803, 0.150915, 0.943877,
		38.845963, 45.565510, 24.984358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304573, 46.071796, 24.547449>,  <38.640297, 45.459869, 24.323645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304573, 46.071796, 24.547449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613178, 46.031651, 24.798746>,  <38.798344, 46.007561, 24.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613178, 46.031651, 24.798746>,  <38.304573, 46.071796, 24.547449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613178, 46.031651, 24.798746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215654, 0.970274, -0.109827,
		-0.598543, 0.220217, 0.770228,
		0.771517, -0.100366, 0.628242,
		38.844635, 46.001541, 24.987219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349892, 46.593403, 25.035458>,  <38.304573, 46.071796, 24.547449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349892, 46.593403, 25.035458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724735, 46.471176, 24.967981>,  <38.949642, 46.397842, 24.927496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724735, 46.471176, 24.967981>,  <38.349892, 46.593403, 25.035458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724735, 46.471176, 24.967981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274184, 0.943527, -0.185956,
		0.215984, 0.128009, 0.967969,
		0.937109, -0.305565, -0.168688,
		39.005867, 46.379505, 24.917376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937302, 46.801617, 25.472845>,  <38.349892, 46.593403, 25.035458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937302, 46.801617, 25.472845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078503, 46.773537, 25.099651>,  <39.163223, 46.756687, 24.875736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078503, 46.773537, 25.099651>,  <38.937302, 46.801617, 25.472845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078503, 46.773537, 25.099651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138163, 0.990160, -0.022230,
		0.925363, -0.121056, 0.359233,
		0.353007, -0.070203, -0.932983,
		39.184406, 46.752476, 24.819756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660183, 46.920147, 25.288586>,  <38.937302, 46.801617, 25.472845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660183, 46.920147, 25.288586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398899, 47.056236, 25.018011>,  <39.242130, 47.137890, 24.855665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398899, 47.056236, 25.018011>,  <39.660183, 46.920147, 25.288586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398899, 47.056236, 25.018011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279322, 0.938630, 0.202369,
		0.703776, -0.056756, -0.708151,
		-0.653206, 0.340224, -0.676439,
		39.202938, 47.158302, 24.815079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922237, 47.243481, 24.656738>,  <39.660183, 46.920147, 25.288586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922237, 47.243481, 24.656738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564350, 47.401009, 24.741009>,  <39.349617, 47.495525, 24.791571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564350, 47.401009, 24.741009>,  <39.922237, 47.243481, 24.656738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564350, 47.401009, 24.741009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421689, 0.900290, 0.107961,
		-0.147152, 0.185434, -0.971576,
		-0.894720, 0.393817, 0.210675,
		39.295933, 47.519154, 24.804211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856941, 47.813251, 24.293245>,  <39.922237, 47.243481, 24.656738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856941, 47.813251, 24.293245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638954, 47.834274, 24.627970>,  <39.508163, 47.846889, 24.828804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638954, 47.834274, 24.627970>,  <39.856941, 47.813251, 24.293245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638954, 47.834274, 24.627970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587327, 0.736194, 0.336251,
		-0.598382, 0.674727, -0.432068,
		-0.544964, 0.052558, 0.836811,
		39.475464, 47.850040, 24.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229946, 47.819572, 24.957178>,  <39.856941, 47.813251, 24.293245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229946, 47.819572, 24.957178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545383, 47.984062, 25.140051>,  <40.734646, 48.082756, 25.249775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545383, 47.984062, 25.140051>,  <40.229946, 47.819572, 24.957178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545383, 47.984062, 25.140051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256869, -0.455215, 0.852525,
		0.558692, -0.789732, -0.253350,
		0.788594, 0.411221, 0.457182,
		40.781963, 48.107430, 25.277206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579136, 47.253242, 25.308899>,  <40.229946, 47.819572, 24.957178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579136, 47.253242, 25.308899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711868, 47.595314, 25.468174>,  <40.791508, 47.800556, 25.563738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711868, 47.595314, 25.468174>,  <40.579136, 47.253242, 25.308899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711868, 47.595314, 25.468174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146209, -0.370378, 0.917302,
		0.931939, -0.362610, 0.002131,
		0.331833, 0.855181, 0.398187,
		40.811417, 47.851868, 25.587629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153461, 47.105553, 25.710022>,  <40.579136, 47.253242, 25.308899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153461, 47.105553, 25.710022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 47.419941, 25.857674>,  <40.836037, 47.608574, 25.946264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 47.419941, 25.857674>,  <41.153461, 47.105553, 25.710022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955070, 47.419941, 25.857674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188084, -0.512252, 0.837987,
		0.847719, 0.346198, 0.401896,
		-0.495982, 0.785968, 0.369131,
		40.806274, 47.655731, 25.968412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369450, 47.282024, 26.382103>,  <41.153461, 47.105553, 25.710022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369450, 47.282024, 26.382103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994297, 47.418667, 26.357811>,  <40.769207, 47.500652, 26.343235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994297, 47.418667, 26.357811>,  <41.369450, 47.282024, 26.382103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994297, 47.418667, 26.357811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229583, -0.479765, 0.846828,
		0.260147, 0.808164, 0.528388,
		-0.937878, 0.341608, -0.060732,
		40.712933, 47.521149, 26.339592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216988, 47.413784, 27.141880>,  <41.369450, 47.282024, 26.382103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216988, 47.413784, 27.141880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935406, 47.334400, 26.869099>,  <40.766457, 47.286770, 26.705429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935406, 47.334400, 26.869099>,  <41.216988, 47.413784, 27.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935406, 47.334400, 26.869099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313255, -0.774978, 0.548891,
		-0.637433, 0.600019, 0.483380,
		-0.703954, -0.198460, -0.681955,
		40.724220, 47.274860, 26.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641048, 47.295872, 27.500715>,  <41.216988, 47.413784, 27.141880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641048, 47.295872, 27.500715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616707, 47.080482, 27.164537>,  <40.602100, 46.951248, 26.962831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616707, 47.080482, 27.164537>,  <40.641048, 47.295872, 27.500715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616707, 47.080482, 27.164537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063395, -0.838220, 0.541635,
		-0.996131, 0.086240, 0.016872,
		-0.060854, -0.538470, -0.840444,
		40.598450, 46.918941, 26.912405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157387, 46.805344, 27.622738>,  <40.641048, 47.295872, 27.500715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157387, 46.805344, 27.622738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342350, 46.627285, 27.316006>,  <40.453327, 46.520451, 27.131966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342350, 46.627285, 27.316006>,  <40.157387, 46.805344, 27.622738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342350, 46.627285, 27.316006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062276, -0.879014, 0.472711,
		-0.884480, -0.170828, -0.434180,
		0.462403, -0.445143, -0.766832,
		40.481071, 46.493744, 27.085957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726231, 46.329662, 27.524305>,  <40.157387, 46.805344, 27.622738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726231, 46.329662, 27.524305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052364, 46.212173, 27.324724>,  <40.248047, 46.141682, 27.204975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052364, 46.212173, 27.324724>,  <39.726231, 46.329662, 27.524305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052364, 46.212173, 27.324724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229449, -0.955127, 0.187310,
		-0.531580, -0.038237, -0.846145,
		0.815338, -0.293718, -0.498953,
		40.296967, 46.124058, 27.175037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521099, 45.716572, 27.176149>,  <39.726231, 46.329662, 27.524305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521099, 45.716572, 27.176149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917183, 45.716457, 27.231998>,  <40.154831, 45.716389, 27.265507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917183, 45.716457, 27.231998>,  <39.521099, 45.716572, 27.176149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917183, 45.716457, 27.231998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041556, -0.955274, 0.292788,
		0.133294, -0.295722, -0.945929,
		0.990205, -0.000282, 0.139622,
		40.214245, 45.716373, 27.273886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681469, 45.083939, 27.004242>,  <39.521099, 45.716572, 27.176149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681469, 45.083939, 27.004242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013145, 45.188816, 27.201706>,  <40.212151, 45.251743, 27.320185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013145, 45.188816, 27.201706>,  <39.681469, 45.083939, 27.004242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013145, 45.188816, 27.201706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080888, -0.930150, 0.358160,
		0.553085, -0.257051, -0.792478,
		0.829188, 0.262195, 0.493660,
		40.261902, 45.267475, 27.349804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115952, 44.514500, 26.891773>,  <39.681469, 45.083939, 27.004242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115952, 44.514500, 26.891773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260685, 44.698574, 27.216070>,  <40.347527, 44.809021, 27.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260685, 44.698574, 27.216070>,  <40.115952, 44.514500, 26.891773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260685, 44.698574, 27.216070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058870, -0.879212, 0.472780,
		0.930381, -0.123341, -0.345223,
		0.361837, 0.460189, 0.810740,
		40.369236, 44.836632, 27.459291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853386, 44.265148, 27.073689>,  <40.115952, 44.514500, 26.891773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853386, 44.265148, 27.073689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657368, 44.389080, 27.399599>,  <40.539757, 44.463440, 27.595144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657368, 44.389080, 27.399599>,  <40.853386, 44.265148, 27.073689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657368, 44.389080, 27.399599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128181, -0.898927, 0.418928,
		0.862221, 0.309733, 0.400801,
		-0.490046, 0.309833, 0.814775,
		40.510353, 44.482029, 27.644032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177017, 43.936085, 27.519466>,  <40.853386, 44.265148, 27.073689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177017, 43.936085, 27.519466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849766, 44.050602, 27.718946>,  <40.653416, 44.119312, 27.838634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849766, 44.050602, 27.718946>,  <41.177017, 43.936085, 27.519466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849766, 44.050602, 27.718946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006089, -0.871513, 0.490335,
		0.575006, 0.398119, 0.714751,
		-0.818127, 0.286298, 0.498701,
		40.604328, 44.136490, 27.868557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064724, 43.547058, 28.196733>,  <41.177017, 43.936085, 27.519466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064724, 43.547058, 28.196733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700043, 43.711266, 28.203285>,  <40.481236, 43.809792, 28.207216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700043, 43.711266, 28.203285>,  <41.064724, 43.547058, 28.196733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700043, 43.711266, 28.203285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284619, -0.659840, 0.695415,
		0.296293, 0.629350, 0.718421,
		-0.911703, 0.410523, 0.016381,
		40.426533, 43.834423, 28.208200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904156, 43.721535, 28.924711>,  <41.064724, 43.547058, 28.196733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904156, 43.721535, 28.924711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574322, 43.652393, 28.709236>,  <40.376423, 43.610909, 28.579950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574322, 43.652393, 28.709236>,  <40.904156, 43.721535, 28.924711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574322, 43.652393, 28.709236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234622, -0.761959, 0.603632,
		-0.514797, 0.624133, 0.587743,
		-0.824583, -0.172850, -0.538690,
		40.326946, 43.600540, 28.547628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443115, 43.556473, 29.454832>,  <40.904156, 43.721535, 28.924711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443115, 43.556473, 29.454832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266003, 43.427307, 29.120247>,  <40.159737, 43.349808, 28.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266003, 43.427307, 29.120247>,  <40.443115, 43.556473, 29.454832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266003, 43.427307, 29.120247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446320, -0.729732, 0.517966,
		-0.777653, 0.602676, 0.178990,
		-0.442781, -0.322911, -0.836465,
		40.133167, 43.330433, 28.869307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834316, 43.419537, 29.675442>,  <40.443115, 43.556473, 29.454832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834316, 43.419537, 29.675442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909374, 43.202724, 29.347786>,  <39.954407, 43.072636, 29.151192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909374, 43.202724, 29.347786>,  <39.834316, 43.419537, 29.675442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909374, 43.202724, 29.347786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323448, -0.821538, 0.469529,
		-0.927455, 0.176846, -0.329474,
		0.187641, -0.542034, -0.819140,
		39.965668, 43.040115, 29.102043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375401, 42.917744, 29.708721>,  <39.834316, 43.419537, 29.675442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375401, 42.917744, 29.708721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593998, 42.766468, 29.409836>,  <39.725155, 42.675705, 29.230505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593998, 42.766468, 29.409836>,  <39.375401, 42.917744, 29.708721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593998, 42.766468, 29.409836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143227, -0.921290, 0.361538,
		-0.825127, -0.090556, -0.557642,
		0.546490, -0.378185, -0.747212,
		39.757946, 42.653011, 29.185673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942364, 42.315399, 29.320919>,  <39.375401, 42.917744, 29.708721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942364, 42.315399, 29.320919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340786, 42.290157, 29.295950>,  <39.579838, 42.275013, 29.280968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340786, 42.290157, 29.295950>,  <38.942364, 42.315399, 29.320919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340786, 42.290157, 29.295950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018234, -0.833724, 0.551880,
		-0.086871, -0.548563, -0.831584,
		0.996052, -0.063105, -0.062424,
		39.639603, 42.271225, 29.277224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109375, 41.689835, 29.060402>,  <38.942364, 42.315399, 29.320919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109375, 41.689835, 29.060402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422482, 41.815403, 29.275335>,  <39.610348, 41.890743, 29.404295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422482, 41.815403, 29.275335>,  <39.109375, 41.689835, 29.060402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422482, 41.815403, 29.275335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107192, -0.782530, 0.613316,
		0.613011, -0.537683, -0.578891,
		0.782769, 0.313917, 0.537335,
		39.657310, 41.909576, 29.436535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428253, 41.065510, 29.167641>,  <39.109375, 41.689835, 29.060402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428253, 41.065510, 29.167641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610435, 41.317314, 29.419443>,  <39.719746, 41.468395, 29.570524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610435, 41.317314, 29.419443>,  <39.428253, 41.065510, 29.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610435, 41.317314, 29.419443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095633, -0.737610, 0.668421,
		0.885109, -0.244231, -0.396147,
		0.455451, 0.629510, 0.629508,
		39.747070, 41.506168, 29.608295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002308, 40.721142, 29.380035>,  <39.428253, 41.065510, 29.167641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002308, 40.721142, 29.380035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922470, 40.980465, 29.673935>,  <39.874565, 41.136059, 29.850275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922470, 40.980465, 29.673935>,  <40.002308, 40.721142, 29.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922470, 40.980465, 29.673935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051970, -0.741780, 0.668627,
		0.978499, 0.171642, 0.114365,
		-0.199598, 0.648307, 0.734751,
		39.862591, 41.174957, 29.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324966, 40.459450, 29.931311>,  <40.002308, 40.721142, 29.380035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324966, 40.459450, 29.931311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106316, 40.728142, 30.131300>,  <39.975124, 40.889359, 30.251293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106316, 40.728142, 30.131300>,  <40.324966, 40.459450, 29.931311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106316, 40.728142, 30.131300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074695, -0.555577, 0.828103,
		0.834039, 0.490008, 0.253517,
		-0.546626, 0.671734, 0.499974,
		39.942329, 40.929661, 30.281292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657322, 40.611755, 30.646507>,  <40.324966, 40.459450, 29.931311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657322, 40.611755, 30.646507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269173, 40.707661, 30.658432>,  <40.036282, 40.765205, 30.665586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269173, 40.707661, 30.658432>,  <40.657322, 40.611755, 30.646507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269173, 40.707661, 30.658432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108070, -0.541071, 0.834004,
		0.216095, 0.806073, 0.550953,
		-0.970373, 0.239766, 0.029811,
		39.978062, 40.779591, 30.667376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513069, 40.535027, 31.402254>,  <40.657322, 40.611755, 30.646507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513069, 40.535027, 31.402254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170223, 40.552605, 31.196953>,  <39.964516, 40.563152, 31.073772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170223, 40.552605, 31.196953>,  <40.513069, 40.535027, 31.402254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170223, 40.552605, 31.196953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465230, -0.493842, 0.734630,
		-0.221182, 0.868441, 0.443722,
		-0.857111, 0.043946, -0.513253,
		39.913090, 40.565788, 31.042976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958893, 40.633217, 31.873384>,  <40.513069, 40.535027, 31.402254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958893, 40.633217, 31.873384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759491, 40.475368, 31.564640>,  <39.639851, 40.380661, 31.379393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759491, 40.475368, 31.564640>,  <39.958893, 40.633217, 31.873384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759491, 40.475368, 31.564640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456421, -0.637502, 0.620702,
		-0.737004, 0.661716, 0.137684,
		-0.498502, -0.394618, -0.771863,
		39.609940, 40.356983, 31.333080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307903, 40.602787, 32.061180>,  <39.958893, 40.633217, 31.873384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307903, 40.602787, 32.061180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310284, 40.340813, 31.758919>,  <39.311714, 40.183628, 31.577560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310284, 40.340813, 31.758919>,  <39.307903, 40.602787, 32.061180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310284, 40.340813, 31.758919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491702, -0.659924, 0.568093,
		-0.870743, 0.368176, -0.325964,
		0.005953, -0.654940, -0.755657,
		39.312069, 40.144329, 31.532221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624313, 40.148781, 32.077206>,  <39.307903, 40.602787, 32.061180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624313, 40.148781, 32.077206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863213, 39.915588, 31.856869>,  <39.006554, 39.775673, 31.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863213, 39.915588, 31.856869>,  <38.624313, 40.148781, 32.077206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863213, 39.915588, 31.856869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308961, -0.801013, 0.512758,
		-0.740159, -0.136056, -0.658524,
		0.597250, -0.582981, -0.550841,
		39.042385, 39.740696, 31.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288345, 39.484821, 31.983089>,  <38.624313, 40.148781, 32.077206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288345, 39.484821, 31.983089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661819, 39.380905, 31.884508>,  <38.885902, 39.318554, 31.825359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661819, 39.380905, 31.884508>,  <38.288345, 39.484821, 31.983089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661819, 39.380905, 31.884508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125963, -0.882526, 0.453081,
		-0.335206, -0.391992, -0.856726,
		0.933686, -0.259791, -0.246451,
		38.941925, 39.302967, 31.810572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291294, 38.760555, 31.638504>,  <38.288345, 39.484821, 31.983089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291294, 38.760555, 31.638504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668362, 38.815071, 31.760357>,  <38.894604, 38.847782, 31.833469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668362, 38.815071, 31.760357>,  <38.291294, 38.760555, 31.638504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668362, 38.815071, 31.760357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012881, -0.897274, 0.441287,
		0.333482, -0.419911, -0.844076,
		0.942669, 0.136288, 0.304634,
		38.951160, 38.855957, 31.851748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724983, 38.212124, 31.439060>,  <38.291294, 38.760555, 31.638504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724983, 38.212124, 31.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916405, 38.377434, 31.748949>,  <39.031258, 38.476620, 31.934883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916405, 38.377434, 31.748949>,  <38.724983, 38.212124, 31.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916405, 38.377434, 31.748949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103016, -0.902643, 0.417879,
		0.871996, -0.120167, -0.474534,
		0.478551, 0.413273, 0.774722,
		39.059971, 38.501415, 31.981365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442383, 37.799732, 31.533478>,  <38.724983, 38.212124, 31.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442383, 37.799732, 31.533478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393097, 37.996464, 31.878248>,  <39.363525, 38.114502, 32.085110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393097, 37.996464, 31.878248>,  <39.442383, 37.799732, 31.533478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393097, 37.996464, 31.878248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107800, -0.856773, 0.504301,
		0.986508, 0.155052, 0.052545,
		-0.123212, 0.491832, 0.861928,
		39.356133, 38.144012, 32.136826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956085, 37.459301, 31.872616>,  <39.442383, 37.799732, 31.533478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956085, 37.459301, 31.872616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763794, 37.645596, 32.169800>,  <39.648418, 37.757370, 32.348110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763794, 37.645596, 32.169800>,  <39.956085, 37.459301, 31.872616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763794, 37.645596, 32.169800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138361, -0.796386, 0.588749,
		0.865884, 0.385827, 0.318407,
		-0.480730, 0.465733, 0.742961,
		39.619576, 37.785316, 32.392689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354828, 37.418213, 32.488422>,  <39.956085, 37.459301, 31.872616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354828, 37.418213, 32.488422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975037, 37.470142, 32.602715>,  <39.747162, 37.501301, 32.671291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975037, 37.470142, 32.602715>,  <40.354828, 37.418213, 32.488422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975037, 37.470142, 32.602715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086008, -0.767943, 0.634717,
		0.301825, 0.627224, 0.717978,
		-0.949476, 0.129821, 0.285731,
		39.690193, 37.509090, 32.688435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386616, 37.537712, 33.212433>,  <40.354828, 37.418213, 32.488422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386616, 37.537712, 33.212433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015194, 37.414093, 33.130177>,  <39.792343, 37.339924, 33.080822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015194, 37.414093, 33.130177>,  <40.386616, 37.537712, 33.212433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015194, 37.414093, 33.130177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053023, -0.658713, 0.750523,
		-0.367401, 0.685995, 0.628035,
		-0.928550, -0.309044, -0.205638,
		39.736629, 37.321381, 33.068485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085106, 37.568928, 33.794960>,  <40.386616, 37.537712, 33.212433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085106, 37.568928, 33.794960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882019, 37.302876, 33.575935>,  <39.760166, 37.143246, 33.444519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882019, 37.302876, 33.575935>,  <40.085106, 37.568928, 33.794960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882019, 37.302876, 33.575935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017575, -0.643443, 0.765292,
		-0.861344, 0.378929, 0.338378,
		-0.507719, -0.665126, -0.547566,
		39.729702, 37.103336, 33.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573383, 37.270329, 34.235203>,  <40.085106, 37.568928, 33.794960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573383, 37.270329, 34.235203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587360, 37.011223, 33.930786>,  <39.595749, 36.855759, 33.748135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587360, 37.011223, 33.930786>,  <39.573383, 37.270329, 34.235203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587360, 37.011223, 33.930786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088956, -0.756469, 0.647952,
		-0.995422, -0.090343, 0.031186,
		0.034947, -0.647760, -0.761043,
		39.597843, 36.816895, 33.702473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025166, 36.912365, 34.336334>,  <39.573383, 37.270329, 34.235203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025166, 36.912365, 34.336334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278515, 36.708088, 34.103771>,  <39.430527, 36.585522, 33.964233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278515, 36.708088, 34.103771>,  <39.025166, 36.912365, 34.336334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278515, 36.708088, 34.103771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041646, -0.772723, 0.633375,
		-0.772723, -0.376951, -0.510692,
		-0.633375, 0.510692, 0.581403,
		39.468529, 36.554882, 33.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852005, 36.238949, 34.490631>,  <39.025166, 36.912365, 34.336334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852005, 36.238949, 34.490631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194122, 36.200195, 34.287033>,  <39.399395, 36.176945, 34.164875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194122, 36.200195, 34.287033>,  <38.852005, 36.238949, 34.490631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194122, 36.200195, 34.287033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166585, -0.878788, 0.447193,
		-0.490626, -0.467275, -0.735487,
		0.855298, -0.096883, -0.508997,
		39.450710, 36.171131, 34.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891064, 35.558144, 34.266151>,  <38.852005, 36.238949, 34.490631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891064, 35.558144, 34.266151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269905, 35.686478, 34.263042>,  <39.497211, 35.763477, 34.261177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269905, 35.686478, 34.263042>,  <38.891064, 35.558144, 34.266151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269905, 35.686478, 34.263042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308921, -0.904845, 0.292955,
		0.086954, -0.279861, -0.956095,
		0.947104, 0.320832, -0.007775,
		39.554035, 35.782726, 34.260712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209148, 35.050587, 33.912128>,  <38.891064, 35.558144, 34.266151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209148, 35.050587, 33.912128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475800, 35.246620, 34.136780>,  <39.635792, 35.364239, 34.271568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475800, 35.246620, 34.136780>,  <39.209148, 35.050587, 33.912128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475800, 35.246620, 34.136780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284733, -0.863757, 0.415754,
		0.688860, -0.117241, -0.715350,
		0.666632, 0.490080, 0.561625,
		39.675789, 35.393642, 34.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789223, 34.644577, 34.014389>,  <39.209148, 35.050587, 33.912128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789223, 34.644577, 34.014389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820374, 34.899925, 34.320702>,  <39.839066, 35.053135, 34.504490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820374, 34.899925, 34.320702>,  <39.789223, 34.644577, 34.014389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820374, 34.899925, 34.320702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293485, -0.748758, 0.594330,
		0.952786, 0.178460, -0.245664,
		0.077879, 0.638368, 0.765782,
		39.843739, 35.091434, 34.550438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348305, 34.334381, 34.433025>,  <39.789223, 34.644577, 34.014389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348305, 34.334381, 34.433025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157200, 34.594357, 34.669441>,  <40.042538, 34.750343, 34.811291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157200, 34.594357, 34.669441>,  <40.348305, 34.334381, 34.433025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157200, 34.594357, 34.669441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014756, -0.678630, 0.734332,
		0.878366, 0.342114, 0.333813,
		-0.477761, 0.649938, 0.591037,
		40.013870, 34.789337, 34.846752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657085, 34.250591, 35.124367>,  <40.348305, 34.334381, 34.433025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657085, 34.250591, 35.124367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277359, 34.373478, 35.150936>,  <40.049522, 34.447212, 35.166878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277359, 34.373478, 35.150936>,  <40.657085, 34.250591, 35.124367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277359, 34.373478, 35.150936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183894, -0.714246, 0.675304,
		0.254912, 0.628862, 0.734542,
		-0.949317, 0.307221, 0.066426,
		39.992565, 34.465645, 35.170864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301296, 34.606918, 35.416721>,  <40.657085, 34.250591, 35.124367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301296, 34.606918, 35.416721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488350, 34.328060, 35.199356>,  <41.600582, 34.160744, 35.068935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488350, 34.328060, 35.199356>,  <41.301296, 34.606918, 35.416721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488350, 34.328060, 35.199356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355060, 0.711151, -0.606793,
		0.809477, 0.090810, 0.580086,
		0.467632, -0.697150, -0.543417,
		41.628639, 34.118916, 35.036331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091274, 34.758530, 35.340179>,  <41.301296, 34.606918, 35.416721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091274, 34.758530, 35.340179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016212, 34.522507, 35.026081>,  <41.971176, 34.380894, 34.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016212, 34.522507, 35.026081>,  <42.091274, 34.758530, 35.340179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016212, 34.522507, 35.026081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466431, 0.650033, -0.599915,
		0.864424, -0.478840, 0.153242,
		-0.187652, -0.590058, -0.785250,
		41.959915, 34.345490, 34.790504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615776, 34.816448, 34.940514>,  <42.091274, 34.758530, 35.340179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615776, 34.816448, 34.940514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370647, 34.646294, 34.674129>,  <42.223572, 34.544201, 34.514301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370647, 34.646294, 34.674129>,  <42.615776, 34.816448, 34.940514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370647, 34.646294, 34.674129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357210, 0.602606, -0.713630,
		0.704880, -0.675211, -0.217334,
		-0.612818, -0.425390, -0.665957,
		42.186802, 34.518677, 34.474342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028702, 34.726143, 34.369164>,  <42.615776, 34.816448, 34.940514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028702, 34.726143, 34.369164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647770, 34.712250, 34.247932>,  <42.419209, 34.703915, 34.175194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647770, 34.712250, 34.247932>,  <43.028702, 34.726143, 34.369164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647770, 34.712250, 34.247932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237868, 0.537483, -0.809031,
		0.191002, -0.842559, -0.503600,
		-0.952333, -0.034736, -0.303078,
		42.362072, 34.701828, 34.157009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097054, 34.529808, 33.664162>,  <43.028702, 34.726143, 34.369164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097054, 34.529808, 33.664162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726139, 34.679543, 33.662781>,  <42.503590, 34.769382, 33.661953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726139, 34.679543, 33.662781>,  <43.097054, 34.529808, 33.664162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726139, 34.679543, 33.662781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253845, 0.621988, -0.740739,
		-0.275136, -0.687754, -0.671784,
		-0.927288, 0.374333, -0.003452,
		42.447952, 34.791843, 33.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882004, 34.597767, 33.022530>,  <43.097054, 34.529808, 33.664162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882004, 34.597767, 33.022530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653210, 34.882000, 33.186436>,  <42.515934, 35.052540, 33.284779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653210, 34.882000, 33.186436>,  <42.882004, 34.597767, 33.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653210, 34.882000, 33.186436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197836, 0.604314, -0.771793,
		-0.796050, -0.360386, -0.486237,
		-0.571983, 0.710581, 0.409767,
		42.481613, 35.095173, 33.309364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358803, 34.683144, 32.501759>,  <42.882004, 34.597767, 33.022530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358803, 34.683144, 32.501759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384754, 35.013371, 32.725983>,  <42.400326, 35.211506, 32.860516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384754, 35.013371, 32.725983>,  <42.358803, 34.683144, 32.501759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384754, 35.013371, 32.725983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002119, 0.561853, -0.827235,
		-0.997891, 0.052483, 0.038202,
		0.064880, 0.825571, 0.560556,
		42.404217, 35.261044, 32.894150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963238, 35.257801, 32.173943>,  <42.358803, 34.683144, 32.501759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963238, 35.257801, 32.173943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150787, 35.463203, 32.461407>,  <42.263317, 35.586445, 32.633884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150787, 35.463203, 32.461407>,  <41.963238, 35.257801, 32.173943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150787, 35.463203, 32.461407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161786, 0.749941, -0.641415,
		-0.868320, 0.417013, 0.268552,
		0.468877, 0.513506, 0.718656,
		42.291451, 35.617256, 32.677002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676182, 35.858017, 32.233433>,  <41.963238, 35.257801, 32.173943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676182, 35.858017, 32.233433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051598, 35.926926, 32.353073>,  <42.276848, 35.968269, 32.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051598, 35.926926, 32.353073>,  <41.676182, 35.858017, 32.233433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051598, 35.926926, 32.353073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075353, 0.743389, -0.664602,
		-0.336839, 0.646295, 0.684721,
		0.938542, 0.172268, 0.299103,
		42.333160, 35.978607, 32.442802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792557, 36.571144, 32.317272>,  <41.676182, 35.858017, 32.233433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792557, 36.571144, 32.317272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161697, 36.423733, 32.272488>,  <42.383183, 36.335285, 32.245617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161697, 36.423733, 32.272488>,  <41.792557, 36.571144, 32.317272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161697, 36.423733, 32.272488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187231, 0.683277, -0.705745,
		0.336587, 0.630334, 0.699562,
		0.922851, -0.368524, -0.111964,
		42.438553, 36.313175, 32.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221935, 37.215683, 32.403938>,  <41.792557, 36.571144, 32.317272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221935, 37.215683, 32.403938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429680, 36.950405, 32.188370>,  <42.554325, 36.791237, 32.059029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429680, 36.950405, 32.188370>,  <42.221935, 37.215683, 32.403938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429680, 36.950405, 32.188370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250030, 0.720974, -0.646283,
		0.817160, 0.200907, 0.540264,
		0.519359, -0.663199, -0.538918,
		42.585487, 36.751446, 32.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821793, 37.577904, 32.205517>,  <42.221935, 37.215683, 32.403938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821793, 37.577904, 32.205517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870075, 37.254719, 31.974823>,  <42.899044, 37.060806, 31.836405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870075, 37.254719, 31.974823>,  <42.821793, 37.577904, 32.205517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870075, 37.254719, 31.974823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432418, 0.565764, -0.702087,
		0.893557, -0.164647, 0.417668,
		0.120704, -0.807962, -0.576739,
		42.906288, 37.012329, 31.801802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397968, 37.672630, 31.798880>,  <42.821793, 37.577904, 32.205517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397968, 37.672630, 31.798880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216152, 37.393642, 31.577276>,  <43.107063, 37.226250, 31.444313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216152, 37.393642, 31.577276>,  <43.397968, 37.672630, 31.798880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216152, 37.393642, 31.577276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100460, 0.577865, -0.809925,
		0.885043, -0.423800, -0.192595,
		-0.454541, -0.697470, -0.554011,
		43.079788, 37.184402, 31.411074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816578, 37.719917, 31.148489>,  <43.397968, 37.672630, 31.798880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816578, 37.719917, 31.148489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443054, 37.584335, 31.102705>,  <43.218941, 37.502987, 31.075233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443054, 37.584335, 31.102705>,  <43.816578, 37.719917, 31.148489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443054, 37.584335, 31.102705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131336, 0.622389, -0.771611,
		0.332782, -0.705507, -0.625712,
		-0.933813, -0.338957, -0.114461,
		43.162910, 37.482647, 31.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735744, 37.863914, 30.498814>,  <43.816578, 37.719917, 31.148489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735744, 37.863914, 30.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357231, 37.785332, 30.601536>,  <43.130123, 37.738182, 30.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357231, 37.785332, 30.601536>,  <43.735744, 37.863914, 30.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357231, 37.785332, 30.601536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318516, 0.702981, -0.635897,
		-0.055606, -0.683538, -0.727794,
		-0.946285, -0.196454, 0.256808,
		43.073345, 37.726395, 30.678577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410198, 37.864304, 29.846525>,  <43.735744, 37.863914, 30.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410198, 37.864304, 29.846525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142242, 37.908558, 30.140194>,  <42.981468, 37.935108, 30.316395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142242, 37.908558, 30.140194>,  <43.410198, 37.864304, 29.846525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142242, 37.908558, 30.140194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318772, 0.850201, -0.418978,
		-0.670545, -0.514703, -0.534276,
		-0.669891, 0.110631, 0.734171,
		42.941277, 37.941746, 30.360445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771130, 37.966663, 29.454477>,  <43.410198, 37.864304, 29.846525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771130, 37.966663, 29.454477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762222, 38.114147, 29.826189>,  <42.756878, 38.202637, 30.049215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762222, 38.114147, 29.826189>,  <42.771130, 37.966663, 29.454477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762222, 38.114147, 29.826189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435182, 0.833252, -0.341039,
		-0.900067, -0.411998, 0.141903,
		-0.022266, 0.368712, 0.929277,
		42.755543, 38.224762, 30.104973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032585, 38.294563, 29.512186>,  <42.771130, 37.966663, 29.454477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032585, 38.294563, 29.512186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241768, 38.441315, 29.819931>,  <42.367275, 38.529366, 30.004578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241768, 38.441315, 29.819931>,  <42.032585, 38.294563, 29.512186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241768, 38.441315, 29.819931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283404, 0.926113, -0.248992,
		-0.803866, -0.087829, 0.588290,
		0.522954, 0.366879, 0.769362,
		42.398655, 38.551380, 30.050739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587769, 38.759644, 29.911674>,  <42.032585, 38.294563, 29.512186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587769, 38.759644, 29.911674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 38.883347, 29.989897>,  <42.183388, 38.957569, 30.036829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960030, 38.883347, 29.989897>,  <41.587769, 38.759644, 29.911674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960030, 38.883347, 29.989897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241346, 0.920533, -0.307197,
		-0.275017, 0.238698, 0.931337,
		0.930654, 0.309259, 0.195554,
		42.239227, 38.976124, 30.048563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582306, 39.475208, 30.329685>,  <41.587769, 38.759644, 29.911674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582306, 39.475208, 30.329685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940445, 39.432770, 30.156670>,  <42.155331, 39.407307, 30.052860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940445, 39.432770, 30.156670>,  <41.582306, 39.475208, 30.329685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940445, 39.432770, 30.156670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153742, 0.837879, -0.523758,
		0.417983, 0.535447, 0.733884,
		0.895351, -0.106093, -0.432540,
		42.209049, 39.400944, 30.026907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792625, 40.184658, 30.376358>,  <41.582306, 39.475208, 30.329685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792625, 40.184658, 30.376358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039280, 40.010643, 30.113909>,  <42.187275, 39.906235, 29.956440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039280, 40.010643, 30.113909>,  <41.792625, 40.184658, 30.376358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039280, 40.010643, 30.113909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194088, 0.723701, -0.662258,
		0.762944, 0.535721, 0.361827,
		0.616641, -0.435040, -0.656121,
		42.224274, 39.880131, 29.917072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972507, 40.673157, 30.116350>,  <41.792625, 40.184658, 30.376358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972507, 40.673157, 30.116350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061302, 40.403542, 29.834530>,  <42.114578, 40.241772, 29.665438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061302, 40.403542, 29.834530>,  <41.972507, 40.673157, 30.116350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061302, 40.403542, 29.834530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215719, 0.670723, -0.709646,
		0.950888, 0.309516, 0.003487,
		0.221986, -0.674041, -0.704550,
		42.127899, 40.201328, 29.623165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404255, 40.948067, 29.569101>,  <41.972507, 40.673157, 30.116350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404255, 40.948067, 29.569101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267776, 40.627602, 29.372438>,  <42.185890, 40.435322, 29.254440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267776, 40.627602, 29.372438>,  <42.404255, 40.948067, 29.569101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267776, 40.627602, 29.372438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051487, 0.538187, -0.841251,
		0.938580, -0.261720, -0.224878,
		-0.341199, -0.801160, -0.491657,
		42.165417, 40.387253, 29.224941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870026, 40.995636, 28.870419>,  <42.404255, 40.948067, 29.569101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870026, 40.995636, 28.870419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537060, 40.779808, 28.819889>,  <42.337280, 40.650311, 28.789572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537060, 40.779808, 28.819889>,  <42.870026, 40.995636, 28.870419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537060, 40.779808, 28.819889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159345, 0.451387, -0.877986,
		0.530753, -0.710717, -0.461717,
		-0.832412, -0.539566, -0.126326,
		42.287334, 40.617939, 28.781992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848118, 40.657722, 28.178318>,  <42.870026, 40.995636, 28.870419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848118, 40.657722, 28.178318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462353, 40.677330, 28.282248>,  <42.230896, 40.689095, 28.344604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462353, 40.677330, 28.282248>,  <42.848118, 40.657722, 28.178318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462353, 40.677330, 28.282248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236942, 0.275882, -0.931530,
		-0.117348, -0.959940, -0.254448,
		-0.964411, 0.049024, 0.259824,
		42.173031, 40.692036, 28.360195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405983, 40.596935, 27.532679>,  <42.848118, 40.657722, 28.178318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405983, 40.596935, 27.532679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134022, 40.722298, 27.797861>,  <41.970844, 40.797516, 27.956970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134022, 40.722298, 27.797861>,  <42.405983, 40.596935, 27.532679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134022, 40.722298, 27.797861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507010, 0.452247, -0.733766,
		-0.529787, -0.835014, -0.148583,
		-0.679901, 0.313407, 0.662956,
		41.930050, 40.816319, 27.996748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780807, 40.441578, 27.265528>,  <42.405983, 40.596935, 27.532679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780807, 40.441578, 27.265528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700542, 40.720497, 27.540775>,  <41.652386, 40.887848, 27.705925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700542, 40.720497, 27.540775>,  <41.780807, 40.441578, 27.265528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700542, 40.720497, 27.540775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522849, 0.517780, -0.677150,
		-0.828471, -0.495660, 0.260685,
		-0.200658, 0.697299, 0.688121,
		41.640347, 40.929688, 27.747211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063568, 40.470703, 27.212629>,  <41.780807, 40.441578, 27.265528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063568, 40.470703, 27.212629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211231, 40.807922, 27.369081>,  <41.299831, 41.010254, 27.462954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211231, 40.807922, 27.369081>,  <41.063568, 40.470703, 27.212629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211231, 40.807922, 27.369081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393286, 0.523029, -0.756153,
		-0.842049, 0.125314, 0.524642,
		0.369160, 0.843052, 0.391132,
		41.321980, 41.060837, 27.486422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504822, 40.737503, 27.337479>,  <41.063568, 40.470703, 27.212629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504822, 40.737503, 27.337479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780052, 41.023357, 27.287142>,  <40.945190, 41.194870, 27.256941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780052, 41.023357, 27.287142>,  <40.504822, 40.737503, 27.337479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780052, 41.023357, 27.287142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586613, 0.445745, -0.676163,
		-0.427121, 0.539074, 0.725925,
		0.688079, 0.714640, -0.125841,
		40.986477, 41.237751, 27.249390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145271, 41.352089, 27.233459>,  <40.504822, 40.737503, 27.337479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145271, 41.352089, 27.233459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512241, 41.406647, 27.083942>,  <40.732426, 41.439381, 26.994232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512241, 41.406647, 27.083942>,  <40.145271, 41.352089, 27.233459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512241, 41.406647, 27.083942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395578, 0.413974, -0.819843,
		0.042921, 0.900012, 0.433746,
		0.917429, 0.136392, -0.373793,
		40.787472, 41.447563, 26.971804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071236, 41.986435, 26.895807>,  <40.145271, 41.352089, 27.233459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071236, 41.986435, 26.895807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413979, 41.854832, 26.737034>,  <40.619625, 41.775871, 26.641769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413979, 41.854832, 26.737034>,  <40.071236, 41.986435, 26.895807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413979, 41.854832, 26.737034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102643, 0.645631, -0.756720,
		0.505239, 0.689141, 0.519441,
		0.856854, -0.329007, -0.396933,
		40.671036, 41.756130, 26.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421307, 42.531574, 26.731182>,  <40.071236, 41.986435, 26.895807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421307, 42.531574, 26.731182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565502, 42.250656, 26.485638>,  <40.652020, 42.082104, 26.338310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565502, 42.250656, 26.485638>,  <40.421307, 42.531574, 26.731182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565502, 42.250656, 26.485638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033624, 0.647901, -0.760982,
		0.932156, 0.294969, 0.209950,
		0.360493, -0.702295, -0.613863,
		40.673649, 42.039967, 26.301479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892483, 42.967575, 26.282223>,  <40.421307, 42.531574, 26.731182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892483, 42.967575, 26.282223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821384, 42.628326, 26.082586>,  <40.778725, 42.424778, 25.962805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821384, 42.628326, 26.082586>,  <40.892483, 42.967575, 26.282223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821384, 42.628326, 26.082586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158196, 0.475944, -0.865131,
		0.971278, -0.232726, 0.049573,
		-0.177745, -0.848125, -0.499090,
		40.768063, 42.373890, 25.932859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388641, 42.979500, 25.642984>,  <40.892483, 42.967575, 26.282223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388641, 42.979500, 25.642984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125168, 42.697227, 25.538565>,  <40.967083, 42.527863, 25.475912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125168, 42.697227, 25.538565>,  <41.388641, 42.979500, 25.642984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125168, 42.697227, 25.538565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033921, 0.374444, -0.926629,
		0.751654, -0.601501, -0.270578,
		-0.658684, -0.705683, -0.261049,
		40.927563, 42.485523, 25.460251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613491, 42.726280, 25.055862>,  <41.388641, 42.979500, 25.642984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613491, 42.726280, 25.055862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222107, 42.644268, 25.046328>,  <40.987274, 42.595058, 25.040607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222107, 42.644268, 25.046328>,  <41.613491, 42.726280, 25.055862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222107, 42.644268, 25.046328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041654, 0.309240, -0.950071,
		0.202166, -0.928619, -0.311121,
		-0.978465, -0.205032, -0.023837,
		40.928566, 42.582760, 25.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528790, 42.310215, 24.498972>,  <41.613491, 42.726280, 25.055862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528790, 42.310215, 24.498972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160648, 42.453018, 24.562845>,  <40.939766, 42.538700, 24.601170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160648, 42.453018, 24.562845>,  <41.528790, 42.310215, 24.498972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160648, 42.453018, 24.562845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091749, 0.199805, -0.975531,
		-0.380179, -0.912481, -0.151135,
		-0.920351, 0.357010, 0.159681,
		40.884544, 42.560120, 24.610750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069824, 41.954910, 24.051743>,  <41.528790, 42.310215, 24.498972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069824, 41.954910, 24.051743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868279, 42.288715, 24.140926>,  <40.747353, 42.488998, 24.194437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868279, 42.288715, 24.140926>,  <41.069824, 41.954910, 24.051743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868279, 42.288715, 24.140926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031515, 0.240186, -0.970215,
		-0.863209, -0.495881, -0.094721,
		-0.503862, 0.834514, 0.222959,
		40.717121, 42.539070, 24.207813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518673, 41.891090, 23.703381>,  <41.069824, 41.954910, 24.051743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518673, 41.891090, 23.703381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615162, 42.270218, 23.786764>,  <40.673054, 42.497692, 23.836794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615162, 42.270218, 23.786764>,  <40.518673, 41.891090, 23.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615162, 42.270218, 23.786764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222159, 0.155165, -0.962585,
		-0.944699, 0.278509, -0.173137,
		0.241224, 0.947817, 0.208458,
		40.687531, 42.554562, 23.849302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118664, 41.940079, 23.038334>,  <40.518673, 41.891090, 23.703381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118664, 41.940079, 23.038334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393486, 41.882137, 22.753527>,  <40.558380, 41.847374, 22.582642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393486, 41.882137, 22.753527>,  <40.118664, 41.940079, 23.038334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393486, 41.882137, 22.753527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068102, -0.962777, 0.261576,
		-0.723403, -0.228208, -0.651620,
		0.687059, -0.144849, -0.712018,
		40.599602, 41.838684, 22.539921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779156, 41.417702, 22.581419>,  <40.118664, 41.940079, 23.038334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779156, 41.417702, 22.581419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173416, 41.403786, 22.515343>,  <40.409973, 41.395435, 22.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173416, 41.403786, 22.515343>,  <39.779156, 41.417702, 22.581419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173416, 41.403786, 22.515343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019424, -0.948670, 0.315672,
		-0.167692, -0.314350, -0.934379,
		0.985648, -0.034787, -0.165190,
		40.469112, 41.393349, 22.465786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016552, 40.676472, 22.485004>,  <39.779156, 41.417702, 22.581419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016552, 40.676472, 22.485004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365307, 40.859772, 22.554081>,  <40.574558, 40.969753, 22.595526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365307, 40.859772, 22.554081>,  <40.016552, 40.676472, 22.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365307, 40.859772, 22.554081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283858, -0.760266, 0.584311,
		0.399053, -0.460432, -0.792943,
		0.871884, 0.458254, 0.172689,
		40.626873, 40.997250, 22.605888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478157, 40.111435, 22.389874>,  <40.016552, 40.676472, 22.485004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478157, 40.111435, 22.389874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645691, 40.404881, 22.603931>,  <40.746212, 40.580948, 22.732367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645691, 40.404881, 22.603931>,  <40.478157, 40.111435, 22.389874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645691, 40.404881, 22.603931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351750, -0.674392, 0.649205,
		0.837167, -0.083673, -0.540510,
		0.418836, 0.733618, 0.535146,
		40.771343, 40.624966, 22.764475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147160, 39.932018, 22.431065>,  <40.478157, 40.111435, 22.389874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147160, 39.932018, 22.431065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112125, 40.196690, 22.728926>,  <41.091106, 40.355492, 22.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112125, 40.196690, 22.728926>,  <41.147160, 39.932018, 22.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112125, 40.196690, 22.728926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555169, -0.588249, 0.588006,
		0.827113, 0.464908, -0.315823,
		-0.087586, 0.661682, 0.744651,
		41.085850, 40.395195, 22.952320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903603, 40.083664, 22.606165>,  <41.147160, 39.932018, 22.431065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903603, 40.083664, 22.606165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662090, 40.139755, 22.920052>,  <41.517181, 40.173412, 23.108383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662090, 40.139755, 22.920052>,  <41.903603, 40.083664, 22.606165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662090, 40.139755, 22.920052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644829, -0.492832, 0.584220,
		0.468659, 0.858750, 0.207139,
		-0.603784, 0.140231, 0.784717,
		41.480957, 40.181824, 23.155466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473553, 39.995289, 23.151117>,  <41.903603, 40.083664, 22.606165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473553, 39.995289, 23.151117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118641, 40.014420, 23.334614>,  <41.905693, 40.025898, 23.444712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118641, 40.014420, 23.334614>,  <42.473553, 39.995289, 23.151117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118641, 40.014420, 23.334614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409501, -0.375977, 0.831234,
		0.212229, 0.925394, 0.314013,
		-0.887281, 0.047824, 0.458743,
		41.852455, 40.028767, 23.472237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655872, 40.293957, 23.717030>,  <42.473553, 39.995289, 23.151117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655872, 40.293957, 23.717030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307392, 40.111271, 23.789055>,  <42.098305, 40.001659, 23.832270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307392, 40.111271, 23.789055>,  <42.655872, 40.293957, 23.717030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307392, 40.111271, 23.789055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368145, -0.365128, 0.855074,
		-0.324779, 0.811229, 0.486236,
		-0.871199, -0.456715, 0.180065,
		42.046032, 39.974255, 23.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472130, 40.484352, 24.320650>,  <42.655872, 40.293957, 23.717030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472130, 40.484352, 24.320650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279114, 40.138824, 24.262720>,  <42.163303, 39.931507, 24.227962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279114, 40.138824, 24.262720>,  <42.472130, 40.484352, 24.320650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279114, 40.138824, 24.262720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293010, -0.315025, 0.902720,
		-0.825409, 0.393163, 0.405120,
		-0.482539, -0.863818, -0.144824,
		42.134354, 39.879681, 24.219273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088909, 40.400162, 24.958843>,  <42.472130, 40.484352, 24.320650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088909, 40.400162, 24.958843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164253, 40.047749, 24.785269>,  <42.209461, 39.836300, 24.681124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164253, 40.047749, 24.785269>,  <42.088909, 40.400162, 24.958843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164253, 40.047749, 24.785269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291898, -0.371653, 0.881289,
		-0.937718, -0.292667, 0.187166,
		0.188364, -0.881034, -0.433934,
		42.220764, 39.783440, 24.655088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903500, 39.996265, 25.460308>,  <42.088909, 40.400162, 24.958843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903500, 39.996265, 25.460308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060886, 39.705235, 25.235519>,  <42.155319, 39.530617, 25.100647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060886, 39.705235, 25.235519>,  <41.903500, 39.996265, 25.460308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060886, 39.705235, 25.235519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252229, -0.502388, 0.827035,
		-0.884061, -0.467157, -0.014156,
		0.393467, -0.727579, -0.561972,
		42.178928, 39.486961, 25.066927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718067, 39.373554, 25.883078>,  <41.903500, 39.996265, 25.460308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718067, 39.373554, 25.883078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981922, 39.237930, 25.614773>,  <42.140236, 39.156555, 25.453789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981922, 39.237930, 25.614773>,  <41.718067, 39.373554, 25.883078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981922, 39.237930, 25.614773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266797, -0.728708, 0.630717,
		-0.702636, -0.595002, -0.390225,
		0.659638, -0.339054, -0.670761,
		42.179813, 39.136211, 25.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656425, 38.663494, 25.711353>,  <41.718067, 39.373554, 25.883078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656425, 38.663494, 25.711353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040802, 38.759739, 25.656645>,  <42.271427, 38.817486, 25.623819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040802, 38.759739, 25.656645>,  <41.656425, 38.663494, 25.711353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040802, 38.759739, 25.656645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270882, -0.716261, 0.643113,
		0.056776, -0.655040, -0.753458,
		0.960937, 0.240611, -0.136772,
		42.329082, 38.831921, 25.615614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124439, 37.947613, 25.525061>,  <41.656425, 38.663494, 25.711353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124439, 37.947613, 25.525061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363762, 38.236820, 25.663208>,  <42.507355, 38.410343, 25.746098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363762, 38.236820, 25.663208>,  <42.124439, 37.947613, 25.525061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363762, 38.236820, 25.663208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359777, -0.627543, 0.690471,
		0.715956, -0.288855, -0.635586,
		0.598303, 0.723016, 0.345371,
		42.543255, 38.453724, 25.766819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802174, 37.595470, 25.710861>,  <42.124439, 37.947613, 25.525061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802174, 37.595470, 25.710861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785126, 37.945679, 25.903383>,  <42.774895, 38.155804, 26.018896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785126, 37.945679, 25.903383>,  <42.802174, 37.595470, 25.710861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785126, 37.945679, 25.903383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359286, -0.436082, 0.825074,
		0.932254, 0.208094, -0.295973,
		-0.042624, 0.875517, 0.481304,
		42.772339, 38.208332, 26.047775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317627, 37.542751, 26.099821>,  <42.802174, 37.595470, 25.710861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317627, 37.542751, 26.099821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128479, 37.838551, 26.291458>,  <43.014988, 38.016029, 26.406441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128479, 37.838551, 26.291458>,  <43.317627, 37.542751, 26.099821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128479, 37.838551, 26.291458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260343, -0.402189, 0.877762,
		0.841792, 0.539797, -0.002340,
		-0.472872, 0.739502, 0.479092,
		42.986618, 38.060402, 26.435186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682804, 37.797558, 26.642197>,  <43.317627, 37.542751, 26.099821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682804, 37.797558, 26.642197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325680, 37.915546, 26.778360>,  <43.111404, 37.986340, 26.860058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.325680, 37.915546, 26.778360>,  <43.682804, 37.797558, 26.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325680, 37.915546, 26.778360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203883, -0.409240, 0.889356,
		0.401646, 0.863431, 0.305234,
		-0.892811, 0.294974, 0.340408,
		43.057835, 38.004040, 26.880484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784672, 38.140900, 27.291252>,  <43.682804, 37.797558, 26.642197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784672, 38.140900, 27.291252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413330, 37.993305, 27.273331>,  <43.190525, 37.904751, 27.262577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413330, 37.993305, 27.273331>,  <43.784672, 38.140900, 27.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413330, 37.993305, 27.273331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146572, -0.474185, 0.868139,
		-0.341574, 0.799374, 0.494295,
		-0.928355, -0.368984, -0.044804,
		43.134823, 37.882610, 27.259890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591156, 38.083466, 27.904354>,  <43.784672, 38.140900, 27.291252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591156, 38.083466, 27.904354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328770, 37.842827, 27.722019>,  <43.171337, 37.698444, 27.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328770, 37.842827, 27.722019>,  <43.591156, 38.083466, 27.904354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328770, 37.842827, 27.722019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180650, -0.461240, 0.868690,
		-0.732853, 0.652179, 0.193880,
		-0.655967, -0.601598, -0.455837,
		43.131981, 37.662346, 27.585268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081631, 38.013226, 28.423149>,  <43.591156, 38.083466, 27.904354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081631, 38.013226, 28.423149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030079, 37.705673, 28.172640>,  <42.999149, 37.521141, 28.022333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030079, 37.705673, 28.172640>,  <43.081631, 38.013226, 28.423149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030079, 37.705673, 28.172640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107810, -0.616934, 0.779595,
		-0.985783, 0.167989, -0.003386,
		-0.128875, -0.768877, -0.626274,
		42.991417, 37.475010, 27.984758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656605, 37.572662, 28.824526>,  <43.081631, 38.013226, 28.423149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656605, 37.572662, 28.824526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789867, 37.327400, 28.538017>,  <42.869827, 37.180244, 28.366112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789867, 37.327400, 28.538017>,  <42.656605, 37.572662, 28.824526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789867, 37.327400, 28.538017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002247, -0.759152, 0.650909,
		-0.942868, -0.218464, -0.251540,
		0.333158, -0.613156, -0.716272,
		42.889816, 37.143452, 28.323135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343090, 36.984882, 28.944902>,  <42.656605, 37.572662, 28.824526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343090, 36.984882, 28.944902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630451, 36.843601, 28.705187>,  <42.802868, 36.758835, 28.561357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630451, 36.843601, 28.705187>,  <42.343090, 36.984882, 28.944902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630451, 36.843601, 28.705187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096783, -0.802381, 0.588913,
		-0.688863, -0.481077, -0.542248,
		0.718402, -0.353200, -0.599290,
		42.845970, 36.737640, 28.525400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124638, 36.286385, 28.863909>,  <42.343090, 36.984882, 28.944902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124638, 36.286385, 28.863909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514439, 36.327824, 28.784302>,  <42.748322, 36.352688, 28.736538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514439, 36.327824, 28.784302>,  <42.124638, 36.286385, 28.863909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514439, 36.327824, 28.784302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214466, -0.690734, 0.690573,
		-0.065924, -0.715648, -0.695343,
		0.974504, 0.103602, -0.199018,
		42.806789, 36.358906, 28.724596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388023, 35.602272, 28.773987>,  <42.124638, 36.286385, 28.863909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388023, 35.602272, 28.773987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708328, 35.831371, 28.844110>,  <42.900513, 35.968830, 28.886185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708328, 35.831371, 28.844110>,  <42.388023, 35.602272, 28.773987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708328, 35.831371, 28.844110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383345, -0.714935, 0.584735,
		0.460239, -0.401033, -0.792056,
		0.800766, 0.572748, 0.175307,
		42.948559, 36.003197, 28.896702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948097, 35.064663, 28.779299>,  <42.388023, 35.602272, 28.773987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948097, 35.064663, 28.779299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078320, 35.382774, 28.983866>,  <43.156452, 35.573639, 29.106606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078320, 35.382774, 28.983866>,  <42.948097, 35.064663, 28.779299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078320, 35.382774, 28.983866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168552, -0.581033, 0.796235,
		0.930377, -0.173022, -0.323207,
		0.325560, 0.795276, 0.511417,
		43.175987, 35.621357, 29.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551033, 34.863338, 28.873423>,  <42.948097, 35.064663, 28.779299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551033, 34.863338, 28.873423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468342, 35.143890, 29.146284>,  <43.418728, 35.312222, 29.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468342, 35.143890, 29.146284>,  <43.551033, 34.863338, 28.873423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468342, 35.143890, 29.146284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277692, -0.626479, 0.728293,
		0.938163, 0.339989, -0.065254,
		-0.206732, 0.701378, 0.682152,
		43.406322, 35.354305, 29.350929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113373, 34.929066, 29.230940>,  <43.551033, 34.863338, 28.873423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113373, 34.929066, 29.230940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811451, 35.052181, 29.462641>,  <43.630299, 35.126049, 29.601662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811451, 35.052181, 29.462641>,  <44.113373, 34.929066, 29.230940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811451, 35.052181, 29.462641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225967, -0.707016, 0.670124,
		0.615797, 0.636707, 0.464111,
		-0.754807, 0.307787, 0.579253,
		43.585011, 35.144516, 29.636417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356785, 34.871696, 29.881445>,  <44.113373, 34.929066, 29.230940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356785, 34.871696, 29.881445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963234, 34.872757, 29.952976>,  <43.727104, 34.873394, 29.995895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963234, 34.872757, 29.952976>,  <44.356785, 34.871696, 29.881445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963234, 34.872757, 29.952976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129163, -0.681079, 0.720727,
		0.123709, 0.732205, 0.669755,
		-0.983877, 0.002653, 0.178829,
		43.668072, 34.873554, 30.006624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342266, 34.643257, 30.483513>,  <44.356785, 34.871696, 29.881445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342266, 34.643257, 30.483513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950638, 34.597832, 30.415947>,  <43.715660, 34.570576, 30.375408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950638, 34.597832, 30.415947>,  <44.342266, 34.643257, 30.483513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950638, 34.597832, 30.415947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086875, -0.517326, 0.851368,
		-0.184071, 0.848220, 0.496630,
		-0.979066, -0.113568, -0.168914,
		43.656918, 34.563763, 30.365273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052616, 34.672737, 31.097696>,  <44.342266, 34.643257, 30.483513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052616, 34.672737, 31.097696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788803, 34.479298, 30.867514>,  <43.630516, 34.363235, 30.729404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788803, 34.479298, 30.867514>,  <44.052616, 34.672737, 31.097696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788803, 34.479298, 30.867514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014312, -0.757346, 0.652857,
		-0.751538, 0.438817, 0.492575,
		-0.659534, -0.483597, -0.575455,
		43.590942, 34.334217, 30.694878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494427, 34.520100, 31.548658>,  <44.052616, 34.672737, 31.097696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494427, 34.520100, 31.548658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536591, 34.278282, 31.232830>,  <43.561890, 34.133194, 31.043333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536591, 34.278282, 31.232830>,  <43.494427, 34.520100, 31.548658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536591, 34.278282, 31.232830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012227, -0.793145, 0.608909,
		-0.994354, -0.073838, -0.076212,
		0.105408, -0.604539, -0.789570,
		43.568214, 34.096920, 30.995958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186798, 33.916660, 31.848070>,  <43.494427, 34.520100, 31.548658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186798, 33.916660, 31.848070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362377, 33.752117, 31.528545>,  <43.467724, 33.653389, 31.336830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362377, 33.752117, 31.528545>,  <43.186798, 33.916660, 31.848070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362377, 33.752117, 31.528545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036146, -0.896406, 0.441758,
		-0.897767, -0.165051, -0.408376,
		0.438984, -0.411357, -0.798798,
		43.494064, 33.628708, 31.288902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013149, 33.211948, 31.806488>,  <43.186798, 33.916660, 31.848070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013149, 33.211948, 31.806488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332634, 33.219021, 31.565907>,  <43.524326, 33.223263, 31.421558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332634, 33.219021, 31.565907>,  <43.013149, 33.211948, 31.806488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332634, 33.219021, 31.565907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159148, -0.970178, 0.182827,
		-0.580285, -0.241747, -0.777707,
		0.798712, 0.017679, -0.601453,
		43.572247, 33.224323, 31.385471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945545, 32.649036, 31.440231>,  <43.013149, 33.211948, 31.806488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945545, 32.649036, 31.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330742, 32.754337, 31.417114>,  <43.561859, 32.817516, 31.403244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330742, 32.754337, 31.417114>,  <42.945545, 32.649036, 31.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330742, 32.754337, 31.417114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268160, -0.957365, 0.107433,
		-0.027047, -0.118955, -0.992531,
		0.962995, 0.263252, -0.057793,
		43.619640, 32.833313, 31.399776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354019, 32.059563, 31.025553>,  <42.945545, 32.649036, 31.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354019, 32.059563, 31.025553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657486, 32.242023, 31.211609>,  <43.839565, 32.351501, 31.323242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657486, 32.242023, 31.211609>,  <43.354019, 32.059563, 31.025553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657486, 32.242023, 31.211609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287395, -0.875078, 0.389414,
		0.584665, -0.161755, -0.794986,
		0.758664, 0.456151, 0.465140,
		43.885086, 32.378868, 31.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076519, 31.776838, 30.836035>,  <43.354019, 32.059563, 31.025553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076519, 31.776838, 30.836035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096977, 31.927942, 31.205832>,  <44.109253, 32.018604, 31.427710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096977, 31.927942, 31.205832>,  <44.076519, 31.776838, 30.836035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096977, 31.927942, 31.205832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494027, -0.814077, 0.305314,
		0.867941, 0.441109, -0.228257,
		0.051142, 0.377759, 0.924490,
		44.112320, 32.041271, 31.483179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755692, 31.542929, 30.995310>,  <44.076519, 31.776838, 30.836035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755692, 31.542929, 30.995310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610313, 31.645864, 31.353456>,  <44.523087, 31.707626, 31.568344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610313, 31.645864, 31.353456>,  <44.755692, 31.542929, 30.995310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610313, 31.645864, 31.353456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392714, -0.829207, 0.397733,
		0.844797, 0.496179, 0.200312,
		-0.363447, 0.257338, 0.895368,
		44.501278, 31.723066, 31.622066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260998, 31.377451, 31.438635>,  <44.755692, 31.542929, 30.995310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260998, 31.377451, 31.438635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938587, 31.405998, 31.673660>,  <44.745140, 31.423126, 31.814676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938587, 31.405998, 31.673660>,  <45.260998, 31.377451, 31.438635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938587, 31.405998, 31.673660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181061, -0.915385, 0.359566,
		0.563509, 0.396204, 0.724900,
		-0.806024, 0.071367, 0.587565,
		44.696781, 31.427408, 31.849930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446236, 31.225092, 32.132671>,  <45.260998, 31.377451, 31.438635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446236, 31.225092, 32.132671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055523, 31.141382, 32.150997>,  <44.821095, 31.091156, 32.161991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.055523, 31.141382, 32.150997>,  <45.446236, 31.225092, 32.132671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055523, 31.141382, 32.150997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205832, -0.857490, 0.471534,
		-0.059393, 0.470017, 0.880657,
		-0.976783, -0.209273, 0.045815,
		44.762489, 31.078600, 32.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357323, 30.975021, 32.773308>,  <45.446236, 31.225092, 32.132671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357323, 30.975021, 32.773308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028774, 30.855244, 32.579117>,  <44.831646, 30.783377, 32.462601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.028774, 30.855244, 32.579117>,  <45.357323, 30.975021, 32.773308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028774, 30.855244, 32.579117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066553, -0.895614, 0.439824,
		-0.566503, 0.328947, 0.755557,
		-0.821367, -0.299446, -0.485476,
		44.782364, 30.765409, 32.433475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930183, 30.693865, 33.365318>,  <45.357323, 30.975021, 32.773308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930183, 30.693865, 33.365318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725460, 30.650166, 33.706169>,  <44.602627, 30.623945, 33.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725460, 30.650166, 33.706169>,  <44.930183, 30.693865, 33.365318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725460, 30.650166, 33.706169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501868, -0.767015, -0.399770,
		0.697268, -0.632260, 0.337735,
		-0.511807, -0.109249, 0.852126,
		44.571918, 30.617392, 33.961807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827206, 29.970415, 33.441624>,  <44.930183, 30.693865, 33.365318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827206, 29.970415, 33.441624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553387, 30.083376, 33.710442>,  <44.389095, 30.151154, 33.871731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553387, 30.083376, 33.710442>,  <44.827206, 29.970415, 33.441624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553387, 30.083376, 33.710442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524796, -0.830780, -0.185457,
		0.505944, -0.479639, 0.716915,
		-0.684551, 0.282403, 0.672040,
		44.348022, 30.168097, 33.912052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551300, 29.325081, 33.746471>,  <44.827206, 29.970415, 33.441624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551300, 29.325081, 33.746471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273075, 29.602753, 33.820557>,  <44.106140, 29.769356, 33.865009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273075, 29.602753, 33.820557>,  <44.551300, 29.325081, 33.746471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273075, 29.602753, 33.820557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718442, -0.670061, -0.186706,
		-0.005505, -0.262930, 0.964799,
		-0.695565, 0.694180, 0.185212,
		44.064407, 29.811007, 33.876122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123718, 29.065069, 34.274837>,  <44.551300, 29.325081, 33.746471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123718, 29.065069, 34.274837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887051, 29.349276, 34.122475>,  <43.745049, 29.519800, 34.031055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887051, 29.349276, 34.122475>,  <44.123718, 29.065069, 34.274837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887051, 29.349276, 34.122475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774485, -0.632141, 0.023880,
		-0.223820, 0.309136, 0.924305,
		-0.591673, 0.710516, -0.380907,
		43.709549, 29.562431, 34.008202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528297, 29.154337, 34.751308>,  <44.123718, 29.065069, 34.274837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528297, 29.154337, 34.751308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448444, 29.247616, 34.370621>,  <43.400532, 29.303583, 34.142208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448444, 29.247616, 34.370621>,  <43.528297, 29.154337, 34.751308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448444, 29.247616, 34.370621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707135, -0.706643, -0.024820,
		-0.678312, 0.668038, 0.305970,
		-0.199631, 0.233198, -0.951718,
		43.388554, 29.317575, 34.085106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847652, 29.342442, 34.806690>,  <43.528297, 29.154337, 34.751308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847652, 29.342442, 34.806690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930305, 29.244776, 34.427704>,  <42.979897, 29.186176, 34.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930305, 29.244776, 34.427704>,  <42.847652, 29.342442, 34.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930305, 29.244776, 34.427704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765846, -0.643023, -0.001314,
		-0.608920, 0.725882, -0.319864,
		0.206634, -0.244166, -0.947463,
		42.992294, 29.171526, 34.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210693, 29.271566, 34.475937>,  <42.847652, 29.342442, 34.806690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210693, 29.271566, 34.475937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436172, 29.063908, 34.218960>,  <42.571461, 28.939312, 34.064774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436172, 29.063908, 34.218960>,  <42.210693, 29.271566, 34.475937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436172, 29.063908, 34.218960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738093, -0.665727, -0.109665,
		-0.370758, 0.535999, -0.758448,
		0.563700, -0.519146, -0.642441,
		42.605282, 28.908163, 34.026226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771572, 29.151434, 33.963390>,  <42.210693, 29.271566, 34.475937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771572, 29.151434, 33.963390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053371, 28.872526, 33.910473>,  <42.222450, 28.705181, 33.878723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053371, 28.872526, 33.910473>,  <41.771572, 29.151434, 33.963390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053371, 28.872526, 33.910473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709256, -0.698355, -0.096209,
		-0.025302, 0.161607, -0.986531,
		0.704497, -0.697268, -0.132291,
		42.264721, 28.663345, 33.870785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728527, 28.872532, 33.263931>,  <41.771572, 29.151434, 33.963390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728527, 28.872532, 33.263931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844837, 28.625900, 33.556583>,  <41.914623, 28.477922, 33.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844837, 28.625900, 33.556583>,  <41.728527, 28.872532, 33.263931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844837, 28.625900, 33.556583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901295, -0.433151, -0.006835,
		0.321121, -0.657428, -0.681666,
		0.290771, -0.616578, 0.731631,
		41.932068, 28.440928, 33.776073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539619, 28.270365, 33.024681>,  <41.728527, 28.872532, 33.263931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539619, 28.270365, 33.024681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595257, 28.216883, 33.417164>,  <41.628639, 28.184793, 33.652653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595257, 28.216883, 33.417164>,  <41.539619, 28.270365, 33.024681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595257, 28.216883, 33.417164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875136, -0.480315, 0.058608,
		0.463455, -0.866845, -0.183819,
		0.139095, -0.133705, 0.981211,
		41.636986, 28.176771, 33.711529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552250, 27.574768, 33.226467>,  <41.539619, 28.270365, 33.024681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552250, 27.574768, 33.226467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401367, 27.768290, 33.542355>,  <41.310837, 27.884403, 33.731888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401367, 27.768290, 33.542355>,  <41.552250, 27.574768, 33.226467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401367, 27.768290, 33.542355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891287, -0.421329, -0.167602,
		0.251643, -0.767082, 0.590137,
		-0.377206, 0.483805, 0.789714,
		41.288204, 27.913431, 33.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131298, 27.095793, 33.604836>,  <41.552250, 27.574768, 33.226467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131298, 27.095793, 33.604836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011280, 27.469160, 33.683525>,  <40.939270, 27.693180, 33.730740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011280, 27.469160, 33.683525>,  <41.131298, 27.095793, 33.604836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011280, 27.469160, 33.683525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938438, -0.251822, -0.236475,
		-0.171189, -0.255572, 0.951513,
		-0.300048, 0.933417, 0.196730,
		40.921265, 27.749186, 33.742542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203121, 26.549801, 34.246044>,  <41.131298, 27.095793, 33.604836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203121, 26.549801, 34.246044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000839, 26.884171, 34.331364>,  <40.879471, 27.084791, 34.382553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000839, 26.884171, 34.331364>,  <41.203121, 26.549801, 34.246044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000839, 26.884171, 34.331364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844074, -0.530529, 0.077962,
		0.178330, -0.140610, 0.973872,
		-0.505706, 0.835923, 0.213295,
		40.849129, 27.134947, 34.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697990, 26.507303, 34.927216>,  <41.203121, 26.549801, 34.246044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697990, 26.507303, 34.927216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567368, 26.775141, 34.660381>,  <40.488995, 26.935843, 34.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567368, 26.775141, 34.660381>,  <40.697990, 26.507303, 34.927216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567368, 26.775141, 34.660381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893797, -0.448299, -0.012442,
		-0.307385, 0.592176, 0.744877,
		-0.326560, 0.669593, -0.667086,
		40.469398, 26.976019, 34.460255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029018, 26.637810, 35.153999>,  <40.697990, 26.507303, 34.927216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029018, 26.637810, 35.153999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052029, 26.769522, 34.777008>,  <40.065834, 26.848549, 34.550812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052029, 26.769522, 34.777008>,  <40.029018, 26.637810, 35.153999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052029, 26.769522, 34.777008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842258, -0.490836, -0.222893,
		-0.535997, 0.806631, 0.249105,
		0.057523, 0.329280, -0.942478,
		40.069286, 26.868305, 34.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468227, 27.048353, 35.008080>,  <40.029018, 26.637810, 35.153999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468227, 27.048353, 35.008080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629242, 26.890499, 34.677692>,  <39.725853, 26.795786, 34.479462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629242, 26.890499, 34.677692>,  <39.468227, 27.048353, 35.008080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629242, 26.890499, 34.677692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754530, -0.653933, -0.055284,
		-0.518311, 0.645472, -0.560999,
		0.402540, -0.394636, -0.825968,
		39.750004, 26.772108, 34.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925434, 27.111774, 34.625519>,  <39.468227, 27.048353, 35.008080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925434, 27.111774, 34.625519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158356, 26.877295, 34.400204>,  <39.298107, 26.736607, 34.265015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158356, 26.877295, 34.400204>,  <38.925434, 27.111774, 34.625519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158356, 26.877295, 34.400204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809817, -0.479237, -0.338420,
		-0.071569, 0.653226, -0.753773,
		0.582301, -0.586198, -0.563292,
		39.333046, 26.701435, 34.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685711, 27.253981, 33.894829>,  <38.925434, 27.111774, 34.625519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685711, 27.253981, 33.894829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847870, 26.892927, 33.952663>,  <38.945168, 26.676294, 33.987366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847870, 26.892927, 33.952663>,  <38.685711, 27.253981, 33.894829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847870, 26.892927, 33.952663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807193, -0.427702, -0.406830,
		0.429057, 0.048220, -0.901989,
		0.405400, -0.902633, 0.144585,
		38.969490, 26.622137, 33.996040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606998, 26.918343, 33.282162>,  <38.685711, 27.253981, 33.894829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606998, 26.918343, 33.282162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677128, 26.637375, 33.558094>,  <38.719208, 26.468794, 33.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677128, 26.637375, 33.558094>,  <38.606998, 26.918343, 33.282162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677128, 26.637375, 33.558094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907005, -0.387747, -0.164299,
		0.382887, -0.596875, -0.705080,
		0.175327, -0.702419, 0.689832,
		38.729725, 26.426649, 33.765045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262409, 26.323906, 32.978931>,  <38.606998, 26.918343, 33.282162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262409, 26.323906, 32.978931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324722, 26.237072, 33.364388>,  <38.362110, 26.184971, 33.595661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324722, 26.237072, 33.364388>,  <38.262409, 26.323906, 32.978931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324722, 26.237072, 33.364388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914742, -0.399884, 0.057793,
		0.372799, -0.890487, -0.260872,
		0.155782, -0.217085, 0.963642,
		38.371456, 26.171946, 33.653481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890320, 25.705484, 33.047657>,  <38.262409, 26.323906, 32.978931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890320, 25.705484, 33.047657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962318, 25.815222, 33.425510>,  <38.005520, 25.881063, 33.652222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962318, 25.815222, 33.425510>,  <37.890320, 25.705484, 33.047657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962318, 25.815222, 33.425510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918935, -0.295713, 0.260985,
		0.350940, -0.915036, 0.198873,
		0.180001, 0.274341, 0.944636,
		38.016319, 25.897524, 33.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232521, 25.579144, 33.243649>,  <37.890320, 25.705484, 33.047657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232521, 25.579144, 33.243649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439537, 25.709110, 33.560276>,  <37.563747, 25.787090, 33.750252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439537, 25.709110, 33.560276>,  <37.232521, 25.579144, 33.243649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439537, 25.709110, 33.560276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803777, -0.132630, 0.579958,
		0.293424, -0.936397, 0.192519,
		0.517537, 0.324916, 0.791571,
		37.594799, 25.806585, 33.797749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037189, 25.629381, 33.959614>,  <37.232521, 25.579144, 33.243649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037189, 25.629381, 33.959614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197723, 25.588779, 34.323730>,  <37.294044, 25.564419, 34.542202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197723, 25.588779, 34.323730>,  <37.037189, 25.629381, 33.959614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197723, 25.588779, 34.323730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908686, 0.168886, -0.381794,
		-0.114982, 0.980395, 0.160015,
		0.401333, -0.101504, 0.910290,
		37.318123, 25.558329, 34.596817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396004, 26.278673, 34.236958>,  <37.037189, 25.629381, 33.959614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396004, 26.278673, 34.236958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577351, 25.950754, 34.376896>,  <37.686161, 25.754004, 34.460857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577351, 25.950754, 34.376896>,  <37.396004, 26.278673, 34.236958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577351, 25.950754, 34.376896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842982, 0.266868, -0.467079,
		0.289547, 0.506672, 0.812063,
		0.453370, -0.819796, 0.349845,
		37.713360, 25.704815, 34.481850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976742, 26.458534, 34.623226>,  <37.396004, 26.278673, 34.236958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976742, 26.458534, 34.623226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014549, 26.117924, 34.416939>,  <38.037235, 25.913557, 34.293167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014549, 26.117924, 34.416939>,  <37.976742, 26.458534, 34.623226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014549, 26.117924, 34.416939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874175, 0.318855, -0.366263,
		0.476323, -0.416212, 0.774522,
		0.094518, -0.851527, -0.515720,
		38.042904, 25.862465, 34.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559395, 25.962000, 34.902195>,  <37.976742, 26.458534, 34.623226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559395, 25.962000, 34.902195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490051, 25.932713, 34.509342>,  <38.448444, 25.915140, 34.273632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490051, 25.932713, 34.509342>,  <38.559395, 25.962000, 34.902195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490051, 25.932713, 34.509342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910943, 0.367119, -0.188164,
		0.374337, -0.927287, 0.003056,
		-0.173360, -0.073221, -0.982133,
		38.438042, 25.910748, 34.214703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036190, 25.482016, 34.641113>,  <38.559395, 25.962000, 34.902195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036190, 25.482016, 34.641113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934959, 25.755877, 34.367702>,  <38.874222, 25.920193, 34.203655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934959, 25.755877, 34.367702>,  <39.036190, 25.482016, 34.641113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934959, 25.755877, 34.367702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959906, 0.265745, -0.089222,
		0.120557, -0.678699, -0.724454,
		-0.253075, 0.684651, -0.683524,
		38.859035, 25.961271, 34.162643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493618, 25.392963, 34.068142>,  <39.036190, 25.482016, 34.641113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493618, 25.392963, 34.068142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353867, 25.767616, 34.057949>,  <39.270016, 25.992409, 34.051834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353867, 25.767616, 34.057949>,  <39.493618, 25.392963, 34.068142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353867, 25.767616, 34.057949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930690, 0.343760, -0.125077,
		-0.108391, -0.067417, -0.991820,
		-0.349381, 0.936634, -0.025484,
		39.249054, 26.048607, 34.050304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934719, 25.718605, 33.602093>,  <39.493618, 25.392963, 34.068142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934719, 25.718605, 33.602093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761417, 26.030071, 33.783630>,  <39.657436, 26.216951, 33.892551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761417, 26.030071, 33.783630>,  <39.934719, 25.718605, 33.602093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761417, 26.030071, 33.783630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811961, 0.555771, -0.178429,
		-0.391170, 0.291198, -0.873035,
		-0.433250, 0.778667, 0.453842,
		39.631443, 26.263672, 33.919785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082211, 26.318024, 33.248322>,  <39.934719, 25.718605, 33.602093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082211, 26.318024, 33.248322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990398, 26.487850, 33.598648>,  <39.935310, 26.589746, 33.808846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990398, 26.487850, 33.598648>,  <40.082211, 26.318024, 33.248322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990398, 26.487850, 33.598648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827837, 0.558390, -0.053731,
		-0.511861, 0.712702, -0.479640,
		-0.229532, 0.424566, 0.875819,
		39.921539, 26.615221, 33.861393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379330, 27.123116, 33.231197>,  <40.082211, 26.318024, 33.248322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379330, 27.123116, 33.231197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241901, 27.061930, 33.601833>,  <40.159443, 27.025219, 33.824215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241901, 27.061930, 33.601833>,  <40.379330, 27.123116, 33.231197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241901, 27.061930, 33.601833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513619, 0.795406, 0.321753,
		-0.786228, 0.586457, -0.194713,
		-0.343570, -0.152963, 0.926586,
		40.138832, 27.016041, 33.879810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984291, 27.694065, 33.517719>,  <40.379330, 27.123116, 33.231197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984291, 27.694065, 33.517719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158138, 27.482767, 33.809490>,  <40.262447, 27.355988, 33.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158138, 27.482767, 33.809490>,  <39.984291, 27.694065, 33.517719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158138, 27.482767, 33.809490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626881, 0.758950, 0.176110,
		-0.646630, 0.380726, 0.660997,
		0.434614, -0.528245, 0.729430,
		40.288521, 27.324293, 34.028320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015884, 28.124636, 34.093212>,  <39.984291, 27.694065, 33.517719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015884, 28.124636, 34.093212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308441, 27.852982, 34.117996>,  <40.483974, 27.689989, 34.132866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308441, 27.852982, 34.117996>,  <40.015884, 28.124636, 34.093212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308441, 27.852982, 34.117996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670834, 0.732832, 0.113751,
		-0.122656, -0.041634, 0.991576,
		0.731394, -0.679135, 0.061957,
		40.527859, 27.649240, 34.136581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468681, 28.426754, 34.566101>,  <40.015884, 28.124636, 34.093212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468681, 28.426754, 34.566101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678967, 28.128012, 34.403214>,  <40.805138, 27.948767, 34.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678967, 28.128012, 34.403214>,  <40.468681, 28.426754, 34.566101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678967, 28.128012, 34.403214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847575, 0.500618, 0.176062,
		0.072368, -0.437707, 0.896201,
		0.525717, -0.746856, -0.407218,
		40.836681, 27.903955, 34.281048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158390, 28.495415, 34.815113>,  <40.468681, 28.426754, 34.566101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158390, 28.495415, 34.815113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234726, 28.237309, 34.519218>,  <41.280529, 28.082445, 34.341682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234726, 28.237309, 34.519218>,  <41.158390, 28.495415, 34.815113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234726, 28.237309, 34.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972784, 0.225208, 0.054521,
		0.131414, -0.730011, 0.670682,
		0.190844, -0.645264, -0.739738,
		41.291981, 28.043730, 34.297298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729511, 27.926235, 35.022881>,  <41.158390, 28.495415, 34.815113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729511, 27.926235, 35.022881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711689, 27.997641, 34.629711>,  <41.700996, 28.040483, 34.393810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711689, 27.997641, 34.629711>,  <41.729511, 27.926235, 35.022881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711689, 27.997641, 34.629711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949609, 0.313132, 0.013823,
		0.310254, -0.932781, -0.183471,
		-0.044557, 0.178514, -0.982928,
		41.698322, 28.051195, 34.334831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356899, 27.659967, 34.746178>,  <41.729511, 27.926235, 35.022881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356899, 27.659967, 34.746178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221363, 27.891768, 34.449699>,  <42.140041, 28.030848, 34.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221363, 27.891768, 34.449699>,  <42.356899, 27.659967, 34.746178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221363, 27.891768, 34.449699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930175, 0.324643, -0.171409,
		0.141291, -0.747518, -0.649040,
		-0.338838, 0.579503, -0.741192,
		42.119713, 28.065619, 34.227341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782825, 27.535887, 34.044315>,  <42.356899, 27.659967, 34.746178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782825, 27.535887, 34.044315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608234, 27.894196, 34.010658>,  <42.503479, 28.109180, 33.990463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608234, 27.894196, 34.010658>,  <42.782825, 27.535887, 34.044315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608234, 27.894196, 34.010658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821400, 0.358579, -0.443535,
		-0.367135, -0.262707, -0.892299,
		-0.436479, 0.895771, -0.084140,
		42.477291, 28.162928, 33.985416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310333, 27.840477, 33.733685>,  <42.782825, 27.535887, 34.044315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310333, 27.840477, 33.733685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010635, 28.104446, 33.756111>,  <42.830818, 28.262827, 33.769566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010635, 28.104446, 33.756111>,  <43.310333, 27.840477, 33.733685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010635, 28.104446, 33.756111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622383, 0.730500, -0.281086,
		-0.226449, -0.175708, -0.958043,
		-0.749240, 0.659921, 0.056063,
		42.785862, 28.302423, 33.772930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369473, 28.213364, 33.224617>,  <43.310333, 27.840477, 33.733685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369473, 28.213364, 33.224617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157074, 28.435177, 33.480911>,  <43.029636, 28.568264, 33.634686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157074, 28.435177, 33.480911>,  <43.369473, 28.213364, 33.224617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157074, 28.435177, 33.480911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661598, 0.743763, -0.095418,
		-0.529466, 0.373241, -0.761811,
		-0.530993, 0.554533, 0.640733,
		42.997776, 28.601538, 33.673130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223339, 28.925182, 32.896713>,  <43.369473, 28.213364, 33.224617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223339, 28.925182, 32.896713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152184, 28.974379, 33.287247>,  <43.109489, 29.003897, 33.521568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152184, 28.974379, 33.287247>,  <43.223339, 28.925182, 32.896713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152184, 28.974379, 33.287247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489374, 0.871829, -0.020665,
		-0.853739, 0.474117, -0.215274,
		-0.177885, 0.122992, 0.976335,
		43.098820, 29.011276, 33.580147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978249, 29.647636, 32.896870>,  <43.223339, 28.925182, 32.896713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978249, 29.647636, 32.896870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121647, 29.550144, 33.257332>,  <43.207684, 29.491650, 33.473610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121647, 29.550144, 33.257332>,  <42.978249, 29.647636, 32.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121647, 29.550144, 33.257332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525283, 0.850666, 0.021110,
		-0.771726, 0.465793, 0.432985,
		0.358492, -0.243730, 0.901154,
		43.229195, 29.477026, 33.527679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810665, 30.295242, 33.367268>,  <42.978249, 29.647636, 32.896870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810665, 30.295242, 33.367268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117607, 30.078489, 33.504402>,  <43.301773, 29.948439, 33.586681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117607, 30.078489, 33.504402>,  <42.810665, 30.295242, 33.367268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117607, 30.078489, 33.504402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519236, 0.838818, 0.163642,
		-0.376249, 0.052440, 0.925033,
		0.767353, -0.541881, 0.342833,
		43.347813, 29.915924, 33.607250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066765, 30.626841, 34.043179>,  <42.810665, 30.295242, 33.367268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066765, 30.626841, 34.043179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374180, 30.384846, 33.959904>,  <43.558628, 30.239649, 33.909939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374180, 30.384846, 33.959904>,  <43.066765, 30.626841, 34.043179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374180, 30.384846, 33.959904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611110, 0.597773, 0.518857,
		-0.189455, -0.525984, 0.829124,
		0.768539, -0.604986, -0.208183,
		43.604740, 30.203350, 33.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472393, 30.666721, 34.666885>,  <43.066765, 30.626841, 34.043179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472393, 30.666721, 34.666885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745777, 30.479424, 34.442875>,  <43.909805, 30.367044, 34.308468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745777, 30.479424, 34.442875>,  <43.472393, 30.666721, 34.666885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745777, 30.479424, 34.442875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727166, 0.369281, 0.578672,
		-0.064152, -0.802732, 0.592879,
		0.683458, -0.468244, -0.560029,
		43.950813, 30.338951, 34.274868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027958, 30.310873, 35.152519>,  <43.472393, 30.666721, 34.666885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027958, 30.310873, 35.152519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175220, 30.413883, 34.795162>,  <44.263577, 30.475689, 34.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175220, 30.413883, 34.795162>,  <44.027958, 30.310873, 35.152519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175220, 30.413883, 34.795162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657427, 0.607357, 0.445990,
		0.657460, -0.751530, 0.054296,
		0.368152, 0.257525, -0.893389,
		44.285667, 30.491140, 34.527145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773930, 30.131767, 35.060123>,  <44.027958, 30.310873, 35.152519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773930, 30.131767, 35.060123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661221, 30.480705, 34.900314>,  <44.593594, 30.690067, 34.804428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661221, 30.480705, 34.900314>,  <44.773930, 30.131767, 35.060123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661221, 30.480705, 34.900314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689335, 0.473692, 0.548118,
		0.667399, -0.120959, -0.734812,
		-0.281775, 0.872344, -0.399523,
		44.576687, 30.742409, 34.780457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432011, 30.491718, 34.926655>,  <44.773930, 30.131767, 35.060123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432011, 30.491718, 34.926655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111675, 30.727419, 34.969440>,  <44.919476, 30.868839, 34.995113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111675, 30.727419, 34.969440>,  <45.432011, 30.491718, 34.926655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111675, 30.727419, 34.969440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484226, 0.532008, 0.694617,
		0.352400, 0.608070, -0.711383,
		-0.800837, 0.589253, 0.106963,
		44.871426, 30.904196, 35.001530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661606, 31.213392, 34.929577>,  <45.432011, 30.491718, 34.926655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661606, 31.213392, 34.929577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323418, 31.178944, 35.140388>,  <45.120506, 31.158274, 35.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323418, 31.178944, 35.140388>,  <45.661606, 31.213392, 34.929577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323418, 31.178944, 35.140388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409793, 0.528182, 0.743703,
		-0.342419, 0.844752, -0.411269,
		-0.845470, -0.086123, 0.527033,
		45.069778, 31.153107, 35.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440582, 31.906294, 35.009502>,  <45.661606, 31.213392, 34.929577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440582, 31.906294, 35.009502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326241, 31.656498, 35.300240>,  <45.257637, 31.506620, 35.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326241, 31.656498, 35.300240>,  <45.440582, 31.906294, 35.009502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326241, 31.656498, 35.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370181, 0.627650, 0.684851,
		-0.883885, 0.464832, 0.051757,
		-0.285856, -0.624489, 0.726842,
		45.240482, 31.469151, 35.518291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826305, 32.199986, 35.507942>,  <45.440582, 31.906294, 35.009502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826305, 32.199986, 35.507942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114693, 31.956465, 35.640339>,  <45.287727, 31.810352, 35.719776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114693, 31.956465, 35.640339>,  <44.826305, 32.199986, 35.507942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114693, 31.956465, 35.640339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335198, 0.724443, 0.602350,
		-0.606500, -0.323329, 0.726372,
		0.720972, -0.608803, 0.330995,
		45.330986, 31.773825, 35.739639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572990, 32.311176, 35.849880>,  <44.826305, 32.199986, 35.507942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572990, 32.311176, 35.849880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822182, 32.496979, 36.101635>,  <45.971695, 32.608459, 36.252689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822182, 32.496979, 36.101635>,  <45.572990, 32.311176, 35.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822182, 32.496979, 36.101635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084789, 0.839956, -0.535990,
		-0.777630, 0.280546, 0.562660,
		0.622979, 0.464509, 0.629387,
		46.009075, 32.636330, 36.290451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359688, 33.021072, 36.153755>,  <45.572990, 32.311176, 35.849880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359688, 33.021072, 36.153755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755924, 33.029190, 36.099632>,  <45.993668, 33.034061, 36.067158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755924, 33.029190, 36.099632>,  <45.359688, 33.021072, 36.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755924, 33.029190, 36.099632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113382, 0.675280, -0.728795,
		0.076584, 0.737283, 0.671229,
		0.990595, 0.020291, -0.135311,
		46.053104, 33.035278, 36.059040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648869, 33.718502, 36.046074>,  <45.359688, 33.021072, 36.153755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648869, 33.718502, 36.046074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863789, 33.453705, 35.837048>,  <45.992741, 33.294827, 35.711632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863789, 33.453705, 35.837048>,  <45.648869, 33.718502, 36.046074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863789, 33.453705, 35.837048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052441, 0.592179, -0.804099,
		0.841761, 0.459443, 0.283460,
		0.537297, -0.661994, -0.522567,
		46.024979, 33.255108, 35.680279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294876, 34.070660, 35.636459>,  <45.648869, 33.718502, 36.046074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294876, 34.070660, 35.636459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143490, 33.749733, 35.451828>,  <46.052658, 33.557178, 35.341049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143490, 33.749733, 35.451828>,  <46.294876, 34.070660, 35.636459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143490, 33.749733, 35.451828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046197, 0.514426, -0.856289,
		0.924461, -0.302755, -0.231758,
		-0.378469, -0.802312, -0.461581,
		46.029949, 33.509041, 35.313354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720863, 33.923450, 35.030006>,  <46.294876, 34.070660, 35.636459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720863, 33.923450, 35.030006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337849, 33.808243, 35.024670>,  <46.108040, 33.739120, 35.021469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337849, 33.808243, 35.024670>,  <46.720863, 33.923450, 35.030006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337849, 33.808243, 35.024670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178600, 0.628814, -0.756766,
		0.226349, -0.722246, -0.653550,
		-0.957532, -0.288017, -0.013338,
		46.050591, 33.721836, 35.020668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460789, 33.960587, 34.397049>,  <46.720863, 33.923450, 35.030006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460789, 33.960587, 34.397049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119728, 33.940357, 34.605061>,  <45.915092, 33.928219, 34.729870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119728, 33.940357, 34.605061>,  <46.460789, 33.960587, 34.397049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119728, 33.940357, 34.605061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428650, 0.636800, -0.640894,
		-0.298746, -0.769369, -0.564643,
		-0.852649, -0.050570, 0.520031,
		45.863934, 33.925186, 34.761070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790352, 33.630604, 34.031113>,  <46.460789, 33.960587, 34.397049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790352, 33.630604, 34.031113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779167, 33.938961, 34.285652>,  <45.772457, 34.123974, 34.438377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779167, 33.938961, 34.285652>,  <45.790352, 33.630604, 34.031113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779167, 33.938961, 34.285652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132935, 0.628076, -0.766713,
		-0.990730, -0.106033, 0.084916,
		-0.027963, 0.770894, 0.636349,
		45.770779, 34.170231, 34.476559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204617, 34.130901, 33.936245>,  <45.790352, 33.630604, 34.031113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204617, 34.130901, 33.936245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495758, 34.345840, 34.106647>,  <45.670444, 34.474804, 34.208889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495758, 34.345840, 34.106647>,  <45.204617, 34.130901, 33.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495758, 34.345840, 34.106647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001445, 0.622452, -0.782657,
		-0.685727, 0.569047, 0.453833,
		0.727858, 0.537345, 0.426009,
		45.714115, 34.507046, 34.234451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829426, 34.639519, 33.514751>,  <45.204617, 34.130901, 33.936245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829426, 34.639519, 33.514751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540970, 34.678772, 33.789070>,  <44.367897, 34.702324, 33.953663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540970, 34.678772, 33.789070>,  <44.829426, 34.639519, 33.514751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540970, 34.678772, 33.789070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622418, 0.526466, 0.579162,
		-0.304216, 0.844513, -0.440738,
		-0.721143, 0.098133, 0.685800,
		44.324627, 34.708210, 33.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652519, 35.405045, 33.634331>,  <44.829426, 34.639519, 33.514751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652519, 35.405045, 33.634331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625858, 35.134762, 33.927990>,  <44.609859, 34.972591, 34.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625858, 35.134762, 33.927990>,  <44.652519, 35.405045, 33.634331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625858, 35.134762, 33.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706983, 0.487225, 0.512628,
		-0.704083, 0.553201, 0.445237,
		-0.066656, -0.675707, 0.734151,
		44.605862, 34.932049, 34.148235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594830, 35.689568, 34.354328>,  <44.652519, 35.405045, 33.634331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594830, 35.689568, 34.354328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781197, 35.337330, 34.388889>,  <44.893017, 35.125988, 34.409626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781197, 35.337330, 34.388889>,  <44.594830, 35.689568, 34.354328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781197, 35.337330, 34.388889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784691, 0.456339, 0.419542,
		-0.408876, -0.127675, 0.903615,
		0.465919, -0.880599, 0.086401,
		44.920971, 35.073151, 34.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900372, 35.598232, 34.960159>,  <44.594830, 35.689568, 34.354328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900372, 35.598232, 34.960159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119747, 35.393784, 34.695442>,  <45.251373, 35.271114, 34.536610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119747, 35.393784, 34.695442>,  <44.900372, 35.598232, 34.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119747, 35.393784, 34.695442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834640, 0.382792, 0.396038,
		0.050907, -0.769563, 0.636539,
		0.548438, -0.511120, -0.661795,
		45.284279, 35.240448, 34.496902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364719, 35.207081, 35.324329>,  <44.900372, 35.598232, 34.960159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364719, 35.207081, 35.324329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485569, 35.319382, 34.959934>,  <45.558079, 35.386761, 34.741299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485569, 35.319382, 34.959934>,  <45.364719, 35.207081, 35.324329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485569, 35.319382, 34.959934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793758, 0.455115, 0.403507,
		0.527889, -0.845014, -0.085346,
		0.302127, 0.280751, -0.910987,
		45.576206, 35.403606, 34.686638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068222, 34.944927, 35.143692>,  <45.364719, 35.207081, 35.324329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068222, 34.944927, 35.143692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938877, 35.297844, 35.006874>,  <45.861271, 35.509594, 34.924782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938877, 35.297844, 35.006874>,  <46.068222, 34.944927, 35.143692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938877, 35.297844, 35.006874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722495, 0.463633, 0.512880,
		0.611095, -0.081281, -0.787373,
		-0.323365, 0.882291, -0.342049,
		45.841869, 35.562531, 34.904259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685089, 35.243526, 35.041592>,  <46.068222, 34.944927, 35.143692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685089, 35.243526, 35.041592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392437, 35.509548, 35.101494>,  <46.216846, 35.669163, 35.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392437, 35.509548, 35.101494>,  <46.685089, 35.243526, 35.041592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392437, 35.509548, 35.101494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579893, 0.491662, 0.649610,
		0.358395, 0.562114, -0.745372,
		-0.731626, 0.665053, 0.149757,
		46.172951, 35.709064, 35.146420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.405136, 35.451057, 35.233727>,  <46.685089, 35.243526, 35.041592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.405136, 35.451057, 35.233727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600441, 35.107201, 35.173561>,  <47.717625, 34.900887, 35.137463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600441, 35.107201, 35.173561>,  <47.405136, 35.451057, 35.233727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600441, 35.107201, 35.173561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811351, 0.510621, -0.284564,
		0.321425, 0.016904, 0.946784,
		0.488258, -0.859640, -0.150411,
		47.746918, 34.849308, 35.128437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.000816, 36.704453, 25.998468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792309, 36.959381, 26.225485>,  <38.667206, 37.112339, 26.361694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792309, 36.959381, 26.225485>,  <39.000816, 36.704453, 25.998468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792309, 36.959381, 26.225485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147617, -0.722350, 0.675589,
		0.840530, 0.268383, 0.470616,
		-0.521266, 0.637324, 0.567539,
		38.635929, 37.150578, 26.395746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299500, 36.521530, 26.626080>,  <39.000816, 36.704453, 25.998468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299500, 36.521530, 26.626080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956741, 36.715660, 26.695574>,  <38.751087, 36.832138, 26.737270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956741, 36.715660, 26.695574>,  <39.299500, 36.521530, 26.626080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956741, 36.715660, 26.695574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227732, -0.658777, 0.717043,
		0.462452, 0.574868, 0.675030,
		-0.856899, 0.485324, 0.173737,
		38.699673, 36.861256, 26.747694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327442, 36.517612, 27.432940>,  <39.299500, 36.521530, 26.626080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327442, 36.517612, 27.432940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958256, 36.566002, 27.286793>,  <38.736744, 36.595036, 27.199104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.958256, 36.566002, 27.286793>,  <39.327442, 36.517612, 27.432940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958256, 36.566002, 27.286793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369620, -0.543213, 0.753857,
		-0.107275, 0.830834, 0.546083,
		-0.922970, 0.120974, -0.365366,
		38.681366, 36.602295, 27.177183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936001, 36.791908, 27.977549>,  <39.327442, 36.517612, 27.432940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936001, 36.791908, 27.977549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674900, 36.625450, 27.724333>,  <38.518238, 36.525574, 27.572403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674900, 36.625450, 27.724333>,  <38.936001, 36.791908, 27.977549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674900, 36.625450, 27.724333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306124, -0.619462, 0.722880,
		-0.692966, 0.665650, 0.276964,
		-0.652753, -0.416145, -0.633037,
		38.479073, 36.500607, 27.534422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311489, 36.741478, 28.368288>,  <38.936001, 36.791908, 27.977549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311489, 36.741478, 28.368288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297646, 36.478947, 28.066816>,  <38.289341, 36.321426, 27.885933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.297646, 36.478947, 28.066816>,  <38.311489, 36.741478, 28.368288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297646, 36.478947, 28.066816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292106, -0.714559, 0.635672,
		-0.955760, 0.242153, -0.166990,
		-0.034606, -0.656328, -0.753681,
		38.287266, 36.282047, 27.840712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884819, 36.287003, 28.660170>,  <38.311489, 36.741478, 28.368288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884819, 36.287003, 28.660170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978413, 36.063431, 28.341963>,  <38.034569, 35.929287, 28.151039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978413, 36.063431, 28.341963>,  <37.884819, 36.287003, 28.660170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978413, 36.063431, 28.341963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133026, -0.828941, 0.543286,
		-0.963097, -0.021296, -0.268312,
		0.233985, -0.558930, -0.795518,
		38.048607, 35.895752, 28.103308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329014, 35.870995, 28.629747>,  <37.884819, 36.287003, 28.660170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329014, 35.870995, 28.629747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648357, 35.706062, 28.454199>,  <37.839966, 35.607105, 28.348869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648357, 35.706062, 28.454199>,  <37.329014, 35.870995, 28.629747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648357, 35.706062, 28.454199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185349, -0.861680, 0.472392,
		-0.572944, -0.295796, -0.764356,
		0.798362, -0.412326, -0.438868,
		37.887867, 35.582363, 28.322538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132580, 35.180454, 28.453276>,  <37.329014, 35.870995, 28.629747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132580, 35.180454, 28.453276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530910, 35.182632, 28.489725>,  <37.769909, 35.183937, 28.511595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.530910, 35.182632, 28.489725>,  <37.132580, 35.180454, 28.453276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530910, 35.182632, 28.489725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053576, -0.773369, 0.631688,
		0.073911, -0.633932, -0.769849,
		0.995825, 0.005443, 0.091124,
		37.829659, 35.184265, 28.517063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433460, 34.430908, 28.296562>,  <37.132580, 35.180454, 28.453276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433460, 34.430908, 28.296562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710304, 34.625397, 28.509943>,  <37.876411, 34.742088, 28.637972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710304, 34.625397, 28.509943>,  <37.433460, 34.430908, 28.296562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710304, 34.625397, 28.509943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130578, -0.811218, 0.569978,
		0.709881, -0.324831, -0.624943,
		0.692111, 0.486220, 0.533452,
		37.917938, 34.771263, 28.669979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876511, 33.934479, 28.510492>,  <37.433460, 34.430908, 28.296562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876511, 33.934479, 28.510492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976585, 34.232281, 28.758078>,  <38.036629, 34.410961, 28.906630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976585, 34.232281, 28.758078>,  <37.876511, 33.934479, 28.510492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976585, 34.232281, 28.758078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304967, -0.667349, 0.679441,
		0.918913, 0.018777, -0.394012,
		0.250186, 0.744508, 0.618962,
		38.051640, 34.455635, 28.943766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525738, 33.770477, 28.712566>,  <37.876511, 33.934479, 28.510492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525738, 33.770477, 28.712566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369934, 33.998386, 29.002018>,  <38.276451, 34.135132, 29.175690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369934, 33.998386, 29.002018>,  <38.525738, 33.770477, 28.712566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369934, 33.998386, 29.002018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511471, -0.519580, 0.684422,
		0.765950, 0.636704, -0.089042,
		-0.389510, 0.569776, 0.723628,
		38.253082, 34.169319, 29.219107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043259, 33.862221, 29.033779>,  <38.525738, 33.770477, 28.712566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043259, 33.862221, 29.033779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752995, 33.947674, 29.295399>,  <38.578838, 33.998943, 29.452372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752995, 33.947674, 29.295399>,  <39.043259, 33.862221, 29.033779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752995, 33.947674, 29.295399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569018, -0.348099, 0.745013,
		0.386831, 0.912792, 0.131043,
		-0.725658, 0.213629, 0.654051,
		38.535297, 34.011761, 29.491613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277748, 34.168060, 29.572691>,  <39.043259, 33.862221, 29.033779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277748, 34.168060, 29.572691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935719, 34.039291, 29.735277>,  <38.730499, 33.962029, 29.832829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935719, 34.039291, 29.735277>,  <39.277748, 34.168060, 29.572691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935719, 34.039291, 29.735277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503217, -0.326279, 0.800197,
		-0.124980, 0.888768, 0.440989,
		-0.855075, -0.321922, 0.406464,
		38.679195, 33.942715, 29.857216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210129, 34.370861, 30.374998>,  <39.277748, 34.168060, 29.572691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210129, 34.370861, 30.374998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970284, 34.056126, 30.316544>,  <38.826378, 33.867283, 30.281471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970284, 34.056126, 30.316544>,  <39.210129, 34.370861, 30.374998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970284, 34.056126, 30.316544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450235, -0.482627, 0.751239,
		-0.661633, 0.384653, 0.643649,
		-0.599609, -0.786837, -0.146138,
		38.790401, 33.820076, 30.272701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121471, 34.063175, 31.111612>,  <39.210129, 34.370861, 30.374998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121471, 34.063175, 31.111612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032551, 33.788258, 30.835003>,  <38.979198, 33.623306, 30.669037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.032551, 33.788258, 30.835003>,  <39.121471, 34.063175, 31.111612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032551, 33.788258, 30.835003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352759, -0.717919, 0.600128,
		-0.908923, -0.110528, 0.402047,
		-0.222306, -0.687296, -0.691523,
		38.965858, 33.582069, 30.627546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671356, 33.605377, 31.441786>,  <39.121471, 34.063175, 31.111612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671356, 33.605377, 31.441786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813225, 33.376049, 31.146349>,  <38.898346, 33.238453, 30.969088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813225, 33.376049, 31.146349>,  <38.671356, 33.605377, 31.441786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813225, 33.376049, 31.146349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334359, -0.659937, 0.672821,
		-0.873163, -0.485583, -0.042366,
		0.354670, -0.573317, -0.738591,
		38.919624, 33.204056, 30.924772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595940, 32.883320, 31.676083>,  <38.671356, 33.605377, 31.441786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595940, 32.883320, 31.676083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889030, 32.867016, 31.404362>,  <39.064884, 32.857235, 31.241329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.889030, 32.867016, 31.404362>,  <38.595940, 32.883320, 31.676083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889030, 32.867016, 31.404362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531862, -0.588428, 0.608996,
		-0.424544, -0.807522, -0.409477,
		0.732725, -0.040761, -0.679303,
		39.108849, 32.854786, 31.200571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723675, 32.227562, 31.639627>,  <38.595940, 32.883320, 31.676083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723675, 32.227562, 31.639627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051258, 32.365101, 31.455854>,  <39.247807, 32.447624, 31.345591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051258, 32.365101, 31.455854>,  <38.723675, 32.227562, 31.639627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051258, 32.365101, 31.455854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524894, -0.772434, 0.357536,
		-0.231941, -0.533959, -0.813075,
		0.818956, 0.343851, -0.459431,
		39.296944, 32.468258, 31.318026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159798, 31.587528, 31.269484>,  <38.723675, 32.227562, 31.639627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159798, 31.587528, 31.269484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388214, 31.906576, 31.347168>,  <39.525265, 32.098003, 31.393780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388214, 31.906576, 31.347168>,  <39.159798, 31.587528, 31.269484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388214, 31.906576, 31.347168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593634, -0.564619, 0.573414,
		0.567023, -0.212149, -0.795913,
		0.571037, 0.797620, 0.194213,
		39.559525, 32.145863, 31.405432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823044, 31.382282, 31.220894>,  <39.159798, 31.587528, 31.269484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823044, 31.382282, 31.220894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872326, 31.705032, 31.451984>,  <39.901894, 31.898684, 31.590639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.872326, 31.705032, 31.451984>,  <39.823044, 31.382282, 31.220894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872326, 31.705032, 31.451984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614012, -0.519333, 0.594376,
		0.779621, 0.281502, -0.559417,
		0.123205, 0.806877, 0.577729,
		39.909286, 31.947096, 31.625303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443542, 31.258732, 31.519152>,  <39.823044, 31.382282, 31.220894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443542, 31.258732, 31.519152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279930, 31.529243, 31.764212>,  <40.181763, 31.691549, 31.911247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279930, 31.529243, 31.764212>,  <40.443542, 31.258732, 31.519152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279930, 31.529243, 31.764212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459523, -0.427388, 0.778574,
		0.788371, 0.599991, -0.135948,
		-0.409034, 0.676277, 0.612650,
		40.157219, 31.732126, 31.948008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054855, 30.854805, 31.441301>,  <40.443542, 31.258732, 31.519152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054855, 30.854805, 31.441301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432381, 30.755287, 31.354288>,  <41.658894, 30.695576, 31.302080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.432381, 30.755287, 31.354288>,  <41.054855, 30.854805, 31.441301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432381, 30.755287, 31.354288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055585, 0.529350, -0.846581,
		0.325776, 0.811104, 0.485777,
		0.943812, -0.248794, -0.217535,
		41.715523, 30.680649, 31.289028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486465, 31.451342, 31.359669>,  <41.054855, 30.854805, 31.441301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486465, 31.451342, 31.359669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.672462, 31.161713, 31.155905>,  <41.784061, 30.987936, 31.033648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.672462, 31.161713, 31.155905>,  <41.486465, 31.451342, 31.359669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672462, 31.161713, 31.155905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034399, 0.560188, -0.827651,
		0.884644, 0.402378, 0.235578,
		0.464997, -0.724072, -0.509408,
		41.811962, 30.944490, 31.003082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019745, 31.827291, 31.014668>,  <41.486465, 31.451342, 31.359669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019745, 31.827291, 31.014668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.981102, 31.489069, 30.804636>,  <41.957916, 31.286137, 30.678617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.981102, 31.489069, 30.804636>,  <42.019745, 31.827291, 31.014668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981102, 31.489069, 30.804636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004467, 0.527171, -0.849748,
		0.995313, -0.084434, -0.047149,
		-0.096603, -0.845555, -0.525077,
		41.952122, 31.235403, 30.647114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537773, 31.815102, 30.446007>,  <42.019745, 31.827291, 31.014668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537773, 31.815102, 30.446007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.261642, 31.554836, 30.319462>,  <42.095966, 31.398676, 30.243534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.261642, 31.554836, 30.319462>,  <42.537773, 31.815102, 30.446007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261642, 31.554836, 30.319462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032886, 0.465037, -0.884680,
		0.722752, -0.600312, -0.342424,
		-0.690324, -0.650666, -0.316364,
		42.054546, 31.359636, 30.224552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792793, 31.514517, 29.846884>,  <42.537773, 31.815102, 30.446007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792793, 31.514517, 29.846884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.394180, 31.481812, 29.852968>,  <42.155010, 31.462189, 29.856619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.394180, 31.481812, 29.852968>,  <42.792793, 31.514517, 29.846884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394180, 31.481812, 29.852968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052971, 0.482992, -0.874021,
		0.064115, -0.871799, -0.485650,
		-0.996536, -0.081763, 0.015213,
		42.095219, 31.457283, 29.857533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605049, 31.167351, 29.182243>,  <42.792793, 31.514517, 29.846884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605049, 31.167351, 29.182243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.291851, 31.361984, 29.337246>,  <42.103931, 31.478764, 29.430248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.291851, 31.361984, 29.337246>,  <42.605049, 31.167351, 29.182243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291851, 31.361984, 29.337246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149967, 0.456926, -0.876771,
		-0.603684, -0.744618, -0.284798,
		-0.782991, 0.486583, 0.387508,
		42.056953, 31.507959, 29.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249458, 31.217426, 28.603588>,  <42.605049, 31.167351, 29.182243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249458, 31.217426, 28.603588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068459, 31.461468, 28.863747>,  <41.959858, 31.607893, 29.019842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.068459, 31.461468, 28.863747>,  <42.249458, 31.217426, 28.603588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068459, 31.461468, 28.863747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338872, 0.556988, -0.758242,
		-0.824869, -0.563507, -0.045291,
		-0.452501, 0.610102, 0.650398,
		41.932709, 31.644499, 29.058867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597004, 31.297745, 28.310362>,  <42.249458, 31.217426, 28.603588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597004, 31.297745, 28.310362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653427, 31.612019, 28.551294>,  <41.687283, 31.800583, 28.695854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.653427, 31.612019, 28.551294>,  <41.597004, 31.297745, 28.310362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653427, 31.612019, 28.551294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383882, 0.604219, -0.698250,
		-0.912544, -0.132729, 0.386841,
		0.141059, 0.785686, 0.602329,
		41.695744, 31.847725, 28.731993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034222, 31.696173, 28.260050>,  <41.597004, 31.297745, 28.310362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034222, 31.696173, 28.260050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.279480, 31.959927, 28.434069>,  <41.426636, 32.118179, 28.538481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.279480, 31.959927, 28.434069>,  <41.034222, 31.696173, 28.260050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279480, 31.959927, 28.434069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286074, 0.698669, -0.655761,
		-0.736355, 0.277618, 0.617016,
		0.613142, 0.659386, 0.435049,
		41.463421, 32.157742, 28.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589874, 32.271896, 28.459009>,  <41.034222, 31.696173, 28.260050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589874, 32.271896, 28.459009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965790, 32.400124, 28.411621>,  <41.191338, 32.477058, 28.383188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965790, 32.400124, 28.411621>,  <40.589874, 32.271896, 28.459009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965790, 32.400124, 28.411621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333919, 0.787471, -0.518062,
		-0.072782, 0.526427, 0.847099,
		0.939788, 0.320569, -0.118470,
		41.247726, 32.496296, 28.376080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544079, 33.005573, 28.444019>,  <40.589874, 32.271896, 28.459009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544079, 33.005573, 28.444019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.898453, 32.950058, 28.266994>,  <41.111076, 32.916748, 28.160780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.898453, 32.950058, 28.266994>,  <40.544079, 33.005573, 28.444019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898453, 32.950058, 28.266994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056354, 0.914897, -0.399734,
		0.460378, 0.379078, 0.802716,
		0.885933, -0.138792, -0.442561,
		41.164234, 32.908421, 28.134226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787365, 33.623119, 28.446753>,  <40.544079, 33.005573, 28.444019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787365, 33.623119, 28.446753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033936, 33.448647, 28.184526>,  <41.181877, 33.343964, 28.027191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033936, 33.448647, 28.184526>,  <40.787365, 33.623119, 28.446753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033936, 33.448647, 28.184526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022572, 0.842000, -0.539005,
		0.787092, 0.317457, 0.528873,
		0.616422, -0.436184, -0.655566,
		41.218861, 33.317791, 27.987856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104576, 34.188881, 28.247610>,  <40.787365, 33.623119, 28.446753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104576, 34.188881, 28.247610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172539, 33.914577, 27.964520>,  <41.213314, 33.749996, 27.794666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.172539, 33.914577, 27.964520>,  <41.104576, 34.188881, 28.247610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172539, 33.914577, 27.964520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116792, 0.699093, -0.705428,
		0.978516, 0.202511, 0.038687,
		0.169902, -0.685754, -0.707725,
		41.223511, 33.708851, 27.752201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549618, 34.479935, 27.770000>,  <41.104576, 34.188881, 28.247610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549618, 34.479935, 27.770000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375763, 34.190121, 27.556032>,  <41.271450, 34.016232, 27.427652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375763, 34.190121, 27.556032>,  <41.549618, 34.479935, 27.770000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375763, 34.190121, 27.556032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094037, 0.627220, -0.773144,
		0.895682, -0.285736, -0.340747,
		-0.434638, -0.724535, -0.534920,
		41.245373, 33.972759, 27.395555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729572, 34.763512, 27.135077>,  <41.549618, 34.479935, 27.770000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729572, 34.763512, 27.135077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.446747, 34.488731, 27.067942>,  <41.277054, 34.323864, 27.027660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.446747, 34.488731, 27.067942>,  <41.729572, 34.763512, 27.135077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446747, 34.488731, 27.067942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290642, 0.498671, -0.816611,
		0.644665, -0.528612, -0.552246,
		-0.707060, -0.686947, -0.167839,
		41.234627, 34.282646, 27.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843292, 34.565727, 26.496078>,  <41.729572, 34.763512, 27.135077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843292, 34.565727, 26.496078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.463470, 34.479523, 26.587204>,  <41.235577, 34.427799, 26.641880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.463470, 34.479523, 26.587204>,  <41.843292, 34.565727, 26.496078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463470, 34.479523, 26.587204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311925, 0.574159, -0.756997,
		0.032338, -0.789872, -0.612418,
		-0.949556, -0.215508, 0.227814,
		41.178604, 34.414871, 26.655548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600559, 34.387520, 25.889875>,  <41.843292, 34.565727, 26.496078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600559, 34.387520, 25.889875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.283585, 34.490974, 26.110838>,  <41.093399, 34.553047, 26.243416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.283585, 34.490974, 26.110838>,  <41.600559, 34.387520, 25.889875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283585, 34.490974, 26.110838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387282, 0.486328, -0.783261,
		-0.471232, -0.834621, -0.285217,
		-0.792435, 0.258638, 0.552407,
		41.045853, 34.568565, 26.276560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939957, 34.234947, 25.454893>,  <41.600559, 34.387520, 25.889875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939957, 34.234947, 25.454893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.854355, 34.508625, 25.733770>,  <40.802994, 34.672832, 25.901096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.854355, 34.508625, 25.733770>,  <40.939957, 34.234947, 25.454893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854355, 34.508625, 25.733770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250841, 0.651303, -0.716159,
		-0.944077, -0.328145, 0.032243,
		-0.214004, 0.684197, 0.697192,
		40.790154, 34.713882, 25.942928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215191, 34.281731, 25.335493>,  <40.939957, 34.234947, 25.454893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215191, 34.281731, 25.335493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325939, 34.620384, 25.517282>,  <40.392387, 34.823578, 25.626356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325939, 34.620384, 25.517282>,  <40.215191, 34.281731, 25.335493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325939, 34.620384, 25.517282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390704, 0.531292, -0.751717,
		-0.877890, 0.030566, 0.477885,
		0.276874, 0.846637, 0.454474,
		40.409000, 34.874374, 25.653625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.604080, 34.819618, 25.244724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924839, 35.040775, 25.335297>,  <40.117294, 35.173470, 25.389641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924839, 35.040775, 25.335297>,  <39.604080, 34.819618, 25.244724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924839, 35.040775, 25.335297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214371, 0.620013, -0.754738,
		-0.557680, 0.556681, 0.615710,
		0.801897, 0.552892, 0.226433,
		40.165409, 35.206642, 25.403227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321735, 35.479252, 25.399387>,  <39.604080, 34.819618, 25.244724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321735, 35.479252, 25.399387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710342, 35.523403, 25.315517>,  <39.943508, 35.549896, 25.265196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710342, 35.523403, 25.315517>,  <39.321735, 35.479252, 25.399387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710342, 35.523403, 25.315517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211816, 0.801192, -0.559666,
		0.106212, 0.588139, 0.801755,
		0.971521, 0.110381, -0.209674,
		40.001801, 35.556519, 25.252615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427959, 36.246067, 25.513351>,  <39.321735, 35.479252, 25.399387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427959, 36.246067, 25.513351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735096, 36.104462, 25.299776>,  <39.919376, 36.019497, 25.171631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735096, 36.104462, 25.299776>,  <39.427959, 36.246067, 25.513351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735096, 36.104462, 25.299776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021053, 0.846944, -0.531266,
		0.640293, 0.396687, 0.657772,
		0.767842, -0.354014, -0.533940,
		39.965450, 35.998257, 25.139593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033501, 36.667637, 25.597889>,  <39.427959, 36.246067, 25.513351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033501, 36.667637, 25.597889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058754, 36.501801, 25.234762>,  <40.073906, 36.402298, 25.016886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058754, 36.501801, 25.234762>,  <40.033501, 36.667637, 25.597889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058754, 36.501801, 25.234762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002034, 0.909682, -0.415300,
		0.998003, 0.024373, 0.058276,
		0.063134, -0.414589, -0.907816,
		40.077694, 36.377422, 24.962418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390656, 37.096058, 25.263432>,  <40.033501, 36.667637, 25.597889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390656, 37.096058, 25.263432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228924, 36.906158, 24.950733>,  <40.131886, 36.792217, 24.763113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228924, 36.906158, 24.950733>,  <40.390656, 37.096058, 25.263432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228924, 36.906158, 24.950733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042547, 0.844043, -0.534586,
		0.913622, -0.249412, -0.321075,
		-0.404333, -0.474748, -0.781747,
		40.107624, 36.763733, 24.716209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625385, 37.459164, 24.625729>,  <40.390656, 37.096058, 25.263432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625385, 37.459164, 24.625729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307869, 37.256100, 24.491753>,  <40.117359, 37.134262, 24.411367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307869, 37.256100, 24.491753>,  <40.625385, 37.459164, 24.625729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307869, 37.256100, 24.491753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147486, 0.694947, -0.703773,
		0.590040, -0.509248, -0.626513,
		-0.793788, -0.507657, -0.334939,
		40.069733, 37.103802, 24.391272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714130, 37.333328, 23.904198>,  <40.625385, 37.459164, 24.625729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714130, 37.333328, 23.904198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317989, 37.297928, 23.946865>,  <40.080307, 37.276688, 23.972466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317989, 37.297928, 23.946865>,  <40.714130, 37.333328, 23.904198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317989, 37.297928, 23.946865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138593, 0.641550, -0.754457,
		-0.001666, -0.761959, -0.647624,
		-0.990348, -0.088499, 0.106671,
		40.020885, 37.271378, 23.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406658, 37.177006, 23.198288>,  <40.714130, 37.333328, 23.904198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406658, 37.177006, 23.198288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.122799, 37.333603, 23.432598>,  <39.952484, 37.427559, 23.573185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.122799, 37.333603, 23.432598>,  <40.406658, 37.177006, 23.198288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122799, 37.333603, 23.432598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192226, 0.692288, -0.695548,
		-0.677826, -0.606196, -0.416027,
		-0.709649, 0.391489, 0.585777,
		39.909904, 37.451050, 23.608332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779781, 37.142750, 22.716164>,  <40.406658, 37.177006, 23.198288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779781, 37.142750, 22.716164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715065, 37.433777, 22.982836>,  <39.676235, 37.608395, 23.142839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715065, 37.433777, 22.982836>,  <39.779781, 37.142750, 22.716164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715065, 37.433777, 22.982836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396820, 0.570589, -0.719000,
		-0.903526, -0.380878, 0.196401,
		-0.161787, 0.727571, 0.666682,
		39.666531, 37.652050, 23.182840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149723, 37.304806, 22.632956>,  <39.779781, 37.142750, 22.716164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149723, 37.304806, 22.632956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263397, 37.619583, 22.852030>,  <39.331600, 37.808449, 22.983475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263397, 37.619583, 22.852030>,  <39.149723, 37.304806, 22.632956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263397, 37.619583, 22.852030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392138, 0.616673, -0.682599,
		-0.874910, -0.020783, 0.483840,
		0.284184, 0.786945, 0.547683,
		39.348652, 37.855667, 23.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514645, 37.698997, 22.646090>,  <39.149723, 37.304806, 22.632956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514645, 37.698997, 22.646090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822319, 37.940022, 22.731199>,  <39.006924, 38.084637, 22.782265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822319, 37.940022, 22.731199>,  <38.514645, 37.698997, 22.646090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822319, 37.940022, 22.731199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335931, 0.664536, -0.667489,
		-0.543595, 0.441948, 0.713572,
		0.769190, 0.602555, 0.212775,
		39.053078, 38.120789, 22.795033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122227, 38.358582, 22.708773>,  <38.514645, 37.698997, 22.646090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122227, 38.358582, 22.708773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505585, 38.461506, 22.659348>,  <38.735600, 38.523262, 22.629692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505585, 38.461506, 22.659348>,  <38.122227, 38.358582, 22.708773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505585, 38.461506, 22.659348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284042, 0.816861, -0.502055,
		-0.028251, 0.516264, 0.855963,
		0.958396, 0.257313, -0.123563,
		38.793102, 38.538700, 22.622278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253391, 39.012718, 22.967817>,  <38.122227, 38.358582, 22.708773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253391, 39.012718, 22.967817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563190, 38.973972, 22.717772>,  <38.749069, 38.950726, 22.567743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563190, 38.973972, 22.717772>,  <38.253391, 39.012718, 22.967817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563190, 38.973972, 22.717772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197112, 0.902049, -0.383999,
		0.601081, 0.420624, 0.679541,
		0.774498, -0.096869, -0.625115,
		38.795540, 38.944912, 22.530237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532558, 39.575474, 23.041687>,  <38.253391, 39.012718, 22.967817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532558, 39.575474, 23.041687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.649265, 39.428921, 22.688272>,  <38.719288, 39.340988, 22.476223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.649265, 39.428921, 22.688272>,  <38.532558, 39.575474, 23.041687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649265, 39.428921, 22.688272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294881, 0.844279, -0.447480,
		0.909900, 0.391098, 0.138294,
		0.291767, -0.366381, -0.883537,
		38.736794, 39.319008, 22.423212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042603, 40.172474, 22.779266>,  <38.532558, 39.575474, 23.041687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042603, 40.172474, 22.779266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898445, 39.930191, 22.495510>,  <38.811951, 39.784821, 22.325256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898445, 39.930191, 22.495510>,  <39.042603, 40.172474, 22.779266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898445, 39.930191, 22.495510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078670, 0.738052, -0.670142,
		0.929477, -0.297323, -0.218339,
		-0.360394, -0.605705, -0.709392,
		38.790325, 39.748478, 22.282692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447613, 40.221931, 22.293226>,  <39.042603, 40.172474, 22.779266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447613, 40.221931, 22.293226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126190, 40.084042, 22.099127>,  <38.933338, 40.001308, 21.982668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126190, 40.084042, 22.099127>,  <39.447613, 40.221931, 22.293226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126190, 40.084042, 22.099127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155317, 0.665550, -0.730014,
		0.574612, -0.661972, -0.481263,
		-0.803553, -0.344727, -0.485248,
		38.885124, 39.980625, 21.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679306, 40.455791, 21.669184>,  <39.447613, 40.221931, 22.293226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679306, 40.455791, 21.669184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292976, 40.363110, 21.622713>,  <39.061180, 40.307499, 21.594830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.292976, 40.363110, 21.622713>,  <39.679306, 40.455791, 21.669184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292976, 40.363110, 21.622713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088403, 0.715802, -0.692685,
		0.243661, -0.658741, -0.711821,
		-0.965823, -0.231707, -0.116178,
		39.003231, 40.293598, 21.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451210, 40.456268, 20.864861>,  <39.679306, 40.455791, 21.669184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451210, 40.456268, 20.864861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129066, 40.517395, 21.093958>,  <38.935780, 40.554073, 21.231417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129066, 40.517395, 21.093958>,  <39.451210, 40.456268, 20.864861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129066, 40.517395, 21.093958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269378, 0.766322, -0.583254,
		-0.528040, -0.624016, -0.576001,
		-0.805362, 0.152820, 0.572746,
		38.887459, 40.563240, 21.265781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990406, 40.549583, 20.384325>,  <39.451210, 40.456268, 20.864861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990406, 40.549583, 20.384325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844395, 40.713612, 20.718653>,  <38.756786, 40.812027, 20.919250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844395, 40.713612, 20.718653>,  <38.990406, 40.549583, 20.384325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844395, 40.713612, 20.718653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339213, 0.777476, -0.529590,
		-0.866999, -0.476838, -0.144703,
		-0.365032, 0.410068, 0.835820,
		38.734886, 40.836632, 20.969398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415070, 40.833382, 20.153160>,  <38.990406, 40.549583, 20.384325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415070, 40.833382, 20.153160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484299, 41.021667, 20.499218>,  <38.525837, 41.134640, 20.706852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.484299, 41.021667, 20.499218>,  <38.415070, 40.833382, 20.153160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484299, 41.021667, 20.499218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384507, 0.840988, -0.380648,
		-0.906752, -0.266774, 0.326545,
		0.173074, 0.470713, 0.865145,
		38.536221, 41.162880, 20.758760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802288, 41.350365, 20.318203>,  <38.415070, 40.833382, 20.153160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802288, 41.350365, 20.318203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124355, 41.468552, 20.523884>,  <38.317596, 41.539463, 20.647293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124355, 41.468552, 20.523884>,  <37.802288, 41.350365, 20.318203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124355, 41.468552, 20.523884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173816, 0.946548, -0.271726,
		-0.567003, 0.129409, 0.813487,
		0.805168, 0.295466, 0.514202,
		38.365906, 41.557190, 20.678144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632500, 42.075382, 20.539534>,  <37.802288, 41.350365, 20.318203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632500, 42.075382, 20.539534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028824, 42.034012, 20.574394>,  <38.266617, 42.009190, 20.595310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.028824, 42.034012, 20.574394>,  <37.632500, 42.075382, 20.539534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028824, 42.034012, 20.574394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117144, 0.978326, -0.170748,
		-0.067600, 0.179388, 0.981453,
		0.990812, -0.103428, 0.087150,
		38.326069, 42.002983, 20.600538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978828, 42.541992, 21.017378>,  <37.632500, 42.075382, 20.539534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978828, 42.541992, 21.017378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220890, 42.434303, 20.717693>,  <38.366127, 42.369690, 20.537884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220890, 42.434303, 20.717693>,  <37.978828, 42.541992, 21.017378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220890, 42.434303, 20.717693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144555, 0.962600, -0.229138,
		0.782877, 0.030361, 0.621435,
		0.605151, -0.269219, -0.749209,
		38.402435, 42.353539, 20.492931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517067, 43.021736, 20.986250>,  <37.978828, 42.541992, 21.017378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517067, 43.021736, 20.986250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470104, 42.885281, 20.613190>,  <38.441929, 42.803406, 20.389353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470104, 42.885281, 20.613190>,  <38.517067, 43.021736, 20.986250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470104, 42.885281, 20.613190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100107, 0.930298, -0.352881,
		0.988026, -0.134794, -0.075069,
		-0.117403, -0.341140, -0.932652,
		38.434883, 42.782940, 20.333395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428413, 43.806843, 21.208735>,  <38.517067, 43.021736, 20.986250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428413, 43.806843, 21.208735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256115, 43.943394, 21.542900>,  <38.152737, 44.025326, 21.743401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256115, 43.943394, 21.542900>,  <38.428413, 43.806843, 21.208735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256115, 43.943394, 21.542900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140942, -0.888891, 0.435900,
		0.891400, 0.305507, 0.334770,
		-0.430745, 0.341378, 0.835416,
		38.126892, 44.045807, 21.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846230, 43.659492, 21.839947>,  <38.428413, 43.806843, 21.208735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846230, 43.659492, 21.839947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471291, 43.704502, 21.971840>,  <38.246326, 43.731510, 22.050976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.471291, 43.704502, 21.971840>,  <38.846230, 43.659492, 21.839947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471291, 43.704502, 21.971840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049486, -0.893810, 0.445707,
		0.344873, 0.434098, 0.832239,
		-0.937344, 0.112528, 0.329733,
		38.190086, 43.738262, 22.070761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892620, 43.643124, 22.567579>,  <38.846230, 43.659492, 21.839947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892620, 43.643124, 22.567579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519814, 43.545570, 22.460352>,  <38.296127, 43.487038, 22.396015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.519814, 43.545570, 22.460352>,  <38.892620, 43.643124, 22.567579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519814, 43.545570, 22.460352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039817, -0.804116, 0.593138,
		-0.360217, 0.542142, 0.759161,
		-0.932019, -0.243886, -0.268069,
		38.240208, 43.472404, 22.379930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579575, 43.621998, 23.250380>,  <38.892620, 43.643124, 22.567579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579575, 43.621998, 23.250380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335346, 43.433376, 22.995872>,  <38.188808, 43.320202, 22.843168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335346, 43.433376, 22.995872>,  <38.579575, 43.621998, 23.250380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335346, 43.433376, 22.995872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002203, -0.802393, 0.596792,
		-0.791959, 0.365785, 0.488878,
		-0.610570, -0.471558, -0.636268,
		38.152176, 43.291908, 22.804993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920635, 43.485115, 23.593239>,  <38.579575, 43.621998, 23.250380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920635, 43.485115, 23.593239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965366, 43.215721, 23.300961>,  <37.992203, 43.054085, 23.125593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.965366, 43.215721, 23.300961>,  <37.920635, 43.485115, 23.593239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965366, 43.215721, 23.300961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110753, -0.739175, 0.664345,
		-0.987537, 0.006637, -0.157248,
		0.111824, -0.673480, -0.730698,
		37.998913, 43.013676, 23.081751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344048, 42.996540, 23.623833>,  <37.920635, 43.485115, 23.593239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344048, 42.996540, 23.623833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633389, 42.791973, 23.438269>,  <37.806992, 42.669231, 23.326931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633389, 42.791973, 23.438269>,  <37.344048, 42.996540, 23.623833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633389, 42.791973, 23.438269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081744, -0.730570, 0.677928,
		-0.685618, -0.452462, -0.570268,
		0.723357, -0.511416, -0.463906,
		37.850395, 42.638546, 23.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260082, 42.316898, 23.980587>,  <37.344048, 42.996540, 23.623833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260082, 42.316898, 23.980587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600254, 42.266266, 23.776331>,  <37.804356, 42.235886, 23.653778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600254, 42.266266, 23.776331>,  <37.260082, 42.316898, 23.980587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600254, 42.266266, 23.776331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219558, -0.796659, 0.563142,
		-0.478090, -0.591026, -0.649707,
		0.850426, -0.126584, -0.510639,
		37.855381, 42.228291, 23.623138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267021, 41.581230, 23.730837>,  <37.260082, 42.316898, 23.980587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267021, 41.581230, 23.730837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643654, 41.713287, 23.757473>,  <37.869633, 41.792522, 23.773455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643654, 41.713287, 23.757473>,  <37.267021, 41.581230, 23.730837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643654, 41.713287, 23.757473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197632, -0.701721, 0.684492,
		0.272704, -0.631345, -0.725973,
		0.941581, 0.330139, 0.066588,
		37.926128, 41.812328, 23.777449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665039, 41.062954, 23.472954>,  <37.267021, 41.581230, 23.730837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665039, 41.062954, 23.472954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902863, 41.266834, 23.721697>,  <38.045555, 41.389164, 23.870941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902863, 41.266834, 23.721697>,  <37.665039, 41.062954, 23.472954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902863, 41.266834, 23.721697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057574, -0.798405, 0.599362,
		0.801988, -0.320554, -0.504045,
		0.594559, 0.509701, 0.621855,
		38.081230, 41.419746, 23.908253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250523, 40.640995, 23.486275>,  <37.665039, 41.062954, 23.472954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250523, 40.640995, 23.486275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283901, 40.865246, 23.815815>,  <38.303928, 40.999798, 24.013538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283901, 40.865246, 23.815815>,  <38.250523, 40.640995, 23.486275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283901, 40.865246, 23.815815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385783, -0.780444, 0.492014,
		0.918808, 0.276769, -0.281409,
		0.083450, 0.560629, 0.823851,
		38.308937, 41.033436, 24.062971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983658, 40.420448, 23.814339>,  <38.250523, 40.640995, 23.486275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983658, 40.420448, 23.814339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787579, 40.592155, 24.117769>,  <38.669933, 40.695179, 24.299828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.787579, 40.592155, 24.117769>,  <38.983658, 40.420448, 23.814339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787579, 40.592155, 24.117769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254902, -0.761658, 0.595737,
		0.833507, 0.485389, 0.263938,
		-0.490194, 0.429272, 0.758574,
		38.640522, 40.720936, 24.345341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489555, 40.345684, 24.390934>,  <38.983658, 40.420448, 23.814339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489555, 40.345684, 24.390934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133129, 40.423813, 24.554813>,  <38.919273, 40.470692, 24.653141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133129, 40.423813, 24.554813>,  <39.489555, 40.345684, 24.390934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133129, 40.423813, 24.554813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143818, -0.734646, 0.663032,
		0.430490, 0.649726, 0.626526,
		-0.891064, 0.195323, 0.409700,
		38.865810, 40.482410, 24.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532715, 40.148212, 25.001757>,  <39.489555, 40.345684, 24.390934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532715, 40.148212, 25.001757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135319, 40.112797, 24.973061>,  <38.896881, 40.091549, 24.955843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135319, 40.112797, 24.973061>,  <39.532715, 40.148212, 25.001757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135319, 40.112797, 24.973061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016312, -0.733577, 0.679411,
		-0.112781, 0.673815, 0.730243,
		-0.993486, -0.088536, -0.071742,
		38.837273, 40.086235, 24.951538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327923, 39.949707, 25.678429>,  <39.532715, 40.148212, 25.001757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327923, 39.949707, 25.678429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023823, 39.831516, 25.447008>,  <38.841362, 39.760601, 25.308157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023823, 39.831516, 25.447008>,  <39.327923, 39.949707, 25.678429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023823, 39.831516, 25.447008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003749, -0.892557, 0.450919,
		-0.649624, 0.340641, 0.679671,
		-0.760246, -0.295476, -0.578549,
		38.795750, 39.742874, 25.273443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885563, 39.652390, 26.123987>,  <39.327923, 39.949707, 25.678429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885563, 39.652390, 26.123987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737610, 39.501892, 25.784193>,  <38.648838, 39.411594, 25.580317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737610, 39.501892, 25.784193>,  <38.885563, 39.652390, 26.123987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737610, 39.501892, 25.784193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005422, -0.913442, 0.406934,
		-0.929061, 0.155126, 0.335830,
		-0.369887, -0.376246, -0.849484,
		38.626644, 39.389019, 25.529348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325474, 39.271397, 26.287081>,  <38.885563, 39.652390, 26.123987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325474, 39.271397, 26.287081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382687, 39.121048, 25.920855>,  <38.417015, 39.030838, 25.701118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382687, 39.121048, 25.920855>,  <38.325474, 39.271397, 26.287081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382687, 39.121048, 25.920855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072688, -0.926568, 0.369037,
		-0.987045, 0.013765, -0.159852,
		0.143034, -0.375875, -0.915565,
		38.425598, 39.008286, 25.646185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814091, 38.878059, 26.191099>,  <38.325474, 39.271397, 26.287081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814091, 38.878059, 26.191099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123310, 38.760181, 25.966402>,  <38.308842, 38.689453, 25.831585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123310, 38.760181, 25.966402>,  <37.814091, 38.878059, 26.191099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123310, 38.760181, 25.966402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110878, -0.934680, 0.337758,
		-0.624583, -0.198818, -0.755227,
		0.773047, -0.294696, -0.561740,
		38.355225, 38.671772, 25.797880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538002, 38.316193, 25.876598>,  <37.814091, 38.878059, 26.191099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538002, 38.316193, 25.876598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937038, 38.293282, 25.860973>,  <38.176460, 38.279537, 25.851599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937038, 38.293282, 25.860973>,  <37.538002, 38.316193, 25.876598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937038, 38.293282, 25.860973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043577, -0.956263, 0.289245,
		-0.053919, -0.286847, -0.956458,
		0.997594, -0.057275, -0.039061,
		38.236317, 38.276100, 25.849255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645210, 37.704563, 25.614395>,  <37.538002, 38.316193, 25.876598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645210, 37.704563, 25.614395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996330, 37.812519, 25.772697>,  <38.207005, 37.877293, 25.867680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996330, 37.812519, 25.772697>,  <37.645210, 37.704563, 25.614395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996330, 37.812519, 25.772697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043832, -0.867965, 0.494687,
		0.477012, -0.416892, -0.773732,
		0.877804, 0.269886, 0.395756,
		38.259670, 37.893486, 25.891424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038601, 37.200642, 25.592430>,  <37.645210, 37.704563, 25.614395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038601, 37.200642, 25.592430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223572, 37.408314, 25.879932>,  <38.334557, 37.532917, 26.052433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223572, 37.408314, 25.879932>,  <38.038601, 37.200642, 25.592430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223572, 37.408314, 25.879932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032586, -0.820039, 0.571379,
		0.886056, -0.240802, -0.396130,
		0.462431, 0.519182, 0.718754,
		38.362301, 37.564068, 26.095558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.486698, 32.959667, 26.659086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 33.165012, 26.994965>,  <41.373348, 33.288219, 27.196491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 33.165012, 26.994965>,  <41.486698, 32.959667, 26.659086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415855, 33.165012, 26.994965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284556, -0.790034, 0.543023,
		0.942157, 0.335115, -0.006158,
		-0.177110, 0.513365, 0.839695,
		41.362724, 33.319023, 27.246874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918579, 32.671310, 27.093054>,  <41.486698, 32.959667, 26.659086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918579, 32.671310, 27.093054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722046, 32.891327, 27.363178>,  <41.604126, 33.023338, 27.525253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722046, 32.891327, 27.363178>,  <41.918579, 32.671310, 27.093054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722046, 32.891327, 27.363178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304635, -0.617854, 0.724882,
		0.815962, 0.561879, 0.136007,
		-0.491329, 0.550044, 0.675313,
		41.574646, 33.056339, 27.565773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350193, 32.818901, 27.624014>,  <41.918579, 32.671310, 27.093054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350193, 32.818901, 27.624014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990372, 32.860725, 27.793663>,  <41.774479, 32.885818, 27.895452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.990372, 32.860725, 27.793663>,  <42.350193, 32.818901, 27.624014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990372, 32.860725, 27.793663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299035, -0.560351, 0.772389,
		0.318419, 0.821628, 0.472796,
		-0.899549, 0.104561, 0.424122,
		41.720509, 32.892094, 27.920900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517967, 32.888699, 28.300943>,  <42.350193, 32.818901, 27.624014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517967, 32.888699, 28.300943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135277, 32.773808, 28.319595>,  <41.905663, 32.704872, 28.330786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135277, 32.773808, 28.319595>,  <42.517967, 32.888699, 28.300943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135277, 32.773808, 28.319595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202058, -0.540451, 0.816753,
		-0.209392, 0.790832, 0.575101,
		-0.956728, -0.287225, 0.046628,
		41.848259, 32.687641, 28.333584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412910, 32.937511, 29.043646>,  <42.517967, 32.888699, 28.300943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412910, 32.937511, 29.043646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134113, 32.696213, 28.888575>,  <41.966835, 32.551434, 28.795532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.134113, 32.696213, 28.888575>,  <42.412910, 32.937511, 29.043646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134113, 32.696213, 28.888575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185002, -0.673608, 0.715560,
		-0.692804, 0.427018, 0.581101,
		-0.696991, -0.603248, -0.387679,
		41.925014, 32.515240, 28.772270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955772, 32.781582, 29.617493>,  <42.412910, 32.937511, 29.043646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955772, 32.781582, 29.617493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895733, 32.506367, 29.333500>,  <41.859711, 32.341236, 29.163103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.895733, 32.506367, 29.333500>,  <41.955772, 32.781582, 29.617493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895733, 32.506367, 29.333500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150247, -0.693904, 0.704218,
		-0.977188, 0.212372, 0.000776,
		-0.150095, -0.688037, -0.709983,
		41.850704, 32.299957, 29.120504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387356, 32.504333, 29.919220>,  <41.955772, 32.781582, 29.617493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387356, 32.504333, 29.919220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.537701, 32.241631, 29.657719>,  <41.627907, 32.084007, 29.500818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.537701, 32.241631, 29.657719>,  <41.387356, 32.504333, 29.919220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537701, 32.241631, 29.657719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145045, -0.738483, 0.658486,
		-0.915253, -0.152678, -0.372829,
		0.375864, -0.656759, -0.653754,
		41.650459, 32.044601, 29.461592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910259, 31.884428, 29.941305>,  <41.387356, 32.504333, 29.919220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910259, 31.884428, 29.941305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.246414, 31.750124, 29.771124>,  <41.448109, 31.669542, 29.669016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.246414, 31.750124, 29.771124>,  <40.910259, 31.884428, 29.941305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246414, 31.750124, 29.771124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063354, -0.840471, 0.538140,
		-0.538267, -0.425294, -0.727595,
		0.840390, -0.335760, -0.425453,
		41.498531, 31.649397, 29.643488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818493, 31.157417, 29.855719>,  <40.910259, 31.884428, 29.941305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818493, 31.157417, 29.855719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207504, 31.249786, 29.843985>,  <41.440910, 31.305208, 29.836945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.207504, 31.249786, 29.843985>,  <40.818493, 31.157417, 29.855719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207504, 31.249786, 29.843985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188126, -0.705489, 0.683296,
		0.137091, -0.670045, -0.729552,
		0.972530, 0.230922, -0.029336,
		41.499264, 31.319063, 29.835184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166351, 30.496078, 29.960760>,  <40.818493, 31.157417, 29.855719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166351, 30.496078, 29.960760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459824, 30.759464, 30.027863>,  <41.635906, 30.917496, 30.068125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459824, 30.759464, 30.027863>,  <41.166351, 30.496078, 29.960760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459824, 30.759464, 30.027863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229411, -0.472424, 0.850991,
		0.639598, -0.585869, -0.497666,
		0.733679, 0.658463, 0.167757,
		41.679928, 30.957003, 30.078190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773148, 30.119833, 29.975822>,  <41.166351, 30.496078, 29.960760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773148, 30.119833, 29.975822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811951, 30.464371, 30.175291>,  <41.835232, 30.671093, 30.294971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811951, 30.464371, 30.175291>,  <41.773148, 30.119833, 29.975822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811951, 30.464371, 30.175291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350036, -0.498551, 0.793046,
		0.931700, 0.097622, -0.349865,
		0.097007, 0.861346, 0.498671,
		41.841053, 30.722775, 30.324892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428398, 30.068235, 30.314543>,  <41.773148, 30.119833, 29.975822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428398, 30.068235, 30.314543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226830, 30.340433, 30.527330>,  <42.105888, 30.503752, 30.655003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226830, 30.340433, 30.527330>,  <42.428398, 30.068235, 30.314543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226830, 30.340433, 30.527330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393824, -0.367128, 0.842686,
		0.768745, 0.634148, -0.082993,
		-0.503919, 0.680496, 0.531970,
		42.075653, 30.544582, 30.686922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858517, 30.141249, 30.948391>,  <42.428398, 30.068235, 30.314543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858517, 30.141249, 30.948391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501377, 30.299389, 31.034668>,  <42.287094, 30.394274, 31.086433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501377, 30.299389, 31.034668>,  <42.858517, 30.141249, 30.948391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501377, 30.299389, 31.034668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101868, -0.289235, 0.951823,
		0.438689, 0.871803, 0.217969,
		-0.892846, 0.395351, 0.215693,
		42.233524, 30.417994, 31.099377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965065, 30.575720, 31.547787>,  <42.858517, 30.141249, 30.948391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965065, 30.575720, 31.547787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590702, 30.434828, 31.549112>,  <42.366085, 30.350292, 31.549908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590702, 30.434828, 31.549112>,  <42.965065, 30.575720, 31.547787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590702, 30.434828, 31.549112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063589, -0.159690, 0.985117,
		-0.346459, 0.922189, 0.171853,
		-0.935907, -0.352231, 0.003315,
		42.309929, 30.329159, 31.550106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716740, 30.440506, 31.743813>,  <42.965065, 30.575720, 31.547787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716740, 30.440506, 31.743813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030819, 30.532612, 31.973749>,  <44.219265, 30.587875, 32.111710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.030819, 30.532612, 31.973749>,  <43.716740, 30.440506, 31.743813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030819, 30.532612, 31.973749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033059, 0.942557, -0.332405,
		-0.618363, 0.242000, 0.747706,
		0.785197, 0.230265, 0.574842,
		44.266376, 30.601692, 32.146202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513145, 30.896267, 32.317516>,  <43.716740, 30.440506, 31.743813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513145, 30.896267, 32.317516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904629, 30.963160, 32.269901>,  <44.139519, 31.003294, 32.241333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904629, 30.963160, 32.269901>,  <43.513145, 30.896267, 32.317516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904629, 30.963160, 32.269901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185111, 0.969649, -0.159736,
		0.088715, 0.178370, 0.979956,
		0.978705, 0.167230, -0.119041,
		44.198238, 31.013329, 32.234188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641434, 31.519661, 32.640888>,  <43.513145, 30.896267, 32.317516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641434, 31.519661, 32.640888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.958992, 31.488369, 32.399685>,  <44.149525, 31.469593, 32.254963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.958992, 31.488369, 32.399685>,  <43.641434, 31.519661, 32.640888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958992, 31.488369, 32.399685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024028, 0.986878, -0.159669,
		0.607583, 0.141249, 0.781596,
		0.793893, -0.078232, -0.603004,
		44.197159, 31.464899, 32.218784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104137, 32.020809, 32.832932>,  <43.641434, 31.519661, 32.640888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104137, 32.020809, 32.832932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208389, 31.944067, 32.454460>,  <44.270943, 31.898022, 32.227375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208389, 31.944067, 32.454460>,  <44.104137, 32.020809, 32.832932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208389, 31.944067, 32.454460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106095, 0.968428, -0.225591,
		0.959590, 0.159183, 0.232051,
		0.260634, -0.191855, -0.946182,
		44.286579, 31.886511, 32.170605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413010, 32.566761, 32.580978>,  <44.104137, 32.020809, 32.832932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413010, 32.566761, 32.580978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292286, 32.397682, 32.239162>,  <44.219852, 32.296234, 32.034073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292286, 32.397682, 32.239162>,  <44.413010, 32.566761, 32.580978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292286, 32.397682, 32.239162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036718, 0.900827, -0.432624,
		0.952660, -0.099194, -0.287401,
		-0.301812, -0.422696, -0.854539,
		44.201744, 32.270874, 31.982801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774654, 32.988232, 32.071533>,  <44.413010, 32.566761, 32.580978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774654, 32.988232, 32.071533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503326, 32.796093, 31.849129>,  <44.340530, 32.680809, 31.715687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503326, 32.796093, 31.849129>,  <44.774654, 32.988232, 32.071533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503326, 32.796093, 31.849129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171831, 0.839438, -0.515576,
		0.714393, -0.254185, -0.651945,
		-0.678319, -0.480349, -0.556012,
		44.299831, 32.651989, 31.682325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872082, 33.050018, 31.189495>,  <44.774654, 32.988232, 32.071533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872082, 33.050018, 31.189495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482239, 32.983208, 31.249144>,  <44.248333, 32.943123, 31.284933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482239, 32.983208, 31.249144>,  <44.872082, 33.050018, 31.189495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482239, 32.983208, 31.249144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222882, 0.787400, -0.574739,
		-0.021421, -0.593383, -0.804635,
		-0.974610, -0.167028, 0.149122,
		44.189857, 32.933098, 31.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545639, 33.221935, 30.552305>,  <44.872082, 33.050018, 31.189495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545639, 33.221935, 30.552305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243252, 33.195923, 30.812851>,  <44.061817, 33.180317, 30.969179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243252, 33.195923, 30.812851>,  <44.545639, 33.221935, 30.552305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243252, 33.195923, 30.812851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470750, 0.745440, -0.471926,
		-0.454865, -0.663393, -0.594144,
		-0.755971, -0.065031, 0.651367,
		44.016460, 33.176414, 31.008261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002285, 33.146923, 30.143770>,  <44.545639, 33.221935, 30.552305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002285, 33.146923, 30.143770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866592, 33.306778, 30.484407>,  <43.785175, 33.402691, 30.688789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866592, 33.306778, 30.484407>,  <44.002285, 33.146923, 30.143770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866592, 33.306778, 30.484407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377914, 0.771112, -0.512413,
		-0.861452, -0.495658, -0.110560,
		-0.339236, 0.399637, 0.851592,
		43.764820, 33.426670, 30.739885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306381, 33.210960, 30.024006>,  <44.002285, 33.146923, 30.143770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306381, 33.210960, 30.024006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393860, 33.478863, 30.307863>,  <43.446346, 33.639606, 30.478178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393860, 33.478863, 30.307863>,  <43.306381, 33.210960, 30.024006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393860, 33.478863, 30.307863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412170, 0.722592, -0.554957,
		-0.884469, -0.171124, 0.434086,
		0.218701, 0.669759, 0.709642,
		43.459469, 33.679790, 30.520756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838547, 33.716591, 29.803713>,  <43.306381, 33.210960, 30.024006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838547, 33.716591, 29.803713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062737, 33.901775, 30.078388>,  <43.197250, 34.012886, 30.243193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.062737, 33.901775, 30.078388>,  <42.838547, 33.716591, 29.803713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062737, 33.901775, 30.078388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270682, 0.886025, -0.376419,
		-0.782689, 0.025098, 0.621906,
		0.560472, 0.462958, 0.686688,
		43.230877, 34.040665, 30.284395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459805, 34.198677, 30.048500>,  <42.838547, 33.716591, 29.803713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459805, 34.198677, 30.048500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.819801, 34.340382, 30.150103>,  <43.035801, 34.425404, 30.211063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.819801, 34.340382, 30.150103>,  <42.459805, 34.198677, 30.048500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819801, 34.340382, 30.150103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233615, 0.883935, -0.405072,
		-0.368024, 0.305221, 0.878293,
		0.899990, 0.354258, 0.254005,
		43.089798, 34.446659, 30.226305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411976, 34.909409, 30.200436>,  <42.459805, 34.198677, 30.048500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411976, 34.909409, 30.200436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808376, 34.888920, 30.150961>,  <43.046215, 34.876625, 30.121275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808376, 34.888920, 30.150961>,  <42.411976, 34.909409, 30.200436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808376, 34.888920, 30.150961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020796, 0.853790, -0.520201,
		0.132250, 0.518091, 0.845039,
		0.990998, -0.051224, -0.123688,
		43.105675, 34.873554, 30.113855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681976, 35.538090, 30.423834>,  <42.411976, 34.909409, 30.200436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681976, 35.538090, 30.423834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971416, 35.404793, 30.182056>,  <43.145081, 35.324814, 30.036989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.971416, 35.404793, 30.182056>,  <42.681976, 35.538090, 30.423834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971416, 35.404793, 30.182056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019418, 0.885207, -0.464791,
		0.689948, 0.324585, 0.647005,
		0.723598, -0.333245, -0.604445,
		43.188496, 35.304821, 30.000723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966820, 36.003445, 30.972567>,  <42.681976, 35.538090, 30.423834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966820, 36.003445, 30.972567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951359, 36.305653, 31.234159>,  <42.942081, 36.486977, 31.391115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.951359, 36.305653, 31.234159>,  <42.966820, 36.003445, 30.972567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951359, 36.305653, 31.234159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063315, -0.655007, 0.752965,
		0.997245, -0.012305, 0.073151,
		-0.038649, 0.755523, 0.653982,
		42.939766, 36.532310, 31.430353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461754, 35.967422, 31.450859>,  <42.966820, 36.003445, 30.972567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461754, 35.967422, 31.450859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175171, 36.177967, 31.634001>,  <43.003220, 36.304295, 31.743887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175171, 36.177967, 31.634001>,  <43.461754, 35.967422, 31.450859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175171, 36.177967, 31.634001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140642, -0.533849, 0.833802,
		0.683304, 0.661779, 0.308453,
		-0.716460, 0.526359, 0.457855,
		42.960232, 36.335876, 31.771357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692684, 36.110813, 32.105534>,  <43.461754, 35.967422, 31.450859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692684, 36.110813, 32.105534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296299, 36.149052, 32.143177>,  <43.058468, 36.171993, 32.165764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296299, 36.149052, 32.143177>,  <43.692684, 36.110813, 32.105534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296299, 36.149052, 32.143177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045064, -0.423566, 0.904743,
		0.126352, 0.900807, 0.415430,
		-0.990961, 0.095595, 0.094112,
		42.999012, 36.177731, 32.171410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594833, 36.103268, 32.800774>,  <43.692684, 36.110813, 32.105534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594833, 36.103268, 32.800774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215935, 36.069622, 32.677067>,  <42.988594, 36.049435, 32.602844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215935, 36.069622, 32.677067>,  <43.594833, 36.103268, 32.800774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215935, 36.069622, 32.677067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279286, -0.256736, 0.925249,
		-0.157228, 0.962814, 0.219700,
		-0.947248, -0.084116, -0.309266,
		42.931759, 36.044388, 32.584286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153996, 36.355961, 33.341557>,  <43.594833, 36.103268, 32.800774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153996, 36.355961, 33.341557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902138, 36.117924, 33.141788>,  <42.751022, 35.975101, 33.021927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902138, 36.117924, 33.141788>,  <43.153996, 36.355961, 33.341557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902138, 36.117924, 33.141788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316839, -0.390253, 0.864474,
		-0.709338, 0.702546, 0.057173,
		-0.629644, -0.595090, -0.499416,
		42.713245, 35.939396, 32.991962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495308, 36.288631, 33.739021>,  <43.153996, 36.355961, 33.341557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495308, 36.288631, 33.739021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473774, 35.980083, 33.485378>,  <42.460854, 35.794956, 33.333191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473774, 35.980083, 33.485378>,  <42.495308, 36.288631, 33.739021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473774, 35.980083, 33.485378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445715, -0.549698, 0.706519,
		-0.893555, 0.320666, -0.314219,
		-0.053831, -0.771366, -0.634111,
		42.457626, 35.748672, 33.295143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720539, 35.980625, 33.830143>,  <42.495308, 36.288631, 33.739021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720539, 35.980625, 33.830143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.942070, 35.683296, 33.680080>,  <42.074989, 35.504898, 33.590042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.942070, 35.683296, 33.680080>,  <41.720539, 35.980625, 33.830143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942070, 35.683296, 33.680080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472084, -0.651474, 0.593902,
		-0.685867, -0.151813, -0.711715,
		0.553826, -0.743327, -0.375156,
		42.108219, 35.460297, 33.567535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311749, 35.382641, 33.901489>,  <41.720539, 35.980625, 33.830143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311749, 35.382641, 33.901489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661942, 35.204910, 33.825489>,  <41.872059, 35.098270, 33.779888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661942, 35.204910, 33.825489>,  <41.311749, 35.382641, 33.901489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661942, 35.204910, 33.825489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290345, -0.797943, 0.528193,
		-0.386303, -0.407257, -0.827594,
		0.875482, -0.444330, -0.190003,
		41.924587, 35.071609, 33.768490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094433, 34.718563, 33.978596>,  <41.311749, 35.382641, 33.901489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094433, 34.718563, 33.978596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493202, 34.689026, 33.989059>,  <41.732464, 34.671303, 33.995338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493202, 34.689026, 33.989059>,  <41.094433, 34.718563, 33.978596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493202, 34.689026, 33.989059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077412, -0.877317, 0.473626,
		-0.012019, -0.474196, -0.880337,
		0.996927, -0.073841, 0.026164,
		41.792282, 34.666874, 33.996910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235748, 34.078281, 33.750710>,  <41.094433, 34.718563, 33.978596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235748, 34.078281, 33.750710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542397, 34.201313, 33.976166>,  <41.726383, 34.275131, 34.111439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.542397, 34.201313, 33.976166>,  <41.235748, 34.078281, 33.750710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542397, 34.201313, 33.976166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099957, -0.809935, 0.577939,
		0.634277, -0.499398, -0.590165,
		0.766617, 0.307582, 0.563641,
		41.772381, 34.293587, 34.145260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683212, 33.481171, 33.853867>,  <41.235748, 34.078281, 33.750710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683212, 33.481171, 33.853867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761742, 33.747623, 34.141678>,  <41.808857, 33.907497, 34.314365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.761742, 33.747623, 34.141678>,  <41.683212, 33.481171, 33.853867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761742, 33.747623, 34.141678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254702, -0.673975, 0.693458,
		0.946882, -0.319406, 0.037351,
		0.196322, 0.666136, 0.719528,
		41.820637, 33.947464, 34.357536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198570, 33.183960, 34.297676>,  <41.683212, 33.481171, 33.853867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198570, 33.183960, 34.297676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008430, 33.468010, 34.505432>,  <41.894348, 33.638439, 34.630085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.008430, 33.468010, 34.505432>,  <42.198570, 33.183960, 34.297676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008430, 33.468010, 34.505432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100810, -0.630427, 0.769675,
		0.874004, 0.313502, 0.371259,
		-0.475346, 0.710126, 0.519392,
		41.865826, 33.681049, 34.661251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.032761, 39.343941, 28.981443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779053, 39.492321, 29.252768>,  <42.626827, 39.581348, 29.415562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779053, 39.492321, 29.252768>,  <43.032761, 39.343941, 28.981443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779053, 39.492321, 29.252768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454240, -0.531159, 0.715218,
		0.625598, 0.761754, 0.168397,
		-0.634266, 0.370946, 0.678311,
		42.588772, 39.603603, 29.456261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380318, 39.366264, 29.577456>,  <43.032761, 39.343941, 28.981443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380318, 39.366264, 29.577456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007420, 39.390942, 29.720070>,  <42.783680, 39.405750, 29.805639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007420, 39.390942, 29.720070>,  <43.380318, 39.366264, 29.577456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007420, 39.390942, 29.720070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231330, -0.656055, 0.718386,
		0.278231, 0.752187, 0.597329,
		-0.932241, 0.061697, 0.356538,
		42.727749, 39.409451, 29.827032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425793, 39.431252, 30.256786>,  <43.380318, 39.366264, 29.577456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425793, 39.431252, 30.256786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056168, 39.283371, 30.217970>,  <42.834393, 39.194641, 30.194679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056168, 39.283371, 30.217970>,  <43.425793, 39.431252, 30.256786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056168, 39.283371, 30.217970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222550, -0.726817, 0.649776,
		-0.310758, 0.578840, 0.753906,
		-0.924067, -0.369705, -0.097043,
		42.778946, 39.172459, 30.188856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197472, 39.133347, 30.907841>,  <43.425793, 39.431252, 30.256786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197472, 39.133347, 30.907841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960583, 38.945236, 30.646118>,  <42.818451, 38.832371, 30.489084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960583, 38.945236, 30.646118>,  <43.197472, 39.133347, 30.907841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960583, 38.945236, 30.646118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040935, -0.828532, 0.558444,
		-0.804737, 0.303936, 0.509923,
		-0.592218, -0.470274, -0.654309,
		42.782917, 38.804153, 30.449825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662861, 38.768867, 31.293295>,  <43.197472, 39.133347, 30.907841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662861, 38.768867, 31.293295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706383, 38.598434, 30.934048>,  <42.732494, 38.496174, 30.718500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706383, 38.598434, 30.934048>,  <42.662861, 38.768867, 31.293295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706383, 38.598434, 30.934048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124714, -0.902193, 0.412909,
		-0.986209, 0.067082, -0.151299,
		0.108802, -0.426084, -0.898118,
		42.739025, 38.470608, 30.664612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080307, 38.277821, 31.259321>,  <42.662861, 38.768867, 31.293295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080307, 38.277821, 31.259321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359207, 38.165684, 30.995428>,  <42.526546, 38.098400, 30.837091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359207, 38.165684, 30.995428>,  <42.080307, 38.277821, 31.259321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359207, 38.165684, 30.995428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029380, -0.930755, 0.364460,
		-0.716227, -0.234736, -0.657205,
		0.697249, -0.280345, -0.659735,
		42.568382, 38.081581, 30.797508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888733, 37.572613, 31.131542>,  <42.080307, 38.277821, 31.259321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888733, 37.572613, 31.131542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267586, 37.627693, 31.015627>,  <42.494896, 37.660744, 30.946077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267586, 37.627693, 31.015627>,  <41.888733, 37.572613, 31.131542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267586, 37.627693, 31.015627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213094, -0.945212, 0.247315,
		-0.239854, -0.295992, -0.924586,
		0.947133, 0.137704, -0.289787,
		42.551727, 37.669003, 30.928690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014896, 36.995968, 30.854368>,  <41.888733, 37.572613, 31.131542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014896, 36.995968, 30.854368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373173, 37.150517, 30.942415>,  <42.588139, 37.243244, 30.995243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373173, 37.150517, 30.942415>,  <42.014896, 36.995968, 30.854368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373173, 37.150517, 30.942415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299655, -0.890182, 0.343195,
		0.328545, -0.241437, -0.913108,
		0.895692, 0.386373, 0.220117,
		42.641880, 37.266430, 31.008450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472015, 36.411079, 30.591167>,  <42.014896, 36.995968, 30.854368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472015, 36.411079, 30.591167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633835, 36.658115, 30.860960>,  <42.730927, 36.806335, 31.022837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633835, 36.658115, 30.860960>,  <42.472015, 36.411079, 30.591167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633835, 36.658115, 30.860960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193040, -0.778579, 0.597119,
		0.893910, -0.111362, -0.434192,
		0.404549, 0.617587, 0.674482,
		42.755199, 36.843391, 31.063305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166618, 36.293030, 30.283892>,  <42.472015, 36.411079, 30.591167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166618, 36.293030, 30.283892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239109, 36.019505, 30.001175>,  <43.282604, 35.855389, 29.831545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239109, 36.019505, 30.001175>,  <43.166618, 36.293030, 30.283892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239109, 36.019505, 30.001175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089539, 0.704233, -0.704300,
		0.979357, 0.190922, 0.066397,
		0.181225, -0.683816, -0.706790,
		43.293476, 35.814362, 29.789137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615067, 36.628811, 29.859644>,  <43.166618, 36.293030, 30.283892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615067, 36.628811, 29.859644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480377, 36.319473, 29.644777>,  <43.399563, 36.133869, 29.515858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480377, 36.319473, 29.644777>,  <43.615067, 36.628811, 29.859644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480377, 36.319473, 29.644777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057325, 0.586261, -0.808092,
		0.939856, -0.241313, -0.241741,
		-0.336726, -0.773347, -0.537167,
		43.379360, 36.087467, 29.483627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026123, 36.637596, 29.214481>,  <43.615067, 36.628811, 29.859644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026123, 36.637596, 29.214481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685898, 36.445103, 29.129662>,  <43.481762, 36.329605, 29.078770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685898, 36.445103, 29.129662>,  <44.026123, 36.637596, 29.214481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685898, 36.445103, 29.129662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089275, 0.529509, -0.843594,
		0.518238, -0.698601, -0.493343,
		-0.850564, -0.481225, -0.212044,
		43.430729, 36.300732, 29.066048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078224, 36.454597, 28.495794>,  <44.026123, 36.637596, 29.214481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078224, 36.454597, 28.495794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687634, 36.420959, 28.575209>,  <43.453278, 36.400776, 28.622858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687634, 36.420959, 28.575209>,  <44.078224, 36.454597, 28.495794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687634, 36.420959, 28.575209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215532, 0.405971, -0.888107,
		-0.005918, -0.910009, -0.414546,
		-0.976479, -0.084092, 0.198538,
		43.394691, 36.395733, 28.634769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886292, 36.366932, 27.812407>,  <44.078224, 36.454597, 28.495794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886292, 36.366932, 27.812407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557930, 36.462311, 28.019968>,  <43.360912, 36.519539, 28.144505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557930, 36.462311, 28.019968>,  <43.886292, 36.366932, 27.812407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557930, 36.462311, 28.019968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307682, 0.580820, -0.753644,
		-0.481092, -0.778327, -0.403432,
		-0.820903, 0.238443, 0.518905,
		43.311661, 36.533844, 28.175640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289848, 36.241577, 27.372885>,  <43.886292, 36.366932, 27.812407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289848, 36.241577, 27.372885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178150, 36.498322, 27.658552>,  <43.111130, 36.652367, 27.829952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178150, 36.498322, 27.658552>,  <43.289848, 36.241577, 27.372885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178150, 36.498322, 27.658552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293608, 0.651058, -0.699942,
		-0.914229, -0.405142, 0.006650,
		-0.279247, 0.641860, 0.714169,
		43.094376, 36.690880, 27.872803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727787, 36.509754, 27.111652>,  <43.289848, 36.241577, 27.372885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727787, 36.509754, 27.111652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808033, 36.787979, 27.387609>,  <42.856178, 36.954914, 27.553185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808033, 36.787979, 27.387609>,  <42.727787, 36.509754, 27.111652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808033, 36.787979, 27.387609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294354, 0.714466, -0.634739,
		-0.934404, -0.075737, 0.348071,
		0.200612, 0.695559, 0.689893,
		42.868217, 36.996647, 27.594578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306377, 37.005745, 26.881372>,  <42.727787, 36.509754, 27.111652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306377, 37.005745, 26.881372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542522, 37.206638, 27.134113>,  <42.684208, 37.327175, 27.285757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542522, 37.206638, 27.134113>,  <42.306377, 37.005745, 26.881372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542522, 37.206638, 27.134113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176739, 0.844267, -0.505941,
		-0.787551, 0.187016, 0.587187,
		0.590362, 0.502233, 0.631850,
		42.719631, 37.357307, 27.323668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886215, 37.572147, 27.256008>,  <42.306377, 37.005745, 26.881372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886215, 37.572147, 27.256008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276413, 37.658081, 27.237017>,  <42.510532, 37.709641, 27.225622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276413, 37.658081, 27.237017>,  <41.886215, 37.572147, 27.256008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276413, 37.658081, 27.237017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199483, 0.772600, -0.602740,
		-0.092808, 0.597442, 0.796524,
		0.975496, 0.214832, -0.047476,
		42.569061, 37.722530, 27.222775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830582, 38.295670, 27.142910>,  <41.886215, 37.572147, 27.256008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830582, 38.295670, 27.142910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211754, 38.194252, 27.076414>,  <42.440456, 38.133400, 27.036516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211754, 38.194252, 27.076414>,  <41.830582, 38.295670, 27.142910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211754, 38.194252, 27.076414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039871, 0.648346, -0.760301,
		0.300553, 0.717887, 0.627938,
		0.952931, -0.253547, -0.166240,
		42.497635, 38.118187, 27.026543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200550, 38.876984, 27.014988>,  <41.830582, 38.295670, 27.142910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200550, 38.876984, 27.014988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420944, 38.603378, 26.823763>,  <42.553181, 38.439217, 26.709028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420944, 38.603378, 26.823763>,  <42.200550, 38.876984, 27.014988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420944, 38.603378, 26.823763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096999, 0.621474, -0.777407,
		0.828855, 0.381972, 0.408774,
		0.550990, -0.684009, -0.478061,
		42.586243, 38.398174, 26.680346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770103, 39.282238, 26.786352>,  <42.200550, 38.876984, 27.014988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770103, 39.282238, 26.786352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783550, 38.954376, 26.557604>,  <42.791618, 38.757660, 26.420355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783550, 38.954376, 26.557604>,  <42.770103, 39.282238, 26.786352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783550, 38.954376, 26.557604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084602, 0.572473, -0.815547,
		0.995848, -0.020964, 0.088590,
		0.033618, -0.819656, -0.571869,
		42.793636, 38.708481, 26.386044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300827, 39.406590, 26.251249>,  <42.770103, 39.282238, 26.786352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300827, 39.406590, 26.251249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063877, 39.118572, 26.106682>,  <42.921707, 38.945763, 26.019941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063877, 39.118572, 26.106682>,  <43.300827, 39.406590, 26.251249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063877, 39.118572, 26.106682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171905, 0.551236, -0.816448,
		0.787107, -0.421516, -0.450319,
		-0.592378, -0.720044, -0.361421,
		42.886162, 38.902557, 25.998255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483120, 39.380806, 25.417221>,  <43.300827, 39.406590, 26.251249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483120, 39.380806, 25.417221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136837, 39.184467, 25.456455>,  <42.929066, 39.066666, 25.479996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136837, 39.184467, 25.456455>,  <43.483120, 39.380806, 25.417221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136837, 39.184467, 25.456455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370631, 0.496886, -0.784689,
		0.336422, -0.715666, -0.612081,
		-0.865709, -0.490843, 0.098085,
		42.877125, 39.037212, 25.485880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.981129, 40.698906, 27.939081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376553, 40.642742, 27.917053>,  <37.613808, 40.609043, 27.903837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376553, 40.642742, 27.917053>,  <36.981129, 40.698906, 27.939081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376553, 40.642742, 27.917053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094840, -0.862600, 0.496917,
		-0.117278, -0.486010, -0.866049,
		0.988560, -0.140414, -0.055070,
		37.673122, 40.600616, 27.900532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114578, 39.931759, 27.649134>,  <36.981129, 40.698906, 27.939081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114578, 39.931759, 27.649134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447086, 40.030876, 27.848166>,  <37.646591, 40.090347, 27.967585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447086, 40.030876, 27.848166>,  <37.114578, 39.931759, 27.649134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447086, 40.030876, 27.848166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007974, -0.900367, 0.435059,
		0.555808, -0.357685, -0.750426,
		0.831272, 0.247793, 0.497579,
		37.696468, 40.105213, 27.997438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608131, 39.329494, 27.572001>,  <37.114578, 39.931759, 27.649134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608131, 39.329494, 27.572001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729336, 39.548088, 27.884293>,  <37.802059, 39.679245, 28.071667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729336, 39.548088, 27.884293>,  <37.608131, 39.329494, 27.572001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729336, 39.548088, 27.884293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126159, -0.835036, 0.535537,
		0.944601, -0.063775, -0.321966,
		0.303008, 0.546487, 0.780729,
		37.820236, 39.712032, 28.118511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157780, 39.004475, 27.763304>,  <37.608131, 39.329494, 27.572001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157780, 39.004475, 27.763304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078770, 39.219734, 28.091055>,  <38.031364, 39.348888, 28.287706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078770, 39.219734, 28.091055>,  <38.157780, 39.004475, 27.763304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078770, 39.219734, 28.091055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206793, -0.794163, 0.571438,
		0.958238, 0.282314, 0.045581,
		-0.197524, 0.538148, 0.819378,
		38.019512, 39.381180, 28.336868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639973, 38.821140, 28.228168>,  <38.157780, 39.004475, 27.763304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639973, 38.821140, 28.228168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386745, 39.011681, 28.472237>,  <38.234810, 39.126007, 28.618677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.386745, 39.011681, 28.472237>,  <38.639973, 38.821140, 28.228168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386745, 39.011681, 28.472237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060709, -0.755258, 0.652610,
		0.771711, 0.450191, 0.449212,
		-0.633070, 0.476355, 0.610171,
		38.196823, 39.154587, 28.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942913, 38.777630, 28.905090>,  <38.639973, 38.821140, 28.228168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942913, 38.777630, 28.905090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544849, 38.804138, 28.934134>,  <38.306011, 38.820042, 28.951559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544849, 38.804138, 28.934134>,  <38.942913, 38.777630, 28.905090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544849, 38.804138, 28.934134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004493, -0.768495, 0.639840,
		0.098203, 0.636415, 0.765070,
		-0.995156, 0.066272, 0.072609,
		38.246304, 38.824020, 28.955915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746014, 38.698311, 29.680561>,  <38.942913, 38.777630, 28.905090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746014, 38.698311, 29.680561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411434, 38.627769, 29.473005>,  <38.210686, 38.585445, 29.348471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411434, 38.627769, 29.473005>,  <38.746014, 38.698311, 29.680561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411434, 38.627769, 29.473005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172677, -0.813776, 0.554933,
		-0.520127, 0.553775, 0.650231,
		-0.836451, -0.176356, -0.518892,
		38.160500, 38.574863, 29.317337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257496, 38.701382, 30.219351>,  <38.746014, 38.698311, 29.680561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257496, 38.701382, 30.219351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075954, 38.523880, 29.910261>,  <37.967030, 38.417377, 29.724808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075954, 38.523880, 29.910261>,  <38.257496, 38.701382, 30.219351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075954, 38.523880, 29.910261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248919, -0.769519, 0.588115,
		-0.855605, 0.459261, 0.238787,
		-0.453849, -0.443756, -0.772723,
		37.939800, 38.390755, 29.678444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524101, 38.417156, 30.471207>,  <38.257496, 38.701382, 30.219351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524101, 38.417156, 30.471207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625889, 38.222813, 30.136738>,  <37.686962, 38.106205, 29.936056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625889, 38.222813, 30.136738>,  <37.524101, 38.417156, 30.471207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625889, 38.222813, 30.136738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265325, -0.866532, 0.422758,
		-0.929973, 0.114281, -0.349413,
		0.254465, -0.485862, -0.836173,
		37.702229, 38.077053, 29.885885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085751, 37.916416, 30.491730>,  <37.524101, 38.417156, 30.471207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085751, 37.916416, 30.491730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316113, 37.764492, 30.202158>,  <37.454330, 37.673336, 30.028416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316113, 37.764492, 30.202158>,  <37.085751, 37.916416, 30.491730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316113, 37.764492, 30.202158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312236, -0.920583, 0.234597,
		-0.755540, 0.090930, -0.648761,
		0.575907, -0.379814, -0.723929,
		37.488884, 37.650547, 29.984980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685318, 37.414227, 30.145105>,  <37.085751, 37.916416, 30.491730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685318, 37.414227, 30.145105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064003, 37.321518, 30.055653>,  <37.291214, 37.265892, 30.001980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064003, 37.321518, 30.055653>,  <36.685318, 37.414227, 30.145105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064003, 37.321518, 30.055653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131362, -0.911849, 0.388942,
		-0.294067, -0.338840, -0.893707,
		0.946715, -0.231774, -0.223634,
		37.348019, 37.251987, 29.988562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740662, 36.725307, 29.863583>,  <36.685318, 37.414227, 30.145105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740662, 36.725307, 29.863583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104984, 36.805424, 30.007977>,  <37.323578, 36.853493, 30.094612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.104984, 36.805424, 30.007977>,  <36.740662, 36.725307, 29.863583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104984, 36.805424, 30.007977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008153, -0.865519, 0.500809,
		0.412748, -0.459084, -0.786690,
		0.910809, 0.200294, 0.360984,
		37.378227, 36.865513, 30.116272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272064, 36.013729, 29.793560>,  <36.740662, 36.725307, 29.863583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272064, 36.013729, 29.793560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408146, 36.273739, 30.065363>,  <37.489796, 36.429745, 30.228445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408146, 36.273739, 30.065363>,  <37.272064, 36.013729, 29.793560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408146, 36.273739, 30.065363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162767, -0.752409, 0.638269,
		0.926157, -0.106542, -0.361777,
		0.340207, 0.650023, 0.679507,
		37.510208, 36.468746, 30.269215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682480, 35.556030, 30.062763>,  <37.272064, 36.013729, 29.793560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682480, 35.556030, 30.062763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707748, 35.856583, 30.325497>,  <37.722908, 36.036915, 30.483137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.707748, 35.856583, 30.325497>,  <37.682480, 35.556030, 30.062763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707748, 35.856583, 30.325497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309390, -0.640469, 0.702907,
		0.948835, 0.158815, -0.272929,
		0.063171, 0.751384, 0.656835,
		37.726700, 36.081997, 30.522547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326756, 35.360836, 29.717916>,  <37.682480, 35.556030, 30.062763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326756, 35.360836, 29.717916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238281, 35.043579, 29.490936>,  <38.185196, 34.853226, 29.354748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.238281, 35.043579, 29.490936>,  <38.326756, 35.360836, 29.717916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238281, 35.043579, 29.490936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130329, 0.552602, -0.823192,
		0.966483, -0.256035, -0.018860,
		-0.221188, -0.793144, -0.567449,
		38.171925, 34.805637, 29.320702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947330, 35.324436, 29.196896>,  <38.326756, 35.360836, 29.717916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947330, 35.324436, 29.196896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634571, 35.137764, 29.031563>,  <38.446915, 35.025761, 28.932364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634571, 35.137764, 29.031563>,  <38.947330, 35.324436, 29.196896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634571, 35.137764, 29.031563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116764, 0.541656, -0.832451,
		0.612379, -0.699151, -0.369025,
		-0.781894, -0.466687, -0.413335,
		38.400002, 34.997757, 28.907562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127556, 35.137451, 28.548141>,  <38.947330, 35.324436, 29.196896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127556, 35.137451, 28.548141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728466, 35.162834, 28.538986>,  <38.489014, 35.178062, 28.533493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728466, 35.162834, 28.538986>,  <39.127556, 35.137451, 28.548141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728466, 35.162834, 28.538986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051771, 0.502771, -0.862868,
		-0.043247, -0.862087, -0.504911,
		-0.997722, 0.063456, -0.022887,
		38.429150, 35.181870, 28.532120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901104, 35.036194, 27.790808>,  <39.127556, 35.137451, 28.548141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901104, 35.036194, 27.790808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589222, 35.217606, 27.963488>,  <38.402092, 35.326450, 28.067097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589222, 35.217606, 27.963488>,  <38.901104, 35.036194, 27.790808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589222, 35.217606, 27.963488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092142, 0.598847, -0.795545,
		-0.619325, -0.660072, -0.425137,
		-0.779709, 0.453528, 0.431701,
		38.355309, 35.353664, 28.092999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427834, 35.110802, 27.176241>,  <38.901104, 35.036194, 27.790808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427834, 35.110802, 27.176241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327606, 35.384762, 27.449923>,  <38.267471, 35.549137, 27.614132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327606, 35.384762, 27.449923>,  <38.427834, 35.110802, 27.176241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327606, 35.384762, 27.449923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004543, 0.705909, -0.708288,
		-0.968089, -0.180581, -0.173765,
		-0.250566, 0.684896, 0.684204,
		38.252438, 35.590229, 27.655184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936153, 35.553329, 26.859518>,  <38.427834, 35.110802, 27.176241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936153, 35.553329, 26.859518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063824, 35.758724, 27.178129>,  <38.140427, 35.881962, 27.369297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.063824, 35.758724, 27.178129>,  <37.936153, 35.553329, 26.859518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063824, 35.758724, 27.178129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077651, 0.851836, -0.518022,
		-0.944508, 0.103491, 0.311761,
		0.319180, 0.513484, 0.796529,
		38.159576, 35.912769, 27.417088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467079, 36.177078, 26.828550>,  <37.936153, 35.553329, 26.859518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467079, 36.177078, 26.828550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792637, 36.263538, 27.044271>,  <37.987972, 36.315414, 27.173704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792637, 36.263538, 27.044271>,  <37.467079, 36.177078, 26.828550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792637, 36.263538, 27.044271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198909, 0.768467, -0.608188,
		-0.545901, 0.602275, 0.582457,
		0.813896, 0.216155, 0.539305,
		38.036804, 36.328384, 27.206062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450104, 36.948502, 26.881994>,  <37.467079, 36.177078, 26.828550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450104, 36.948502, 26.881994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823730, 36.835999, 26.970009>,  <38.047905, 36.768497, 27.022818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823730, 36.835999, 26.970009>,  <37.450104, 36.948502, 26.881994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823730, 36.835999, 26.970009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354824, 0.800499, -0.483013,
		-0.040288, 0.529240, 0.847515,
		0.934065, -0.281259, 0.220038,
		38.103951, 36.751621, 27.036020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660561, 37.542965, 27.180769>,  <37.450104, 36.948502, 26.881994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660561, 37.542965, 27.180769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974800, 37.349945, 27.025858>,  <38.163345, 37.234135, 26.932911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974800, 37.349945, 27.025858>,  <37.660561, 37.542965, 27.180769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974800, 37.349945, 27.025858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305430, 0.846782, -0.435515,
		0.538096, 0.223854, 0.812615,
		0.785599, -0.482545, -0.387278,
		38.210480, 37.205181, 26.909674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248108, 38.015774, 27.253187>,  <37.660561, 37.542965, 27.180769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248108, 38.015774, 27.253187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362080, 37.746147, 26.980585>,  <38.430462, 37.584370, 26.817024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362080, 37.746147, 26.980585>,  <38.248108, 38.015774, 27.253187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362080, 37.746147, 26.980585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359672, 0.734212, -0.575820,
		0.888510, -0.081049, 0.451643,
		0.284932, -0.674065, -0.681505,
		38.447559, 37.543926, 26.776133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974899, 38.286976, 27.020048>,  <38.248108, 38.015774, 27.253187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974899, 38.286976, 27.020048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797508, 38.051437, 26.749762>,  <38.691074, 37.910114, 26.587589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797508, 38.051437, 26.749762>,  <38.974899, 38.286976, 27.020048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797508, 38.051437, 26.749762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272444, 0.629669, -0.727524,
		0.853875, -0.506735, -0.118817,
		-0.443477, -0.588844, -0.675715,
		38.664467, 37.874783, 26.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377533, 38.375446, 26.408163>,  <38.974899, 38.286976, 27.020048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377533, 38.375446, 26.408163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050678, 38.209167, 26.248423>,  <38.854565, 38.109402, 26.152578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050678, 38.209167, 26.248423>,  <39.377533, 38.375446, 26.408163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050678, 38.209167, 26.248423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092254, 0.589551, -0.802446,
		0.569010, -0.692551, -0.443396,
		-0.817140, -0.415695, -0.399351,
		38.805538, 38.084457, 26.128616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522709, 38.094067, 25.688557>,  <39.377533, 38.375446, 26.408163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522709, 38.094067, 25.688557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130562, 38.162651, 25.727488>,  <38.895271, 38.203800, 25.750847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130562, 38.162651, 25.727488>,  <39.522709, 38.094067, 25.688557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130562, 38.162651, 25.727488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041764, 0.663050, -0.747409,
		-0.192685, -0.728674, -0.657196,
		-0.980372, 0.171462, 0.097328,
		38.836449, 38.214088, 25.756685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259083, 38.194138, 24.962992>,  <39.522709, 38.094067, 25.688557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259083, 38.194138, 24.962992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987923, 38.339050, 25.218870>,  <38.825226, 38.425999, 25.372396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.987923, 38.339050, 25.218870>,  <39.259083, 38.194138, 24.962992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987923, 38.339050, 25.218870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055888, 0.842233, -0.536210,
		-0.733030, -0.399246, -0.550700,
		-0.677897, 0.362280, 0.639695,
		38.784554, 38.447735, 25.410778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953941, 37.844627, 24.314398>,  <39.259083, 38.194138, 24.962992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953941, 37.844627, 24.314398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.250919, 37.712616, 24.081209>,  <39.429108, 37.633408, 23.941296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.250919, 37.712616, 24.081209>,  <38.953941, 37.844627, 24.314398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250919, 37.712616, 24.081209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055391, -0.837002, 0.544389,
		-0.667614, -0.436470, -0.603147,
		0.742444, -0.330032, -0.582971,
		39.473652, 37.613605, 23.906319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843235, 37.183960, 24.351448>,  <38.953941, 37.844627, 24.314398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843235, 37.183960, 24.351448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222366, 37.201653, 24.225172>,  <39.449844, 37.212269, 24.149406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222366, 37.201653, 24.225172>,  <38.843235, 37.183960, 24.351448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222366, 37.201653, 24.225172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229555, -0.781851, 0.579667,
		-0.221181, -0.621895, -0.751216,
		0.947831, 0.044234, -0.315689,
		39.506714, 37.214924, 24.130465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996639, 36.502724, 24.061567>,  <38.843235, 37.183960, 24.351448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996639, 36.502724, 24.061567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355728, 36.664433, 24.131603>,  <39.571182, 36.761459, 24.173624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355728, 36.664433, 24.131603>,  <38.996639, 36.502724, 24.061567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355728, 36.664433, 24.131603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281075, -0.831598, 0.479001,
		0.339253, -0.380796, -0.860175,
		0.897722, 0.404276, 0.175090,
		39.625046, 36.785717, 24.184130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600773, 36.119118, 23.763142>,  <38.996639, 36.502724, 24.061567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600773, 36.119118, 23.763142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746151, 36.312668, 24.081581>,  <39.833378, 36.428799, 24.272644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746151, 36.312668, 24.081581>,  <39.600773, 36.119118, 23.763142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746151, 36.312668, 24.081581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183875, -0.874983, 0.447878,
		0.913290, -0.016396, -0.406980,
		0.363444, 0.483876, 0.796099,
		39.855183, 36.457832, 24.320410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356434, 35.776981, 23.854561>,  <39.600773, 36.119118, 23.763142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356434, 35.776981, 23.854561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232014, 35.951908, 24.192080>,  <40.157360, 36.056866, 24.394590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232014, 35.951908, 24.192080>,  <40.356434, 35.776981, 23.854561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232014, 35.951908, 24.192080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259056, -0.815209, 0.518001,
		0.914405, 0.379716, 0.140282,
		-0.311053, 0.437322, 0.843799,
		40.138699, 36.083103, 24.445219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946953, 35.773598, 24.332754>,  <40.356434, 35.776981, 23.854561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946953, 35.773598, 24.332754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636131, 35.824295, 24.579369>,  <40.449638, 35.854713, 24.727337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.636131, 35.824295, 24.579369>,  <40.946953, 35.773598, 24.332754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636131, 35.824295, 24.579369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373435, -0.695666, 0.613674,
		0.506683, 0.707096, 0.493241,
		-0.777057, 0.126745, 0.616537,
		40.403015, 35.862320, 24.764330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254562, 35.691528, 24.994331>,  <40.946953, 35.773598, 24.332754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254562, 35.691528, 24.994331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861961, 35.670094, 25.067842>,  <40.626400, 35.657234, 25.111950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861961, 35.670094, 25.067842>,  <41.254562, 35.691528, 24.994331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861961, 35.670094, 25.067842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178297, -0.605385, 0.775706,
		0.069690, 0.794127, 0.603743,
		-0.981506, -0.053587, 0.183780,
		40.567509, 35.654018, 25.122976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129795, 35.994698, 25.692547>,  <41.254562, 35.691528, 24.994331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129795, 35.994698, 25.692547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837135, 35.739471, 25.596579>,  <40.661541, 35.586334, 25.538998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837135, 35.739471, 25.596579>,  <41.129795, 35.994698, 25.692547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837135, 35.739471, 25.596579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086902, -0.436384, 0.895554,
		-0.676124, 0.634378, 0.374729,
		-0.731645, -0.638070, -0.239921,
		40.617641, 35.548050, 25.524603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734936, 35.972912, 26.255110>,  <41.129795, 35.994698, 25.692547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734936, 35.972912, 26.255110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642246, 35.633839, 26.064224>,  <40.586632, 35.430393, 25.949692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642246, 35.633839, 26.064224>,  <40.734936, 35.972912, 26.255110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642246, 35.633839, 26.064224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099500, -0.508648, 0.855206,
		-0.967680, 0.150685, 0.202209,
		-0.231720, -0.847686, -0.477216,
		40.572731, 35.379532, 25.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426830, 35.637272, 26.805048>,  <40.734936, 35.972912, 26.255110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426830, 35.637272, 26.805048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522724, 35.351955, 26.541613>,  <40.580261, 35.180763, 26.383551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.522724, 35.351955, 26.541613>,  <40.426830, 35.637272, 26.805048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522724, 35.351955, 26.541613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068020, -0.664363, 0.744308,
		-0.968452, -0.223235, -0.110753,
		0.239736, -0.713294, -0.658589,
		40.594646, 35.137966, 26.344036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003548, 34.993660, 26.937710>,  <40.426830, 35.637272, 26.805048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003548, 34.993660, 26.937710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324451, 34.874126, 26.730991>,  <40.516994, 34.802406, 26.606960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.324451, 34.874126, 26.730991>,  <40.003548, 34.993660, 26.937710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324451, 34.874126, 26.730991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099721, -0.786439, 0.609565,
		-0.588588, -0.540564, -0.601127,
		0.802259, -0.298837, -0.516795,
		40.565128, 34.784473, 26.575953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916092, 34.240334, 26.928514>,  <40.003548, 34.993660, 26.937710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916092, 34.240334, 26.928514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301346, 34.293549, 26.834990>,  <40.532497, 34.325478, 26.778875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301346, 34.293549, 26.834990>,  <39.916092, 34.240334, 26.928514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301346, 34.293549, 26.834990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229362, -0.860266, 0.455341,
		-0.140563, -0.492183, -0.859068,
		0.963138, 0.133033, -0.233810,
		40.590286, 34.333458, 26.764847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187870, 33.586758, 26.723749>,  <39.916092, 34.240334, 26.928514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187870, 33.586758, 26.723749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521755, 33.786373, 26.816887>,  <40.722084, 33.906143, 26.872768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521755, 33.786373, 26.816887>,  <40.187870, 33.586758, 26.723749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521755, 33.786373, 26.816887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417528, -0.849209, 0.323287,
		0.359065, -0.172633, -0.917208,
		0.834711, 0.499041, 0.232842,
		40.772167, 33.936085, 26.886740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687592, 33.056004, 26.757812>,  <40.187870, 33.586758, 26.723749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687592, 33.056004, 26.757812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880970, 33.353004, 26.943272>,  <40.996998, 33.531204, 27.054548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.880970, 33.353004, 26.943272>,  <40.687592, 33.056004, 26.757812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880970, 33.353004, 26.943272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553069, -0.669634, 0.495686,
		0.678523, 0.016792, -0.734387,
		0.483447, 0.742501, 0.463650,
		41.026005, 33.575756, 27.082367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.316048, 39.108570, 24.778191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.958763, 39.073574, 24.954607>,  <42.744392, 39.052578, 25.060457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.958763, 39.073574, 24.954607>,  <43.316048, 39.108570, 24.778191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958763, 39.073574, 24.954607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446050, 0.296025, -0.844635,
		-0.056663, -0.951165, -0.303437,
		-0.893213, -0.087489, 0.441041,
		42.690800, 39.047329, 25.086920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916210, 38.750431, 24.349024>,  <43.316048, 39.108570, 24.778191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916210, 38.750431, 24.349024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.658443, 38.957371, 24.574263>,  <42.503784, 39.081535, 24.709406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.658443, 38.957371, 24.574263>,  <42.916210, 38.750431, 24.349024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658443, 38.957371, 24.574263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468250, 0.315204, -0.825463,
		-0.604544, -0.795610, 0.039127,
		-0.644414, 0.517350, 0.563099,
		42.465118, 39.112576, 24.743193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221764, 38.609177, 24.117859>,  <42.916210, 38.750431, 24.349024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221764, 38.609177, 24.117859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210751, 38.961254, 24.307383>,  <42.204144, 39.172501, 24.421097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210751, 38.961254, 24.307383>,  <42.221764, 38.609177, 24.117859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210751, 38.961254, 24.307383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619965, 0.356781, -0.698821,
		-0.784146, -0.312984, 0.535869,
		-0.027532, 0.880198, 0.473807,
		42.202492, 39.225315, 24.449524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543346, 38.795731, 24.069832>,  <42.221764, 38.609177, 24.117859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543346, 38.795731, 24.069832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725922, 39.144169, 24.142336>,  <41.835464, 39.353233, 24.185839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725922, 39.144169, 24.142336>,  <41.543346, 38.795731, 24.069832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725922, 39.144169, 24.142336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517874, 0.425747, -0.741988,
		-0.723516, 0.244799, 0.645445,
		0.456434, 0.871099, 0.181260,
		41.862850, 39.405499, 24.196714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986034, 39.249054, 23.888788>,  <41.543346, 38.795731, 24.069832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986034, 39.249054, 23.888788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.300671, 39.495869, 23.898113>,  <41.489452, 39.643959, 23.903708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.300671, 39.495869, 23.898113>,  <40.986034, 39.249054, 23.888788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300671, 39.495869, 23.898113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451683, 0.600722, -0.659633,
		-0.421021, 0.508330, 0.751227,
		0.786590, 0.617036, 0.023313,
		41.536648, 39.680981, 23.905107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667816, 39.908253, 24.017796>,  <40.986034, 39.249054, 23.888788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667816, 39.908253, 24.017796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034191, 39.989063, 23.879086>,  <41.254017, 40.037548, 23.795860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034191, 39.989063, 23.879086>,  <40.667816, 39.908253, 24.017796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034191, 39.989063, 23.879086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389563, 0.655264, -0.647201,
		0.096477, 0.727884, 0.678880,
		0.915933, 0.202027, -0.346775,
		41.308971, 40.049671, 23.775053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773899, 40.608608, 24.202503>,  <40.667816, 39.908253, 24.017796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773899, 40.608608, 24.202503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970940, 40.472614, 23.882067>,  <41.089165, 40.391018, 23.689804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970940, 40.472614, 23.882067>,  <40.773899, 40.608608, 24.202503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970940, 40.472614, 23.882067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497972, 0.644806, -0.579869,
		0.713699, 0.684567, 0.148328,
		0.492602, -0.339989, -0.801093,
		41.118721, 40.370617, 23.641739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875793, 41.177673, 23.940069>,  <40.773899, 40.608608, 24.202503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875793, 41.177673, 23.940069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.978470, 40.956398, 23.623060>,  <41.040073, 40.823631, 23.432856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.978470, 40.956398, 23.623060>,  <40.875793, 41.177673, 23.940069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978470, 40.956398, 23.623060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171606, 0.780882, -0.600645,
		0.951138, 0.290180, 0.105512,
		0.256688, -0.553189, -0.792523,
		41.055477, 40.790440, 23.385303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398014, 41.488117, 23.529524>,  <40.875793, 41.177673, 23.940069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398014, 41.488117, 23.529524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213715, 41.228951, 23.286898>,  <41.103134, 41.073452, 23.141323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213715, 41.228951, 23.286898>,  <41.398014, 41.488117, 23.529524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213715, 41.228951, 23.286898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159374, 0.732717, -0.661609,
		0.873106, -0.208162, -0.440856,
		-0.460744, -0.647916, -0.606564,
		41.075493, 41.034576, 23.104929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775703, 41.541142, 22.892612>,  <41.398014, 41.488117, 23.529524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775703, 41.541142, 22.892612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418198, 41.382530, 22.808748>,  <41.203693, 41.287365, 22.758430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.418198, 41.382530, 22.808748>,  <41.775703, 41.541142, 22.892612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418198, 41.382530, 22.808748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178424, 0.743144, -0.644904,
		0.411530, -0.538982, -0.734943,
		-0.893761, -0.396529, -0.209659,
		41.150070, 41.263573, 22.745852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788986, 41.529781, 22.187580>,  <41.775703, 41.541142, 22.892612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788986, 41.529781, 22.187580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403290, 41.478661, 22.280447>,  <41.171871, 41.447990, 22.336166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403290, 41.478661, 22.280447>,  <41.788986, 41.529781, 22.187580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403290, 41.478661, 22.280447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246900, 0.751536, -0.611747,
		-0.096300, -0.647195, -0.756218,
		-0.964244, -0.127799, 0.232165,
		41.114017, 41.440319, 22.350096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410625, 41.533840, 21.589127>,  <41.788986, 41.529781, 22.187580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410625, 41.533840, 21.589127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175396, 41.654308, 21.889385>,  <41.034260, 41.726589, 22.069540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.175396, 41.654308, 21.889385>,  <41.410625, 41.533840, 21.589127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175396, 41.654308, 21.889385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092051, 0.897134, -0.432063,
		-0.803554, -0.323181, -0.499855,
		-0.588071, 0.301173, 0.750644,
		40.998974, 41.744659, 22.114578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746674, 41.841942, 21.293943>,  <41.410625, 41.533840, 21.589127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746674, 41.841942, 21.293943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.861832, 41.994488, 21.645323>,  <40.930927, 42.086018, 21.856152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.861832, 41.994488, 21.645323>,  <40.746674, 41.841942, 21.293943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861832, 41.994488, 21.645323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305172, 0.906001, -0.293313,
		-0.907737, -0.183635, 0.377216,
		0.287895, 0.381367, 0.878451,
		40.948200, 42.108898, 21.908857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192478, 42.293137, 21.335501>,  <40.746674, 41.841942, 21.293943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192478, 42.293137, 21.335501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349388, 42.354961, 21.698208>,  <40.443535, 42.392056, 21.915833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349388, 42.354961, 21.698208>,  <40.192478, 42.293137, 21.335501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349388, 42.354961, 21.698208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255911, 0.965202, -0.053809,
		-0.883532, -0.210944, 0.418180,
		0.392277, 0.154559, 0.906769,
		40.467072, 42.401329, 21.970238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592293, 42.622402, 21.555477>,  <40.192478, 42.293137, 21.335501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592293, 42.622402, 21.555477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956249, 42.709660, 21.696617>,  <40.174625, 42.762016, 21.781301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956249, 42.709660, 21.696617>,  <39.592293, 42.622402, 21.555477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956249, 42.709660, 21.696617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196372, 0.975734, -0.096856,
		-0.365418, 0.018838, 0.930653,
		0.909894, 0.218147, 0.352851,
		40.229218, 42.775105, 21.802473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177959, 42.001907, 21.560184>,  <39.592293, 42.622402, 21.555477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177959, 42.001907, 21.560184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882710, 41.890667, 21.314312>,  <38.705559, 41.823925, 21.166788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882710, 41.890667, 21.314312>,  <39.177959, 42.001907, 21.560184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882710, 41.890667, 21.314312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001478, -0.910424, 0.413673,
		-0.674663, 0.306251, 0.671596,
		-0.738125, -0.278097, -0.614682,
		38.661274, 41.807240, 21.129908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748917, 41.706841, 21.937357>,  <39.177959, 42.001907, 21.560184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748917, 41.706841, 21.937357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665852, 41.552753, 21.577694>,  <38.616013, 41.460300, 21.361897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665852, 41.552753, 21.577694>,  <38.748917, 41.706841, 21.937357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665852, 41.552753, 21.577694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093700, -0.907134, 0.410278,
		-0.973702, 0.169452, 0.152286,
		-0.207666, -0.385219, -0.899156,
		38.603550, 41.437187, 21.307947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121937, 41.338470, 22.038507>,  <38.748917, 41.706841, 21.937357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121937, 41.338470, 22.038507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313293, 41.183140, 21.723461>,  <38.428108, 41.089939, 21.534433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313293, 41.183140, 21.723461>,  <38.121937, 41.338470, 22.038507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313293, 41.183140, 21.723461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172230, -0.837998, 0.517781,
		-0.861094, -0.383352, -0.334005,
		0.478388, -0.388332, -0.787619,
		38.456810, 41.066643, 21.487177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774570, 40.722240, 21.886490>,  <38.121937, 41.338470, 22.038507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774570, 40.722240, 21.886490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129375, 40.682331, 21.706152>,  <38.342258, 40.658386, 21.597950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129375, 40.682331, 21.706152>,  <37.774570, 40.722240, 21.886490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129375, 40.682331, 21.706152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045339, -0.952837, 0.300076,
		-0.459520, -0.286610, -0.840652,
		0.887009, -0.099777, -0.450843,
		38.395477, 40.652397, 21.570900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727821, 40.096821, 21.533531>,  <37.774570, 40.722240, 21.886490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727821, 40.096821, 21.533531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123848, 40.150555, 21.550087>,  <38.361465, 40.182796, 21.560020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123848, 40.150555, 21.550087>,  <37.727821, 40.096821, 21.533531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123848, 40.150555, 21.550087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108475, -0.917434, 0.382816,
		0.089399, -0.374526, -0.922897,
		0.990071, 0.134335, 0.041391,
		38.420868, 40.190857, 21.562504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995098, 39.554115, 21.153292>,  <37.727821, 40.096821, 21.533531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995098, 39.554115, 21.153292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260750, 39.689583, 21.419895>,  <38.420139, 39.770863, 21.579857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260750, 39.689583, 21.419895>,  <37.995098, 39.554115, 21.153292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260750, 39.689583, 21.419895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176250, -0.937307, 0.300651,
		0.726547, -0.082197, -0.682182,
		0.664127, 0.338672, 0.666511,
		38.459988, 39.791183, 21.619848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398064, 38.966522, 21.212173>,  <37.995098, 39.554115, 21.153292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398064, 38.966522, 21.212173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516613, 39.189087, 21.522675>,  <38.587742, 39.322628, 21.708975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516613, 39.189087, 21.522675>,  <38.398064, 38.966522, 21.212173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516613, 39.189087, 21.522675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427695, -0.804037, 0.413040,
		0.853956, 0.209585, -0.476270,
		0.296371, 0.556416, 0.776251,
		38.605526, 39.356010, 21.755550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195526, 38.884823, 21.280363>,  <38.398064, 38.966522, 21.212173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195526, 38.884823, 21.280363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076988, 39.016312, 21.639055>,  <39.005867, 39.095203, 21.854271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076988, 39.016312, 21.639055>,  <39.195526, 38.884823, 21.280363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076988, 39.016312, 21.639055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570696, -0.691905, 0.442237,
		0.765824, 0.642814, 0.017444,
		-0.296346, 0.328721, 0.896729,
		38.988083, 39.114929, 21.908073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821743, 38.895306, 21.744442>,  <39.195526, 38.884823, 21.280363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821743, 38.895306, 21.744442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499050, 38.895355, 21.980810>,  <39.305435, 38.895386, 22.122631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.499050, 38.895355, 21.980810>,  <39.821743, 38.895306, 21.744442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499050, 38.895355, 21.980810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436380, -0.674157, 0.595890,
		0.398444, 0.738588, 0.543810,
		-0.806731, 0.000121, 0.590919,
		39.257030, 38.895390, 22.158085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041698, 38.736259, 22.360254>,  <39.821743, 38.895306, 21.744442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041698, 38.736259, 22.360254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652821, 38.698082, 22.445797>,  <39.419495, 38.675175, 22.497122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652821, 38.698082, 22.445797>,  <40.041698, 38.736259, 22.360254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652821, 38.698082, 22.445797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221463, -0.671582, 0.707059,
		0.076141, 0.734758, 0.674043,
		-0.972192, -0.095439, 0.213856,
		39.361164, 38.669449, 22.509954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002052, 38.939953, 23.077595>,  <40.041698, 38.736259, 22.360254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002052, 38.939953, 23.077595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708767, 38.686783, 22.978151>,  <39.532795, 38.534882, 22.918486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.708767, 38.686783, 22.978151>,  <40.002052, 38.939953, 23.077595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708767, 38.686783, 22.978151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312502, -0.638338, 0.703468,
		-0.603938, 0.438102, 0.665828,
		-0.733214, -0.632923, -0.248609,
		39.488804, 38.496906, 22.903568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734234, 38.856098, 23.705379>,  <40.002052, 38.939953, 23.077595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734234, 38.856098, 23.705379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.625843, 38.541969, 23.482729>,  <39.560806, 38.353493, 23.349138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.625843, 38.541969, 23.482729>,  <39.734234, 38.856098, 23.705379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625843, 38.541969, 23.482729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281235, -0.617622, 0.734472,
		-0.920585, 0.042484, 0.388224,
		-0.270979, -0.785326, -0.556626,
		39.544548, 38.306370, 23.315741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339451, 38.474098, 24.135281>,  <39.734234, 38.856098, 23.705379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339451, 38.474098, 24.135281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432869, 38.216820, 23.843594>,  <39.488918, 38.062454, 23.668581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.432869, 38.216820, 23.843594>,  <39.339451, 38.474098, 24.135281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432869, 38.216820, 23.843594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138600, -0.720277, 0.679700,
		-0.962418, -0.259809, -0.079068,
		0.233543, -0.643196, -0.729217,
		39.502934, 38.023861, 23.624828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735092, 38.514256, 24.484018>,  <39.339451, 38.474098, 24.135281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735092, 38.514256, 24.484018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665810, 38.678989, 24.841877>,  <38.624241, 38.777828, 25.056591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665810, 38.678989, 24.841877>,  <38.735092, 38.514256, 24.484018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665810, 38.678989, 24.841877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173156, 0.881492, -0.439304,
		-0.969545, -0.231003, -0.081368,
		-0.173206, 0.411836, 0.894646,
		38.613850, 38.802540, 25.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214397, 38.980350, 24.370199>,  <38.735092, 38.514256, 24.484018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214397, 38.980350, 24.370199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329586, 39.090649, 24.737032>,  <38.398701, 39.156826, 24.957130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329586, 39.090649, 24.737032>,  <38.214397, 38.980350, 24.370199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329586, 39.090649, 24.737032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116201, 0.960634, -0.252350,
		-0.950562, -0.033896, 0.308680,
		0.287975, 0.275743, 0.917080,
		38.415977, 39.173370, 25.012156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725563, 39.491631, 24.593601>,  <38.214397, 38.980350, 24.370199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725563, 39.491631, 24.593601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057671, 39.560223, 24.805733>,  <38.256935, 39.601376, 24.933012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057671, 39.560223, 24.805733>,  <37.725563, 39.491631, 24.593601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057671, 39.560223, 24.805733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164818, 0.984480, -0.060287,
		-0.532437, -0.037354, 0.845645,
		0.830268, 0.171477, 0.530330,
		38.306751, 39.611664, 24.964832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570934, 40.022449, 24.970274>,  <37.725563, 39.491631, 24.593601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570934, 40.022449, 24.970274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969196, 40.053661, 24.949907>,  <38.208153, 40.072388, 24.937687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969196, 40.053661, 24.949907>,  <37.570934, 40.022449, 24.970274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969196, 40.053661, 24.949907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086779, 0.975535, -0.201992,
		0.033908, 0.205531, 0.978063,
		0.995650, 0.078026, -0.050915,
		38.267891, 40.077068, 24.934633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667625, 40.702950, 25.098948>,  <37.570934, 40.022449, 24.970274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667625, 40.702950, 25.098948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042450, 40.632755, 24.978201>,  <38.267345, 40.590637, 24.905752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042450, 40.632755, 24.978201>,  <37.667625, 40.702950, 25.098948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042450, 40.632755, 24.978201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005587, 0.871953, -0.489557,
		0.349125, 0.457057, 0.818053,
		0.937060, -0.175487, -0.301867,
		38.323566, 40.580109, 24.887640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025097, 41.307331, 25.305119>,  <37.667625, 40.702950, 25.098948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025097, 41.307331, 25.305119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201984, 41.120777, 24.998674>,  <38.308117, 41.008842, 24.814808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201984, 41.120777, 24.998674>,  <38.025097, 41.307331, 25.305119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201984, 41.120777, 24.998674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137066, 0.808994, -0.571613,
		0.886373, 0.357785, 0.293824,
		0.442217, -0.466389, -0.766111,
		38.334648, 40.980862, 24.768841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360497, 41.858234, 25.039352>,  <38.025097, 41.307331, 25.305119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360497, 41.858234, 25.039352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352470, 41.574791, 24.757225>,  <38.347656, 41.404724, 24.587948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352470, 41.574791, 24.757225>,  <38.360497, 41.858234, 25.039352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352470, 41.574791, 24.757225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115821, 0.702359, -0.702337,
		0.993068, 0.067598, -0.096165,
		-0.020066, -0.708606, -0.705319,
		38.346451, 41.362209, 24.545630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909401, 42.204395, 25.483641>,  <38.360497, 41.858234, 25.039352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909401, 42.204395, 25.483641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770306, 42.452400, 25.764967>,  <38.686848, 42.601204, 25.933764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770306, 42.452400, 25.764967>,  <38.909401, 42.204395, 25.483641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770306, 42.452400, 25.764967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154103, -0.777728, 0.609419,
		0.924839, 0.103538, 0.365995,
		-0.347742, 0.620016, 0.703318,
		38.665981, 42.638405, 25.975962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264858, 42.139835, 26.086489>,  <38.909401, 42.204395, 25.483641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264858, 42.139835, 26.086489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902863, 42.266361, 26.200285>,  <38.685665, 42.342278, 26.268562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902863, 42.266361, 26.200285>,  <39.264858, 42.139835, 26.086489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902863, 42.266361, 26.200285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034836, -0.721570, 0.691464,
		0.423998, 0.615859, 0.664035,
		-0.904993, 0.316312, 0.284490,
		38.631363, 42.361256, 26.285631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274166, 41.924473, 26.719847>,  <39.264858, 42.139835, 26.086489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274166, 41.924473, 26.719847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888866, 42.028687, 26.693727>,  <38.657684, 42.091213, 26.678057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888866, 42.028687, 26.693727>,  <39.274166, 41.924473, 26.719847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888866, 42.028687, 26.693727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228039, -0.664827, 0.711339,
		0.141916, 0.700091, 0.699809,
		-0.963254, 0.260534, -0.065299,
		38.599892, 42.106846, 26.674137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018967, 42.090927, 27.391180>,  <39.274166, 41.924473, 26.719847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018967, 42.090927, 27.391180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712479, 41.977497, 27.160532>,  <38.528587, 41.909439, 27.022142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.712479, 41.977497, 27.160532>,  <39.018967, 42.090927, 27.391180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712479, 41.977497, 27.160532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235550, -0.710937, 0.662634,
		-0.597849, 0.643547, 0.477937,
		-0.766220, -0.283577, -0.576621,
		38.482613, 41.892426, 26.987545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542336, 42.097546, 27.892256>,  <39.018967, 42.090927, 27.391180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542336, 42.097546, 27.892256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411285, 41.890934, 27.575811>,  <38.332657, 41.766968, 27.385944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411285, 41.890934, 27.575811>,  <38.542336, 42.097546, 27.892256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411285, 41.890934, 27.575811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413355, -0.674575, 0.611626,
		-0.849589, 0.527391, 0.007494,
		-0.327622, -0.516533, -0.791111,
		38.313000, 41.735973, 27.338478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878178, 41.811409, 28.132511>,  <38.542336, 42.097546, 27.892256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878178, 41.811409, 28.132511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951820, 41.574295, 27.818895>,  <37.996006, 41.432026, 27.630726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951820, 41.574295, 27.818895>,  <37.878178, 41.811409, 28.132511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951820, 41.574295, 27.818895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427567, -0.766546, 0.479158,
		-0.885037, 0.247014, -0.394579,
		0.184105, -0.592782, -0.784037,
		38.007053, 41.396461, 27.583685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303646, 41.359280, 28.177059>,  <37.878178, 41.811409, 28.132511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303646, 41.359280, 28.177059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561611, 41.166893, 27.939484>,  <37.716389, 41.051460, 27.796938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.561611, 41.166893, 27.939484>,  <37.303646, 41.359280, 28.177059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561611, 41.166893, 27.939484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123275, -0.832434, 0.540238,
		-0.754249, -0.275188, -0.596138,
		0.644912, -0.480962, -0.593939,
		37.755085, 41.022606, 27.761303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.721180, 43.815968, 24.298399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696617, 43.447014, 24.145859>,  <40.681881, 43.225639, 24.054335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.696617, 43.447014, 24.145859>,  <40.721180, 43.815968, 24.298399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696617, 43.447014, 24.145859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305986, -0.346279, 0.886828,
		-0.950054, 0.171144, -0.260975,
		-0.061405, -0.922389, -0.381351,
		40.678196, 43.170296, 24.031454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074581, 43.616158, 24.510506>,  <40.721180, 43.815968, 24.298399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074581, 43.616158, 24.510506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.289421, 43.288708, 24.429136>,  <40.418327, 43.092239, 24.380316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.289421, 43.288708, 24.429136>,  <40.074581, 43.616158, 24.510506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289421, 43.288708, 24.429136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151995, -0.331137, 0.931260,
		-0.829710, -0.469262, -0.302280,
		0.537102, -0.818621, -0.203422,
		40.450550, 43.043121, 24.368109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644657, 42.946583, 24.810698>,  <40.074581, 43.616158, 24.510506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644657, 42.946583, 24.810698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024914, 42.836040, 24.754255>,  <40.253067, 42.769714, 24.720390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024914, 42.836040, 24.754255>,  <39.644657, 42.946583, 24.810698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024914, 42.836040, 24.754255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014675, -0.494274, 0.869183,
		-0.309951, -0.824208, -0.473931,
		0.950639, -0.276359, -0.141106,
		40.310104, 42.753132, 24.711924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673183, 42.279888, 25.115702>,  <39.644657, 42.946583, 24.810698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673183, 42.279888, 25.115702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065796, 42.346924, 25.078777>,  <40.301361, 42.387146, 25.056623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.065796, 42.346924, 25.078777>,  <39.673183, 42.279888, 25.115702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065796, 42.346924, 25.078777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173671, -0.577962, 0.797370,
		0.080276, -0.798671, -0.596390,
		0.981526, 0.167586, -0.092309,
		40.360252, 42.397198, 25.051085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007511, 41.642040, 25.239681>,  <39.673183, 42.279888, 25.115702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007511, 41.642040, 25.239681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.294125, 41.913448, 25.304419>,  <40.466091, 42.076294, 25.343262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.294125, 41.913448, 25.304419>,  <40.007511, 41.642040, 25.239681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294125, 41.913448, 25.304419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246679, -0.463502, 0.851067,
		0.652480, -0.569894, -0.499491,
		0.716533, 0.678518, 0.161845,
		40.509083, 42.117004, 25.352972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590034, 41.310364, 25.296930>,  <40.007511, 41.642040, 25.239681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590034, 41.310364, 25.296930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660706, 41.643024, 25.507505>,  <40.703110, 41.842621, 25.633850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.660706, 41.643024, 25.507505>,  <40.590034, 41.310364, 25.296930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660706, 41.643024, 25.507505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362721, -0.552224, 0.750654,
		0.914996, 0.058325, -0.399225,
		0.176680, 0.831653, 0.526439,
		40.713711, 41.892521, 25.665438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115341, 41.026714, 25.558264>,  <40.590034, 41.310364, 25.296930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115341, 41.026714, 25.558264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031425, 41.366550, 25.751835>,  <40.981075, 41.570450, 25.867977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031425, 41.366550, 25.751835>,  <41.115341, 41.026714, 25.558264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031425, 41.366550, 25.751835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562256, -0.300091, 0.770593,
		0.799909, 0.433756, -0.414729,
		-0.209793, 0.849589, 0.483928,
		40.968487, 41.621426, 25.897013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723289, 41.397816, 25.915817>,  <41.115341, 41.026714, 25.558264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723289, 41.397816, 25.915817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407413, 41.492710, 26.142128>,  <41.217888, 41.549648, 26.277914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407413, 41.492710, 26.142128>,  <41.723289, 41.397816, 25.915817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407413, 41.492710, 26.142128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573380, -0.042634, 0.818179,
		0.218225, 0.970516, -0.102360,
		-0.789692, 0.237238, 0.565778,
		41.170506, 41.563881, 26.311861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998619, 41.657352, 26.494520>,  <41.723289, 41.397816, 25.915817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998619, 41.657352, 26.494520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.627983, 41.611027, 26.637640>,  <41.405602, 41.583233, 26.723511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.627983, 41.611027, 26.637640>,  <41.998619, 41.657352, 26.494520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627983, 41.611027, 26.637640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369617, -0.104877, 0.923247,
		-0.069400, 0.987719, 0.139985,
		-0.926589, -0.115814, 0.357799,
		41.350006, 41.576283, 26.744980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069683, 41.962044, 27.177259>,  <41.998619, 41.657352, 26.494520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069683, 41.962044, 27.177259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727661, 41.761490, 27.230167>,  <41.522449, 41.641159, 27.261913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.727661, 41.761490, 27.230167>,  <42.069683, 41.962044, 27.177259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727661, 41.761490, 27.230167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329864, -0.329129, 0.884796,
		-0.400087, 0.800181, 0.446811,
		-0.855056, -0.501383, 0.132271,
		41.471146, 41.611076, 27.269848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847187, 42.168739, 27.894831>,  <42.069683, 41.962044, 27.177259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847187, 42.168739, 27.894831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676125, 41.824192, 27.785177>,  <41.573486, 41.617462, 27.719385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.676125, 41.824192, 27.785177>,  <41.847187, 42.168739, 27.894831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676125, 41.824192, 27.785177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231203, -0.397409, 0.888038,
		-0.873875, 0.316392, 0.369105,
		-0.427654, -0.861372, -0.274135,
		41.547829, 41.565781, 27.702936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346180, 41.957726, 28.463440>,  <41.847187, 42.168739, 27.894831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346180, 41.957726, 28.463440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457432, 41.637642, 28.250908>,  <41.524181, 41.445591, 28.123388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457432, 41.637642, 28.250908>,  <41.346180, 41.957726, 28.463440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457432, 41.637642, 28.250908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067703, -0.535450, 0.841849,
		-0.958155, -0.270115, -0.094747,
		0.278128, -0.800207, -0.531332,
		41.540871, 41.397579, 28.091509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537884, 42.058968, 28.415779>,  <41.346180, 41.957726, 28.463440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537884, 42.058968, 28.415779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296486, 42.252499, 28.669300>,  <40.151649, 42.368618, 28.821413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296486, 42.252499, 28.669300>,  <40.537884, 42.058968, 28.415779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296486, 42.252499, 28.669300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030179, 0.780441, -0.624501,
		-0.796798, -0.396009, -0.456388,
		-0.603492, 0.483828, 0.633805,
		40.115437, 42.397648, 28.859442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003151, 42.378735, 28.008537>,  <40.537884, 42.058968, 28.415779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003151, 42.378735, 28.008537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990894, 42.597229, 28.343365>,  <39.983540, 42.728325, 28.544262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.990894, 42.597229, 28.343365>,  <40.003151, 42.378735, 28.008537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990894, 42.597229, 28.343365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249770, 0.806710, -0.535569,
		-0.967820, -0.225486, 0.111714,
		-0.030642, 0.546237, 0.837070,
		39.981701, 42.761101, 28.594486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697937, 42.920876, 27.730824>,  <40.003151, 42.378735, 28.008537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697937, 42.920876, 27.730824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814396, 43.054398, 28.089445>,  <39.884270, 43.134510, 28.304619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814396, 43.054398, 28.089445>,  <39.697937, 42.920876, 27.730824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814396, 43.054398, 28.089445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042038, 0.931784, -0.360571,
		-0.955754, 0.142669, 0.257255,
		0.291148, 0.333802, 0.896554,
		39.901741, 43.154537, 28.358412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208214, 43.508430, 27.860617>,  <39.697937, 42.920876, 27.730824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208214, 43.508430, 27.860617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544441, 43.531830, 28.076035>,  <39.746178, 43.545872, 28.205284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544441, 43.531830, 28.076035>,  <39.208214, 43.508430, 27.860617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544441, 43.531830, 28.076035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178786, 0.908487, -0.377739,
		-0.511357, 0.413798, 0.753183,
		0.840565, 0.058501, 0.538543,
		39.796612, 43.549381, 28.237597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221603, 44.239105, 28.070581>,  <39.208214, 43.508430, 27.860617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221603, 44.239105, 28.070581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599697, 44.113979, 28.107830>,  <39.826553, 44.038902, 28.130178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.599697, 44.113979, 28.107830>,  <39.221603, 44.239105, 28.070581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599697, 44.113979, 28.107830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323412, 0.859313, -0.396215,
		0.043923, 0.404634, 0.913423,
		0.945238, -0.312815, 0.093120,
		39.883270, 44.020134, 28.135767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624542, 44.716476, 28.509256>,  <39.221603, 44.239105, 28.070581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624542, 44.716476, 28.509256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915710, 44.527100, 28.310867>,  <40.090412, 44.413475, 28.191833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.915710, 44.527100, 28.310867>,  <39.624542, 44.716476, 28.509256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915710, 44.527100, 28.310867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384574, 0.880764, -0.276328,
		0.567658, 0.010407, 0.823198,
		0.727919, -0.473441, -0.495971,
		40.134087, 44.385067, 28.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188637, 45.049068, 28.750517>,  <39.624542, 44.716476, 28.509256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188637, 45.049068, 28.750517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287960, 44.858654, 28.413059>,  <40.347553, 44.744408, 28.210585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.287960, 44.858654, 28.413059>,  <40.188637, 45.049068, 28.750517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287960, 44.858654, 28.413059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235122, 0.874494, -0.424238,
		0.939714, -0.093019, 0.329067,
		0.248305, -0.476033, -0.843645,
		40.362450, 44.715843, 28.159966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835175, 45.353554, 28.557186>,  <40.188637, 45.049068, 28.750517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835175, 45.353554, 28.557186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.693409, 45.188877, 28.221354>,  <40.608349, 45.090073, 28.019854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.693409, 45.188877, 28.221354>,  <40.835175, 45.353554, 28.557186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693409, 45.188877, 28.221354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201811, 0.843028, -0.498574,
		0.913050, -0.346140, -0.215700,
		-0.354418, -0.411693, -0.839581,
		40.587082, 45.065369, 27.969479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333061, 45.598011, 28.076416>,  <40.835175, 45.353554, 28.557186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333061, 45.598011, 28.076416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013134, 45.498222, 27.858042>,  <40.821178, 45.438347, 27.727016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013134, 45.498222, 27.858042>,  <41.333061, 45.598011, 28.076416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013134, 45.498222, 27.858042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188615, 0.759003, -0.623168,
		0.569833, -0.601396, -0.560012,
		-0.799821, -0.249475, -0.545938,
		40.773186, 45.423378, 27.694260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504810, 45.723930, 27.349518>,  <41.333061, 45.598011, 28.076416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504810, 45.723930, 27.349518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107735, 45.717598, 27.301647>,  <40.869492, 45.713799, 27.272924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107735, 45.717598, 27.301647>,  <41.504810, 45.723930, 27.349518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107735, 45.717598, 27.301647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063466, 0.774854, -0.628946,
		0.102689, -0.631942, -0.768183,
		-0.992687, -0.015832, -0.119676,
		40.809929, 45.712849, 27.265745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364716, 45.662434, 26.598364>,  <41.504810, 45.723930, 27.349518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364716, 45.662434, 26.598364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038986, 45.808338, 26.778954>,  <40.843548, 45.895882, 26.887308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038986, 45.808338, 26.778954>,  <41.364716, 45.662434, 26.598364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038986, 45.808338, 26.778954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013952, 0.765319, -0.643499,
		-0.580247, -0.530314, -0.618126,
		-0.814321, 0.364765, 0.451473,
		40.794689, 45.917767, 26.914396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944412, 45.954483, 26.056135>,  <41.364716, 45.662434, 26.598364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944412, 45.954483, 26.056135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785496, 46.132458, 26.377180>,  <40.690144, 46.239243, 26.569807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785496, 46.132458, 26.377180>,  <40.944412, 45.954483, 26.056135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785496, 46.132458, 26.377180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208701, 0.807874, -0.551166,
		-0.893645, -0.386480, -0.228103,
		-0.397293, 0.444941, 0.802612,
		40.666309, 46.265942, 26.617964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414967, 46.272274, 25.797125>,  <40.944412, 45.954483, 26.056135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414967, 46.272274, 25.797125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485664, 46.459381, 26.143524>,  <40.528084, 46.571644, 26.351364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485664, 46.459381, 26.143524>,  <40.414967, 46.272274, 25.797125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485664, 46.459381, 26.143524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024302, 0.881657, -0.471264,
		-0.983957, 0.062248, 0.167196,
		0.176744, 0.467767, 0.866000,
		40.538689, 46.599712, 26.403324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885502, 45.827526, 25.800205>,  <40.414967, 46.272274, 25.797125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885502, 45.827526, 25.800205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555077, 45.880905, 25.581182>,  <39.356823, 45.912933, 25.449770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555077, 45.880905, 25.581182>,  <39.885502, 45.827526, 25.800205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555077, 45.880905, 25.581182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341019, -0.891869, 0.297113,
		-0.448699, 0.432160, 0.782245,
		-0.826060, 0.133446, -0.547556,
		39.307259, 45.920940, 25.416916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256721, 45.661903, 26.188732>,  <39.885502, 45.827526, 25.800205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256721, 45.661903, 26.188732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120659, 45.647263, 25.812870>,  <39.039021, 45.638477, 25.587353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120659, 45.647263, 25.812870>,  <39.256721, 45.661903, 26.188732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120659, 45.647263, 25.812870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437214, -0.878517, 0.192487,
		-0.832550, 0.476307, 0.282829,
		-0.340153, -0.036598, -0.939658,
		39.018612, 45.636284, 25.530973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492481, 45.514591, 26.184303>,  <39.256721, 45.661903, 26.188732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492481, 45.514591, 26.184303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649342, 45.379684, 25.841965>,  <38.743458, 45.298740, 25.636562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649342, 45.379684, 25.841965>,  <38.492481, 45.514591, 26.184303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649342, 45.379684, 25.841965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335546, -0.918708, 0.208291,
		-0.856520, 0.205493, -0.473441,
		0.392151, -0.337267, -0.855844,
		38.766987, 45.278503, 25.585211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066929, 45.081028, 25.981197>,  <38.492481, 45.514591, 26.184303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066929, 45.081028, 25.981197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365162, 44.955425, 25.746078>,  <38.544102, 44.880062, 25.605007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365162, 44.955425, 25.746078>,  <38.066929, 45.081028, 25.981197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365162, 44.955425, 25.746078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349619, -0.935209, 0.056126,
		-0.567336, 0.163659, -0.807060,
		0.745584, -0.314005, -0.587797,
		38.588837, 44.861225, 25.569740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822014, 44.586437, 25.706383>,  <38.066929, 45.081028, 25.981197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822014, 44.586437, 25.706383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.196747, 44.489189, 25.605797>,  <38.421585, 44.430840, 25.545446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.196747, 44.489189, 25.605797>,  <37.822014, 44.586437, 25.706383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196747, 44.489189, 25.605797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226983, -0.969565, 0.091774,
		-0.266123, -0.028899, -0.963506,
		0.936834, -0.243123, -0.251464,
		38.477798, 44.416252, 25.530357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792000, 44.045330, 25.198637>,  <37.822014, 44.586437, 25.706383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792000, 44.045330, 25.198637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153564, 44.014988, 25.367016>,  <38.370502, 43.996784, 25.468044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153564, 44.014988, 25.367016>,  <37.792000, 44.045330, 25.198637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153564, 44.014988, 25.367016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132740, -0.985306, 0.107481,
		0.406610, -0.153030, -0.900695,
		0.903908, -0.075856, 0.420948,
		38.424736, 43.992229, 25.493299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809631, 43.388832, 25.091610>,  <37.792000, 44.045330, 25.198637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809631, 43.388832, 25.091610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117558, 43.451210, 25.339180>,  <38.302311, 43.488636, 25.487722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117558, 43.451210, 25.339180>,  <37.809631, 43.388832, 25.091610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117558, 43.451210, 25.339180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054969, -0.949892, 0.307707,
		0.635898, -0.270898, -0.722667,
		0.769813, 0.155945, 0.618926,
		38.348503, 43.497993, 25.524858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300083, 42.751190, 24.987581>,  <37.809631, 43.388832, 25.091610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300083, 42.751190, 24.987581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365337, 42.906013, 25.350584>,  <38.404491, 42.998909, 25.568386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.365337, 42.906013, 25.350584>,  <38.300083, 42.751190, 24.987581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365337, 42.906013, 25.350584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023398, -0.918054, 0.395765,
		0.986326, -0.085798, -0.140713,
		0.163137, 0.387061, 0.907508,
		38.414280, 43.022133, 25.622837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834259, 42.242443, 24.602505>,  <38.300083, 42.751190, 24.987581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834259, 42.242443, 24.602505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625179, 41.977077, 24.388338>,  <38.499733, 41.817860, 24.259838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625179, 41.977077, 24.388338>,  <38.834259, 42.242443, 24.602505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625179, 41.977077, 24.388338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056077, 0.653438, -0.754900,
		0.850673, -0.364558, -0.378751,
		-0.522695, -0.663412, -0.535419,
		38.468369, 41.778053, 24.227713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087059, 42.361717, 23.865236>,  <38.834259, 42.242443, 24.602505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087059, 42.361717, 23.865236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739326, 42.167377, 23.828989>,  <38.530685, 42.050774, 23.807241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.739326, 42.167377, 23.828989>,  <39.087059, 42.361717, 23.865236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739326, 42.167377, 23.828989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153564, 0.439809, -0.884865,
		0.469773, -0.755322, -0.456949,
		-0.869328, -0.485856, -0.090620,
		38.478527, 42.021622, 23.801804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993706, 42.347206, 23.153873>,  <39.087059, 42.361717, 23.865236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993706, 42.347206, 23.153873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623703, 42.253574, 23.273592>,  <38.401703, 42.197395, 23.345423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623703, 42.253574, 23.273592>,  <38.993706, 42.347206, 23.153873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623703, 42.253574, 23.273592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377131, 0.469655, -0.798246,
		0.046284, -0.851254, -0.522709,
		-0.925003, -0.234076, 0.299297,
		38.346203, 42.183353, 23.363380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686710, 41.969177, 22.606010>,  <38.993706, 42.347206, 23.153873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686710, 41.969177, 22.606010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415695, 42.157623, 22.831928>,  <38.253086, 42.270691, 22.967480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.415695, 42.157623, 22.831928>,  <38.686710, 41.969177, 22.606010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415695, 42.157623, 22.831928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267594, 0.557387, -0.785948,
		-0.685080, -0.683646, -0.251584,
		-0.677539, 0.471115, 0.564794,
		38.212433, 42.298958, 23.001366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038593, 42.080673, 22.180151>,  <38.686710, 41.969177, 22.606010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038593, 42.080673, 22.180151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068584, 42.358128, 22.466715>,  <38.086578, 42.524601, 22.638653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.068584, 42.358128, 22.466715>,  <38.038593, 42.080673, 22.180151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068584, 42.358128, 22.466715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078861, 0.720308, -0.689156,
		-0.994062, -0.004826, 0.108708,
		0.074978, 0.693637, 0.716412,
		38.091076, 42.566219, 22.681639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514320, 42.598915, 21.895300>,  <38.038593, 42.080673, 22.180151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514320, 42.598915, 21.895300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.704273, 42.794052, 22.188282>,  <37.818245, 42.911137, 22.364071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.704273, 42.794052, 22.188282>,  <37.514320, 42.598915, 21.895300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704273, 42.794052, 22.188282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152128, 0.865266, -0.477673,
		-0.866800, 0.115412, 0.485116,
		0.474884, 0.487847, 0.732455,
		37.846737, 42.940407, 22.408018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045670, 43.098846, 22.134192>,  <37.514320, 42.598915, 21.895300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045670, 43.098846, 22.134192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.421932, 43.210564, 22.211288>,  <37.647690, 43.277596, 22.257547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.421932, 43.210564, 22.211288>,  <37.045670, 43.098846, 22.134192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421932, 43.210564, 22.211288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219936, 0.934315, -0.280508,
		-0.258427, 0.221472, 0.940301,
		0.940661, 0.279297, 0.192742,
		37.704132, 43.294353, 22.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974449, 43.756821, 22.453571>,  <37.045670, 43.098846, 22.134192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974449, 43.756821, 22.453571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.350319, 43.751190, 22.316860>,  <37.575840, 43.747814, 22.234833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.350319, 43.751190, 22.316860>,  <36.974449, 43.756821, 22.453571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350319, 43.751190, 22.316860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086095, 0.957258, -0.276125,
		0.331057, 0.288894, 0.898299,
		0.939675, -0.014074, -0.341779,
		37.632221, 43.746967, 22.214327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346256, 44.277504, 22.863716>,  <36.974449, 43.756821, 22.453571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346256, 44.277504, 22.863716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526661, 44.221874, 22.511070>,  <37.634903, 44.188496, 22.299482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.526661, 44.221874, 22.511070>,  <37.346256, 44.277504, 22.863716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526661, 44.221874, 22.511070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209309, 0.943757, -0.255956,
		0.867629, 0.299968, 0.396533,
		0.451009, -0.139077, -0.881617,
		37.661964, 44.180153, 22.246586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.549568, 32.165752, 32.949142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.869900, 32.048271, 32.740372>,  <40.062099, 31.977781, 32.615108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.869900, 32.048271, 32.740372>,  <39.549568, 32.165752, 32.949142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869900, 32.048271, 32.740372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338517, 0.496919, -0.799048,
		0.494040, 0.816583, 0.298523,
		0.800831, -0.293707, -0.521925,
		40.110149, 31.960159, 32.583794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862392, 32.688923, 32.782955>,  <39.549568, 32.165752, 32.949142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862392, 32.688923, 32.782955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932468, 32.401279, 32.513977>,  <39.974514, 32.228691, 32.352589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.932468, 32.401279, 32.513977>,  <39.862392, 32.688923, 32.782955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932468, 32.401279, 32.513977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392757, 0.575261, -0.717507,
		0.902801, 0.389811, -0.181653,
		0.175194, -0.719112, -0.672447,
		39.985027, 32.185547, 32.312244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076031, 33.066166, 32.252838>,  <39.862392, 32.688923, 32.782955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076031, 33.066166, 32.252838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.006321, 32.709400, 32.085934>,  <39.964493, 32.495338, 31.985790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.006321, 32.709400, 32.085934>,  <40.076031, 33.066166, 32.252838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006321, 32.709400, 32.085934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455240, 0.448723, -0.769028,
		0.873146, 0.055930, -0.484239,
		-0.174278, -0.891919, -0.417262,
		39.954037, 32.441826, 31.960754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366909, 33.157204, 31.554199>,  <40.076031, 33.066166, 32.252838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366909, 33.157204, 31.554199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106091, 32.855839, 31.520266>,  <39.949600, 32.675018, 31.499907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106091, 32.855839, 31.520266>,  <40.366909, 33.157204, 31.554199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106091, 32.855839, 31.520266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424279, 0.455329, -0.782728,
		0.628346, -0.474384, -0.616555,
		-0.652049, -0.753416, -0.084833,
		39.910477, 32.629814, 31.494816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382839, 32.961163, 30.805559>,  <40.366909, 33.157204, 31.554199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382839, 32.961163, 30.805559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.049149, 32.824207, 30.978455>,  <39.848934, 32.742035, 31.082191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.049149, 32.824207, 30.978455>,  <40.382839, 32.961163, 30.805559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049149, 32.824207, 30.978455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549392, 0.448995, -0.704679,
		0.047198, -0.825334, -0.562669,
		-0.834231, -0.342386, 0.432240,
		39.798878, 32.721493, 31.108126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996094, 32.902664, 30.251738>,  <40.382839, 32.961163, 30.805559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996094, 32.902664, 30.251738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737675, 32.885143, 30.556553>,  <39.582623, 32.874630, 30.739443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.737675, 32.885143, 30.556553>,  <39.996094, 32.902664, 30.251738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737675, 32.885143, 30.556553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674877, 0.499190, -0.543463,
		-0.356598, -0.865385, -0.352060,
		-0.646049, -0.043800, 0.762038,
		39.543861, 32.872002, 30.785164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323368, 32.532246, 29.948086>,  <39.996094, 32.902664, 30.251738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323368, 32.532246, 29.948086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211273, 32.765423, 30.253147>,  <39.144016, 32.905331, 30.436184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211273, 32.765423, 30.253147>,  <39.323368, 32.532246, 29.948086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211273, 32.765423, 30.253147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733002, 0.383041, -0.562127,
		-0.619817, -0.716556, 0.319958,
		-0.280239, 0.582946, 0.762653,
		39.127201, 32.940308, 30.481943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592262, 32.611305, 29.786360>,  <39.323368, 32.532246, 29.948086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592262, 32.611305, 29.786360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.695942, 32.895828, 30.047697>,  <38.758152, 33.066544, 30.204498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.695942, 32.895828, 30.047697>,  <38.592262, 32.611305, 29.786360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695942, 32.895828, 30.047697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647660, 0.629837, -0.428768,
		-0.716485, -0.312005, 0.623941,
		0.259203, 0.711307, 0.653341,
		38.773705, 33.109219, 30.243700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942574, 32.895336, 30.030804>,  <38.592262, 32.611305, 29.786360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942574, 32.895336, 30.030804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216228, 33.175270, 30.112955>,  <38.380421, 33.343231, 30.162247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216228, 33.175270, 30.112955>,  <37.942574, 32.895336, 30.030804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216228, 33.175270, 30.112955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545239, 0.677772, -0.493295,
		-0.484428, 0.225501, 0.845269,
		0.684138, 0.699839, 0.205379,
		38.421471, 33.385223, 30.174568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594143, 33.402817, 30.279423>,  <37.942574, 32.895336, 30.030804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594143, 33.402817, 30.279423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941479, 33.553158, 30.149979>,  <38.149879, 33.643360, 30.072313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941479, 33.553158, 30.149979>,  <37.594143, 33.402817, 30.279423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941479, 33.553158, 30.149979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495051, 0.617145, -0.611602,
		-0.030156, 0.691281, 0.721957,
		0.868341, 0.375849, -0.323608,
		38.201981, 33.665913, 30.052896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443752, 34.193275, 30.207045>,  <37.594143, 33.402817, 30.279423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443752, 34.193275, 30.207045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.785763, 34.119354, 30.013229>,  <37.990971, 34.075001, 29.896940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.785763, 34.119354, 30.013229>,  <37.443752, 34.193275, 30.207045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785763, 34.119354, 30.013229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198249, 0.746893, -0.634704,
		0.479197, 0.638747, 0.601974,
		0.855025, -0.184807, -0.484540,
		38.042271, 34.063911, 29.867867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889515, 34.867409, 30.179161>,  <37.443752, 34.193275, 30.207045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889515, 34.867409, 30.179161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.999039, 34.640968, 29.868149>,  <38.064751, 34.505104, 29.681541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.999039, 34.640968, 29.868149>,  <37.889515, 34.867409, 30.179161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999039, 34.640968, 29.868149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287191, 0.723421, -0.627840,
		0.917906, 0.395207, 0.035497,
		0.273806, -0.566104, -0.777532,
		38.081181, 34.471138, 29.634890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335129, 35.364914, 30.538271>,  <37.889515, 34.867409, 30.179161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335129, 35.364914, 30.538271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123806, 35.629868, 30.750740>,  <37.997013, 35.788837, 30.878222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.123806, 35.629868, 30.750740>,  <38.335129, 35.364914, 30.538271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123806, 35.629868, 30.750740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007774, -0.621807, 0.783132,
		0.849019, 0.417862, 0.323355,
		-0.528306, 0.662380, 0.531174,
		37.965313, 35.828583, 30.910091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762379, 35.566826, 31.113054>,  <38.335129, 35.364914, 30.538271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762379, 35.566826, 31.113054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371212, 35.616966, 31.179955>,  <38.136513, 35.647053, 31.220095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371212, 35.616966, 31.179955>,  <38.762379, 35.566826, 31.113054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371212, 35.616966, 31.179955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083817, -0.497842, 0.863208,
		0.191471, 0.858161, 0.476340,
		-0.977913, 0.125353, 0.167251,
		38.077839, 35.654572, 31.230129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591648, 35.693829, 31.804880>,  <38.762379, 35.566826, 31.113054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591648, 35.693829, 31.804880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237862, 35.557968, 31.676907>,  <38.025589, 35.476452, 31.600122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.237862, 35.557968, 31.676907>,  <38.591648, 35.693829, 31.804880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237862, 35.557968, 31.676907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103534, -0.525710, 0.844340,
		-0.454974, 0.779914, 0.429806,
		-0.884466, -0.339653, -0.319932,
		37.972523, 35.456074, 31.580927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232056, 35.692280, 32.381096>,  <38.591648, 35.693829, 31.804880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232056, 35.692280, 32.381096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020332, 35.441746, 32.152168>,  <37.893299, 35.291428, 32.014812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020332, 35.441746, 32.152168>,  <38.232056, 35.692280, 32.381096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020332, 35.441746, 32.152168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292169, -0.498739, 0.816025,
		-0.796538, 0.599139, 0.080991,
		-0.529306, -0.626332, -0.572314,
		37.861542, 35.253845, 31.980474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717941, 35.495243, 32.886475>,  <38.232056, 35.692280, 32.381096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717941, 35.495243, 32.886475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.700027, 35.213017, 32.603584>,  <37.689278, 35.043678, 32.433849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.700027, 35.213017, 32.603584>,  <37.717941, 35.495243, 32.886475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700027, 35.213017, 32.603584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248102, -0.677900, 0.692024,
		-0.967698, 0.206459, -0.144690,
		-0.044789, -0.705568, -0.707225,
		37.686592, 35.001347, 32.391418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125725, 35.158100, 33.073357>,  <37.717941, 35.495243, 32.886475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125725, 35.158100, 33.073357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307240, 34.905022, 32.822353>,  <37.416149, 34.753174, 32.671753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307240, 34.905022, 32.822353>,  <37.125725, 35.158100, 33.073357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307240, 34.905022, 32.822353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180915, -0.754935, 0.630352,
		-0.872551, -0.172521, -0.457046,
		0.453789, -0.632701, -0.627508,
		37.443375, 34.715210, 32.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698429, 34.588570, 33.104034>,  <37.125725, 35.158100, 33.073357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698429, 34.588570, 33.104034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021156, 34.410976, 32.948124>,  <37.214790, 34.304420, 32.854580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021156, 34.410976, 32.948124>,  <36.698429, 34.588570, 33.104034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021156, 34.410976, 32.948124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159093, -0.798636, 0.580405,
		-0.568980, -0.406270, -0.714987,
		0.806816, -0.443988, -0.389773,
		37.263203, 34.277779, 32.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569134, 33.882313, 33.069965>,  <36.698429, 34.588570, 33.104034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569134, 33.882313, 33.069965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968582, 33.902859, 33.065758>,  <37.208252, 33.915184, 33.063232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.968582, 33.902859, 33.065758>,  <36.569134, 33.882313, 33.069965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968582, 33.902859, 33.065758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049456, -0.856331, 0.514053,
		0.017397, -0.513866, -0.857694,
		0.998624, 0.051361, -0.010517,
		37.268169, 33.918266, 33.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855782, 33.130997, 32.952415>,  <36.569134, 33.882313, 33.069965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855782, 33.130997, 32.952415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138573, 33.348042, 33.133858>,  <37.308247, 33.478268, 33.242725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138573, 33.348042, 33.133858>,  <36.855782, 33.130997, 32.952415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138573, 33.348042, 33.133858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190879, -0.763973, 0.616369,
		0.680992, -0.349174, -0.643683,
		0.706976, 0.542608, 0.453609,
		37.350666, 33.510822, 33.269939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235359, 32.584595, 33.323517>,  <36.855782, 33.130997, 32.952415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235359, 32.584595, 33.323517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397289, 32.920013, 33.469368>,  <37.494446, 33.121265, 33.556881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397289, 32.920013, 33.469368>,  <37.235359, 32.584595, 33.323517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397289, 32.920013, 33.469368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325998, -0.504920, 0.799238,
		0.854307, -0.204684, -0.477769,
		0.404826, 0.838546, 0.364630,
		37.518738, 33.171577, 33.578758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795475, 32.264927, 33.713036>,  <37.235359, 32.584595, 33.323517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795475, 32.264927, 33.713036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762024, 32.640339, 33.847004>,  <37.741955, 32.865585, 33.927387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762024, 32.640339, 33.847004>,  <37.795475, 32.264927, 33.713036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762024, 32.640339, 33.847004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260152, -0.303883, 0.916502,
		0.961939, 0.163777, -0.218747,
		-0.083628, 0.938527, 0.334924,
		37.736935, 32.921898, 33.947479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423157, 32.489128, 34.035347>,  <37.795475, 32.264927, 33.713036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423157, 32.489128, 34.035347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120724, 32.696991, 34.194492>,  <37.939262, 32.821709, 34.289978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.120724, 32.696991, 34.194492>,  <38.423157, 32.489128, 34.035347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120724, 32.696991, 34.194492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274006, -0.300728, 0.913501,
		0.594355, 0.799699, 0.084986,
		-0.756084, 0.519657, 0.397861,
		37.893898, 32.852890, 34.313850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683273, 32.823887, 34.615429>,  <38.423157, 32.489128, 34.035347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683273, 32.823887, 34.615429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290970, 32.831772, 34.693127>,  <38.055588, 32.836502, 34.739746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.290970, 32.831772, 34.693127>,  <38.683273, 32.823887, 34.615429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290970, 32.831772, 34.693127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187277, -0.186243, 0.964490,
		0.055186, 0.982306, 0.178968,
		-0.980756, 0.019710, 0.194242,
		37.996742, 32.837685, 34.751400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531532, 33.223732, 35.091881>,  <38.683273, 32.823887, 34.615429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531532, 33.223732, 35.091881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204773, 32.997875, 35.138977>,  <38.008717, 32.862362, 35.167233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204773, 32.997875, 35.138977>,  <38.531532, 33.223732, 35.091881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204773, 32.997875, 35.138977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288030, -0.222493, 0.931416,
		-0.499719, 0.794782, 0.344388,
		-0.816896, -0.564640, 0.117737,
		37.959705, 32.828484, 35.174297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974091, 33.639671, 35.429333>,  <38.531532, 33.223732, 35.091881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974091, 33.639671, 35.429333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185905, 33.872543, 35.676121>,  <39.312996, 34.012268, 35.824192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185905, 33.872543, 35.676121>,  <38.974091, 33.639671, 35.429333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185905, 33.872543, 35.676121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046188, 0.746022, -0.664317,
		-0.847026, 0.323286, 0.421939,
		0.529541, 0.582183, 0.616968,
		39.344769, 34.047199, 35.861210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800110, 34.259354, 35.276653>,  <38.974091, 33.639671, 35.429333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800110, 34.259354, 35.276653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144855, 34.340813, 35.462440>,  <39.351704, 34.389687, 35.573914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.144855, 34.340813, 35.462440>,  <38.800110, 34.259354, 35.276653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144855, 34.340813, 35.462440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156143, 0.764798, -0.625063,
		-0.482512, 0.611239, 0.627351,
		0.861860, 0.203644, 0.464465,
		39.403412, 34.401905, 35.601780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879700, 34.958706, 35.590385>,  <38.800110, 34.259354, 35.276653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879700, 34.958706, 35.590385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224712, 34.807178, 35.456203>,  <39.431721, 34.716263, 35.375694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224712, 34.807178, 35.456203>,  <38.879700, 34.958706, 35.590385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224712, 34.807178, 35.456203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170037, 0.841398, -0.512968,
		0.476573, 0.385413, 0.790148,
		0.862534, -0.378821, -0.335454,
		39.483471, 34.693531, 35.355568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348675, 35.566982, 35.608131>,  <38.879700, 34.958706, 35.590385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348675, 35.566982, 35.608131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543785, 35.322407, 35.358902>,  <39.660851, 35.175663, 35.209366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543785, 35.322407, 35.358902>,  <39.348675, 35.566982, 35.608131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543785, 35.322407, 35.358902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288422, 0.786535, -0.546055,
		0.823946, 0.086645, 0.560005,
		0.487776, -0.611438, -0.623071,
		39.690117, 35.138977, 35.171982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988380, 35.991276, 35.501297>,  <39.348675, 35.566982, 35.608131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988380, 35.991276, 35.501297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929886, 35.722675, 35.210724>,  <39.894791, 35.561516, 35.036381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.929886, 35.722675, 35.210724>,  <39.988380, 35.991276, 35.501297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929886, 35.722675, 35.210724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108088, 0.719083, -0.686467,
		0.983327, -0.178904, -0.032574,
		-0.146235, -0.671500, -0.726432,
		39.886017, 35.521225, 34.992794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534550, 36.063942, 35.019215>,  <39.988380, 35.991276, 35.501297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534550, 36.063942, 35.019215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245232, 35.861217, 34.831608>,  <40.071640, 35.739582, 34.719044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245232, 35.861217, 34.831608>,  <40.534550, 36.063942, 35.019215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245232, 35.861217, 34.831608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053486, 0.636050, -0.769792,
		0.688460, -0.581876, -0.432947,
		-0.723299, -0.506815, -0.469017,
		40.028240, 35.709171, 34.690903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783329, 36.150387, 34.292759>,  <40.534550, 36.063942, 35.019215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783329, 36.150387, 34.292759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397736, 36.044025, 34.294651>,  <40.166378, 35.980209, 34.295788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.397736, 36.044025, 34.294651>,  <40.783329, 36.150387, 34.292759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397736, 36.044025, 34.294651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191413, 0.681370, -0.706468,
		0.184629, -0.681932, -0.707730,
		-0.963988, -0.265904, 0.004730,
		40.108540, 35.964252, 34.296070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671852, 35.989014, 33.572464>,  <40.783329, 36.150387, 34.292759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671852, 35.989014, 33.572464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311691, 36.028843, 33.741867>,  <40.095596, 36.052742, 33.843510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311691, 36.028843, 33.741867>,  <40.671852, 35.989014, 33.572464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311691, 36.028843, 33.741867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335703, 0.460177, -0.821913,
		-0.276734, -0.882226, -0.380916,
		-0.900401, 0.099576, 0.423512,
		40.041573, 36.058716, 33.868919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160061, 35.775101, 33.164360>,  <40.671852, 35.989014, 33.572464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160061, 35.775101, 33.164360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963219, 36.034988, 33.396118>,  <39.845116, 36.190922, 33.535172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.963219, 36.034988, 33.396118>,  <40.160061, 35.775101, 33.164360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963219, 36.034988, 33.396118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346652, 0.464261, -0.815043,
		-0.798541, -0.601932, -0.003236,
		-0.492103, 0.649723, 0.579392,
		39.815586, 36.229904, 33.569935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511597, 35.878735, 32.806862>,  <40.160061, 35.775101, 33.164360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511597, 35.878735, 32.806862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.560658, 36.180668, 33.064602>,  <39.590096, 36.361828, 33.219246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.560658, 36.180668, 33.064602>,  <39.511597, 35.878735, 32.806862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560658, 36.180668, 33.064602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285812, 0.648609, -0.705420,
		-0.950404, -0.097640, 0.295295,
		0.122654, 0.754833, 0.644347,
		39.597454, 36.407116, 33.257908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894585, 36.345901, 32.704609>,  <39.511597, 35.878735, 32.806862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894585, 36.345901, 32.704609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.158619, 36.575035, 32.898987>,  <39.317039, 36.712517, 33.015614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.158619, 36.575035, 32.898987>,  <38.894585, 36.345901, 32.704609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158619, 36.575035, 32.898987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329104, 0.802044, -0.498414,
		-0.675259, 0.169071, 0.717942,
		0.660088, 0.572836, 0.485945,
		39.356644, 36.746887, 33.044769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485474, 37.030884, 32.739883>,  <38.894585, 36.345901, 32.704609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485474, 37.030884, 32.739883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853893, 37.114208, 32.871510>,  <39.074944, 37.164204, 32.950485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853893, 37.114208, 32.871510>,  <38.485474, 37.030884, 32.739883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853893, 37.114208, 32.871510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057242, 0.908162, -0.414686,
		-0.385224, 0.363109, 0.848384,
		0.921046, 0.208310, 0.329061,
		39.130207, 37.176701, 32.970226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446526, 37.691975, 33.136204>,  <38.485474, 37.030884, 32.739883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446526, 37.691975, 33.136204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821854, 37.657047, 33.002384>,  <39.047050, 37.636089, 32.922092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821854, 37.657047, 33.002384>,  <38.446526, 37.691975, 33.136204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821854, 37.657047, 33.002384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014216, 0.957024, -0.289661,
		0.345469, 0.276552, 0.896755,
		0.938322, -0.087321, -0.334553,
		39.103352, 37.630852, 32.902020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804947, 38.230865, 33.311832>,  <38.446526, 37.691975, 33.136204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804947, 38.230865, 33.311832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062283, 38.106735, 33.031887>,  <39.216682, 38.032257, 32.863918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062283, 38.106735, 33.031887>,  <38.804947, 38.230865, 33.311832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062283, 38.106735, 33.031887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097891, 0.940002, -0.326822,
		0.759296, 0.141747, 0.635119,
		0.643340, -0.310327, -0.699865,
		39.255283, 38.013638, 32.821926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191006, 38.799213, 33.267628>,  <38.804947, 38.230865, 33.311832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191006, 38.799213, 33.267628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240826, 38.587372, 32.932007>,  <39.270718, 38.460266, 32.730637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240826, 38.587372, 32.932007>,  <39.191006, 38.799213, 33.267628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240826, 38.587372, 32.932007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080153, 0.848240, -0.523511,
		0.988971, -0.002050, 0.148097,
		0.124549, -0.529607, -0.839049,
		39.278191, 38.428490, 32.680290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785339, 38.990261, 32.917473>,  <39.191006, 38.799213, 33.267628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785339, 38.990261, 32.917473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519665, 38.844208, 32.656544>,  <39.360260, 38.756577, 32.499985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519665, 38.844208, 32.656544>,  <39.785339, 38.990261, 32.917473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519665, 38.844208, 32.656544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096553, 0.823395, -0.559195,
		0.741300, -0.434397, -0.511638,
		-0.664192, -0.365132, -0.652325,
		39.320408, 38.734669, 32.460846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116413, 39.173862, 32.314281>,  <39.785339, 38.990261, 32.917473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116413, 39.173862, 32.314281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.759228, 39.074100, 32.164391>,  <39.544918, 39.014244, 32.074455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.759228, 39.074100, 32.164391>,  <40.116413, 39.173862, 32.314281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759228, 39.074100, 32.164391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051084, 0.770952, -0.634842,
		0.447228, -0.586031, -0.675689,
		-0.892960, -0.249402, -0.374728,
		39.491341, 38.999279, 32.051971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180370, 39.186882, 31.613056>,  <40.116413, 39.173862, 32.314281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180370, 39.186882, 31.613056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788799, 39.234180, 31.679647>,  <39.553856, 39.262562, 31.719603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788799, 39.234180, 31.679647>,  <40.180370, 39.186882, 31.613056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788799, 39.234180, 31.679647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016458, 0.766924, -0.641527,
		-0.203537, -0.630749, -0.748818,
		-0.978929, 0.118250, 0.166478,
		39.495121, 39.269657, 31.729591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881100, 39.091011, 30.943403>,  <40.180370, 39.186882, 31.613056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881100, 39.091011, 30.943403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.630795, 39.290871, 31.182993>,  <39.480614, 39.410786, 31.326748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.630795, 39.290871, 31.182993>,  <39.881100, 39.091011, 30.943403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630795, 39.290871, 31.182993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039541, 0.787234, -0.615385,
		-0.779012, -0.361400, -0.512377,
		-0.625761, 0.499652, 0.598975,
		39.443066, 39.440765, 31.362686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405308, 39.368656, 30.527456>,  <39.881100, 39.091011, 30.943403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405308, 39.368656, 30.527456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343189, 39.605625, 30.843662>,  <39.305920, 39.747807, 31.033386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343189, 39.605625, 30.843662>,  <39.405308, 39.368656, 30.527456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343189, 39.605625, 30.843662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154302, 0.804949, -0.572929,
		-0.975743, 0.033004, -0.216418,
		-0.155296, 0.592425, 0.790516,
		39.296600, 39.783352, 31.080816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935947, 39.891598, 30.340887>,  <39.405308, 39.368656, 30.527456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935947, 39.891598, 30.340887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.154652, 40.030807, 30.645502>,  <39.285873, 40.114334, 30.828270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.154652, 40.030807, 30.645502>,  <38.935947, 39.891598, 30.340887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154652, 40.030807, 30.645502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099728, 0.875980, -0.471925,
		-0.831331, 0.333974, 0.444241,
		0.546757, 0.348022, 0.761536,
		39.318680, 40.135216, 30.873962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693481, 40.520313, 30.473118>,  <38.935947, 39.891598, 30.340887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693481, 40.520313, 30.473118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048359, 40.545025, 30.656015>,  <39.261284, 40.559853, 30.765755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048359, 40.545025, 30.656015>,  <38.693481, 40.520313, 30.473118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048359, 40.545025, 30.656015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152145, 0.896401, -0.416315,
		-0.435593, 0.438919, 0.785881,
		0.887193, 0.061776, 0.457245,
		39.314518, 40.563557, 30.793188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754456, 41.246563, 30.652164>,  <38.693481, 40.520313, 30.473118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754456, 41.246563, 30.652164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117916, 41.083321, 30.687487>,  <39.335995, 40.985374, 30.708681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117916, 41.083321, 30.687487>,  <38.754456, 41.246563, 30.652164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117916, 41.083321, 30.687487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407643, 0.821247, -0.399226,
		0.090403, 0.398757, 0.912590,
		0.908655, -0.408102, 0.088307,
		39.390514, 40.960892, 30.713978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236534, 41.795410, 30.983259>,  <38.754456, 41.246563, 30.652164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236534, 41.795410, 30.983259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.456211, 41.526398, 30.784830>,  <39.588017, 41.364990, 30.665773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.456211, 41.526398, 30.784830>,  <39.236534, 41.795410, 30.983259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456211, 41.526398, 30.784830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397228, 0.732334, -0.553080,
		0.735255, 0.106693, 0.669340,
		0.549190, -0.672536, -0.496071,
		39.620968, 41.324638, 30.636009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861237, 42.135864, 30.752171>,  <39.236534, 41.795410, 30.983259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861237, 42.135864, 30.752171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.843342, 41.819786, 30.507685>,  <39.832607, 41.630138, 30.360992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.843342, 41.819786, 30.507685>,  <39.861237, 42.135864, 30.752171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843342, 41.819786, 30.507685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346633, 0.561538, -0.751346,
		0.936933, -0.245479, 0.248790,
		-0.044735, -0.790200, -0.611214,
		39.829922, 41.582726, 30.324320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408527, 42.209591, 30.456568>,  <39.861237, 42.135864, 30.752171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408527, 42.209591, 30.456568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172234, 41.988483, 30.221457>,  <40.030457, 41.855820, 30.080389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.172234, 41.988483, 30.221457>,  <40.408527, 42.209591, 30.456568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172234, 41.988483, 30.221457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350396, 0.480447, -0.803986,
		0.726811, -0.680898, -0.090131,
		-0.590736, -0.552764, -0.587778,
		39.995014, 41.822655, 30.045124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819614, 42.099625, 29.875088>,  <40.408527, 42.209591, 30.456568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819614, 42.099625, 29.875088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.448574, 42.022018, 29.747395>,  <40.225948, 41.975456, 29.670778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.448574, 42.022018, 29.747395>,  <40.819614, 42.099625, 29.875088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448574, 42.022018, 29.747395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088569, 0.715971, -0.692489,
		0.362913, -0.670630, -0.646954,
		-0.927604, -0.194013, -0.319232,
		40.170292, 41.963814, 29.651625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922218, 42.085068, 29.160849>,  <40.819614, 42.099625, 29.875088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922218, 42.085068, 29.160849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.531048, 42.159821, 29.198233>,  <40.296345, 42.204670, 29.220663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.531048, 42.159821, 29.198233>,  <40.922218, 42.085068, 29.160849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531048, 42.159821, 29.198233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058741, 0.675146, -0.735342,
		-0.200519, -0.713621, -0.671221,
		-0.977927, 0.186878, 0.093460,
		40.237671, 42.215885, 29.226271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021561, 41.311859, 28.831911>,  <40.922218, 42.085068, 29.160849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021561, 41.311859, 28.831911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.304367, 41.168835, 28.587851>,  <41.474049, 41.083019, 28.441414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.304367, 41.168835, 28.587851>,  <41.021561, 41.311859, 28.831911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304367, 41.168835, 28.587851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244805, -0.685691, 0.685491,
		-0.663480, -0.634019, -0.397259,
		0.707011, -0.357558, -0.610153,
		41.516472, 41.061565, 28.404804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953102, 40.534538, 28.840368>,  <41.021561, 41.311859, 28.831911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953102, 40.534538, 28.840368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.322220, 40.618824, 28.711346>,  <41.543690, 40.669395, 28.633932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.322220, 40.618824, 28.711346>,  <40.953102, 40.534538, 28.840368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322220, 40.618824, 28.711346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366123, -0.740333, 0.563792,
		-0.119999, -0.638362, -0.760325,
		0.922797, 0.210718, -0.322558,
		41.599060, 40.682041, 28.614578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252949, 39.823521, 28.665546>,  <40.953102, 40.534538, 28.840368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252949, 39.823521, 28.665546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558605, 40.077610, 28.710405>,  <41.742001, 40.230064, 28.737322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558605, 40.077610, 28.710405>,  <41.252949, 39.823521, 28.665546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558605, 40.077610, 28.710405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413640, -0.615958, 0.670445,
		0.494961, -0.465927, -0.733434,
		0.764143, 0.635222, 0.112149,
		41.787849, 40.268177, 28.744051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672108, 39.312019, 28.707575>,  <41.252949, 39.823521, 28.665546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672108, 39.312019, 28.707575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.823082, 39.652691, 28.852999>,  <41.913666, 39.857094, 28.940252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.823082, 39.652691, 28.852999>,  <41.672108, 39.312019, 28.707575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823082, 39.652691, 28.852999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566933, -0.522944, 0.636488,
		0.732207, -0.034122, -0.680227,
		0.377439, 0.851684, 0.363558,
		41.936314, 39.908195, 28.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357494, 39.177650, 28.755598>,  <41.672108, 39.312019, 28.707575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357494, 39.177650, 28.755598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.304958, 39.484745, 29.006462>,  <42.273438, 39.669003, 29.156981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.304958, 39.484745, 29.006462>,  <42.357494, 39.177650, 28.755598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304958, 39.484745, 29.006462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474014, -0.506994, 0.719908,
		0.870666, 0.391837, -0.297328,
		-0.131344, 0.767737, 0.627159,
		42.265556, 39.715065, 29.194611>
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
