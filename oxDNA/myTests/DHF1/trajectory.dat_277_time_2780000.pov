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
	<0.381207, 2.450870, 1.944523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.633400, 2.736465, 1.822727>,  <0.784716, 2.907823, 1.749650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.633400, 2.736465, 1.822727>,  <0.381207, 2.450870, 1.944523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.633400, 2.736465, 1.822727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046085, 0.426021, 0.903538,
		0.774835, -0.555632, 0.301503,
		0.630482, 0.713988, -0.304490,
		0.822545, 2.950662, 1.731380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044369, 2.642161, 2.307639>,  <0.381207, 2.450870, 1.944523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044369, 2.642161, 2.307639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893841, 2.967529, 2.130222>,  <0.803524, 3.162750, 2.023772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.893841, 2.967529, 2.130222>,  <1.044369, 2.642161, 2.307639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.893841, 2.967529, 2.130222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102759, 0.512424, 0.852562,
		0.920774, 0.275258, -0.276421,
		-0.376320, 0.813422, -0.443541,
		0.780945, 3.211556, 1.997160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216903, 3.083643, 2.810755>,  <1.044369, 2.642161, 2.307639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216903, 3.083643, 2.810755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990688, 3.319427, 2.580032>,  <0.854959, 3.460898, 2.441599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990688, 3.319427, 2.580032>,  <1.216903, 3.083643, 2.810755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.990688, 3.319427, 2.580032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173765, 0.598528, 0.782030,
		0.806209, 0.542495, -0.236062,
		-0.565537, 0.589460, -0.576805,
		0.821027, 3.496266, 2.406991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.497840, 3.756747, 2.647920>,  <1.216903, 3.083643, 2.810755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.497840, 3.756747, 2.647920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.101654, 3.707520, 2.672680>,  <0.863942, 3.677983, 2.687536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.101654, 3.707520, 2.672680>,  <1.497840, 3.756747, 2.647920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.101654, 3.707520, 2.672680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024781, 0.601171, 0.798736,
		-0.135513, 0.789586, -0.598489,
		-0.990466, -0.123070, 0.061900,
		0.804514, 3.670599, 2.691250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.245575, 4.380507, 2.716568>,  <1.497840, 3.756747, 2.647920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.245575, 4.380507, 2.716568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.997337, 4.133881, 2.910355>,  <0.848394, 3.985904, 3.026626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.997337, 4.133881, 2.910355>,  <1.245575, 4.380507, 2.716568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.997337, 4.133881, 2.910355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113484, 0.540709, 0.833519,
		-0.775875, 0.572258, -0.265591,
		-0.620595, -0.616567, 0.484465,
		0.811159, 3.948910, 3.055694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.816015, 4.899441, 3.179234>,  <1.245575, 4.380507, 2.716568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.816015, 4.899441, 3.179234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.736641, 4.523529, 3.290543>,  <0.689017, 4.297982, 3.357328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.736641, 4.523529, 3.290543>,  <0.816015, 4.899441, 3.179234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.736641, 4.523529, 3.290543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014861, 0.286771, 0.957884,
		-0.980002, 0.185942, -0.070871,
		-0.198435, -0.939781, 0.278272,
		0.677111, 4.241595, 3.374024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.309131, 4.936481, 3.753022>,  <0.816015, 4.899441, 3.179234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.309131, 4.936481, 3.753022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.495785, 4.583496, 3.776737>,  <0.607777, 4.371706, 3.790966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.495785, 4.583496, 3.776737>,  <0.309131, 4.936481, 3.753022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.495785, 4.583496, 3.776737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023203, 0.079225, 0.996587,
		-0.884146, -0.463665, 0.057445,
		0.466634, -0.882461, 0.059288,
		0.635775, 4.318758, 3.794524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.083420, 4.540699, 4.099905>,  <0.309131, 4.936481, 3.753022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.083420, 4.540699, 4.099905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.309177, 4.473419, 4.136520>,  <0.544736, 4.433051, 4.158490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.309177, 4.473419, 4.136520>,  <-0.083420, 4.540699, 4.099905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.309177, 4.473419, 4.136520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065129, 0.156323, 0.985556,
		-0.180081, -0.973279, 0.142475,
		0.981493, -0.168201, 0.091539,
		0.603625, 4.422959, 4.163982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.117523, 4.469924, 5.974843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.509264, 4.436356, 5.901276>,  <0.744308, 4.416214, 5.857135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.509264, 4.436356, 5.901276>,  <0.117523, 4.469924, 5.974843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.509264, 4.436356, 5.901276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185341, -0.009418, -0.982629,
		0.080732, 0.996428, -0.024778,
		0.979352, -0.083922, -0.183918,
		0.803069, 4.411179, 5.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.140927, 4.692910, 5.337110>,  <0.117523, 4.469924, 5.974843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.140927, 4.692910, 5.337110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.430948, 4.421005, 5.381340>,  <0.604960, 4.257863, 5.407878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.430948, 4.421005, 5.381340>,  <0.140927, 4.692910, 5.337110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.430948, 4.421005, 5.381340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069785, -0.232247, -0.970150,
		0.685151, 0.695691, -0.215828,
		0.725050, -0.679761, 0.110575,
		0.648463, 4.217077, 5.414513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.861621, 4.861729, 4.956429>,  <0.140927, 4.692910, 5.337110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.861621, 4.861729, 4.956429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.837336, 4.464310, 4.994751>,  <0.822765, 4.225858, 5.017744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.837336, 4.464310, 4.994751>,  <0.861621, 4.861729, 4.956429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.837336, 4.464310, 4.994751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200830, -0.106179, -0.973855,
		0.977743, -0.039885, 0.205980,
		-0.060713, -0.993547, 0.095805,
		0.819122, 4.166245, 5.023493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.430402, 4.473810, 4.532547>,  <0.861621, 4.861729, 4.956429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.430402, 4.473810, 4.532547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120804, 4.229843, 4.600586>,  <0.935045, 4.083463, 4.641409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120804, 4.229843, 4.600586>,  <1.430402, 4.473810, 4.532547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120804, 4.229843, 4.600586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038156, -0.313071, -0.948963,
		0.632041, -0.728002, 0.265587,
		-0.773995, -0.609918, 0.170096,
		0.888605, 4.046868, 4.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604829, 3.804728, 4.233737>,  <1.430402, 4.473810, 4.532547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604829, 3.804728, 4.233737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212066, 3.875504, 4.260719>,  <0.976408, 3.917969, 4.276909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212066, 3.875504, 4.260719>,  <1.604829, 3.804728, 4.233737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.212066, 3.875504, 4.260719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100767, -0.186626, -0.977250,
		-0.160316, -0.966368, 0.201079,
		-0.981909, 0.176931, 0.067459,
		0.917493, 3.928585, 4.280957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.200616, 3.181044, 4.009374>,  <1.604829, 3.804728, 4.233737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.200616, 3.181044, 4.009374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.978355, 3.510101, 3.961197>,  <0.844998, 3.707536, 3.932291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.978355, 3.510101, 3.961197>,  <1.200616, 3.181044, 4.009374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978355, 3.510101, 3.961197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167664, -0.252761, -0.952890,
		-0.814333, -0.509283, 0.278376,
		-0.555653, 0.822644, -0.120444,
		0.811659, 3.756894, 3.925064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.467927, 3.019630, 3.832712>,  <1.200616, 3.181044, 4.009374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.467927, 3.019630, 3.832712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.534571, 3.383728, 3.681084>,  <0.574558, 3.602187, 3.590107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.534571, 3.383728, 3.681084>,  <0.467927, 3.019630, 3.832712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.534571, 3.383728, 3.681084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202457, -0.344672, -0.916631,
		-0.965014, 0.229465, 0.126860,
		0.166610, 0.910245, -0.379071,
		0.584554, 3.656802, 3.567363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.137350, 3.247790, 3.592222>,  <0.467927, 3.019630, 3.832712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.137350, 3.247790, 3.592222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.155382, 3.445435, 3.404488>,  <0.331022, 3.564021, 3.291847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.155382, 3.445435, 3.404488>,  <-0.137350, 3.247790, 3.592222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.155382, 3.445435, 3.404488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281841, -0.407592, -0.868582,
		-0.620474, 0.767934, -0.159028,
		0.731832, 0.494112, -0.469335,
		0.374932, 3.593668, 3.263687>
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
