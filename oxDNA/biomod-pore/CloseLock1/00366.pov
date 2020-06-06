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
	<24.038395, 35.347664, 34.824173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376169, 35.157429, 34.922760>,  <24.578833, 35.043285, 34.981911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376169, 35.157429, 34.922760>,  <24.038395, 35.347664, 34.824173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376169, 35.157429, 34.922760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360685, 0.164663, -0.918037,
		0.396027, 0.864118, 0.310585,
		0.844434, -0.475591, 0.246464,
		24.629499, 35.014751, 34.996700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672947, 35.813625, 34.802200>,  <24.038395, 35.347664, 34.824173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672947, 35.813625, 34.802200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716839, 35.426159, 34.713081>,  <24.743174, 35.193680, 34.659611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716839, 35.426159, 34.713081>,  <24.672947, 35.813625, 34.802200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716839, 35.426159, 34.713081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025162, 0.226785, -0.973620,
		0.993643, 0.101231, 0.049259,
		0.109732, -0.968670, -0.222796,
		24.749758, 35.135559, 34.646244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347986, 35.675514, 34.679394>,  <24.672947, 35.813625, 34.802200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347986, 35.675514, 34.679394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056499, 35.490612, 34.477287>,  <24.881607, 35.379673, 34.356022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.056499, 35.490612, 34.477287>,  <25.347986, 35.675514, 34.679394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056499, 35.490612, 34.477287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414054, 0.290281, -0.862726,
		0.545467, -0.837890, -0.020134,
		-0.728714, -0.462252, -0.505271,
		24.837885, 35.351936, 34.325706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846123, 35.587872, 34.077972>,  <25.347986, 35.675514, 34.679394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846123, 35.587872, 34.077972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232939, 35.673790, 34.132664>,  <26.465029, 35.725342, 34.165478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232939, 35.673790, 34.132664>,  <25.846123, 35.587872, 34.077972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232939, 35.673790, 34.132664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249897, -0.903629, -0.347859,
		0.048829, 0.370561, -0.927524,
		0.967041, 0.214800, 0.136725,
		26.523050, 35.738232, 34.173679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288208, 35.517975, 33.480751>,  <25.846123, 35.587872, 34.077972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288208, 35.517975, 33.480751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518349, 35.466381, 33.803822>,  <26.656433, 35.435425, 33.997662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518349, 35.466381, 33.803822>,  <26.288208, 35.517975, 33.480751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518349, 35.466381, 33.803822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161505, -0.950126, -0.266789,
		0.801803, 0.283940, -0.525823,
		0.575350, -0.128989, 0.807672,
		26.690954, 35.427685, 34.046124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808397, 35.208397, 33.238037>,  <26.288208, 35.517975, 33.480751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808397, 35.208397, 33.238037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854916, 35.137383, 33.628925>,  <26.882828, 35.094776, 33.863457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854916, 35.137383, 33.628925>,  <26.808397, 35.208397, 33.238037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854916, 35.137383, 33.628925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232039, -0.951812, -0.200530,
		0.965729, 0.250074, -0.069499,
		0.116297, -0.177531, 0.977219,
		26.889805, 35.084122, 33.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473455, 35.006134, 33.266003>,  <26.808397, 35.208397, 33.238037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473455, 35.006134, 33.266003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263206, 34.868393, 33.577168>,  <27.137058, 34.785748, 33.763866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263206, 34.868393, 33.577168>,  <27.473455, 35.006134, 33.266003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263206, 34.868393, 33.577168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242901, -0.937098, -0.250692,
		0.815305, 0.057187, 0.576201,
		-0.525620, -0.344351, 0.777911,
		27.105520, 34.765087, 33.810539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825848, 34.398449, 33.587132>,  <27.473455, 35.006134, 33.266003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825848, 34.398449, 33.587132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451185, 34.351768, 33.719227>,  <27.226387, 34.323761, 33.798485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451185, 34.351768, 33.719227>,  <27.825848, 34.398449, 33.587132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451185, 34.351768, 33.719227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027381, -0.964367, -0.263146,
		0.349179, -0.237435, 0.906476,
		-0.936656, -0.116705, 0.330236,
		27.170189, 34.316757, 33.818298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865158, 33.776157, 34.019646>,  <27.825848, 34.398449, 33.587132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865158, 33.776157, 34.019646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485138, 33.822853, 33.903870>,  <27.257126, 33.850872, 33.834404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485138, 33.822853, 33.903870>,  <27.865158, 33.776157, 34.019646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485138, 33.822853, 33.903870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045480, -0.865721, -0.498457,
		-0.308767, -0.486723, 0.817168,
		-0.950050, 0.116742, -0.289442,
		27.200123, 33.857876, 33.817036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583643, 33.077854, 33.970722>,  <27.865158, 33.776157, 34.019646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583643, 33.077854, 33.970722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280010, 33.270378, 33.795391>,  <27.097830, 33.385895, 33.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280010, 33.270378, 33.795391>,  <27.583643, 33.077854, 33.970722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280010, 33.270378, 33.795391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161126, -0.791279, -0.589844,
		-0.630739, -0.377114, 0.678198,
		-0.759083, 0.481313, -0.438328,
		27.052286, 33.414772, 33.663891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924536, 32.600929, 33.937996>,  <27.583643, 33.077854, 33.970722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924536, 32.600929, 33.937996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895819, 32.878613, 33.651524>,  <26.878590, 33.045223, 33.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895819, 32.878613, 33.651524>,  <26.924536, 32.600929, 33.937996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895819, 32.878613, 33.651524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035938, -0.715770, -0.697412,
		-0.996772, -0.075806, 0.026437,
		-0.071791, 0.694210, -0.716183,
		26.874281, 33.086876, 33.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377390, 32.355843, 33.359539>,  <26.924536, 32.600929, 33.937996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377390, 32.355843, 33.359539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626715, 32.621964, 33.195171>,  <26.776310, 32.781635, 33.096550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626715, 32.621964, 33.195171>,  <26.377390, 32.355843, 33.359539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626715, 32.621964, 33.195171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084763, -0.579881, -0.810280,
		-0.777364, 0.470228, -0.417841,
		0.623314, 0.665300, -0.410920,
		26.813709, 32.821552, 33.071896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069201, 32.366192, 32.649315>,  <26.377390, 32.355843, 33.359539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069201, 32.366192, 32.649315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435896, 32.525887, 32.655033>,  <26.655912, 32.621704, 32.658463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435896, 32.525887, 32.655033>,  <26.069201, 32.366192, 32.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435896, 32.525887, 32.655033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254927, -0.557072, -0.790369,
		-0.307576, 0.728206, -0.612464,
		0.916739, 0.399232, 0.014297,
		26.710918, 32.645657, 32.659321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143547, 32.411720, 31.949652>,  <26.069201, 32.366192, 32.649315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143547, 32.411720, 31.949652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512241, 32.431122, 32.103561>,  <26.733458, 32.442764, 32.195908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512241, 32.431122, 32.103561>,  <26.143547, 32.411720, 31.949652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512241, 32.431122, 32.103561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324830, -0.638589, -0.697632,
		0.211875, 0.768018, -0.604365,
		0.921734, 0.048505, 0.384776,
		26.788761, 32.445675, 32.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557249, 32.476406, 31.404203>,  <26.143547, 32.411720, 31.949652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557249, 32.476406, 31.404203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812347, 32.334545, 31.677700>,  <26.965406, 32.249428, 31.841799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812347, 32.334545, 31.677700>,  <26.557249, 32.476406, 31.404203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812347, 32.334545, 31.677700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443397, -0.556822, -0.702388,
		0.629825, 0.751114, -0.197860,
		0.637746, -0.354651, 0.683742,
		27.003672, 32.228149, 31.882822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121046, 32.407269, 31.017666>,  <26.557249, 32.476406, 31.404203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121046, 32.407269, 31.017666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204796, 32.178917, 31.335222>,  <27.255047, 32.041904, 31.525755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204796, 32.178917, 31.335222>,  <27.121046, 32.407269, 31.017666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204796, 32.178917, 31.335222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594450, -0.570321, -0.566889,
		0.776396, 0.590621, 0.219946,
		0.209376, -0.570877, 0.793889,
		27.267609, 32.007652, 31.573389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852484, 32.424118, 31.019249>,  <27.121046, 32.407269, 31.017666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852484, 32.424118, 31.019249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723547, 32.104721, 31.222624>,  <27.646185, 31.913082, 31.344648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723547, 32.104721, 31.222624>,  <27.852484, 32.424118, 31.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723547, 32.104721, 31.222624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642039, -0.579099, -0.502424,
		0.695617, 0.164485, 0.699329,
		-0.322340, -0.798491, 0.508437,
		27.626844, 31.865173, 31.375154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445620, 32.075119, 31.308184>,  <27.852484, 32.424118, 31.019249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445620, 32.075119, 31.308184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159674, 31.796423, 31.284451>,  <27.988106, 31.629206, 31.270210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159674, 31.796423, 31.284451>,  <28.445620, 32.075119, 31.308184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159674, 31.796423, 31.284451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594291, -0.560647, -0.576622,
		0.368489, -0.447470, 0.814854,
		-0.714866, -0.696739, -0.059335,
		27.945213, 31.587400, 31.266649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812759, 31.518282, 31.338799>,  <28.445620, 32.075119, 31.308184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812759, 31.518282, 31.338799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468138, 31.376595, 31.193335>,  <28.261364, 31.291582, 31.106056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468138, 31.376595, 31.193335>,  <28.812759, 31.518282, 31.338799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468138, 31.376595, 31.193335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504634, -0.519418, -0.689601,
		0.055378, -0.777645, 0.626260,
		-0.861555, -0.354221, -0.363661,
		28.209671, 31.270329, 31.084236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895397, 30.701752, 31.107027>,  <28.812759, 31.518282, 31.338799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895397, 30.701752, 31.107027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596151, 30.853222, 30.889063>,  <28.416603, 30.944103, 30.758284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596151, 30.853222, 30.889063>,  <28.895397, 30.701752, 31.107027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596151, 30.853222, 30.889063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248738, -0.601277, -0.759338,
		-0.615190, -0.703611, 0.355630,
		-0.748111, 0.378679, -0.544915,
		28.371717, 30.966824, 30.725590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424231, 30.177526, 30.907864>,  <28.895397, 30.701752, 31.107027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424231, 30.177526, 30.907864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367071, 30.462055, 30.632589>,  <28.332775, 30.632772, 30.467424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367071, 30.462055, 30.632589>,  <28.424231, 30.177526, 30.907864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367071, 30.462055, 30.632589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059083, -0.687951, -0.723348,
		-0.987972, -0.144025, 0.056280,
		-0.142898, 0.711323, -0.688186,
		28.324202, 30.675451, 30.426134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832829, 29.883905, 30.447815>,  <28.424231, 30.177526, 30.907864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832829, 29.883905, 30.447815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046185, 30.162445, 30.255733>,  <28.174198, 30.329569, 30.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046185, 30.162445, 30.255733>,  <27.832829, 29.883905, 30.447815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046185, 30.162445, 30.255733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065363, -0.599937, -0.797373,
		-0.843342, 0.393922, -0.365514,
		0.533388, 0.696349, -0.480204,
		28.206202, 30.371349, 30.111671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654625, 29.681692, 29.813021>,  <27.832829, 29.883905, 30.447815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654625, 29.681692, 29.813021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965841, 29.927790, 29.762222>,  <28.152571, 30.075447, 29.731743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965841, 29.927790, 29.762222>,  <27.654625, 29.681692, 29.813021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965841, 29.927790, 29.762222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200639, -0.434929, -0.877827,
		-0.595311, 0.657505, -0.461835,
		0.778042, 0.615242, -0.126997,
		28.199253, 30.112362, 29.724123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573011, 29.871250, 29.091911>,  <27.654625, 29.681692, 29.813021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573011, 29.871250, 29.091911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956903, 29.914263, 29.195719>,  <28.187239, 29.940069, 29.258003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956903, 29.914263, 29.195719>,  <27.573011, 29.871250, 29.091911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956903, 29.914263, 29.195719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280644, -0.326381, -0.902615,
		-0.012356, 0.939102, -0.343416,
		0.959732, 0.107531, 0.259520,
		28.244823, 29.946522, 29.273575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983364, 30.142385, 28.464657>,  <27.573011, 29.871250, 29.091911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983364, 30.142385, 28.464657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268036, 30.016176, 28.715721>,  <28.438839, 29.940451, 28.866360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268036, 30.016176, 28.715721>,  <27.983364, 30.142385, 28.464657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268036, 30.016176, 28.715721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524904, -0.354974, -0.773608,
		0.466894, 0.880023, -0.087009,
		0.711678, -0.315522, 0.627662,
		28.481539, 29.921520, 28.904020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677975, 30.267172, 28.191891>,  <27.983364, 30.142385, 28.464657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677975, 30.267172, 28.191891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716602, 29.973658, 28.460884>,  <28.739779, 29.797548, 28.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716602, 29.973658, 28.460884>,  <28.677975, 30.267172, 28.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716602, 29.973658, 28.460884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303298, -0.621813, -0.722052,
		0.947990, 0.273689, 0.162509,
		0.096567, -0.733786, 0.672482,
		28.745573, 29.753521, 28.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205019, 29.994961, 27.757509>,  <28.677975, 30.267172, 28.191891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205019, 29.994961, 27.757509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142834, 29.711641, 28.032942>,  <29.105522, 29.541649, 28.198200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142834, 29.711641, 28.032942>,  <29.205019, 29.994961, 27.757509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142834, 29.711641, 28.032942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358310, -0.690017, -0.628881,
		0.920568, 0.148957, 0.361064,
		-0.155464, -0.708300, 0.688580,
		29.096195, 29.499151, 28.239515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797102, 30.456226, 27.455523>,  <29.205019, 29.994961, 27.757509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797102, 30.456226, 27.455523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948383, 30.328241, 27.802990>,  <30.039152, 30.251450, 28.011471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948383, 30.328241, 27.802990>,  <29.797102, 30.456226, 27.455523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948383, 30.328241, 27.802990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733405, -0.469021, -0.492073,
		0.564869, 0.823190, 0.057277,
		0.378206, -0.319964, 0.868667,
		30.061846, 30.232252, 28.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595346, 30.420586, 27.349451>,  <29.797102, 30.456226, 27.455523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595346, 30.420586, 27.349451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480534, 30.174786, 27.643391>,  <30.411646, 30.027306, 27.819754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480534, 30.174786, 27.643391>,  <30.595346, 30.420586, 27.349451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480534, 30.174786, 27.643391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698716, -0.659081, -0.278224,
		0.655293, 0.433593, 0.618537,
		-0.287030, -0.614500, 0.734849,
		30.394424, 29.990437, 27.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567852, 31.211279, 27.251505>,  <30.595346, 30.420586, 27.349451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567852, 31.211279, 27.251505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917938, 31.021038, 27.286833>,  <31.127991, 30.906893, 27.308029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917938, 31.021038, 27.286833>,  <30.567852, 31.211279, 27.251505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917938, 31.021038, 27.286833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085927, -0.332529, -0.939170,
		0.476041, 0.814387, -0.331902,
		0.875215, -0.475603, 0.088320,
		31.180502, 30.878357, 27.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929869, 31.268366, 26.652903>,  <30.567852, 31.211279, 27.251505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929869, 31.268366, 26.652903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021448, 30.918377, 26.823551>,  <31.076395, 30.708384, 26.925940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021448, 30.918377, 26.823551>,  <30.929869, 31.268366, 26.652903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021448, 30.918377, 26.823551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039971, -0.429441, -0.902210,
		0.972617, 0.223612, -0.063347,
		0.228949, -0.874973, 0.426620,
		31.090134, 30.655886, 26.951538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278025, 31.788383, 26.242905>,  <30.929869, 31.268366, 26.652903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278025, 31.788383, 26.242905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398855, 32.165440, 26.186079>,  <31.471354, 32.391674, 26.151983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398855, 32.165440, 26.186079>,  <31.278025, 31.788383, 26.242905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398855, 32.165440, 26.186079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444214, 0.271048, 0.853936,
		0.843459, -0.194849, 0.500611,
		0.302078, 0.942638, -0.142063,
		31.489479, 32.448231, 26.143459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663399, 32.009708, 26.915636>,  <31.278025, 31.788383, 26.242905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663399, 32.009708, 26.915636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439129, 32.274837, 26.717117>,  <31.304567, 32.433914, 26.598007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439129, 32.274837, 26.717117>,  <31.663399, 32.009708, 26.915636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439129, 32.274837, 26.717117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410782, 0.297760, 0.861741,
		0.718960, 0.687024, 0.105330,
		-0.560673, 0.662825, -0.496295,
		31.270927, 32.473686, 26.568230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751783, 32.754047, 27.079493>,  <31.663399, 32.009708, 26.915636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751783, 32.754047, 27.079493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383720, 32.641987, 26.970079>,  <31.162882, 32.574749, 26.904432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383720, 32.641987, 26.970079>,  <31.751783, 32.754047, 27.079493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383720, 32.641987, 26.970079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352030, 0.286109, 0.891188,
		-0.171412, 0.916327, -0.361888,
		-0.920159, -0.280156, -0.273532,
		31.107672, 32.557941, 26.888020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206825, 33.266666, 26.988386>,  <31.751783, 32.754047, 27.079493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206825, 33.266666, 26.988386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002775, 32.929859, 27.058554>,  <30.880344, 32.727776, 27.100655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002775, 32.929859, 27.058554>,  <31.206825, 33.266666, 26.988386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002775, 32.929859, 27.058554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365706, 0.396936, 0.841844,
		-0.778481, 0.365294, -0.510420,
		-0.510124, -0.842023, 0.175417,
		30.849737, 32.677254, 27.111179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557201, 33.539013, 26.949478>,  <31.206825, 33.266666, 26.988386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557201, 33.539013, 26.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571785, 33.214630, 27.183067>,  <30.580536, 33.020000, 27.323221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571785, 33.214630, 27.183067>,  <30.557201, 33.539013, 26.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571785, 33.214630, 27.183067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410489, 0.520632, 0.748626,
		-0.911136, -0.267008, -0.313907,
		0.036459, -0.810955, 0.583971,
		30.582724, 32.971344, 27.358259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932085, 33.451565, 27.278177>,  <30.557201, 33.539013, 26.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932085, 33.451565, 27.278177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173561, 33.233303, 27.510664>,  <30.318447, 33.102345, 27.650156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173561, 33.233303, 27.510664>,  <29.932085, 33.451565, 27.278177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173561, 33.233303, 27.510664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434418, 0.386150, 0.813738,
		-0.668459, -0.743738, -0.003927,
		0.603691, -0.545657, 0.581219,
		30.354668, 33.069607, 27.685030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484091, 33.126221, 27.838812>,  <29.932085, 33.451565, 27.278177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484091, 33.126221, 27.838812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861347, 33.129921, 27.971718>,  <30.087702, 33.132141, 28.051460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861347, 33.129921, 27.971718>,  <29.484091, 33.126221, 27.838812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861347, 33.129921, 27.971718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310003, 0.385147, 0.869230,
		-0.119930, -0.922809, 0.366116,
		0.943141, 0.009250, 0.332264,
		30.144289, 33.132694, 28.071398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457153, 32.810570, 28.442522>,  <29.484091, 33.126221, 27.838812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457153, 32.810570, 28.442522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804125, 33.007755, 28.469530>,  <30.012308, 33.126064, 28.485735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804125, 33.007755, 28.469530>,  <29.457153, 32.810570, 28.442522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804125, 33.007755, 28.469530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238735, 0.293291, 0.925735,
		0.436551, -0.819126, 0.372096,
		0.867427, 0.492963, 0.067517,
		30.064354, 33.155643, 28.489786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540312, 32.687214, 29.187181>,  <29.457153, 32.810570, 28.442522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540312, 32.687214, 29.187181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788727, 32.978458, 29.071133>,  <29.937777, 33.153206, 29.001503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788727, 32.978458, 29.071133>,  <29.540312, 32.687214, 29.187181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788727, 32.978458, 29.071133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002439, 0.371948, 0.928250,
		0.783777, -0.575771, 0.232769,
		0.621037, 0.728109, -0.290120,
		29.975039, 33.196892, 28.984097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140078, 32.712097, 29.661135>,  <29.540312, 32.687214, 29.187181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140078, 32.712097, 29.661135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125591, 33.082413, 29.510612>,  <30.116899, 33.304600, 29.420300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125591, 33.082413, 29.510612>,  <30.140078, 32.712097, 29.661135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125591, 33.082413, 29.510612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059803, 0.373872, 0.925550,
		0.997553, 0.056026, 0.041824,
		-0.036218, 0.925787, -0.376307,
		30.114725, 33.360149, 29.397720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506985, 33.096283, 30.207331>,  <30.140078, 32.712097, 29.661135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506985, 33.096283, 30.207331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294304, 33.337822, 29.969790>,  <30.166695, 33.482746, 29.827265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294304, 33.337822, 29.969790>,  <30.506985, 33.096283, 30.207331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294304, 33.337822, 29.969790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215357, 0.581738, 0.784348,
		0.819093, 0.544931, -0.179269,
		-0.531703, 0.603847, -0.593852,
		30.134792, 33.518974, 29.791634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752918, 33.684715, 30.354858>,  <30.506985, 33.096283, 30.207331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752918, 33.684715, 30.354858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397142, 33.781696, 30.199879>,  <30.183678, 33.839886, 30.106892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397142, 33.781696, 30.199879>,  <30.752918, 33.684715, 30.354858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397142, 33.781696, 30.199879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142688, 0.658037, 0.739343,
		0.434211, 0.712884, -0.550688,
		-0.889438, 0.242454, -0.387447,
		30.130310, 33.854431, 30.083645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678003, 34.433846, 30.208218>,  <30.752918, 33.684715, 30.354858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678003, 34.433846, 30.208218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305077, 34.296547, 30.253769>,  <30.081320, 34.214169, 30.281099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305077, 34.296547, 30.253769>,  <30.678003, 34.433846, 30.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305077, 34.296547, 30.253769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214289, 0.777999, 0.590592,
		-0.291315, 0.526216, -0.798895,
		-0.932318, -0.343242, 0.113880,
		30.025381, 34.193573, 30.287933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142239, 35.060207, 30.067295>,  <30.678003, 34.433846, 30.208218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142239, 35.060207, 30.067295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982185, 34.775108, 30.297731>,  <29.886154, 34.604050, 30.435993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982185, 34.775108, 30.297731>,  <30.142239, 35.060207, 30.067295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982185, 34.775108, 30.297731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243094, 0.688632, 0.683148,
		-0.883629, 0.133305, -0.448810,
		-0.400132, -0.712752, 0.576090,
		29.862146, 34.561283, 30.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607101, 35.342514, 30.394604>,  <30.142239, 35.060207, 30.067295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607101, 35.342514, 30.394604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620512, 35.015888, 30.625114>,  <29.628559, 34.819912, 30.763420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620512, 35.015888, 30.625114>,  <29.607101, 35.342514, 30.394604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620512, 35.015888, 30.625114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203878, 0.558886, 0.803791,
		-0.978422, -0.144438, -0.147743,
		0.033526, -0.816568, 0.576274,
		29.630569, 34.770916, 30.797997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961016, 35.367920, 30.873186>,  <29.607101, 35.342514, 30.394604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961016, 35.367920, 30.873186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218359, 35.108711, 31.036234>,  <29.372765, 34.953186, 31.134064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218359, 35.108711, 31.036234>,  <28.961016, 35.367920, 30.873186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218359, 35.108711, 31.036234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101360, 0.455656, 0.884366,
		-0.758825, -0.610282, 0.227467,
		0.643359, -0.648023, 0.407622,
		29.411367, 34.914303, 31.158520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768261, 35.360653, 31.484365>,  <28.961016, 35.367920, 30.873186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768261, 35.360653, 31.484365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112200, 35.162956, 31.535578>,  <29.318563, 35.044338, 31.566305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112200, 35.162956, 31.535578>,  <28.768261, 35.360653, 31.484365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112200, 35.162956, 31.535578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074456, 0.369478, 0.926252,
		-0.505095, -0.786901, 0.354494,
		0.859846, -0.494239, 0.128032,
		29.370153, 35.014683, 31.573988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715935, 34.838047, 32.172565>,  <28.768261, 35.360653, 31.484365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715935, 34.838047, 32.172565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076469, 34.976982, 32.069069>,  <29.292791, 35.060345, 32.006973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076469, 34.976982, 32.069069>,  <28.715935, 34.838047, 32.172565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076469, 34.976982, 32.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120564, 0.372563, 0.920142,
		0.415998, -0.860553, 0.293928,
		0.901337, 0.347340, -0.258738,
		29.346870, 35.081184, 31.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138451, 34.603104, 32.736221>,  <28.715935, 34.838047, 32.172565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138451, 34.603104, 32.736221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362419, 34.894154, 32.577702>,  <29.496799, 35.068783, 32.482590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362419, 34.894154, 32.577702>,  <29.138451, 34.603104, 32.736221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362419, 34.894154, 32.577702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257755, 0.301602, 0.917932,
		0.787433, -0.616117, -0.018676,
		0.559920, 0.727624, -0.396299,
		29.530396, 35.112442, 32.458813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680910, 34.616852, 33.195019>,  <29.138451, 34.603104, 32.736221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680910, 34.616852, 33.195019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708675, 34.953453, 32.980709>,  <29.725334, 35.155415, 32.852123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708675, 34.953453, 32.980709>,  <29.680910, 34.616852, 33.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708675, 34.953453, 32.980709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265072, 0.502208, 0.823119,
		0.961727, -0.199153, -0.188200,
		0.069411, 0.841502, -0.535777,
		29.729498, 35.205902, 32.819977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360945, 34.830952, 33.283772>,  <29.680910, 34.616852, 33.195019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360945, 34.830952, 33.283772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133451, 35.149757, 33.202473>,  <29.996956, 35.341042, 33.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133451, 35.149757, 33.202473>,  <30.360945, 34.830952, 33.283772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133451, 35.149757, 33.202473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428068, 0.497813, 0.754281,
		0.702352, 0.341982, -0.624300,
		-0.568735, 0.797014, -0.203248,
		29.962831, 35.388863, 33.141499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863398, 35.398163, 33.407318>,  <30.360945, 34.830952, 33.283772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863398, 35.398163, 33.407318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517622, 35.599258, 33.407864>,  <30.310156, 35.719913, 33.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517622, 35.599258, 33.407864>,  <30.863398, 35.398163, 33.407318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517622, 35.599258, 33.407864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350631, 0.600952, 0.718272,
		0.360284, 0.621379, -0.695761,
		-0.864438, 0.502737, 0.001362,
		30.258291, 35.750080, 33.408272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027798, 36.039753, 33.506790>,  <30.863398, 35.398163, 33.407318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027798, 36.039753, 33.506790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648308, 36.019863, 33.631660>,  <30.420614, 36.007927, 33.706581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648308, 36.019863, 33.631660>,  <31.027798, 36.039753, 33.506790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648308, 36.019863, 33.631660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209299, 0.641253, 0.738233,
		-0.236893, 0.765716, -0.597964,
		-0.948723, -0.049729, 0.312171,
		30.363691, 36.004944, 33.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577147, 36.634300, 33.368958>,  <31.027798, 36.039753, 33.506790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577147, 36.634300, 33.368958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514044, 36.424015, 33.703320>,  <30.476181, 36.297844, 33.903938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514044, 36.424015, 33.703320>,  <30.577147, 36.634300, 33.368958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514044, 36.424015, 33.703320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254308, 0.796325, 0.548811,
		-0.954170, 0.299157, 0.008066,
		-0.157758, -0.525711, 0.835907,
		30.466717, 36.266300, 33.954090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990961, 36.917339, 33.810574>,  <30.577147, 36.634300, 33.368958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990961, 36.917339, 33.810574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305464, 36.763546, 34.004055>,  <30.494165, 36.671268, 34.120144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305464, 36.763546, 34.004055>,  <29.990961, 36.917339, 33.810574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305464, 36.763546, 34.004055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005047, 0.778801, 0.627251,
		-0.617877, -0.495623, 0.610399,
		0.786259, -0.384483, 0.483704,
		30.541342, 36.648201, 34.149166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997528, 37.084259, 34.514160>,  <29.990961, 36.917339, 33.810574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997528, 37.084259, 34.514160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364285, 37.036819, 34.361717>,  <30.584339, 37.008354, 34.270252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364285, 37.036819, 34.361717>,  <29.997528, 37.084259, 34.514160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364285, 37.036819, 34.361717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327820, 0.768462, 0.549546,
		0.227692, -0.628809, 0.743475,
		0.916892, -0.118599, -0.381109,
		30.639353, 37.001240, 34.247383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632509, 37.185051, 35.094719>,  <29.997528, 37.084259, 34.514160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632509, 37.185051, 35.094719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738176, 37.301067, 34.726788>,  <30.801577, 37.370678, 34.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738176, 37.301067, 34.726788>,  <30.632509, 37.185051, 35.094719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738176, 37.301067, 34.726788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408398, 0.830350, 0.379117,
		0.873743, -0.475808, 0.100898,
		0.264167, 0.290044, -0.919832,
		30.817427, 37.388081, 34.450836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354918, 37.157715, 34.962433>,  <30.632509, 37.185051, 35.094719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354918, 37.157715, 34.962433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187189, 37.466099, 34.770691>,  <31.086552, 37.651131, 34.655643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187189, 37.466099, 34.770691>,  <31.354918, 37.157715, 34.962433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187189, 37.466099, 34.770691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607553, 0.630663, 0.482850,
		0.674573, -0.088767, -0.732852,
		-0.419321, 0.770964, -0.479359,
		31.061394, 37.697388, 34.626884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747944, 37.537937, 34.478512>,  <31.354918, 37.157715, 34.962433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747944, 37.537937, 34.478512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496614, 37.780647, 34.673256>,  <31.345818, 37.926273, 34.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496614, 37.780647, 34.673256>,  <31.747944, 37.537937, 34.478512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496614, 37.780647, 34.673256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770014, 0.395888, 0.500350,
		0.110856, 0.689274, -0.715969,
		-0.628322, 0.606773, 0.486865,
		31.308117, 37.962681, 34.819317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950541, 38.226173, 34.333111>,  <31.747944, 37.537937, 34.478512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950541, 38.226173, 34.333111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765804, 38.207451, 34.687401>,  <31.654963, 38.196217, 34.899975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765804, 38.207451, 34.687401>,  <31.950541, 38.226173, 34.333111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765804, 38.207451, 34.687401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801579, 0.405472, 0.439391,
		-0.379704, 0.912908, -0.149743,
		-0.461840, -0.046808, 0.885727,
		31.627253, 38.193409, 34.953117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055218, 38.804668, 34.671024>,  <31.950541, 38.226173, 34.333111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055218, 38.804668, 34.671024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928413, 38.577175, 34.974617>,  <31.852331, 38.440678, 35.156773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928413, 38.577175, 34.974617>,  <32.055218, 38.804668, 34.671024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928413, 38.577175, 34.974617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670034, 0.432074, 0.603628,
		-0.671239, 0.699895, 0.244101,
		-0.317006, -0.568734, 0.758979,
		31.833311, 38.406555, 35.202309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717525, 39.161362, 35.101429>,  <32.055218, 38.804668, 34.671024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717525, 39.161362, 35.101429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913074, 38.847389, 35.253685>,  <32.030403, 38.659008, 35.345039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913074, 38.847389, 35.253685>,  <31.717525, 39.161362, 35.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913074, 38.847389, 35.253685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611166, 0.619532, 0.492602,
		-0.622479, -0.008183, 0.782594,
		0.488873, -0.784929, 0.380644,
		32.059738, 38.611912, 35.367878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728184, 39.155899, 35.834431>,  <31.717525, 39.161362, 35.101429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728184, 39.155899, 35.834431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059486, 38.949066, 35.748062>,  <32.258266, 38.824966, 35.696243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059486, 38.949066, 35.748062>,  <31.728184, 39.155899, 35.834431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059486, 38.949066, 35.748062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551306, 0.683018, 0.479112,
		-0.100262, -0.515866, 0.850782,
		0.828257, -0.517078, -0.215919,
		32.307964, 38.793941, 35.683285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095493, 39.050117, 36.469177>,  <31.728184, 39.155899, 35.834431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095493, 39.050117, 36.469177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366570, 39.000340, 36.179283>,  <32.529217, 38.970470, 36.005344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366570, 39.000340, 36.179283>,  <32.095493, 39.050117, 36.469177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366570, 39.000340, 36.179283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596392, 0.669576, 0.442702,
		0.430173, -0.732244, 0.527988,
		0.677694, -0.124449, -0.724737,
		32.569878, 38.963005, 35.961861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702728, 38.709682, 36.753639>,  <32.095493, 39.050117, 36.469177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702728, 38.709682, 36.753639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857727, 38.860565, 36.417171>,  <32.950726, 38.951096, 36.215290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857727, 38.860565, 36.417171>,  <32.702728, 38.709682, 36.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857727, 38.860565, 36.417171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720550, 0.445229, 0.531581,
		0.575027, -0.812089, -0.099270,
		0.387493, 0.377203, -0.841170,
		32.973976, 38.973724, 36.164822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368599, 38.658916, 36.898865>,  <32.702728, 38.709682, 36.753639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368599, 38.658916, 36.898865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324165, 38.946560, 36.624481>,  <33.297504, 39.119144, 36.459850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324165, 38.946560, 36.624481>,  <33.368599, 38.658916, 36.898865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324165, 38.946560, 36.624481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695974, 0.549009, 0.462828,
		0.709423, -0.425998, -0.561467,
		-0.111087, 0.719107, -0.685963,
		33.290840, 39.162292, 36.418694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111710, 38.945049, 36.632854>,  <33.368599, 38.658916, 36.898865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111710, 38.945049, 36.632854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823296, 39.215904, 36.574078>,  <33.650246, 39.378418, 36.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823296, 39.215904, 36.574078>,  <34.111710, 38.945049, 36.632854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823296, 39.215904, 36.574078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501247, 0.656157, 0.564101,
		0.478394, 0.333080, -0.812525,
		-0.721035, 0.677138, -0.146946,
		33.606987, 39.419044, 36.529995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427910, 39.526928, 36.414593>,  <34.111710, 38.945049, 36.632854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427910, 39.526928, 36.414593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072140, 39.645679, 36.553608>,  <33.858677, 39.716930, 36.637016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072140, 39.645679, 36.553608>,  <34.427910, 39.526928, 36.414593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072140, 39.645679, 36.553608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446828, 0.724874, 0.524311,
		-0.096263, 0.621625, -0.777377,
		-0.889426, 0.296882, 0.347538,
		33.805313, 39.734745, 36.657867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623196, 40.151829, 36.744179>,  <34.427910, 39.526928, 36.414593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623196, 40.151829, 36.744179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243797, 40.115768, 36.865662>,  <34.016159, 40.094131, 36.938553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243797, 40.115768, 36.865662>,  <34.623196, 40.151829, 36.744179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243797, 40.115768, 36.865662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224625, 0.484652, 0.845373,
		-0.223400, 0.870049, -0.439439,
		-0.948492, -0.090147, 0.303706,
		33.959251, 40.088726, 36.956772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348236, 40.846996, 37.085533>,  <34.623196, 40.151829, 36.744179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348236, 40.846996, 37.085533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153290, 40.532677, 37.237846>,  <34.036324, 40.344086, 37.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153290, 40.532677, 37.237846>,  <34.348236, 40.846996, 37.085533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153290, 40.532677, 37.237846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103059, 0.381265, 0.918703,
		-0.867097, 0.486984, -0.104830,
		-0.487361, -0.785801, 0.380782,
		34.007080, 40.296936, 37.352081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026482, 41.240559, 37.579327>,  <34.348236, 40.846996, 37.085533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026482, 41.240559, 37.579327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992218, 40.855682, 37.682755>,  <33.971661, 40.624756, 37.744812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992218, 40.855682, 37.682755>,  <34.026482, 41.240559, 37.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992218, 40.855682, 37.682755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003127, 0.259780, 0.965663,
		-0.996320, 0.081908, -0.025261,
		-0.085658, -0.962188, 0.258568,
		33.966522, 40.567024, 37.760326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408165, 41.100616, 37.977615>,  <34.026482, 41.240559, 37.579327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408165, 41.100616, 37.977615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665443, 40.811897, 38.079838>,  <33.819813, 40.638668, 38.141171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665443, 40.811897, 38.079838>,  <33.408165, 41.100616, 37.977615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665443, 40.811897, 38.079838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157026, 0.202321, 0.966648,
		-0.749426, -0.661876, 0.016793,
		0.643199, -0.721794, 0.255556,
		33.858402, 40.595360, 38.156506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069073, 40.704304, 38.443016>,  <33.408165, 41.100616, 37.977615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069073, 40.704304, 38.443016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452911, 40.622700, 38.520535>,  <33.683212, 40.573738, 38.567047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452911, 40.622700, 38.520535>,  <33.069073, 40.704304, 38.443016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452911, 40.622700, 38.520535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191234, 0.032402, 0.981009,
		-0.206414, -0.978433, -0.007921,
		0.959595, -0.204009, 0.193798,
		33.740791, 40.561497, 38.578674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895916, 40.353329, 38.983299>,  <33.069073, 40.704304, 38.443016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895916, 40.353329, 38.983299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288383, 40.430119, 38.974838>,  <33.523865, 40.476192, 38.969761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288383, 40.430119, 38.974838>,  <32.895916, 40.353329, 38.983299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288383, 40.430119, 38.974838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002858, 0.095056, 0.995468,
		0.193115, -0.976785, 0.092717,
		0.981172, 0.191975, -0.021149,
		33.582737, 40.487709, 38.968494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201157, 39.954838, 39.396236>,  <32.895916, 40.353329, 38.983299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201157, 39.954838, 39.396236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511311, 40.207119, 39.383633>,  <33.697403, 40.358490, 39.376068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511311, 40.207119, 39.383633>,  <33.201157, 39.954838, 39.396236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511311, 40.207119, 39.383633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166316, -0.155818, 0.973683,
		0.609198, -0.760217, -0.225715,
		0.775382, 0.630706, -0.031512,
		33.743927, 40.396332, 39.374180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876411, 39.629200, 39.608585>,  <33.201157, 39.954838, 39.396236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876411, 39.629200, 39.608585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907604, 40.020561, 39.685158>,  <33.926319, 40.255379, 39.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907604, 40.020561, 39.685158>,  <33.876411, 39.629200, 39.608585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907604, 40.020561, 39.685158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053826, -0.195865, 0.979152,
		0.995501, -0.066054, -0.067938,
		0.077983, 0.978404, 0.191428,
		33.931000, 40.314083, 39.742588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488972, 39.717999, 39.993404>,  <33.876411, 39.629200, 39.608585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488972, 39.717999, 39.993404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269299, 40.045288, 40.061417>,  <34.137493, 40.241661, 40.102226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269299, 40.045288, 40.061417>,  <34.488972, 39.717999, 39.993404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269299, 40.045288, 40.061417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203518, -0.066392, 0.976818,
		0.810542, 0.571057, -0.130062,
		-0.549183, 0.818221, 0.170034,
		34.104542, 40.290756, 40.112427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901897, 40.080647, 40.497456>,  <34.488972, 39.717999, 39.993404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901897, 40.080647, 40.497456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525146, 40.214817, 40.505051>,  <34.299095, 40.295319, 40.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525146, 40.214817, 40.505051>,  <34.901897, 40.080647, 40.497456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525146, 40.214817, 40.505051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026820, -0.131409, 0.990965,
		0.334887, 0.932858, 0.132767,
		-0.941877, 0.335422, 0.018988,
		34.242584, 40.315445, 40.510746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885418, 40.452370, 41.159332>,  <34.901897, 40.080647, 40.497456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885418, 40.452370, 41.159332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497250, 40.426151, 41.066395>,  <34.264347, 40.410419, 41.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497250, 40.426151, 41.066395>,  <34.885418, 40.452370, 41.159332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497250, 40.426151, 41.066395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214793, -0.204870, 0.954931,
		-0.110194, 0.976592, 0.184731,
		-0.970423, -0.065548, -0.232340,
		34.206123, 40.406487, 40.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492649, 40.956799, 41.526276>,  <34.885418, 40.452370, 41.159332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492649, 40.956799, 41.526276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224785, 40.677124, 41.426125>,  <34.064068, 40.509319, 41.366032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224785, 40.677124, 41.426125>,  <34.492649, 40.956799, 41.526276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224785, 40.677124, 41.426125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290009, -0.064177, 0.954870,
		-0.683702, 0.712051, -0.159794,
		-0.669661, -0.699188, -0.250379,
		34.023888, 40.467369, 41.351009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883499, 41.176506, 41.847126>,  <34.492649, 40.956799, 41.526276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883499, 41.176506, 41.847126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846500, 40.784416, 41.777138>,  <33.824303, 40.549164, 41.735146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846500, 40.784416, 41.777138>,  <33.883499, 41.176506, 41.847126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846500, 40.784416, 41.777138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381175, -0.127476, 0.915672,
		-0.919864, 0.151388, -0.361844,
		-0.092495, -0.980220, -0.174966,
		33.818752, 40.490349, 41.724648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173206, 41.138081, 42.049721>,  <33.883499, 41.176506, 41.847126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173206, 41.138081, 42.049721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299713, 40.758686, 42.042332>,  <33.375618, 40.531048, 42.037899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299713, 40.758686, 42.042332>,  <33.173206, 41.138081, 42.049721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299713, 40.758686, 42.042332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422489, -0.158260, 0.892444,
		-0.849399, -0.274443, -0.450779,
		0.316265, -0.948491, -0.018477,
		33.394592, 40.474140, 42.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596977, 40.703732, 42.278591>,  <33.173206, 41.138081, 42.049721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596977, 40.703732, 42.278591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911713, 40.469204, 42.355648>,  <33.100555, 40.328487, 42.401882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911713, 40.469204, 42.355648>,  <32.596977, 40.703732, 42.278591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911713, 40.469204, 42.355648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492472, -0.408381, 0.768568,
		-0.371952, -0.699614, -0.610076,
		0.786844, -0.586315, 0.192642,
		33.147766, 40.293308, 42.413441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398590, 39.992348, 42.356792>,  <32.596977, 40.703732, 42.278591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398590, 39.992348, 42.356792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733982, 40.049282, 42.567196>,  <32.935219, 40.083443, 42.693439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733982, 40.049282, 42.567196>,  <32.398590, 39.992348, 42.356792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733982, 40.049282, 42.567196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434025, -0.409239, 0.802587,
		0.329498, -0.901258, -0.281364,
		0.838483, 0.142332, 0.526011,
		32.985527, 40.091980, 42.724998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282349, 39.750370, 42.908272>,  <32.398590, 39.992348, 42.356792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282349, 39.750370, 42.908272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641151, 39.845181, 43.057510>,  <32.856434, 39.902069, 43.147053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641151, 39.845181, 43.057510>,  <32.282349, 39.750370, 42.908272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641151, 39.845181, 43.057510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231961, -0.466092, 0.853787,
		0.376271, -0.852394, -0.363104,
		0.897003, 0.237030, 0.373099,
		32.910252, 39.916290, 43.169441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745308, 39.133106, 43.070522>,  <32.282349, 39.750370, 42.908272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745308, 39.133106, 43.070522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828892, 39.448936, 43.301315>,  <32.879044, 39.638435, 43.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828892, 39.448936, 43.301315>,  <32.745308, 39.133106, 43.070522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828892, 39.448936, 43.301315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137908, -0.560322, 0.816713,
		0.968151, -0.250233, -0.008198,
		0.208962, 0.789571, 0.576985,
		32.891579, 39.685806, 43.474411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076412, 38.757004, 43.567951>,  <32.745308, 39.133106, 43.070522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076412, 38.757004, 43.567951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992290, 39.114223, 43.727070>,  <32.941818, 39.328556, 43.822540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992290, 39.114223, 43.727070>,  <33.076412, 38.757004, 43.567951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992290, 39.114223, 43.727070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054726, -0.395503, 0.916833,
		0.976103, 0.214586, 0.034304,
		-0.210306, 0.893046, 0.397795,
		32.929199, 39.382137, 43.846409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394764, 38.691002, 44.208466>,  <33.076412, 38.757004, 43.567951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394764, 38.691002, 44.208466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174080, 39.024117, 44.226719>,  <33.041668, 39.223984, 44.237671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174080, 39.024117, 44.226719>,  <33.394764, 38.691002, 44.208466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174080, 39.024117, 44.226719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065805, -0.098007, 0.993008,
		0.831436, 0.544850, 0.108874,
		-0.551710, 0.832786, 0.045633,
		33.008568, 39.273952, 44.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774036, 39.183002, 44.679966>,  <33.394764, 38.691002, 44.208466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774036, 39.183002, 44.679966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382420, 39.262974, 44.664417>,  <33.147449, 39.310959, 44.655087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382420, 39.262974, 44.664417>,  <33.774036, 39.183002, 44.679966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382420, 39.262974, 44.664417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052893, -0.065255, 0.996466,
		0.196689, 0.977634, 0.074462,
		-0.979038, 0.199932, -0.038875,
		33.088707, 39.322952, 44.652756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619751, 39.550125, 45.292164>,  <33.774036, 39.183002, 44.679966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619751, 39.550125, 45.292164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243237, 39.456127, 45.195210>,  <33.017326, 39.399727, 45.137039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243237, 39.456127, 45.195210>,  <33.619751, 39.550125, 45.292164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243237, 39.456127, 45.195210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225308, -0.097391, 0.969408,
		-0.251415, 0.967104, 0.038726,
		-0.941290, -0.234998, -0.242382,
		32.960850, 39.385628, 45.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234226, 39.961601, 45.737236>,  <33.619751, 39.550125, 45.292164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234226, 39.961601, 45.737236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998802, 39.655464, 45.633045>,  <32.857548, 39.471783, 45.570530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998802, 39.655464, 45.633045>,  <33.234226, 39.961601, 45.737236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998802, 39.655464, 45.633045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367848, -0.033388, 0.929286,
		-0.719921, 0.642755, -0.261879,
		-0.588560, -0.765344, -0.260473,
		32.822235, 39.425861, 45.554905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585163, 40.233047, 45.878395>,  <33.234226, 39.961601, 45.737236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585163, 40.233047, 45.878395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570038, 39.833977, 45.901047>,  <32.560963, 39.594532, 45.914639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570038, 39.833977, 45.901047>,  <32.585163, 40.233047, 45.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570038, 39.833977, 45.901047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499896, 0.067954, 0.863415,
		-0.865259, 0.004343, -0.501306,
		-0.037816, -0.997679, 0.056627,
		32.558693, 39.534672, 45.918034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995554, 40.160286, 46.281910>,  <32.585163, 40.233047, 45.878395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995554, 40.160286, 46.281910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155876, 39.795689, 46.318867>,  <32.252071, 39.576931, 46.341042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155876, 39.795689, 46.318867>,  <31.995554, 40.160286, 46.281910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155876, 39.795689, 46.318867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454452, -0.110235, 0.883924,
		-0.795504, -0.396271, -0.458413,
		0.400806, -0.911492, 0.092394,
		32.276119, 39.522240, 46.346584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495140, 39.720261, 46.693638>,  <31.995554, 40.160286, 46.281910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495140, 39.720261, 46.693638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857222, 39.557434, 46.742474>,  <32.074471, 39.459740, 46.771774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857222, 39.557434, 46.742474>,  <31.495140, 39.720261, 46.693638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857222, 39.557434, 46.742474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210154, -0.179068, 0.961129,
		-0.369379, -0.895675, -0.247639,
		0.905204, -0.407063, 0.122086,
		32.128784, 39.435314, 46.779099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419792, 39.125465, 47.021622>,  <31.495140, 39.720261, 46.693638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419792, 39.125465, 47.021622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810411, 39.178516, 47.089462>,  <32.044781, 39.210346, 47.130169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810411, 39.178516, 47.089462>,  <31.419792, 39.125465, 47.021622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810411, 39.178516, 47.089462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135219, -0.235214, 0.962492,
		0.167550, -0.962852, -0.211763,
		0.976546, 0.132631, 0.169606,
		32.103374, 39.218307, 47.140343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563099, 38.473598, 47.370735>,  <31.419792, 39.125465, 47.021622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563099, 38.473598, 47.370735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820248, 38.773045, 47.435596>,  <31.974537, 38.952713, 47.474514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820248, 38.773045, 47.435596>,  <31.563099, 38.473598, 47.370735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820248, 38.773045, 47.435596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051247, -0.169185, 0.984251,
		0.764257, -0.641058, -0.070400,
		0.642873, 0.748613, 0.162153,
		32.013111, 38.997627, 47.484241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844381, 38.280479, 47.952557>,  <31.563099, 38.473598, 47.370735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844381, 38.280479, 47.952557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981274, 38.656311, 47.949379>,  <32.063408, 38.881809, 47.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981274, 38.656311, 47.949379>,  <31.844381, 38.280479, 47.952557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981274, 38.656311, 47.949379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097133, -0.026966, 0.994906,
		0.934581, -0.341260, -0.100493,
		0.342232, 0.939582, -0.007946,
		32.083942, 38.938187, 47.946995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427288, 38.173489, 48.320801>,  <31.844381, 38.280479, 47.952557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427288, 38.173489, 48.320801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278637, 38.544823, 48.317081>,  <32.189445, 38.767624, 48.314850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278637, 38.544823, 48.317081>,  <32.427288, 38.173489, 48.320801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278637, 38.544823, 48.317081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277249, -0.101414, 0.955431,
		0.886016, 0.357644, 0.295068,
		-0.371629, 0.928335, -0.009302,
		32.167149, 38.823322, 48.314289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610687, 38.470337, 48.979618>,  <32.427288, 38.173489, 48.320801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610687, 38.470337, 48.979618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317173, 38.718784, 48.869514>,  <32.141064, 38.867855, 48.803452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317173, 38.718784, 48.869514>,  <32.610687, 38.470337, 48.979618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317173, 38.718784, 48.869514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319648, 0.041883, 0.946610,
		0.599488, 0.782595, 0.167807,
		-0.733785, 0.621120, -0.275263,
		32.097038, 38.905121, 48.786934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503662, 38.928543, 49.546276>,  <32.610687, 38.470337, 48.979618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503662, 38.928543, 49.546276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164417, 38.993317, 49.344486>,  <31.960871, 39.032181, 49.223412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164417, 38.993317, 49.344486>,  <32.503662, 38.928543, 49.546276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164417, 38.993317, 49.344486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458375, 0.253265, 0.851909,
		0.265716, 0.953748, -0.140570,
		-0.848108, 0.161932, -0.504470,
		31.909985, 39.041897, 49.193146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330536, 39.473167, 49.827480>,  <32.503662, 38.928543, 49.546276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330536, 39.473167, 49.827480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003956, 39.310989, 49.663029>,  <31.808008, 39.213684, 49.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003956, 39.310989, 49.663029>,  <32.330536, 39.473167, 49.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003956, 39.310989, 49.663029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509036, 0.169280, 0.843935,
		-0.272572, 0.898310, -0.344594,
		-0.816448, -0.405444, -0.411131,
		31.759022, 39.189358, 49.539688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700502, 39.853943, 50.058720>,  <32.330536, 39.473167, 49.827480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700502, 39.853943, 50.058720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527010, 39.520023, 49.923077>,  <31.422915, 39.319672, 49.841690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527010, 39.520023, 49.923077>,  <31.700502, 39.853943, 50.058720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527010, 39.520023, 49.923077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584290, -0.025916, 0.811131,
		-0.685917, 0.549950, -0.476521,
		-0.433732, -0.834795, -0.339107,
		31.396891, 39.269585, 49.821346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964872, 39.954800, 50.121719>,  <31.700502, 39.853943, 50.058720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964872, 39.954800, 50.121719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 39.575466, 50.142750>,  <31.165113, 39.347866, 50.155369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090023, 39.575466, 50.142750>,  <30.964872, 39.954800, 50.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090023, 39.575466, 50.142750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518196, -0.124047, 0.846218,
		-0.795978, -0.292008, -0.530236,
		0.312877, -0.948337, 0.052579,
		31.183886, 39.290966, 50.158524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458527, 39.536507, 50.433609>,  <30.964872, 39.954800, 50.121719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458527, 39.536507, 50.433609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775747, 39.305542, 50.511230>,  <30.966080, 39.166962, 50.557804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775747, 39.305542, 50.511230>,  <30.458527, 39.536507, 50.433609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775747, 39.305542, 50.511230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427152, -0.300019, 0.852953,
		-0.434290, -0.759327, -0.484576,
		0.793053, -0.577417, 0.194053,
		31.013664, 39.132317, 50.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815289, 39.246571, 50.611904>,  <30.458527, 39.536507, 50.433609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815289, 39.246571, 50.611904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925177, 38.894012, 50.458191>,  <29.991110, 38.682480, 50.365963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925177, 38.894012, 50.458191>,  <29.815289, 39.246571, 50.611904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925177, 38.894012, 50.458191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236387, -0.325486, 0.915522,
		-0.932014, -0.342353, 0.118932,
		0.274721, -0.881393, -0.384286,
		30.007593, 38.629593, 50.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450449, 38.617245, 50.870136>,  <29.815289, 39.246571, 50.611904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450449, 38.617245, 50.870136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823612, 38.539898, 50.748619>,  <30.047510, 38.493492, 50.675709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823612, 38.539898, 50.748619>,  <29.450449, 38.617245, 50.870136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823612, 38.539898, 50.748619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190104, -0.452043, 0.871503,
		-0.305845, -0.870786, -0.384956,
		0.932909, -0.193363, -0.303795,
		30.103485, 38.481888, 50.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492052, 37.921116, 50.796146>,  <29.450449, 38.617245, 50.870136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492052, 37.921116, 50.796146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842524, 38.087002, 50.894390>,  <30.052807, 38.186531, 50.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842524, 38.087002, 50.894390>,  <29.492052, 37.921116, 50.796146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842524, 38.087002, 50.894390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066280, -0.608410, 0.790850,
		0.477406, -0.676648, -0.560563,
		0.876179, 0.414711, 0.245610,
		30.105377, 38.211414, 50.968075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048582, 37.417332, 50.953129>,  <29.492052, 37.921116, 50.796146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048582, 37.417332, 50.953129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131813, 37.747616, 51.162853>,  <30.181751, 37.945786, 51.288689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131813, 37.747616, 51.162853>,  <30.048582, 37.417332, 50.953129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131813, 37.747616, 51.162853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112691, -0.552716, 0.825715,
		0.971599, -0.112727, -0.208058,
		0.208077, 0.825710, 0.524315,
		30.194237, 37.995331, 51.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623861, 37.217056, 51.360188>,  <30.048582, 37.417332, 50.953129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623861, 37.217056, 51.360188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413326, 37.518898, 51.516930>,  <30.287004, 37.700001, 51.610973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413326, 37.518898, 51.516930>,  <30.623861, 37.217056, 51.360188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413326, 37.518898, 51.516930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127716, -0.525788, 0.840973,
		0.840630, 0.392589, 0.373116,
		-0.526337, 0.754600, 0.391853,
		30.255424, 37.745277, 51.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884111, 37.606800, 51.964046>,  <30.623861, 37.217056, 51.360188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884111, 37.606800, 51.964046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486574, 37.571011, 51.990192>,  <30.248053, 37.549538, 52.005882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486574, 37.571011, 51.990192>,  <30.884111, 37.606800, 51.964046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486574, 37.571011, 51.990192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106042, -0.596743, 0.795395,
		-0.032163, 0.797428, 0.602557,
		-0.993841, -0.089478, 0.065368,
		30.188421, 37.544167, 52.009804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538288, 37.749695, 52.289787>,  <30.884111, 37.606800, 51.964046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538288, 37.749695, 52.289787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498932, 37.371765, 52.414764>,  <31.475319, 37.145004, 52.489750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498932, 37.371765, 52.414764>,  <31.538288, 37.749695, 52.289787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498932, 37.371765, 52.414764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154909, -0.324676, -0.933054,
		0.983017, -0.043403, 0.178307,
		-0.098389, -0.944829, 0.312439,
		31.469416, 37.088318, 52.508495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051311, 37.322449, 52.141479>,  <31.538288, 37.749695, 52.289787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051311, 37.322449, 52.141479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724733, 37.091526, 52.136993>,  <31.528786, 36.952972, 52.134300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724733, 37.091526, 52.136993>,  <32.051311, 37.322449, 52.141479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724733, 37.091526, 52.136993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170212, -0.222066, -0.960060,
		0.551760, -0.785749, 0.279570,
		-0.816449, -0.577309, -0.011217,
		31.479799, 36.918335, 52.133629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215008, 36.746002, 51.822594>,  <32.051311, 37.322449, 52.141479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215008, 36.746002, 51.822594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819628, 36.751411, 51.762218>,  <31.582399, 36.754658, 51.725994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819628, 36.751411, 51.762218>,  <32.215008, 36.746002, 51.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819628, 36.751411, 51.762218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141392, -0.276058, -0.950684,
		-0.054520, -0.961046, 0.270958,
		-0.988451, 0.013520, -0.150935,
		31.523092, 36.755466, 51.716938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921885, 36.000694, 51.770668>,  <32.215008, 36.746002, 51.822594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921885, 36.000694, 51.770668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729120, 36.277161, 51.555241>,  <31.613461, 36.443039, 51.425983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729120, 36.277161, 51.555241>,  <31.921885, 36.000694, 51.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729120, 36.277161, 51.555241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355869, -0.407285, -0.841116,
		-0.800699, -0.597003, -0.049688,
		-0.481911, 0.691163, -0.538567,
		31.584547, 36.484509, 51.393669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461231, 35.708885, 51.179092>,  <31.921885, 36.000694, 51.770668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461231, 35.708885, 51.179092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558287, 36.084515, 51.081718>,  <31.616520, 36.309895, 51.023293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558287, 36.084515, 51.081718>,  <31.461231, 35.708885, 51.179092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558287, 36.084515, 51.081718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254914, -0.303831, -0.917990,
		-0.936027, 0.160684, -0.313105,
		0.242638, 0.939078, -0.243434,
		31.631079, 36.366238, 51.008690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223557, 35.895809, 50.494606>,  <31.461231, 35.708885, 51.179092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223557, 35.895809, 50.494606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518776, 36.157513, 50.560616>,  <31.695908, 36.314533, 50.600220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518776, 36.157513, 50.560616>,  <31.223557, 35.895809, 50.494606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518776, 36.157513, 50.560616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350130, -0.162276, -0.922537,
		-0.576798, 0.738656, -0.348843,
		0.738047, 0.654258, 0.165025,
		31.740191, 36.353790, 50.610123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285603, 36.307522, 49.820709>,  <31.223557, 35.895809, 50.494606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285603, 36.307522, 49.820709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641630, 36.378178, 49.988792>,  <31.855246, 36.420570, 50.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641630, 36.378178, 49.988792>,  <31.285603, 36.307522, 49.820709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641630, 36.378178, 49.988792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448259, -0.171875, -0.877224,
		-0.082730, 0.969153, -0.232162,
		0.890067, 0.176642, 0.420212,
		31.908649, 36.431171, 50.114857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605295, 36.609016, 49.375992>,  <31.285603, 36.307522, 49.820709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605295, 36.609016, 49.375992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920511, 36.522842, 49.606670>,  <32.109642, 36.471138, 49.745079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920511, 36.522842, 49.606670>,  <31.605295, 36.609016, 49.375992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920511, 36.522842, 49.606670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556730, -0.150440, -0.816958,
		0.262758, 0.964861, 0.001385,
		0.788042, -0.215433, 0.576696,
		32.156925, 36.458214, 49.779678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122437, 36.998554, 49.087505>,  <31.605295, 36.609016, 49.375992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122437, 36.998554, 49.087505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320801, 36.701744, 49.267941>,  <32.439819, 36.523659, 49.376202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320801, 36.701744, 49.267941>,  <32.122437, 36.998554, 49.087505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320801, 36.701744, 49.267941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476930, -0.201371, -0.855562,
		0.725681, 0.639418, 0.254031,
		0.495907, -0.742021, 0.451089,
		32.469574, 36.479137, 49.403267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755779, 37.033237, 48.838615>,  <32.122437, 36.998554, 49.087505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755779, 37.033237, 48.838615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743919, 36.664104, 48.992237>,  <32.736805, 36.442623, 49.084408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743919, 36.664104, 48.992237>,  <32.755779, 37.033237, 48.838615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743919, 36.664104, 48.992237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701000, -0.293092, -0.650151,
		0.712545, 0.249942, 0.655599,
		-0.029651, -0.922836, 0.384051,
		32.735023, 36.387253, 49.107452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409767, 36.803715, 48.823112>,  <32.755779, 37.033237, 48.838615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409767, 36.803715, 48.823112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196461, 36.465546, 48.835049>,  <33.068478, 36.262646, 48.842213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196461, 36.465546, 48.835049>,  <33.409767, 36.803715, 48.823112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196461, 36.465546, 48.835049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622019, -0.415771, -0.663496,
		0.573342, -0.335257, 0.747584,
		-0.533265, -0.845422, 0.029843,
		33.036480, 36.211918, 48.844002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913414, 36.302769, 48.758617>,  <33.409767, 36.803715, 48.823112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913414, 36.302769, 48.758617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 36.082485, 48.692905>,  <33.389652, 35.950314, 48.653481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586063, 36.082485, 48.692905>,  <33.913414, 36.302769, 48.758617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586063, 36.082485, 48.692905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474799, -0.486865, -0.733163,
		0.323780, -0.677998, 0.659913,
		-0.818372, -0.550709, -0.164276,
		33.340553, 35.917271, 48.643623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130230, 35.602940, 48.625057>,  <33.913414, 36.302769, 48.758617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130230, 35.602940, 48.625057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771202, 35.642395, 48.453182>,  <33.555786, 35.666069, 48.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771202, 35.642395, 48.453182>,  <34.130230, 35.602940, 48.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771202, 35.642395, 48.453182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323746, -0.514097, -0.794287,
		-0.299250, -0.852041, 0.429505,
		-0.897573, 0.098640, -0.429689,
		33.501930, 35.671986, 48.324276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102955, 34.987335, 48.234871>,  <34.130230, 35.602940, 48.625057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102955, 34.987335, 48.234871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826565, 35.220947, 48.064480>,  <33.660732, 35.361115, 47.962246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826565, 35.220947, 48.064480>,  <34.102955, 34.987335, 48.234871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826565, 35.220947, 48.064480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226745, -0.384437, -0.894871,
		-0.686396, -0.714924, 0.133211,
		-0.690976, 0.584031, -0.425981,
		33.619270, 35.396156, 47.936684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706425, 34.495895, 47.787384>,  <34.102955, 34.987335, 48.234871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706425, 34.495895, 47.787384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650070, 34.868378, 47.652920>,  <33.616257, 35.091869, 47.572243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650070, 34.868378, 47.652920>,  <33.706425, 34.495895, 47.787384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650070, 34.868378, 47.652920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190093, -0.307782, -0.932274,
		-0.971605, -0.195242, -0.133655,
		-0.140883, 0.931209, -0.336157,
		33.607807, 35.147739, 47.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347324, 34.386147, 47.179195>,  <33.706425, 34.495895, 47.787384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347324, 34.386147, 47.179195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505573, 34.752529, 47.152351>,  <33.600521, 34.972359, 47.136246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505573, 34.752529, 47.152351>,  <33.347324, 34.386147, 47.179195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505573, 34.752529, 47.152351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174659, -0.146778, -0.973628,
		-0.901652, 0.373468, -0.218049,
		0.395624, 0.915957, -0.067113,
		33.624260, 35.027317, 47.132217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207825, 34.605423, 46.501732>,  <33.347324, 34.386147, 47.179195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207825, 34.605423, 46.501732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492081, 34.877018, 46.575459>,  <33.662636, 35.039974, 46.619694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492081, 34.877018, 46.575459>,  <33.207825, 34.605423, 46.501732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492081, 34.877018, 46.575459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263874, -0.014369, -0.964450,
		-0.652198, 0.734012, -0.189377,
		0.710639, 0.678984, 0.184315,
		33.705273, 35.080715, 46.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117558, 35.000366, 46.007397>,  <33.207825, 34.605423, 46.501732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117558, 35.000366, 46.007397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481499, 35.080986, 46.152470>,  <33.699863, 35.129356, 46.239513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481499, 35.080986, 46.152470>,  <33.117558, 35.000366, 46.007397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481499, 35.080986, 46.152470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347256, 0.108528, -0.931469,
		-0.227099, 0.973447, 0.028755,
		0.909857, 0.201550, 0.362682,
		33.754456, 35.141453, 46.261272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214741, 35.638081, 45.698387>,  <33.117558, 35.000366, 46.007397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214741, 35.638081, 45.698387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549866, 35.448284, 45.806404>,  <33.750942, 35.334408, 45.871216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549866, 35.448284, 45.806404>,  <33.214741, 35.638081, 45.698387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549866, 35.448284, 45.806404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297396, -0.018154, -0.954582,
		0.457843, 0.880073, 0.125902,
		0.837816, -0.474491, 0.270042,
		33.801212, 35.305939, 45.887417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804089, 35.978897, 45.425739>,  <33.214741, 35.638081, 45.698387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804089, 35.978897, 45.425739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911804, 35.600323, 45.497013>,  <33.976433, 35.373180, 45.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911804, 35.600323, 45.497013>,  <33.804089, 35.978897, 45.425739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911804, 35.600323, 45.497013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305392, -0.091547, -0.947816,
		0.913356, 0.309651, 0.264381,
		0.269289, -0.946433, 0.178180,
		33.992592, 35.316391, 45.550468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280560, 35.969505, 44.937820>,  <33.804089, 35.978897, 45.425739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280560, 35.969505, 44.937820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220730, 35.587715, 45.041046>,  <34.184830, 35.358639, 45.102982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220730, 35.587715, 45.041046>,  <34.280560, 35.969505, 44.937820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220730, 35.587715, 45.041046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352043, -0.295312, -0.888176,
		0.923954, -0.042001, 0.380190,
		-0.149579, -0.954477, 0.258069,
		34.175858, 35.301373, 45.118465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920685, 35.670925, 44.909561>,  <34.280560, 35.969505, 44.937820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920685, 35.670925, 44.909561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635387, 35.396225, 44.853470>,  <34.464211, 35.231403, 44.819817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635387, 35.396225, 44.853470>,  <34.920685, 35.670925, 44.909561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635387, 35.396225, 44.853470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373477, -0.203060, -0.905142,
		0.593132, -0.697955, 0.401316,
		-0.713239, -0.686751, -0.140229,
		34.421417, 35.190201, 44.811401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292767, 35.124374, 44.590576>,  <34.920685, 35.670925, 44.909561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292767, 35.124374, 44.590576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907288, 35.037247, 44.528812>,  <34.675999, 34.984970, 44.491753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907288, 35.037247, 44.528812>,  <35.292767, 35.124374, 44.590576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907288, 35.037247, 44.528812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200855, -0.210409, -0.956758,
		0.175911, -0.953039, 0.246521,
		-0.963697, -0.217819, -0.154409,
		34.618179, 34.971901, 44.482491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163372, 34.379761, 44.370152>,  <35.292767, 35.124374, 44.590576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163372, 34.379761, 44.370152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886829, 34.620464, 44.210194>,  <34.720905, 34.764885, 44.114220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886829, 34.620464, 44.210194>,  <35.163372, 34.379761, 44.370152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886829, 34.620464, 44.210194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266530, -0.302037, -0.915279,
		-0.671560, -0.739366, 0.048427,
		-0.691353, 0.601757, -0.399899,
		34.679424, 34.800991, 44.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141808, 34.153904, 43.692837>,  <35.163372, 34.379761, 44.370152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141808, 34.153904, 43.692837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892078, 34.466335, 43.688225>,  <34.742241, 34.653793, 43.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892078, 34.466335, 43.688225>,  <35.141808, 34.153904, 43.692837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892078, 34.466335, 43.688225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180290, -0.158436, -0.970770,
		-0.760075, -0.603997, 0.239736,
		-0.624325, 0.781079, -0.011529,
		34.704781, 34.700661, 43.684765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492519, 33.932716, 43.308968>,  <35.141808, 34.153904, 43.692837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492519, 33.932716, 43.308968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533775, 34.330242, 43.292519>,  <34.558529, 34.568760, 43.282650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533775, 34.330242, 43.292519>,  <34.492519, 33.932716, 43.308968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533775, 34.330242, 43.292519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033602, -0.037841, -0.998719,
		-0.994099, 0.104390, 0.029492,
		0.103141, 0.993816, -0.041125,
		34.564716, 34.628387, 43.280182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362316, 34.117420, 42.622711>,  <34.492519, 33.932716, 43.308968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362316, 34.117420, 42.622711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470745, 34.479076, 42.754803>,  <34.535805, 34.696068, 42.834057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470745, 34.479076, 42.754803>,  <34.362316, 34.117420, 42.622711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470745, 34.479076, 42.754803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088545, 0.365044, -0.926770,
		-0.958477, 0.221984, 0.179011,
		0.271075, 0.904138, 0.330231,
		34.552067, 34.750317, 42.853870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894066, 34.642902, 42.478008>,  <34.362316, 34.117420, 42.622711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894066, 34.642902, 42.478008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269039, 34.781715, 42.489258>,  <34.494022, 34.865002, 42.496006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269039, 34.781715, 42.489258>,  <33.894066, 34.642902, 42.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269039, 34.781715, 42.489258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112726, 0.378936, -0.918532,
		-0.329417, 0.857891, 0.394346,
		0.937431, 0.347033, 0.028121,
		34.550270, 34.885826, 42.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825504, 35.191711, 41.998680>,  <33.894066, 34.642902, 42.478008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825504, 35.191711, 41.998680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222229, 35.208210, 42.047028>,  <34.460262, 35.218109, 42.076038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222229, 35.208210, 42.047028>,  <33.825504, 35.191711, 41.998680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222229, 35.208210, 42.047028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095779, 0.385864, -0.917571,
		-0.084487, 0.921633, 0.378753,
		0.991811, 0.041247, 0.120873,
		34.519772, 35.220585, 42.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093224, 35.894825, 41.873272>,  <33.825504, 35.191711, 41.998680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093224, 35.894825, 41.873272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425007, 35.675781, 41.829227>,  <34.624077, 35.544357, 41.802799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425007, 35.675781, 41.829227>,  <34.093224, 35.894825, 41.873272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425007, 35.675781, 41.829227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051048, 0.270632, -0.961329,
		0.556230, 0.791762, 0.252432,
		0.829459, -0.547605, -0.110116,
		34.673843, 35.511501, 41.796192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636379, 36.320393, 41.664730>,  <34.093224, 35.894825, 41.873272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636379, 36.320393, 41.664730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717957, 35.955616, 41.522305>,  <34.766903, 35.736752, 41.436852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717957, 35.955616, 41.522305>,  <34.636379, 36.320393, 41.664730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717957, 35.955616, 41.522305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173603, 0.391628, -0.903598,
		0.963467, 0.122469, 0.238185,
		0.203943, -0.911937, -0.356059,
		34.779140, 35.682034, 41.415485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278915, 36.441486, 41.271835>,  <34.636379, 36.320393, 41.664730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278915, 36.441486, 41.271835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117981, 36.096069, 41.150227>,  <35.021420, 35.888821, 41.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117981, 36.096069, 41.150227>,  <35.278915, 36.441486, 41.271835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117981, 36.096069, 41.150227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170677, 0.255509, -0.951622,
		0.899443, -0.434758, 0.044586,
		-0.402333, -0.863540, -0.304019,
		34.997280, 35.837006, 41.059021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604404, 36.341316, 40.644058>,  <35.278915, 36.441486, 41.271835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604404, 36.341316, 40.644058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339424, 36.041843, 40.633965>,  <35.180435, 35.862160, 40.627907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339424, 36.041843, 40.633965>,  <35.604404, 36.341316, 40.644058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339424, 36.041843, 40.633965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019137, 0.016760, -0.999676,
		0.748859, -0.662722, 0.003225,
		-0.662453, -0.748678, -0.025234,
		35.140690, 35.817242, 40.626396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891983, 35.788036, 40.192471>,  <35.604404, 36.341316, 40.644058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891983, 35.788036, 40.192471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493267, 35.802925, 40.220833>,  <35.254036, 35.811859, 40.237850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493267, 35.802925, 40.220833>,  <35.891983, 35.788036, 40.192471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493267, 35.802925, 40.220833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068771, 0.055732, -0.996075,
		-0.041027, -0.997752, -0.052993,
		-0.996789, 0.037222, 0.070903,
		35.194229, 35.814091, 40.242104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670338, 35.301327, 39.716721>,  <35.891983, 35.788036, 40.192471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670338, 35.301327, 39.716721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350685, 35.531075, 39.787708>,  <35.158894, 35.668922, 39.830299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350685, 35.531075, 39.787708>,  <35.670338, 35.301327, 39.716721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350685, 35.531075, 39.787708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156174, 0.086721, -0.983915,
		-0.580520, -0.813990, 0.020401,
		-0.799128, 0.574368, 0.177468,
		35.110947, 35.703384, 39.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111477, 35.113438, 39.188644>,  <35.670338, 35.301327, 39.716721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111477, 35.113438, 39.188644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013836, 35.484207, 39.302643>,  <34.955250, 35.706669, 39.371040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013836, 35.484207, 39.302643>,  <35.111477, 35.113438, 39.188644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013836, 35.484207, 39.302643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368272, 0.183259, -0.911478,
		-0.897100, -0.327450, 0.296627,
		-0.244104, 0.926927, 0.284992,
		34.940605, 35.762283, 39.388142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495232, 35.254219, 38.755074>,  <35.111477, 35.113438, 39.188644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495232, 35.254219, 38.755074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584503, 35.609402, 38.915936>,  <34.638065, 35.822510, 39.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584503, 35.609402, 38.915936>,  <34.495232, 35.254219, 38.755074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584503, 35.609402, 38.915936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282363, 0.453766, -0.845203,
		-0.932985, 0.075080, 0.351997,
		0.223182, 0.887952, 0.402157,
		34.651459, 35.875786, 39.036583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857933, 35.755775, 38.816219>,  <34.495232, 35.254219, 38.755074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857933, 35.755775, 38.816219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179958, 35.992748, 38.804207>,  <34.373173, 36.134933, 38.796997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179958, 35.992748, 38.804207>,  <33.857933, 35.755775, 38.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179958, 35.992748, 38.804207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385336, 0.483798, -0.785783,
		-0.450994, 0.644176, 0.617772,
		0.805060, 0.592433, -0.030035,
		34.421474, 36.170479, 38.795197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633759, 36.433617, 38.604061>,  <33.857933, 35.755775, 38.816219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633759, 36.433617, 38.604061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026512, 36.456310, 38.531738>,  <34.262165, 36.469925, 38.488346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026512, 36.456310, 38.531738>,  <33.633759, 36.433617, 38.604061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026512, 36.456310, 38.531738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185233, 0.488660, -0.852584,
		0.039982, 0.870628, 0.490315,
		0.981881, 0.056735, -0.180807,
		34.321075, 36.473331, 38.477497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742599, 37.074638, 38.330425>,  <33.633759, 36.433617, 38.604061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742599, 37.074638, 38.330425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073753, 36.882324, 38.214870>,  <34.272446, 36.766937, 38.145538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073753, 36.882324, 38.214870>,  <33.742599, 37.074638, 38.330425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073753, 36.882324, 38.214870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036224, 0.468140, -0.882911,
		0.559730, 0.741412, 0.370149,
		0.827883, -0.480784, -0.288889,
		34.322117, 36.738091, 38.128204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124062, 37.537052, 38.016857>,  <33.742599, 37.074638, 38.330425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124062, 37.537052, 38.016857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256264, 37.191040, 37.865868>,  <34.335583, 36.983433, 37.775272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256264, 37.191040, 37.865868>,  <34.124062, 37.537052, 38.016857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256264, 37.191040, 37.865868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026213, 0.408206, -0.912513,
		0.943442, 0.291692, 0.157588,
		0.330501, -0.865034, -0.377472,
		34.355415, 36.931530, 37.752625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725437, 37.678318, 37.624687>,  <34.124062, 37.537052, 38.016857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725437, 37.678318, 37.624687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562443, 37.352406, 37.459717>,  <34.464645, 37.156860, 37.360733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562443, 37.352406, 37.459717>,  <34.725437, 37.678318, 37.624687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562443, 37.352406, 37.459717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145621, 0.387871, -0.910138,
		0.901528, -0.430924, -0.039402,
		-0.407483, -0.814777, -0.412428,
		34.440197, 37.107971, 37.335987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215084, 37.479336, 37.136543>,  <34.725437, 37.678318, 37.624687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215084, 37.479336, 37.136543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900402, 37.261887, 37.019527>,  <34.711594, 37.131416, 36.949318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900402, 37.261887, 37.019527>,  <35.215084, 37.479336, 37.136543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900402, 37.261887, 37.019527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237363, 0.171082, -0.956237,
		0.569877, -0.821711, -0.005555,
		-0.786701, -0.543619, -0.292540,
		34.664391, 37.098801, 36.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695717, 37.832874, 37.564919>,  <35.215084, 37.479336, 37.136543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695717, 37.832874, 37.564919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064800, 37.787174, 37.417641>,  <36.286251, 37.759754, 37.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064800, 37.787174, 37.417641>,  <35.695717, 37.832874, 37.564919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064800, 37.787174, 37.417641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097645, -0.854674, 0.509899,
		-0.372937, -0.506438, -0.777456,
		0.922704, -0.114246, -0.368191,
		36.341610, 37.752899, 37.307182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818588, 37.122250, 37.587708>,  <35.695717, 37.832874, 37.564919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818588, 37.122250, 37.587708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178673, 37.294712, 37.563309>,  <36.394722, 37.398190, 37.548668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178673, 37.294712, 37.563309>,  <35.818588, 37.122250, 37.587708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178673, 37.294712, 37.563309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410155, -0.792502, 0.451347,
		0.146258, -0.431328, -0.890261,
		0.900212, 0.431158, -0.061002,
		36.448738, 37.424061, 37.545010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278519, 36.631592, 37.410648>,  <35.818588, 37.122250, 37.587708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278519, 36.631592, 37.410648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489086, 36.922070, 37.587521>,  <36.615425, 37.096355, 37.693645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489086, 36.922070, 37.587521>,  <36.278519, 36.631592, 37.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489086, 36.922070, 37.587521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479019, -0.682996, 0.551414,
		0.702445, -0.078457, -0.707401,
		0.526414, 0.726196, 0.442184,
		36.647011, 37.139927, 37.720177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913559, 36.315598, 37.606480>,  <36.278519, 36.631592, 37.410648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913559, 36.315598, 37.606480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924000, 36.646828, 37.830482>,  <36.930264, 36.845566, 37.964886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924000, 36.646828, 37.830482>,  <36.913559, 36.315598, 37.606480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924000, 36.646828, 37.830482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581607, -0.468203, 0.665222,
		0.813051, 0.308340, -0.493836,
		0.026101, 0.828077, 0.560006,
		36.931831, 36.895252, 37.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573242, 36.153908, 37.944382>,  <36.913559, 36.315598, 37.606480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573242, 36.153908, 37.944382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372070, 36.442844, 38.134239>,  <37.251369, 36.616207, 38.248154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372070, 36.442844, 38.134239>,  <37.573242, 36.153908, 37.944382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372070, 36.442844, 38.134239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664799, -0.027663, 0.746510,
		0.552366, 0.690982, -0.466300,
		-0.502925, 0.722343, 0.474644,
		37.221191, 36.659546, 38.276634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037201, 36.845051, 38.158512>,  <37.573242, 36.153908, 37.944382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037201, 36.845051, 38.158512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718468, 36.795689, 38.395100>,  <37.527229, 36.766071, 38.537052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718468, 36.795689, 38.395100>,  <38.037201, 36.845051, 38.158512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718468, 36.795689, 38.395100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604129, -0.147589, 0.783100,
		-0.009343, 0.981320, 0.192155,
		-0.796832, -0.123403, 0.591465,
		37.479420, 36.758667, 38.572540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203007, 37.099579, 38.811115>,  <38.037201, 36.845051, 38.158512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203007, 37.099579, 38.811115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879780, 36.888435, 38.915722>,  <37.685844, 36.761749, 38.978485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879780, 36.888435, 38.915722>,  <38.203007, 37.099579, 38.811115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879780, 36.888435, 38.915722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467162, -0.303767, 0.830352,
		-0.358869, 0.793152, 0.492060,
		-0.808067, -0.527859, 0.261518,
		37.637360, 36.730076, 38.994179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984974, 37.388309, 39.452690>,  <38.203007, 37.099579, 38.811115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984974, 37.388309, 39.452690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839615, 37.016411, 39.428970>,  <37.752399, 36.793274, 39.414738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839615, 37.016411, 39.428970>,  <37.984974, 37.388309, 39.452690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839615, 37.016411, 39.428970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240843, -0.155244, 0.958068,
		-0.899965, 0.333878, 0.280338,
		-0.363398, -0.929745, -0.059302,
		37.730595, 36.737488, 39.411179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649689, 37.287556, 40.126202>,  <37.984974, 37.388309, 39.452690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649689, 37.287556, 40.126202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729797, 36.926796, 39.973118>,  <37.777863, 36.710339, 39.881268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729797, 36.926796, 39.973118>,  <37.649689, 37.287556, 40.126202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729797, 36.926796, 39.973118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218106, -0.339782, 0.914865,
		-0.955154, -0.266696, 0.128660,
		0.200274, -0.901899, -0.382713,
		37.789879, 36.656227, 39.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553028, 36.911160, 40.721199>,  <37.649689, 37.287556, 40.126202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553028, 36.911160, 40.721199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710793, 36.636547, 40.476868>,  <37.805450, 36.471779, 40.330269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710793, 36.636547, 40.476868>,  <37.553028, 36.911160, 40.721199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710793, 36.636547, 40.476868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342661, -0.506896, 0.790974,
		-0.852655, -0.521279, 0.035321,
		0.394414, -0.686531, -0.610830,
		37.829117, 36.430588, 40.293617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175831, 36.276295, 40.898087>,  <37.553028, 36.911160, 40.721199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175831, 36.276295, 40.898087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522430, 36.155220, 40.739311>,  <37.730389, 36.082573, 40.644047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522430, 36.155220, 40.739311>,  <37.175831, 36.276295, 40.898087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522430, 36.155220, 40.739311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085468, -0.693477, 0.715392,
		-0.491809, -0.653811, -0.575026,
		0.866498, -0.302690, -0.396939,
		37.782379, 36.064411, 40.620228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115726, 35.565392, 40.811821>,  <37.175831, 36.276295, 40.898087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115726, 35.565392, 40.811821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509869, 35.631847, 40.827152>,  <37.746353, 35.671722, 40.836349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509869, 35.631847, 40.827152>,  <37.115726, 35.565392, 40.811821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509869, 35.631847, 40.827152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064531, -0.571449, 0.818096,
		0.157819, -0.803644, -0.573803,
		0.985357, 0.166139, 0.038325,
		37.805477, 35.681690, 40.838650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472012, 34.901134, 41.035007>,  <37.115726, 35.565392, 40.811821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472012, 34.901134, 41.035007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745300, 35.183640, 41.109200>,  <37.909275, 35.353142, 41.153713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745300, 35.183640, 41.109200>,  <37.472012, 34.901134, 41.035007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745300, 35.183640, 41.109200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127139, -0.365183, 0.922213,
		0.719054, -0.606498, -0.339296,
		0.683226, 0.706259, 0.185477,
		37.950268, 35.395515, 41.164841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932980, 34.547066, 41.517624>,  <37.472012, 34.901134, 41.035007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932980, 34.547066, 41.517624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989887, 34.939533, 41.569889>,  <38.024033, 35.175014, 41.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989887, 34.939533, 41.569889>,  <37.932980, 34.547066, 41.517624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989887, 34.939533, 41.569889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046485, -0.125238, 0.991037,
		0.988735, -0.147072, 0.027792,
		0.142273, 0.981165, 0.130663,
		38.032570, 35.233883, 41.609089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409454, 34.603985, 42.109127>,  <37.932980, 34.547066, 41.517624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409454, 34.603985, 42.109127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257446, 34.973900, 42.101654>,  <38.166241, 35.195850, 42.097172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257446, 34.973900, 42.101654>,  <38.409454, 34.603985, 42.109127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257446, 34.973900, 42.101654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094878, -0.018880, 0.995310,
		0.920097, 0.380015, 0.094917,
		-0.380025, 0.924788, -0.018683,
		38.143440, 35.251335, 42.096050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793964, 35.041515, 42.593834>,  <38.409454, 34.603985, 42.109127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793964, 35.041515, 42.593834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422054, 35.175602, 42.532982>,  <38.198906, 35.256054, 42.496471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422054, 35.175602, 42.532982>,  <38.793964, 35.041515, 42.593834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422054, 35.175602, 42.532982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196930, -0.103786, 0.974909,
		0.311013, 0.936409, 0.162511,
		-0.929779, 0.335213, -0.152128,
		38.143120, 35.276165, 42.487343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590694, 35.450222, 43.104778>,  <38.793964, 35.041515, 42.593834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590694, 35.450222, 43.104778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219093, 35.409859, 42.962360>,  <37.996132, 35.385639, 42.876911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219093, 35.409859, 42.962360>,  <38.590694, 35.450222, 43.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219093, 35.409859, 42.962360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331743, -0.199290, 0.922079,
		-0.164005, 0.974731, 0.151664,
		-0.929004, -0.100912, -0.356044,
		37.940392, 35.379585, 42.855549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255974, 35.818497, 43.527020>,  <38.590694, 35.450222, 43.104778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255974, 35.818497, 43.527020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981888, 35.573658, 43.369125>,  <37.817436, 35.426754, 43.274391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981888, 35.573658, 43.369125>,  <38.255974, 35.818497, 43.527020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981888, 35.573658, 43.369125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334432, -0.217033, 0.917089,
		-0.647020, 0.760414, -0.055991,
		-0.685215, -0.612101, -0.394732,
		37.776321, 35.390026, 43.250706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623207, 36.067039, 43.760956>,  <38.255974, 35.818497, 43.527020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623207, 36.067039, 43.760956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545033, 35.688301, 43.658749>,  <37.498127, 35.461060, 43.597424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545033, 35.688301, 43.658749>,  <37.623207, 36.067039, 43.760956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545033, 35.688301, 43.658749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425740, -0.152802, 0.891850,
		-0.883488, 0.283081, -0.373247,
		-0.195433, -0.946846, -0.255518,
		37.486404, 35.404247, 43.582092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986000, 35.996063, 44.054356>,  <37.623207, 36.067039, 43.760956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986000, 35.996063, 44.054356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080673, 35.613594, 43.985409>,  <37.137478, 35.384113, 43.944038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080673, 35.613594, 43.985409>,  <36.986000, 35.996063, 44.054356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080673, 35.613594, 43.985409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509492, -0.273206, 0.815951,
		-0.827285, -0.105297, -0.551826,
		0.236679, -0.956176, -0.172371,
		37.151676, 35.326740, 43.933697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319958, 35.591328, 44.098106>,  <36.986000, 35.996063, 44.054356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319958, 35.591328, 44.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611412, 35.319721, 44.133957>,  <36.786285, 35.156757, 44.155468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611412, 35.319721, 44.133957>,  <36.319958, 35.591328, 44.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611412, 35.319721, 44.133957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311300, -0.211760, 0.926418,
		-0.610073, -0.702918, -0.365672,
		0.728631, -0.679016, 0.089630,
		36.830002, 35.116016, 44.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046150, 35.036148, 44.500092>,  <36.319958, 35.591328, 44.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046150, 35.036148, 44.500092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440441, 34.985996, 44.545029>,  <36.677017, 34.955906, 44.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440441, 34.985996, 44.545029>,  <36.046150, 35.036148, 44.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440441, 34.985996, 44.545029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141213, -0.252526, 0.957230,
		-0.091643, -0.959433, -0.266627,
		0.985729, -0.125375, 0.112342,
		36.736160, 34.948383, 44.578732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085430, 34.474365, 44.782791>,  <36.046150, 35.036148, 44.500092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085430, 34.474365, 44.782791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439621, 34.637512, 44.871841>,  <36.652138, 34.735401, 44.925270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439621, 34.637512, 44.871841>,  <36.085430, 34.474365, 44.782791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439621, 34.637512, 44.871841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094344, -0.311318, 0.945611,
		0.454996, -0.858325, -0.237186,
		0.885481, 0.407872, 0.222626,
		36.705265, 34.759872, 44.938629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324921, 33.929077, 45.209175>,  <36.085430, 34.474365, 44.782791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324921, 33.929077, 45.209175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539967, 34.256855, 45.288662>,  <36.668995, 34.453522, 45.336353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539967, 34.256855, 45.288662>,  <36.324921, 33.929077, 45.209175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539967, 34.256855, 45.288662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114566, -0.162496, 0.980036,
		0.835373, -0.549645, 0.006521,
		0.537612, 0.819442, 0.198715,
		36.701252, 34.502689, 45.348278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743317, 33.762993, 45.782825>,  <36.324921, 33.929077, 45.209175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743317, 33.762993, 45.782825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745358, 34.162968, 45.786720>,  <36.746582, 34.402954, 45.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745358, 34.162968, 45.786720>,  <36.743317, 33.762993, 45.782825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745358, 34.162968, 45.786720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031161, -0.009577, 0.999469,
		0.999501, -0.005401, 0.031111,
		0.005100, 0.999940, 0.009741,
		36.746887, 34.462948, 45.789642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181889, 33.965794, 46.228924>,  <36.743317, 33.762993, 45.782825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181889, 33.965794, 46.228924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938755, 34.283413, 46.227249>,  <36.792873, 34.473984, 46.226246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938755, 34.283413, 46.227249>,  <37.181889, 33.965794, 46.228924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938755, 34.283413, 46.227249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043498, -0.028030, 0.998660,
		0.792872, 0.607202, 0.051577,
		-0.607834, 0.794053, -0.004187,
		36.756405, 34.521629, 46.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393700, 34.405960, 46.828686>,  <37.181889, 33.965794, 46.228924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393700, 34.405960, 46.828686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022926, 34.527905, 46.741192>,  <36.800461, 34.601070, 46.688694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022926, 34.527905, 46.741192>,  <37.393700, 34.405960, 46.828686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022926, 34.527905, 46.741192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221362, 0.026391, 0.974835,
		0.302965, 0.952030, 0.043022,
		-0.926936, 0.304864, -0.218739,
		36.744846, 34.619366, 46.675571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333561, 34.889946, 47.225506>,  <37.393700, 34.405960, 46.828686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333561, 34.889946, 47.225506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950207, 34.824165, 47.132168>,  <36.720196, 34.784698, 47.076164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950207, 34.824165, 47.132168>,  <37.333561, 34.889946, 47.225506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950207, 34.824165, 47.132168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273758, 0.297674, 0.914574,
		-0.080943, 0.940396, -0.330307,
		-0.958386, -0.164453, -0.233346,
		36.662689, 34.774830, 47.062164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045353, 35.447079, 47.506062>,  <37.333561, 34.889946, 47.225506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045353, 35.447079, 47.506062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756168, 35.173141, 47.469582>,  <36.582657, 35.008781, 47.447693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756168, 35.173141, 47.469582>,  <37.045353, 35.447079, 47.506062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756168, 35.173141, 47.469582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427397, 0.339611, 0.837852,
		-0.542822, 0.644716, -0.538225,
		-0.722963, -0.684840, -0.091201,
		36.539280, 34.967690, 47.442223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439404, 35.888016, 47.461403>,  <37.045353, 35.447079, 47.506062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439404, 35.888016, 47.461403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278706, 35.528866, 47.533428>,  <36.182285, 35.313377, 47.576645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278706, 35.528866, 47.533428>,  <36.439404, 35.888016, 47.461403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278706, 35.528866, 47.533428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521529, 0.385959, 0.760949,
		-0.752733, 0.211802, -0.623325,
		-0.401748, -0.897873, 0.180063,
		36.158180, 35.259502, 47.587448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787621, 36.066593, 47.690563>,  <36.439404, 35.888016, 47.461403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787621, 36.066593, 47.690563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855778, 35.702061, 47.840462>,  <35.896671, 35.483341, 47.930401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855778, 35.702061, 47.840462>,  <35.787621, 36.066593, 47.690563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855778, 35.702061, 47.840462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446000, 0.267791, 0.854032,
		-0.878663, -0.312662, -0.360825,
		0.170397, -0.911334, 0.374746,
		35.906898, 35.428661, 47.952885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172680, 35.837303, 47.908630>,  <35.787621, 36.066593, 47.690563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172680, 35.837303, 47.908630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445004, 35.641632, 48.126694>,  <35.608398, 35.524227, 48.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445004, 35.641632, 48.126694>,  <35.172680, 35.837303, 47.908630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445004, 35.641632, 48.126694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488655, 0.251096, 0.835564,
		-0.545629, -0.835256, -0.068091,
		0.680812, -0.489181, 0.545157,
		35.649246, 35.494877, 48.290241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787495, 35.350731, 48.347733>,  <35.172680, 35.837303, 47.908630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787495, 35.350731, 48.347733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149727, 35.396439, 48.511127>,  <35.367065, 35.423862, 48.609165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149727, 35.396439, 48.511127>,  <34.787495, 35.350731, 48.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149727, 35.396439, 48.511127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413981, 0.028277, 0.909846,
		0.092422, -0.993047, 0.072914,
		0.905581, 0.114275, 0.408489,
		35.421402, 35.430717, 48.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814266, 34.915241, 48.938393>,  <34.787495, 35.350731, 48.347733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814266, 34.915241, 48.938393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117126, 35.168823, 49.001415>,  <35.298843, 35.320972, 49.039230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117126, 35.168823, 49.001415>,  <34.814266, 34.915241, 48.938393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117126, 35.168823, 49.001415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256330, 0.066486, 0.964300,
		0.600850, -0.770505, 0.212842,
		0.757149, 0.633957, 0.157555,
		35.344273, 35.359009, 49.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210606, 34.632027, 49.452007>,  <34.814266, 34.915241, 48.938393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210606, 34.632027, 49.452007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346775, 35.005493, 49.496498>,  <35.428478, 35.229572, 49.523193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346775, 35.005493, 49.496498>,  <35.210606, 34.632027, 49.452007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346775, 35.005493, 49.496498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064827, -0.094705, 0.993392,
		0.938034, -0.345388, 0.028286,
		0.340427, 0.933669, 0.111227,
		35.448902, 35.285595, 49.529865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712254, 34.646107, 50.016060>,  <35.210606, 34.632027, 49.452007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712254, 34.646107, 50.016060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619698, 35.031864, 49.964817>,  <35.564163, 35.263317, 49.934071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619698, 35.031864, 49.964817>,  <35.712254, 34.646107, 50.016060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619698, 35.031864, 49.964817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044519, 0.121049, 0.991648,
		0.971842, 0.235161, 0.014924,
		-0.231390, 0.964389, -0.128110,
		35.550282, 35.321182, 49.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213093, 34.996544, 50.298325>,  <35.712254, 34.646107, 50.016060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213093, 34.996544, 50.298325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889339, 35.231323, 50.306164>,  <35.695087, 35.372192, 50.310867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889339, 35.231323, 50.306164>,  <36.213093, 34.996544, 50.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889339, 35.231323, 50.306164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085551, 0.084826, 0.992716,
		0.581015, 0.805165, -0.118871,
		-0.809384, 0.586953, 0.019598,
		35.646523, 35.407410, 50.312042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341476, 35.465206, 50.839897>,  <36.213093, 34.996544, 50.298325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341476, 35.465206, 50.839897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945732, 35.480175, 50.783669>,  <35.708286, 35.489155, 50.749931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945732, 35.480175, 50.783669>,  <36.341476, 35.465206, 50.839897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945732, 35.480175, 50.783669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143703, -0.101409, 0.984411,
		0.022580, 0.994141, 0.105707,
		-0.989363, 0.037419, -0.140571,
		35.648922, 35.491402, 50.741497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084587, 36.119396, 51.093075>,  <36.341476, 35.465206, 50.839897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084587, 36.119396, 51.093075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863029, 35.788105, 51.127121>,  <35.730095, 35.589329, 51.147549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863029, 35.788105, 51.127121>,  <36.084587, 36.119396, 51.093075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863029, 35.788105, 51.127121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079573, 0.049104, 0.995619,
		-0.828778, 0.558238, 0.038706,
		-0.553891, -0.828227, 0.085117,
		35.696861, 35.539639, 51.152657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877686, 36.923756, 51.075356>,  <36.084587, 36.119396, 51.093075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877686, 36.923756, 51.075356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975571, 37.310459, 51.105030>,  <36.034302, 37.542480, 51.122833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975571, 37.310459, 51.105030>,  <35.877686, 36.923756, 51.075356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975571, 37.310459, 51.105030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611526, -0.094513, -0.785559,
		-0.752431, 0.237599, -0.614324,
		0.244710, 0.966754, 0.074183,
		36.048985, 37.600487, 51.127285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730255, 37.194237, 50.424747>,  <35.877686, 36.923756, 51.075356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730255, 37.194237, 50.424747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007351, 37.411728, 50.614262>,  <36.173607, 37.542221, 50.727970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007351, 37.411728, 50.614262>,  <35.730255, 37.194237, 50.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007351, 37.411728, 50.614262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570012, -0.010333, -0.821571,
		-0.441816, 0.839198, -0.317090,
		0.692737, 0.543728, 0.473787,
		36.215172, 37.574848, 50.756397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733528, 37.773804, 50.035362>,  <35.730255, 37.194237, 50.424747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733528, 37.773804, 50.035362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079613, 37.792683, 50.235031>,  <36.287266, 37.804008, 50.354832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079613, 37.792683, 50.235031>,  <35.733528, 37.773804, 50.035362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079613, 37.792683, 50.235031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479948, 0.210138, -0.851758,
		-0.145093, 0.976532, 0.159164,
		0.865216, 0.047194, 0.499174,
		36.339176, 37.806839, 50.384785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134136, 38.386917, 49.817280>,  <35.733528, 37.773804, 50.035362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134136, 38.386917, 49.817280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435036, 38.179367, 49.979706>,  <36.615578, 38.054836, 50.077160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435036, 38.179367, 49.979706>,  <36.134136, 38.386917, 49.817280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435036, 38.179367, 49.979706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590771, 0.258300, -0.764376,
		0.291728, 0.814894, 0.500842,
		0.752253, -0.518873, 0.406062,
		36.660713, 38.023705, 50.101524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769489, 38.818443, 49.775532>,  <36.134136, 38.386917, 49.817280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769489, 38.818443, 49.775532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898144, 38.445934, 49.843971>,  <36.975338, 38.222427, 49.885036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898144, 38.445934, 49.843971>,  <36.769489, 38.818443, 49.775532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898144, 38.445934, 49.843971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766860, 0.150213, -0.623989,
		0.555404, 0.331908, 0.762472,
		0.321640, -0.931275, 0.171098,
		36.994637, 38.166553, 49.895302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443630, 38.835880, 49.761539>,  <36.769489, 38.818443, 49.775532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443630, 38.835880, 49.761539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360809, 38.453396, 49.678791>,  <37.311115, 38.223907, 49.629143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360809, 38.453396, 49.678791>,  <37.443630, 38.835880, 49.761539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360809, 38.453396, 49.678791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737432, -0.013587, -0.675285,
		0.642902, -0.292373, 0.707951,
		-0.207054, -0.956208, -0.206871,
		37.298695, 38.166534, 49.616730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076275, 38.350487, 49.621243>,  <37.443630, 38.835880, 49.761539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076275, 38.350487, 49.621243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810261, 38.128277, 49.421593>,  <37.650654, 37.994949, 49.301804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810261, 38.128277, 49.421593>,  <38.076275, 38.350487, 49.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810261, 38.128277, 49.421593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700071, -0.230996, -0.675679,
		0.260060, -0.798770, 0.542526,
		-0.665034, -0.555524, -0.499123,
		37.610752, 37.961620, 49.271854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442497, 37.880577, 49.337688>,  <38.076275, 38.350487, 49.621243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442497, 37.880577, 49.337688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115940, 37.846020, 49.109291>,  <37.920006, 37.825283, 48.972252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115940, 37.846020, 49.109291>,  <38.442497, 37.880577, 49.337688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115940, 37.846020, 49.109291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575686, -0.199927, -0.792852,
		-0.045657, -0.975994, 0.212958,
		-0.816395, -0.086398, -0.570994,
		37.871021, 37.820099, 48.937992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649963, 37.309975, 48.913383>,  <38.442497, 37.880577, 49.337688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649963, 37.309975, 48.913383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365398, 37.521763, 48.728539>,  <38.194660, 37.648834, 48.617630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365398, 37.521763, 48.728539>,  <38.649963, 37.309975, 48.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365398, 37.521763, 48.728539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463660, -0.140524, -0.874798,
		-0.528119, -0.836608, -0.145524,
		-0.711414, 0.529471, -0.462115,
		38.151974, 37.680603, 48.589905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391479, 36.888901, 48.328609>,  <38.649963, 37.309975, 48.913383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391479, 36.888901, 48.328609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306995, 37.266369, 48.226727>,  <38.256306, 37.492851, 48.165596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306995, 37.266369, 48.226727>,  <38.391479, 36.888901, 48.328609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306995, 37.266369, 48.226727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209834, -0.210734, -0.954757,
		-0.954651, -0.255104, -0.153504,
		-0.211214, 0.943670, -0.254707,
		38.243629, 37.549469, 48.150314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786407, 36.901783, 47.750076>,  <38.391479, 36.888901, 48.328609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786407, 36.901783, 47.750076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022217, 37.224884, 47.749069>,  <38.163704, 37.418743, 47.748463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022217, 37.224884, 47.749069>,  <37.786407, 36.901783, 47.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022217, 37.224884, 47.749069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225511, -0.167581, -0.959720,
		-0.775634, 0.565208, -0.280949,
		0.589522, 0.807748, -0.002521,
		38.199074, 37.467209, 47.748314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909435, 37.010803, 47.130550>,  <37.786407, 36.901783, 47.750076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909435, 37.010803, 47.130550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125019, 37.332287, 47.231403>,  <38.254368, 37.525177, 47.291916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125019, 37.332287, 47.231403>,  <37.909435, 37.010803, 47.130550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125019, 37.332287, 47.231403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207378, 0.163512, -0.964499,
		-0.816407, 0.572110, -0.078546,
		0.538957, 0.803712, 0.252135,
		38.286705, 37.573402, 47.307045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673931, 37.683357, 46.829540>,  <37.909435, 37.010803, 47.130550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673931, 37.683357, 46.829540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066448, 37.710297, 46.901672>,  <38.301960, 37.726460, 46.944954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066448, 37.710297, 46.901672>,  <37.673931, 37.683357, 46.829540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066448, 37.710297, 46.901672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158016, 0.253216, -0.954418,
		-0.109940, 0.965063, 0.237838,
		0.981297, 0.067346, 0.180334,
		38.360836, 37.730499, 46.955772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873928, 38.201752, 46.315285>,  <37.673931, 37.683357, 46.829540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873928, 38.201752, 46.315285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240807, 38.084240, 46.422955>,  <38.460934, 38.013733, 46.487556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240807, 38.084240, 46.422955>,  <37.873928, 38.201752, 46.315285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240807, 38.084240, 46.422955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358763, 0.314988, -0.878676,
		0.173346, 0.902485, 0.394300,
		0.917192, -0.293775, 0.269176,
		38.515965, 37.996109, 46.503708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369095, 38.691933, 46.119377>,  <37.873928, 38.201752, 46.315285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369095, 38.691933, 46.119377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585426, 38.356239, 46.141964>,  <38.715225, 38.154823, 46.155518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585426, 38.356239, 46.141964>,  <38.369095, 38.691933, 46.119377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585426, 38.356239, 46.141964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286585, 0.120732, -0.950417,
		0.790808, 0.530194, 0.305807,
		0.540826, -0.839237, 0.056470,
		38.747673, 38.104469, 46.158905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065701, 38.913029, 45.887543>,  <38.369095, 38.691933, 46.119377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065701, 38.913029, 45.887543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023228, 38.516151, 45.861404>,  <38.997746, 38.278023, 45.845722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023228, 38.516151, 45.861404>,  <39.065701, 38.913029, 45.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023228, 38.516151, 45.861404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345955, 0.024749, -0.937925,
		0.932224, -0.122193, 0.340628,
		-0.106178, -0.992198, -0.065345,
		38.991375, 38.218491, 45.841801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706478, 38.727375, 45.467999>,  <39.065701, 38.913029, 45.887543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706478, 38.727375, 45.467999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469501, 38.406963, 45.433670>,  <39.327316, 38.214718, 45.413071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469501, 38.406963, 45.433670>,  <39.706478, 38.727375, 45.467999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469501, 38.406963, 45.433670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242590, -0.075797, -0.967163,
		0.768220, -0.593808, 0.239227,
		-0.592442, -0.801029, -0.085823,
		39.291767, 38.166656, 45.407925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080635, 38.209393, 45.121647>,  <39.706478, 38.727375, 45.467999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080635, 38.209393, 45.121647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695248, 38.120167, 45.062363>,  <39.464016, 38.066631, 45.026791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695248, 38.120167, 45.062363>,  <40.080635, 38.209393, 45.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695248, 38.120167, 45.062363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182823, -0.143396, -0.972632,
		0.195706, -0.964199, 0.178939,
		-0.963470, -0.223064, -0.148215,
		39.406208, 38.053249, 45.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050907, 37.541473, 44.706238>,  <40.080635, 38.209393, 45.121647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050907, 37.541473, 44.706238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679798, 37.685730, 44.667923>,  <39.457134, 37.772285, 44.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679798, 37.685730, 44.667923>,  <40.050907, 37.541473, 44.706238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679798, 37.685730, 44.667923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036131, -0.168673, -0.985010,
		-0.371396, -0.917324, 0.143460,
		-0.927771, 0.360645, -0.095788,
		39.401466, 37.793922, 44.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710690, 37.127522, 44.191998>,  <40.050907, 37.541473, 44.706238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710690, 37.127522, 44.191998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490143, 37.461224, 44.190887>,  <39.357815, 37.661446, 44.190220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490143, 37.461224, 44.190887>,  <39.710690, 37.127522, 44.191998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490143, 37.461224, 44.190887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052852, 0.031610, -0.998102,
		-0.832585, -0.550471, -0.061521,
		-0.551371, 0.834256, -0.002775,
		39.324730, 37.711502, 44.190056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142250, 37.021717, 43.690208>,  <39.710690, 37.127522, 44.191998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142250, 37.021717, 43.690208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139637, 37.418472, 43.741001>,  <39.138069, 37.656525, 43.771477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139637, 37.418472, 43.741001>,  <39.142250, 37.021717, 43.690208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139637, 37.418472, 43.741001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168999, 0.124063, -0.977777,
		-0.985595, -0.027850, 0.166817,
		-0.006535, 0.991884, 0.126982,
		39.137676, 37.716038, 43.779095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473518, 37.347633, 43.461765>,  <39.142250, 37.021717, 43.690208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473518, 37.347633, 43.461765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755230, 37.630699, 43.439102>,  <38.924255, 37.800537, 43.425507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755230, 37.630699, 43.439102>,  <38.473518, 37.347633, 43.461765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755230, 37.630699, 43.439102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157959, 0.078399, -0.984329,
		-0.692132, 0.702186, 0.166996,
		0.704274, 0.707664, -0.056654,
		38.966511, 37.842999, 43.422108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230301, 37.741261, 42.963535>,  <38.473518, 37.347633, 43.461765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230301, 37.741261, 42.963535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608635, 37.868481, 42.989594>,  <38.835636, 37.944813, 43.005230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608635, 37.868481, 42.989594>,  <38.230301, 37.741261, 42.963535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608635, 37.868481, 42.989594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070276, -0.004660, -0.997517,
		-0.316955, 0.948063, -0.026759,
		0.945833, 0.318048, 0.065149,
		38.892384, 37.963894, 43.009140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312813, 38.305592, 42.599941>,  <38.230301, 37.741261, 42.963535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312813, 38.305592, 42.599941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681530, 38.150539, 42.602573>,  <38.902760, 38.057510, 42.604153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681530, 38.150539, 42.602573>,  <38.312813, 38.305592, 42.599941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681530, 38.150539, 42.602573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002104, -0.011969, -0.999926,
		0.387678, 0.921738, -0.010218,
		0.921793, -0.387628, 0.006580,
		38.958069, 38.034252, 42.604546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795628, 38.713108, 42.129513>,  <38.312813, 38.305592, 42.599941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795628, 38.713108, 42.129513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950508, 38.347332, 42.176617>,  <39.043438, 38.127865, 42.204880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950508, 38.347332, 42.176617>,  <38.795628, 38.713108, 42.129513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950508, 38.347332, 42.176617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287298, -0.001703, -0.957840,
		0.876091, 0.404709, 0.262059,
		0.387200, -0.914444, 0.117764,
		39.066669, 38.072998, 42.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552341, 38.731377, 41.965595>,  <38.795628, 38.713108, 42.129513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552341, 38.731377, 41.965595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425900, 38.355068, 41.916546>,  <39.350037, 38.129284, 41.887115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425900, 38.355068, 41.916546>,  <39.552341, 38.731377, 41.965595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425900, 38.355068, 41.916546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468101, -0.042234, -0.882665,
		0.825204, -0.336412, 0.453724,
		-0.316102, -0.940767, -0.122623,
		39.331070, 38.072838, 41.879761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100216, 38.381653, 41.574020>,  <39.552341, 38.731377, 41.965595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100216, 38.381653, 41.574020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813965, 38.105366, 41.532475>,  <39.642216, 37.939594, 41.507549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813965, 38.105366, 41.532475>,  <40.100216, 38.381653, 41.574020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813965, 38.105366, 41.532475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323668, -0.196156, -0.925614,
		0.618967, -0.696009, 0.363938,
		-0.715625, -0.690720, -0.103862,
		39.599277, 37.898151, 41.501316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510468, 37.853397, 41.274876>,  <40.100216, 38.381653, 41.574020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510468, 37.853397, 41.274876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121517, 37.792992, 41.203674>,  <39.888149, 37.756748, 41.160954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121517, 37.792992, 41.203674>,  <40.510468, 37.853397, 41.274876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121517, 37.792992, 41.203674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174510, 0.036203, -0.983990,
		0.155042, -0.987868, -0.008849,
		-0.972373, -0.151015, -0.178006,
		39.829803, 37.747688, 41.150272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576714, 37.636513, 40.655415>,  <40.510468, 37.853397, 41.274876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576714, 37.636513, 40.655415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 37.666584, 40.640564>,  <39.938969, 37.684628, 40.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178123, 37.666584, 40.640564>,  <40.576714, 37.636513, 40.655415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178123, 37.666584, 40.640564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036610, -0.008187, -0.999296,
		-0.075431, -0.997136, 0.005406,
		-0.996478, 0.075179, -0.037122,
		39.879181, 37.689137, 40.629429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381210, 37.070992, 40.240177>,  <40.576714, 37.636513, 40.655415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381210, 37.070992, 40.240177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126057, 37.378971, 40.233463>,  <39.972965, 37.563759, 40.229435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126057, 37.378971, 40.233463>,  <40.381210, 37.070992, 40.240177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126057, 37.378971, 40.233463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052278, 0.021542, -0.998400,
		-0.768358, -0.637738, -0.053993,
		-0.637881, 0.769952, -0.016788,
		39.934692, 37.609955, 40.228428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046764, 37.095978, 39.525841>,  <40.381210, 37.070992, 40.240177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046764, 37.095978, 39.525841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950748, 37.460487, 39.659679>,  <39.893139, 37.679192, 39.739983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950748, 37.460487, 39.659679>,  <40.046764, 37.095978, 39.525841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950748, 37.460487, 39.659679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043851, 0.334146, -0.941501,
		-0.969771, -0.240674, -0.040249,
		-0.240044, 0.911275, 0.334598,
		39.878735, 37.733871, 39.760059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435925, 37.330853, 39.142899>,  <40.046764, 37.095978, 39.525841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435925, 37.330853, 39.142899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611038, 37.665417, 39.274818>,  <39.716106, 37.866154, 39.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611038, 37.665417, 39.274818>,  <39.435925, 37.330853, 39.142899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611038, 37.665417, 39.274818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071968, 0.333039, -0.940163,
		-0.896193, 0.435327, 0.085606,
		0.437788, 0.836407, 0.329797,
		39.742374, 37.916340, 39.373756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153767, 37.840794, 38.733059>,  <39.435925, 37.330853, 39.142899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153767, 37.840794, 38.733059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473045, 38.016266, 38.898197>,  <39.664612, 38.121548, 38.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473045, 38.016266, 38.898197>,  <39.153767, 37.840794, 38.733059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473045, 38.016266, 38.898197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202571, 0.449962, -0.869770,
		-0.567316, 0.777878, 0.270294,
		0.798197, 0.438680, 0.412846,
		39.712505, 38.147869, 39.022053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128334, 38.516911, 38.544987>,  <39.153767, 37.840794, 38.733059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128334, 38.516911, 38.544987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510803, 38.505917, 38.661587>,  <39.740284, 38.499321, 38.731544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510803, 38.505917, 38.661587>,  <39.128334, 38.516911, 38.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510803, 38.505917, 38.661587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252152, 0.583312, -0.772118,
		-0.148815, 0.811783, 0.564679,
		0.956177, -0.027482, 0.291498,
		39.797657, 38.497673, 38.749035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467556, 39.281090, 38.703865>,  <39.128334, 38.516911, 38.544987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467556, 39.281090, 38.703865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741444, 39.003460, 38.614944>,  <39.905777, 38.836880, 38.561592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741444, 39.003460, 38.614944>,  <39.467556, 39.281090, 38.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741444, 39.003460, 38.614944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391087, 0.607303, -0.691545,
		0.614992, 0.386572, 0.687275,
		0.684716, -0.694079, -0.222303,
		39.946857, 38.795235, 38.548252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975731, 39.713306, 38.599403>,  <39.467556, 39.281090, 38.703865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975731, 39.713306, 38.599403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152073, 39.384819, 38.454491>,  <40.257877, 39.187725, 38.367542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152073, 39.384819, 38.454491>,  <39.975731, 39.713306, 38.599403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152073, 39.384819, 38.454491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251066, 0.500336, -0.828632,
		0.861750, 0.274348, 0.426754,
		0.440854, -0.821217, -0.362285,
		40.284328, 39.138454, 38.345806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630947, 39.903702, 38.394566>,  <39.975731, 39.713306, 38.599403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630947, 39.903702, 38.394566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538681, 39.572742, 38.189739>,  <40.483322, 39.374168, 38.066845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538681, 39.572742, 38.189739>,  <40.630947, 39.903702, 38.394566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538681, 39.572742, 38.189739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332489, 0.427557, -0.840622,
		0.914465, -0.364154, 0.176480,
		-0.230660, -0.827398, -0.512063,
		40.469482, 39.324524, 38.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276562, 39.632130, 38.148720>,  <40.630947, 39.903702, 38.394566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276562, 39.632130, 38.148720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964314, 39.508396, 37.931484>,  <40.776966, 39.434158, 37.801144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964314, 39.508396, 37.931484>,  <41.276562, 39.632130, 38.148720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964314, 39.508396, 37.931484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385940, 0.444912, -0.808149,
		0.491610, -0.840457, -0.227925,
		-0.780621, -0.309329, -0.543089,
		40.730129, 39.415596, 37.768559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656139, 39.413837, 37.646698>,  <41.276562, 39.632130, 38.148720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656139, 39.413837, 37.646698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292706, 39.424900, 37.479988>,  <41.074646, 39.431538, 37.379963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292706, 39.424900, 37.479988>,  <41.656139, 39.413837, 37.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292706, 39.424900, 37.479988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380613, 0.465815, -0.798843,
		0.172050, -0.884450, -0.433760,
		-0.908588, 0.027654, -0.416777,
		41.020130, 39.433197, 37.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454514, 38.954781, 37.013737>,  <41.656139, 39.413837, 37.646698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454514, 38.954781, 37.013737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240833, 39.292671, 37.026775>,  <41.112625, 39.495407, 37.034599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240833, 39.292671, 37.026775>,  <41.454514, 38.954781, 37.013737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240833, 39.292671, 37.026775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456136, 0.320495, -0.830195,
		-0.711734, -0.428626, -0.556520,
		-0.534205, 0.844727, 0.032595,
		41.080570, 39.546089, 37.036552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002979, 39.015656, 36.308475>,  <41.454514, 38.954781, 37.013737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002979, 39.015656, 36.308475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061840, 39.368008, 36.488434>,  <41.097157, 39.579418, 36.596409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061840, 39.368008, 36.488434>,  <41.002979, 39.015656, 36.308475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061840, 39.368008, 36.488434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231177, 0.411619, -0.881548,
		-0.961720, 0.233723, -0.143070,
		0.147148, 0.880876, 0.449894,
		41.105984, 39.632271, 36.623402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834064, 39.636452, 35.796001>,  <41.002979, 39.015656, 36.308475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834064, 39.636452, 35.796001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098373, 39.751629, 36.073265>,  <41.256958, 39.820736, 36.239624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098373, 39.751629, 36.073265>,  <40.834064, 39.636452, 35.796001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098373, 39.751629, 36.073265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448508, 0.589018, -0.672234,
		-0.601845, 0.755082, 0.260066,
		0.660775, 0.287939, 0.693158,
		41.296604, 39.838009, 36.281212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972542, 40.317780, 35.874226>,  <40.834064, 39.636452, 35.796001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972542, 40.317780, 35.874226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323513, 40.143951, 35.955479>,  <41.534096, 40.039654, 36.004230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323513, 40.143951, 35.955479>,  <40.972542, 40.317780, 35.874226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323513, 40.143951, 35.955479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435771, 0.545054, -0.716254,
		0.200548, 0.716982, 0.667621,
		0.877431, -0.434573, 0.203130,
		41.586742, 40.013580, 36.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631550, 40.799473, 36.117416>,  <40.972542, 40.317780, 35.874226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631550, 40.799473, 36.117416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755093, 40.479233, 35.912033>,  <41.829216, 40.287086, 35.788803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755093, 40.479233, 35.912033>,  <41.631550, 40.799473, 36.117416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755093, 40.479233, 35.912033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531186, 0.593014, -0.605125,
		0.788955, -0.085848, 0.608425,
		0.308855, -0.800603, -0.513462,
		41.847748, 40.239052, 35.757996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302906, 40.703098, 36.154350>,  <41.631550, 40.799473, 36.117416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302906, 40.703098, 36.154350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176620, 40.566238, 35.800343>,  <42.100849, 40.484123, 35.587936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176620, 40.566238, 35.800343>,  <42.302906, 40.703098, 36.154350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176620, 40.566238, 35.800343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866895, 0.275204, -0.415638,
		0.385772, -0.898440, 0.209725,
		-0.315709, -0.342151, -0.885020,
		42.081909, 40.463593, 35.534836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726265, 39.992043, 36.341599>,  <42.302906, 40.703098, 36.154350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726265, 39.992043, 36.341599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543446, 39.743702, 36.086838>,  <42.433754, 39.594696, 35.933983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543446, 39.743702, 36.086838>,  <42.726265, 39.992043, 36.341599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543446, 39.743702, 36.086838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888778, -0.291158, -0.353980,
		0.034330, -0.727851, 0.684875,
		-0.457051, -0.620854, -0.636902,
		42.406330, 39.557446, 35.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279007, 40.250732, 35.780529>,  <42.726265, 39.992043, 36.341599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279007, 40.250732, 35.780529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106571, 40.578403, 35.931850>,  <43.003109, 40.775005, 36.022644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106571, 40.578403, 35.931850>,  <43.279007, 40.250732, 35.780529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106571, 40.578403, 35.931850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888391, -0.458690, -0.019094,
		0.157881, -0.344309, 0.925486,
		-0.431085, 0.819179, 0.378300,
		42.977245, 40.824158, 36.045341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621803, 39.648067, 35.640339>,  <43.279007, 40.250732, 35.780529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621803, 39.648067, 35.640339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999657, 39.521214, 35.606640>,  <44.226368, 39.445099, 35.586422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999657, 39.521214, 35.606640>,  <43.621803, 39.648067, 35.640339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999657, 39.521214, 35.606640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297537, -0.936092, 0.187624,
		-0.138363, -0.152169, -0.978622,
		0.944631, -0.317137, -0.084245,
		44.283047, 39.426071, 35.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532543, 39.213249, 35.034679>,  <43.621803, 39.648067, 35.640339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532543, 39.213249, 35.034679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843311, 39.149265, 35.278255>,  <44.029770, 39.110874, 35.424400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843311, 39.149265, 35.278255>,  <43.532543, 39.213249, 35.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843311, 39.149265, 35.278255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386478, -0.884687, 0.260698,
		0.497025, -0.437885, -0.749148,
		0.776917, -0.159956, 0.608945,
		44.076385, 39.101280, 35.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745640, 38.537521, 34.839058>,  <43.532543, 39.213249, 35.034679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745640, 38.537521, 34.839058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867619, 38.617435, 35.211529>,  <43.940804, 38.665382, 35.435013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867619, 38.617435, 35.211529>,  <43.745640, 38.537521, 34.839058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867619, 38.617435, 35.211529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323541, -0.897868, 0.298587,
		0.895729, -0.392327, -0.209162,
		0.304943, 0.199781, 0.931181,
		43.959103, 38.677368, 35.490883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059513, 37.928139, 35.024380>,  <43.745640, 38.537521, 34.839058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059513, 37.928139, 35.024380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973164, 38.119598, 35.364803>,  <43.921352, 38.234474, 35.569057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973164, 38.119598, 35.364803>,  <44.059513, 37.928139, 35.024380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973164, 38.119598, 35.364803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350406, -0.851525, 0.390027,
		0.911380, -0.214017, 0.351545,
		-0.215877, 0.478646, 0.851055,
		43.908401, 38.263191, 35.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148624, 37.380859, 35.562805>,  <44.059513, 37.928139, 35.024380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148624, 37.380859, 35.562805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921383, 37.671654, 35.717075>,  <43.785038, 37.846130, 35.809639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921383, 37.671654, 35.717075>,  <44.148624, 37.380859, 35.562805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921383, 37.671654, 35.717075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545232, -0.683531, 0.485291,
		0.616423, 0.065412, 0.784693,
		-0.568106, 0.726984, 0.385680,
		43.750950, 37.889748, 35.832779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918335, 37.113110, 36.087505>,  <44.148624, 37.380859, 35.562805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918335, 37.113110, 36.087505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679714, 37.433861, 36.100925>,  <43.536541, 37.626312, 36.108978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679714, 37.433861, 36.100925>,  <43.918335, 37.113110, 36.087505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679714, 37.433861, 36.100925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576051, -0.456909, 0.677790,
		0.558834, 0.385007, 0.734489,
		-0.596549, 0.801875, 0.033553,
		43.500748, 37.674423, 36.110992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803989, 37.243248, 36.858120>,  <43.918335, 37.113110, 36.087505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803989, 37.243248, 36.858120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504799, 37.437447, 36.677086>,  <43.325287, 37.553967, 36.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504799, 37.437447, 36.677086>,  <43.803989, 37.243248, 36.858120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504799, 37.437447, 36.677086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660375, -0.475874, 0.580903,
		0.066656, 0.733372, 0.676551,
		-0.747972, 0.485499, -0.452581,
		43.280407, 37.583096, 36.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255840, 37.443039, 37.394875>,  <43.803989, 37.243248, 36.858120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255840, 37.443039, 37.394875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079205, 37.423515, 37.036518>,  <42.973225, 37.411800, 36.821507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079205, 37.423515, 37.036518>,  <43.255840, 37.443039, 37.394875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079205, 37.423515, 37.036518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739097, -0.546302, 0.394069,
		-0.508661, 0.836165, 0.205165,
		-0.441588, -0.048811, -0.895889,
		42.946728, 37.408871, 36.767750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573219, 37.466831, 37.519657>,  <43.255840, 37.443039, 37.394875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573219, 37.466831, 37.519657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606899, 37.316746, 37.150414>,  <42.627106, 37.226696, 36.928867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606899, 37.316746, 37.150414>,  <42.573219, 37.466831, 37.519657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606899, 37.316746, 37.150414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728393, -0.655340, 0.199935,
		-0.679966, 0.655550, -0.328481,
		0.084199, -0.375212, -0.923107,
		42.632160, 37.204182, 36.873482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904438, 37.569763, 37.231060>,  <42.573219, 37.466831, 37.519657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904438, 37.569763, 37.231060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094273, 37.266594, 37.052032>,  <42.208176, 37.084694, 36.944618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094273, 37.266594, 37.052032>,  <41.904438, 37.569763, 37.231060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094273, 37.266594, 37.052032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638439, -0.646449, 0.417731,
		-0.605936, 0.087492, -0.790687,
		0.474591, -0.757924, -0.447565,
		42.236649, 37.039215, 36.917763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356819, 37.109505, 37.206947>,  <41.904438, 37.569763, 37.231060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356819, 37.109505, 37.206947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684959, 36.907162, 37.100266>,  <41.881844, 36.785755, 37.036255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684959, 36.907162, 37.100266>,  <41.356819, 37.109505, 37.206947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684959, 36.907162, 37.100266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381320, -0.831441, 0.404106,
		-0.426172, -0.229807, -0.874966,
		0.820349, -0.505861, -0.266707,
		41.931065, 36.755402, 37.020252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127239, 36.512455, 36.851906>,  <41.356819, 37.109505, 37.206947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127239, 36.512455, 36.851906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490723, 36.424870, 36.994064>,  <41.708813, 36.372318, 37.079361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490723, 36.424870, 36.994064>,  <41.127239, 36.512455, 36.851906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490723, 36.424870, 36.994064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369221, -0.818798, 0.439596,
		0.194744, -0.530684, -0.824893,
		0.908708, -0.218959, 0.355396,
		41.763336, 36.359180, 37.100681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206188, 35.762844, 36.747593>,  <41.127239, 36.512455, 36.851906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206188, 35.762844, 36.747593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468891, 35.854435, 37.034992>,  <41.626511, 35.909389, 37.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468891, 35.854435, 37.034992>,  <41.206188, 35.762844, 36.747593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468891, 35.854435, 37.034992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288877, -0.803714, 0.520187,
		0.696580, -0.549193, -0.461695,
		0.656754, 0.228979, 0.718501,
		41.665916, 35.923130, 37.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538647, 35.117645, 37.017376>,  <41.206188, 35.762844, 36.747593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538647, 35.117645, 37.017376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622299, 35.357803, 37.326126>,  <41.672489, 35.501896, 37.511375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622299, 35.357803, 37.326126>,  <41.538647, 35.117645, 37.017376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622299, 35.357803, 37.326126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311098, -0.707476, 0.634583,
		0.927083, -0.372839, 0.038827,
		0.209128, 0.600391, 0.771879,
		41.685036, 35.537922, 37.557690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772480, 34.631409, 37.468945>,  <41.538647, 35.117645, 37.017376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772480, 34.631409, 37.468945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667088, 34.955086, 37.679005>,  <41.603851, 35.149292, 37.805038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667088, 34.955086, 37.679005>,  <41.772480, 34.631409, 37.468945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667088, 34.955086, 37.679005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288843, -0.585586, 0.757403,
		0.920405, 0.047879, 0.388023,
		-0.263484, 0.809195, 0.525147,
		41.588043, 35.197845, 37.836548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076538, 34.470169, 38.071266>,  <41.772480, 34.631409, 37.468945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076538, 34.470169, 38.071266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804138, 34.755623, 38.136951>,  <41.640697, 34.926895, 38.176361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804138, 34.755623, 38.136951>,  <42.076538, 34.470169, 38.071266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804138, 34.755623, 38.136951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341896, -0.508165, 0.790491,
		0.647566, 0.482183, 0.590049,
		-0.681004, 0.713630, 0.164214,
		41.599838, 34.969711, 38.186214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181694, 34.748039, 38.690487>,  <42.076538, 34.470169, 38.071266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181694, 34.748039, 38.690487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800117, 34.854786, 38.635677>,  <41.571171, 34.918835, 38.602791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800117, 34.854786, 38.635677>,  <42.181694, 34.748039, 38.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800117, 34.854786, 38.635677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215787, -0.293109, 0.931409,
		0.208394, 0.918080, 0.337195,
		-0.953943, 0.266862, -0.137028,
		41.513935, 34.934845, 38.594570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990616, 35.162151, 39.244129>,  <42.181694, 34.748039, 38.690487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990616, 35.162151, 39.244129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631432, 35.027164, 39.131149>,  <41.415920, 34.946171, 39.063362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631432, 35.027164, 39.131149>,  <41.990616, 35.162151, 39.244129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631432, 35.027164, 39.131149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219261, -0.213397, 0.952043,
		-0.381559, 0.916830, 0.117629,
		-0.897963, -0.337469, -0.282449,
		41.362041, 34.925922, 39.046413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491489, 35.453541, 39.642933>,  <41.990616, 35.162151, 39.244129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491489, 35.453541, 39.642933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272995, 35.157505, 39.486015>,  <41.141899, 34.979885, 39.391865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272995, 35.157505, 39.486015>,  <41.491489, 35.453541, 39.642933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272995, 35.157505, 39.486015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291510, -0.271096, 0.917349,
		-0.785270, 0.615445, -0.067662,
		-0.546235, -0.740090, -0.392293,
		41.109123, 34.935478, 39.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829563, 35.411785, 40.058487>,  <41.491489, 35.453541, 39.642933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829563, 35.411785, 40.058487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860401, 35.057835, 39.874722>,  <40.878902, 34.845467, 39.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860401, 35.057835, 39.874722>,  <40.829563, 35.411785, 40.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860401, 35.057835, 39.874722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133391, -0.465793, 0.874782,
		-0.988060, -0.006161, -0.153945,
		0.077096, -0.884872, -0.459410,
		40.883530, 34.792374, 39.736900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231850, 35.088909, 40.177353>,  <40.829563, 35.411785, 40.058487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231850, 35.088909, 40.177353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475101, 34.779442, 40.106236>,  <40.621052, 34.593761, 40.063564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475101, 34.779442, 40.106236>,  <40.231850, 35.088909, 40.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475101, 34.779442, 40.106236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382270, -0.481690, 0.788571,
		-0.695736, -0.411589, -0.588682,
		0.608129, -0.773672, -0.177791,
		40.657539, 34.547340, 40.052898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766041, 34.517506, 40.086235>,  <40.231850, 35.088909, 40.177353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766041, 34.517506, 40.086235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116924, 34.397121, 40.235863>,  <40.327454, 34.324890, 40.325638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116924, 34.397121, 40.235863>,  <39.766041, 34.517506, 40.086235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116924, 34.397121, 40.235863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478360, -0.614252, 0.627588,
		0.040895, -0.729465, -0.682794,
		0.877211, -0.300956, 0.374067,
		40.380089, 34.306835, 40.348083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018677, 34.331432, 40.113007>,  <39.766041, 34.517506, 40.086235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018677, 34.331432, 40.113007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327049, 34.179554, 39.908459>,  <39.512070, 34.088425, 39.785728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327049, 34.179554, 39.908459>,  <39.018677, 34.331432, 40.113007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327049, 34.179554, 39.908459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398070, -0.339519, 0.852213,
		-0.497205, -0.860555, -0.110596,
		0.770926, -0.379700, -0.511372,
		39.558327, 34.065643, 39.755047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590538, 33.885208, 40.380093>,  <39.018677, 34.331432, 40.113007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590538, 33.885208, 40.380093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977917, 33.915710, 40.474995>,  <40.210346, 33.934010, 40.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977917, 33.915710, 40.474995>,  <39.590538, 33.885208, 40.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977917, 33.915710, 40.474995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106845, -0.733048, 0.671732,
		0.225142, -0.675889, -0.701773,
		0.968450, 0.076254, 0.237255,
		40.268452, 33.938587, 40.546169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949551, 33.161293, 40.325565>,  <39.590538, 33.885208, 40.380093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949551, 33.161293, 40.325565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131603, 33.406616, 40.583778>,  <40.240833, 33.553810, 40.738705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131603, 33.406616, 40.583778>,  <39.949551, 33.161293, 40.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131603, 33.406616, 40.583778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167506, -0.653053, 0.738555,
		0.874527, -0.444270, -0.194492,
		0.455131, 0.613307, 0.645531,
		40.268143, 33.590607, 40.777439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579857, 32.926960, 40.660652>,  <39.949551, 33.161293, 40.325565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579857, 32.926960, 40.660652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358356, 33.164387, 40.894245>,  <40.225456, 33.306843, 41.034401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358356, 33.164387, 40.894245>,  <40.579857, 32.926960, 40.660652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358356, 33.164387, 40.894245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147079, -0.760020, 0.633038,
		0.819589, 0.264656, 0.508165,
		-0.553753, 0.593571, 0.583978,
		40.192230, 33.342457, 41.069439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801228, 32.895470, 41.450241>,  <40.579857, 32.926960, 40.660652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801228, 32.895470, 41.450241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416553, 32.998600, 41.412941>,  <40.185749, 33.060478, 41.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416553, 32.998600, 41.412941>,  <40.801228, 32.895470, 41.450241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416553, 32.998600, 41.412941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257976, -0.735769, 0.626172,
		0.092829, 0.626235, 0.774088,
		-0.961681, 0.257823, -0.093253,
		40.128048, 33.075947, 41.384964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411621, 33.127274, 41.670353>,  <40.801228, 32.895470, 41.450241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411621, 33.127274, 41.670353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236534, 32.769531, 41.707321>,  <41.131481, 32.554886, 41.729500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236534, 32.769531, 41.707321>,  <41.411621, 33.127274, 41.670353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236534, 32.769531, 41.707321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881022, -0.447152, -0.154455,
		0.179462, 0.013815, 0.983668,
		-0.437715, -0.894352, 0.092418,
		41.105221, 32.501225, 41.735046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909843, 32.688263, 42.082291>,  <41.411621, 33.127274, 41.670353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909843, 32.688263, 42.082291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699905, 32.469742, 41.821186>,  <41.573944, 32.338631, 41.664524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699905, 32.469742, 41.821186>,  <41.909843, 32.688263, 42.082291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699905, 32.469742, 41.821186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851019, -0.352447, -0.389291,
		-0.017394, -0.759828, 0.649891,
		-0.524846, -0.546298, -0.652759,
		41.542450, 32.305851, 41.625359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596794, 32.818798, 41.755676>,  <41.909843, 32.688263, 42.082291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596794, 32.818798, 41.755676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412148, 32.517143, 41.568832>,  <42.301361, 32.336151, 41.456726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412148, 32.517143, 41.568832>,  <42.596794, 32.818798, 41.755676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412148, 32.517143, 41.568832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536596, 0.181930, -0.823995,
		0.706385, -0.631017, 0.320684,
		-0.461612, -0.754135, -0.467114,
		42.273663, 32.290901, 41.428699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195839, 32.404583, 41.583298>,  <42.596794, 32.818798, 41.755676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195839, 32.404583, 41.583298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857841, 32.377934, 41.371056>,  <42.655041, 32.361942, 41.243710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857841, 32.377934, 41.371056>,  <43.195839, 32.404583, 41.583298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857841, 32.377934, 41.371056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475882, 0.358956, -0.802924,
		0.243958, -0.930974, -0.271612,
		-0.844998, -0.066624, -0.530604,
		42.604343, 32.357944, 41.211876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342072, 32.217171, 40.897388>,  <43.195839, 32.404583, 41.583298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342072, 32.217171, 40.897388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989960, 32.406940, 40.899891>,  <42.778694, 32.520802, 40.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989960, 32.406940, 40.899891>,  <43.342072, 32.217171, 40.897388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989960, 32.406940, 40.899891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270983, 0.513544, -0.814150,
		-0.389466, -0.714980, -0.580621,
		-0.880275, 0.474422, 0.006260,
		42.725876, 32.549267, 40.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207310, 32.340748, 40.197723>,  <43.342072, 32.217171, 40.897388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207310, 32.340748, 40.197723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957142, 32.593861, 40.380341>,  <42.807041, 32.745728, 40.489910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957142, 32.593861, 40.380341>,  <43.207310, 32.340748, 40.197723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957142, 32.593861, 40.380341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093636, 0.641734, -0.761190,
		-0.774652, -0.433312, -0.460603,
		-0.625418, 0.632786, 0.456546,
		42.769516, 32.783695, 40.517303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640518, 32.596260, 39.725883>,  <43.207310, 32.340748, 40.197723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640518, 32.596260, 39.725883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678833, 32.867096, 40.017738>,  <42.701824, 33.029598, 40.192852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678833, 32.867096, 40.017738>,  <42.640518, 32.596260, 39.725883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678833, 32.867096, 40.017738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403784, 0.643563, -0.650219,
		-0.909825, 0.356903, -0.211749,
		0.095791, 0.677087, 0.729642,
		42.707569, 33.070221, 40.236629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420143, 33.187489, 39.431332>,  <42.640518, 32.596260, 39.725883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420143, 33.187489, 39.431332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604473, 33.333588, 39.754871>,  <42.715073, 33.421246, 39.948994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604473, 33.333588, 39.754871>,  <42.420143, 33.187489, 39.431332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604473, 33.333588, 39.754871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311303, 0.786954, -0.532723,
		-0.831100, 0.497290, 0.248947,
		0.460828, 0.365249, 0.808846,
		42.742722, 33.443161, 39.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215012, 33.839329, 39.480267>,  <42.420143, 33.187489, 39.431332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215012, 33.839329, 39.480267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563969, 33.837234, 39.675777>,  <42.773342, 33.835979, 39.793083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563969, 33.837234, 39.675777>,  <42.215012, 33.839329, 39.480267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563969, 33.837234, 39.675777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311581, 0.776409, -0.547819,
		-0.376621, 0.630208, 0.678967,
		0.872396, -0.005233, 0.488773,
		42.825687, 33.835663, 39.822411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402859, 34.576645, 39.574455>,  <42.215012, 33.839329, 39.480267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402859, 34.576645, 39.574455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744587, 34.378628, 39.637783>,  <42.949623, 34.259815, 39.675777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744587, 34.378628, 39.637783>,  <42.402859, 34.576645, 39.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744587, 34.378628, 39.637783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502626, 0.709391, -0.494097,
		0.132291, 0.501692, 0.854871,
		0.854322, -0.495045, 0.158317,
		43.000885, 34.230114, 39.685280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972168, 35.087582, 39.819832>,  <42.402859, 34.576645, 39.574455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972168, 35.087582, 39.819832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180740, 34.764133, 39.710850>,  <43.305885, 34.570065, 39.645462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180740, 34.764133, 39.710850>,  <42.972168, 35.087582, 39.819832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180740, 34.764133, 39.710850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562008, 0.565719, -0.603414,
		0.642068, 0.161519, 0.749440,
		0.521435, -0.808624, -0.272455,
		43.337170, 34.521545, 39.629112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721767, 35.327854, 39.740120>,  <42.972168, 35.087582, 39.819832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721767, 35.327854, 39.740120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702560, 34.988605, 39.529068>,  <43.691036, 34.785057, 39.402439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702560, 34.988605, 39.529068>,  <43.721767, 35.327854, 39.740120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702560, 34.988605, 39.529068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617820, 0.389847, -0.682875,
		0.784852, -0.358771, 0.505263,
		-0.048020, -0.848117, -0.527628,
		43.688156, 34.734169, 39.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360050, 35.259163, 39.498684>,  <43.721767, 35.327854, 39.740120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360050, 35.259163, 39.498684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143890, 35.037399, 39.245514>,  <44.014194, 34.904339, 39.093613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143890, 35.037399, 39.245514>,  <44.360050, 35.259163, 39.498684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143890, 35.037399, 39.245514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640109, 0.217325, -0.736906,
		0.546101, -0.803365, 0.237441,
		-0.540403, -0.554413, -0.632923,
		43.981770, 34.871075, 39.055637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835823, 34.839325, 39.170780>,  <44.360050, 35.259163, 39.498684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835823, 34.839325, 39.170780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509010, 34.878994, 38.943581>,  <44.312923, 34.902794, 38.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509010, 34.878994, 38.943581>,  <44.835823, 34.839325, 39.170780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509010, 34.878994, 38.943581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576458, 0.119226, -0.808382,
		-0.012447, -0.987902, -0.154579,
		-0.817032, 0.099171, -0.568000,
		44.263901, 34.908745, 38.773182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098591, 34.652439, 38.581459>,  <44.835823, 34.839325, 39.170780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098591, 34.652439, 38.581459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761562, 34.842651, 38.480305>,  <44.559345, 34.956779, 38.419613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761562, 34.842651, 38.480305>,  <45.098591, 34.652439, 38.581459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761562, 34.842651, 38.480305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446637, 0.354505, -0.821487,
		-0.300992, -0.805107, -0.511084,
		-0.842567, 0.475530, -0.252887,
		44.508793, 34.985310, 38.404438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056969, 34.628422, 37.864925>,  <45.098591, 34.652439, 38.581459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056969, 34.628422, 37.864925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786324, 34.911701, 37.945572>,  <44.623936, 35.081669, 37.993961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786324, 34.911701, 37.945572>,  <45.056969, 34.628422, 37.864925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786324, 34.911701, 37.945572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264682, 0.489430, -0.830904,
		-0.687123, -0.508835, -0.518602,
		-0.676613, 0.708198, 0.201619,
		44.583340, 35.124161, 38.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698162, 34.713722, 37.203911>,  <45.056969, 34.628422, 37.864925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698162, 34.713722, 37.203911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645542, 35.043789, 37.423656>,  <44.613972, 35.241829, 37.555504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645542, 35.043789, 37.423656>,  <44.698162, 34.713722, 37.203911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645542, 35.043789, 37.423656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180294, 0.564848, -0.805258,
		-0.974776, -0.006882, -0.223077,
		-0.131546, 0.825166, 0.549360,
		44.606079, 35.291340, 37.588463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270416, 35.164467, 36.703094>,  <44.698162, 34.713722, 37.203911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270416, 35.164467, 36.703094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420250, 35.388836, 36.998405>,  <44.510151, 35.523457, 37.175594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420250, 35.388836, 36.998405>,  <44.270416, 35.164467, 36.703094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420250, 35.388836, 36.998405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228231, 0.715972, -0.659768,
		-0.898665, 0.415636, 0.140172,
		0.374582, 0.560919, 0.738280,
		44.532623, 35.557114, 37.219891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221581, 35.902172, 36.408878>,  <44.270416, 35.164467, 36.703094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221581, 35.902172, 36.408878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460419, 35.943356, 36.727093>,  <44.603722, 35.968067, 36.918022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.460419, 35.943356, 36.727093>,  <44.221581, 35.902172, 36.408878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460419, 35.943356, 36.727093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529833, 0.693995, -0.487492,
		-0.602290, 0.712580, 0.359829,
		0.597097, 0.102962, 0.795534,
		44.639549, 35.974243, 36.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137661, 36.606304, 36.674332>,  <44.221581, 35.902172, 36.408878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137661, 36.606304, 36.674332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491360, 36.446369, 36.770863>,  <44.703579, 36.350410, 36.828781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491360, 36.446369, 36.770863>,  <44.137661, 36.606304, 36.674332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491360, 36.446369, 36.770863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466574, 0.778868, -0.419134,
		-0.020378, 0.483215, 0.875265,
		0.884247, -0.399834, 0.241328,
		44.756634, 36.326420, 36.843262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490009, 37.156151, 36.708672>,  <44.137661, 36.606304, 36.674332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490009, 37.156151, 36.708672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802128, 36.905998, 36.711075>,  <44.989399, 36.755909, 36.712517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802128, 36.905998, 36.711075>,  <44.490009, 37.156151, 36.708672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802128, 36.905998, 36.711075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599136, 0.744733, -0.293955,
		0.179362, 0.232970, 0.955801,
		0.780298, -0.625379, 0.006004,
		45.036217, 36.718384, 36.712875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128723, 37.392487, 37.196186>,  <44.490009, 37.156151, 36.708672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128723, 37.392487, 37.196186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273762, 37.145596, 36.916885>,  <45.360786, 36.997463, 36.749306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273762, 37.145596, 36.916885>,  <45.128723, 37.392487, 37.196186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273762, 37.145596, 36.916885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625519, 0.716583, -0.308600,
		0.690831, -0.324871, 0.645919,
		0.362600, -0.617225, -0.698251,
		45.382542, 36.960426, 36.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792603, 37.554462, 37.212883>,  <45.128723, 37.392487, 37.196186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792603, 37.554462, 37.212883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780014, 37.342014, 36.874199>,  <45.772461, 37.214546, 36.670986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780014, 37.342014, 36.874199>,  <45.792603, 37.554462, 37.212883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780014, 37.342014, 36.874199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709343, 0.584944, -0.393284,
		0.704160, -0.612986, 0.358338,
		-0.031469, -0.531120, -0.846712,
		45.770573, 37.182678, 36.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523232, 37.494022, 36.973507>,  <45.792603, 37.554462, 37.212883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523232, 37.494022, 36.973507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290539, 37.449806, 36.651173>,  <46.150925, 37.423275, 36.457771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290539, 37.449806, 36.651173>,  <46.523232, 37.494022, 36.973507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290539, 37.449806, 36.651173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699422, 0.437754, -0.564961,
		0.415209, -0.892274, -0.177340,
		-0.581731, -0.110541, -0.805835,
		46.116020, 37.416641, 36.409424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000359, 37.477360, 36.418533>,  <46.523232, 37.494022, 36.973507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.000359, 37.477360, 36.418533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639870, 37.534977, 36.255047>,  <46.423576, 37.569546, 36.156956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639870, 37.534977, 36.255047>,  <47.000359, 37.477360, 36.418533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639870, 37.534977, 36.255047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421844, 0.507548, -0.751294,
		0.099226, -0.849498, -0.518177,
		-0.901223, 0.144041, -0.408718,
		46.369503, 37.578190, 36.132431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.977131, 36.799492, 36.244770>,  <47.000359, 37.477360, 36.418533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.977131, 36.799492, 36.244770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369087, 36.732342, 36.201622>,  <47.604259, 36.692051, 36.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369087, 36.732342, 36.201622>,  <46.977131, 36.799492, 36.244770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369087, 36.732342, 36.201622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129876, -0.946961, 0.293935,
		-0.151491, -0.274014, -0.949719,
		0.979889, -0.167874, -0.107868,
		47.663055, 36.681980, 36.169262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145939, 36.102554, 35.957451>,  <46.977131, 36.799492, 36.244770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145939, 36.102554, 35.957451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486217, 36.190826, 36.148289>,  <47.690384, 36.243790, 36.262791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486217, 36.190826, 36.148289>,  <47.145939, 36.102554, 35.957451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486217, 36.190826, 36.148289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065420, -0.945002, 0.320456,
		0.521572, -0.241399, -0.818346,
		0.850696, 0.220677, 0.477094,
		47.741425, 36.257030, 36.291416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742802, 35.841984, 35.532948>,  <47.145939, 36.102554, 35.957451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742802, 35.841984, 35.532948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550461, 35.555717, 35.735573>,  <47.435059, 35.383957, 35.857147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550461, 35.555717, 35.735573>,  <47.742802, 35.841984, 35.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.550461, 35.555717, 35.735573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764641, 0.059548, -0.641699,
		0.429078, -0.695899, -0.575862,
		-0.480849, -0.715667, 0.506562,
		47.406204, 35.341019, 35.887543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.016563, 35.196796, 35.194347>,  <47.742802, 35.841984, 35.532948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.016563, 35.196796, 35.194347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866741, 34.825947, 35.199417>,  <47.776848, 34.603439, 35.202457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866741, 34.825947, 35.199417>,  <48.016563, 35.196796, 35.194347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866741, 34.825947, 35.199417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252356, -0.115081, -0.960767,
		0.892204, -0.356659, 0.277068,
		-0.374551, -0.927120, 0.012671,
		47.754375, 34.547810, 35.203217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.306488, 42.278652, 44.016819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926762, 42.381084, 43.943913>,  <34.698925, 42.442543, 43.900169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926762, 42.381084, 43.943913>,  <35.306488, 42.278652, 44.016819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926762, 42.381084, 43.943913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186455, -0.008053, -0.982430,
		-0.253053, -0.966621, -0.040103,
		-0.949315, 0.256084, -0.182269,
		34.641968, 42.457909, 43.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198914, 42.017479, 43.369835>,  <35.306488, 42.278652, 44.016819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198914, 42.017479, 43.369835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859760, 42.227901, 43.396267>,  <34.656269, 42.354153, 43.412128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.859760, 42.227901, 43.396267>,  <35.198914, 42.017479, 43.369835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859760, 42.227901, 43.396267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108643, -0.050389, -0.992803,
		-0.518938, -0.848957, 0.099876,
		-0.847880, 0.526054, 0.066085,
		34.605396, 42.385715, 43.416092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701370, 41.684708, 42.897530>,  <35.198914, 42.017479, 43.369835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701370, 41.684708, 42.897530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598404, 42.068687, 42.941769>,  <34.536625, 42.299076, 42.968311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598404, 42.068687, 42.941769>,  <34.701370, 41.684708, 42.897530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598404, 42.068687, 42.941769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227967, 0.050899, -0.972337,
		-0.939026, -0.275506, 0.205735,
		-0.257413, 0.959951, 0.110602,
		34.521179, 42.356674, 42.974949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069229, 41.698284, 42.601879>,  <34.701370, 41.684708, 42.897530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069229, 41.698284, 42.601879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223026, 42.067532, 42.603439>,  <34.315304, 42.289082, 42.604374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223026, 42.067532, 42.603439>,  <34.069229, 41.698284, 42.601879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223026, 42.067532, 42.603439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189251, 0.082959, -0.978418,
		-0.903520, 0.375457, 0.206599,
		0.384493, 0.923119, 0.003899,
		34.338375, 42.344467, 42.604610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654552, 42.065113, 42.096855>,  <34.069229, 41.698284, 42.601879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654552, 42.065113, 42.096855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987915, 42.279350, 42.151363>,  <34.187935, 42.407894, 42.184071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987915, 42.279350, 42.151363>,  <33.654552, 42.065113, 42.096855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987915, 42.279350, 42.151363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017567, 0.272125, -0.962102,
		-0.552378, 0.799430, 0.236200,
		0.833409, 0.535593, 0.136272,
		34.237938, 42.440029, 42.192245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564743, 42.601936, 41.830490>,  <33.654552, 42.065113, 42.096855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564743, 42.601936, 41.830490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963993, 42.620255, 41.814236>,  <34.203545, 42.631245, 41.804485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.963993, 42.620255, 41.814236>,  <33.564743, 42.601936, 41.830490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963993, 42.620255, 41.814236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055769, 0.406174, -0.912093,
		-0.025268, 0.912647, 0.407966,
		0.998124, 0.045799, -0.040634,
		34.263432, 42.633995, 41.802044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677273, 43.253750, 41.503029>,  <33.564743, 42.601936, 41.830490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677273, 43.253750, 41.503029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033337, 43.074116, 41.472221>,  <34.246975, 42.966335, 41.453735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.033337, 43.074116, 41.472221>,  <33.677273, 43.253750, 41.503029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033337, 43.074116, 41.472221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136471, 0.424057, -0.895294,
		0.434727, 0.786445, 0.438767,
		0.890162, -0.449087, -0.077022,
		34.300385, 42.939388, 41.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154022, 43.655994, 41.263966>,  <33.677273, 43.253750, 41.503029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154022, 43.655994, 41.263966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305767, 43.296848, 41.174583>,  <34.396812, 43.081360, 41.120956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.305767, 43.296848, 41.174583>,  <34.154022, 43.655994, 41.263966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305767, 43.296848, 41.174583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266578, 0.337327, -0.902855,
		0.886015, 0.282940, 0.367318,
		0.379361, -0.897862, -0.223451,
		34.419575, 43.027489, 41.107548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716427, 43.786671, 40.806770>,  <34.154022, 43.655994, 41.263966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716427, 43.786671, 40.806770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.690762, 43.389271, 40.769176>,  <34.675362, 43.150829, 40.746620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.690762, 43.389271, 40.769176>,  <34.716427, 43.786671, 40.806770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690762, 43.389271, 40.769176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214985, 0.078207, -0.973481,
		0.974507, -0.082671, 0.208570,
		-0.064167, -0.993503, -0.093986,
		34.671513, 43.091221, 40.740982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250668, 43.639088, 40.431480>,  <34.716427, 43.786671, 40.806770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250668, 43.639088, 40.431480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029297, 43.312908, 40.363640>,  <34.896473, 43.117203, 40.322933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029297, 43.312908, 40.363640>,  <35.250668, 43.639088, 40.431480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029297, 43.312908, 40.363640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366598, -0.055642, -0.928714,
		0.747878, -0.576155, 0.329734,
		-0.553430, -0.815445, -0.169605,
		34.863266, 43.068275, 40.312759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675591, 43.266785, 40.032406>,  <35.250668, 43.639088, 40.431480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675591, 43.266785, 40.032406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322094, 43.100208, 39.947014>,  <35.109997, 43.000263, 39.895779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322094, 43.100208, 39.947014>,  <35.675591, 43.266785, 40.032406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322094, 43.100208, 39.947014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276610, -0.096885, -0.956086,
		0.377473, -0.903985, 0.200814,
		-0.883743, -0.416444, -0.213480,
		35.056973, 42.975277, 39.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881435, 42.604111, 39.623283>,  <35.675591, 43.266785, 40.032406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881435, 42.604111, 39.623283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.487862, 42.638096, 39.560474>,  <35.251717, 42.658489, 39.522789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.487862, 42.638096, 39.560474>,  <35.881435, 42.604111, 39.623283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487862, 42.638096, 39.560474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119635, -0.339044, -0.933133,
		-0.132521, -0.936926, 0.323432,
		-0.983934, 0.084965, -0.157020,
		35.192680, 42.663586, 39.513367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697048, 41.987965, 39.362606>,  <35.881435, 42.604111, 39.623283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697048, 41.987965, 39.362606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416206, 42.244606, 39.239059>,  <35.247704, 42.398590, 39.164932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416206, 42.244606, 39.239059>,  <35.697048, 41.987965, 39.362606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416206, 42.244606, 39.239059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218065, -0.219189, -0.951001,
		-0.677867, -0.735052, 0.013982,
		-0.702100, 0.641603, -0.308870,
		35.205578, 42.437088, 39.146397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280186, 41.594624, 38.946529>,  <35.697048, 41.987965, 39.362606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280186, 41.594624, 38.946529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228165, 41.979099, 38.849201>,  <35.196953, 42.209785, 38.790806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228165, 41.979099, 38.849201>,  <35.280186, 41.594624, 38.946529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228165, 41.979099, 38.849201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258797, -0.203985, -0.944147,
		-0.957136, -0.185759, -0.222224,
		-0.130053, 0.961188, -0.243316,
		35.189148, 42.267456, 38.776207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737186, 41.683167, 38.382446>,  <35.280186, 41.594624, 38.946529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737186, 41.683167, 38.382446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972736, 42.006432, 38.378670>,  <35.114067, 42.200390, 38.376404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.972736, 42.006432, 38.378670>,  <34.737186, 41.683167, 38.382446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972736, 42.006432, 38.378670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151187, -0.121624, -0.980995,
		-0.793955, 0.576259, -0.193806,
		0.588879, 0.808166, -0.009441,
		35.149399, 42.248882, 38.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493076, 42.075710, 37.731136>,  <34.737186, 41.683167, 38.382446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493076, 42.075710, 37.731136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851353, 42.217800, 37.838135>,  <35.066319, 42.303055, 37.902332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851353, 42.217800, 37.838135>,  <34.493076, 42.075710, 37.731136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851353, 42.217800, 37.838135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286942, -0.002159, -0.957946,
		-0.339705, 0.934780, -0.103861,
		0.895693, 0.355221, 0.267494,
		35.120060, 42.324368, 37.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627869, 42.565071, 37.288326>,  <34.493076, 42.075710, 37.731136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627869, 42.565071, 37.288326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995514, 42.457310, 37.403332>,  <35.216099, 42.392654, 37.472336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995514, 42.457310, 37.403332>,  <34.627869, 42.565071, 37.288326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995514, 42.457310, 37.403332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313133, 0.056550, -0.948024,
		0.239138, 0.961367, 0.136334,
		0.919109, -0.269399, 0.287512,
		35.271248, 42.376492, 37.489586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061344, 42.929615, 36.810043>,  <34.627869, 42.565071, 37.288326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061344, 42.929615, 36.810043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 42.675449, 36.947746>,  <35.503696, 42.522949, 37.030369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.337814, 42.675449, 36.947746>,  <35.061344, 42.929615, 36.810043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337814, 42.675449, 36.947746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507259, 0.087268, -0.857364,
		0.514741, 0.767221, 0.382639,
		0.691180, -0.635418, 0.344259,
		35.545170, 42.484825, 37.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662773, 43.260483, 36.819466>,  <35.061344, 42.929615, 36.810043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662773, 43.260483, 36.819466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787979, 42.880939, 36.835896>,  <35.863102, 42.653214, 36.845753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787979, 42.880939, 36.835896>,  <35.662773, 43.260483, 36.819466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787979, 42.880939, 36.835896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710303, 0.205171, -0.673331,
		0.630469, 0.239939, 0.738199,
		0.313015, -0.948859, 0.041075,
		35.881886, 42.596283, 36.848217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281685, 43.290581, 36.980885>,  <35.662773, 43.260483, 36.819466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281685, 43.290581, 36.980885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266273, 42.922226, 36.825718>,  <36.257027, 42.701214, 36.732616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.266273, 42.922226, 36.825718>,  <36.281685, 43.290581, 36.980885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266273, 42.922226, 36.825718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756087, 0.226950, -0.613862,
		0.653336, -0.316951, 0.687527,
		-0.038530, -0.920888, -0.387917,
		36.254715, 42.645958, 36.709343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994446, 43.082367, 36.782352>,  <36.281685, 43.290581, 36.980885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994446, 43.082367, 36.782352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804790, 42.792099, 36.582912>,  <36.690998, 42.617939, 36.463249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804790, 42.792099, 36.582912>,  <36.994446, 43.082367, 36.782352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804790, 42.792099, 36.582912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669637, 0.070460, -0.739339,
		0.571644, -0.684430, 0.452524,
		-0.474140, -0.725666, -0.498598,
		36.662548, 42.574398, 36.433334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500641, 42.702702, 36.504200>,  <36.994446, 43.082367, 36.782352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500641, 42.702702, 36.504200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162655, 42.645420, 36.298080>,  <36.959866, 42.611053, 36.174408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162655, 42.645420, 36.298080>,  <37.500641, 42.702702, 36.504200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162655, 42.645420, 36.298080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475048, 0.241680, -0.846121,
		0.245709, -0.959730, -0.136179,
		-0.844960, -0.143208, -0.515301,
		36.909168, 42.602459, 36.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950214, 42.087730, 36.529606>,  <37.500641, 42.702702, 36.504200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950214, 42.087730, 36.529606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330936, 42.046429, 36.414085>,  <37.559368, 42.021648, 36.344772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330936, 42.046429, 36.414085>,  <36.950214, 42.087730, 36.529606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330936, 42.046429, 36.414085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173830, -0.594192, 0.785314,
		-0.252689, -0.797669, -0.547607,
		0.951804, -0.103249, -0.288805,
		37.616478, 42.015453, 36.327442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042233, 41.462505, 36.772942>,  <36.950214, 42.087730, 36.529606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042233, 41.462505, 36.772942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409126, 41.616180, 36.730843>,  <37.629265, 41.708385, 36.705585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.409126, 41.616180, 36.730843>,  <37.042233, 41.462505, 36.772942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409126, 41.616180, 36.730843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300056, -0.492596, 0.816894,
		0.261995, -0.780865, -0.567105,
		0.917238, 0.384186, -0.105245,
		37.684299, 41.731438, 36.699268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450268, 40.896515, 36.902222>,  <37.042233, 41.462505, 36.772942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450268, 40.896515, 36.902222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648384, 41.240032, 36.954617>,  <37.767254, 41.446144, 36.986053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648384, 41.240032, 36.954617>,  <37.450268, 40.896515, 36.902222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648384, 41.240032, 36.954617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192081, -0.255314, 0.947586,
		0.847225, -0.444171, -0.291413,
		0.495292, 0.858794, 0.130992,
		37.796970, 41.497669, 36.993916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726768, 40.674927, 37.448666>,  <37.450268, 40.896515, 36.902222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726768, 40.674927, 37.448666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844906, 41.056076, 37.476383>,  <37.915787, 41.284767, 37.493015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844906, 41.056076, 37.476383>,  <37.726768, 40.674927, 37.448666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844906, 41.056076, 37.476383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171262, -0.124157, 0.977371,
		0.939915, -0.276794, -0.199860,
		0.295345, 0.952874, 0.069293,
		37.933510, 41.341938, 37.497169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421349, 40.691509, 37.720963>,  <37.726768, 40.674927, 37.448666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421349, 40.691509, 37.720963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234314, 41.035915, 37.800972>,  <38.122093, 41.242561, 37.848976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.234314, 41.035915, 37.800972>,  <38.421349, 40.691509, 37.720963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234314, 41.035915, 37.800972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229828, -0.100077, 0.968072,
		0.853545, 0.498631, -0.151092,
		-0.467590, 0.861018, 0.200019,
		38.094036, 41.294220, 37.860977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863007, 41.054489, 38.096157>,  <38.421349, 40.691509, 37.720963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863007, 41.054489, 38.096157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520138, 41.217587, 38.222015>,  <38.314419, 41.315445, 38.297531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520138, 41.217587, 38.222015>,  <38.863007, 41.054489, 38.096157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520138, 41.217587, 38.222015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292101, -0.118296, 0.949043,
		0.424192, 0.905399, -0.017704,
		-0.857169, 0.407748, 0.314649,
		38.262989, 41.339912, 38.316410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980850, 41.387688, 38.775833>,  <38.863007, 41.054489, 38.096157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980850, 41.387688, 38.775833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582146, 41.399643, 38.805698>,  <38.342922, 41.406818, 38.823620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582146, 41.399643, 38.805698>,  <38.980850, 41.387688, 38.775833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582146, 41.399643, 38.805698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075497, 0.027723, 0.996761,
		0.027723, 0.999169, -0.029890,
		-0.996761, 0.029890, 0.074666,
		38.283119, 41.408611, 38.828098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865772, 41.827389, 39.337025>,  <38.980850, 41.387688, 38.775833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865772, 41.827389, 39.337025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529396, 41.611576, 39.320431>,  <38.327568, 41.482090, 39.310474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529396, 41.611576, 39.320431>,  <38.865772, 41.827389, 39.337025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529396, 41.611576, 39.320431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016362, -0.051271, 0.998551,
		-0.540874, 0.840405, 0.034289,
		-0.840945, -0.539529, -0.041482,
		38.277111, 41.449718, 39.307987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473839, 42.085087, 39.871647>,  <38.865772, 41.827389, 39.337025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473839, 42.085087, 39.871647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312584, 41.722134, 39.824097>,  <38.215832, 41.504360, 39.795567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.312584, 41.722134, 39.824097>,  <38.473839, 42.085087, 39.871647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312584, 41.722134, 39.824097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248968, -0.016251, 0.968376,
		-0.880621, 0.419986, -0.219359,
		-0.403140, -0.907385, -0.118874,
		38.191643, 41.449917, 39.788433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862301, 42.165195, 40.100601>,  <38.473839, 42.085087, 39.871647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862301, 42.165195, 40.100601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878643, 41.765587, 40.107468>,  <37.888451, 41.525822, 40.111588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878643, 41.765587, 40.107468>,  <37.862301, 42.165195, 40.100601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878643, 41.765587, 40.107468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377859, 0.000459, 0.925863,
		-0.924961, -0.044316, -0.377469,
		0.040857, -0.999018, 0.017169,
		37.890900, 41.465881, 40.112617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157406, 41.896820, 40.373287>,  <37.862301, 42.165195, 40.100601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157406, 41.896820, 40.373287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421734, 41.604351, 40.441055>,  <37.580330, 41.428871, 40.481716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421734, 41.604351, 40.441055>,  <37.157406, 41.896820, 40.373287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421734, 41.604351, 40.441055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332484, -0.082806, 0.939466,
		-0.672880, -0.677151, -0.297823,
		0.660822, -0.731170, 0.169424,
		37.619980, 41.384998, 40.491882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811687, 41.397999, 40.713081>,  <37.157406, 41.896820, 40.373287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811687, 41.397999, 40.713081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188271, 41.298122, 40.803688>,  <37.414219, 41.238197, 40.858051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.188271, 41.298122, 40.803688>,  <36.811687, 41.397999, 40.713081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188271, 41.298122, 40.803688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275770, -0.183879, 0.943472,
		-0.193966, -0.950696, -0.241981,
		0.941450, -0.249732, 0.226507,
		37.470707, 41.223213, 40.871643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822514, 40.710850, 41.155716>,  <36.811687, 41.397999, 40.713081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822514, 40.710850, 41.155716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154476, 40.929012, 41.202694>,  <37.353653, 41.059910, 41.230881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154476, 40.929012, 41.202694>,  <36.822514, 40.710850, 41.155716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154476, 40.929012, 41.202694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011993, -0.193020, 0.981122,
		0.557776, -0.815646, -0.153647,
		0.829905, 0.545403, 0.117444,
		37.403446, 41.092632, 41.237926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219978, 40.306129, 41.470753>,  <36.822514, 40.710850, 41.155716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219978, 40.306129, 41.470753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369873, 40.664131, 41.567535>,  <37.459808, 40.878933, 41.625603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369873, 40.664131, 41.567535>,  <37.219978, 40.306129, 41.470753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369873, 40.664131, 41.567535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005061, -0.262941, 0.964799,
		0.927119, -0.360318, -0.103063,
		0.374733, 0.895004, 0.241954,
		37.482292, 40.932632, 41.640121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803558, 40.255493, 41.964005>,  <37.219978, 40.306129, 41.470753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803558, 40.255493, 41.964005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698658, 40.636883, 42.023487>,  <37.635715, 40.865715, 42.059177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698658, 40.636883, 42.023487>,  <37.803558, 40.255493, 41.964005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698658, 40.636883, 42.023487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158789, -0.109360, 0.981237,
		0.951845, 0.280947, -0.122721,
		-0.262255, 0.953472, 0.148705,
		37.619980, 40.922924, 42.068100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061970, 40.498463, 42.593857>,  <37.803558, 40.255493, 41.964005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061970, 40.498463, 42.593857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800133, 40.797867, 42.551464>,  <37.643028, 40.977509, 42.526028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800133, 40.797867, 42.551464>,  <38.061970, 40.498463, 42.593857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800133, 40.797867, 42.551464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150631, 0.008241, 0.988556,
		0.740819, 0.663070, 0.107355,
		-0.654597, 0.748512, -0.105984,
		37.603752, 41.022419, 42.519669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046673, 40.929119, 43.264339>,  <38.061970, 40.498463, 42.593857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046673, 40.929119, 43.264339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702312, 41.029751, 43.087448>,  <37.495697, 41.090130, 42.981312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702312, 41.029751, 43.087448>,  <38.046673, 40.929119, 43.264339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702312, 41.029751, 43.087448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465104, -0.036814, 0.884490,
		0.206238, 0.967137, 0.148702,
		-0.860897, 0.251577, -0.442227,
		37.444042, 41.105225, 42.954781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799805, 41.496159, 43.625168>,  <38.046673, 40.929119, 43.264339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799805, 41.496159, 43.625168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477669, 41.341949, 43.445034>,  <37.284386, 41.249424, 43.336952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477669, 41.341949, 43.445034>,  <37.799805, 41.496159, 43.625168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477669, 41.341949, 43.445034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421062, -0.162746, 0.892312,
		-0.417297, 0.908232, -0.031264,
		-0.805339, -0.385523, -0.450335,
		37.236069, 41.226292, 43.309933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.199394, 42.050503, 43.864861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048336, 41.705154, 43.731010>,  <36.957703, 41.497944, 43.650700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048336, 41.705154, 43.731010>,  <37.199394, 42.050503, 43.864861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048336, 41.705154, 43.731010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515986, -0.103854, 0.850279,
		-0.768860, 0.493761, -0.406269,
		-0.377641, -0.863374, -0.334623,
		36.935043, 41.446144, 43.630623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401917, 42.098324, 43.939548>,  <37.199394, 42.050503, 43.864861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401917, 42.098324, 43.939548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523006, 41.717121, 43.944061>,  <36.595661, 41.488400, 43.946770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523006, 41.717121, 43.944061>,  <36.401917, 42.098324, 43.939548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523006, 41.717121, 43.944061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607360, -0.183780, 0.772877,
		-0.734488, -0.240820, -0.634455,
		0.302725, -0.953011, 0.011281,
		36.613823, 41.431217, 43.947445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858578, 41.807129, 44.185589>,  <36.401917, 42.098324, 43.939548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858578, 41.807129, 44.185589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090069, 41.480923, 44.184536>,  <36.228962, 41.285198, 44.183903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090069, 41.480923, 44.184536>,  <35.858578, 41.807129, 44.185589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090069, 41.480923, 44.184536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452566, -0.323843, 0.830849,
		-0.678425, -0.479642, -0.556492,
		0.578726, -0.815518, -0.002633,
		36.263687, 41.236267, 44.183746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343079, 41.187019, 44.191410>,  <35.858578, 41.807129, 44.185589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343079, 41.187019, 44.191410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706326, 41.106495, 44.338268>,  <35.924274, 41.058182, 44.426384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706326, 41.106495, 44.338268>,  <35.343079, 41.187019, 44.191410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706326, 41.106495, 44.338268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415684, -0.328138, 0.848253,
		-0.050283, -0.922931, -0.381668,
		0.908118, -0.201306, 0.367148,
		35.978760, 41.046104, 44.448414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256134, 40.566956, 44.472946>,  <35.343079, 41.187019, 44.191410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256134, 40.566956, 44.472946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589130, 40.710262, 44.641991>,  <35.788929, 40.796246, 44.743420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589130, 40.710262, 44.641991>,  <35.256134, 40.566956, 44.472946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589130, 40.710262, 44.641991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314452, -0.322495, 0.892814,
		0.456156, -0.876152, -0.155817,
		0.832491, 0.358265, 0.422615,
		35.838879, 40.817741, 44.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555874, 40.020916, 44.900867>,  <35.256134, 40.566956, 44.472946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555874, 40.020916, 44.900867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706142, 40.361290, 45.047722>,  <35.796303, 40.565514, 45.135834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706142, 40.361290, 45.047722>,  <35.555874, 40.020916, 44.900867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706142, 40.361290, 45.047722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262762, -0.282095, 0.922702,
		0.888724, -0.443097, 0.117619,
		0.375667, 0.850933, 0.367133,
		35.818844, 40.616570, 45.157864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109100, 39.860020, 45.374352>,  <35.555874, 40.020916, 44.900867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109100, 39.860020, 45.374352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982658, 40.224335, 45.480595>,  <35.906792, 40.442924, 45.544342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982658, 40.224335, 45.480595>,  <36.109100, 39.860020, 45.374352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982658, 40.224335, 45.480595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079582, -0.304432, 0.949204,
		0.945379, 0.278915, 0.168716,
		-0.316110, 0.910784, 0.265607,
		35.887825, 40.497570, 45.560276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247498, 39.796329, 46.013443>,  <36.109100, 39.860020, 45.374352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247498, 39.796329, 46.013443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005733, 40.114990, 46.015308>,  <35.860676, 40.306187, 46.016430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005733, 40.114990, 46.015308>,  <36.247498, 39.796329, 46.013443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005733, 40.114990, 46.015308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115358, -0.093312, 0.988932,
		0.788274, 0.597186, 0.148300,
		-0.604415, 0.796656, 0.004666,
		35.824409, 40.353989, 46.016708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480843, 40.240891, 46.557541>,  <36.247498, 39.796329, 46.013443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480843, 40.240891, 46.557541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111774, 40.376999, 46.485001>,  <35.890331, 40.458664, 46.441475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111774, 40.376999, 46.485001>,  <36.480843, 40.240891, 46.557541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111774, 40.376999, 46.485001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241805, -0.144270, 0.959540,
		0.300342, 0.929193, 0.215394,
		-0.922673, 0.340274, -0.181353,
		35.834972, 40.479080, 46.430595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460831, 40.612713, 47.067745>,  <36.480843, 40.240891, 46.557541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460831, 40.612713, 47.067745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079544, 40.564526, 46.956844>,  <35.850773, 40.535614, 46.890305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079544, 40.564526, 46.956844>,  <36.460831, 40.612713, 47.067745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079544, 40.564526, 46.956844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253871, -0.178885, 0.950552,
		-0.164108, 0.976467, 0.139932,
		-0.953215, -0.120468, -0.277254,
		35.793579, 40.528385, 46.873669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236366, 40.985317, 47.642017>,  <36.460831, 40.612713, 47.067745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236366, 40.985317, 47.642017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949089, 40.766106, 47.470501>,  <35.776722, 40.634579, 47.367592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.949089, 40.766106, 47.470501>,  <36.236366, 40.985317, 47.642017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949089, 40.766106, 47.470501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411962, -0.161743, 0.896731,
		-0.560787, 0.820673, -0.109604,
		-0.718195, -0.548028, -0.428790,
		35.733631, 40.601696, 47.341866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661659, 41.192169, 47.977230>,  <36.236366, 40.985317, 47.642017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661659, 41.192169, 47.977230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 40.838997, 47.806957>,  <35.534882, 40.627094, 47.704796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582424, 40.838997, 47.806957>,  <35.661659, 41.192169, 47.977230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582424, 40.838997, 47.806957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312525, -0.354725, 0.881191,
		-0.929026, 0.307588, -0.205670,
		-0.198087, -0.882927, -0.425678,
		35.522999, 40.574120, 47.679253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996548, 41.043999, 48.204086>,  <35.661659, 41.192169, 47.977230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996548, 41.043999, 48.204086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136227, 40.685093, 48.096031>,  <35.220036, 40.469749, 48.031200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136227, 40.685093, 48.096031>,  <34.996548, 41.043999, 48.204086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136227, 40.685093, 48.096031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213463, -0.356875, 0.909436,
		-0.912410, -0.259912, -0.316154,
		0.349201, -0.897266, -0.270135,
		35.240986, 40.415913, 48.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494751, 40.591011, 48.313183>,  <34.996548, 41.043999, 48.204086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494751, 40.591011, 48.313183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.812359, 40.347919, 48.318909>,  <35.002922, 40.202065, 48.322346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.812359, 40.347919, 48.318909>,  <34.494751, 40.591011, 48.313183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812359, 40.347919, 48.318909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279379, -0.343900, 0.896482,
		-0.539896, -0.715820, -0.442849,
		0.794015, -0.607729, 0.014314,
		35.050564, 40.165600, 48.323204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261795, 39.991524, 48.567608>,  <34.494751, 40.591011, 48.313183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261795, 39.991524, 48.567608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660484, 39.986382, 48.599564>,  <34.899696, 39.983295, 48.618736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.660484, 39.986382, 48.599564>,  <34.261795, 39.991524, 48.567608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660484, 39.986382, 48.599564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079259, -0.354075, 0.931853,
		0.016314, -0.935129, -0.353932,
		0.996721, -0.012850, 0.079894,
		34.959499, 39.982525, 48.623531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436501, 39.329475, 49.014977>,  <34.261795, 39.991524, 48.567608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436501, 39.329475, 49.014977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778824, 39.536053, 49.026772>,  <34.984219, 39.660000, 49.033848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778824, 39.536053, 49.026772>,  <34.436501, 39.329475, 49.014977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778824, 39.536053, 49.026772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087562, -0.200816, 0.975708,
		0.509824, -0.832439, -0.217082,
		0.855811, 0.516447, 0.029491,
		35.035568, 39.690987, 49.035618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022480, 38.870575, 49.320793>,  <34.436501, 39.329475, 49.014977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022480, 38.870575, 49.320793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105087, 39.259731, 49.362434>,  <35.154652, 39.493225, 49.387421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105087, 39.259731, 49.362434>,  <35.022480, 38.870575, 49.320793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105087, 39.259731, 49.362434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039202, -0.114541, 0.992645,
		0.977658, -0.200914, -0.061794,
		0.206514, 0.972890, 0.104106,
		35.167042, 39.551598, 49.393665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485672, 38.805408, 49.826267>,  <35.022480, 38.870575, 49.320793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485672, 38.805408, 49.826267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357391, 39.183708, 49.847084>,  <35.280422, 39.410686, 49.859573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.357391, 39.183708, 49.847084>,  <35.485672, 38.805408, 49.826267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357391, 39.183708, 49.847084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116443, -0.015160, 0.993082,
		0.939995, 0.324544, -0.105264,
		-0.320703, 0.945749, 0.052041,
		35.261181, 39.467434, 49.862698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070869, 39.215958, 50.119270>,  <35.485672, 38.805408, 49.826267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070869, 39.215958, 50.119270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734001, 39.420151, 50.188744>,  <35.531879, 39.542667, 50.230427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734001, 39.420151, 50.188744>,  <36.070869, 39.215958, 50.119270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734001, 39.420151, 50.188744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209820, 0.013516, 0.977647,
		0.496721, 0.859784, -0.118492,
		-0.842166, 0.510480, 0.173686,
		35.481350, 39.573296, 50.240849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200554, 39.731388, 50.556316>,  <36.070869, 39.215958, 50.119270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200554, 39.731388, 50.556316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803856, 39.715130, 50.604977>,  <35.565838, 39.705376, 50.634174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803856, 39.715130, 50.604977>,  <36.200554, 39.731388, 50.556316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803856, 39.715130, 50.604977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116314, 0.114757, 0.986561,
		-0.054059, 0.992562, -0.109082,
		-0.991740, -0.040644, 0.121653,
		35.506332, 39.702938, 50.641472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008808, 40.298656, 50.944836>,  <36.200554, 39.731388, 50.556316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008808, 40.298656, 50.944836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689503, 40.061558, 50.987587>,  <35.497917, 39.919300, 51.013237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689503, 40.061558, 50.987587>,  <36.008808, 40.298656, 50.944836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689503, 40.061558, 50.987587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046466, 0.237528, 0.970269,
		-0.600510, 0.769567, -0.217153,
		-0.798266, -0.592746, 0.106880,
		35.450024, 39.883736, 51.019650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507698, 40.752953, 51.285244>,  <36.008808, 40.298656, 50.944836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507698, 40.752953, 51.285244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419727, 40.367683, 51.347134>,  <35.366947, 40.136524, 51.384266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.419727, 40.367683, 51.347134>,  <35.507698, 40.752953, 51.285244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419727, 40.367683, 51.347134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282730, 0.214731, 0.934855,
		-0.933648, 0.161851, -0.319541,
		-0.219922, -0.963169, 0.154723,
		35.353752, 40.078732, 51.393551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765415, 40.662201, 51.579807>,  <35.507698, 40.752953, 51.285244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765415, 40.662201, 51.579807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032570, 40.384583, 51.687302>,  <35.192863, 40.218010, 51.751797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032570, 40.384583, 51.687302>,  <34.765415, 40.662201, 51.579807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032570, 40.384583, 51.687302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322481, 0.055554, 0.944944,
		-0.670768, -0.717780, -0.186714,
		0.667889, -0.694050, 0.268734,
		35.232937, 40.176369, 51.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463303, 40.099239, 51.851902>,  <34.765415, 40.662201, 51.579807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463303, 40.099239, 51.851902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833065, 40.071312, 52.001884>,  <35.054924, 40.054558, 52.091873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833065, 40.071312, 52.001884>,  <34.463303, 40.099239, 51.851902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833065, 40.071312, 52.001884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378113, -0.038971, 0.924939,
		-0.049993, -0.996796, -0.062436,
		0.924408, -0.069849, 0.374954,
		35.110390, 40.050369, 52.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891434, 40.547443, 51.621616>,  <34.463303, 40.099239, 51.851902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891434, 40.547443, 51.621616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560024, 40.771317, 51.614708>,  <33.361179, 40.905640, 51.610561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560024, 40.771317, 51.614708>,  <33.891434, 40.547443, 51.621616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560024, 40.771317, 51.614708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041784, 0.031040, -0.998644,
		-0.558390, -0.828124, -0.049103,
		-0.828525, 0.559685, -0.017270,
		33.311466, 40.939220, 51.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356407, 40.193878, 51.239597>,  <33.891434, 40.547443, 51.621616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356407, 40.193878, 51.239597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243137, 40.577461, 51.245377>,  <33.175175, 40.807613, 51.248844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243137, 40.577461, 51.245377>,  <33.356407, 40.193878, 51.239597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243137, 40.577461, 51.245377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184589, -0.039714, -0.982013,
		-0.941138, -0.280745, 0.188259,
		-0.283172, 0.958960, 0.014446,
		33.158184, 40.865150, 51.249710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904755, 40.203651, 50.768028>,  <33.356407, 40.193878, 51.239597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904755, 40.203651, 50.768028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009663, 40.589619, 50.763313>,  <33.072609, 40.821201, 50.760483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009663, 40.589619, 50.763313>,  <32.904755, 40.203651, 50.768028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009663, 40.589619, 50.763313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177965, 0.036360, -0.983365,
		-0.948443, 0.260004, 0.181258,
		0.262269, 0.964923, -0.011787,
		33.088345, 40.879097, 50.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323406, 40.496479, 50.374950>,  <32.904755, 40.203651, 50.768028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323406, 40.496479, 50.374950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632103, 40.749058, 50.405117>,  <32.817322, 40.900604, 50.423218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632103, 40.749058, 50.405117>,  <32.323406, 40.496479, 50.374950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632103, 40.749058, 50.405117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203339, 0.357391, -0.911551,
		-0.602554, 0.688143, 0.404211,
		0.771739, 0.631451, 0.075421,
		32.863625, 40.938492, 50.427742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056316, 41.095665, 50.011963>,  <32.323406, 40.496479, 50.374950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056316, 41.095665, 50.011963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449024, 41.169445, 50.030296>,  <32.684650, 41.213715, 50.041294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449024, 41.169445, 50.030296>,  <32.056316, 41.095665, 50.011963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449024, 41.169445, 50.030296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042732, 0.449185, -0.892416,
		-0.185194, 0.874191, 0.448880,
		0.981773, 0.184451, 0.045831,
		32.743557, 41.224781, 50.044044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115730, 41.717159, 49.661713>,  <32.056316, 41.095665, 50.011963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115730, 41.717159, 49.661713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475849, 41.543053, 49.663151>,  <32.691921, 41.438591, 49.664013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475849, 41.543053, 49.663151>,  <32.115730, 41.717159, 49.661713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475849, 41.543053, 49.663151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139182, 0.280040, -0.949845,
		0.412427, 0.855642, 0.312700,
		0.900296, -0.435264, 0.003594,
		32.745937, 41.412472, 49.664230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529095, 42.088158, 49.381538>,  <32.115730, 41.717159, 49.661713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529095, 42.088158, 49.381538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741333, 41.754833, 49.319504>,  <32.868675, 41.554836, 49.282284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741333, 41.754833, 49.319504>,  <32.529095, 42.088158, 49.381538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741333, 41.754833, 49.319504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161931, 0.279248, -0.946466,
		0.832011, 0.477082, 0.283108,
		0.530599, -0.833315, -0.155084,
		32.900513, 41.504837, 49.272980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103981, 42.296288, 49.025143>,  <32.529095, 42.088158, 49.381538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103981, 42.296288, 49.025143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091839, 41.902760, 48.954525>,  <33.084553, 41.666641, 48.912155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.091839, 41.902760, 48.954525>,  <33.103981, 42.296288, 49.025143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091839, 41.902760, 48.954525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245838, 0.163855, -0.955361,
		0.968836, -0.072399, 0.236888,
		-0.030352, -0.983824, -0.176547,
		33.082733, 41.607613, 48.901562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582825, 42.203293, 48.519127>,  <33.103981, 42.296288, 49.025143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582825, 42.203293, 48.519127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397240, 41.851360, 48.477890>,  <33.285889, 41.640202, 48.453148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397240, 41.851360, 48.477890>,  <33.582825, 42.203293, 48.519127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397240, 41.851360, 48.477890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120492, 0.052617, -0.991319,
		0.877620, -0.472360, 0.081600,
		-0.463966, -0.879834, -0.103094,
		33.258049, 41.587410, 48.446960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934822, 41.945854, 47.969421>,  <33.582825, 42.203293, 48.519127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934822, 41.945854, 47.969421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580406, 41.760414, 47.970142>,  <33.367756, 41.649151, 47.970573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580406, 41.760414, 47.970142>,  <33.934822, 41.945854, 47.969421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580406, 41.760414, 47.970142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041209, 0.074885, -0.996340,
		0.461770, -0.882874, -0.085456,
		-0.886042, -0.463601, 0.001803,
		33.314594, 41.621334, 47.970684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971546, 41.425770, 47.457371>,  <33.934822, 41.945854, 47.969421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971546, 41.425770, 47.457371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577835, 41.485252, 47.495483>,  <33.341606, 41.520943, 47.518353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577835, 41.485252, 47.495483>,  <33.971546, 41.425770, 47.457371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577835, 41.485252, 47.495483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085627, 0.070038, -0.993862,
		-0.154469, -0.986398, -0.056204,
		-0.984280, 0.148708, 0.095281,
		33.282551, 41.529865, 47.524067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802139, 40.949924, 46.939957>,  <33.971546, 41.425770, 47.457371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802139, 40.949924, 46.939957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517532, 41.218128, 47.024002>,  <33.346767, 41.379051, 47.074429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517532, 41.218128, 47.024002>,  <33.802139, 40.949924, 46.939957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517532, 41.218128, 47.024002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115040, 0.183835, -0.976202,
		-0.693183, -0.718761, -0.053666,
		-0.711521, 0.670513, 0.210118,
		33.304077, 41.419281, 47.087036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385399, 40.834911, 46.375046>,  <33.802139, 40.949924, 46.939957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385399, 40.834911, 46.375046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290237, 41.187160, 46.538952>,  <33.233143, 41.398510, 46.637295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.290237, 41.187160, 46.538952>,  <33.385399, 40.834911, 46.375046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290237, 41.187160, 46.538952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018750, 0.417634, -0.908422,
		-0.971109, -0.223796, -0.082843,
		-0.237900, 0.880623, 0.409764,
		33.218868, 41.451347, 46.661880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786324, 41.080978, 45.999916>,  <33.385399, 40.834911, 46.375046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786324, 41.080978, 45.999916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965397, 41.402046, 46.157551>,  <33.072842, 41.594685, 46.252132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965397, 41.402046, 46.157551>,  <32.786324, 41.080978, 45.999916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965397, 41.402046, 46.157551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079787, 0.403105, -0.911669,
		-0.890625, 0.439582, 0.116421,
		0.447683, 0.802667, 0.394088,
		33.099701, 41.642845, 46.275776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585075, 41.711620, 45.658569>,  <32.786324, 41.080978, 45.999916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585075, 41.711620, 45.658569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935719, 41.806572, 45.826000>,  <33.146103, 41.863544, 45.926460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935719, 41.806572, 45.826000>,  <32.585075, 41.711620, 45.658569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935719, 41.806572, 45.826000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331315, 0.333106, -0.882763,
		-0.348985, 0.912518, 0.213355,
		0.876607, 0.237383, 0.418581,
		33.198700, 41.877789, 45.951576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742359, 42.446560, 45.523014>,  <32.585075, 41.711620, 45.658569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742359, 42.446560, 45.523014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096210, 42.284363, 45.615112>,  <33.308521, 42.187046, 45.670372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096210, 42.284363, 45.615112>,  <32.742359, 42.446560, 45.523014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096210, 42.284363, 45.615112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398657, 0.401547, -0.824520,
		0.241883, 0.821180, 0.516871,
		0.884627, -0.405492, 0.230242,
		33.361599, 42.162716, 45.684185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173817, 42.978405, 45.295990>,  <32.742359, 42.446560, 45.523014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173817, 42.978405, 45.295990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417351, 42.662155, 45.322018>,  <33.563469, 42.472404, 45.337635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417351, 42.662155, 45.322018>,  <33.173817, 42.978405, 45.295990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417351, 42.662155, 45.322018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455372, 0.281148, -0.844744,
		0.649583, 0.543937, 0.531201,
		0.608833, -0.790625, 0.065065,
		33.600002, 42.424969, 45.341537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913807, 43.229313, 45.224072>,  <33.173817, 42.978405, 45.295990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913807, 43.229313, 45.224072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956982, 42.840130, 45.142391>,  <33.982887, 42.606621, 45.093384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956982, 42.840130, 45.142391>,  <33.913807, 43.229313, 45.224072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956982, 42.840130, 45.142391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449568, 0.230970, -0.862868,
		0.886701, 0.001331, 0.462342,
		0.107936, -0.972960, -0.204203,
		33.989361, 42.548241, 45.081131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559361, 43.215874, 44.904442>,  <33.913807, 43.229313, 45.224072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559361, 43.215874, 44.904442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402012, 42.863304, 44.799866>,  <34.307602, 42.651764, 44.737122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402012, 42.863304, 44.799866>,  <34.559361, 43.215874, 44.904442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402012, 42.863304, 44.799866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399511, 0.092232, -0.912077,
		0.828038, -0.463236, 0.315856,
		-0.393375, -0.881422, -0.261440,
		34.284000, 42.598877, 44.721436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145905, 42.874367, 44.523144>,  <34.559361, 43.215874, 44.904442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145905, 42.874367, 44.523144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818005, 42.672249, 44.415302>,  <34.621265, 42.550980, 44.350597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818005, 42.672249, 44.415302>,  <35.145905, 42.874367, 44.523144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818005, 42.672249, 44.415302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261247, 0.089003, -0.961160,
		0.509664, -0.858345, 0.059046,
		-0.819751, -0.505295, -0.269602,
		34.572079, 42.520660, 44.334423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.534485, 33.610226, 39.800190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258007, 33.888199, 39.879505>,  <41.092121, 34.054981, 39.927094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258007, 33.888199, 39.879505>,  <41.534485, 33.610226, 39.800190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258007, 33.888199, 39.879505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107548, 0.370243, -0.922688,
		-0.714621, -0.616432, -0.330649,
		-0.691195, 0.694933, 0.198287,
		41.050648, 34.096680, 39.938992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091774, 33.579559, 39.288033>,  <41.534485, 33.610226, 39.800190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091774, 33.579559, 39.288033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030018, 33.955643, 39.409473>,  <40.992966, 34.181293, 39.482338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030018, 33.955643, 39.409473>,  <41.091774, 33.579559, 39.288033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030018, 33.955643, 39.409473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036319, 0.312482, -0.949229,
		-0.987342, -0.135524, -0.082391,
		-0.154389, 0.940207, 0.303605,
		40.983700, 34.237705, 39.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582729, 33.829033, 38.908070>,  <41.091774, 33.579559, 39.288033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582729, 33.829033, 38.908070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758381, 34.161621, 39.044201>,  <40.863770, 34.361176, 39.125881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758381, 34.161621, 39.044201>,  <40.582729, 33.829033, 38.908070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758381, 34.161621, 39.044201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095634, 0.419917, -0.902509,
		-0.893321, 0.363769, 0.263913,
		0.439126, 0.831469, 0.340333,
		40.890118, 34.411060, 39.146301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261692, 34.489399, 38.534969>,  <40.582729, 33.829033, 38.908070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261692, 34.489399, 38.534969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577415, 34.650101, 38.720695>,  <40.766850, 34.746521, 38.832130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577415, 34.650101, 38.720695>,  <40.261692, 34.489399, 38.534969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577415, 34.650101, 38.720695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212630, 0.530573, -0.820537,
		-0.576004, 0.746384, 0.333362,
		0.789309, 0.401750, 0.464316,
		40.814209, 34.770626, 38.859989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282841, 35.217270, 38.389957>,  <40.261692, 34.489399, 38.534969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282841, 35.217270, 38.389957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661758, 35.113201, 38.464729>,  <40.889111, 35.050758, 38.509590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.661758, 35.113201, 38.464729>,  <40.282841, 35.217270, 38.389957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661758, 35.113201, 38.464729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301195, 0.524485, -0.796365,
		0.109153, 0.810694, 0.575205,
		0.947295, -0.260175, 0.186928,
		40.945946, 35.035149, 38.520809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655861, 35.862923, 38.415817>,  <40.282841, 35.217270, 38.389957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655861, 35.862923, 38.415817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955570, 35.603466, 38.362362>,  <41.135395, 35.447792, 38.330288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955570, 35.603466, 38.362362>,  <40.655861, 35.862923, 38.415817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955570, 35.603466, 38.362362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394376, 0.599122, -0.696792,
		0.532033, 0.469383, 0.704713,
		0.749272, -0.648638, -0.133639,
		41.180351, 35.408875, 38.322269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195629, 36.229172, 38.503971>,  <40.655861, 35.862923, 38.415817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195629, 36.229172, 38.503971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327518, 35.920662, 38.286194>,  <41.406651, 35.735554, 38.155529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327518, 35.920662, 38.286194>,  <41.195629, 36.229172, 38.503971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327518, 35.920662, 38.286194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499062, 0.631923, -0.592968,
		0.801386, -0.076195, 0.593274,
		0.329722, -0.771277, -0.544440,
		41.426434, 35.689278, 38.122860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910187, 36.415302, 38.403084>,  <41.195629, 36.229172, 38.503971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910187, 36.415302, 38.403084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822803, 36.131878, 38.134693>,  <41.770374, 35.961823, 37.973660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.822803, 36.131878, 38.134693>,  <41.910187, 36.415302, 38.403084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822803, 36.131878, 38.134693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533441, 0.489051, -0.690123,
		0.817139, -0.508693, 0.271138,
		-0.218461, -0.708563, -0.670980,
		41.757267, 35.919308, 37.933399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514027, 36.280693, 38.157154>,  <41.910187, 36.415302, 38.403084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514027, 36.280693, 38.157154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262302, 36.167694, 37.867558>,  <42.111267, 36.099895, 37.693798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262302, 36.167694, 37.867558>,  <42.514027, 36.280693, 38.157154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262302, 36.167694, 37.867558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498154, 0.568405, -0.654797,
		0.596504, -0.772727, -0.216969,
		-0.629305, -0.282505, -0.723993,
		42.073509, 36.082943, 37.650360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912598, 36.063171, 37.596836>,  <42.514027, 36.280693, 38.157154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912598, 36.063171, 37.596836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555637, 36.148079, 37.437561>,  <42.341461, 36.199024, 37.341995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555637, 36.148079, 37.437561>,  <42.912598, 36.063171, 37.596836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555637, 36.148079, 37.437561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426966, 0.682718, -0.592956,
		0.145989, -0.699171, -0.699890,
		-0.892405, 0.212265, -0.398191,
		42.287914, 36.211758, 37.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100094, 36.209736, 36.819569>,  <42.912598, 36.063171, 37.596836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100094, 36.209736, 36.819569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737667, 36.370251, 36.873257>,  <42.520210, 36.466560, 36.905468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737667, 36.370251, 36.873257>,  <43.100094, 36.209736, 36.819569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737667, 36.370251, 36.873257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269383, 0.791654, -0.548377,
		-0.326313, -0.460708, -0.825390,
		-0.906064, 0.401289, 0.134220,
		42.465847, 36.490639, 36.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967640, 36.221279, 36.166542>,  <43.100094, 36.209736, 36.819569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967640, 36.221279, 36.166542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718113, 36.469196, 36.357002>,  <42.568398, 36.617947, 36.471279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.718113, 36.469196, 36.357002>,  <42.967640, 36.221279, 36.166542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718113, 36.469196, 36.357002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298084, 0.751839, -0.588119,
		-0.722497, -0.224944, -0.653757,
		-0.623814, 0.619789, 0.476149,
		42.530968, 36.655132, 36.499847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594170, 36.669937, 35.704906>,  <42.967640, 36.221279, 36.166542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594170, 36.669937, 35.704906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.584133, 36.869774, 36.051266>,  <42.578110, 36.989677, 36.259079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.584133, 36.869774, 36.051266>,  <42.594170, 36.669937, 35.704906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584133, 36.869774, 36.051266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618371, 0.688333, -0.379229,
		-0.785485, 0.525930, -0.326206,
		-0.025091, 0.499595, 0.865896,
		42.576607, 37.019653, 36.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524647, 37.337105, 35.546314>,  <42.594170, 36.669937, 35.704906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524647, 37.337105, 35.546314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630566, 37.356400, 35.931553>,  <42.694118, 37.367977, 36.162697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630566, 37.356400, 35.931553>,  <42.524647, 37.337105, 35.546314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630566, 37.356400, 35.931553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569063, 0.798482, -0.196453,
		-0.778491, 0.600083, 0.183989,
		0.264800, 0.048236, 0.963096,
		42.710007, 37.370869, 36.220482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356838, 37.951233, 35.784832>,  <42.524647, 37.337105, 35.546314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356838, 37.951233, 35.784832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651005, 37.815048, 36.019180>,  <42.827503, 37.733337, 36.159790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651005, 37.815048, 36.019180>,  <42.356838, 37.951233, 35.784832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651005, 37.815048, 36.019180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569332, 0.779315, -0.261783,
		-0.367454, 0.526077, 0.766956,
		0.735418, -0.340459, 0.585874,
		42.871632, 37.712910, 36.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609200, 38.574593, 36.126015>,  <42.356838, 37.951233, 35.784832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609200, 38.574593, 36.126015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910362, 38.311539, 36.115860>,  <43.091061, 38.153706, 36.109768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.910362, 38.311539, 36.115860>,  <42.609200, 38.574593, 36.126015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910362, 38.311539, 36.115860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622078, 0.723737, -0.298705,
		0.214811, 0.209105, 0.954008,
		0.752911, -0.657632, -0.025387,
		43.136234, 38.114250, 36.108242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089096, 38.845425, 36.496910>,  <42.609200, 38.574593, 36.126015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089096, 38.845425, 36.496910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297123, 38.579067, 36.282951>,  <43.421940, 38.419250, 36.154575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297123, 38.579067, 36.282951>,  <43.089096, 38.845425, 36.496910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297123, 38.579067, 36.282951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731811, 0.670323, -0.122964,
		0.440432, -0.327490, 0.835925,
		0.520070, -0.665896, -0.534893,
		43.453144, 38.379299, 36.122482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790871, 38.871582, 36.776443>,  <43.089096, 38.845425, 36.496910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790871, 38.871582, 36.776443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805790, 38.700069, 36.415390>,  <43.814743, 38.597160, 36.198757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.805790, 38.700069, 36.415390>,  <43.790871, 38.871582, 36.776443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805790, 38.700069, 36.415390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783790, 0.572882, -0.239750,
		0.619905, -0.698535, 0.357443,
		0.037299, -0.428782, -0.902638,
		43.816978, 38.571434, 36.144600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460461, 38.983765, 36.607471>,  <43.790871, 38.871582, 36.776443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460461, 38.983765, 36.607471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317451, 38.875988, 36.249794>,  <44.231644, 38.811321, 36.035187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317451, 38.875988, 36.249794>,  <44.460461, 38.983765, 36.607471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317451, 38.875988, 36.249794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602243, 0.665275, -0.441263,
		0.713778, -0.696282, -0.075581,
		-0.357526, -0.269446, -0.894189,
		44.210194, 38.795155, 35.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005569, 38.777756, 36.267437>,  <44.460461, 38.983765, 36.607471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005569, 38.777756, 36.267437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707462, 38.893082, 36.026951>,  <44.528599, 38.962276, 35.882660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707462, 38.893082, 36.026951>,  <45.005569, 38.777756, 36.267437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707462, 38.893082, 36.026951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598190, 0.687405, -0.411878,
		0.294527, -0.666597, -0.684765,
		-0.745267, 0.288310, -0.601211,
		44.483883, 38.979576, 35.846588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413837, 38.851158, 35.638683>,  <45.005569, 38.777756, 36.267437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413837, 38.851158, 35.638683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068317, 39.052273, 35.625660>,  <44.861008, 39.172943, 35.617844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068317, 39.052273, 35.625660>,  <45.413837, 38.851158, 35.638683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068317, 39.052273, 35.625660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493601, 0.831507, -0.254863,
		-0.101065, -0.236222, -0.966429,
		-0.863796, 0.502788, -0.032563,
		44.809177, 39.203110, 35.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430832, 38.096531, 35.588230>,  <45.413837, 38.851158, 35.638683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430832, 38.096531, 35.588230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737965, 37.870880, 35.709690>,  <45.922245, 37.735489, 35.782566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737965, 37.870880, 35.709690>,  <45.430832, 38.096531, 35.588230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737965, 37.870880, 35.709690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640187, -0.657506, 0.397300,
		-0.024474, -0.499452, -0.865996,
		0.767830, -0.564123, 0.303650,
		45.968315, 37.701645, 35.800785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261238, 37.347420, 35.452530>,  <45.430832, 38.096531, 35.588230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261238, 37.347420, 35.452530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538136, 37.365456, 35.740631>,  <45.704273, 37.376278, 35.913494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.538136, 37.365456, 35.740631>,  <45.261238, 37.347420, 35.452530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538136, 37.365456, 35.740631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555552, -0.603716, 0.571742,
		0.460612, -0.795923, -0.392865,
		0.692242, 0.045094, 0.720256,
		45.745808, 37.378983, 35.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602901, 36.672260, 35.458023>,  <45.261238, 37.347420, 35.452530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602901, 36.672260, 35.458023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655003, 36.829098, 35.822285>,  <45.686264, 36.923199, 36.040844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655003, 36.829098, 35.822285>,  <45.602901, 36.672260, 35.458023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655003, 36.829098, 35.822285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363031, -0.835840, 0.411801,
		0.922629, -0.384234, 0.033474,
		0.130249, 0.392092, 0.910659,
		45.694077, 36.946724, 36.095482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832893, 36.048206, 35.896320>,  <45.602901, 36.672260, 35.458023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832893, 36.048206, 35.896320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688793, 36.322128, 36.149704>,  <45.602333, 36.486481, 36.301735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.688793, 36.322128, 36.149704>,  <45.832893, 36.048206, 35.896320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688793, 36.322128, 36.149704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456429, -0.721609, 0.520531,
		0.813569, -0.101608, 0.572522,
		-0.360247, 0.684804, 0.633456,
		45.580719, 36.527569, 36.339741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835320, 35.742561, 36.500660>,  <45.832893, 36.048206, 35.896320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835320, 35.742561, 36.500660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589508, 36.044300, 36.593025>,  <45.442020, 36.225342, 36.648445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589508, 36.044300, 36.593025>,  <45.835320, 35.742561, 36.500660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589508, 36.044300, 36.593025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457759, -0.579358, 0.674389,
		0.642504, 0.308727, 0.701339,
		-0.614528, 0.754342, 0.230917,
		45.405151, 36.270603, 36.662300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872158, 35.720306, 37.232662>,  <45.835320, 35.742561, 36.500660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872158, 35.720306, 37.232662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537991, 35.917706, 37.135880>,  <45.337490, 36.036144, 37.077812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537991, 35.917706, 37.135880>,  <45.872158, 35.720306, 37.232662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537991, 35.917706, 37.135880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529729, -0.605617, 0.593814,
		0.146515, 0.624251, 0.767362,
		-0.835416, 0.493497, -0.241952,
		45.287365, 36.065754, 37.063293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641563, 35.991257, 37.834549>,  <45.872158, 35.720306, 37.232662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641563, 35.991257, 37.834549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336445, 35.964634, 37.577267>,  <45.153374, 35.948662, 37.422897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336445, 35.964634, 37.577267>,  <45.641563, 35.991257, 37.834549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336445, 35.964634, 37.577267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565327, -0.414263, 0.713296,
		-0.313933, 0.907721, 0.278370,
		-0.762792, -0.066557, -0.643210,
		45.107609, 35.944668, 37.384304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064255, 36.324909, 38.125309>,  <45.641563, 35.991257, 37.834549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064255, 36.324909, 38.125309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890953, 36.101170, 37.842628>,  <44.786972, 35.966927, 37.673019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890953, 36.101170, 37.842628>,  <45.064255, 36.324909, 38.125309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890953, 36.101170, 37.842628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582829, -0.424211, 0.693077,
		-0.687458, 0.712164, -0.142209,
		-0.433258, -0.559345, -0.706697,
		44.760975, 35.933365, 37.630619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420040, 36.331524, 38.302956>,  <45.064255, 36.324909, 38.125309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420040, 36.331524, 38.302956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476715, 36.014881, 38.065205>,  <44.510719, 35.824898, 37.922554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476715, 36.014881, 38.065205>,  <44.420040, 36.331524, 38.302956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476715, 36.014881, 38.065205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582666, -0.552098, 0.596396,
		-0.800266, 0.261824, -0.539465,
		0.141687, -0.791603, -0.594381,
		44.519222, 35.777401, 37.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699345, 36.078419, 38.259243>,  <44.420040, 36.331524, 38.302956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699345, 36.078419, 38.259243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965069, 35.793316, 38.169197>,  <44.124504, 35.622253, 38.115170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965069, 35.793316, 38.169197>,  <43.699345, 36.078419, 38.259243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965069, 35.793316, 38.169197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459552, -0.626989, 0.629045,
		-0.589499, -0.314428, -0.744061,
		0.664307, -0.712756, -0.225114,
		44.164360, 35.579491, 38.101662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369026, 35.417469, 37.964424>,  <43.699345, 36.078419, 38.259243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369026, 35.417469, 37.964424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.717548, 35.298218, 38.120342>,  <43.926662, 35.226665, 38.213894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.717548, 35.298218, 38.120342>,  <43.369026, 35.417469, 37.964424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717548, 35.298218, 38.120342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461236, -0.768761, 0.443023,
		0.167580, -0.565796, -0.807336,
		0.871309, -0.298130, 0.389794,
		43.978943, 35.208778, 38.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310120, 34.771080, 37.946701>,  <43.369026, 35.417469, 37.964424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310120, 34.771080, 37.946701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607719, 34.814659, 38.210400>,  <43.786278, 34.840805, 38.368618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607719, 34.814659, 38.210400>,  <43.310120, 34.771080, 37.946701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607719, 34.814659, 38.210400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459737, -0.632496, 0.623370,
		0.484883, -0.766863, -0.420487,
		0.743996, 0.108948, 0.659243,
		43.830917, 34.847343, 38.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417618, 34.133278, 38.155510>,  <43.310120, 34.771080, 37.946701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417618, 34.133278, 38.155510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575974, 34.376896, 38.430416>,  <43.670986, 34.523067, 38.595360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575974, 34.376896, 38.430416>,  <43.417618, 34.133278, 38.155510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575974, 34.376896, 38.430416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513418, -0.473713, 0.715541,
		0.761362, -0.636132, 0.125154,
		0.395891, 0.609042, 0.687269,
		43.694740, 34.559608, 38.636597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519276, 33.654194, 38.645779>,  <43.417618, 34.133278, 38.155510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519276, 33.654194, 38.645779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592991, 33.986073, 38.856548>,  <43.637218, 34.185200, 38.983009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592991, 33.986073, 38.856548>,  <43.519276, 33.654194, 38.645779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592991, 33.986073, 38.856548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295999, -0.464369, 0.834713,
		0.937243, -0.309794, 0.160012,
		0.184285, 0.829692, 0.526925,
		43.648277, 34.234982, 39.014626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084930, 33.533901, 39.129089>,  <43.519276, 33.654194, 38.645779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084930, 33.533901, 39.129089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865376, 33.831165, 39.282154>,  <43.733643, 34.009525, 39.373993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865376, 33.831165, 39.282154>,  <44.084930, 33.533901, 39.129089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865376, 33.831165, 39.282154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340267, -0.616787, 0.709783,
		0.763505, 0.259385, 0.591421,
		-0.548888, 0.743164, 0.382660,
		43.700710, 34.054115, 39.396954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976311, 33.352718, 39.804260>,  <44.084930, 33.533901, 39.129089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976311, 33.352718, 39.804260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692326, 33.630383, 39.756783>,  <43.521935, 33.796982, 39.728294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692326, 33.630383, 39.756783>,  <43.976311, 33.352718, 39.804260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692326, 33.630383, 39.756783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551444, -0.443149, 0.706774,
		0.438016, 0.567238, 0.697412,
		-0.709966, 0.694161, -0.118694,
		43.479336, 33.838631, 39.721176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971657, 33.785046, 40.412800>,  <43.976311, 33.352718, 39.804260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971657, 33.785046, 40.412800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619133, 33.779011, 40.223881>,  <43.407619, 33.775391, 40.110531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.619133, 33.779011, 40.223881>,  <43.971657, 33.785046, 40.412800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619133, 33.779011, 40.223881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381857, -0.566013, 0.730627,
		-0.278351, 0.824258, 0.493071,
		-0.881309, -0.015089, -0.472299,
		43.354740, 33.774483, 40.082191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507393, 33.742569, 40.990192>,  <43.971657, 33.785046, 40.412800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507393, 33.742569, 40.990192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268627, 33.656456, 40.681042>,  <43.125366, 33.604790, 40.495552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.268627, 33.656456, 40.681042>,  <43.507393, 33.742569, 40.990192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268627, 33.656456, 40.681042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559708, -0.578448, 0.593401,
		-0.574818, 0.786799, 0.224794,
		-0.596919, -0.215279, -0.772880,
		43.089550, 33.591873, 40.449177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809048, 33.852257, 41.219723>,  <43.507393, 33.742569, 40.990192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809048, 33.852257, 41.219723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.764885, 33.600674, 40.911900>,  <42.738388, 33.449722, 40.727207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.764885, 33.600674, 40.911900>,  <42.809048, 33.852257, 41.219723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764885, 33.600674, 40.911900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508813, -0.629363, 0.587377,
		-0.853768, 0.456413, -0.250535,
		-0.110408, -0.628959, -0.769559,
		42.731762, 33.411987, 40.681030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128029, 33.757942, 41.165455>,  <42.809048, 33.852257, 41.219723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128029, 33.757942, 41.165455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308804, 33.454437, 40.977821>,  <42.417267, 33.272335, 40.865242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308804, 33.454437, 40.977821>,  <42.128029, 33.757942, 41.165455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308804, 33.454437, 40.977821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556103, -0.650799, 0.516924,
		-0.697500, 0.027242, -0.716067,
		0.451933, -0.758761, -0.469082,
		42.444386, 33.226810, 40.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665932, 33.342411, 40.838745>,  <42.128029, 33.757942, 41.165455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665932, 33.342411, 40.838745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972813, 33.089569, 40.882278>,  <42.156940, 32.937866, 40.908398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.972813, 33.089569, 40.882278>,  <41.665932, 33.342411, 40.838745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972813, 33.089569, 40.882278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595414, -0.638772, 0.487291,
		-0.238496, -0.438655, -0.866431,
		0.767204, -0.632101, 0.108837,
		42.202972, 32.899937, 40.914928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.701351, 40.966908, 41.103642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315216, 41.049820, 41.040195>,  <38.083534, 41.099567, 41.002129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315216, 41.049820, 41.040195>,  <38.701351, 40.966908, 41.103642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315216, 41.049820, 41.040195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092269, -0.297441, -0.950271,
		-0.244152, -0.931967, 0.268005,
		-0.965337, 0.207282, -0.158613,
		38.025616, 41.112007, 40.992611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570843, 40.530056, 40.610111>,  <38.701351, 40.966908, 41.103642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570843, 40.530056, 40.610111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269207, 40.791012, 40.579819>,  <38.088226, 40.947586, 40.561642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269207, 40.791012, 40.579819>,  <38.570843, 40.530056, 40.610111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269207, 40.791012, 40.579819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018044, -0.094683, -0.995344,
		-0.656527, -0.751942, 0.059627,
		-0.754087, 0.652394, -0.075730,
		38.042980, 40.986729, 40.557098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138271, 40.246387, 40.151920>,  <38.570843, 40.530056, 40.610111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138271, 40.246387, 40.151920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027203, 40.630653, 40.153790>,  <37.960564, 40.861214, 40.154911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027203, 40.630653, 40.153790>,  <38.138271, 40.246387, 40.151920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027203, 40.630653, 40.153790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069832, -0.015328, -0.997441,
		-0.958135, -0.277285, 0.071341,
		-0.277669, 0.960665, 0.004678,
		37.943901, 40.918854, 40.155193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498264, 40.329212, 39.766891>,  <38.138271, 40.246387, 40.151920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498264, 40.329212, 39.766891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709724, 40.667923, 39.743210>,  <37.836601, 40.871147, 39.729000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709724, 40.667923, 39.743210>,  <37.498264, 40.329212, 39.766891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709724, 40.667923, 39.743210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191158, 0.050805, -0.980244,
		-0.827037, 0.529521, 0.188726,
		0.528648, 0.846774, -0.059204,
		37.868320, 40.921955, 39.725449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168232, 40.803333, 39.172955>,  <37.498264, 40.329212, 39.766891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168232, 40.803333, 39.172955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521042, 40.983215, 39.229237>,  <37.732727, 41.091145, 39.263004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521042, 40.983215, 39.229237>,  <37.168232, 40.803333, 39.172955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521042, 40.983215, 39.229237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055570, 0.197248, -0.978777,
		-0.467917, 0.871124, 0.148987,
		0.882024, 0.449707, 0.140704,
		37.785648, 41.118126, 39.271446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006916, 41.360504, 38.746693>,  <37.168232, 40.803333, 39.172955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006916, 41.360504, 38.746693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405678, 41.350998, 38.776691>,  <37.644936, 41.345295, 38.794693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405678, 41.350998, 38.776691>,  <37.006916, 41.360504, 38.746693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405678, 41.350998, 38.776691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078228, 0.401034, -0.912717,
		-0.008386, 0.915755, 0.401650,
		0.996900, -0.023766, 0.075001,
		37.704746, 41.343868, 38.799191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252739, 42.054966, 38.608883>,  <37.006916, 41.360504, 38.746693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252739, 42.054966, 38.608883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529133, 41.778225, 38.525097>,  <37.694969, 41.612179, 38.474823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529133, 41.778225, 38.525097>,  <37.252739, 42.054966, 38.608883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529133, 41.778225, 38.525097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145058, 0.416589, -0.897447,
		0.708165, 0.589738, 0.388217,
		0.690985, -0.691854, -0.209468,
		37.736427, 41.570667, 38.462257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580627, 42.405037, 38.068470>,  <37.252739, 42.054966, 38.608883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580627, 42.405037, 38.068470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740086, 42.041332, 38.020588>,  <37.835762, 41.823109, 37.991859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740086, 42.041332, 38.020588>,  <37.580627, 42.405037, 38.068470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740086, 42.041332, 38.020588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286270, 0.247380, -0.925663,
		0.871280, 0.334746, 0.358910,
		0.398649, -0.909257, -0.119709,
		37.859680, 41.768555, 37.984676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990261, 42.637417, 37.569653>,  <37.580627, 42.405037, 38.068470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990261, 42.637417, 37.569653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008713, 42.238949, 37.539955>,  <38.019783, 41.999866, 37.522137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008713, 42.238949, 37.539955>,  <37.990261, 42.637417, 37.569653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008713, 42.238949, 37.539955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272640, 0.084058, -0.958437,
		0.961010, 0.023972, 0.275474,
		0.046131, -0.996172, -0.074245,
		38.022552, 41.940098, 37.517681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635498, 42.468426, 37.189117>,  <37.990261, 42.637417, 37.569653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635498, 42.468426, 37.189117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353867, 42.192501, 37.121677>,  <38.184887, 42.026947, 37.081215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353867, 42.192501, 37.121677>,  <38.635498, 42.468426, 37.189117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353867, 42.192501, 37.121677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157840, 0.079461, -0.984262,
		0.692357, -0.719611, 0.052934,
		-0.704080, -0.689816, -0.168599,
		38.142643, 41.985558, 37.071098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872616, 42.217968, 36.509911>,  <38.635498, 42.468426, 37.189117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872616, 42.217968, 36.509911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507618, 42.059807, 36.551895>,  <38.288620, 41.964912, 36.577084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507618, 42.059807, 36.551895>,  <38.872616, 42.217968, 36.509911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507618, 42.059807, 36.551895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162862, 0.115755, -0.979835,
		0.375277, -0.911186, -0.170021,
		-0.912493, -0.395399, 0.104957,
		38.233871, 41.941189, 36.583382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832432, 41.720524, 35.997372>,  <38.872616, 42.217968, 36.509911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832432, 41.720524, 35.997372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458138, 41.823555, 36.093750>,  <38.233562, 41.885376, 36.151577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458138, 41.823555, 36.093750>,  <38.832432, 41.720524, 35.997372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458138, 41.823555, 36.093750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172630, 0.261237, -0.949713,
		-0.307571, -0.930273, -0.199982,
		-0.935735, 0.257581, 0.240941,
		38.177418, 41.900829, 36.166031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106262, 41.002609, 36.161114>,  <38.832432, 41.720524, 35.997372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106262, 41.002609, 36.161114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966255, 40.642685, 36.265293>,  <38.882252, 40.426731, 36.327801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966255, 40.642685, 36.265293>,  <39.106262, 41.002609, 36.161114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966255, 40.642685, 36.265293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934133, -0.356022, 0.025386,
		0.069882, 0.252176, 0.965155,
		-0.350018, -0.899809, 0.260446,
		38.861252, 40.372742, 36.343426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467987, 40.714382, 36.783150>,  <39.106262, 41.002609, 36.161114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467987, 40.714382, 36.783150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356602, 40.441021, 36.513210>,  <39.289772, 40.277004, 36.351246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356602, 40.441021, 36.513210>,  <39.467987, 40.714382, 36.783150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356602, 40.441021, 36.513210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936745, -0.348383, -0.033732,
		-0.212053, -0.641554, 0.737185,
		-0.278464, -0.683402, -0.674848,
		39.273064, 40.236000, 36.310757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984203, 40.140697, 36.928150>,  <39.467987, 40.714382, 36.783150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984203, 40.140697, 36.928150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296074, 39.894192, 36.883747>,  <40.483196, 39.746288, 36.857105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296074, 39.894192, 36.883747>,  <39.984203, 40.140697, 36.928150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296074, 39.894192, 36.883747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249563, -0.468398, 0.847538,
		-0.574306, -0.633101, -0.518995,
		0.779674, -0.616268, -0.111005,
		40.529976, 39.709312, 36.850445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810795, 39.488716, 36.925301>,  <39.984203, 40.140697, 36.928150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810795, 39.488716, 36.925301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192852, 39.470875, 37.042412>,  <40.422085, 39.460171, 37.112679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192852, 39.470875, 37.042412>,  <39.810795, 39.488716, 36.925301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192852, 39.470875, 37.042412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255971, -0.621580, 0.740350,
		0.148962, -0.782080, -0.605113,
		0.955139, -0.044607, 0.292781,
		40.479393, 39.457493, 37.130245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895447, 38.813564, 36.928066>,  <39.810795, 39.488716, 36.925301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895447, 38.813564, 36.928066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155628, 38.984821, 37.179016>,  <40.311737, 39.087574, 37.329586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155628, 38.984821, 37.179016>,  <39.895447, 38.813564, 36.928066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155628, 38.984821, 37.179016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340672, -0.573799, 0.744780,
		0.678861, -0.698175, -0.227374,
		0.650454, 0.428142, 0.627379,
		40.350765, 39.113262, 37.367229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160610, 38.248047, 37.278301>,  <39.895447, 38.813564, 36.928066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160610, 38.248047, 37.278301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256561, 38.567471, 37.499119>,  <40.314133, 38.759125, 37.631611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256561, 38.567471, 37.499119>,  <40.160610, 38.248047, 37.278301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256561, 38.567471, 37.499119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101888, -0.544801, 0.832353,
		0.965442, -0.255910, -0.049322,
		0.239878, 0.798563, 0.552047,
		40.328526, 38.807041, 37.664734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459156, 37.927677, 37.771137>,  <40.160610, 38.248047, 37.278301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459156, 37.927677, 37.771137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414978, 38.293877, 37.925880>,  <40.388474, 38.513596, 38.018726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414978, 38.293877, 37.925880>,  <40.459156, 37.927677, 37.771137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414978, 38.293877, 37.925880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007127, -0.389963, 0.920803,
		0.993857, 0.098939, 0.049593,
		-0.110442, 0.915500, 0.386862,
		40.381844, 38.568527, 38.041939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872360, 37.938454, 38.392490>,  <40.459156, 37.927677, 37.771137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872360, 37.938454, 38.392490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626434, 38.249138, 38.447227>,  <40.478878, 38.435547, 38.480072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626434, 38.249138, 38.447227>,  <40.872360, 37.938454, 38.392490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626434, 38.249138, 38.447227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093284, -0.243913, 0.965300,
		0.783135, 0.580715, 0.222416,
		-0.614814, 0.776709, 0.136846,
		40.441990, 38.482151, 38.488281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002052, 38.176319, 38.989632>,  <40.872360, 37.938454, 38.392490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002052, 38.176319, 38.989632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633495, 38.319485, 38.929043>,  <40.412361, 38.405384, 38.892689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633495, 38.319485, 38.929043>,  <41.002052, 38.176319, 38.989632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633495, 38.319485, 38.929043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248649, -0.243346, 0.937527,
		0.298693, 0.901489, 0.313211,
		-0.921388, 0.357912, -0.151468,
		40.357079, 38.426857, 38.883602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747040, 38.820877, 39.490208>,  <41.002052, 38.176319, 38.989632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747040, 38.820877, 39.490208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430866, 38.624603, 39.343540>,  <40.241161, 38.506840, 39.255539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430866, 38.624603, 39.343540>,  <40.747040, 38.820877, 39.490208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430866, 38.624603, 39.343540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274938, -0.250717, 0.928197,
		-0.547383, 0.834488, 0.063267,
		-0.790431, -0.490685, -0.366670,
		40.193737, 38.477398, 39.233540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235722, 39.022709, 39.929848>,  <40.747040, 38.820877, 39.490208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235722, 39.022709, 39.929848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082649, 38.695938, 39.757252>,  <39.990807, 38.499874, 39.653694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082649, 38.695938, 39.757252>,  <40.235722, 39.022709, 39.929848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082649, 38.695938, 39.757252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302355, -0.330578, 0.894035,
		-0.873005, 0.472591, -0.120498,
		-0.382679, -0.816931, -0.431487,
		39.967846, 38.450859, 39.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572762, 38.903717, 40.212402>,  <40.235722, 39.022709, 39.929848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572762, 38.903717, 40.212402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656826, 38.538792, 40.071823>,  <39.707264, 38.319836, 39.987476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656826, 38.538792, 40.071823>,  <39.572762, 38.903717, 40.212402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656826, 38.538792, 40.071823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385837, -0.407692, 0.827598,
		-0.898311, -0.038326, -0.437685,
		0.210159, -0.912315, -0.351446,
		39.719875, 38.265099, 39.966389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999592, 38.511639, 40.235344>,  <39.572762, 38.903717, 40.212402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999592, 38.511639, 40.235344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291035, 38.237968, 40.248165>,  <39.465900, 38.073765, 40.255859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291035, 38.237968, 40.248165>,  <38.999592, 38.511639, 40.235344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291035, 38.237968, 40.248165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276504, -0.250999, 0.927656,
		-0.626637, -0.684762, -0.372058,
		0.728610, -0.684179, 0.032054,
		39.509617, 38.032715, 40.257782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632301, 37.982983, 40.634502>,  <38.999592, 38.511639, 40.235344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632301, 37.982983, 40.634502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020447, 37.886948, 40.623558>,  <39.253334, 37.829327, 40.616993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020447, 37.886948, 40.623558>,  <38.632301, 37.982983, 40.634502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020447, 37.886948, 40.623558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042204, -0.279870, 0.959110,
		-0.237926, -0.929533, -0.281709,
		0.970366, -0.240086, -0.027359,
		39.311558, 37.814922, 40.615349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520611, 37.450695, 40.959660>,  <38.632301, 37.982983, 40.634502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520611, 37.450695, 40.959660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904243, 37.549088, 41.015736>,  <39.134422, 37.608124, 41.049381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904243, 37.549088, 41.015736>,  <38.520611, 37.450695, 40.959660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904243, 37.549088, 41.015736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060701, -0.304991, 0.950419,
		0.276542, -0.920040, -0.277580,
		0.959083, 0.245981, 0.140190,
		39.191967, 37.622883, 41.057793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791527, 36.919979, 41.334393>,  <38.520611, 37.450695, 40.959660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791527, 36.919979, 41.334393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027397, 37.238937, 41.385681>,  <39.168919, 37.430313, 41.416454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027397, 37.238937, 41.385681>,  <38.791527, 36.919979, 41.334393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027397, 37.238937, 41.385681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016496, -0.146833, 0.989024,
		0.807471, -0.585319, -0.073430,
		0.589676, 0.797397, 0.128219,
		39.204300, 37.478157, 41.424149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867336, 36.247311, 41.455776>,  <38.791527, 36.919979, 41.334393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867336, 36.247311, 41.455776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577667, 35.988720, 41.359741>,  <38.403866, 35.833565, 41.302120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577667, 35.988720, 41.359741>,  <38.867336, 36.247311, 41.455776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577667, 35.988720, 41.359741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014156, 0.362011, -0.932066,
		0.689475, -0.671577, -0.271310,
		-0.724171, -0.646477, -0.240091,
		38.360416, 35.794777, 41.287712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101280, 35.955383, 40.813190>,  <38.867336, 36.247311, 41.455776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101280, 35.955383, 40.813190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709160, 35.880981, 40.839783>,  <38.473888, 35.836338, 40.855736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709160, 35.880981, 40.839783>,  <39.101280, 35.955383, 40.813190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709160, 35.880981, 40.839783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134114, 0.379673, -0.915348,
		0.145024, -0.906228, -0.397138,
		-0.980296, -0.186010, 0.066476,
		38.415070, 35.825180, 40.859726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940659, 35.994110, 40.162090>,  <39.101280, 35.955383, 40.813190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940659, 35.994110, 40.162090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563950, 35.969646, 40.294346>,  <38.337925, 35.954967, 40.373699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563950, 35.969646, 40.294346>,  <38.940659, 35.994110, 40.162090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563950, 35.969646, 40.294346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332934, 0.307392, -0.891440,
		-0.047118, -0.949615, -0.309855,
		-0.941773, -0.061159, 0.330643,
		38.281418, 35.951298, 40.393539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475525, 35.513962, 39.739910>,  <38.940659, 35.994110, 40.162090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475525, 35.513962, 39.739910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285103, 35.832733, 39.888653>,  <38.170849, 36.023994, 39.977898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285103, 35.832733, 39.888653>,  <38.475525, 35.513962, 39.739910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285103, 35.832733, 39.888653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373225, 0.199788, -0.905973,
		-0.796286, -0.570083, 0.202322,
		-0.476059, 0.796925, 0.371858,
		38.142284, 36.071812, 40.000210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857983, 35.442753, 39.422276>,  <38.475525, 35.513962, 39.739910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857983, 35.442753, 39.422276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845520, 35.820351, 39.553665>,  <37.838043, 36.046909, 39.632500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845520, 35.820351, 39.553665>,  <37.857983, 35.442753, 39.422276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845520, 35.820351, 39.553665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483660, 0.273356, -0.831474,
		-0.874701, -0.184779, 0.448057,
		-0.031160, 0.943999, 0.328475,
		37.836170, 36.103550, 39.652206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176441, 35.612064, 39.533077>,  <37.857983, 35.442753, 39.422276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176441, 35.612064, 39.533077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350174, 35.967396, 39.473434>,  <37.454414, 36.180595, 39.437649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350174, 35.967396, 39.473434>,  <37.176441, 35.612064, 39.533077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350174, 35.967396, 39.473434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670568, 0.208355, -0.711988,
		-0.601413, 0.409220, 0.686179,
		0.434328, 0.888329, -0.149103,
		37.480473, 36.233894, 39.428703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585068, 36.042515, 39.311108>,  <37.176441, 35.612064, 39.533077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585068, 36.042515, 39.311108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907291, 36.263180, 39.224636>,  <37.100628, 36.395580, 39.172752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907291, 36.263180, 39.224636>,  <36.585068, 36.042515, 39.311108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907291, 36.263180, 39.224636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511647, 0.463668, -0.723346,
		-0.298811, 0.693308, 0.655772,
		0.805562, 0.551667, -0.216180,
		37.148960, 36.428680, 39.159782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274776, 36.739803, 39.174675>,  <36.585068, 36.042515, 39.311108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274776, 36.739803, 39.174675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647770, 36.725037, 39.030945>,  <36.871567, 36.716179, 38.944706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647770, 36.725037, 39.030945>,  <36.274776, 36.739803, 39.174675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647770, 36.725037, 39.030945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274775, 0.573220, -0.771957,
		0.234467, 0.818570, 0.524374,
		0.932483, -0.036914, -0.359324,
		36.927513, 36.713963, 38.923149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517941, 37.375854, 39.165356>,  <36.274776, 36.739803, 39.174675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517941, 37.375854, 39.165356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707191, 37.179718, 38.872585>,  <36.820740, 37.062038, 38.696922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707191, 37.179718, 38.872585>,  <36.517941, 37.375854, 39.165356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707191, 37.179718, 38.872585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339621, 0.665072, -0.665084,
		0.812903, 0.563246, 0.148133,
		0.473125, -0.490339, -0.731929,
		36.849129, 37.032616, 38.653008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862099, 37.897057, 38.744282>,  <36.517941, 37.375854, 39.165356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862099, 37.897057, 38.744282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858597, 37.562660, 38.524815>,  <36.856495, 37.362022, 38.393135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858597, 37.562660, 38.524815>,  <36.862099, 37.897057, 38.744282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858597, 37.562660, 38.524815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091108, 0.547078, -0.832109,
		0.995803, 0.042704, -0.080955,
		-0.008754, -0.835992, -0.548672,
		36.855972, 37.311863, 38.360214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389343, 37.975849, 38.334084>,  <36.862099, 37.897057, 38.744282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389343, 37.975849, 38.334084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107941, 37.736309, 38.181004>,  <36.939098, 37.592583, 38.089157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107941, 37.736309, 38.181004>,  <37.389343, 37.975849, 38.334084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107941, 37.736309, 38.181004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156315, 0.655684, -0.738677,
		0.693291, -0.459838, -0.554884,
		-0.703501, -0.598855, -0.382700,
		36.896889, 37.556652, 38.066193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163425, 37.931744, 37.619095>,  <37.389343, 37.975849, 38.334084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163425, 37.931744, 37.619095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067783, 38.232182, 37.865246>,  <37.010399, 38.412445, 38.012936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067783, 38.232182, 37.865246>,  <37.163425, 37.931744, 37.619095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067783, 38.232182, 37.865246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120023, 0.651762, -0.748866,
		-0.963548, -0.105195, -0.245985,
		-0.239101, 0.751092, 0.615379,
		36.996052, 38.457508, 38.049858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.022659, 34.912254, 44.709797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623665, 34.909550, 44.681599>,  <37.384266, 34.907928, 44.664680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623665, 34.909550, 44.681599>,  <38.022659, 34.912254, 44.709797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623665, 34.909550, 44.681599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070781, -0.129251, -0.989083,
		-0.002427, -0.991589, 0.129405,
		-0.997489, -0.006759, -0.070499,
		37.324417, 34.907524, 44.660450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865738, 34.334610, 44.316952>,  <38.022659, 34.912254, 44.709797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865738, 34.334610, 44.316952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556080, 34.583309, 44.269417>,  <37.370285, 34.732529, 44.240894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556080, 34.583309, 44.269417>,  <37.865738, 34.334610, 44.316952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556080, 34.583309, 44.269417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066386, -0.106958, -0.992045,
		-0.629514, -0.775879, 0.041526,
		-0.774148, 0.621749, -0.118839,
		37.323837, 34.769833, 44.233765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557243, 34.120506, 43.757214>,  <37.865738, 34.334610, 44.316952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557243, 34.120506, 43.757214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411755, 34.490616, 43.800247>,  <37.324463, 34.712681, 43.826065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411755, 34.490616, 43.800247>,  <37.557243, 34.120506, 43.757214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411755, 34.490616, 43.800247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102798, 0.154656, -0.982606,
		-0.925819, -0.346333, -0.151368,
		-0.363719, 0.925276, 0.107581,
		37.302639, 34.768200, 43.832520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970303, 34.249763, 43.302956>,  <37.557243, 34.120506, 43.757214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970303, 34.249763, 43.302956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132263, 34.609722, 43.367748>,  <37.229439, 34.825699, 43.406624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.132263, 34.609722, 43.367748>,  <36.970303, 34.249763, 43.302956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132263, 34.609722, 43.367748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137375, 0.115271, -0.983789,
		-0.903981, 0.420592, -0.076949,
		0.404904, 0.899897, 0.161982,
		37.253735, 34.879692, 43.416344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813595, 34.650360, 42.683949>,  <36.970303, 34.249763, 43.302956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813595, 34.650360, 42.683949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095684, 34.879288, 42.851334>,  <37.264938, 35.016644, 42.951763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095684, 34.879288, 42.851334>,  <36.813595, 34.650360, 42.683949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095684, 34.879288, 42.851334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179037, 0.427342, -0.886185,
		-0.686007, 0.699879, 0.198905,
		0.705224, 0.572318, 0.418464,
		37.307251, 35.050983, 42.976871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736584, 35.324665, 42.452457>,  <36.813595, 34.650360, 42.683949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736584, 35.324665, 42.452457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117744, 35.339108, 42.572906>,  <37.346439, 35.347775, 42.645176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117744, 35.339108, 42.572906>,  <36.736584, 35.324665, 42.452457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117744, 35.339108, 42.572906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241016, 0.512531, -0.824150,
		-0.184095, 0.857909, 0.479688,
		0.952901, 0.036109, 0.301124,
		37.403614, 35.349941, 42.663242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058296, 36.067047, 42.293297>,  <36.736584, 35.324665, 42.452457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058296, 36.067047, 42.293297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365505, 35.813484, 42.329742>,  <37.549831, 35.661346, 42.351608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365505, 35.813484, 42.329742>,  <37.058296, 36.067047, 42.293297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365505, 35.813484, 42.329742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353768, 0.301351, -0.885458,
		0.533843, 0.712284, 0.455701,
		0.768023, -0.633908, 0.091109,
		37.595913, 35.623310, 42.357075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642498, 36.403324, 42.056866>,  <37.058296, 36.067047, 42.293297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642498, 36.403324, 42.056866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790195, 36.031593, 42.055656>,  <37.878815, 35.808556, 42.054932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.790195, 36.031593, 42.055656>,  <37.642498, 36.403324, 42.056866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790195, 36.031593, 42.055656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343546, 0.139522, -0.928714,
		0.863500, 0.341888, 0.370784,
		0.369248, -0.929326, -0.003023,
		37.900970, 35.752796, 42.054749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279850, 36.511940, 41.795643>,  <37.642498, 36.403324, 42.056866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279850, 36.511940, 41.795643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185158, 36.127399, 41.739410>,  <38.128342, 35.896675, 41.705669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185158, 36.127399, 41.739410>,  <38.279850, 36.511940, 41.795643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185158, 36.127399, 41.739410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150871, 0.106565, -0.982793,
		0.959791, -0.253863, 0.119813,
		-0.236727, -0.961352, -0.140581,
		38.114140, 35.838993, 41.697235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010590, 36.819397, 42.071556>,  <38.279850, 36.511940, 41.795643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010590, 36.819397, 42.071556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137184, 37.187428, 41.979210>,  <39.213139, 37.408245, 41.923801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.137184, 37.187428, 41.979210>,  <39.010590, 36.819397, 42.071556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137184, 37.187428, 41.979210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159577, 0.188268, 0.969067,
		0.935079, -0.343535, -0.087239,
		0.316485, 0.920075, -0.230866,
		39.232128, 37.463451, 41.909950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726002, 36.929657, 42.366753>,  <39.010590, 36.819397, 42.071556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726002, 36.929657, 42.366753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503380, 37.260410, 42.334492>,  <39.369808, 37.458862, 42.315136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503380, 37.260410, 42.334492>,  <39.726002, 36.929657, 42.366753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503380, 37.260410, 42.334492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113692, 0.171969, 0.978520,
		0.822996, 0.535429, -0.189720,
		-0.556554, 0.826887, -0.080656,
		39.336414, 37.508476, 42.310295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052494, 37.368309, 42.827236>,  <39.726002, 36.929657, 42.366753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052494, 37.368309, 42.827236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713322, 37.567326, 42.754055>,  <39.509819, 37.686737, 42.710148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713322, 37.567326, 42.754055>,  <40.052494, 37.368309, 42.827236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713322, 37.567326, 42.754055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008068, 0.357187, 0.933998,
		0.530051, 0.790487, -0.306883,
		-0.847927, 0.497543, -0.182950,
		39.458942, 37.716587, 42.699169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165318, 38.117870, 42.990059>,  <40.052494, 37.368309, 42.827236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165318, 38.117870, 42.990059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768391, 38.076672, 43.017448>,  <39.530235, 38.051952, 43.033882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768391, 38.076672, 43.017448>,  <40.165318, 38.117870, 42.990059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768391, 38.076672, 43.017448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050159, 0.170961, 0.984000,
		-0.113056, 0.979880, -0.164482,
		-0.992322, -0.102997, 0.068478,
		39.470695, 38.045773, 43.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880157, 38.727627, 43.320305>,  <40.165318, 38.117870, 42.990059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880157, 38.727627, 43.320305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613285, 38.431355, 43.351978>,  <39.453163, 38.253593, 43.370983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613285, 38.431355, 43.351978>,  <39.880157, 38.727627, 43.320305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613285, 38.431355, 43.351978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054565, 0.154609, 0.986468,
		-0.742898, 0.653827, -0.143567,
		-0.667176, -0.740679, 0.079183,
		39.413132, 38.209152, 43.375732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412594, 38.999451, 43.870716>,  <39.880157, 38.727627, 43.320305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412594, 38.999451, 43.870716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329540, 38.609657, 43.836620>,  <39.279709, 38.375782, 43.816162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329540, 38.609657, 43.836620>,  <39.412594, 38.999451, 43.870716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329540, 38.609657, 43.836620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287338, -0.022536, 0.957564,
		-0.935054, 0.223316, -0.275327,
		-0.207634, -0.974486, -0.085240,
		39.267250, 38.317310, 43.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768085, 38.861034, 44.144897>,  <39.412594, 38.999451, 43.870716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768085, 38.861034, 44.144897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922024, 38.493996, 44.184715>,  <39.014385, 38.273773, 44.208607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922024, 38.493996, 44.184715>,  <38.768085, 38.861034, 44.144897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922024, 38.493996, 44.184715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288412, -0.017108, 0.957354,
		-0.876763, -0.397142, -0.271230,
		0.384845, -0.917598, 0.099541,
		39.037476, 38.218716, 44.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251026, 38.289627, 44.427959>,  <38.768085, 38.861034, 44.144897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251026, 38.289627, 44.427959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631290, 38.191360, 44.503742>,  <38.859447, 38.132401, 44.549213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.631290, 38.191360, 44.503742>,  <38.251026, 38.289627, 44.427959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631290, 38.191360, 44.503742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199052, -0.014582, 0.979880,
		-0.237964, -0.969244, -0.062764,
		0.950658, -0.245670, 0.189460,
		38.916489, 38.117661, 44.560581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135521, 37.671761, 44.822342>,  <38.251026, 38.289627, 44.427959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135521, 37.671761, 44.822342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500839, 37.812084, 44.905109>,  <38.720032, 37.896278, 44.954769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500839, 37.812084, 44.905109>,  <38.135521, 37.671761, 44.822342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500839, 37.812084, 44.905109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206195, -0.039872, 0.977698,
		0.351236, -0.935598, 0.035920,
		0.913300, 0.350810, 0.206920,
		38.774830, 37.917328, 44.967186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456116, 37.159801, 45.325180>,  <38.135521, 37.671761, 44.822342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456116, 37.159801, 45.325180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681770, 37.486572, 45.373138>,  <38.817162, 37.682636, 45.401913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.681770, 37.486572, 45.373138>,  <38.456116, 37.159801, 45.325180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681770, 37.486572, 45.373138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042950, -0.174046, 0.983800,
		0.824563, -0.549849, -0.133273,
		0.564137, 0.816930, 0.119896,
		38.851013, 37.731651, 45.409107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224159, 37.002190, 45.663761>,  <38.456116, 37.159801, 45.325180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224159, 37.002190, 45.663761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113312, 37.381138, 45.727875>,  <39.046803, 37.608505, 45.766342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.113312, 37.381138, 45.727875>,  <39.224159, 37.002190, 45.663761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113312, 37.381138, 45.727875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002678, -0.166057, 0.986112,
		0.960831, 0.273701, 0.043481,
		-0.277120, 0.947371, 0.160286,
		39.030174, 37.665348, 45.775959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516586, 37.039330, 46.365314>,  <39.224159, 37.002190, 45.663761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516586, 37.039330, 46.365314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288612, 37.362801, 46.307045>,  <39.151829, 37.556881, 46.272083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.288612, 37.362801, 46.307045>,  <39.516586, 37.039330, 46.365314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288612, 37.362801, 46.307045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144343, 0.075998, 0.986605,
		0.808914, 0.583326, 0.073413,
		-0.569933, 0.808675, -0.145675,
		39.117634, 37.605404, 46.263344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709923, 37.546329, 46.780334>,  <39.516586, 37.039330, 46.365314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709923, 37.546329, 46.780334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330395, 37.647617, 46.704830>,  <39.102680, 37.708389, 46.659527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330395, 37.647617, 46.704830>,  <39.709923, 37.546329, 46.780334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330395, 37.647617, 46.704830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160462, 0.128286, 0.978670,
		0.272031, 0.958866, -0.081088,
		-0.948815, 0.253217, -0.188760,
		39.045750, 37.723583, 46.648201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543400, 38.002293, 47.349522>,  <39.709923, 37.546329, 46.780334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543400, 38.002293, 47.349522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181999, 37.903191, 47.209641>,  <38.965157, 37.843727, 47.125713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181999, 37.903191, 47.209641>,  <39.543400, 38.002293, 47.349522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181999, 37.903191, 47.209641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392670, 0.151617, 0.907096,
		-0.171721, 0.956884, -0.234275,
		-0.903506, -0.247760, -0.349704,
		38.910946, 37.828861, 47.104729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.752710, 39.069756, 44.926216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.148529, 44.986786>,  <32.372646, 39.195793, 45.023129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.148529, 44.986786>,  <31.752710, 39.069756, 44.926216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140171, 39.148529, 44.986786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086331, 0.304689, -0.948531,
		-0.232931, 0.931871, 0.278137,
		0.968654, 0.196931, 0.151421,
		32.430767, 39.207607, 45.032211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818350, 39.709263, 44.468071>,  <31.752710, 39.069756, 44.926216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818350, 39.709263, 44.468071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193787, 39.604553, 44.557972>,  <32.419048, 39.541725, 44.611912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193787, 39.604553, 44.557972>,  <31.818350, 39.709263, 44.468071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193787, 39.604553, 44.557972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286629, 0.228993, -0.930272,
		0.192057, 0.937568, 0.289964,
		0.938594, -0.261778, 0.224754,
		32.475365, 39.526020, 44.625397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169796, 40.296917, 44.289860>,  <31.818350, 39.709263, 44.468071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169796, 40.296917, 44.289860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438572, 40.000893, 44.301243>,  <32.599838, 39.823280, 44.308075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438572, 40.000893, 44.301243>,  <32.169796, 40.296917, 44.289860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438572, 40.000893, 44.301243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369179, 0.301389, -0.879131,
		0.642029, 0.601232, 0.475729,
		0.671941, -0.740057, 0.028462,
		32.640156, 39.778877, 44.309780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783348, 40.606255, 44.300774>,  <32.169796, 40.296917, 44.289860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783348, 40.606255, 44.300774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853909, 40.232536, 44.176853>,  <32.896244, 40.008305, 44.102501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853909, 40.232536, 44.176853>,  <32.783348, 40.606255, 44.300774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853909, 40.232536, 44.176853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434348, 0.356316, -0.827273,
		0.883304, 0.011369, 0.468663,
		0.176397, -0.934297, -0.309797,
		32.906826, 39.952248, 44.083916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490337, 40.596012, 44.153004>,  <32.783348, 40.606255, 44.300774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490337, 40.596012, 44.153004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299564, 40.319855, 43.935421>,  <33.185101, 40.154160, 43.804871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299564, 40.319855, 43.935421>,  <33.490337, 40.596012, 44.153004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299564, 40.319855, 43.935421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605779, 0.190221, -0.772560,
		0.636844, -0.697976, 0.327505,
		-0.476929, -0.690396, -0.543960,
		33.156487, 40.112736, 43.772232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990139, 40.379639, 43.648129>,  <33.490337, 40.596012, 44.153004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990139, 40.379639, 43.648129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657406, 40.213745, 43.500584>,  <33.457767, 40.114208, 43.412056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657406, 40.213745, 43.500584>,  <33.990139, 40.379639, 43.648129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657406, 40.213745, 43.500584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307404, 0.209081, -0.928325,
		0.462125, -0.885598, -0.046431,
		-0.831831, -0.414730, -0.368859,
		33.407856, 40.089325, 43.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258175, 40.192108, 42.997757>,  <33.990139, 40.379639, 43.648129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258175, 40.192108, 42.997757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870510, 40.122929, 42.927551>,  <33.637909, 40.081421, 42.885429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870510, 40.122929, 42.927551>,  <34.258175, 40.192108, 42.997757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870510, 40.122929, 42.927551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162197, 0.088429, -0.982788,
		0.185498, -0.980952, -0.057650,
		-0.969166, -0.172955, -0.175511,
		33.579762, 40.071041, 42.874897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248795, 39.589119, 42.605972>,  <34.258175, 40.192108, 42.997757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248795, 39.589119, 42.605972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925812, 39.816559, 42.543095>,  <33.732021, 39.953022, 42.505367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925812, 39.816559, 42.543095>,  <34.248795, 39.589119, 42.605972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925812, 39.816559, 42.543095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195126, 0.005951, -0.980760,
		-0.556724, -0.822593, -0.115753,
		-0.807456, 0.568599, -0.157196,
		33.683575, 39.987137, 42.495937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056694, 39.360355, 42.041531>,  <34.248795, 39.589119, 42.605972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056694, 39.360355, 42.041531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827759, 39.688301, 42.047836>,  <33.690395, 39.885067, 42.051620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827759, 39.688301, 42.047836>,  <34.056694, 39.360355, 42.041531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827759, 39.688301, 42.047836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108137, -0.056407, -0.992535,
		-0.812854, -0.569774, 0.120941,
		-0.572342, 0.819863, 0.015763,
		33.656055, 39.934261, 42.052567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608326, 39.263157, 41.397976>,  <34.056694, 39.360355, 42.041531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608326, 39.263157, 41.397976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622616, 39.648857, 41.502998>,  <33.631191, 39.880280, 41.566013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622616, 39.648857, 41.502998>,  <33.608326, 39.263157, 41.397976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622616, 39.648857, 41.502998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009720, 0.263048, -0.964734,
		-0.999314, 0.031912, 0.018770,
		0.035724, 0.964255, 0.262558,
		33.633331, 39.938133, 41.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126438, 39.604244, 41.017490>,  <33.608326, 39.263157, 41.397976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126438, 39.604244, 41.017490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 39.870880, 41.121376>,  <33.573616, 40.030861, 41.183708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 39.870880, 41.121376>,  <33.126438, 39.604244, 41.017490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405926, 39.870880, 41.121376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078961, 0.288956, -0.954081,
		-0.711029, 0.687138, 0.149263,
		0.698715, 0.666593, 0.259713,
		33.615540, 40.070858, 41.199291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926651, 40.224819, 40.690559>,  <33.126438, 39.604244, 41.017490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926651, 40.224819, 40.690559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311073, 40.297386, 40.773949>,  <33.541725, 40.340927, 40.823982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311073, 40.297386, 40.773949>,  <32.926651, 40.224819, 40.690559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311073, 40.297386, 40.773949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117428, 0.414815, -0.902297,
		-0.250171, 0.891637, 0.377357,
		0.961054, 0.181416, 0.208478,
		33.599388, 40.351810, 40.836491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067307, 40.915043, 40.417580>,  <32.926651, 40.224819, 40.690559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067307, 40.915043, 40.417580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426331, 40.743664, 40.459190>,  <33.641743, 40.640835, 40.484158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426331, 40.743664, 40.459190>,  <33.067307, 40.915043, 40.417580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426331, 40.743664, 40.459190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292938, 0.403168, -0.866973,
		0.329512, 0.808632, 0.487376,
		0.897557, -0.428449, 0.104030,
		33.695599, 40.615128, 40.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548973, 41.471020, 40.304955>,  <33.067307, 40.915043, 40.417580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548973, 41.471020, 40.304955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727211, 41.117001, 40.251087>,  <33.834152, 40.904587, 40.218765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727211, 41.117001, 40.251087>,  <33.548973, 41.471020, 40.304955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727211, 41.117001, 40.251087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, 0.218822, -0.965242,
		0.883755, 0.410857, 0.223993,
		0.445591, -0.885050, -0.134667,
		33.860889, 40.851486, 40.210686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108635, 42.011063, 40.294392>,  <33.548973, 41.471020, 40.304955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108635, 42.011063, 40.294392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359653, 42.322155, 40.279865>,  <34.510265, 42.508812, 40.271149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359653, 42.322155, 40.279865>,  <34.108635, 42.011063, 40.294392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359653, 42.322155, 40.279865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289973, -0.190178, 0.937949,
		0.722566, -0.599138, -0.344867,
		0.627546, 0.777732, -0.036318,
		34.547916, 42.555473, 40.268970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724426, 41.783016, 40.548000>,  <34.108635, 42.011063, 40.294392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724426, 41.783016, 40.548000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693214, 42.178341, 40.600376>,  <34.674488, 42.415535, 40.631802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693214, 42.178341, 40.600376>,  <34.724426, 41.783016, 40.548000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693214, 42.178341, 40.600376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007160, -0.131892, 0.991238,
		0.996925, 0.076408, 0.017368,
		-0.078029, 0.988315, 0.130939,
		34.669807, 42.474834, 40.639660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281841, 41.925449, 40.954025>,  <34.724426, 41.783016, 40.548000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281841, 41.925449, 40.954025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042068, 42.243866, 40.987507>,  <34.898205, 42.434914, 41.007595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042068, 42.243866, 40.987507>,  <35.281841, 41.925449, 40.954025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042068, 42.243866, 40.987507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076495, -0.047124, 0.995956,
		0.796762, 0.603411, -0.032645,
		-0.599432, 0.796037, 0.083705,
		34.862240, 42.482677, 41.012619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441021, 42.335842, 41.423294>,  <35.281841, 41.925449, 40.954025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441021, 42.335842, 41.423294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080315, 42.508469, 41.413811>,  <34.863892, 42.612045, 41.408123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080315, 42.508469, 41.413811>,  <35.441021, 42.335842, 41.423294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080315, 42.508469, 41.413811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068388, 0.196625, 0.978091,
		0.426773, 0.880391, -0.206825,
		-0.901769, 0.431567, -0.023706,
		34.809784, 42.637939, 41.406700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522808, 42.917362, 41.804672>,  <35.441021, 42.335842, 41.423294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522808, 42.917362, 41.804672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129677, 42.844852, 41.818497>,  <34.893799, 42.801346, 41.826790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129677, 42.844852, 41.818497>,  <35.522808, 42.917362, 41.804672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129677, 42.844852, 41.818497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023460, 0.063026, 0.997736,
		-0.183038, 0.981412, -0.057691,
		-0.982826, -0.181270, 0.034560,
		34.834827, 42.790470, 41.828865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250340, 43.180561, 42.427917>,  <35.522808, 42.917362, 41.804672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250340, 43.180561, 42.427917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918308, 42.974201, 42.343235>,  <34.719090, 42.850384, 42.292427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918308, 42.974201, 42.343235>,  <35.250340, 43.180561, 42.427917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918308, 42.974201, 42.343235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278424, 0.054482, 0.958912,
		-0.483171, 0.854913, -0.188864,
		-0.830076, -0.515903, -0.211704,
		34.669285, 42.819431, 42.279724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761349, 43.579887, 42.606449>,  <35.250340, 43.180561, 42.427917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761349, 43.579887, 42.606449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651756, 43.195225, 42.611378>,  <34.586002, 42.964428, 42.614334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651756, 43.195225, 42.611378>,  <34.761349, 43.579887, 42.606449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651756, 43.195225, 42.611378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295972, 0.096501, 0.950310,
		-0.915060, 0.256719, -0.311062,
		-0.273981, -0.961656, 0.012323,
		34.569561, 42.906727, 42.615074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034637, 43.492428, 42.870716>,  <34.761349, 43.579887, 42.606449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034637, 43.492428, 42.870716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209156, 43.138760, 42.937515>,  <34.313866, 42.926559, 42.977596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209156, 43.138760, 42.937515>,  <34.034637, 43.492428, 42.870716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209156, 43.138760, 42.937515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443551, -0.049850, 0.894862,
		-0.782887, -0.464494, -0.413925,
		0.436292, -0.884172, 0.167000,
		34.340042, 42.873508, 42.987614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627224, 43.247288, 43.360523>,  <34.034637, 43.492428, 42.870716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627224, 43.247288, 43.360523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930649, 42.987297, 43.378925>,  <34.112705, 42.831303, 43.389965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.930649, 42.987297, 43.378925>,  <33.627224, 43.247288, 43.360523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930649, 42.987297, 43.378925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285767, -0.268400, 0.919945,
		-0.585592, -0.710983, -0.389340,
		0.758564, -0.649973, 0.046003,
		34.158218, 42.792305, 43.392727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359600, 42.698723, 43.716145>,  <33.627224, 43.247288, 43.360523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359600, 42.698723, 43.716145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751556, 42.626007, 43.749027>,  <33.986732, 42.582378, 43.768757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751556, 42.626007, 43.749027>,  <33.359600, 42.698723, 43.716145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751556, 42.626007, 43.749027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135757, -0.305560, 0.942445,
		-0.146207, -0.934658, -0.324096,
		0.979895, -0.181790, 0.082212,
		34.045525, 42.571468, 43.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373844, 42.002457, 43.996933>,  <33.359600, 42.698723, 43.716145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373844, 42.002457, 43.996933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744286, 42.123055, 44.087643>,  <33.966553, 42.195412, 44.142071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744286, 42.123055, 44.087643>,  <33.373844, 42.002457, 43.996933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744286, 42.123055, 44.087643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114648, -0.347772, 0.930543,
		0.359417, -0.887783, -0.287509,
		0.926108, 0.301491, 0.226777,
		34.022118, 42.213501, 44.155674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790516, 41.476059, 44.291260>,  <33.373844, 42.002457, 43.996933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790516, 41.476059, 44.291260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912548, 41.823277, 44.447933>,  <33.985767, 42.031609, 44.541939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912548, 41.823277, 44.447933>,  <33.790516, 41.476059, 44.291260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912548, 41.823277, 44.447933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119726, -0.373072, 0.920045,
		0.944771, -0.327582, -0.009889,
		0.305080, 0.868048, 0.391688,
		34.004070, 42.083691, 44.565441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154934, 41.266773, 44.853100>,  <33.790516, 41.476059, 44.291260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154934, 41.266773, 44.853100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101051, 41.657654, 44.918732>,  <34.068722, 41.892181, 44.958111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101051, 41.657654, 44.918732>,  <34.154934, 41.266773, 44.853100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101051, 41.657654, 44.918732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274046, -0.195875, 0.941558,
		0.952235, 0.081869, 0.294186,
		-0.134708, 0.977205, 0.164083,
		34.060638, 41.950817, 44.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495518, 41.499599, 45.445210>,  <34.154934, 41.266773, 44.853100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495518, 41.499599, 45.445210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210545, 41.779724, 45.427311>,  <34.039562, 41.947800, 45.416573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210545, 41.779724, 45.427311>,  <34.495518, 41.499599, 45.445210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210545, 41.779724, 45.427311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196291, -0.137660, 0.970834,
		0.673731, 0.700434, 0.235539,
		-0.712430, 0.700315, -0.044743,
		33.996815, 41.989819, 45.413887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070435, 41.496559, 45.903786>,  <34.495518, 41.499599, 45.445210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070435, 41.496559, 45.903786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301044, 41.173447, 45.952961>,  <35.439411, 40.979580, 45.982468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301044, 41.173447, 45.952961>,  <35.070435, 41.496559, 45.903786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301044, 41.173447, 45.952961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413995, 0.159067, -0.896273,
		0.704433, 0.567621, 0.426122,
		0.576526, -0.807777, 0.122940,
		35.474003, 40.931114, 45.989841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733929, 41.753094, 45.911865>,  <35.070435, 41.496559, 45.903786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733929, 41.753094, 45.911865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.763168, 41.368298, 45.806618>,  <35.780712, 41.137421, 45.743469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.763168, 41.368298, 45.806618>,  <35.733929, 41.753094, 45.911865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763168, 41.368298, 45.806618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612967, 0.251449, -0.749029,
		0.786720, -0.106529, 0.608049,
		0.073100, -0.961990, -0.263119,
		35.785099, 41.079700, 45.727680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405815, 41.692604, 45.740677>,  <35.733929, 41.753094, 45.911865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405815, 41.692604, 45.740677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232079, 41.375408, 45.569790>,  <36.127838, 41.185089, 45.467258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232079, 41.375408, 45.569790>,  <36.405815, 41.692604, 45.740677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232079, 41.375408, 45.569790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528454, 0.159759, -0.833795,
		0.729442, -0.587917, 0.349668,
		-0.434339, -0.792988, -0.427222,
		36.101776, 41.137512, 45.441624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892197, 41.277672, 45.376190>,  <36.405815, 41.692604, 45.740677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892197, 41.277672, 45.376190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568626, 41.148983, 45.179359>,  <36.374485, 41.071770, 45.061260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568626, 41.148983, 45.179359>,  <36.892197, 41.277672, 45.376190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568626, 41.148983, 45.179359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521264, -0.005386, -0.853379,
		0.271899, -0.946819, 0.172059,
		-0.808922, -0.321721, -0.492078,
		36.325951, 41.052467, 45.031734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174786, 40.709766, 44.954510>,  <36.892197, 41.277672, 45.376190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174786, 40.709766, 44.954510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823204, 40.824654, 44.802219>,  <36.612255, 40.893585, 44.710846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823204, 40.824654, 44.802219>,  <37.174786, 40.709766, 44.954510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823204, 40.824654, 44.802219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405253, 0.028939, -0.913746,
		-0.251431, -0.957426, -0.141834,
		-0.878949, 0.287223, -0.380724,
		36.559521, 40.910820, 44.688004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990547, 40.215580, 44.386570>,  <37.174786, 40.709766, 44.954510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990547, 40.215580, 44.386570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782677, 40.553478, 44.335430>,  <36.657955, 40.756218, 44.304745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782677, 40.553478, 44.335430>,  <36.990547, 40.215580, 44.386570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782677, 40.553478, 44.335430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280729, 0.027494, -0.959393,
		-0.806928, -0.534461, -0.251432,
		-0.519671, 0.844746, -0.127853,
		36.626774, 40.806900, 44.297073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976887, 40.190979, 43.732330>,  <36.990547, 40.215580, 44.386570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976887, 40.190979, 43.732330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864326, 40.564705, 43.819847>,  <36.796791, 40.788940, 43.872356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864326, 40.564705, 43.819847>,  <36.976887, 40.190979, 43.732330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864326, 40.564705, 43.819847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235731, 0.288326, -0.928062,
		-0.930185, -0.209581, -0.301382,
		-0.281400, 0.934315, 0.218792,
		36.779907, 40.845001, 43.885487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433502, 40.327572, 43.229336>,  <36.976887, 40.190979, 43.732330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433502, 40.327572, 43.229336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578957, 40.675896, 43.361671>,  <36.666229, 40.884892, 43.441074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.578957, 40.675896, 43.361671>,  <36.433502, 40.327572, 43.229336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578957, 40.675896, 43.361671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329880, 0.211763, -0.919965,
		-0.871176, 0.443670, -0.210259,
		0.363636, 0.870812, 0.330840,
		36.688046, 40.937138, 43.460922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147240, 40.733227, 42.768921>,  <36.433502, 40.327572, 43.229336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147240, 40.733227, 42.768921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476791, 40.902248, 42.920006>,  <36.674522, 41.003662, 43.010654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.476791, 40.902248, 42.920006>,  <36.147240, 40.733227, 42.768921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476791, 40.902248, 42.920006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293556, 0.251920, -0.922150,
		-0.484812, 0.870622, 0.083509,
		0.823882, 0.422555, 0.377711,
		36.723957, 41.029015, 43.033318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308079, 41.419933, 42.399910>,  <36.147240, 40.733227, 42.768921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308079, 41.419933, 42.399910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663048, 41.333630, 42.562843>,  <36.876030, 41.281845, 42.660603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.663048, 41.333630, 42.562843>,  <36.308079, 41.419933, 42.399910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663048, 41.333630, 42.562843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451467, 0.228498, -0.862535,
		0.093028, 0.949334, 0.300185,
		0.887425, -0.215763, 0.407336,
		36.929276, 41.268902, 42.685043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810703, 41.932915, 42.187782>,  <36.308079, 41.419933, 42.399910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810703, 41.932915, 42.187782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 41.632706, 42.288212>,  <37.201931, 41.452579, 42.348469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055222, 41.632706, 42.288212>,  <36.810703, 41.932915, 42.187782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055222, 41.632706, 42.288212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589928, 0.220655, -0.776722,
		0.527548, 0.622917, 0.577640,
		0.611292, -0.750524, 0.251070,
		37.238609, 41.407547, 42.363533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519764, 42.161816, 42.247272>,  <36.810703, 41.932915, 42.187782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519764, 42.161816, 42.247272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.505409, 41.774811, 42.147163>,  <37.496796, 41.542606, 42.087097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.505409, 41.774811, 42.147163>,  <37.519764, 42.161816, 42.247272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505409, 41.774811, 42.147163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539742, 0.192002, -0.819642,
		0.841065, -0.164492, 0.515317,
		-0.035883, -0.967511, -0.250270,
		37.494644, 41.484558, 42.072083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076256, 42.046181, 41.950417>,  <37.519764, 42.161816, 42.247272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076256, 42.046181, 41.950417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890923, 41.707714, 41.845097>,  <37.779724, 41.504635, 41.781906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890923, 41.707714, 41.845097>,  <38.076256, 42.046181, 41.950417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890923, 41.707714, 41.845097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425716, 0.048056, -0.903580,
		0.777232, -0.530747, 0.337961,
		-0.463331, -0.846166, -0.263299,
		37.751923, 41.453865, 41.766106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536079, 41.682312, 41.414528>,  <38.076256, 42.046181, 41.950417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536079, 41.682312, 41.414528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186943, 41.490959, 41.375961>,  <37.977459, 41.376148, 41.352821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186943, 41.490959, 41.375961>,  <38.536079, 41.682312, 41.414528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186943, 41.490959, 41.375961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119483, -0.017930, -0.992674,
		0.473148, -0.877969, 0.072809,
		-0.872843, -0.478382, -0.096419,
		37.925091, 41.347446, 41.347034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.566832, 29.627327, 29.752136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294968, 29.715179, 29.472187>,  <29.131849, 29.767891, 29.304218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294968, 29.715179, 29.472187>,  <29.566832, 29.627327, 29.752136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294968, 29.715179, 29.472187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453772, 0.623753, 0.636414,
		0.576325, 0.750129, -0.324278,
		-0.679662, 0.219633, -0.699872,
		29.091068, 29.781069, 29.262226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515747, 30.301958, 29.635162>,  <29.566832, 29.627327, 29.752136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515747, 30.301958, 29.635162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142679, 30.205616, 29.527746>,  <28.918839, 30.147810, 29.463297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142679, 30.205616, 29.527746>,  <29.515747, 30.301958, 29.635162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142679, 30.205616, 29.527746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356649, 0.727324, 0.586346,
		0.054089, 0.642642, -0.764255,
		-0.932671, -0.240856, -0.268538,
		28.862877, 30.133360, 29.447186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203245, 30.868185, 29.442932>,  <29.515747, 30.301958, 29.635162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203245, 30.868185, 29.442932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887436, 30.642494, 29.539513>,  <28.697950, 30.507080, 29.597462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887436, 30.642494, 29.539513>,  <29.203245, 30.868185, 29.442932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887436, 30.642494, 29.539513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381905, 0.759656, 0.526375,
		-0.480415, 0.323375, -0.815249,
		-0.789525, -0.564226, 0.241451,
		28.650578, 30.473227, 29.611948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654419, 31.246567, 29.298437>,  <29.203245, 30.868185, 29.442932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654419, 31.246567, 29.298437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523485, 30.976311, 29.562668>,  <28.444925, 30.814157, 29.721207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523485, 30.976311, 29.562668>,  <28.654419, 31.246567, 29.298437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523485, 30.976311, 29.562668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273052, 0.736902, 0.618399,
		-0.904597, 0.022051, -0.425698,
		-0.327334, -0.675640, 0.660578,
		28.425285, 30.773619, 29.760841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976191, 31.463886, 29.497765>,  <28.654419, 31.246567, 29.298437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976191, 31.463886, 29.497765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072041, 31.218870, 29.799063>,  <28.129551, 31.071861, 29.979841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072041, 31.218870, 29.799063>,  <27.976191, 31.463886, 29.497765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072041, 31.218870, 29.799063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381348, 0.654106, 0.653237,
		-0.892835, -0.443780, -0.076851,
		0.239625, -0.612539, 0.753244,
		28.143929, 31.035109, 30.025036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378298, 31.352972, 30.002560>,  <27.976191, 31.463886, 29.497765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378298, 31.352972, 30.002560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.696444, 31.248945, 30.221561>,  <27.887331, 31.186529, 30.352962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.696444, 31.248945, 30.221561>,  <27.378298, 31.352972, 30.002560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696444, 31.248945, 30.221561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500916, 0.226580, 0.835311,
		-0.341289, -0.938631, 0.049944,
		0.795365, -0.260065, 0.547504,
		27.935053, 31.170925, 30.385813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152149, 30.816862, 30.489557>,  <27.378298, 31.352972, 30.002560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152149, 30.816862, 30.489557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477737, 30.973125, 30.661528>,  <27.673090, 31.066883, 30.764709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477737, 30.973125, 30.661528>,  <27.152149, 30.816862, 30.489557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477737, 30.973125, 30.661528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545551, 0.259825, 0.796784,
		0.199561, -0.883108, 0.424612,
		0.813972, 0.390654, 0.429930,
		27.721928, 31.090322, 30.790506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055761, 30.651451, 31.285698>,  <27.152149, 30.816862, 30.489557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055761, 30.651451, 31.285698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340748, 30.931818, 31.299032>,  <27.511740, 31.100039, 31.307034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340748, 30.931818, 31.299032>,  <27.055761, 30.651451, 31.285698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340748, 30.931818, 31.299032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438367, 0.407489, 0.801116,
		0.547933, -0.585379, 0.597580,
		0.712464, 0.700917, 0.033334,
		27.554487, 31.142094, 31.309032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219965, 30.755205, 31.942055>,  <27.055761, 30.651451, 31.285698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219965, 30.755205, 31.942055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326609, 31.101599, 31.772825>,  <27.390594, 31.309435, 31.671288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326609, 31.101599, 31.772825>,  <27.219965, 30.755205, 31.942055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326609, 31.101599, 31.772825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460292, 0.500073, 0.733525,
		0.846788, -0.000827, 0.531930,
		0.266610, 0.865983, -0.423075,
		27.406591, 31.361393, 31.645903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528831, 31.133760, 32.474743>,  <27.219965, 30.755205, 31.942055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528831, 31.133760, 32.474743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442720, 31.415493, 32.204166>,  <27.391054, 31.584534, 32.041821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442720, 31.415493, 32.204166>,  <27.528831, 31.133760, 32.474743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442720, 31.415493, 32.204166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334534, 0.597579, 0.728688,
		0.917465, 0.383164, 0.106977,
		-0.215280, 0.704333, -0.676439,
		27.378136, 31.626793, 32.001236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747282, 31.789806, 32.823318>,  <27.528831, 31.133760, 32.474743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747282, 31.789806, 32.823318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533392, 31.923359, 32.512810>,  <27.405058, 32.003490, 32.326508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.533392, 31.923359, 32.512810>,  <27.747282, 31.789806, 32.823318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533392, 31.923359, 32.512810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379070, 0.726239, 0.573484,
		0.755230, 0.600917, -0.261775,
		-0.534727, 0.333881, -0.776267,
		27.372974, 32.023521, 32.279930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973455, 32.403362, 32.730503>,  <27.747282, 31.789806, 32.823318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973455, 32.403362, 32.730503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608711, 32.427040, 32.568020>,  <27.389864, 32.441246, 32.470531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608711, 32.427040, 32.568020>,  <27.973455, 32.403362, 32.730503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608711, 32.427040, 32.568020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196099, 0.806519, 0.557738,
		0.360627, 0.588237, -0.723827,
		-0.911862, 0.059194, -0.406205,
		27.335152, 32.444798, 32.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882055, 33.097385, 32.572124>,  <27.973455, 32.403362, 32.730503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882055, 33.097385, 32.572124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503805, 32.970783, 32.602119>,  <27.276855, 32.894821, 32.620117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.503805, 32.970783, 32.602119>,  <27.882055, 33.097385, 32.572124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503805, 32.970783, 32.602119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257440, 0.869185, 0.422188,
		-0.198800, 0.379926, -0.903402,
		-0.945623, -0.316502, 0.074985,
		27.220118, 32.875832, 32.624615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482676, 33.744171, 32.531094>,  <27.882055, 33.097385, 32.572124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482676, 33.744171, 32.531094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270594, 33.449852, 32.699612>,  <27.143345, 33.273262, 32.800720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270594, 33.449852, 32.699612>,  <27.482676, 33.744171, 32.531094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270594, 33.449852, 32.699612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392064, 0.653334, 0.647642,
		-0.751778, 0.178209, -0.634880,
		-0.530204, -0.735796, 0.421293,
		27.111532, 33.229115, 32.826000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802225, 34.072235, 32.615707>,  <27.482676, 33.744171, 32.531094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802225, 34.072235, 32.615707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817419, 33.759487, 32.864620>,  <26.826536, 33.571838, 33.013969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817419, 33.759487, 32.864620>,  <26.802225, 34.072235, 32.615707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817419, 33.759487, 32.864620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266350, 0.592281, 0.760434,
		-0.963128, -0.194630, -0.185753,
		0.037985, -0.781871, 0.622282,
		26.828815, 33.524925, 33.051304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226791, 34.157387, 32.962349>,  <26.802225, 34.072235, 32.615707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226791, 34.157387, 32.962349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475784, 33.937195, 33.184875>,  <26.625179, 33.805080, 33.318394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.475784, 33.937195, 33.184875>,  <26.226791, 34.157387, 32.962349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475784, 33.937195, 33.184875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117758, 0.636861, 0.761933,
		-0.773725, -0.539799, 0.331611,
		0.622481, -0.550477, 0.556321,
		26.662529, 33.772053, 33.351772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874878, 34.044331, 33.600189>,  <26.226791, 34.157387, 32.962349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874878, 34.044331, 33.600189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265791, 33.981071, 33.656624>,  <26.500340, 33.943115, 33.690483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.265791, 33.981071, 33.656624>,  <25.874878, 34.044331, 33.600189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265791, 33.981071, 33.656624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012926, 0.620004, 0.784492,
		-0.211538, -0.768496, 0.603876,
		0.977284, -0.158144, 0.141088,
		26.558977, 33.933628, 33.698952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964529, 34.221809, 34.319077>,  <25.874878, 34.044331, 33.600189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964529, 34.221809, 34.319077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338589, 34.238472, 34.178356>,  <26.563025, 34.248470, 34.093925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338589, 34.238472, 34.178356>,  <25.964529, 34.221809, 34.319077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338589, 34.238472, 34.178356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161116, 0.834397, 0.527089,
		0.315498, -0.549587, 0.773573,
		0.935149, 0.041660, -0.351798,
		26.619133, 34.250969, 34.072815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530405, 34.284477, 34.892353>,  <25.964529, 34.221809, 34.319077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530405, 34.284477, 34.892353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679043, 34.425171, 34.548679>,  <26.768225, 34.509586, 34.342476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679043, 34.425171, 34.548679>,  <26.530405, 34.284477, 34.892353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679043, 34.425171, 34.548679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182981, 0.879553, 0.439210,
		0.910186, -0.320421, 0.262473,
		0.371591, 0.351735, -0.859187,
		26.790522, 34.530693, 34.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980173, 34.735592, 35.158981>,  <26.530405, 34.284477, 34.892353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980173, 34.735592, 35.158981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945889, 34.861954, 34.781017>,  <26.925318, 34.937771, 34.554237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.945889, 34.861954, 34.781017>,  <26.980173, 34.735592, 35.158981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945889, 34.861954, 34.781017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092391, 0.946836, 0.308164,
		0.992027, -0.060889, -0.110340,
		-0.085710, 0.315902, -0.944912,
		26.920176, 34.956726, 34.497543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467066, 35.341614, 35.102043>,  <26.980173, 34.735592, 35.158981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467066, 35.341614, 35.102043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.260330, 35.361317, 34.760178>,  <27.136290, 35.373138, 34.555058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.260330, 35.361317, 34.760178>,  <27.467066, 35.341614, 35.102043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260330, 35.361317, 34.760178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027886, 0.998782, 0.040697,
		0.855628, -0.002799, -0.517584,
		-0.516840, 0.049255, -0.854664,
		27.105278, 35.376095, 34.503777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804470, 35.748585, 34.573605>,  <27.467066, 35.341614, 35.102043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804470, 35.748585, 34.573605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.404896, 35.767014, 34.572792>,  <27.165152, 35.778069, 34.572304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.404896, 35.767014, 34.572792>,  <27.804470, 35.748585, 34.573605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404896, 35.767014, 34.572792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045299, 0.988592, 0.143643,
		0.008625, 0.143398, -0.989628,
		-0.998936, 0.046069, -0.002031,
		27.105215, 35.780834, 34.572182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497196, 35.857708, 34.241608>,  <27.804470, 35.748585, 34.573605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497196, 35.857708, 34.241608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614086, 35.769974, 34.613953>,  <28.684219, 35.717335, 34.837360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614086, 35.769974, 34.613953>,  <28.497196, 35.857708, 34.241608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614086, 35.769974, 34.613953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879572, -0.320476, -0.351636,
		0.375444, 0.921513, 0.099271,
		0.292224, -0.219335, 0.930858,
		28.701754, 35.704174, 34.893211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094967, 35.980270, 33.959137>,  <28.497196, 35.857708, 34.241608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094967, 35.980270, 33.959137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485378, 36.031387, 33.888660>,  <29.719625, 36.062057, 33.846375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485378, 36.031387, 33.888660>,  <29.094967, 35.980270, 33.959137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485378, 36.031387, 33.888660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120350, -0.357625, -0.926078,
		-0.181351, 0.925081, -0.333672,
		0.976026, 0.127788, -0.176189,
		29.778187, 36.069725, 33.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152157, 36.419117, 33.395313>,  <29.094967, 35.980270, 33.959137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152157, 36.419117, 33.395313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469807, 36.177120, 33.418476>,  <29.660397, 36.031921, 33.432373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469807, 36.177120, 33.418476>,  <29.152157, 36.419117, 33.395313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469807, 36.177120, 33.418476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133508, -0.266613, -0.954512,
		0.592909, 0.750270, -0.292496,
		0.794125, -0.604989, 0.057910,
		29.708044, 35.995625, 33.435848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336735, 36.487221, 32.746574>,  <29.152157, 36.419117, 33.395313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336735, 36.487221, 32.746574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516386, 36.154175, 32.876213>,  <29.624176, 35.954350, 32.953999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.516386, 36.154175, 32.876213>,  <29.336735, 36.487221, 32.746574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516386, 36.154175, 32.876213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039055, -0.344103, -0.938119,
		0.892614, 0.433991, -0.122028,
		0.449126, -0.832613, 0.324101,
		29.651123, 35.904392, 32.973442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758341, 36.375175, 32.158291>,  <29.336735, 36.487221, 32.746574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758341, 36.375175, 32.158291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743073, 36.033337, 32.365444>,  <29.733912, 35.828232, 32.489738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743073, 36.033337, 32.365444>,  <29.758341, 36.375175, 32.158291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743073, 36.033337, 32.365444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072174, -0.519269, -0.851558,
		0.996661, 0.004872, 0.081501,
		-0.038172, -0.854597, 0.517887,
		29.731621, 35.776958, 32.520809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209953, 36.007011, 31.776617>,  <29.758341, 36.375175, 32.158291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209953, 36.007011, 31.776617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010345, 35.726559, 31.980341>,  <29.890581, 35.558289, 32.102577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.010345, 35.726559, 31.980341>,  <30.209953, 36.007011, 31.776617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010345, 35.726559, 31.980341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013569, -0.581325, -0.813558,
		0.866485, -0.412892, 0.280579,
		-0.499019, -0.701128, 0.509312,
		29.860640, 35.516220, 32.133133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623440, 35.353668, 31.825863>,  <30.209953, 36.007011, 31.776617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623440, 35.353668, 31.825863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230936, 35.278439, 31.842617>,  <29.995434, 35.233299, 31.852671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230936, 35.278439, 31.842617>,  <30.623440, 35.353668, 31.825863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230936, 35.278439, 31.842617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092163, -0.649037, -0.755154,
		0.169212, -0.737143, 0.654208,
		-0.981261, -0.188074, 0.041888,
		29.936558, 35.222015, 31.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596523, 34.668587, 31.797050>,  <30.623440, 35.353668, 31.825863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596523, 34.668587, 31.797050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218239, 34.770210, 31.715979>,  <29.991268, 34.831184, 31.667336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218239, 34.770210, 31.715979>,  <30.596523, 34.668587, 31.797050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218239, 34.770210, 31.715979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006870, -0.639110, -0.769085,
		-0.324929, -0.725941, 0.606160,
		-0.945713, 0.254062, -0.202678,
		29.934525, 34.846428, 31.655174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211926, 34.036564, 31.720572>,  <30.596523, 34.668587, 31.797050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211926, 34.036564, 31.720572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978186, 34.310745, 31.546816>,  <29.837942, 34.475254, 31.442562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978186, 34.310745, 31.546816>,  <30.211926, 34.036564, 31.720572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978186, 34.310745, 31.546816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175336, -0.629292, -0.757132,
		-0.792335, -0.366265, 0.487910,
		-0.584348, 0.685450, -0.434391,
		29.802881, 34.516380, 31.416498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644964, 33.641083, 31.526857>,  <30.211926, 34.036564, 31.720572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644964, 33.641083, 31.526857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663607, 33.977676, 31.311548>,  <29.674793, 34.179630, 31.182364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663607, 33.977676, 31.311548>,  <29.644964, 33.641083, 31.526857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663607, 33.977676, 31.311548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031316, -0.537363, -0.842770,
		-0.998422, 0.056136, 0.001307,
		0.046607, 0.841481, -0.538273,
		29.677589, 34.230122, 31.150066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090363, 33.655243, 31.011068>,  <29.644964, 33.641083, 31.526857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090363, 33.655243, 31.011068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.357958, 33.913673, 30.864075>,  <29.518515, 34.068729, 30.775879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.357958, 33.913673, 30.864075>,  <29.090363, 33.655243, 31.011068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357958, 33.913673, 30.864075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029498, -0.470947, -0.881668,
		-0.742688, 0.600665, -0.296000,
		0.668988, 0.646073, -0.367485,
		29.558655, 34.107494, 30.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783005, 33.794018, 30.398117>,  <29.090363, 33.655243, 31.011068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783005, 33.794018, 30.398117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166378, 33.904041, 30.367781>,  <29.396402, 33.970055, 30.349579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166378, 33.904041, 30.367781>,  <28.783005, 33.794018, 30.398117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166378, 33.904041, 30.367781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069069, -0.481577, -0.873678,
		-0.276834, 0.832123, -0.480557,
		0.958432, 0.275055, -0.075843,
		29.453907, 33.986557, 30.345028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909603, 34.083519, 29.695591>,  <28.783005, 33.794018, 30.398117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909603, 34.083519, 29.695591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285837, 34.007961, 29.808458>,  <29.511578, 33.962627, 29.876179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285837, 34.007961, 29.808458>,  <28.909603, 34.083519, 29.695591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285837, 34.007961, 29.808458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231720, -0.250346, -0.940017,
		0.248202, 0.949551, -0.191701,
		0.940586, -0.188893, 0.282166,
		29.568012, 33.951294, 29.893108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208113, 34.273983, 29.175589>,  <28.909603, 34.083519, 29.695591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208113, 34.273983, 29.175589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506336, 34.070171, 29.347412>,  <29.685270, 33.947884, 29.450506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506336, 34.070171, 29.347412>,  <29.208113, 34.273983, 29.175589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506336, 34.070171, 29.347412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388530, -0.191369, -0.901345,
		0.541468, 0.838901, 0.055291,
		0.745558, -0.509531, 0.429559,
		29.730003, 33.917313, 29.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913231, 34.426365, 28.766270>,  <29.208113, 34.273983, 29.175589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913231, 34.426365, 28.766270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.958292, 34.086597, 28.972488>,  <29.985329, 33.882736, 29.096220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.958292, 34.086597, 28.972488>,  <29.913231, 34.426365, 28.766270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958292, 34.086597, 28.972488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358456, -0.449172, -0.818385,
		0.926725, 0.276995, 0.253879,
		0.112654, -0.849422, 0.515549,
		29.992088, 33.831772, 29.127153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687403, 34.213772, 28.647186>,  <29.913231, 34.426365, 28.766270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687403, 34.213772, 28.647186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470922, 33.886257, 28.723803>,  <30.341034, 33.689747, 28.769772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470922, 33.886257, 28.723803>,  <30.687403, 34.213772, 28.647186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470922, 33.886257, 28.723803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493019, -0.493491, -0.716519,
		0.681200, -0.293348, 0.670756,
		-0.541202, -0.818788, 0.191540,
		30.308561, 33.640621, 28.781265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219183, 33.722153, 28.609110>,  <30.687403, 34.213772, 28.647186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219183, 33.722153, 28.609110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863050, 33.546101, 28.562466>,  <30.649370, 33.440468, 28.534479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863050, 33.546101, 28.562466>,  <31.219183, 33.722153, 28.609110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863050, 33.546101, 28.562466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372648, -0.557223, -0.742049,
		0.261620, -0.704123, 0.660126,
		-0.890331, -0.440129, -0.116609,
		30.595951, 33.414062, 28.527483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209488, 32.979057, 28.748260>,  <31.219183, 33.722153, 28.609110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209488, 32.979057, 28.748260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885468, 33.018524, 28.517061>,  <30.691055, 33.042206, 28.378342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885468, 33.018524, 28.517061>,  <31.209488, 32.979057, 28.748260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885468, 33.018524, 28.517061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372288, -0.675019, -0.636986,
		-0.453009, -0.731173, 0.510067,
		-0.810052, 0.098668, -0.577997,
		30.642452, 33.048126, 28.343662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012840, 32.313301, 28.514397>,  <31.209488, 32.979057, 28.748260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012840, 32.313301, 28.514397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816902, 32.548187, 28.256643>,  <30.699339, 32.689117, 28.101992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.816902, 32.548187, 28.256643>,  <31.012840, 32.313301, 28.514397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816902, 32.548187, 28.256643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166486, -0.662525, -0.730304,
		-0.855766, -0.465016, 0.226771,
		-0.489844, 0.587215, -0.644385,
		30.669949, 32.724350, 28.063328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574032, 31.890726, 28.128004>,  <31.012840, 32.313301, 28.514397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574032, 31.890726, 28.128004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599392, 32.216503, 27.897295>,  <30.614609, 32.411968, 27.758869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.599392, 32.216503, 27.897295>,  <30.574032, 31.890726, 28.128004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599392, 32.216503, 27.897295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464283, -0.535657, -0.705346,
		-0.883415, -0.223065, -0.412092,
		0.063402, 0.814440, -0.576773,
		30.618412, 32.460835, 27.724262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.053375, 38.614700, 47.578262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833717, 38.288292, 47.506100>,  <38.701923, 38.092445, 47.462803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.833717, 38.288292, 47.506100>,  <39.053375, 38.614700, 47.578262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833717, 38.288292, 47.506100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374518, 0.047305, 0.926012,
		-0.747114, 0.576079, -0.331593,
		-0.549142, -0.816024, -0.180410,
		38.668976, 38.043484, 47.451977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418110, 38.730854, 47.678253>,  <39.053375, 38.614700, 47.578262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418110, 38.730854, 47.678253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401680, 38.332253, 47.707352>,  <38.391823, 38.093090, 47.724812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401680, 38.332253, 47.707352>,  <38.418110, 38.730854, 47.678253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401680, 38.332253, 47.707352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612489, 0.082638, 0.786148,
		-0.789412, -0.012268, -0.613742,
		-0.041074, -0.996504, 0.072749,
		38.389359, 38.033302, 47.729176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724674, 38.695095, 47.850609>,  <38.418110, 38.730854, 47.678253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724674, 38.695095, 47.850609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863052, 38.328007, 47.928703>,  <37.946079, 38.107754, 47.975559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863052, 38.328007, 47.928703>,  <37.724674, 38.695095, 47.850609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863052, 38.328007, 47.928703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648946, -0.083748, 0.756211,
		-0.677638, -0.388302, -0.624522,
		0.345941, -0.917719, 0.195236,
		37.966835, 38.052692, 47.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129822, 38.288326, 48.011734>,  <37.724674, 38.695095, 47.850609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129822, 38.288326, 48.011734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445274, 38.111565, 48.182747>,  <37.634544, 38.005508, 48.285355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445274, 38.111565, 48.182747>,  <37.129822, 38.288326, 48.011734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445274, 38.111565, 48.182747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544027, -0.177454, 0.820088,
		-0.286537, -0.879333, -0.380356,
		0.788626, -0.441909, 0.427534,
		37.681862, 37.978992, 48.311008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802868, 37.703922, 48.253059>,  <37.129822, 38.288326, 48.011734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802868, 37.703922, 48.253059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143280, 37.749161, 48.458176>,  <37.347527, 37.776302, 48.581245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143280, 37.749161, 48.458176>,  <36.802868, 37.703922, 48.253059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143280, 37.749161, 48.458176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511686, -0.040812, 0.858203,
		0.117988, -0.992745, 0.023138,
		0.851032, 0.113097, 0.512789,
		37.398590, 37.783089, 48.612011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648125, 37.284790, 48.749256>,  <36.802868, 37.703922, 48.253059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648125, 37.284790, 48.749256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959473, 37.494751, 48.887024>,  <37.146282, 37.620728, 48.969685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959473, 37.494751, 48.887024>,  <36.648125, 37.284790, 48.749256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959473, 37.494751, 48.887024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388396, -0.028404, 0.921055,
		0.493243, -0.850691, 0.181760,
		0.778370, 0.524898, 0.344415,
		37.192986, 37.652222, 48.990349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889404, 36.963806, 49.447224>,  <36.648125, 37.284790, 48.749256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889404, 36.963806, 49.447224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023834, 37.336662, 49.501152>,  <37.104492, 37.560375, 49.533508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023834, 37.336662, 49.501152>,  <36.889404, 36.963806, 49.447224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023834, 37.336662, 49.501152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357450, -0.006204, 0.933912,
		0.871370, -0.362052, 0.331107,
		0.336070, 0.932137, 0.134821,
		37.124657, 37.616302, 49.541599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274498, 36.936882, 50.045273>,  <36.889404, 36.963806, 49.447224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274498, 36.936882, 50.045273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184666, 37.323570, 49.996269>,  <37.130768, 37.555584, 49.966866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184666, 37.323570, 49.996269>,  <37.274498, 36.936882, 50.045273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184666, 37.323570, 49.996269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302973, 0.050221, 0.951675,
		0.926160, 0.250843, 0.281612,
		-0.224579, 0.966724, -0.122511,
		37.117290, 37.613586, 49.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609505, 37.349281, 50.565182>,  <37.274498, 36.936882, 50.045273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609505, 37.349281, 50.565182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278545, 37.529202, 50.430664>,  <37.079971, 37.637154, 50.349953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278545, 37.529202, 50.430664>,  <37.609505, 37.349281, 50.565182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278545, 37.529202, 50.430664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332201, 0.090830, 0.938825,
		0.452830, 0.888498, 0.074272,
		-0.827398, 0.449802, -0.336290,
		37.030327, 37.664143, 50.329777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455200, 37.781921, 51.081566>,  <37.609505, 37.349281, 50.565182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455200, 37.781921, 51.081566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118698, 37.802330, 50.866276>,  <36.916798, 37.814575, 50.737103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118698, 37.802330, 50.866276>,  <37.455200, 37.781921, 51.081566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118698, 37.802330, 50.866276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519390, 0.200082, 0.830784,
		0.150073, 0.978450, -0.141823,
		-0.841257, 0.051017, -0.538224,
		36.866322, 37.817635, 50.704807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104736, 38.302151, 51.302685>,  <37.455200, 37.781921, 51.081566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104736, 38.302151, 51.302685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816242, 38.099083, 51.114174>,  <36.643147, 37.977242, 51.001068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816242, 38.099083, 51.114174>,  <37.104736, 38.302151, 51.302685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816242, 38.099083, 51.114174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572788, 0.054481, 0.817891,
		-0.389539, 0.859830, -0.330078,
		-0.721231, -0.507665, -0.471277,
		36.599873, 37.946785, 50.972790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477879, 38.783695, 51.341572>,  <37.104736, 38.302151, 51.302685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477879, 38.783695, 51.341572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367115, 38.403584, 51.284595>,  <36.300659, 38.175514, 51.250408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367115, 38.403584, 51.284595>,  <36.477879, 38.783695, 51.341572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367115, 38.403584, 51.284595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579596, 0.046946, 0.813551,
		-0.766415, 0.307835, -0.563779,
		-0.276906, -0.950281, -0.142439,
		36.284042, 38.118500, 51.241863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796185, 38.740658, 51.283817>,  <36.477879, 38.783695, 51.341572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796185, 38.740658, 51.283817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945908, 38.408043, 51.447983>,  <36.035740, 38.208473, 51.546482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945908, 38.408043, 51.447983>,  <35.796185, 38.740658, 51.283817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945908, 38.408043, 51.447983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537825, 0.165872, 0.826577,
		-0.755405, -0.530127, -0.385134,
		0.374308, -0.831536, 0.410416,
		36.058201, 38.158581, 51.571106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552166, 38.995251, 51.881405>,  <35.796185, 38.740658, 51.283817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552166, 38.995251, 51.881405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298237, 39.303242, 51.907108>,  <35.145878, 39.488037, 51.922531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298237, 39.303242, 51.907108>,  <35.552166, 38.995251, 51.881405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298237, 39.303242, 51.907108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193675, -0.078061, -0.977955,
		-0.747989, -0.633276, 0.198680,
		-0.634825, 0.769979, 0.064261,
		35.107788, 39.534237, 51.926388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842045, 38.889114, 51.715015>,  <35.552166, 38.995251, 51.881405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842045, 38.889114, 51.715015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980522, 39.250000, 51.612133>,  <35.063606, 39.466534, 51.550404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.980522, 39.250000, 51.612133>,  <34.842045, 38.889114, 51.715015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980522, 39.250000, 51.612133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035737, -0.286646, -0.957370,
		-0.937483, 0.322241, -0.131477,
		0.346191, 0.902217, -0.257210,
		35.084381, 39.520664, 51.534969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470959, 39.083477, 51.105347>,  <34.842045, 38.889114, 51.715015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470959, 39.083477, 51.105347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789345, 39.325397, 51.095108>,  <34.980377, 39.470551, 51.088966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789345, 39.325397, 51.095108>,  <34.470959, 39.083477, 51.105347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789345, 39.325397, 51.095108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083365, 0.067638, -0.994221,
		-0.599570, 0.793502, 0.104256,
		0.795969, 0.604796, -0.025597,
		35.028137, 39.506836, 51.087429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220905, 39.651546, 50.656517>,  <34.470959, 39.083477, 51.105347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220905, 39.651546, 50.656517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620693, 39.643909, 50.667068>,  <34.860565, 39.639328, 50.673401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620693, 39.643909, 50.667068>,  <34.220905, 39.651546, 50.656517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620693, 39.643909, 50.667068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030449, 0.260488, -0.964997,
		0.011550, 0.965288, 0.260932,
		0.999470, -0.019091, 0.026383,
		34.920532, 39.638184, 50.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500675, 40.358677, 50.502285>,  <34.220905, 39.651546, 50.656517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500675, 40.358677, 50.502285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772163, 40.078114, 50.415234>,  <34.935059, 39.909775, 50.363003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772163, 40.078114, 50.415234>,  <34.500675, 40.358677, 50.502285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772163, 40.078114, 50.415234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002214, 0.294383, -0.955685,
		0.734392, 0.649127, 0.198251,
		0.678722, -0.701408, -0.217630,
		34.975780, 39.867691, 50.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731983, 40.649036, 49.919689>,  <34.500675, 40.358677, 50.502285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731983, 40.649036, 49.919689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925205, 40.301842, 49.873623>,  <35.041138, 40.093525, 49.845982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.925205, 40.301842, 49.873623>,  <34.731983, 40.649036, 49.919689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925205, 40.301842, 49.873623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168747, 0.221351, -0.960483,
		0.859176, 0.444530, 0.253395,
		0.483053, -0.867984, -0.115166,
		35.070122, 40.041447, 49.839073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474430, 40.808102, 49.566685>,  <34.731983, 40.649036, 49.919689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474430, 40.808102, 49.566685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398682, 40.419453, 49.510006>,  <35.353233, 40.186264, 49.475998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.398682, 40.419453, 49.510006>,  <35.474430, 40.808102, 49.566685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398682, 40.419453, 49.510006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194233, 0.104392, -0.975385,
		0.962502, -0.212236, 0.168952,
		-0.189374, -0.971626, -0.141701,
		35.341869, 40.127964, 49.467495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903168, 40.607876, 49.024265>,  <35.474430, 40.808102, 49.566685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903168, 40.607876, 49.024265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657501, 40.292210, 49.022457>,  <35.510101, 40.102810, 49.021374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657501, 40.292210, 49.022457>,  <35.903168, 40.607876, 49.024265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657501, 40.292210, 49.022457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149151, -0.110447, -0.982627,
		0.774955, -0.604170, 0.185537,
		-0.614166, -0.789164, -0.004522,
		35.473251, 40.055462, 49.021099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234707, 39.969952, 48.796509>,  <35.903168, 40.607876, 49.024265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234707, 39.969952, 48.796509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840500, 39.934059, 48.738960>,  <35.603973, 39.912525, 48.704430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840500, 39.934059, 48.738960>,  <36.234707, 39.969952, 48.796509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840500, 39.934059, 48.738960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134467, 0.103291, -0.985520,
		0.103291, -0.990596, -0.089730,
		0.985520, 0.089730, 0.143871,
		35.544846, 39.907139, 48.695801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208458, 39.626759, 48.194824>,  <36.234707, 39.969952, 48.796509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208458, 39.626759, 48.194824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843143, 39.782494, 48.242706>,  <35.623955, 39.875935, 48.271435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843143, 39.782494, 48.242706>,  <36.208458, 39.626759, 48.194824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843143, 39.782494, 48.242706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036383, 0.214737, -0.975994,
		-0.405700, -0.895713, -0.181950,
		-0.913282, 0.389341, 0.119707,
		35.569160, 39.899296, 48.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764305, 39.283100, 47.755539>,  <36.208458, 39.626759, 48.194824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764305, 39.283100, 47.755539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617481, 39.646133, 47.837090>,  <35.529385, 39.863953, 47.886021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617481, 39.646133, 47.837090>,  <35.764305, 39.283100, 47.755539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617481, 39.646133, 47.837090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047514, 0.237184, -0.970302,
		-0.928982, -0.346474, -0.130184,
		-0.367062, 0.907579, 0.203878,
		35.507362, 39.918407, 47.898254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093781, 39.391335, 47.357620>,  <35.764305, 39.283100, 47.755539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093781, 39.391335, 47.357620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276600, 39.735359, 47.448311>,  <35.386292, 39.941772, 47.502728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276600, 39.735359, 47.448311>,  <35.093781, 39.391335, 47.357620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276600, 39.735359, 47.448311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076890, 0.215754, -0.973416,
		-0.886111, 0.462333, 0.032481,
		0.457050, 0.860057, 0.226731,
		35.413715, 39.993378, 47.516331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775959, 39.826962, 46.892998>,  <35.093781, 39.391335, 47.357620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775959, 39.826962, 46.892998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.096767, 40.029366, 47.019939>,  <35.289253, 40.150806, 47.096104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.096767, 40.029366, 47.019939>,  <34.775959, 39.826962, 46.892998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096767, 40.029366, 47.019939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094759, 0.416800, -0.904046,
		-0.589730, 0.755137, 0.286333,
		0.802022, 0.506010, 0.317356,
		35.337376, 40.181168, 47.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555820, 40.419197, 46.716038>,  <34.775959, 39.826962, 46.892998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555820, 40.419197, 46.716038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954620, 40.417839, 46.746971>,  <35.193901, 40.417027, 46.765530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954620, 40.417839, 46.746971>,  <34.555820, 40.419197, 46.716038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954620, 40.417839, 46.746971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072176, 0.401662, -0.912939,
		-0.027965, 0.915782, 0.400702,
		0.997000, -0.003390, 0.077330,
		35.253719, 40.416821, 46.770168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673649, 40.983681, 46.302891>,  <34.555820, 40.419197, 46.716038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673649, 40.983681, 46.302891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039463, 40.824104, 46.329659>,  <35.258949, 40.728359, 46.345718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039463, 40.824104, 46.329659>,  <34.673649, 40.983681, 46.302891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039463, 40.824104, 46.329659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179161, 0.251153, -0.951222,
		0.362674, 0.881912, 0.301162,
		0.914532, -0.398940, 0.066918,
		35.313824, 40.704422, 46.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458824, 41.741016, 46.204628>,  <34.673649, 40.983681, 46.302891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458824, 41.741016, 46.204628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134956, 41.902164, 46.033920>,  <33.940636, 41.998852, 45.931496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134956, 41.902164, 46.033920>,  <34.458824, 41.741016, 46.204628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134956, 41.902164, 46.033920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536122, -0.211888, 0.817115,
		0.238765, 0.890392, 0.387547,
		-0.809669, 0.402871, -0.426767,
		33.892056, 42.023026, 45.905891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274181, 42.310871, 46.572311>,  <34.458824, 41.741016, 46.204628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274181, 42.310871, 46.572311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961575, 42.143093, 46.387573>,  <33.774010, 42.042427, 46.276730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961575, 42.143093, 46.387573>,  <34.274181, 42.310871, 46.572311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961575, 42.143093, 46.387573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463017, -0.106210, 0.879963,
		-0.418151, 0.901545, -0.111207,
		-0.781515, -0.419448, -0.461842,
		33.727119, 42.017258, 46.249020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729557, 42.634933, 46.846119>,  <34.274181, 42.310871, 46.572311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729557, 42.634933, 46.846119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529030, 42.336037, 46.671619>,  <33.408714, 42.156700, 46.566917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529030, 42.336037, 46.671619>,  <33.729557, 42.634933, 46.846119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529030, 42.336037, 46.671619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447483, -0.207626, 0.869857,
		-0.740568, 0.631288, -0.230290,
		-0.501316, -0.747239, -0.436252,
		33.378635, 42.111866, 46.540745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057167, 42.697147, 47.125084>,  <33.729557, 42.634933, 46.846119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057167, 42.697147, 47.125084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114700, 42.322033, 46.998676>,  <33.149220, 42.096966, 46.922832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114700, 42.322033, 46.998676>,  <33.057167, 42.697147, 47.125084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114700, 42.322033, 46.998676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346934, -0.346860, 0.871392,
		-0.926794, -0.015700, -0.375241,
		0.143837, -0.937785, -0.316021,
		33.157852, 42.040699, 46.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390717, 42.297512, 47.277912>,  <33.057167, 42.697147, 47.125084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390717, 42.297512, 47.277912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669827, 42.016083, 47.224110>,  <32.837292, 41.847225, 47.191830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669827, 42.016083, 47.224110>,  <32.390717, 42.297512, 47.277912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669827, 42.016083, 47.224110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198043, -0.369944, 0.907701,
		-0.688393, -0.606735, -0.397476,
		0.697778, -0.703572, -0.134507,
		32.879162, 41.805012, 47.183758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024765, 41.615826, 47.586460>,  <32.390717, 42.297512, 47.277912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024765, 41.615826, 47.586460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422504, 41.576065, 47.571583>,  <32.661148, 41.552208, 47.562656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422504, 41.576065, 47.571583>,  <32.024765, 41.615826, 47.586460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422504, 41.576065, 47.571583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016776, -0.493271, 0.869714,
		-0.104801, -0.864178, -0.492152,
		0.994352, -0.099404, -0.037198,
		32.720810, 41.546246, 47.560425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259872, 40.942196, 47.747364>,  <32.024765, 41.615826, 47.586460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259872, 40.942196, 47.747364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543617, 41.204468, 47.850811>,  <32.713863, 41.361832, 47.912880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.543617, 41.204468, 47.850811>,  <32.259872, 40.942196, 47.747364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543617, 41.204468, 47.850811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005407, -0.361840, 0.932225,
		0.704823, -0.662684, -0.253131,
		0.709363, 0.655684, 0.258616,
		32.756428, 41.401173, 47.928394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270966, 40.156578, 47.748684>,  <32.259872, 40.942196, 47.747364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270966, 40.156578, 47.748684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252739, 39.770004, 47.849827>,  <32.241802, 39.538059, 47.910511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252739, 39.770004, 47.849827>,  <32.270966, 40.156578, 47.748684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252739, 39.770004, 47.849827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456628, -0.245277, -0.855179,
		0.888490, 0.076490, 0.452476,
		-0.045569, -0.966431, 0.252853,
		32.239067, 39.480076, 47.925682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895756, 40.013485, 47.573841>,  <32.270966, 40.156578, 47.748684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895756, 40.013485, 47.573841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623230, 39.720692, 47.575554>,  <32.459717, 39.545017, 47.576580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.623230, 39.720692, 47.575554>,  <32.895756, 40.013485, 47.573841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623230, 39.720692, 47.575554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152103, -0.147291, -0.977328,
		0.716015, -0.665215, 0.211687,
		-0.681313, -0.731980, 0.004281,
		32.418835, 39.501099, 47.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291519, 39.535069, 47.254536>,  <32.895756, 40.013485, 47.573841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291519, 39.535069, 47.254536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918324, 39.393105, 47.230667>,  <32.694405, 39.307926, 47.216347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918324, 39.393105, 47.230667>,  <33.291519, 39.535069, 47.254536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918324, 39.393105, 47.230667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162102, -0.266387, -0.950137,
		0.321321, -0.896144, 0.306069,
		-0.932993, -0.354914, -0.059671,
		32.638424, 39.286629, 47.212765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282143, 38.808357, 46.863541>,  <33.291519, 39.535069, 47.254536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282143, 38.808357, 46.863541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934242, 39.000854, 46.819843>,  <32.725502, 39.116352, 46.793625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934242, 39.000854, 46.819843>,  <33.282143, 38.808357, 46.863541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934242, 39.000854, 46.819843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115291, -0.017080, -0.993185,
		-0.479827, -0.876422, -0.040628,
		-0.869755, 0.481241, -0.109239,
		32.673317, 39.145226, 46.787071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056046, 38.582748, 46.305908>,  <33.282143, 38.808357, 46.863541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056046, 38.582748, 46.305908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752445, 38.841953, 46.331177>,  <32.570286, 38.997478, 46.346340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752445, 38.841953, 46.331177>,  <33.056046, 38.582748, 46.305908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752445, 38.841953, 46.331177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053267, 0.034903, -0.997970,
		-0.648906, -0.760826, 0.008026,
		-0.759002, 0.648017, 0.063176,
		32.524746, 39.036358, 46.350128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419949, 38.268772, 45.917297>,  <33.056046, 38.582748, 46.305908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419949, 38.268772, 45.917297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453632, 38.667076, 45.932106>,  <32.473843, 38.906059, 45.940990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453632, 38.667076, 45.932106>,  <32.419949, 38.268772, 45.917297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453632, 38.667076, 45.932106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039170, 0.033814, -0.998660,
		-0.995677, 0.085551, -0.036156,
		0.084214, 0.995760, 0.037019,
		32.478897, 38.965805, 45.943211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921869, 38.557529, 45.394550>,  <32.419949, 38.268772, 45.917297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921869, 38.557529, 45.394550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197449, 38.845448, 45.428604>,  <32.362797, 39.018196, 45.449036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197449, 38.845448, 45.428604>,  <31.921869, 38.557529, 45.394550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197449, 38.845448, 45.428604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116107, 0.225534, -0.967292,
		-0.715448, 0.656532, 0.238955,
		0.688950, 0.719792, 0.085130,
		32.404133, 39.061386, 45.454144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.717419, 34.991211, 50.882381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934021, 35.314281, 50.975700>,  <35.063984, 35.508125, 51.031693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.934021, 35.314281, 50.975700>,  <34.717419, 34.991211, 50.882381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934021, 35.314281, 50.975700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425085, -0.023633, -0.904845,
		-0.725307, 0.589154, -0.356128,
		0.541509, 0.807675, 0.233299,
		35.096474, 35.556583, 51.045689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393291, 35.636341, 50.618568>,  <34.717419, 34.991211, 50.882381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393291, 35.636341, 50.618568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.790737, 35.606846, 50.652718>,  <35.029205, 35.589149, 50.673206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.790737, 35.606846, 50.652718>,  <34.393291, 35.636341, 50.618568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790737, 35.606846, 50.652718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099855, 0.222786, -0.969740,
		0.052483, 0.972075, 0.228726,
		0.993617, -0.073735, 0.085374,
		35.088821, 35.584724, 50.678329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651947, 36.199444, 50.262722>,  <34.393291, 35.636341, 50.618568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651947, 36.199444, 50.262722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968639, 35.956219, 50.286129>,  <35.158653, 35.810284, 50.300175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968639, 35.956219, 50.286129>,  <34.651947, 36.199444, 50.262722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968639, 35.956219, 50.286129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199962, 0.167448, -0.965389,
		0.577221, 0.776026, 0.254163,
		0.791726, -0.608066, 0.058521,
		35.206158, 35.773800, 50.303684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264523, 36.516090, 49.819080>,  <34.651947, 36.199444, 50.262722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264523, 36.516090, 49.819080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311077, 36.121864, 49.868271>,  <35.339008, 35.885330, 49.897785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.311077, 36.121864, 49.868271>,  <35.264523, 36.516090, 49.819080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311077, 36.121864, 49.868271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257624, -0.089626, -0.962080,
		0.959210, 0.143653, 0.243473,
		0.116385, -0.985561, 0.122978,
		35.345993, 35.826195, 49.905163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667999, 36.531216, 49.273643>,  <35.264523, 36.516090, 49.819080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667999, 36.531216, 49.273643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600170, 36.153316, 49.385853>,  <35.559471, 35.926579, 49.453178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600170, 36.153316, 49.385853>,  <35.667999, 36.531216, 49.273643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600170, 36.153316, 49.385853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459295, -0.327607, -0.825664,
		0.871948, -0.011165, 0.489472,
		-0.169573, -0.944748, 0.280528,
		35.549297, 35.869892, 49.470013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311451, 36.112152, 49.367912>,  <35.667999, 36.531216, 49.273643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311451, 36.112152, 49.367912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.002388, 35.878872, 49.267609>,  <35.816948, 35.738903, 49.207428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.002388, 35.878872, 49.267609>,  <36.311451, 36.112152, 49.367912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002388, 35.878872, 49.267609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464341, -0.249856, -0.849682,
		0.432878, -0.772952, 0.463856,
		-0.772660, -0.583196, -0.250756,
		35.770592, 35.703915, 49.192383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517494, 35.315517, 49.223366>,  <36.311451, 36.112152, 49.367912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517494, 35.315517, 49.223366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175896, 35.381874, 49.026119>,  <35.970936, 35.421688, 48.907772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175896, 35.381874, 49.026119>,  <36.517494, 35.315517, 49.223366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175896, 35.381874, 49.026119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411426, -0.364809, -0.835250,
		-0.318450, -0.916185, 0.243297,
		-0.854001, 0.165887, -0.493116,
		35.919697, 35.431641, 48.878185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520092, 34.667927, 48.808250>,  <36.517494, 35.315517, 49.223366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520092, 34.667927, 48.808250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.221268, 34.885696, 48.655666>,  <36.041973, 35.016357, 48.564117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.221268, 34.885696, 48.655666>,  <36.520092, 34.667927, 48.808250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221268, 34.885696, 48.655666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264610, -0.282869, -0.921936,
		-0.609826, -0.789676, 0.067259,
		-0.747057, 0.544423, -0.381457,
		35.997150, 35.049023, 48.541229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139122, 34.255402, 48.447292>,  <36.520092, 34.667927, 48.808250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139122, 34.255402, 48.447292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032433, 34.608910, 48.293510>,  <35.968418, 34.821014, 48.201241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032433, 34.608910, 48.293510>,  <36.139122, 34.255402, 48.447292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032433, 34.608910, 48.293510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131983, -0.361657, -0.922922,
		-0.954693, -0.296906, -0.020180,
		-0.266723, 0.883771, -0.384458,
		35.952415, 34.874043, 48.178173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678810, 34.022102, 47.933945>,  <36.139122, 34.255402, 48.447292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678810, 34.022102, 47.933945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.834423, 34.381672, 47.853363>,  <35.927792, 34.597416, 47.805012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.834423, 34.381672, 47.853363>,  <35.678810, 34.022102, 47.933945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834423, 34.381672, 47.853363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292104, -0.327768, -0.898467,
		-0.873688, 0.290686, -0.390092,
		0.389031, 0.898927, -0.201457,
		35.951134, 34.651352, 47.792927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467823, 34.180229, 47.271866>,  <35.678810, 34.022102, 47.933945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467823, 34.180229, 47.271866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793213, 34.395905, 47.359085>,  <35.988445, 34.525311, 47.411419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.793213, 34.395905, 47.359085>,  <35.467823, 34.180229, 47.271866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793213, 34.395905, 47.359085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358340, -0.169340, -0.918105,
		-0.458104, 0.824987, -0.330965,
		0.813470, 0.539185, 0.218051,
		36.037254, 34.557659, 47.424500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387161, 34.634972, 46.795170>,  <35.467823, 34.180229, 47.271866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387161, 34.634972, 46.795170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774891, 34.690617, 46.876221>,  <36.007530, 34.724003, 46.924850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774891, 34.690617, 46.876221>,  <35.387161, 34.634972, 46.795170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774891, 34.690617, 46.876221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180627, 0.155876, -0.971121,
		-0.166682, 0.977931, 0.125966,
		0.969325, 0.139116, 0.202623,
		36.065689, 34.732353, 46.937008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025711, 35.237900, 46.588726>,  <35.387161, 34.634972, 46.795170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025711, 35.237900, 46.588726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635746, 35.222591, 46.501011>,  <34.401768, 35.213406, 46.448383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635746, 35.222591, 46.501011>,  <35.025711, 35.237900, 46.588726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635746, 35.222591, 46.501011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213119, 0.444910, 0.869848,
		0.064274, 0.894757, -0.441903,
		-0.974910, -0.038270, -0.219286,
		34.343273, 35.211109, 46.435226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727757, 35.817940, 46.818977>,  <35.025711, 35.237900, 46.588726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727757, 35.817940, 46.818977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415562, 35.572922, 46.768959>,  <34.228245, 35.425911, 46.738949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415562, 35.572922, 46.768959>,  <34.727757, 35.817940, 46.818977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415562, 35.572922, 46.768959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386897, 0.316138, 0.866237,
		-0.491074, 0.724465, -0.483732,
		-0.780485, -0.612541, -0.125046,
		34.181416, 35.389160, 46.731445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153915, 36.166855, 47.020081>,  <34.727757, 35.817940, 46.818977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153915, 36.166855, 47.020081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.993618, 35.803928, 47.070972>,  <33.897442, 35.586174, 47.101509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.993618, 35.803928, 47.070972>,  <34.153915, 36.166855, 47.020081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993618, 35.803928, 47.070972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599888, 0.364812, 0.712072,
		-0.692489, 0.209030, -0.690482,
		-0.400740, -0.907314, 0.127234,
		33.873398, 35.531734, 47.109142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479233, 36.291092, 47.047531>,  <34.153915, 36.166855, 47.020081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479233, 36.291092, 47.047531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526562, 35.931580, 47.216385>,  <33.554958, 35.715874, 47.317699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526562, 35.931580, 47.216385>,  <33.479233, 36.291092, 47.047531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526562, 35.931580, 47.216385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595077, 0.276146, 0.754737,
		-0.794911, -0.340506, -0.502167,
		0.118321, -0.898776, 0.422139,
		33.562057, 35.661945, 47.343025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779358, 36.088020, 47.320644>,  <33.479233, 36.291092, 47.047531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779358, 36.088020, 47.320644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052128, 35.871536, 47.517445>,  <33.215790, 35.741646, 47.635525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.052128, 35.871536, 47.517445>,  <32.779358, 36.088020, 47.320644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052128, 35.871536, 47.517445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518787, 0.116269, 0.846960,
		-0.515589, -0.832809, -0.201486,
		0.681929, -0.541212, 0.491998,
		33.256706, 35.709171, 47.665043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379963, 35.737400, 47.702858>,  <32.779358, 36.088020, 47.320644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379963, 35.737400, 47.702858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727974, 35.717583, 47.899063>,  <32.936779, 35.705692, 48.016785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.727974, 35.717583, 47.899063>,  <32.379963, 35.737400, 47.702858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727974, 35.717583, 47.899063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484476, 0.098390, 0.869254,
		-0.091331, -0.993914, 0.061597,
		0.870024, -0.049548, 0.490514,
		32.988979, 35.702717, 48.046219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242596, 35.310371, 48.272697>,  <32.379963, 35.737400, 47.702858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242596, 35.310371, 48.272697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574986, 35.487442, 48.407467>,  <32.774422, 35.593685, 48.488327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574986, 35.487442, 48.407467>,  <32.242596, 35.310371, 48.272697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574986, 35.487442, 48.407467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496747, 0.317809, 0.807614,
		0.250431, -0.838475, 0.483988,
		0.830980, 0.442671, 0.336920,
		32.824280, 35.620243, 48.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371979, 35.044800, 48.952629>,  <32.242596, 35.310371, 48.272697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371979, 35.044800, 48.952629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565361, 35.393047, 48.916199>,  <32.681389, 35.601997, 48.894341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565361, 35.393047, 48.916199>,  <32.371979, 35.044800, 48.952629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565361, 35.393047, 48.916199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334922, 0.280094, 0.899652,
		0.808765, -0.404436, 0.427002,
		0.483452, 0.870620, -0.091076,
		32.710396, 35.654232, 48.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712891, 35.171303, 49.549572>,  <32.371979, 35.044800, 48.952629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712891, 35.171303, 49.549572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.670319, 35.537357, 49.394039>,  <32.644775, 35.756992, 49.300720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.670319, 35.537357, 49.394039>,  <32.712891, 35.171303, 49.549572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670319, 35.537357, 49.394039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155772, 0.370877, 0.915524,
		0.982042, 0.158011, 0.103080,
		-0.106433, 0.915141, -0.388831,
		32.638390, 35.811901, 49.277390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928368, 35.432766, 50.140072>,  <32.712891, 35.171303, 49.549572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928368, 35.432766, 50.140072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812511, 35.756538, 49.935749>,  <32.742996, 35.950802, 49.813156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812511, 35.756538, 49.935749>,  <32.928368, 35.432766, 50.140072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812511, 35.756538, 49.935749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165651, 0.483240, 0.859674,
		0.942691, 0.333616, -0.005885,
		-0.289645, 0.809431, -0.510810,
		32.725616, 35.999367, 49.782505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076427, 35.965019, 50.518932>,  <32.928368, 35.432766, 50.140072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076427, 35.965019, 50.518932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791451, 36.113270, 50.280582>,  <32.620464, 36.202221, 50.137573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791451, 36.113270, 50.280582>,  <33.076427, 35.965019, 50.518932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791451, 36.113270, 50.280582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266711, 0.642410, 0.718453,
		0.649073, 0.670781, -0.358829,
		-0.712439, 0.370624, -0.595876,
		32.577717, 36.224457, 50.101818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112446, 36.668522, 50.682835>,  <33.076427, 35.965019, 50.518932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112446, 36.668522, 50.682835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752846, 36.608299, 50.518337>,  <32.537086, 36.572166, 50.419640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752846, 36.608299, 50.518337>,  <33.112446, 36.668522, 50.682835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752846, 36.608299, 50.518337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410744, 0.615639, 0.672516,
		0.151926, 0.773512, -0.615303,
		-0.899004, -0.150560, -0.411247,
		32.483143, 36.563133, 50.394962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629478, 37.270245, 50.797462>,  <33.112446, 36.668522, 50.682835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629478, 37.270245, 50.797462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.357613, 36.981758, 50.743938>,  <32.194492, 36.808666, 50.711823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.357613, 36.981758, 50.743938>,  <32.629478, 37.270245, 50.797462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357613, 36.981758, 50.743938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595313, 0.435769, 0.675061,
		-0.428552, 0.538476, -0.725525,
		-0.679665, -0.721214, -0.133812,
		32.153713, 36.765392, 50.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982988, 37.599522, 50.786598>,  <32.629478, 37.270245, 50.797462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982988, 37.599522, 50.786598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868948, 37.220993, 50.847507>,  <31.800524, 36.993874, 50.884052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868948, 37.220993, 50.847507>,  <31.982988, 37.599522, 50.786598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868948, 37.220993, 50.847507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563663, 0.294024, 0.771903,
		-0.775243, 0.134238, -0.617235,
		-0.285100, -0.946325, 0.152275,
		31.783419, 36.937096, 50.893188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772089, 38.358883, 50.517979>,  <31.982988, 37.599522, 50.786598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772089, 38.358883, 50.517979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414165, 38.537281, 50.509853>,  <31.199411, 38.644318, 50.504978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414165, 38.537281, 50.509853>,  <31.772089, 38.358883, 50.517979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414165, 38.537281, 50.509853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170569, 0.299453, -0.938741,
		-0.412587, -0.843457, -0.344025,
		-0.894806, 0.445992, -0.020317,
		31.145723, 38.671078, 50.503757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336355, 37.995258, 50.043320>,  <31.772089, 38.358883, 50.517979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336355, 37.995258, 50.043320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277119, 38.387482, 50.094814>,  <31.241577, 38.622814, 50.125713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277119, 38.387482, 50.094814>,  <31.336355, 37.995258, 50.043320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277119, 38.387482, 50.094814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162336, 0.152511, -0.974878,
		-0.975560, -0.123470, -0.181765,
		-0.148089, 0.980559, 0.128740,
		31.232693, 38.681648, 50.133438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006756, 38.130821, 49.422367>,  <31.336355, 37.995258, 50.043320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006756, 38.130821, 49.422367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149920, 38.480183, 49.554470>,  <31.235819, 38.689800, 49.633732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149920, 38.480183, 49.554470>,  <31.006756, 38.130821, 49.422367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149920, 38.480183, 49.554470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097738, 0.316704, -0.943475,
		-0.928626, 0.369959, 0.027988,
		0.357911, 0.873401, 0.330258,
		31.257292, 38.742203, 49.653549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641973, 38.628998, 49.048798>,  <31.006756, 38.130821, 49.422367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641973, 38.628998, 49.048798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992895, 38.786274, 49.158878>,  <31.203449, 38.880638, 49.224926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.992895, 38.786274, 49.158878>,  <30.641973, 38.628998, 49.048798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992895, 38.786274, 49.158878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154945, 0.310672, -0.937803,
		-0.454234, 0.865381, 0.211632,
		0.877305, 0.393191, 0.275204,
		31.256086, 38.904232, 49.241440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816286, 39.109241, 48.473927>,  <30.641973, 38.628998, 49.048798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816286, 39.109241, 48.473927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153173, 39.107204, 48.689571>,  <31.355307, 39.105984, 48.818958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153173, 39.107204, 48.689571>,  <30.816286, 39.109241, 48.473927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153173, 39.107204, 48.689571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533899, 0.146908, -0.832689,
		-0.074959, 0.989137, 0.126448,
		0.842219, -0.005093, 0.539111,
		31.405840, 39.105679, 48.851303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203484, 39.710438, 48.315723>,  <30.816286, 39.109241, 48.473927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203484, 39.710438, 48.315723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466454, 39.442726, 48.454205>,  <31.624235, 39.282097, 48.537292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.466454, 39.442726, 48.454205>,  <31.203484, 39.710438, 48.315723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466454, 39.442726, 48.454205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588142, 0.168560, -0.790997,
		0.471045, 0.723635, 0.504449,
		0.657424, -0.669283, 0.346201,
		31.663681, 39.241940, 48.558064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851820, 40.034412, 48.354851>,  <31.203484, 39.710438, 48.315723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851820, 40.034412, 48.354851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934681, 39.643982, 48.328415>,  <31.984398, 39.409725, 48.312553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.934681, 39.643982, 48.328415>,  <31.851820, 40.034412, 48.354851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934681, 39.643982, 48.328415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560039, 0.173702, -0.810052,
		0.802150, 0.130794, 0.582622,
		0.207153, -0.976074, -0.066085,
		31.996826, 39.351158, 48.308590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484013, 40.551540, 48.365925>,  <31.851820, 40.034412, 48.354851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484013, 40.551540, 48.365925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719078, 40.874840, 48.380806>,  <32.860119, 41.068821, 48.389736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719078, 40.874840, 48.380806>,  <32.484013, 40.551540, 48.365925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719078, 40.874840, 48.380806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196117, -0.186905, 0.962603,
		0.784978, -0.558389, -0.268349,
		0.587662, 0.808250, 0.037207,
		32.895378, 41.117313, 48.391968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081135, 40.306705, 48.603535>,  <32.484013, 40.551540, 48.365925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081135, 40.306705, 48.603535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098232, 40.697517, 48.687038>,  <33.108490, 40.932007, 48.737141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098232, 40.697517, 48.687038>,  <33.081135, 40.306705, 48.603535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098232, 40.697517, 48.687038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083758, -0.211720, 0.973735,
		0.995569, -0.024139, -0.090884,
		0.042747, 0.977032, 0.208760,
		33.111057, 40.990627, 48.749668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539974, 40.420483, 49.061478>,  <33.081135, 40.306705, 48.603535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539974, 40.420483, 49.061478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346649, 40.763489, 49.131992>,  <33.230656, 40.969292, 49.174301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.346649, 40.763489, 49.131992>,  <33.539974, 40.420483, 49.061478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346649, 40.763489, 49.131992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191559, -0.092895, 0.977075,
		0.854235, 0.505997, -0.119369,
		-0.483308, 0.857518, 0.176282,
		33.201656, 41.020744, 49.184875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875053, 40.843925, 49.470211>,  <33.539974, 40.420483, 49.061478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875053, 40.843925, 49.470211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.515068, 41.002026, 49.543800>,  <33.299076, 41.096886, 49.587952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.515068, 41.002026, 49.543800>,  <33.875053, 40.843925, 49.470211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515068, 41.002026, 49.543800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149740, -0.116077, 0.981888,
		0.409447, 0.911209, 0.045280,
		-0.899962, 0.395251, 0.183972,
		33.245079, 41.120602, 49.598991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042015, 41.257870, 49.960815>,  <33.875053, 40.843925, 49.470211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042015, 41.257870, 49.960815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643871, 41.246357, 49.997540>,  <33.404984, 41.239449, 50.019573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643871, 41.246357, 49.997540>,  <34.042015, 41.257870, 49.960815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643871, 41.246357, 49.997540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093909, -0.082673, 0.992142,
		-0.020969, 0.996161, 0.084993,
		-0.995360, -0.028785, 0.091815,
		33.345264, 41.237720, 50.025085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941391, 41.807072, 50.356022>,  <34.042015, 41.257870, 49.960815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941391, 41.807072, 50.356022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618458, 41.573132, 50.387444>,  <33.424698, 41.432766, 50.406296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618458, 41.573132, 50.387444>,  <33.941391, 41.807072, 50.356022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618458, 41.573132, 50.387444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001463, 0.131129, 0.991364,
		-0.590099, 0.800472, -0.105009,
		-0.807329, -0.584850, 0.078550,
		33.376259, 41.397678, 50.411007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508469, 42.074253, 50.865635>,  <33.941391, 41.807072, 50.356022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508469, 42.074253, 50.865635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393127, 41.692032, 50.841053>,  <33.323925, 41.462700, 50.826305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.393127, 41.692032, 50.841053>,  <33.508469, 42.074253, 50.865635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393127, 41.692032, 50.841053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160793, -0.014948, 0.986875,
		-0.943928, 0.294446, -0.149335,
		-0.288349, -0.955551, -0.061455,
		33.306622, 41.405365, 50.822617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944675, 42.113892, 51.336876>,  <33.508469, 42.074253, 50.865635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944675, 42.113892, 51.336876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997807, 41.720200, 51.290146>,  <33.029686, 41.483986, 51.262108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997807, 41.720200, 51.290146>,  <32.944675, 42.113892, 51.336876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997807, 41.720200, 51.290146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427187, -0.163212, 0.889310,
		-0.894353, -0.068219, -0.442130,
		0.132829, -0.984230, -0.116827,
		33.037655, 41.424931, 51.255096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286755, 41.768440, 51.597023>,  <32.944675, 42.113892, 51.336876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286755, 41.768440, 51.597023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593594, 41.512043, 51.607540>,  <32.777695, 41.358204, 51.613850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.593594, 41.512043, 51.607540>,  <32.286755, 41.768440, 51.597023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593594, 41.512043, 51.607540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179995, -0.175705, 0.967848,
		-0.615766, -0.747163, -0.250158,
		0.767094, -0.640995, 0.026293,
		32.823723, 41.319744, 51.615429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.977413, 42.394329, 35.348755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274891, 42.445377, 35.611244>,  <36.453377, 42.476006, 35.768738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274891, 42.445377, 35.611244>,  <35.977413, 42.394329, 35.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274891, 42.445377, 35.611244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616192, -0.249848, 0.746916,
		0.259280, -0.959838, -0.107170,
		0.743695, 0.127623, 0.656224,
		36.498001, 42.483665, 35.808113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849407, 41.848370, 35.780743>,  <35.977413, 42.394329, 35.348755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849407, 41.848370, 35.780743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104473, 42.076401, 35.987968>,  <36.257515, 42.213219, 36.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104473, 42.076401, 35.987968>,  <35.849407, 41.848370, 35.780743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104473, 42.076401, 35.987968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411506, -0.316440, 0.854710,
		0.651185, -0.758210, 0.032805,
		0.637668, 0.570074, 0.518068,
		36.295773, 42.247421, 36.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066086, 41.396980, 36.305294>,  <35.849407, 41.848370, 35.780743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066086, 41.396980, 36.305294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152798, 41.770630, 36.418724>,  <36.204823, 41.994820, 36.486782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152798, 41.770630, 36.418724>,  <36.066086, 41.396980, 36.305294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152798, 41.770630, 36.418724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518756, -0.135850, 0.844059,
		0.826982, -0.330079, 0.455135,
		0.216776, 0.934126, 0.283577,
		36.217831, 42.050869, 36.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297424, 41.343472, 36.952934>,  <36.066086, 41.396980, 36.305294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297424, 41.343472, 36.952934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184711, 41.726498, 36.928734>,  <36.117085, 41.956314, 36.914215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184711, 41.726498, 36.928734>,  <36.297424, 41.343472, 36.952934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184711, 41.726498, 36.928734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410861, -0.063444, 0.909488,
		0.867058, 0.281138, 0.411305,
		-0.281787, 0.957568, -0.060499,
		36.100174, 42.013767, 36.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417915, 41.656288, 37.542023>,  <36.297424, 41.343472, 36.952934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417915, 41.656288, 37.542023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158485, 41.926311, 37.401367>,  <36.002827, 42.088326, 37.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158485, 41.926311, 37.401367>,  <36.417915, 41.656288, 37.542023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158485, 41.926311, 37.401367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371145, 0.122859, 0.920411,
		0.664529, 0.727467, 0.170859,
		-0.648577, 0.675054, -0.351639,
		35.963913, 42.128826, 37.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492508, 42.225025, 37.911808>,  <36.417915, 41.656288, 37.542023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492508, 42.225025, 37.911808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125576, 42.278286, 37.761723>,  <35.905418, 42.310242, 37.671673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125576, 42.278286, 37.761723>,  <36.492508, 42.225025, 37.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125576, 42.278286, 37.761723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359242, 0.129453, 0.924223,
		0.171631, 0.982606, -0.070919,
		-0.917327, 0.133148, -0.375211,
		35.850376, 42.318230, 37.649158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316910, 42.862915, 38.180805>,  <36.492508, 42.225025, 37.911808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316910, 42.862915, 38.180805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957977, 42.706062, 38.099785>,  <35.742619, 42.611950, 38.051174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957977, 42.706062, 38.099785>,  <36.316910, 42.862915, 38.180805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957977, 42.706062, 38.099785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300726, 0.207319, 0.930904,
		-0.323042, 0.896244, -0.303958,
		-0.897334, -0.392129, -0.202551,
		35.688778, 42.588425, 38.039021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781364, 43.392410, 38.356861>,  <36.316910, 42.862915, 38.180805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781364, 43.392410, 38.356861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585987, 43.043571, 38.345085>,  <35.468761, 42.834267, 38.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585987, 43.043571, 38.345085>,  <35.781364, 43.392410, 38.356861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585987, 43.043571, 38.345085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405985, 0.197258, 0.892337,
		-0.772399, 0.447808, -0.450408,
		-0.488443, -0.872099, -0.029442,
		35.439453, 42.781940, 38.336254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071617, 43.527195, 38.567924>,  <35.781364, 43.392410, 38.356861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071617, 43.527195, 38.567924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126030, 43.137108, 38.637711>,  <35.158676, 42.903053, 38.679585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126030, 43.137108, 38.637711>,  <35.071617, 43.527195, 38.567924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126030, 43.137108, 38.637711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466440, 0.092321, 0.879722,
		-0.874031, -0.201047, -0.442324,
		0.136030, -0.975221, 0.174468,
		35.166840, 42.844540, 38.690052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349075, 43.343761, 38.749889>,  <35.071617, 43.527195, 38.567924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349075, 43.343761, 38.749889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606987, 43.073135, 38.892162>,  <34.761734, 42.910759, 38.977528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606987, 43.073135, 38.892162>,  <34.349075, 43.343761, 38.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606987, 43.073135, 38.892162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365370, 0.135918, 0.920886,
		-0.671386, -0.723727, -0.159560,
		0.644783, -0.676569, 0.355681,
		34.800423, 42.870163, 38.998867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976330, 42.783062, 39.093853>,  <34.349075, 43.343761, 38.749889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976330, 42.783062, 39.093853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343559, 42.746872, 39.248230>,  <34.563896, 42.725159, 39.340855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343559, 42.746872, 39.248230>,  <33.976330, 42.783062, 39.093853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343559, 42.746872, 39.248230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390247, -0.035369, 0.920030,
		-0.069600, -0.995269, -0.067783,
		0.918075, -0.090486, 0.385940,
		34.618980, 42.719727, 39.364014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925404, 42.349468, 39.625916>,  <33.976330, 42.783062, 39.093853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925404, 42.349468, 39.625916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264423, 42.545650, 39.707027>,  <34.467834, 42.663361, 39.755695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264423, 42.545650, 39.707027>,  <33.925404, 42.349468, 39.625916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264423, 42.545650, 39.707027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173735, -0.104631, 0.979218,
		0.501480, -0.865162, -0.003470,
		0.847546, 0.490455, 0.202779,
		34.518688, 42.692787, 39.767860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173100, 41.593288, 39.738934>,  <33.925404, 42.349468, 39.625916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173100, 41.593288, 39.738934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109047, 41.198547, 39.747765>,  <34.070614, 40.961704, 39.753063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109047, 41.198547, 39.747765>,  <34.173100, 41.593288, 39.738934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109047, 41.198547, 39.747765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284745, -0.067593, -0.956217,
		0.945134, -0.146834, 0.291824,
		-0.160130, -0.986849, 0.022075,
		34.061008, 40.902493, 39.754387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705662, 41.246765, 39.378166>,  <34.173100, 41.593288, 39.738934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705662, 41.246765, 39.378166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415348, 40.971596, 39.377415>,  <34.241161, 40.806496, 39.376965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415348, 40.971596, 39.377415>,  <34.705662, 41.246765, 39.378166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415348, 40.971596, 39.377415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107961, -0.111198, -0.987917,
		0.679402, -0.717214, 0.154974,
		-0.725781, -0.687923, -0.001883,
		34.197613, 40.765221, 39.376850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885277, 40.705372, 38.972107>,  <34.705662, 41.246765, 39.378166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885277, 40.705372, 38.972107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489662, 40.647350, 38.983139>,  <34.252293, 40.612537, 38.989758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489662, 40.647350, 38.983139>,  <34.885277, 40.705372, 38.972107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489662, 40.647350, 38.983139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010189, -0.253391, -0.967310,
		0.147302, -0.956427, 0.252091,
		-0.989039, -0.145055, 0.027580,
		34.192951, 40.603832, 38.991413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892262, 40.066929, 38.706558>,  <34.885277, 40.705372, 38.972107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892262, 40.066929, 38.706558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514660, 40.196484, 38.681393>,  <34.288101, 40.274216, 38.666294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514660, 40.196484, 38.681393>,  <34.892262, 40.066929, 38.706558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514660, 40.196484, 38.681393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091588, -0.440412, -0.893112,
		-0.316975, -0.837337, 0.445414,
		-0.944001, 0.323889, -0.062909,
		34.231461, 40.293652, 38.662521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427200, 39.545216, 38.567184>,  <34.892262, 40.066929, 38.706558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427200, 39.545216, 38.567184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249920, 39.876438, 38.429840>,  <34.143551, 40.075172, 38.347435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249920, 39.876438, 38.429840>,  <34.427200, 39.545216, 38.567184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249920, 39.876438, 38.429840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110311, -0.430502, -0.895824,
		-0.889611, -0.359150, 0.282141,
		-0.443197, 0.828058, -0.343361,
		34.116962, 40.124855, 38.326832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882484, 39.315895, 38.133469>,  <34.427200, 39.545216, 38.567184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882484, 39.315895, 38.133469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886372, 39.704445, 38.038521>,  <33.888702, 39.937572, 37.981552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886372, 39.704445, 38.038521>,  <33.882484, 39.315895, 38.133469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886372, 39.704445, 38.038521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236499, -0.228413, -0.944402,
		-0.971583, 0.065312, 0.227510,
		0.009714, 0.971371, -0.237368,
		33.889286, 39.995857, 37.967312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233234, 39.382381, 37.833900>,  <33.882484, 39.315895, 38.133469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233234, 39.382381, 37.833900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469685, 39.667450, 37.682812>,  <33.611557, 39.838490, 37.592159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469685, 39.667450, 37.682812>,  <33.233234, 39.382381, 37.833900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469685, 39.667450, 37.682812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329857, -0.213745, -0.919515,
		-0.736044, 0.668145, 0.108727,
		0.591129, 0.712668, -0.377718,
		33.647022, 39.881248, 37.569496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798126, 39.794632, 37.405560>,  <33.233234, 39.382381, 37.833900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798126, 39.794632, 37.405560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168045, 39.873283, 37.275276>,  <33.389996, 39.920475, 37.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168045, 39.873283, 37.275276>,  <32.798126, 39.794632, 37.405560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168045, 39.873283, 37.275276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252537, -0.323056, -0.912063,
		-0.284562, 0.925727, -0.249105,
		0.924797, 0.196630, -0.325710,
		33.445484, 39.932274, 37.177563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626202, 40.197189, 36.888325>,  <32.798126, 39.794632, 37.405560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626202, 40.197189, 36.888325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996700, 40.055099, 36.837914>,  <33.218998, 39.969845, 36.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996700, 40.055099, 36.837914>,  <32.626202, 40.197189, 36.888325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996700, 40.055099, 36.837914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270887, -0.394870, -0.877894,
		0.262085, 0.847286, -0.461972,
		0.926246, -0.355225, -0.126029,
		33.274574, 39.948532, 36.800106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623810, 40.152920, 36.177738>,  <32.626202, 40.197189, 36.888325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623810, 40.152920, 36.177738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941799, 39.940765, 36.295521>,  <33.132591, 39.813473, 36.366192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941799, 39.940765, 36.295521>,  <32.623810, 40.152920, 36.177738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941799, 39.940765, 36.295521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173358, -0.663767, -0.727572,
		0.581350, 0.527352, -0.619623,
		0.794971, -0.530390, 0.294461,
		33.180290, 39.781647, 36.383858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032825, 40.022427, 35.511604>,  <32.623810, 40.152920, 36.177738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032825, 40.022427, 35.511604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124130, 39.751873, 35.791718>,  <33.178913, 39.589542, 35.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124130, 39.751873, 35.791718>,  <33.032825, 40.022427, 35.511604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124130, 39.751873, 35.791718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292302, -0.733703, -0.613384,
		0.928684, -0.064680, -0.365188,
		0.228266, -0.676385, 0.700284,
		33.192612, 39.548958, 36.001804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312393, 39.562027, 35.081345>,  <33.032825, 40.022427, 35.511604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312393, 39.562027, 35.081345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211205, 39.375397, 35.420357>,  <33.150494, 39.263420, 35.623764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211205, 39.375397, 35.420357>,  <33.312393, 39.562027, 35.081345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211205, 39.375397, 35.420357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450960, -0.718175, -0.529961,
		0.855945, -0.516269, -0.028730,
		-0.252970, -0.466574, 0.847535,
		33.135315, 39.235424, 35.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437477, 38.884319, 34.968853>,  <33.312393, 39.562027, 35.081345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437477, 38.884319, 34.968853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165062, 38.914005, 35.260242>,  <33.001614, 38.931816, 35.435078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165062, 38.914005, 35.260242>,  <33.437477, 38.884319, 34.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165062, 38.914005, 35.260242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563110, -0.689016, -0.456250,
		0.468072, -0.720937, 0.511037,
		-0.681040, 0.074212, 0.728476,
		32.960751, 38.936268, 35.478786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321766, 38.221630, 35.284874>,  <33.437477, 38.884319, 34.968853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321766, 38.221630, 35.284874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000153, 38.446960, 35.360977>,  <32.807186, 38.582157, 35.406639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000153, 38.446960, 35.360977>,  <33.321766, 38.221630, 35.284874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000153, 38.446960, 35.360977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590344, -0.718145, -0.368460,
		-0.070927, -0.408572, 0.909966,
		-0.804030, 0.563326, 0.190262,
		32.758945, 38.615959, 35.418056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900478, 37.796143, 35.610756>,  <33.321766, 38.221630, 35.284874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900478, 37.796143, 35.610756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703251, 38.087788, 35.420902>,  <32.584915, 38.262775, 35.306992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703251, 38.087788, 35.420902>,  <32.900478, 37.796143, 35.610756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703251, 38.087788, 35.420902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629925, -0.675497, -0.383274,
		-0.600062, 0.110002, 0.792354,
		-0.493072, 0.729111, -0.474633,
		32.555328, 38.306522, 35.278511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843506, 37.170353, 36.052387>,  <32.900478, 37.796143, 35.610756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843506, 37.170353, 36.052387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573555, 37.010117, 35.804497>,  <32.411583, 36.913975, 35.655762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573555, 37.010117, 35.804497>,  <32.843506, 37.170353, 36.052387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573555, 37.010117, 35.804497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651409, 0.071174, -0.755381,
		0.346710, -0.913487, 0.212917,
		-0.674877, -0.400594, -0.619730,
		32.371094, 36.889938, 35.618576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445053, 36.972027, 36.631531>,  <32.843506, 37.170353, 36.052387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445053, 36.972027, 36.631531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834190, 36.982803, 36.539570>,  <34.067673, 36.989269, 36.484394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834190, 36.982803, 36.539570>,  <33.445053, 36.972027, 36.631531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834190, 36.982803, 36.539570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186076, -0.681787, 0.707490,
		-0.137688, -0.731054, -0.668282,
		0.972840, 0.026938, -0.229905,
		34.126041, 36.990883, 36.470596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682343, 36.256924, 36.597195>,  <33.445053, 36.972027, 36.631531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682343, 36.256924, 36.597195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965794, 36.515282, 36.710804>,  <34.135864, 36.670296, 36.778969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965794, 36.515282, 36.710804>,  <33.682343, 36.256924, 36.597195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965794, 36.515282, 36.710804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162968, -0.541482, 0.824766,
		0.686506, -0.538163, -0.488968,
		0.708626, 0.645893, 0.284027,
		34.178383, 36.709049, 36.796013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289116, 35.874302, 36.888954>,  <33.682343, 36.256924, 36.597195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289116, 35.874302, 36.888954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311932, 36.243801, 37.040451>,  <34.325623, 36.465500, 37.131348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311932, 36.243801, 37.040451>,  <34.289116, 35.874302, 36.888954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311932, 36.243801, 37.040451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322271, -0.376084, 0.868736,
		0.944927, 0.072502, -0.319149,
		0.057042, 0.923745, 0.378737,
		34.329044, 36.520924, 37.154072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890472, 35.878643, 37.287113>,  <34.289116, 35.874302, 36.888954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890472, 35.878643, 37.287113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689102, 36.195286, 37.425629>,  <34.568279, 36.385273, 37.508739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689102, 36.195286, 37.425629>,  <34.890472, 35.878643, 37.287113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689102, 36.195286, 37.425629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304490, -0.212534, 0.928502,
		0.808609, 0.572873, -0.134042,
		-0.503425, 0.791609, 0.346291,
		34.538074, 36.432770, 37.529514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366035, 36.094170, 37.704567>,  <34.890472, 35.878643, 37.287113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366035, 36.094170, 37.704567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044926, 36.290672, 37.839752>,  <34.852261, 36.408573, 37.920864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044926, 36.290672, 37.839752>,  <35.366035, 36.094170, 37.704567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044926, 36.290672, 37.839752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294143, -0.166766, 0.941100,
		0.518679, 0.854903, -0.010623,
		-0.802777, 0.491254, 0.337962,
		34.804092, 36.438049, 37.941139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559113, 36.461315, 38.294418>,  <35.366035, 36.094170, 37.704567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559113, 36.461315, 38.294418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167412, 36.483833, 38.372288>,  <34.932392, 36.497345, 38.419010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167412, 36.483833, 38.372288>,  <35.559113, 36.461315, 38.294418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167412, 36.483833, 38.372288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185864, -0.133324, 0.973488,
		0.080760, 0.989472, 0.120094,
		-0.979251, 0.056298, 0.194675,
		34.873638, 36.500721, 38.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546841, 36.859718, 38.957199>,  <35.559113, 36.461315, 38.294418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546841, 36.859718, 38.957199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200371, 36.668713, 38.898251>,  <34.992489, 36.554108, 38.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200371, 36.668713, 38.898251>,  <35.546841, 36.859718, 38.957199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200371, 36.668713, 38.898251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032107, -0.241113, 0.969966,
		-0.498708, 0.844892, 0.193515,
		-0.866175, -0.477517, -0.147372,
		34.940517, 36.525459, 38.854038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078560, 37.009106, 39.467434>,  <35.546841, 36.859718, 38.957199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078560, 37.009106, 39.467434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923904, 36.660439, 39.346962>,  <34.831112, 36.451241, 39.274677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923904, 36.660439, 39.346962>,  <35.078560, 37.009106, 39.467434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923904, 36.660439, 39.346962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018612, -0.333888, 0.942429,
		-0.922043, 0.358775, 0.145318,
		-0.386640, -0.871664, -0.301182,
		34.807911, 36.398941, 39.256607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401840, 36.898781, 39.839699>,  <35.078560, 37.009106, 39.467434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401840, 36.898781, 39.839699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556278, 36.546581, 39.729675>,  <34.648941, 36.335262, 39.663662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556278, 36.546581, 39.729675>,  <34.401840, 36.898781, 39.839699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556278, 36.546581, 39.729675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069410, -0.325065, 0.943141,
		-0.919846, -0.345046, -0.186620,
		0.386090, -0.880497, -0.275060,
		34.672104, 36.282433, 39.647156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002216, 36.301689, 40.141663>,  <34.401840, 36.898781, 39.839699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002216, 36.301689, 40.141663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344479, 36.120316, 40.041862>,  <34.549835, 36.011490, 39.981983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344479, 36.120316, 40.041862>,  <34.002216, 36.301689, 40.141663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344479, 36.120316, 40.041862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043698, -0.417069, 0.907824,
		-0.515699, -0.787687, -0.337053,
		0.855655, -0.453435, -0.249502,
		34.601177, 35.984287, 39.967010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880230, 35.652817, 40.407700>,  <34.002216, 36.301689, 40.141663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880230, 35.652817, 40.407700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273403, 35.687096, 40.342575>,  <34.509308, 35.707664, 40.303501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273403, 35.687096, 40.342575>,  <33.880230, 35.652817, 40.407700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273403, 35.687096, 40.342575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182881, -0.358260, 0.915535,
		0.020135, -0.929680, -0.367818,
		0.982929, 0.085701, -0.162807,
		34.568283, 35.712807, 40.293732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095505, 35.056915, 40.649769>,  <33.880230, 35.652817, 40.407700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095505, 35.056915, 40.649769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402508, 35.313301, 40.645813>,  <34.586708, 35.467133, 40.643440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402508, 35.313301, 40.645813>,  <34.095505, 35.056915, 40.649769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402508, 35.313301, 40.645813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313528, -0.361883, 0.877919,
		0.559137, -0.676908, -0.478708,
		0.767507, 0.640965, -0.009888,
		34.632759, 35.505592, 40.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725632, 34.583538, 40.804962>,  <34.095505, 35.056915, 40.649769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725632, 34.583538, 40.804962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814522, 34.967838, 40.871387>,  <34.867855, 35.198418, 40.911243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814522, 34.967838, 40.871387>,  <34.725632, 34.583538, 40.804962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814522, 34.967838, 40.871387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252645, -0.221244, 0.941925,
		0.941693, -0.167367, -0.291895,
		0.222227, 0.960750, 0.166059,
		34.881191, 35.256062, 40.921204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373238, 34.543198, 41.146713>,  <34.725632, 34.583538, 40.804962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373238, 34.543198, 41.146713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191517, 34.891651, 41.221256>,  <35.082485, 35.100723, 41.265984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191517, 34.891651, 41.221256>,  <35.373238, 34.543198, 41.146713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191517, 34.891651, 41.221256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003673, -0.207360, 0.978258,
		0.890841, 0.445108, 0.091004,
		-0.454301, 0.871138, 0.186359,
		35.055225, 35.152992, 41.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743248, 34.795296, 41.651402>,  <35.373238, 34.543198, 41.146713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743248, 34.795296, 41.651402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400372, 34.998623, 41.684475>,  <35.194645, 35.120617, 41.704319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400372, 34.998623, 41.684475>,  <35.743248, 34.795296, 41.651402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400372, 34.998623, 41.684475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029974, -0.209524, 0.977344,
		0.514121, 0.835295, 0.194838,
		-0.857194, 0.508313, 0.082684,
		35.143215, 35.151115, 41.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828888, 35.187981, 42.241680>,  <35.743248, 34.795296, 41.651402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828888, 35.187981, 42.241680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431026, 35.199753, 42.202095>,  <35.192310, 35.206814, 42.178345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431026, 35.199753, 42.202095>,  <35.828888, 35.187981, 42.241680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431026, 35.199753, 42.202095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100569, -0.059151, 0.993170,
		0.023373, 0.997815, 0.061794,
		-0.994656, 0.029428, -0.098966,
		35.132629, 35.208580, 42.172405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624413, 35.638660, 42.729397>,  <35.828888, 35.187981, 42.241680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624413, 35.638660, 42.729397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287235, 35.434875, 42.660240>,  <35.084927, 35.312603, 42.618744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287235, 35.434875, 42.660240>,  <35.624413, 35.638660, 42.729397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287235, 35.434875, 42.660240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233525, 0.056970, 0.970681,
		-0.484674, 0.858606, -0.166994,
		-0.842945, -0.509461, -0.172894,
		35.034351, 35.282036, 42.608372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175682, 35.831863, 43.174019>,  <35.624413, 35.638660, 42.729397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175682, 35.831863, 43.174019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961090, 35.511456, 43.067764>,  <34.832336, 35.319210, 43.004013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961090, 35.511456, 43.067764>,  <35.175682, 35.831863, 43.174019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961090, 35.511456, 43.067764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425577, -0.015021, 0.904798,
		-0.728747, 0.598455, -0.332835,
		-0.536481, -0.801016, -0.265635,
		34.800144, 35.271152, 42.988075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555977, 35.948174, 43.307163>,  <35.175682, 35.831863, 43.174019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555977, 35.948174, 43.307163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566635, 35.548370, 43.300579>,  <34.573029, 35.308487, 43.296627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566635, 35.548370, 43.300579>,  <34.555977, 35.948174, 43.307163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566635, 35.548370, 43.300579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471191, -0.027084, 0.881615,
		-0.881629, -0.015733, -0.471682,
		0.026646, -0.999509, -0.016465,
		34.574631, 35.248516, 43.295639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959381, 35.762035, 43.600227>,  <34.555977, 35.948174, 43.307163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959381, 35.762035, 43.600227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190483, 35.435680, 43.609459>,  <34.329144, 35.239868, 43.614998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190483, 35.435680, 43.609459>,  <33.959381, 35.762035, 43.600227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190483, 35.435680, 43.609459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286720, -0.176399, 0.941634,
		-0.764194, -0.550649, -0.335846,
		0.577753, -0.815885, 0.023079,
		34.363808, 35.190914, 43.616383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539150, 35.199291, 43.763985>,  <33.959381, 35.762035, 43.600227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539150, 35.199291, 43.763985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904774, 35.075096, 43.868362>,  <34.124149, 35.000580, 43.930988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904774, 35.075096, 43.868362>,  <33.539150, 35.199291, 43.763985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904774, 35.075096, 43.868362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329106, -0.191808, 0.924608,
		-0.237036, -0.931022, -0.277510,
		0.914059, -0.310495, 0.260939,
		34.178993, 34.981949, 43.946644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455502, 34.561180, 44.101452>,  <33.539150, 35.199291, 43.763985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455502, 34.561180, 44.101452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811573, 34.696114, 44.223953>,  <34.025215, 34.777073, 44.297455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811573, 34.696114, 44.223953>,  <33.455502, 34.561180, 44.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811573, 34.696114, 44.223953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286697, -0.107698, 0.951949,
		0.354106, -0.935205, 0.000842,
		0.890176, 0.337332, 0.306257,
		34.078625, 34.797314, 44.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542526, 34.194626, 44.707642>,  <33.455502, 34.561180, 44.101452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542526, 34.194626, 44.707642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797066, 34.502686, 44.725189>,  <33.949791, 34.687523, 44.735718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797066, 34.502686, 44.725189>,  <33.542526, 34.194626, 44.707642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797066, 34.502686, 44.725189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131528, 0.052285, 0.989933,
		0.760102, -0.635717, 0.134568,
		0.636353, 0.770149, 0.043873,
		33.987972, 34.733730, 44.738350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931866, 34.059490, 45.301979>,  <33.542526, 34.194626, 44.707642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931866, 34.059490, 45.301979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043739, 34.439941, 45.249611>,  <34.110863, 34.668213, 45.218189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043739, 34.439941, 45.249611>,  <33.931866, 34.059490, 45.301979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043739, 34.439941, 45.249611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004705, 0.135008, 0.990833,
		0.960081, -0.277735, 0.033284,
		0.279682, 0.951124, -0.130925,
		34.127644, 34.725277, 45.210335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468624, 34.118835, 45.787739>,  <33.931866, 34.059490, 45.301979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468624, 34.118835, 45.787739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339088, 34.490898, 45.718540>,  <34.261368, 34.714138, 45.677021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339088, 34.490898, 45.718540>,  <34.468624, 34.118835, 45.787739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339088, 34.490898, 45.718540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038303, 0.169814, 0.984731,
		0.945336, 0.325523, -0.019365,
		-0.323841, 0.930160, -0.172999,
		34.241936, 34.769947, 45.666641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899715, 34.610207, 46.266945>,  <34.468624, 34.118835, 45.787739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899715, 34.610207, 46.266945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585598, 34.826836, 46.146935>,  <34.397129, 34.956814, 46.074928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585598, 34.826836, 46.146935>,  <34.899715, 34.610207, 46.266945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585598, 34.826836, 46.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136716, 0.320950, 0.937176,
		0.603846, 0.776973, -0.177996,
		-0.785289, 0.541575, -0.300029,
		34.350010, 34.989307, 46.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614159, 35.009445, 46.243229>,  <34.899715, 34.610207, 46.266945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614159, 35.009445, 46.243229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977707, 34.921329, 46.384895>,  <36.195835, 34.868462, 46.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977707, 34.921329, 46.384895>,  <35.614159, 35.009445, 46.243229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977707, 34.921329, 46.384895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402711, 0.242494, -0.882621,
		0.108546, 0.944813, 0.309106,
		0.908868, -0.220286, 0.354165,
		36.250366, 34.855244, 46.491146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014496, 35.533752, 46.058601>,  <35.614159, 35.009445, 46.243229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014496, 35.533752, 46.058601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268375, 35.232475, 46.127724>,  <36.420704, 35.051708, 46.169197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268375, 35.232475, 46.127724>,  <36.014496, 35.533752, 46.058601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268375, 35.232475, 46.127724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425181, 0.153646, -0.891972,
		0.645273, 0.639608, 0.417761,
		0.634700, -0.753190, 0.172806,
		36.458786, 35.006519, 46.179565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615932, 35.807915, 45.875885>,  <36.014496, 35.533752, 46.058601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615932, 35.807915, 45.875885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645027, 35.409363, 45.858322>,  <36.662483, 35.170231, 45.847786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645027, 35.409363, 45.858322>,  <36.615932, 35.807915, 45.875885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645027, 35.409363, 45.858322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392782, 0.069083, -0.917033,
		0.916751, 0.049455, 0.396387,
		0.072736, -0.996384, -0.043906,
		36.666847, 35.110447, 45.845150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297325, 35.633610, 45.668751>,  <36.615932, 35.807915, 45.875885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297325, 35.633610, 45.668751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111637, 35.293236, 45.570438>,  <37.000225, 35.089012, 45.511452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111637, 35.293236, 45.570438>,  <37.297325, 35.633610, 45.668751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111637, 35.293236, 45.570438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490593, -0.015997, -0.871242,
		0.737438, -0.525028, 0.424889,
		-0.464223, -0.850935, -0.245778,
		36.972370, 35.037956, 45.496704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790131, 35.239700, 45.347900>,  <37.297325, 35.633610, 45.668751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790131, 35.239700, 45.347900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443825, 35.088486, 45.216728>,  <37.236042, 34.997757, 45.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443825, 35.088486, 45.216728>,  <37.790131, 35.239700, 45.347900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443825, 35.088486, 45.216728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411129, -0.163652, -0.896767,
		0.285348, -0.911210, 0.297108,
		-0.865765, -0.378040, -0.327927,
		37.184093, 34.975075, 45.118351>
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
